; ModuleID = '../bcout/drivers/base/transport_class.llvm.bc'
source_filename = "drivers/base/transport_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
%struct.transport_class = type { %struct.class, i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.vdso_image = type opaque
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon = type { %struct.kernfs_elem_attr }
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
%struct.device_type = type { i8*, %struct.attribute_group**, {}*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, {}*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.subsys_private = type opaque
%struct.transport_container = type { %struct.attribute_container, %struct.attribute_group* }
%struct.attribute_container = type { %struct.list_head, %struct.klist, %struct.class*, %struct.attribute_group*, %struct.device_attribute**, i32 (%struct.attribute_container*, %struct.device*)*, i64 }
%struct.klist = type { %struct.spinlock, %struct.list_head, void (%struct.klist_node*)*, void (%struct.klist_node*)* }
%struct.klist_node = type { i8*, %struct.list_head, %struct.kref }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.anon_transport_class = type { %struct.transport_class, %struct.attribute_container }

@transport_class_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [31 x i8] c"drivers/base/transport_class.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @transport_class_register(%struct.transport_class* %tclass) #0 !dbg !2 {
entry:
  %tclass.addr = alloca %struct.transport_class*, align 8
  %tmp = alloca i32, align 4
  store %struct.transport_class* %tclass, %struct.transport_class** %tclass.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.transport_class** %tclass.addr, metadata !1951, metadata !DIExpression()), !dbg !1952
  %0 = load %struct.transport_class*, %struct.transport_class** %tclass.addr, align 8, !dbg !1953
  %class = getelementptr inbounds %struct.transport_class, %struct.transport_class* %0, i32 0, i32 0, !dbg !1953
  %call = call i32 @__class_register(%struct.class* %class, %struct.lock_class_key* @transport_class_register.__key) #3, !dbg !1953
  store i32 %call, i32* %tmp, align 4, !dbg !1953
  %1 = load i32, i32* %tmp, align 4, !dbg !1953
  ret i32 %1, !dbg !1955
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @transport_class_unregister(%struct.transport_class* %tclass) #0 !dbg !1956 {
entry:
  %tclass.addr = alloca %struct.transport_class*, align 8
  store %struct.transport_class* %tclass, %struct.transport_class** %tclass.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.transport_class** %tclass.addr, metadata !1959, metadata !DIExpression()), !dbg !1960
  %0 = load %struct.transport_class*, %struct.transport_class** %tclass.addr, align 8, !dbg !1961
  %class = getelementptr inbounds %struct.transport_class, %struct.transport_class* %0, i32 0, i32 0, !dbg !1962
  call void @class_unregister(%struct.class* %class) #3, !dbg !1963
  ret void, !dbg !1964
}

; Function Attrs: noredzone
declare dso_local void @class_unregister(%struct.class*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @anon_transport_class_register(%struct.anon_transport_class* %atc) #0 !dbg !1965 {
entry:
  %retval = alloca i32, align 4
  %atc.addr = alloca %struct.anon_transport_class*, align 8
  %error = alloca i32, align 4
  store %struct.anon_transport_class* %atc, %struct.anon_transport_class** %atc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.anon_transport_class** %atc.addr, metadata !1973, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.declare(metadata i32* %error, metadata !1975, metadata !DIExpression()), !dbg !1976
  %0 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !1977
  %tclass = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %0, i32 0, i32 0, !dbg !1978
  %class = getelementptr inbounds %struct.transport_class, %struct.transport_class* %tclass, i32 0, i32 0, !dbg !1979
  %1 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !1980
  %container = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %1, i32 0, i32 1, !dbg !1981
  %class1 = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %container, i32 0, i32 2, !dbg !1982
  store %struct.class* %class, %struct.class** %class1, align 8, !dbg !1983
  %2 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !1984
  %container2 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %2, i32 0, i32 1, !dbg !1985
  call void @attribute_container_set_no_classdevs(%struct.attribute_container* %container2) #3, !dbg !1986
  %3 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !1987
  %container3 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %3, i32 0, i32 1, !dbg !1988
  %call = call i32 @attribute_container_register(%struct.attribute_container* %container3) #3, !dbg !1989
  store i32 %call, i32* %error, align 4, !dbg !1990
  %4 = load i32, i32* %error, align 4, !dbg !1991
  %tobool = icmp ne i32 %4, 0, !dbg !1991
  br i1 %tobool, label %if.then, label %if.end, !dbg !1993

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %error, align 4, !dbg !1994
  store i32 %5, i32* %retval, align 4, !dbg !1995
  br label %return, !dbg !1995

if.end:                                           ; preds = %entry
  %6 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !1996
  %tclass4 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %6, i32 0, i32 0, !dbg !1997
  %setup = getelementptr inbounds %struct.transport_class, %struct.transport_class* %tclass4, i32 0, i32 1, !dbg !1998
  store i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @anon_transport_dummy_function, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %setup, align 8, !dbg !1999
  %7 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !2000
  %tclass5 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %7, i32 0, i32 0, !dbg !2001
  %remove = getelementptr inbounds %struct.transport_class, %struct.transport_class* %tclass5, i32 0, i32 3, !dbg !2002
  store i32 (%struct.transport_container*, %struct.device*, %struct.device*)* @anon_transport_dummy_function, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8, !dbg !2003
  store i32 0, i32* %retval, align 4, !dbg !2004
  br label %return, !dbg !2004

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2005
  ret i32 %8, !dbg !2005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @attribute_container_set_no_classdevs(%struct.attribute_container* %atc) #0 !dbg !2006 {
entry:
  %atc.addr = alloca %struct.attribute_container*, align 8
  store %struct.attribute_container* %atc, %struct.attribute_container** %atc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %atc.addr, metadata !2009, metadata !DIExpression()), !dbg !2010
  %0 = load %struct.attribute_container*, %struct.attribute_container** %atc.addr, align 8, !dbg !2011
  %flags = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 6, !dbg !2012
  %1 = load i64, i64* %flags, align 8, !dbg !2013
  %or = or i64 %1, 1, !dbg !2013
  store i64 %or, i64* %flags, align 8, !dbg !2013
  ret void, !dbg !2014
}

; Function Attrs: noredzone
declare dso_local i32 @attribute_container_register(%struct.attribute_container*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @anon_transport_dummy_function(%struct.transport_container* %tc, %struct.device* %dev, %struct.device* %cdev) #0 !dbg !2015 {
entry:
  %tc.addr = alloca %struct.transport_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %cdev.addr = alloca %struct.device*, align 8
  store %struct.transport_container* %tc, %struct.transport_container** %tc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.transport_container** %tc.addr, metadata !2016, metadata !DIExpression()), !dbg !2017
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2018, metadata !DIExpression()), !dbg !2019
  store %struct.device* %cdev, %struct.device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %cdev.addr, metadata !2020, metadata !DIExpression()), !dbg !2021
  ret i32 0, !dbg !2022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @anon_transport_class_unregister(%struct.anon_transport_class* %atc) #0 !dbg !2023 {
entry:
  %atc.addr = alloca %struct.anon_transport_class*, align 8
  store %struct.anon_transport_class* %atc, %struct.anon_transport_class** %atc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.anon_transport_class** %atc.addr, metadata !2026, metadata !DIExpression()), !dbg !2027
  %0 = load %struct.anon_transport_class*, %struct.anon_transport_class** %atc.addr, align 8, !dbg !2028
  %container = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %0, i32 0, i32 1, !dbg !2028
  %call = call i32 @attribute_container_unregister(%struct.attribute_container* %container) #3, !dbg !2028
  %tobool = icmp ne i32 %call, 0, !dbg !2028
  %lnot = xor i1 %tobool, true, !dbg !2028
  %lnot1 = xor i1 %lnot, true, !dbg !2028
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2028
  %conv = sext i32 %lnot.ext to i64, !dbg !2028
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2028
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2030

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2031

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !2032

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !2034

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !2032

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 116, i32 0, i64 12) #4, !dbg !2036, !srcloc !2038
  br label %do.end5, !dbg !2036

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !2032

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #4, !dbg !2039, !srcloc !2042
  unreachable, !dbg !2043

do.end7:                                          ; No predecessors!
  br label %do.end8, !dbg !2032

do.end8:                                          ; preds = %do.end7
  br label %if.end, !dbg !2032

if.end:                                           ; preds = %do.end8, %entry
  ret void, !dbg !2044
}

; Function Attrs: noredzone
declare dso_local i32 @attribute_container_unregister(%struct.attribute_container*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @transport_setup_device(%struct.device* %dev) #0 !dbg !2045 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2046, metadata !DIExpression()), !dbg !2047
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2048
  call void @attribute_container_add_device(%struct.device* %0, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_setup_classdev) #3, !dbg !2049
  ret void, !dbg !2050
}

; Function Attrs: noredzone
declare dso_local void @attribute_container_add_device(%struct.device*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @transport_setup_classdev(%struct.attribute_container* %cont, %struct.device* %dev, %struct.device* %classdev) #0 !dbg !2051 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %classdev.addr = alloca %struct.device*, align 8
  %tclass = alloca %struct.transport_class*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.transport_class*, align 8
  %tcont = alloca %struct.transport_container*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.transport_container*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2054, metadata !DIExpression()), !dbg !2055
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2056, metadata !DIExpression()), !dbg !2057
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2058, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.declare(metadata %struct.transport_class** %tclass, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2062, metadata !DIExpression()), !dbg !2064
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2064
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 2, !dbg !2064
  %1 = load %struct.class*, %struct.class** %class, align 8, !dbg !2064
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2064
  store i8* %2, i8** %__mptr, align 8, !dbg !2064
  br label %do.body, !dbg !2064

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2065

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2064
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2064
  %4 = bitcast i8* %add.ptr to %struct.transport_class*, !dbg !2064
  store %struct.transport_class* %4, %struct.transport_class** %tmp, align 8, !dbg !2065
  %5 = load %struct.transport_class*, %struct.transport_class** %tmp, align 8, !dbg !2064
  store %struct.transport_class* %5, %struct.transport_class** %tclass, align 8, !dbg !2061
  call void @llvm.dbg.declare(metadata %struct.transport_container** %tcont, metadata !2067, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2069, metadata !DIExpression()), !dbg !2071
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2071
  %7 = bitcast %struct.attribute_container* %6 to i8*, !dbg !2071
  store i8* %7, i8** %__mptr1, align 8, !dbg !2071
  br label %do.body2, !dbg !2071

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2072

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !2071
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !2071
  %9 = bitcast i8* %add.ptr5 to %struct.transport_container*, !dbg !2071
  store %struct.transport_container* %9, %struct.transport_container** %tmp4, align 8, !dbg !2072
  %10 = load %struct.transport_container*, %struct.transport_container** %tmp4, align 8, !dbg !2071
  store %struct.transport_container* %10, %struct.transport_container** %tcont, align 8, !dbg !2068
  %11 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2074
  %setup = getelementptr inbounds %struct.transport_class, %struct.transport_class* %11, i32 0, i32 1, !dbg !2076
  %12 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %setup, align 8, !dbg !2076
  %tobool = icmp ne i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %12, null, !dbg !2074
  br i1 %tobool, label %if.then, label %if.end, !dbg !2077

if.then:                                          ; preds = %do.end3
  %13 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2078
  %setup6 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %13, i32 0, i32 1, !dbg !2079
  %14 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %setup6, align 8, !dbg !2079
  %15 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2080
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2081
  %17 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2082
  %call = call i32 %14(%struct.transport_container* %15, %struct.device* %16, %struct.device* %17) #3, !dbg !2078
  br label %if.end, !dbg !2078

if.end:                                           ; preds = %if.then, %do.end3
  ret i32 0, !dbg !2083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @transport_add_device(%struct.device* %dev) #0 !dbg !2084 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2085, metadata !DIExpression()), !dbg !2086
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2087
  %call = call i32 @attribute_container_device_trigger_safe(%struct.device* %0, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_add_class_device, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_remove_classdev) #3, !dbg !2088
  ret i32 %call, !dbg !2089
}

; Function Attrs: noredzone
declare dso_local i32 @attribute_container_device_trigger_safe(%struct.device*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @transport_add_class_device(%struct.attribute_container* %cont, %struct.device* %dev, %struct.device* %classdev) #0 !dbg !2090 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %classdev.addr = alloca %struct.device*, align 8
  %error = alloca i32, align 4
  %tcont = alloca %struct.transport_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.transport_container*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2091, metadata !DIExpression()), !dbg !2092
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2093, metadata !DIExpression()), !dbg !2094
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2095, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2097, metadata !DIExpression()), !dbg !2098
  %0 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2099
  %call = call i32 @attribute_container_add_class_device(%struct.device* %0) #3, !dbg !2100
  store i32 %call, i32* %error, align 4, !dbg !2098
  call void @llvm.dbg.declare(metadata %struct.transport_container** %tcont, metadata !2101, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2103, metadata !DIExpression()), !dbg !2105
  %1 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2105
  %2 = bitcast %struct.attribute_container* %1 to i8*, !dbg !2105
  store i8* %2, i8** %__mptr, align 8, !dbg !2105
  br label %do.body, !dbg !2105

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2106

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2105
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2105
  %4 = bitcast i8* %add.ptr to %struct.transport_container*, !dbg !2105
  store %struct.transport_container* %4, %struct.transport_container** %tmp, align 8, !dbg !2106
  %5 = load %struct.transport_container*, %struct.transport_container** %tmp, align 8, !dbg !2105
  store %struct.transport_container* %5, %struct.transport_container** %tcont, align 8, !dbg !2102
  %6 = load i32, i32* %error, align 4, !dbg !2108
  %tobool = icmp ne i32 %6, 0, !dbg !2108
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2110

land.lhs.true:                                    ; preds = %do.end
  %7 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2111
  %statistics = getelementptr inbounds %struct.transport_container, %struct.transport_container* %7, i32 0, i32 1, !dbg !2112
  %8 = load %struct.attribute_group*, %struct.attribute_group** %statistics, align 8, !dbg !2112
  %tobool1 = icmp ne %struct.attribute_group* %8, null, !dbg !2111
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2113

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2114
  %kobj = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0, !dbg !2115
  %10 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2116
  %statistics2 = getelementptr inbounds %struct.transport_container, %struct.transport_container* %10, i32 0, i32 1, !dbg !2117
  %11 = load %struct.attribute_group*, %struct.attribute_group** %statistics2, align 8, !dbg !2117
  %call3 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* %11) #3, !dbg !2118
  store i32 %call3, i32* %error, align 4, !dbg !2119
  br label %if.end, !dbg !2120

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %12 = load i32, i32* %error, align 4, !dbg !2121
  ret i32 %12, !dbg !2122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @transport_remove_classdev(%struct.attribute_container* %cont, %struct.device* %dev, %struct.device* %classdev) #0 !dbg !2123 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %classdev.addr = alloca %struct.device*, align 8
  %tcont = alloca %struct.transport_container*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.transport_container*, align 8
  %tclass = alloca %struct.transport_class*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.transport_class*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2124, metadata !DIExpression()), !dbg !2125
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2126, metadata !DIExpression()), !dbg !2127
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.declare(metadata %struct.transport_container** %tcont, metadata !2130, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2132, metadata !DIExpression()), !dbg !2134
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2134
  %1 = bitcast %struct.attribute_container* %0 to i8*, !dbg !2134
  store i8* %1, i8** %__mptr, align 8, !dbg !2134
  br label %do.body, !dbg !2134

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2135

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2134
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2134
  %3 = bitcast i8* %add.ptr to %struct.transport_container*, !dbg !2134
  store %struct.transport_container* %3, %struct.transport_container** %tmp, align 8, !dbg !2135
  %4 = load %struct.transport_container*, %struct.transport_container** %tmp, align 8, !dbg !2134
  store %struct.transport_container* %4, %struct.transport_container** %tcont, align 8, !dbg !2131
  call void @llvm.dbg.declare(metadata %struct.transport_class** %tclass, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2139, metadata !DIExpression()), !dbg !2141
  %5 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2141
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %5, i32 0, i32 2, !dbg !2141
  %6 = load %struct.class*, %struct.class** %class, align 8, !dbg !2141
  %7 = bitcast %struct.class* %6 to i8*, !dbg !2141
  store i8* %7, i8** %__mptr1, align 8, !dbg !2141
  br label %do.body2, !dbg !2141

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2142

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !2141
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !2141
  %9 = bitcast i8* %add.ptr5 to %struct.transport_class*, !dbg !2141
  store %struct.transport_class* %9, %struct.transport_class** %tmp4, align 8, !dbg !2142
  %10 = load %struct.transport_class*, %struct.transport_class** %tmp4, align 8, !dbg !2141
  store %struct.transport_class* %10, %struct.transport_class** %tclass, align 8, !dbg !2138
  %11 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2144
  %remove = getelementptr inbounds %struct.transport_class, %struct.transport_class* %11, i32 0, i32 3, !dbg !2146
  %12 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8, !dbg !2146
  %tobool = icmp ne i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %12, null, !dbg !2144
  br i1 %tobool, label %if.then, label %if.end, !dbg !2147

if.then:                                          ; preds = %do.end3
  %13 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2148
  %remove6 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %13, i32 0, i32 3, !dbg !2149
  %14 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove6, align 8, !dbg !2149
  %15 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2150
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2151
  %17 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2152
  %call = call i32 %14(%struct.transport_container* %15, %struct.device* %16, %struct.device* %17) #3, !dbg !2148
  br label %if.end, !dbg !2148

if.end:                                           ; preds = %if.then, %do.end3
  %18 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2153
  %remove7 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %18, i32 0, i32 3, !dbg !2155
  %19 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove7, align 8, !dbg !2155
  %cmp = icmp ne i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %19, @anon_transport_dummy_function, !dbg !2156
  br i1 %cmp, label %if.then8, label %if.end13, !dbg !2157

if.then8:                                         ; preds = %if.end
  %20 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2158
  %statistics = getelementptr inbounds %struct.transport_container, %struct.transport_container* %20, i32 0, i32 1, !dbg !2161
  %21 = load %struct.attribute_group*, %struct.attribute_group** %statistics, align 8, !dbg !2161
  %tobool9 = icmp ne %struct.attribute_group* %21, null, !dbg !2158
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2162

if.then10:                                        ; preds = %if.then8
  %22 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2163
  %kobj = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0, !dbg !2164
  %23 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2165
  %statistics11 = getelementptr inbounds %struct.transport_container, %struct.transport_container* %23, i32 0, i32 1, !dbg !2166
  %24 = load %struct.attribute_group*, %struct.attribute_group** %statistics11, align 8, !dbg !2166
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* %24) #3, !dbg !2167
  br label %if.end12, !dbg !2167

if.end12:                                         ; preds = %if.then10, %if.then8
  %25 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2168
  call void @attribute_container_class_device_del(%struct.device* %25) #3, !dbg !2169
  br label %if.end13, !dbg !2170

if.end13:                                         ; preds = %if.end12, %if.end
  ret i32 0, !dbg !2171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @transport_configure_device(%struct.device* %dev) #0 !dbg !2172 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2173, metadata !DIExpression()), !dbg !2174
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2175
  call void @attribute_container_device_trigger(%struct.device* %0, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_configure) #3, !dbg !2176
  ret void, !dbg !2177
}

; Function Attrs: noredzone
declare dso_local void @attribute_container_device_trigger(%struct.device*, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @transport_configure(%struct.attribute_container* %cont, %struct.device* %dev, %struct.device* %cdev) #0 !dbg !2178 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %cdev.addr = alloca %struct.device*, align 8
  %tclass = alloca %struct.transport_class*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.transport_class*, align 8
  %tcont = alloca %struct.transport_container*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.transport_container*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2179, metadata !DIExpression()), !dbg !2180
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2181, metadata !DIExpression()), !dbg !2182
  store %struct.device* %cdev, %struct.device** %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %cdev.addr, metadata !2183, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.declare(metadata %struct.transport_class** %tclass, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2187, metadata !DIExpression()), !dbg !2189
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2189
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 2, !dbg !2189
  %1 = load %struct.class*, %struct.class** %class, align 8, !dbg !2189
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2189
  store i8* %2, i8** %__mptr, align 8, !dbg !2189
  br label %do.body, !dbg !2189

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2190

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2189
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2189
  %4 = bitcast i8* %add.ptr to %struct.transport_class*, !dbg !2189
  store %struct.transport_class* %4, %struct.transport_class** %tmp, align 8, !dbg !2190
  %5 = load %struct.transport_class*, %struct.transport_class** %tmp, align 8, !dbg !2189
  store %struct.transport_class* %5, %struct.transport_class** %tclass, align 8, !dbg !2186
  call void @llvm.dbg.declare(metadata %struct.transport_container** %tcont, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !2194, metadata !DIExpression()), !dbg !2196
  %6 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2196
  %7 = bitcast %struct.attribute_container* %6 to i8*, !dbg !2196
  store i8* %7, i8** %__mptr1, align 8, !dbg !2196
  br label %do.body2, !dbg !2196

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !2197

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !2196
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !2196
  %9 = bitcast i8* %add.ptr5 to %struct.transport_container*, !dbg !2196
  store %struct.transport_container* %9, %struct.transport_container** %tmp4, align 8, !dbg !2197
  %10 = load %struct.transport_container*, %struct.transport_container** %tmp4, align 8, !dbg !2196
  store %struct.transport_container* %10, %struct.transport_container** %tcont, align 8, !dbg !2193
  %11 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2199
  %configure = getelementptr inbounds %struct.transport_class, %struct.transport_class* %11, i32 0, i32 2, !dbg !2201
  %12 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %configure, align 8, !dbg !2201
  %tobool = icmp ne i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %12, null, !dbg !2199
  br i1 %tobool, label %if.then, label %if.end, !dbg !2202

if.then:                                          ; preds = %do.end3
  %13 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2203
  %configure6 = getelementptr inbounds %struct.transport_class, %struct.transport_class* %13, i32 0, i32 2, !dbg !2204
  %14 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %configure6, align 8, !dbg !2204
  %15 = load %struct.transport_container*, %struct.transport_container** %tcont, align 8, !dbg !2205
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2206
  %17 = load %struct.device*, %struct.device** %cdev.addr, align 8, !dbg !2207
  %call = call i32 %14(%struct.transport_container* %15, %struct.device* %16, %struct.device* %17) #3, !dbg !2203
  br label %if.end, !dbg !2203

if.end:                                           ; preds = %if.then, %do.end3
  ret i32 0, !dbg !2208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @transport_remove_device(%struct.device* %dev) #0 !dbg !2209 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2210, metadata !DIExpression()), !dbg !2211
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2212
  call void @attribute_container_device_trigger(%struct.device* %0, i32 (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_remove_classdev) #3, !dbg !2213
  ret void, !dbg !2214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @transport_destroy_device(%struct.device* %dev) #0 !dbg !2215 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2216, metadata !DIExpression()), !dbg !2217
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2218
  call void @attribute_container_remove_device(%struct.device* %0, void (%struct.attribute_container*, %struct.device*, %struct.device*)* @transport_destroy_classdev) #3, !dbg !2219
  ret void, !dbg !2220
}

; Function Attrs: noredzone
declare dso_local void @attribute_container_remove_device(%struct.device*, void (%struct.attribute_container*, %struct.device*, %struct.device*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @transport_destroy_classdev(%struct.attribute_container* %cont, %struct.device* %dev, %struct.device* %classdev) #0 !dbg !2221 {
entry:
  %cont.addr = alloca %struct.attribute_container*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %classdev.addr = alloca %struct.device*, align 8
  %tclass = alloca %struct.transport_class*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.transport_class*, align 8
  store %struct.attribute_container* %cont, %struct.attribute_container** %cont.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute_container** %cont.addr, metadata !2224, metadata !DIExpression()), !dbg !2225
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2226, metadata !DIExpression()), !dbg !2227
  store %struct.device* %classdev, %struct.device** %classdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %classdev.addr, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.declare(metadata %struct.transport_class** %tclass, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2232, metadata !DIExpression()), !dbg !2234
  %0 = load %struct.attribute_container*, %struct.attribute_container** %cont.addr, align 8, !dbg !2234
  %class = getelementptr inbounds %struct.attribute_container, %struct.attribute_container* %0, i32 0, i32 2, !dbg !2234
  %1 = load %struct.class*, %struct.class** %class, align 8, !dbg !2234
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2234
  store i8* %2, i8** %__mptr, align 8, !dbg !2234
  br label %do.body, !dbg !2234

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2235

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2234
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !2234
  %4 = bitcast i8* %add.ptr to %struct.transport_class*, !dbg !2234
  store %struct.transport_class* %4, %struct.transport_class** %tmp, align 8, !dbg !2235
  %5 = load %struct.transport_class*, %struct.transport_class** %tmp, align 8, !dbg !2234
  store %struct.transport_class* %5, %struct.transport_class** %tclass, align 8, !dbg !2231
  %6 = load %struct.transport_class*, %struct.transport_class** %tclass, align 8, !dbg !2237
  %remove = getelementptr inbounds %struct.transport_class, %struct.transport_class* %6, i32 0, i32 3, !dbg !2239
  %7 = load i32 (%struct.transport_container*, %struct.device*, %struct.device*)*, i32 (%struct.transport_container*, %struct.device*, %struct.device*)** %remove, align 8, !dbg !2239
  %cmp = icmp ne i32 (%struct.transport_container*, %struct.device*, %struct.device*)* %7, @anon_transport_dummy_function, !dbg !2240
  br i1 %cmp, label %if.then, label %if.end, !dbg !2241

if.then:                                          ; preds = %do.end
  %8 = load %struct.device*, %struct.device** %classdev.addr, align 8, !dbg !2242
  call void @put_device(%struct.device* %8) #3, !dbg !2243
  br label %if.end, !dbg !2243

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !2244
}

; Function Attrs: noredzone
declare dso_local i32 @attribute_container_add_class_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local void @attribute_container_class_device_del(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!1942}
!llvm.module.flags = !{!1946, !1947, !1948, !1949}
!llvm.ident = !{!1950}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 53, type: !1661, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "transport_class_register", scope: !3, file: !3, line: 51, type: !4, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!3 = !DIFile(filename: "drivers/base/transport_class.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transport_class", file: !9, line: 17, size: 1152, elements: !10)
!9 = !DIFile(filename: "./include/linux/transport_class.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !1888, !1940, !1941}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !8, file: !9, line: 18, baseType: !12, size: 960)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !13, line: 54, size: 960, elements: !14)
!13 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !19, !23, !1518, !1519, !1520, !1867, !1871, !1875, !1876, !1877, !1878, !1882, !1886, !1887}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !13, line: 55, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !12, file: !13, line: 56, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !22, line: 76, flags: DIFlagFwdDecl)
!22 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!23 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !12, file: !13, line: 58, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !28, line: 84, size: 320, elements: !29)
!28 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !1496, !1515, !1516}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !28, line: 85, baseType: !16, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !27, file: !28, line: 86, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !38, !132, !6}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !36, line: 19, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !40, line: 64, size: 512, elements: !41)
!40 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !49, !50, !110, !214, !1486, !1491, !1492, !1493, !1494, !1495}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 65, baseType: !16, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !39, file: !40, line: 66, baseType: !44, size: 128, offset: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !36, line: 178, size: 128, elements: !45)
!45 = !{!46, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !36, line: 179, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !44, file: !36, line: 179, baseType: !47, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !39, file: !40, line: 67, baseType: !38, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !39, file: !40, line: 68, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !40, line: 192, size: 704, elements: !53)
!53 = !{!54, !55, !71, !72}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !52, file: !40, line: 193, baseType: !44, size: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !52, file: !40, line: 194, baseType: !56, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !57, line: 83, baseType: !58)
!57 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !57, line: 71, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !57, line: 72, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !57, line: 72, elements: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !61, file: !57, line: 73, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !57, line: 20, elements: !65)
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !64, file: !57, line: 21, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !68, line: 25, baseType: !69)
!68 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 25, elements: !70)
!70 = !{}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !52, file: !40, line: 195, baseType: !39, size: 512, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !52, file: !40, line: 196, baseType: !73, size: 64, offset: 640)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !40, line: 156, size: 192, elements: !76)
!76 = !{!77, !82, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !75, file: !40, line: 157, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!6, !51, !38}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !75, file: !40, line: 158, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!16, !51, !38}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !75, file: !40, line: 159, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!6, !51, !38, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !40, line: 148, size: 20736, elements: !94)
!94 = !{!95, !100, !104, !105, !109}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !93, file: !40, line: 149, baseType: !96, size: 192)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !98)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!98 = !{!99}
!99 = !DISubrange(count: 3)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !93, file: !40, line: 150, baseType: !101, size: 4096, offset: 192)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 4096, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !93, file: !40, line: 151, baseType: !6, size: 32, offset: 4288)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !93, file: !40, line: 152, baseType: !106, size: 16384, offset: 4320)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 16384, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 2048)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !93, file: !40, line: 153, baseType: !6, size: 32, offset: 20704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !39, file: !40, line: 69, baseType: !111, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !40, line: 138, size: 448, elements: !113)
!113 = !{!114, !118, !145, !147, !148, !191, !195}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !112, file: !40, line: 139, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !38}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !112, file: !40, line: 140, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !28, line: 230, size: 128, elements: !122)
!122 = !{!123, !137}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !121, file: !28, line: 231, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !38, !132, !97}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 60, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !129, line: 73, baseType: !130)
!129 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !129, line: 15, baseType: !131)
!131 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !28, line: 30, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !28, line: 31, baseType: !16, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !133, file: !28, line: 32, baseType: !35, size: 16, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !121, file: !28, line: 232, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!127, !38, !132, !16, !141}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 55, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !129, line: 72, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !129, line: 16, baseType: !144)
!144 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !112, file: !40, line: 141, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !112, file: !40, line: 142, baseType: !24, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !112, file: !40, line: 143, baseType: !149, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !38}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !155, line: 39, size: 384, elements: !156)
!155 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !164, !170, !175, !183, !187}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !155, line: 40, baseType: !158, size: 32)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !155, line: 26, baseType: !159, size: 32, elements: !160)
!159 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!160 = !{!161, !162, !163}
!161 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !154, file: !155, line: 41, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 30, baseType: !169)
!169 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !154, file: !155, line: 42, baseType: !171, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !154, file: !155, line: 43, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !181}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !155, line: 19, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !154, file: !155, line: 44, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!179}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !154, file: !155, line: 45, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !174}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !112, file: !40, line: 144, baseType: !192, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!179, !38}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !112, file: !40, line: 145, baseType: !196, size: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !38, !199, !207}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !201, line: 23, baseType: !202)
!201 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 21, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !202, file: !201, line: 22, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !36, line: 32, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !129, line: 49, baseType: !159)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !201, line: 28, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 26, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !201, line: 27, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !36, line: 33, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !129, line: 50, baseType: !159)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !39, file: !40, line: 70, baseType: !215, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !217, line: 123, size: 1024, elements: !218)
!217 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !224, !225, !226, !227, !235, !236, !237, !1479, !1480, !1481, !1482, !1483}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !216, file: !217, line: 124, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !36, line: 168, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 166, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !221, file: !36, line: 167, baseType: !6, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !216, file: !217, line: 125, baseType: !220, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !217, line: 135, baseType: !215, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 136, baseType: !16, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !216, file: !217, line: 138, baseType: !228, size: 192, align: 64, offset: 192)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !229, line: 24, size: 192, align: 64, elements: !230)
!229 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !232, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !228, file: !229, line: 25, baseType: !144, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !228, file: !229, line: 26, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !228, file: !229, line: 27, baseType: !233, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !216, file: !217, line: 140, baseType: !179, size: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !216, file: !217, line: 141, baseType: !159, size: 32, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !217, line: 142, baseType: !238, size: 256, offset: 512)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !217, line: 142, size: 256, elements: !239)
!239 = !{!240, !309, !313}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !238, file: !217, line: 143, baseType: !241, size: 192)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !217, line: 91, size: 192, elements: !242)
!242 = !{!243, !244, !248}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !241, file: !217, line: 92, baseType: !144, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !241, file: !217, line: 94, baseType: !245, size: 64, offset: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !229, line: 31, size: 64, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !245, file: !229, line: 32, baseType: !233, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !241, file: !217, line: 100, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !217, line: 180, size: 704, elements: !251)
!251 = !{!252, !253, !254, !268, !273, !274, !301, !302}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !250, file: !217, line: 182, baseType: !215, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !217, line: 183, baseType: !159, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !250, file: !217, line: 186, baseType: !255, size: 192, offset: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !256, line: 19, size: 192, elements: !257)
!256 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!257 = !{!258, !266, !267}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !255, file: !256, line: 20, baseType: !259, size: 128)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !260, line: 292, size: 128, elements: !261)
!260 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!261 = !{!262, !263, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !259, file: !260, line: 293, baseType: !56)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !259, file: !260, line: 295, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 148, baseType: !159)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !259, file: !260, line: 296, baseType: !174, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !255, file: !256, line: 21, baseType: !159, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !255, file: !256, line: 22, baseType: !159, size: 32, offset: 160)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !250, file: !217, line: 187, baseType: !269, size: 32, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !270, line: 21, baseType: !271)
!270 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !272, line: 27, baseType: !159)
!272 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !250, file: !217, line: 188, baseType: !269, size: 32, offset: 352)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !250, file: !217, line: 189, baseType: !275, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !217, line: 168, size: 320, elements: !277)
!277 = !{!278, !285, !289, !293, !297}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !276, file: !217, line: 169, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!6, !282, !249}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !284, line: 539, flags: DIFlagFwdDecl)
!284 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !276, file: !217, line: 171, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!6, !215, !16, !35}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !276, file: !217, line: 173, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!6, !215}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !276, file: !217, line: 174, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!6, !215, !215, !16}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !276, file: !217, line: 176, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!6, !282, !215, !249}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !250, file: !217, line: 192, baseType: !44, size: 128, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !250, file: !217, line: 194, baseType: !303, size: 128, offset: 576)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !304, line: 40, baseType: !305)
!304 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !304, line: 36, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !305, file: !304, line: 37, baseType: !56)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !305, file: !304, line: 38, baseType: !44, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !238, file: !217, line: 144, baseType: !310, size: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !217, line: 103, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !310, file: !217, line: 104, baseType: !215, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !238, file: !217, line: 145, baseType: !314, size: 256)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !217, line: 107, size: 256, elements: !315)
!315 = !{!316, !1474, !1477, !1478}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !314, file: !217, line: 108, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !217, line: 217, size: 768, elements: !320)
!320 = !{!321, !362, !366, !370, !377, !381, !385, !389, !390, !391, !392, !400}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !319, file: !217, line: 222, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!6, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !217, line: 197, size: 1088, elements: !327)
!327 = !{!328, !329, !332, !333, !334, !350, !351, !352, !353, !354, !355, !356, !357}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !326, file: !217, line: 199, baseType: !215, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !326, file: !217, line: 200, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !284, line: 526, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !326, file: !217, line: 201, baseType: !282, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !326, file: !217, line: 202, baseType: !174, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !326, file: !217, line: 205, baseType: !335, size: 192, offset: 256)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !336, line: 53, size: 192, elements: !337)
!336 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !348, !349}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !335, file: !336, line: 54, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !340, line: 13, baseType: !341)
!340 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !36, line: 175, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 173, size: 64, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !342, file: !36, line: 174, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !270, line: 22, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !272, line: 30, baseType: !347)
!347 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !335, file: !336, line: 55, baseType: !56, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !335, file: !336, line: 59, baseType: !44, size: 128, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !326, file: !217, line: 206, baseType: !335, size: 192, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !326, file: !217, line: 207, baseType: !6, size: 32, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !326, file: !217, line: 208, baseType: !44, size: 128, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !326, file: !217, line: 209, baseType: !97, size: 64, offset: 832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !326, file: !217, line: 211, baseType: !141, size: 64, offset: 896)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !326, file: !217, line: 212, baseType: !168, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !326, file: !217, line: 213, baseType: !168, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !326, file: !217, line: 214, baseType: !358, size: 64, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !361, line: 356, flags: DIFlagFwdDecl)
!361 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !319, file: !217, line: 223, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !325}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !319, file: !217, line: 236, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!6, !282, !174}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !319, file: !217, line: 238, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!174, !282, !374}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !36, line: 46, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !129, line: 88, baseType: !347)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !319, file: !217, line: 239, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!174, !282, !174, !374}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !319, file: !217, line: 240, baseType: !382, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !282, !174}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !319, file: !217, line: 242, baseType: !386, size: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!127, !325, !97, !141, !375}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !319, file: !217, line: 252, baseType: !141, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !319, file: !217, line: 259, baseType: !168, size: 8, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !319, file: !217, line: 260, baseType: !386, size: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !319, file: !217, line: 263, baseType: !393, size: 64, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !325, !398}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !397, line: 52, baseType: !159)
!397 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !217, line: 27, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !319, file: !217, line: 266, baseType: !401, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!6, !325, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !361, line: 305, size: 1472, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !1451, !1457, !1458, !1463, !1464, !1467, !1468, !1469, !1470, !1471, !1472}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !405, file: !361, line: 308, baseType: !144, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !405, file: !361, line: 309, baseType: !144, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !405, file: !361, line: 313, baseType: !404, size: 64, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !405, file: !361, line: 313, baseType: !404, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !405, file: !361, line: 315, baseType: !228, size: 192, align: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !405, file: !361, line: 323, baseType: !144, size: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !405, file: !361, line: 327, baseType: !414, size: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !361, line: 388, size: 7296, elements: !416)
!416 = !{!417, !1447}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !361, line: 389, baseType: !418, size: 7296)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !415, file: !361, line: 389, size: 7296, elements: !419)
!419 = !{!420, !421, !422, !426, !430, !431, !432, !433, !434, !442, !443, !444, !445, !446, !447, !448, !449, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !484, !492, !495, !521, !522, !1418, !1419, !1422, !1425, !1426, !1429, !1430, !1431, !1434, !1446}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !418, file: !361, line: 390, baseType: !404, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !418, file: !361, line: 391, baseType: !245, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !418, file: !361, line: 392, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !270, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !272, line: 31, baseType: !425)
!425 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !418, file: !361, line: 394, baseType: !427, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!144, !330, !144, !144, !144, !144}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !418, file: !361, line: 398, baseType: !144, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !418, file: !361, line: 399, baseType: !144, size: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !418, file: !361, line: 405, baseType: !144, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !418, file: !361, line: 406, baseType: !144, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !418, file: !361, line: 407, baseType: !435, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !284, line: 286, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 286, size: 64, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !437, file: !284, line: 286, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !441, line: 18, baseType: !144)
!441 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!442 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !418, file: !361, line: 416, baseType: !220, size: 32, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !418, file: !361, line: 428, baseType: !220, size: 32, offset: 608)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !418, file: !361, line: 437, baseType: !220, size: 32, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !418, file: !361, line: 447, baseType: !220, size: 32, offset: 672)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !418, file: !361, line: 450, baseType: !339, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !418, file: !361, line: 452, baseType: !6, size: 32, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !418, file: !361, line: 454, baseType: !56, offset: 800)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !418, file: !361, line: 457, baseType: !450, size: 256, offset: 832)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !451, line: 35, size: 256, elements: !452)
!451 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!452 = !{!453, !454, !455, !457}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !450, file: !451, line: 36, baseType: !339, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !450, file: !451, line: 42, baseType: !339, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !450, file: !451, line: 46, baseType: !456, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !57, line: 29, baseType: !64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !450, file: !451, line: 47, baseType: !44, size: 128, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !418, file: !361, line: 459, baseType: !44, size: 128, offset: 1088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !418, file: !361, line: 466, baseType: !144, size: 64, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !418, file: !361, line: 467, baseType: !144, size: 64, offset: 1280)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !418, file: !361, line: 469, baseType: !144, size: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !418, file: !361, line: 470, baseType: !144, size: 64, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !418, file: !361, line: 471, baseType: !341, size: 64, offset: 1472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !418, file: !361, line: 472, baseType: !144, size: 64, offset: 1536)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !418, file: !361, line: 473, baseType: !144, size: 64, offset: 1600)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !418, file: !361, line: 474, baseType: !144, size: 64, offset: 1664)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !418, file: !361, line: 475, baseType: !144, size: 64, offset: 1728)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !418, file: !361, line: 477, baseType: !56, offset: 1792)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !418, file: !361, line: 478, baseType: !144, size: 64, offset: 1792)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !418, file: !361, line: 478, baseType: !144, size: 64, offset: 1856)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !418, file: !361, line: 478, baseType: !144, size: 64, offset: 1920)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !418, file: !361, line: 478, baseType: !144, size: 64, offset: 1984)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !418, file: !361, line: 479, baseType: !144, size: 64, offset: 2048)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !418, file: !361, line: 479, baseType: !144, size: 64, offset: 2112)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !418, file: !361, line: 479, baseType: !144, size: 64, offset: 2176)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !418, file: !361, line: 480, baseType: !144, size: 64, offset: 2240)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !418, file: !361, line: 480, baseType: !144, size: 64, offset: 2304)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !418, file: !361, line: 480, baseType: !144, size: 64, offset: 2368)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !418, file: !361, line: 480, baseType: !144, size: 64, offset: 2432)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !418, file: !361, line: 482, baseType: !481, size: 2816, offset: 2496)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 2816, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 44)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !418, file: !361, line: 488, baseType: !485, size: 256, offset: 5312)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !486, line: 60, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !485, file: !486, line: 61, baseType: !489, size: 256)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 4)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !418, file: !361, line: 490, baseType: !493, size: 64, offset: 5568)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !361, line: 490, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !418, file: !361, line: 493, baseType: !496, size: 896, offset: 5632)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !497, line: 53, baseType: !498)
!497 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !497, line: 13, size: 896, elements: !499)
!499 = !{!500, !501, !502, !503, !506, !507, !508, !509, !513, !514, !517}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !498, file: !497, line: 18, baseType: !423, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !498, file: !497, line: 28, baseType: !341, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !498, file: !497, line: 31, baseType: !450, size: 256, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !498, file: !497, line: 32, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !497, line: 32, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !498, file: !497, line: 37, baseType: !37, size: 16, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !498, file: !497, line: 40, baseType: !335, size: 192, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !498, file: !497, line: 41, baseType: !174, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !498, file: !497, line: 42, baseType: !510, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !497, line: 42, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !498, file: !497, line: 44, baseType: !220, size: 32, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !498, file: !497, line: 50, baseType: !515, size: 16, offset: 864)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !270, line: 19, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !272, line: 24, baseType: !37)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !498, file: !497, line: 51, baseType: !518, size: 16, offset: 880)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !270, line: 18, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !272, line: 23, baseType: !520)
!520 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !361, line: 495, baseType: !144, size: 64, offset: 6528)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !418, file: !361, line: 497, baseType: !523, size: 64, offset: 6592)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !361, line: 381, size: 384, elements: !525)
!525 = !{!526, !527, !1417}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !524, file: !361, line: 382, baseType: !220, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !524, file: !361, line: 383, baseType: !528, size: 128, offset: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !361, line: 376, size: 128, elements: !529)
!529 = !{!530, !1415}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !528, file: !361, line: 377, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !533, line: 640, size: 48640, elements: !534)
!533 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !541, !543, !544, !550, !551, !552, !553, !554, !555, !556, !557, !561, !579, !590, !690, !691, !692, !703, !704, !706, !707, !708, !709, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !794, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !844, !846, !847, !848, !860, !862, !863, !864, !865, !866, !872, !873, !874, !875, !876, !877, !878, !890, !895, !899, !900, !901, !904, !908, !911, !914, !917, !920, !923, !926, !929, !935, !936, !937, !943, !944, !945, !946, !947, !956, !957, !958, !959, !960, !965, !966, !967, !970, !971, !974, !977, !980, !983, !986, !989, !990, !1069, !1072, !1075, !1076, !1079, !1080, !1081, !1087, !1088, !1089, !1102, !1103, !1104, !1114, !1119, !1122, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !532, file: !533, line: 646, baseType: !536, size: 128)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !537, line: 56, size: 128, elements: !538)
!537 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !537, line: 57, baseType: !144, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !536, file: !537, line: 58, baseType: !269, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !532, file: !533, line: 649, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !532, file: !533, line: 657, baseType: !174, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !532, file: !533, line: 658, baseType: !545, size: 32, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !546, line: 113, baseType: !547)
!546 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !546, line: 111, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !547, file: !546, line: 112, baseType: !220, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !533, line: 660, baseType: !159, size: 32, offset: 288)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !532, file: !533, line: 661, baseType: !159, size: 32, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !532, file: !533, line: 684, baseType: !6, size: 32, offset: 352)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !532, file: !533, line: 686, baseType: !6, size: 32, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !532, file: !533, line: 687, baseType: !6, size: 32, offset: 416)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !532, file: !533, line: 688, baseType: !6, size: 32, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !532, file: !533, line: 689, baseType: !159, size: 32, offset: 480)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !532, file: !533, line: 691, baseType: !558, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !533, line: 691, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !532, file: !533, line: 692, baseType: !562, size: 832, offset: 576)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !533, line: 451, size: 832, elements: !563)
!563 = !{!564, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !562, file: !533, line: 453, baseType: !565, size: 128)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !533, line: 325, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !565, file: !533, line: 326, baseType: !144, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !565, file: !533, line: 327, baseType: !269, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !562, file: !533, line: 454, baseType: !228, size: 192, align: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !562, file: !533, line: 455, baseType: !44, size: 128, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !562, file: !533, line: 456, baseType: !159, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !562, file: !533, line: 458, baseType: !423, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !562, file: !533, line: 459, baseType: !423, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !562, file: !533, line: 460, baseType: !423, size: 64, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !562, file: !533, line: 461, baseType: !423, size: 64, offset: 704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !562, file: !533, line: 463, baseType: !423, size: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !562, file: !533, line: 465, baseType: !578, offset: 832)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !533, line: 415, elements: !70)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !532, file: !533, line: 693, baseType: !580, size: 384, offset: 1408)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !533, line: 489, size: 384, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !580, file: !533, line: 490, baseType: !44, size: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !580, file: !533, line: 491, baseType: !144, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !580, file: !533, line: 492, baseType: !144, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !580, file: !533, line: 493, baseType: !159, size: 32, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !580, file: !533, line: 494, baseType: !37, size: 16, offset: 288)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !580, file: !533, line: 495, baseType: !37, size: 16, offset: 304)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !580, file: !533, line: 497, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !532, file: !533, line: 697, baseType: !591, size: 1792, offset: 1792)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !533, line: 507, size: 1792, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !687, !688}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !591, file: !533, line: 508, baseType: !228, size: 192, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !591, file: !533, line: 515, baseType: !423, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !591, file: !533, line: 516, baseType: !423, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !591, file: !533, line: 517, baseType: !423, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !591, file: !533, line: 518, baseType: !423, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !591, file: !533, line: 519, baseType: !423, size: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !591, file: !533, line: 526, baseType: !345, size: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !591, file: !533, line: 527, baseType: !423, size: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !533, line: 528, baseType: !159, size: 32, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !591, file: !533, line: 554, baseType: !159, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !591, file: !533, line: 555, baseType: !159, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !591, file: !533, line: 556, baseType: !159, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !591, file: !533, line: 557, baseType: !159, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !591, file: !533, line: 563, baseType: !607, size: 512, offset: 704)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !608, line: 118, size: 512, elements: !609)
!608 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!609 = !{!610, !618, !619, !628, !680, !684, !685, !686}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !607, file: !608, line: 119, baseType: !611, size: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !612, line: 9, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !612, line: 10, baseType: !228, size: 192, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !611, file: !612, line: 11, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !617, line: 29, baseType: !345)
!617 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !607, file: !608, line: 120, baseType: !616, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !607, file: !608, line: 121, baseType: !620, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!623, !627}
!623 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !608, line: 65, baseType: !159, size: 32, elements: !624)
!624 = !{!625, !626}
!625 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!626 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !607, file: !608, line: 122, baseType: !629, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !608, line: 159, size: 512, align: 512, elements: !631)
!631 = !{!632, !652, !653, !656, !666, !667, !675, !679}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !630, file: !608, line: 160, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !608, line: 214, size: 4608, align: 512, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !608, line: 215, baseType: !456)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !634, file: !608, line: 216, baseType: !159, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !634, file: !608, line: 217, baseType: !159, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !634, file: !608, line: 218, baseType: !159, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !634, file: !608, line: 219, baseType: !159, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !634, file: !608, line: 220, baseType: !159, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !634, file: !608, line: 221, baseType: !159, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !634, file: !608, line: 222, baseType: !159, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !634, file: !608, line: 233, baseType: !616, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !634, file: !608, line: 234, baseType: !627, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !634, file: !608, line: 235, baseType: !616, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !634, file: !608, line: 236, baseType: !627, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !634, file: !608, line: 237, baseType: !649, size: 4096, offset: 512)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 4096, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 8)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !630, file: !608, line: 161, baseType: !159, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !630, file: !608, line: 162, baseType: !654, size: 32, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !36, line: 27, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !129, line: 96, baseType: !6)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !630, file: !608, line: 163, baseType: !657, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !658, line: 276, baseType: !659)
!658 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !658, line: 276, size: 32, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !659, file: !658, line: 276, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !658, line: 70, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !658, line: 65, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !663, file: !658, line: 66, baseType: !159, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !630, file: !608, line: 164, baseType: !627, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !630, file: !608, line: 165, baseType: !668, size: 128, offset: 256)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !612, line: 14, size: 128, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !668, file: !612, line: 15, baseType: !671, size: 128)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !229, line: 125, size: 128, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !671, file: !229, line: 126, baseType: !245, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !671, file: !229, line: 127, baseType: !233, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !630, file: !608, line: 166, baseType: !676, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!616}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !630, file: !608, line: 167, baseType: !616, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !607, file: !608, line: 123, baseType: !681, size: 8, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !270, line: 17, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !272, line: 21, baseType: !683)
!683 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !607, file: !608, line: 124, baseType: !681, size: 8, offset: 456)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !607, file: !608, line: 125, baseType: !681, size: 8, offset: 464)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !607, file: !608, line: 126, baseType: !681, size: 8, offset: 472)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !591, file: !533, line: 572, baseType: !607, size: 512, offset: 1216)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !591, file: !533, line: 580, baseType: !689, size: 64, offset: 1728)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !532, file: !533, line: 721, baseType: !159, size: 32, offset: 3584)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !532, file: !533, line: 722, baseType: !6, size: 32, offset: 3616)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !532, file: !533, line: 723, baseType: !693, size: 64, offset: 3648)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !696, line: 17, baseType: !697)
!696 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !696, line: 17, size: 64, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !697, file: !696, line: 17, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 1)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !532, file: !533, line: 724, baseType: !695, size: 64, offset: 3712)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !532, file: !533, line: 749, baseType: !705, offset: 3776)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !533, line: 290, elements: !70)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !532, file: !533, line: 751, baseType: !44, size: 128, offset: 3776)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !532, file: !533, line: 757, baseType: !414, size: 64, offset: 3904)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !532, file: !533, line: 758, baseType: !414, size: 64, offset: 3968)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !532, file: !533, line: 761, baseType: !710, size: 320, offset: 4032)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !486, line: 34, size: 320, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !710, file: !486, line: 35, baseType: !423, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !710, file: !486, line: 36, baseType: !714, size: 256, offset: 64)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !490)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !532, file: !533, line: 766, baseType: !6, size: 32, offset: 4352)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !532, file: !533, line: 767, baseType: !6, size: 32, offset: 4384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !532, file: !533, line: 768, baseType: !6, size: 32, offset: 4416)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !532, file: !533, line: 770, baseType: !6, size: 32, offset: 4448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !532, file: !533, line: 772, baseType: !144, size: 64, offset: 4480)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !532, file: !533, line: 775, baseType: !159, size: 32, offset: 4544)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !532, file: !533, line: 778, baseType: !159, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !532, file: !533, line: 779, baseType: !159, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !532, file: !533, line: 780, baseType: !159, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !532, file: !533, line: 803, baseType: !159, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !532, file: !533, line: 806, baseType: !159, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !532, file: !533, line: 807, baseType: !159, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !532, file: !533, line: 809, baseType: !159, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !532, file: !533, line: 815, baseType: !159, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !532, file: !533, line: 831, baseType: !144, size: 64, offset: 4672)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !532, file: !533, line: 833, baseType: !731, size: 384, offset: 4736)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !732, line: 25, size: 384, elements: !733)
!732 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !739}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !731, file: !732, line: 26, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!131, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 27, baseType: !740, size: 320, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 27, size: 320, elements: !741)
!741 = !{!742, !752, !784}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !740, file: !732, line: 36, baseType: !743, size: 320)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !732, line: 29, size: 320, elements: !744)
!744 = !{!745, !747, !748, !749, !750, !751}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !743, file: !732, line: 30, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !743, file: !732, line: 31, baseType: !269, size: 32, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !732, line: 32, baseType: !269, size: 32, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !743, file: !732, line: 33, baseType: !269, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !743, file: !732, line: 34, baseType: !423, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !743, file: !732, line: 35, baseType: !746, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !740, file: !732, line: 46, baseType: !753, size: 192)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !732, line: 38, size: 192, elements: !754)
!754 = !{!755, !756, !762, !783}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !753, file: !732, line: 39, baseType: !654, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !732, line: 40, baseType: !757, size: 32, offset: 32)
!757 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !732, line: 16, baseType: !159, size: 32, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!760 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!761 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!762 = !DIDerivedType(tag: DW_TAG_member, scope: !753, file: !732, line: 41, baseType: !763, size: 64, offset: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !732, line: 41, size: 64, elements: !764)
!764 = !{!765, !773}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !763, file: !732, line: 42, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !768, line: 7, size: 128, elements: !769)
!768 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !767, file: !768, line: 8, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !129, line: 93, baseType: !347)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !767, file: !768, line: 9, baseType: !347, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !763, file: !732, line: 43, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !776, line: 7, size: 64, elements: !777)
!776 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !782}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !775, file: !776, line: 8, baseType: !779, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !776, line: 5, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !270, line: 20, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !272, line: 26, baseType: !6)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !775, file: !776, line: 9, baseType: !780, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !753, file: !732, line: 45, baseType: !423, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !740, file: !732, line: 54, baseType: !785, size: 256)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !740, file: !732, line: 48, size: 256, elements: !786)
!786 = !{!787, !790, !791, !792, !793}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !785, file: !732, line: 49, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !732, line: 14, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !785, file: !732, line: 50, baseType: !6, size: 32, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !785, file: !732, line: 51, baseType: !6, size: 32, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !785, file: !732, line: 52, baseType: !144, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !785, file: !732, line: 53, baseType: !144, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !532, file: !533, line: 835, baseType: !795, size: 32, offset: 5120)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !36, line: 22, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !129, line: 28, baseType: !6)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !532, file: !533, line: 836, baseType: !795, size: 32, offset: 5152)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !532, file: !533, line: 840, baseType: !144, size: 64, offset: 5184)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !532, file: !533, line: 849, baseType: !531, size: 64, offset: 5248)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !532, file: !533, line: 852, baseType: !531, size: 64, offset: 5312)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !532, file: !533, line: 857, baseType: !44, size: 128, offset: 5376)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !532, file: !533, line: 858, baseType: !44, size: 128, offset: 5504)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !532, file: !533, line: 859, baseType: !531, size: 64, offset: 5632)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !532, file: !533, line: 867, baseType: !44, size: 128, offset: 5696)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !532, file: !533, line: 868, baseType: !44, size: 128, offset: 5824)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !532, file: !533, line: 871, baseType: !807, size: 64, offset: 5952)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !809, line: 59, size: 768, elements: !810)
!809 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812, !813, !814, !825, !826, !827, !836}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !808, file: !809, line: 61, baseType: !545, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !808, file: !809, line: 62, baseType: !159, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !808, file: !809, line: 63, baseType: !56, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !808, file: !809, line: 65, baseType: !815, size: 256, offset: 64)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 256, elements: !490)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !36, line: 182, size: 64, elements: !817)
!817 = !{!818}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !816, file: !36, line: 183, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !36, line: 186, size: 128, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !36, line: 187, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !820, file: !36, line: 187, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !808, file: !809, line: 66, baseType: !816, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !808, file: !809, line: 68, baseType: !303, size: 128, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !808, file: !809, line: 69, baseType: !828, size: 128, align: 64, offset: 512)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !36, line: 216, size: 128, align: 64, elements: !829)
!829 = !{!830, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !828, file: !36, line: 217, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !828, file: !36, line: 218, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !831}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !808, file: !809, line: 70, baseType: !837, size: 128, offset: 640)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 128, elements: !701)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !809, line: 54, size: 128, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !838, file: !809, line: 55, baseType: !6, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !838, file: !809, line: 56, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !809, line: 56, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !532, file: !533, line: 872, baseType: !845, size: 512, offset: 6016)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 512, elements: !490)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !532, file: !533, line: 873, baseType: !44, size: 128, offset: 6528)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !532, file: !533, line: 874, baseType: !44, size: 128, offset: 6656)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !532, file: !533, line: 876, baseType: !849, size: 64, offset: 6784)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !851, line: 26, size: 192, elements: !852)
!851 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !850, file: !851, line: 27, baseType: !159, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !850, file: !851, line: 28, baseType: !855, size: 128, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !856, line: 43, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !855, file: !856, line: 44, baseType: !456)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !855, file: !856, line: 45, baseType: !44, size: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !532, file: !533, line: 879, baseType: !861, size: 64, offset: 6848)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !532, file: !533, line: 882, baseType: !861, size: 64, offset: 6912)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !532, file: !533, line: 884, baseType: !423, size: 64, offset: 6976)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !532, file: !533, line: 885, baseType: !423, size: 64, offset: 7040)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !532, file: !533, line: 890, baseType: !423, size: 64, offset: 7104)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !532, file: !533, line: 891, baseType: !867, size: 128, offset: 7168)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !533, line: 242, size: 128, elements: !868)
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !867, file: !533, line: 244, baseType: !423, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !867, file: !533, line: 245, baseType: !423, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !867, file: !533, line: 246, baseType: !456, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !532, file: !533, line: 900, baseType: !144, size: 64, offset: 7296)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !532, file: !533, line: 901, baseType: !144, size: 64, offset: 7360)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !532, file: !533, line: 904, baseType: !423, size: 64, offset: 7424)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !532, file: !533, line: 907, baseType: !423, size: 64, offset: 7488)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !532, file: !533, line: 910, baseType: !144, size: 64, offset: 7552)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !532, file: !533, line: 911, baseType: !144, size: 64, offset: 7616)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !532, file: !533, line: 914, baseType: !879, size: 640, offset: 7680)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !880, line: 123, size: 640, elements: !881)
!880 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!881 = !{!882, !888, !889}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !879, file: !880, line: 124, baseType: !883, size: 576)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 576, elements: !98)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !880, line: 108, size: 192, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !884, file: !880, line: 109, baseType: !423, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !884, file: !880, line: 110, baseType: !668, size: 128, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !879, file: !880, line: 125, baseType: !159, size: 32, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !879, file: !880, line: 126, baseType: !159, size: 32, offset: 608)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !532, file: !533, line: 917, baseType: !891, size: 192, offset: 8320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !880, line: 134, size: 192, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !891, file: !880, line: 135, baseType: !828, size: 128, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !891, file: !880, line: 136, baseType: !159, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !532, file: !533, line: 923, baseType: !896, size: 64, offset: 8512)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !533, line: 923, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !532, file: !533, line: 926, baseType: !896, size: 64, offset: 8576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !532, file: !533, line: 929, baseType: !896, size: 64, offset: 8640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !532, file: !533, line: 933, baseType: !902, size: 64, offset: 8704)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !533, line: 933, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !532, file: !533, line: 943, baseType: !905, size: 128, offset: 8768)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 16)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !532, file: !533, line: 945, baseType: !909, size: 64, offset: 8896)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !533, line: 49, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !532, file: !533, line: 956, baseType: !912, size: 64, offset: 8960)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !533, line: 45, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !532, file: !533, line: 959, baseType: !915, size: 64, offset: 9024)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !533, line: 959, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !532, file: !533, line: 962, baseType: !918, size: 64, offset: 9088)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !533, line: 66, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !532, file: !533, line: 966, baseType: !921, size: 64, offset: 9152)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !533, line: 50, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !532, file: !533, line: 969, baseType: !924, size: 64, offset: 9216)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !880, line: 223, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !532, file: !533, line: 970, baseType: !927, size: 64, offset: 9280)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !533, line: 62, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !532, file: !533, line: 971, baseType: !930, size: 64, offset: 9344)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !931, line: 25, baseType: !932)
!931 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !931, line: 23, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !932, file: !931, line: 24, baseType: !700, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !532, file: !533, line: 972, baseType: !930, size: 64, offset: 9408)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !532, file: !533, line: 974, baseType: !930, size: 64, offset: 9472)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !532, file: !533, line: 975, baseType: !938, size: 192, offset: 9536)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !939, line: 30, size: 192, elements: !940)
!939 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !938, file: !939, line: 31, baseType: !44, size: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !938, file: !939, line: 32, baseType: !930, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !532, file: !533, line: 976, baseType: !144, size: 64, offset: 9728)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !532, file: !533, line: 977, baseType: !141, size: 64, offset: 9792)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !532, file: !533, line: 978, baseType: !159, size: 32, offset: 9856)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !532, file: !533, line: 980, baseType: !831, size: 64, offset: 9920)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !532, file: !533, line: 989, baseType: !948, size: 128, offset: 9984)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !949, line: 35, size: 128, elements: !950)
!949 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !948, file: !949, line: 36, baseType: !6, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !948, file: !949, line: 37, baseType: !220, size: 32, offset: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !948, file: !949, line: 38, baseType: !954, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !949, line: 23, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !532, file: !533, line: 992, baseType: !423, size: 64, offset: 10112)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !532, file: !533, line: 993, baseType: !423, size: 64, offset: 10176)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !532, file: !533, line: 996, baseType: !56, offset: 10240)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !532, file: !533, line: 999, baseType: !456, offset: 10240)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !532, file: !533, line: 1001, baseType: !961, size: 64, offset: 10240)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !533, line: 636, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !961, file: !533, line: 637, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !532, file: !533, line: 1005, baseType: !671, size: 128, offset: 10304)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !532, file: !533, line: 1007, baseType: !531, size: 64, offset: 10432)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !532, file: !533, line: 1009, baseType: !968, size: 64, offset: 10496)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !533, line: 1009, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !532, file: !533, line: 1043, baseType: !174, size: 64, offset: 10560)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !532, file: !533, line: 1046, baseType: !972, size: 64, offset: 10624)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !533, line: 41, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !532, file: !533, line: 1050, baseType: !975, size: 64, offset: 10688)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !533, line: 42, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !532, file: !533, line: 1054, baseType: !978, size: 64, offset: 10752)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !533, line: 55, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !532, file: !533, line: 1056, baseType: !981, size: 64, offset: 10816)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !533, line: 40, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !532, file: !533, line: 1058, baseType: !984, size: 64, offset: 10880)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !533, line: 47, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !532, file: !533, line: 1061, baseType: !987, size: 64, offset: 10944)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !533, line: 43, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !532, file: !533, line: 1064, baseType: !144, size: 64, offset: 11008)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !532, file: !533, line: 1065, baseType: !991, size: 64, offset: 11072)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !939, line: 14, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !939, line: 12, size: 384, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !939, line: 13, baseType: !996, size: 384)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !939, line: 13, size: 384, elements: !997)
!997 = !{!998, !999, !1000, !1001}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !996, file: !939, line: 13, baseType: !6, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !996, file: !939, line: 13, baseType: !6, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !996, file: !939, line: 13, baseType: !6, size: 32, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !996, file: !939, line: 13, baseType: !1002, size: 256, offset: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1003, line: 32, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !{!1005, !1010, !1023, !1029, !1038, !1058, !1063}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1002, file: !1003, line: 37, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 34, size: 64, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1006, file: !1003, line: 35, baseType: !796, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1006, file: !1003, line: 36, baseType: !206, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1002, file: !1003, line: 45, baseType: !1011, size: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 40, size: 192, elements: !1012)
!1012 = !{!1013, !1015, !1016, !1022}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1011, file: !1003, line: 41, baseType: !1014, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !129, line: 95, baseType: !6)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1011, file: !1003, line: 42, baseType: !6, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1011, file: !1003, line: 43, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1003, line: 11, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1003, line: 8, size: 64, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1018, file: !1003, line: 9, baseType: !6, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1018, file: !1003, line: 10, baseType: !174, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1011, file: !1003, line: 44, baseType: !6, size: 32, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1002, file: !1003, line: 52, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 48, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1024, file: !1003, line: 49, baseType: !796, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1024, file: !1003, line: 50, baseType: !206, size: 32, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1024, file: !1003, line: 51, baseType: !1017, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1002, file: !1003, line: 61, baseType: !1030, size: 256)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 55, size: 256, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1037}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1030, file: !1003, line: 56, baseType: !796, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1030, file: !1003, line: 57, baseType: !206, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1030, file: !1003, line: 58, baseType: !6, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1030, file: !1003, line: 59, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !129, line: 94, baseType: !130)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1030, file: !1003, line: 60, baseType: !1036, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1002, file: !1003, line: 95, baseType: !1039, size: 256)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 64, size: 256, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1039, file: !1003, line: 65, baseType: !174, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1039, file: !1003, line: 77, baseType: !1043, size: 192, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1039, file: !1003, line: 77, size: 192, elements: !1044)
!1044 = !{!1045, !1046, !1053}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1043, file: !1003, line: 82, baseType: !520, size: 16)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1043, file: !1003, line: 88, baseType: !1047, size: 192)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1003, line: 84, size: 192, elements: !1048)
!1048 = !{!1049, !1051, !1052}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1047, file: !1003, line: 85, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !650)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1047, file: !1003, line: 86, baseType: !174, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1047, file: !1003, line: 87, baseType: !174, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1043, file: !1003, line: 93, baseType: !1054, size: 96)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !1003, line: 90, size: 96, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1054, file: !1003, line: 91, baseType: !1050, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1054, file: !1003, line: 92, baseType: !271, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1002, file: !1003, line: 101, baseType: !1059, size: 128)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 98, size: 128, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1059, file: !1003, line: 99, baseType: !131, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1059, file: !1003, line: 100, baseType: !6, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1002, file: !1003, line: 108, baseType: !1064, size: 128)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !1003, line: 104, size: 128, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1064, file: !1003, line: 105, baseType: !174, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1064, file: !1003, line: 106, baseType: !6, size: 32, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1064, file: !1003, line: 107, baseType: !159, size: 32, offset: 96)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !532, file: !533, line: 1067, baseType: !1070, offset: 11136)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1071, line: 12, elements: !70)
!1071 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !532, file: !533, line: 1099, baseType: !1073, size: 64, offset: 11136)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !533, line: 56, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !532, file: !533, line: 1103, baseType: !44, size: 128, offset: 11200)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !532, file: !533, line: 1104, baseType: !1077, size: 64, offset: 11328)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !533, line: 46, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !532, file: !533, line: 1105, baseType: !335, size: 192, offset: 11392)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !532, file: !533, line: 1106, baseType: !159, size: 32, offset: 11584)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !532, file: !533, line: 1109, baseType: !1082, size: 128, offset: 11648)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 128, elements: !1085)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !533, line: 51, flags: DIFlagFwdDecl)
!1085 = !{!1086}
!1086 = !DISubrange(count: 2)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !532, file: !533, line: 1110, baseType: !335, size: 192, offset: 11776)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !532, file: !533, line: 1111, baseType: !44, size: 128, offset: 11968)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !532, file: !533, line: 1173, baseType: !1090, size: 64, offset: 12096)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1092, line: 62, size: 256, align: 256, elements: !1093)
!1092 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095, !1096, !1101}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1091, file: !1092, line: 75, baseType: !271, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1091, file: !1092, line: 90, baseType: !271, size: 32, offset: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1091, file: !1092, line: 124, baseType: !1097, size: 64, offset: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !1092, line: 109, size: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1097, file: !1092, line: 110, baseType: !424, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1097, file: !1092, line: 112, baseType: !424, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1092, line: 144, baseType: !271, size: 32, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !532, file: !533, line: 1174, baseType: !269, size: 32, offset: 12160)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !532, file: !533, line: 1179, baseType: !144, size: 64, offset: 12224)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !532, file: !533, line: 1182, baseType: !1105, size: 128, offset: 12288)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !486, line: 76, size: 128, elements: !1106)
!1106 = !{!1107, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1105, file: !486, line: 85, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1109, line: 7, size: 64, elements: !1110)
!1109 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1108, file: !1109, line: 12, baseType: !697, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1105, file: !486, line: 88, baseType: !168, size: 8, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1105, file: !486, line: 95, baseType: !168, size: 8, offset: 72)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !533, line: 1184, baseType: !1115, size: 128, offset: 12416)
!1115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !533, line: 1184, size: 128, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1115, file: !533, line: 1185, baseType: !545, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1115, file: !533, line: 1186, baseType: !828, size: 128, align: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !532, file: !533, line: 1190, baseType: !1120, size: 64, offset: 12544)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !533, line: 53, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !532, file: !533, line: 1192, baseType: !1123, size: 128, offset: 12608)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !486, line: 64, size: 128, elements: !1124)
!1124 = !{!1125, !1218, !1219}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1123, file: !486, line: 65, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !361, line: 68, size: 512, align: 128, elements: !1128)
!1128 = !{!1129, !1130, !1210, !1217}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !361, line: 69, baseType: !144, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !361, line: 77, baseType: !1131, size: 320, offset: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !361, line: 77, size: 320, elements: !1132)
!1132 = !{!1133, !1142, !1147, !1175, !1183, !1189, !1202, !1209}
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 78, baseType: !1134, size: 320)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 78, size: 320, elements: !1135)
!1135 = !{!1136, !1137, !1140, !1141}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1134, file: !361, line: 84, baseType: !44, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1134, file: !361, line: 86, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !361, line: 26, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1134, file: !361, line: 87, baseType: !144, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1134, file: !361, line: 94, baseType: !144, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 96, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 96, size: 64, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1143, file: !361, line: 101, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !36, line: 143, baseType: !423)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 103, baseType: !1148, size: 320)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 103, size: 320, elements: !1149)
!1149 = !{!1150, !1160, !1163, !1164}
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !361, line: 104, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !361, line: 104, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1151, file: !361, line: 105, baseType: !44, size: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !361, line: 106, baseType: !1155, size: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !361, line: 106, size: 128, elements: !1156)
!1156 = !{!1157, !1158, !1159}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1155, file: !361, line: 107, baseType: !1126, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1155, file: !361, line: 109, baseType: !6, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1155, file: !361, line: 110, baseType: !6, size: 32, offset: 96)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1148, file: !361, line: 117, baseType: !1161, size: 64, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !361, line: 117, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1148, file: !361, line: 119, baseType: !174, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1148, file: !361, line: 120, baseType: !1165, size: 64, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !361, line: 120, size: 64, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1165, file: !361, line: 121, baseType: !174, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1165, file: !361, line: 122, baseType: !144, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1165, file: !361, line: 123, baseType: !1170, size: 32)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1165, file: !361, line: 123, size: 32, elements: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1170, file: !361, line: 124, baseType: !159, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1170, file: !361, line: 125, baseType: !159, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1170, file: !361, line: 126, baseType: !159, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 130, baseType: !1176, size: 192)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 130, size: 192, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1176, file: !361, line: 131, baseType: !144, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1176, file: !361, line: 134, baseType: !683, size: 8, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1176, file: !361, line: 135, baseType: !683, size: 8, offset: 72)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1176, file: !361, line: 136, baseType: !220, size: 32, offset: 96)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1176, file: !361, line: 137, baseType: !159, size: 32, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 139, baseType: !1184, size: 256)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 139, size: 256, elements: !1185)
!1185 = !{!1186, !1187, !1188}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1184, file: !361, line: 140, baseType: !144, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1184, file: !361, line: 141, baseType: !220, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1184, file: !361, line: 143, baseType: !44, size: 128, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 145, baseType: !1190, size: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 145, size: 256, elements: !1191)
!1191 = !{!1192, !1193, !1195, !1196, !1201}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1190, file: !361, line: 146, baseType: !144, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1190, file: !361, line: 147, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !284, line: 509, baseType: !1126)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1190, file: !361, line: 148, baseType: !144, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !361, line: 149, baseType: !1197, size: 64, offset: 192)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !361, line: 149, size: 64, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1197, file: !361, line: 150, baseType: !414, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1197, file: !361, line: 151, baseType: !220, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1190, file: !361, line: 156, baseType: !56, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !361, line: 159, baseType: !1203, size: 128)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !361, line: 159, size: 128, elements: !1204)
!1204 = !{!1205, !1208}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1203, file: !361, line: 161, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !361, line: 161, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1203, file: !361, line: 162, baseType: !174, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1131, file: !361, line: 176, baseType: !828, size: 128, align: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !361, line: 179, baseType: !1211, size: 32, offset: 384)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !361, line: 179, size: 32, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1211, file: !361, line: 184, baseType: !220, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1211, file: !361, line: 192, baseType: !159, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1211, file: !361, line: 194, baseType: !159, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1211, file: !361, line: 195, baseType: !6, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1127, file: !361, line: 199, baseType: !220, size: 32, offset: 416)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1123, file: !486, line: 67, baseType: !271, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1123, file: !486, line: 68, baseType: !271, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !532, file: !533, line: 1206, baseType: !6, size: 32, offset: 12736)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !532, file: !533, line: 1207, baseType: !6, size: 32, offset: 12768)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !532, file: !533, line: 1209, baseType: !144, size: 64, offset: 12800)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !532, file: !533, line: 1219, baseType: !423, size: 64, offset: 12864)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !532, file: !533, line: 1220, baseType: !423, size: 64, offset: 12928)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !532, file: !533, line: 1317, baseType: !6, size: 32, offset: 12992)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !532, file: !533, line: 1319, baseType: !531, size: 64, offset: 13056)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !532, file: !533, line: 1322, baseType: !1228, size: 64, offset: 13120)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !533, line: 1322, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !532, file: !533, line: 1326, baseType: !545, size: 32, offset: 13184)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !532, file: !533, line: 1342, baseType: !174, size: 64, offset: 13248)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !532, file: !533, line: 1343, baseType: !424, size: 64, offset: 13312)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !532, file: !533, line: 1344, baseType: !423, size: 64, offset: 13376)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !532, file: !533, line: 1345, baseType: !424, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !532, file: !533, line: 1346, baseType: !424, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !532, file: !533, line: 1347, baseType: !424, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !532, file: !533, line: 1348, baseType: !828, size: 128, align: 64, offset: 13504)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !532, file: !533, line: 1358, baseType: !1239, size: 34816, offset: 13824)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1240, line: 485, size: 34816, elements: !1241)
!1240 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !{!1242, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1271, !1272, !1273, !1274, !1275, !1276, !1279, !1280, !1281}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1239, file: !1240, line: 487, baseType: !1243, size: 192)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, size: 192, elements: !98)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1245, line: 16, size: 64, elements: !1246)
!1245 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1244, file: !1245, line: 17, baseType: !515, size: 16)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1244, file: !1245, line: 18, baseType: !515, size: 16, offset: 16)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1244, file: !1245, line: 19, baseType: !515, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1244, file: !1245, line: 19, baseType: !515, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1244, file: !1245, line: 19, baseType: !515, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1244, file: !1245, line: 19, baseType: !515, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1244, file: !1245, line: 19, baseType: !515, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1244, file: !1245, line: 20, baseType: !515, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1244, file: !1245, line: 20, baseType: !515, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1244, file: !1245, line: 20, baseType: !515, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1244, file: !1245, line: 20, baseType: !515, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1244, file: !1245, line: 20, baseType: !515, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1244, file: !1245, line: 20, baseType: !515, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1239, file: !1240, line: 491, baseType: !144, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1239, file: !1240, line: 495, baseType: !37, size: 16, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1239, file: !1240, line: 496, baseType: !37, size: 16, offset: 272)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1239, file: !1240, line: 497, baseType: !37, size: 16, offset: 288)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1239, file: !1240, line: 498, baseType: !37, size: 16, offset: 304)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1239, file: !1240, line: 502, baseType: !144, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1239, file: !1240, line: 503, baseType: !144, size: 64, offset: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1239, file: !1240, line: 514, baseType: !1268, size: 256, offset: 448)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1269, size: 256, elements: !490)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1240, line: 483, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1239, file: !1240, line: 516, baseType: !144, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1239, file: !1240, line: 518, baseType: !144, size: 64, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1239, file: !1240, line: 520, baseType: !144, size: 64, offset: 832)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1239, file: !1240, line: 521, baseType: !144, size: 64, offset: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1239, file: !1240, line: 522, baseType: !144, size: 64, offset: 960)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1239, file: !1240, line: 528, baseType: !1277, size: 64, offset: 1024)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1240, line: 10, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1239, file: !1240, line: 535, baseType: !144, size: 64, offset: 1088)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1239, file: !1240, line: 537, baseType: !159, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1239, file: !1240, line: 540, baseType: !1282, size: 33280, offset: 1536)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1283, line: 317, size: 33280, elements: !1284)
!1283 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1282, file: !1283, line: 330, baseType: !159, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1282, file: !1283, line: 337, baseType: !144, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1282, file: !1283, line: 348, baseType: !1288, size: 32768, offset: 512)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1283, line: 304, size: 32768, elements: !1289)
!1289 = !{!1290, !1305, !1344, !1394, !1411}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1288, file: !1283, line: 305, baseType: !1291, size: 896)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1283, line: 12, size: 896, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1304}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1291, file: !1283, line: 13, baseType: !269, size: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1291, file: !1283, line: 14, baseType: !269, size: 32, offset: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1291, file: !1283, line: 15, baseType: !269, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1291, file: !1283, line: 16, baseType: !269, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1291, file: !1283, line: 17, baseType: !269, size: 32, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1291, file: !1283, line: 18, baseType: !269, size: 32, offset: 160)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1291, file: !1283, line: 19, baseType: !269, size: 32, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1291, file: !1283, line: 22, baseType: !1301, size: 640, offset: 224)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 640, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 20)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1291, file: !1283, line: 25, baseType: !269, size: 32, offset: 864)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1288, file: !1283, line: 306, baseType: !1306, size: 4096, align: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1283, line: 34, size: 4096, align: 128, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311, !1312, !1327, !1328, !1329, !1333, !1335, !1339}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1306, file: !1283, line: 35, baseType: !515, size: 16)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1306, file: !1283, line: 36, baseType: !515, size: 16, offset: 16)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1306, file: !1283, line: 37, baseType: !515, size: 16, offset: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1306, file: !1283, line: 38, baseType: !515, size: 16, offset: 48)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !1283, line: 39, baseType: !1313, size: 128, offset: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !1283, line: 39, size: 128, elements: !1314)
!1314 = !{!1315, !1320}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1283, line: 40, baseType: !1316, size: 128)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !1283, line: 40, size: 128, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1316, file: !1283, line: 41, baseType: !423, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1316, file: !1283, line: 42, baseType: !423, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1283, line: 44, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !1283, line: 44, size: 128, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1321, file: !1283, line: 45, baseType: !269, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1321, file: !1283, line: 46, baseType: !269, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1321, file: !1283, line: 47, baseType: !269, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1321, file: !1283, line: 48, baseType: !269, size: 32, offset: 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1306, file: !1283, line: 51, baseType: !269, size: 32, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1306, file: !1283, line: 52, baseType: !269, size: 32, offset: 224)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1306, file: !1283, line: 55, baseType: !1330, size: 1024, offset: 256)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 1024, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1306, file: !1283, line: 58, baseType: !1334, size: 2048, offset: 1280)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 2048, elements: !102)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1306, file: !1283, line: 60, baseType: !1336, size: 384, offset: 3328)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 384, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 12)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1306, file: !1283, line: 62, baseType: !1340, size: 384, offset: 3712)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1306, file: !1283, line: 62, size: 384, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1340, file: !1283, line: 63, baseType: !1336, size: 384)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1340, file: !1283, line: 64, baseType: !1336, size: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1288, file: !1283, line: 307, baseType: !1345, size: 1088)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1283, line: 79, size: 1088, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1393}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1345, file: !1283, line: 80, baseType: !269, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1345, file: !1283, line: 81, baseType: !269, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1345, file: !1283, line: 82, baseType: !269, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1345, file: !1283, line: 83, baseType: !269, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1345, file: !1283, line: 84, baseType: !269, size: 32, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1345, file: !1283, line: 85, baseType: !269, size: 32, offset: 160)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1345, file: !1283, line: 86, baseType: !269, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1345, file: !1283, line: 88, baseType: !1301, size: 640, offset: 224)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1345, file: !1283, line: 89, baseType: !681, size: 8, offset: 864)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1345, file: !1283, line: 90, baseType: !681, size: 8, offset: 872)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1345, file: !1283, line: 91, baseType: !681, size: 8, offset: 880)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1345, file: !1283, line: 92, baseType: !681, size: 8, offset: 888)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1345, file: !1283, line: 93, baseType: !681, size: 8, offset: 896)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1345, file: !1283, line: 94, baseType: !681, size: 8, offset: 904)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1345, file: !1283, line: 95, baseType: !1362, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1364, line: 11, size: 128, elements: !1365)
!1364 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1363, file: !1364, line: 12, baseType: !131, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1363, file: !1364, line: 13, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1370, line: 56, size: 1344, elements: !1371)
!1370 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1369, file: !1370, line: 61, baseType: !144, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1369, file: !1370, line: 62, baseType: !144, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1369, file: !1370, line: 63, baseType: !144, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1369, file: !1370, line: 64, baseType: !144, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1369, file: !1370, line: 65, baseType: !144, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1369, file: !1370, line: 66, baseType: !144, size: 64, offset: 320)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1369, file: !1370, line: 68, baseType: !144, size: 64, offset: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1369, file: !1370, line: 69, baseType: !144, size: 64, offset: 448)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1369, file: !1370, line: 70, baseType: !144, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1369, file: !1370, line: 71, baseType: !144, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1369, file: !1370, line: 72, baseType: !144, size: 64, offset: 640)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1369, file: !1370, line: 73, baseType: !144, size: 64, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1369, file: !1370, line: 74, baseType: !144, size: 64, offset: 768)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1369, file: !1370, line: 75, baseType: !144, size: 64, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1369, file: !1370, line: 76, baseType: !144, size: 64, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1369, file: !1370, line: 81, baseType: !144, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1369, file: !1370, line: 83, baseType: !144, size: 64, offset: 1024)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1369, file: !1370, line: 84, baseType: !144, size: 64, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1369, file: !1370, line: 85, baseType: !144, size: 64, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1369, file: !1370, line: 86, baseType: !144, size: 64, offset: 1216)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1369, file: !1370, line: 87, baseType: !144, size: 64, offset: 1280)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1345, file: !1283, line: 96, baseType: !269, size: 32, offset: 1024)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1288, file: !1283, line: 308, baseType: !1395, size: 4608, align: 512)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1283, line: 289, size: 4608, align: 512, elements: !1396)
!1396 = !{!1397, !1398, !1407}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1395, file: !1283, line: 290, baseType: !1306, size: 4096, align: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1395, file: !1283, line: 291, baseType: !1399, size: 512, offset: 4096)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1283, line: 268, size: 512, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1399, file: !1283, line: 269, baseType: !423, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1399, file: !1283, line: 270, baseType: !423, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1399, file: !1283, line: 271, baseType: !1404, size: 384, offset: 128)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 6)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1395, file: !1283, line: 292, baseType: !1408, offset: 4608)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, elements: !1409)
!1409 = !{!1410}
!1410 = !DISubrange(count: 0)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1288, file: !1283, line: 309, baseType: !1412, size: 32768)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !681, size: 32768, elements: !1413)
!1413 = !{!1414}
!1414 = !DISubrange(count: 4096)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !361, line: 378, baseType: !1416, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !524, file: !361, line: 384, baseType: !850, size: 192, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !418, file: !361, line: 500, baseType: !56, offset: 6656)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !418, file: !361, line: 501, baseType: !1420, size: 64, offset: 6656)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !361, line: 387, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !418, file: !361, line: 516, baseType: !1423, size: 64, offset: 6720)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !201, line: 18, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !418, file: !361, line: 519, baseType: !330, size: 64, offset: 6784)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !418, file: !361, line: 521, baseType: !1427, size: 64, offset: 6848)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !361, line: 521, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !418, file: !361, line: 545, baseType: !220, size: 32, offset: 6912)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !418, file: !361, line: 548, baseType: !168, size: 8, offset: 6944)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !418, file: !361, line: 550, baseType: !1432, offset: 6952)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1433, line: 142, elements: !70)
!1433 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !418, file: !361, line: 554, baseType: !1435, size: 256, offset: 6976)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1436, line: 102, size: 256, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1435, file: !1436, line: 103, baseType: !339, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1435, file: !1436, line: 104, baseType: !44, size: 128, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1435, file: !1436, line: 105, baseType: !1441, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1436, line: 21, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !418, file: !361, line: 557, baseType: !269, size: 32, offset: 7232)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !415, file: !361, line: 565, baseType: !1448, offset: 7296)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: -1)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !405, file: !361, line: 333, baseType: !1452, size: 64, offset: 576)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !284, line: 284, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !284, line: 284, size: 64, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1453, file: !284, line: 284, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !441, line: 19, baseType: !144)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !405, file: !361, line: 334, baseType: !144, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !405, file: !361, line: 343, baseType: !1459, size: 256, offset: 704)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !361, line: 340, size: 256, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1459, file: !361, line: 341, baseType: !228, size: 192, align: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1459, file: !361, line: 342, baseType: !144, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !405, file: !361, line: 351, baseType: !44, size: 128, offset: 960)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !405, file: !361, line: 353, baseType: !1465, size: 64, offset: 1088)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !361, line: 353, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !405, file: !361, line: 356, baseType: !358, size: 64, offset: 1152)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !405, file: !361, line: 359, baseType: !144, size: 64, offset: 1216)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !405, file: !361, line: 361, baseType: !330, size: 64, offset: 1280)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !405, file: !361, line: 362, baseType: !174, size: 64, offset: 1344)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !405, file: !361, line: 365, baseType: !339, size: 64, offset: 1408)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !405, file: !361, line: 373, baseType: !1473, offset: 1472)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !361, line: 296, elements: !70)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !314, file: !217, line: 109, baseType: !1475, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !217, line: 31, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !217, line: 110, baseType: !375, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !314, file: !217, line: 111, baseType: !215, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !216, file: !217, line: 148, baseType: !174, size: 64, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !217, line: 154, baseType: !423, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !217, line: 156, baseType: !37, size: 16, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !216, file: !217, line: 157, baseType: !35, size: 16, offset: 912)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !216, file: !217, line: 158, baseType: !1484, size: 64, offset: 960)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !217, line: 32, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !39, file: !40, line: 71, baseType: !1487, size: 32, offset: 448)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1488, line: 19, size: 32, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1487, file: !1488, line: 20, baseType: !545, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !39, file: !40, line: 75, baseType: !159, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !39, file: !40, line: 76, baseType: !159, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !39, file: !40, line: 77, baseType: !159, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !39, file: !40, line: 78, baseType: !159, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !39, file: !40, line: 79, baseType: !159, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !27, file: !28, line: 88, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!35, !38, !1500, !6}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !28, line: 168, size: 448, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1510, !1511}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1501, file: !28, line: 169, baseType: !133, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1501, file: !28, line: 170, baseType: !141, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1501, file: !28, line: 171, baseType: !174, size: 64, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1501, file: !28, line: 172, baseType: !1507, size: 64, offset: 256)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!127, !330, !38, !1500, !97, !375, !141}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1501, file: !28, line: 174, baseType: !1507, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1501, file: !28, line: 176, baseType: !1512, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!6, !330, !38, !1500, !404}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !27, file: !28, line: 90, baseType: !146, size: 64, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !27, file: !28, line: 91, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !12, file: !13, line: 59, baseType: !24, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !12, file: !13, line: 60, baseType: !38, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !12, file: !13, line: 62, baseType: !1521, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!6, !1524, !92}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !1526, line: 461, size: 5568, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1529, !1530, !1533, !1534, !1583, !1664, !1665, !1666, !1667, !1668, !1683, !1801, !1814, !1817, !1818, !1822, !1824, !1825, !1826, !1830, !1836, !1837, !1840, !1844, !1847, !1850, !1851, !1852, !1853, !1855, !1856, !1857, !1860, !1863, !1864, !1865, !1866}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1525, file: !1526, line: 462, baseType: !39, size: 512)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1525, file: !1526, line: 463, baseType: !1524, size: 64, offset: 512)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1525, file: !1526, line: 465, baseType: !1531, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !1526, line: 36, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1525, file: !1526, line: 467, baseType: !16, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1525, file: !1526, line: 468, baseType: !1535, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !1526, line: 87, size: 384, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1547, !1551}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1537, file: !1526, line: 88, baseType: !16, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1537, file: !1526, line: 89, baseType: !24, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1537, file: !1526, line: 90, baseType: !1521, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1537, file: !1526, line: 91, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!97, !1524, !1546, !199, !207}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1537, file: !1526, line: 93, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1524}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1537, file: !1526, line: 95, baseType: !1552, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1555, line: 278, size: 1472, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !{!1557, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1554, file: !1555, line: 279, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!6, !1524}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1554, file: !1555, line: 280, baseType: !1548, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1554, file: !1555, line: 281, baseType: !1558, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1554, file: !1555, line: 282, baseType: !1558, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1554, file: !1555, line: 283, baseType: !1558, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1554, file: !1555, line: 284, baseType: !1558, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1554, file: !1555, line: 285, baseType: !1558, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1554, file: !1555, line: 286, baseType: !1558, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1554, file: !1555, line: 287, baseType: !1558, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1554, file: !1555, line: 288, baseType: !1558, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1554, file: !1555, line: 289, baseType: !1558, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1554, file: !1555, line: 290, baseType: !1558, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1554, file: !1555, line: 291, baseType: !1558, size: 64, offset: 768)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1554, file: !1555, line: 292, baseType: !1558, size: 64, offset: 832)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1554, file: !1555, line: 293, baseType: !1558, size: 64, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1554, file: !1555, line: 294, baseType: !1558, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1554, file: !1555, line: 295, baseType: !1558, size: 64, offset: 1024)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1554, file: !1555, line: 296, baseType: !1558, size: 64, offset: 1088)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1554, file: !1555, line: 297, baseType: !1558, size: 64, offset: 1152)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1554, file: !1555, line: 298, baseType: !1558, size: 64, offset: 1216)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1554, file: !1555, line: 299, baseType: !1558, size: 64, offset: 1280)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1554, file: !1555, line: 300, baseType: !1558, size: 64, offset: 1344)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1554, file: !1555, line: 301, baseType: !1558, size: 64, offset: 1408)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1525, file: !1526, line: 470, baseType: !1584, size: 64, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1586, line: 82, size: 1408, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1657, !1660, !1663}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1585, file: !1586, line: 83, baseType: !16, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1585, file: !1586, line: 84, baseType: !16, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1585, file: !1586, line: 85, baseType: !1524, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1585, file: !1586, line: 86, baseType: !24, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1585, file: !1586, line: 87, baseType: !24, size: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1585, file: !1586, line: 88, baseType: !24, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1585, file: !1586, line: 90, baseType: !1595, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!6, !1524, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1600, line: 95, size: 1152, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603, !1604, !1605, !1606, !1607, !1613, !1617, !1621, !1622, !1623, !1624, !1625, !1633, !1634, !1635, !1636, !1637, !1638}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1600, line: 96, baseType: !16, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1599, file: !1600, line: 97, baseType: !1584, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1599, file: !1600, line: 99, baseType: !20, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1599, file: !1600, line: 100, baseType: !16, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1599, file: !1600, line: 102, baseType: !168, size: 8, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1599, file: !1600, line: 103, baseType: !1608, size: 32, offset: 288)
!1608 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1600, line: 44, baseType: !159, size: 32, elements: !1609)
!1609 = !{!1610, !1611, !1612}
!1610 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!1611 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!1612 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1599, file: !1600, line: 105, baseType: !1614, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1600, line: 105, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1599, file: !1600, line: 106, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1600, line: 106, flags: DIFlagFwdDecl)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1599, file: !1600, line: 108, baseType: !1558, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1599, file: !1600, line: 109, baseType: !1548, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1599, file: !1600, line: 110, baseType: !1558, size: 64, offset: 576)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1599, file: !1600, line: 111, baseType: !1548, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1599, file: !1600, line: 112, baseType: !1626, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!6, !1524, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1555, line: 52, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1555, line: 50, size: 32, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1630, file: !1555, line: 51, baseType: !6, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1599, file: !1600, line: 113, baseType: !1558, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1599, file: !1600, line: 114, baseType: !24, size: 64, offset: 832)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1599, file: !1600, line: 115, baseType: !24, size: 64, offset: 896)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1599, file: !1600, line: 117, baseType: !1552, size: 64, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1599, file: !1600, line: 118, baseType: !1548, size: 64, offset: 1024)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1599, file: !1600, line: 120, baseType: !1639, size: 64, offset: 1088)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1600, line: 120, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1585, file: !1586, line: 91, baseType: !1521, size: 64, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1585, file: !1586, line: 92, baseType: !1558, size: 64, offset: 512)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1585, file: !1586, line: 93, baseType: !1548, size: 64, offset: 576)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1585, file: !1586, line: 94, baseType: !1558, size: 64, offset: 640)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1585, file: !1586, line: 95, baseType: !1548, size: 64, offset: 704)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1585, file: !1586, line: 97, baseType: !1558, size: 64, offset: 768)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1585, file: !1586, line: 98, baseType: !1558, size: 64, offset: 832)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1585, file: !1586, line: 100, baseType: !1626, size: 64, offset: 896)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1585, file: !1586, line: 101, baseType: !1558, size: 64, offset: 960)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1585, file: !1586, line: 103, baseType: !1558, size: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1585, file: !1586, line: 105, baseType: !1558, size: 64, offset: 1088)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1585, file: !1586, line: 107, baseType: !1552, size: 64, offset: 1152)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1585, file: !1586, line: 109, baseType: !1654, size: 64, offset: 1216)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1586, line: 109, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1585, file: !1586, line: 111, baseType: !1658, size: 64, offset: 1280)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1586, line: 111, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1585, file: !1586, line: 112, baseType: !1661, offset: 1344)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1662, line: 187, elements: !70)
!1662 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1585, file: !1586, line: 114, baseType: !168, size: 8, offset: 1344)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1525, file: !1526, line: 471, baseType: !1598, size: 64, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1525, file: !1526, line: 473, baseType: !174, size: 64, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1525, file: !1526, line: 475, baseType: !174, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1525, file: !1526, line: 480, baseType: !335, size: 192, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1525, file: !1526, line: 484, baseType: !1669, size: 576, offset: 1216)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !1526, line: 361, size: 576, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1669, file: !1526, line: 362, baseType: !44, size: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1669, file: !1526, line: 363, baseType: !44, size: 128, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1669, file: !1526, line: 364, baseType: !44, size: 128, offset: 256)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1669, file: !1526, line: 365, baseType: !44, size: 128, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1669, file: !1526, line: 366, baseType: !168, size: 8, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1669, file: !1526, line: 367, baseType: !1677, size: 32, offset: 544)
!1677 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !1526, line: 343, baseType: !159, size: 32, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682}
!1679 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!1680 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!1681 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!1682 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1525, file: !1526, line: 485, baseType: !1684, size: 2304, offset: 1792)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1555, line: 565, size: 2304, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1771, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1794, !1798}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1684, file: !1555, line: 566, baseType: !1629, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1684, file: !1555, line: 567, baseType: !159, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1684, file: !1555, line: 568, baseType: !159, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1684, file: !1555, line: 569, baseType: !168, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1684, file: !1555, line: 570, baseType: !168, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1684, file: !1555, line: 571, baseType: !168, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1684, file: !1555, line: 572, baseType: !168, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1684, file: !1555, line: 573, baseType: !168, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1684, file: !1555, line: 574, baseType: !168, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1684, file: !1555, line: 575, baseType: !168, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1684, file: !1555, line: 576, baseType: !168, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1684, file: !1555, line: 577, baseType: !269, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1684, file: !1555, line: 578, baseType: !56, offset: 96)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1684, file: !1555, line: 580, baseType: !44, size: 128, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1684, file: !1555, line: 581, baseType: !850, size: 192, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1684, file: !1555, line: 582, baseType: !1702, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1704, line: 43, size: 1472, elements: !1705)
!1704 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1713, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1703, file: !1704, line: 44, baseType: !16, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1703, file: !1704, line: 45, baseType: !6, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1703, file: !1704, line: 46, baseType: !44, size: 128, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1703, file: !1704, line: 47, baseType: !56, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1703, file: !1704, line: 48, baseType: !1711, size: 64, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1555, line: 533, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1703, file: !1704, line: 49, baseType: !1714, size: 320, offset: 320)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1715, line: 11, size: 320, elements: !1716)
!1715 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1716 = !{!1717, !1718, !1719, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1714, file: !1715, line: 16, baseType: !820, size: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1714, file: !1715, line: 17, baseType: !144, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1714, file: !1715, line: 18, baseType: !1720, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !1723}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1714, file: !1715, line: 19, baseType: !269, size: 32, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1703, file: !1704, line: 50, baseType: !144, size: 64, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1703, file: !1704, line: 51, baseType: !616, size: 64, offset: 704)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1703, file: !1704, line: 52, baseType: !616, size: 64, offset: 768)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1703, file: !1704, line: 53, baseType: !616, size: 64, offset: 832)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1703, file: !1704, line: 54, baseType: !616, size: 64, offset: 896)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1703, file: !1704, line: 55, baseType: !616, size: 64, offset: 960)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1703, file: !1704, line: 56, baseType: !144, size: 64, offset: 1024)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1703, file: !1704, line: 57, baseType: !144, size: 64, offset: 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1703, file: !1704, line: 58, baseType: !144, size: 64, offset: 1152)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1703, file: !1704, line: 59, baseType: !144, size: 64, offset: 1216)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1703, file: !1704, line: 60, baseType: !144, size: 64, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1703, file: !1704, line: 61, baseType: !1524, size: 64, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1703, file: !1704, line: 62, baseType: !168, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1703, file: !1704, line: 63, baseType: !168, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1684, file: !1555, line: 583, baseType: !168, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1684, file: !1555, line: 584, baseType: !168, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1684, file: !1555, line: 585, baseType: !168, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1684, file: !1555, line: 586, baseType: !159, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1684, file: !1555, line: 587, baseType: !159, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1684, file: !1555, line: 592, baseType: !607, size: 512, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1684, file: !1555, line: 593, baseType: !423, size: 64, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1684, file: !1555, line: 594, baseType: !1435, size: 256, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1684, file: !1555, line: 595, baseType: !303, size: 128, offset: 1408)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1684, file: !1555, line: 596, baseType: !1711, size: 64, offset: 1536)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1684, file: !1555, line: 597, baseType: !220, size: 32, offset: 1600)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1684, file: !1555, line: 598, baseType: !220, size: 32, offset: 1632)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1684, file: !1555, line: 599, baseType: !159, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1684, file: !1555, line: 600, baseType: !159, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1684, file: !1555, line: 601, baseType: !159, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1684, file: !1555, line: 602, baseType: !159, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1684, file: !1555, line: 603, baseType: !159, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1684, file: !1555, line: 604, baseType: !168, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1684, file: !1555, line: 605, baseType: !159, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1684, file: !1555, line: 606, baseType: !159, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1684, file: !1555, line: 607, baseType: !159, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1684, file: !1555, line: 608, baseType: !159, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1684, file: !1555, line: 609, baseType: !159, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1684, file: !1555, line: 610, baseType: !159, size: 32, offset: 1696)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1684, file: !1555, line: 611, baseType: !1764, size: 32, offset: 1728)
!1764 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1555, line: 524, baseType: !159, size: 32, elements: !1765)
!1765 = !{!1766, !1767, !1768, !1769, !1770}
!1766 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!1767 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!1768 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!1769 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!1770 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1684, file: !1555, line: 612, baseType: !1772, size: 32, offset: 1760)
!1772 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1555, line: 502, baseType: !159, size: 32, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777}
!1774 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!1775 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!1776 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!1777 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1684, file: !1555, line: 613, baseType: !6, size: 32, offset: 1792)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1684, file: !1555, line: 614, baseType: !6, size: 32, offset: 1824)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1684, file: !1555, line: 615, baseType: !423, size: 64, offset: 1856)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1684, file: !1555, line: 616, baseType: !423, size: 64, offset: 1920)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1684, file: !1555, line: 617, baseType: !423, size: 64, offset: 1984)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1684, file: !1555, line: 618, baseType: !423, size: 64, offset: 2048)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1684, file: !1555, line: 620, baseType: !1785, size: 64, offset: 2112)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1555, line: 536, size: 256, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !1555, line: 537, baseType: !56)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1786, file: !1555, line: 538, baseType: !159, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1786, file: !1555, line: 540, baseType: !44, size: 128, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1786, file: !1555, line: 543, baseType: !1792, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1555, line: 534, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1684, file: !1555, line: 621, baseType: !1795, size: 64, offset: 2176)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1524, !780}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1684, file: !1555, line: 622, baseType: !1799, size: 64, offset: 2240)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1555, line: 622, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1525, file: !1526, line: 486, baseType: !1802, size: 64, offset: 4096)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1555, line: 642, size: 1792, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1811, !1812, !1813}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1803, file: !1555, line: 643, baseType: !1554, size: 1472)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1803, file: !1555, line: 644, baseType: !1558, size: 64, offset: 1472)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1803, file: !1555, line: 645, baseType: !1808, size: 64, offset: 1536)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1524, !168}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1803, file: !1555, line: 646, baseType: !1558, size: 64, offset: 1600)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1803, file: !1555, line: 647, baseType: !1548, size: 64, offset: 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1803, file: !1555, line: 648, baseType: !1548, size: 64, offset: 1728)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1525, file: !1526, line: 493, baseType: !1815, size: 64, offset: 4160)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1526, line: 493, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1525, file: !1526, line: 499, baseType: !44, size: 128, offset: 4224)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1525, file: !1526, line: 502, baseType: !1819, size: 64, offset: 4352)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1821)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !1526, line: 502, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1525, file: !1526, line: 504, baseType: !1823, size: 64, offset: 4416)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1525, file: !1526, line: 505, baseType: !423, size: 64, offset: 4480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1525, file: !1526, line: 510, baseType: !423, size: 64, offset: 4544)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1525, file: !1526, line: 511, baseType: !1827, size: 64, offset: 4608)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !1526, line: 511, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1525, file: !1526, line: 513, baseType: !1831, size: 64, offset: 4672)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !1526, line: 288, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1832, file: !1526, line: 293, baseType: !159, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1832, file: !1526, line: 294, baseType: !144, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1525, file: !1526, line: 515, baseType: !44, size: 128, offset: 4736)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1525, file: !1526, line: 526, baseType: !1838, offset: 4864)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1839, line: 5, elements: !70)
!1839 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1525, file: !1526, line: 528, baseType: !1841, size: 64, offset: 4864)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1843, line: 14, flags: DIFlagFwdDecl)
!1843 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1525, file: !1526, line: 529, baseType: !1845, size: 64, offset: 4928)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1586, line: 22, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1525, file: !1526, line: 534, baseType: !1848, size: 32, offset: 4992)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !36, line: 16, baseType: !1849)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !36, line: 13, baseType: !269)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1525, file: !1526, line: 535, baseType: !269, size: 32, offset: 5024)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1525, file: !1526, line: 537, baseType: !56, offset: 5056)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1525, file: !1526, line: 538, baseType: !44, size: 128, offset: 5056)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1525, file: !1526, line: 540, baseType: !1854, size: 64, offset: 5184)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1525, file: !1526, line: 541, baseType: !24, size: 64, offset: 5248)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1525, file: !1526, line: 543, baseType: !1548, size: 64, offset: 5312)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1525, file: !1526, line: 544, baseType: !1858, size: 64, offset: 5376)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !1526, line: 45, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1525, file: !1526, line: 545, baseType: !1861, size: 64, offset: 5440)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !1526, line: 47, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1525, file: !1526, line: 547, baseType: !168, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1525, file: !1526, line: 548, baseType: !168, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1525, file: !1526, line: 549, baseType: !168, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1525, file: !1526, line: 550, baseType: !168, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !12, file: !13, line: 63, baseType: !1868, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!97, !1524, !1546}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !12, file: !13, line: 65, baseType: !1872, size: 64, offset: 448)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{null, !1854}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !12, file: !13, line: 66, baseType: !1548, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !12, file: !13, line: 68, baseType: !1558, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !12, file: !13, line: 70, baseType: !152, size: 64, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !12, file: !13, line: 71, baseType: !1879, size: 64, offset: 704)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!179, !1524}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !12, file: !13, line: 73, baseType: !1883, size: 64, offset: 768)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1524, !199, !207}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !12, file: !13, line: 75, baseType: !1552, size: 64, offset: 832)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !12, file: !13, line: 77, baseType: !1658, size: 64, offset: 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !8, file: !9, line: 19, baseType: !1889, size: 64, offset: 960)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!6, !1892, !1524, !1524}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transport_container", file: !9, line: 56, size: 768, elements: !1894)
!1894 = !{!1895, !1939}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1893, file: !9, line: 57, baseType: !1896, size: 704)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_container", file: !1897, line: 16, size: 704, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/attribute_container.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900, !1917, !1918, !1919, !1933, !1938}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1896, file: !1897, line: 17, baseType: !44, size: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "containers", scope: !1896, file: !1897, line: 18, baseType: !1901, size: 256, align: 64, offset: 128)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !1902, line: 18, size: 256, align: 64, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905, !1906, !1916}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !1901, file: !1902, line: 19, baseType: !56)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !1901, file: !1902, line: 20, baseType: !44, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1901, file: !1902, line: 21, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !1902, line: 37, size: 256, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !1911, file: !1902, line: 38, baseType: !174, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !1911, file: !1902, line: 39, baseType: !44, size: 128, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !1911, file: !1902, line: 40, baseType: !1487, size: 32, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1901, file: !1902, line: 22, baseType: !1907, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1896, file: !1897, line: 19, baseType: !1854, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !1896, file: !1897, line: 20, baseType: !25, size: 64, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1896, file: !1897, line: 21, baseType: !1920, size: 64, offset: 512)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !1526, line: 99, size: 256, elements: !1923)
!1923 = !{!1924, !1925, !1929}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1922, file: !1526, line: 100, baseType: !133, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1922, file: !1526, line: 101, baseType: !1926, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!127, !1524, !1921, !97}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1922, file: !1526, line: 103, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!127, !1524, !1921, !16, !141}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1896, file: !1897, line: 22, baseType: !1934, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!6, !1937, !1524}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1896, file: !1897, line: 24, baseType: !144, size: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1893, file: !9, line: 58, baseType: !25, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !8, file: !9, line: 21, baseType: !1889, size: 64, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !8, file: !9, line: 23, baseType: !1889, size: 64, offset: 1088)
!1942 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !1943, retainedTypes: !1944, globals: !1945, splitDebugInlining: false, nameTableKind: None)
!1943 = !{!158, !623, !757, !1608, !1677, !1764, !1772}
!1944 = !{!174, !7, !1892}
!1945 = !{!0}
!1946 = !{i32 7, !"Dwarf Version", i32 4}
!1947 = !{i32 2, !"Debug Info Version", i32 3}
!1948 = !{i32 1, !"wchar_size", i32 2}
!1949 = !{i32 1, !"Code Model", i32 2}
!1950 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1951 = !DILocalVariable(name: "tclass", arg: 1, scope: !2, file: !3, line: 51, type: !7)
!1952 = !DILocation(line: 51, column: 54, scope: !2)
!1953 = !DILocation(line: 53, column: 9, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !2, file: !3, line: 53, column: 9)
!1955 = !DILocation(line: 53, column: 2, scope: !2)
!1956 = distinct !DISubprogram(name: "transport_class_unregister", scope: !3, file: !3, line: 65, type: !1957, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !7}
!1959 = !DILocalVariable(name: "tclass", arg: 1, scope: !1956, file: !3, line: 65, type: !7)
!1960 = !DILocation(line: 65, column: 57, scope: !1956)
!1961 = !DILocation(line: 67, column: 20, scope: !1956)
!1962 = !DILocation(line: 67, column: 28, scope: !1956)
!1963 = !DILocation(line: 67, column: 2, scope: !1956)
!1964 = !DILocation(line: 68, column: 1, scope: !1956)
!1965 = distinct !DISubprogram(name: "anon_transport_class_register", scope: !3, file: !3, line: 91, type: !1966, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!6, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "anon_transport_class", file: !9, line: 38, size: 1856, elements: !1970)
!1970 = !{!1971, !1972}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "tclass", scope: !1969, file: !9, line: 39, baseType: !8, size: 1152)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1969, file: !9, line: 40, baseType: !1896, size: 704, offset: 1152)
!1973 = !DILocalVariable(name: "atc", arg: 1, scope: !1965, file: !3, line: 91, type: !1968)
!1974 = !DILocation(line: 91, column: 64, scope: !1965)
!1975 = !DILocalVariable(name: "error", scope: !1965, file: !3, line: 93, type: !6)
!1976 = !DILocation(line: 93, column: 6, scope: !1965)
!1977 = !DILocation(line: 94, column: 26, scope: !1965)
!1978 = !DILocation(line: 94, column: 31, scope: !1965)
!1979 = !DILocation(line: 94, column: 38, scope: !1965)
!1980 = !DILocation(line: 94, column: 2, scope: !1965)
!1981 = !DILocation(line: 94, column: 7, scope: !1965)
!1982 = !DILocation(line: 94, column: 17, scope: !1965)
!1983 = !DILocation(line: 94, column: 23, scope: !1965)
!1984 = !DILocation(line: 95, column: 40, scope: !1965)
!1985 = !DILocation(line: 95, column: 45, scope: !1965)
!1986 = !DILocation(line: 95, column: 2, scope: !1965)
!1987 = !DILocation(line: 96, column: 40, scope: !1965)
!1988 = !DILocation(line: 96, column: 45, scope: !1965)
!1989 = !DILocation(line: 96, column: 10, scope: !1965)
!1990 = !DILocation(line: 96, column: 8, scope: !1965)
!1991 = !DILocation(line: 97, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 97, column: 6)
!1993 = !DILocation(line: 97, column: 6, scope: !1965)
!1994 = !DILocation(line: 98, column: 10, scope: !1992)
!1995 = !DILocation(line: 98, column: 3, scope: !1992)
!1996 = !DILocation(line: 99, column: 2, scope: !1965)
!1997 = !DILocation(line: 99, column: 7, scope: !1965)
!1998 = !DILocation(line: 99, column: 14, scope: !1965)
!1999 = !DILocation(line: 99, column: 20, scope: !1965)
!2000 = !DILocation(line: 100, column: 2, scope: !1965)
!2001 = !DILocation(line: 100, column: 7, scope: !1965)
!2002 = !DILocation(line: 100, column: 14, scope: !1965)
!2003 = !DILocation(line: 100, column: 21, scope: !1965)
!2004 = !DILocation(line: 101, column: 2, scope: !1965)
!2005 = !DILocation(line: 102, column: 1, scope: !1965)
!2006 = distinct !DISubprogram(name: "attribute_container_set_no_classdevs", scope: !1897, file: !1897, line: 34, type: !2007, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1937}
!2009 = !DILocalVariable(name: "atc", arg: 1, scope: !2006, file: !1897, line: 34, type: !1937)
!2010 = !DILocation(line: 34, column: 66, scope: !2006)
!2011 = !DILocation(line: 36, column: 2, scope: !2006)
!2012 = !DILocation(line: 36, column: 7, scope: !2006)
!2013 = !DILocation(line: 36, column: 13, scope: !2006)
!2014 = !DILocation(line: 37, column: 1, scope: !2006)
!2015 = distinct !DISubprogram(name: "anon_transport_dummy_function", scope: !3, file: !3, line: 71, type: !1890, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2016 = !DILocalVariable(name: "tc", arg: 1, scope: !2015, file: !3, line: 71, type: !1892)
!2017 = !DILocation(line: 71, column: 70, scope: !2015)
!2018 = !DILocalVariable(name: "dev", arg: 2, scope: !2015, file: !3, line: 72, type: !1524)
!2019 = !DILocation(line: 72, column: 22, scope: !2015)
!2020 = !DILocalVariable(name: "cdev", arg: 3, scope: !2015, file: !3, line: 73, type: !1524)
!2021 = !DILocation(line: 73, column: 22, scope: !2015)
!2022 = !DILocation(line: 76, column: 2, scope: !2015)
!2023 = distinct !DISubprogram(name: "anon_transport_class_unregister", scope: !3, file: !3, line: 113, type: !2024, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !1968}
!2026 = !DILocalVariable(name: "atc", arg: 1, scope: !2023, file: !3, line: 113, type: !1968)
!2027 = !DILocation(line: 113, column: 67, scope: !2023)
!2028 = !DILocation(line: 115, column: 6, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 115, column: 6)
!2030 = !DILocation(line: 115, column: 6, scope: !2023)
!2031 = !DILocation(line: 116, column: 3, scope: !2029)
!2032 = !DILocation(line: 116, column: 3, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 116, column: 3)
!2034 = !DILocation(line: 116, column: 3, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 116, column: 3)
!2036 = !DILocation(line: 116, column: 3, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 116, column: 3)
!2038 = !{i32 -2143803503, i32 -2143803474, i32 -2143803428, i32 -2143803370, i32 -2143803316, i32 -2143803262, i32 -2143803207, i32 -2143803176}
!2039 = !DILocation(line: 116, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 116, column: 3)
!2041 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 116, column: 3)
!2042 = !{i32 -2143802723, i32 -2143802716, i32 -2143802662, i32 -2143802631, i32 -2143802601}
!2043 = !DILocation(line: 116, column: 3, scope: !2041)
!2044 = !DILocation(line: 117, column: 1, scope: !2023)
!2045 = distinct !DISubprogram(name: "transport_setup_device", scope: !3, file: !3, line: 148, type: !1549, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2046 = !DILocalVariable(name: "dev", arg: 1, scope: !2045, file: !3, line: 148, type: !1524)
!2047 = !DILocation(line: 148, column: 44, scope: !2045)
!2048 = !DILocation(line: 150, column: 33, scope: !2045)
!2049 = !DILocation(line: 150, column: 2, scope: !2045)
!2050 = !DILocation(line: 151, column: 1, scope: !2045)
!2051 = distinct !DISubprogram(name: "transport_setup_classdev", scope: !3, file: !3, line: 120, type: !2052, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!6, !1937, !1524, !1524}
!2054 = !DILocalVariable(name: "cont", arg: 1, scope: !2051, file: !3, line: 120, type: !1937)
!2055 = !DILocation(line: 120, column: 65, scope: !2051)
!2056 = !DILocalVariable(name: "dev", arg: 2, scope: !2051, file: !3, line: 121, type: !1524)
!2057 = !DILocation(line: 121, column: 24, scope: !2051)
!2058 = !DILocalVariable(name: "classdev", arg: 3, scope: !2051, file: !3, line: 122, type: !1524)
!2059 = !DILocation(line: 122, column: 24, scope: !2051)
!2060 = !DILocalVariable(name: "tclass", scope: !2051, file: !3, line: 124, type: !7)
!2061 = !DILocation(line: 124, column: 26, scope: !2051)
!2062 = !DILocalVariable(name: "__mptr", scope: !2063, file: !3, line: 124, type: !174)
!2063 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 124, column: 35)
!2064 = !DILocation(line: 124, column: 35, scope: !2063)
!2065 = !DILocation(line: 124, column: 35, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 124, column: 35)
!2067 = !DILocalVariable(name: "tcont", scope: !2051, file: !3, line: 125, type: !1892)
!2068 = !DILocation(line: 125, column: 30, scope: !2051)
!2069 = !DILocalVariable(name: "__mptr", scope: !2070, file: !3, line: 125, type: !174)
!2070 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 125, column: 38)
!2071 = !DILocation(line: 125, column: 38, scope: !2070)
!2072 = !DILocation(line: 125, column: 38, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 125, column: 38)
!2074 = !DILocation(line: 127, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 127, column: 6)
!2076 = !DILocation(line: 127, column: 14, scope: !2075)
!2077 = !DILocation(line: 127, column: 6, scope: !2051)
!2078 = !DILocation(line: 128, column: 3, scope: !2075)
!2079 = !DILocation(line: 128, column: 11, scope: !2075)
!2080 = !DILocation(line: 128, column: 17, scope: !2075)
!2081 = !DILocation(line: 128, column: 24, scope: !2075)
!2082 = !DILocation(line: 128, column: 29, scope: !2075)
!2083 = !DILocation(line: 130, column: 2, scope: !2051)
!2084 = distinct !DISubprogram(name: "transport_add_device", scope: !3, file: !3, line: 179, type: !1559, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2085 = !DILocalVariable(name: "dev", arg: 1, scope: !2084, file: !3, line: 179, type: !1524)
!2086 = !DILocation(line: 179, column: 41, scope: !2084)
!2087 = !DILocation(line: 181, column: 49, scope: !2084)
!2088 = !DILocation(line: 181, column: 9, scope: !2084)
!2089 = !DILocation(line: 181, column: 2, scope: !2084)
!2090 = distinct !DISubprogram(name: "transport_add_class_device", scope: !3, file: !3, line: 154, type: !2052, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2091 = !DILocalVariable(name: "cont", arg: 1, scope: !2090, file: !3, line: 154, type: !1937)
!2092 = !DILocation(line: 154, column: 67, scope: !2090)
!2093 = !DILocalVariable(name: "dev", arg: 2, scope: !2090, file: !3, line: 155, type: !1524)
!2094 = !DILocation(line: 155, column: 26, scope: !2090)
!2095 = !DILocalVariable(name: "classdev", arg: 3, scope: !2090, file: !3, line: 156, type: !1524)
!2096 = !DILocation(line: 156, column: 26, scope: !2090)
!2097 = !DILocalVariable(name: "error", scope: !2090, file: !3, line: 158, type: !6)
!2098 = !DILocation(line: 158, column: 6, scope: !2090)
!2099 = !DILocation(line: 158, column: 51, scope: !2090)
!2100 = !DILocation(line: 158, column: 14, scope: !2090)
!2101 = !DILocalVariable(name: "tcont", scope: !2090, file: !3, line: 159, type: !1892)
!2102 = !DILocation(line: 159, column: 30, scope: !2090)
!2103 = !DILocalVariable(name: "__mptr", scope: !2104, file: !3, line: 160, type: !174)
!2104 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 160, column: 3)
!2105 = !DILocation(line: 160, column: 3, scope: !2104)
!2106 = !DILocation(line: 160, column: 3, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 160, column: 3)
!2108 = !DILocation(line: 162, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 162, column: 6)
!2110 = !DILocation(line: 162, column: 13, scope: !2109)
!2111 = !DILocation(line: 162, column: 16, scope: !2109)
!2112 = !DILocation(line: 162, column: 23, scope: !2109)
!2113 = !DILocation(line: 162, column: 6, scope: !2090)
!2114 = !DILocation(line: 163, column: 31, scope: !2109)
!2115 = !DILocation(line: 163, column: 41, scope: !2109)
!2116 = !DILocation(line: 163, column: 47, scope: !2109)
!2117 = !DILocation(line: 163, column: 54, scope: !2109)
!2118 = !DILocation(line: 163, column: 11, scope: !2109)
!2119 = !DILocation(line: 163, column: 9, scope: !2109)
!2120 = !DILocation(line: 163, column: 3, scope: !2109)
!2121 = !DILocation(line: 165, column: 9, scope: !2090)
!2122 = !DILocation(line: 165, column: 2, scope: !2090)
!2123 = distinct !DISubprogram(name: "transport_remove_classdev", scope: !3, file: !3, line: 218, type: !2052, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2124 = !DILocalVariable(name: "cont", arg: 1, scope: !2123, file: !3, line: 218, type: !1937)
!2125 = !DILocation(line: 218, column: 66, scope: !2123)
!2126 = !DILocalVariable(name: "dev", arg: 2, scope: !2123, file: !3, line: 219, type: !1524)
!2127 = !DILocation(line: 219, column: 25, scope: !2123)
!2128 = !DILocalVariable(name: "classdev", arg: 3, scope: !2123, file: !3, line: 220, type: !1524)
!2129 = !DILocation(line: 220, column: 25, scope: !2123)
!2130 = !DILocalVariable(name: "tcont", scope: !2123, file: !3, line: 222, type: !1892)
!2131 = !DILocation(line: 222, column: 30, scope: !2123)
!2132 = !DILocalVariable(name: "__mptr", scope: !2133, file: !3, line: 223, type: !174)
!2133 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 223, column: 3)
!2134 = !DILocation(line: 223, column: 3, scope: !2133)
!2135 = !DILocation(line: 223, column: 3, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 223, column: 3)
!2137 = !DILocalVariable(name: "tclass", scope: !2123, file: !3, line: 224, type: !7)
!2138 = !DILocation(line: 224, column: 26, scope: !2123)
!2139 = !DILocalVariable(name: "__mptr", scope: !2140, file: !3, line: 224, type: !174)
!2140 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 224, column: 35)
!2141 = !DILocation(line: 224, column: 35, scope: !2140)
!2142 = !DILocation(line: 224, column: 35, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 224, column: 35)
!2144 = !DILocation(line: 226, column: 6, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 226, column: 6)
!2146 = !DILocation(line: 226, column: 14, scope: !2145)
!2147 = !DILocation(line: 226, column: 6, scope: !2123)
!2148 = !DILocation(line: 227, column: 3, scope: !2145)
!2149 = !DILocation(line: 227, column: 11, scope: !2145)
!2150 = !DILocation(line: 227, column: 18, scope: !2145)
!2151 = !DILocation(line: 227, column: 25, scope: !2145)
!2152 = !DILocation(line: 227, column: 30, scope: !2145)
!2153 = !DILocation(line: 229, column: 6, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 229, column: 6)
!2155 = !DILocation(line: 229, column: 14, scope: !2154)
!2156 = !DILocation(line: 229, column: 21, scope: !2154)
!2157 = !DILocation(line: 229, column: 6, scope: !2123)
!2158 = !DILocation(line: 230, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 230, column: 7)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 229, column: 55)
!2161 = !DILocation(line: 230, column: 14, scope: !2159)
!2162 = !DILocation(line: 230, column: 7, scope: !2160)
!2163 = !DILocation(line: 231, column: 24, scope: !2159)
!2164 = !DILocation(line: 231, column: 34, scope: !2159)
!2165 = !DILocation(line: 231, column: 40, scope: !2159)
!2166 = !DILocation(line: 231, column: 47, scope: !2159)
!2167 = !DILocation(line: 231, column: 4, scope: !2159)
!2168 = !DILocation(line: 232, column: 40, scope: !2160)
!2169 = !DILocation(line: 232, column: 3, scope: !2160)
!2170 = !DILocation(line: 233, column: 2, scope: !2160)
!2171 = !DILocation(line: 235, column: 2, scope: !2123)
!2172 = distinct !DISubprogram(name: "transport_configure_device", scope: !3, file: !3, line: 212, type: !1549, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2173 = !DILocalVariable(name: "dev", arg: 1, scope: !2172, file: !3, line: 212, type: !1524)
!2174 = !DILocation(line: 212, column: 48, scope: !2172)
!2175 = !DILocation(line: 214, column: 37, scope: !2172)
!2176 = !DILocation(line: 214, column: 2, scope: !2172)
!2177 = !DILocation(line: 215, column: 1, scope: !2172)
!2178 = distinct !DISubprogram(name: "transport_configure", scope: !3, file: !3, line: 187, type: !2052, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2179 = !DILocalVariable(name: "cont", arg: 1, scope: !2178, file: !3, line: 187, type: !1937)
!2180 = !DILocation(line: 187, column: 60, scope: !2178)
!2181 = !DILocalVariable(name: "dev", arg: 2, scope: !2178, file: !3, line: 188, type: !1524)
!2182 = !DILocation(line: 188, column: 26, scope: !2178)
!2183 = !DILocalVariable(name: "cdev", arg: 3, scope: !2178, file: !3, line: 189, type: !1524)
!2184 = !DILocation(line: 189, column: 26, scope: !2178)
!2185 = !DILocalVariable(name: "tclass", scope: !2178, file: !3, line: 191, type: !7)
!2186 = !DILocation(line: 191, column: 26, scope: !2178)
!2187 = !DILocalVariable(name: "__mptr", scope: !2188, file: !3, line: 191, type: !174)
!2188 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 191, column: 35)
!2189 = !DILocation(line: 191, column: 35, scope: !2188)
!2190 = !DILocation(line: 191, column: 35, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 191, column: 35)
!2192 = !DILocalVariable(name: "tcont", scope: !2178, file: !3, line: 192, type: !1892)
!2193 = !DILocation(line: 192, column: 30, scope: !2178)
!2194 = !DILocalVariable(name: "__mptr", scope: !2195, file: !3, line: 192, type: !174)
!2195 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 192, column: 38)
!2196 = !DILocation(line: 192, column: 38, scope: !2195)
!2197 = !DILocation(line: 192, column: 38, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 192, column: 38)
!2199 = !DILocation(line: 194, column: 6, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 194, column: 6)
!2201 = !DILocation(line: 194, column: 14, scope: !2200)
!2202 = !DILocation(line: 194, column: 6, scope: !2178)
!2203 = !DILocation(line: 195, column: 3, scope: !2200)
!2204 = !DILocation(line: 195, column: 11, scope: !2200)
!2205 = !DILocation(line: 195, column: 21, scope: !2200)
!2206 = !DILocation(line: 195, column: 28, scope: !2200)
!2207 = !DILocation(line: 195, column: 33, scope: !2200)
!2208 = !DILocation(line: 197, column: 2, scope: !2178)
!2209 = distinct !DISubprogram(name: "transport_remove_device", scope: !3, file: !3, line: 251, type: !1549, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2210 = !DILocalVariable(name: "dev", arg: 1, scope: !2209, file: !3, line: 251, type: !1524)
!2211 = !DILocation(line: 251, column: 45, scope: !2209)
!2212 = !DILocation(line: 253, column: 37, scope: !2209)
!2213 = !DILocation(line: 253, column: 2, scope: !2209)
!2214 = !DILocation(line: 254, column: 1, scope: !2209)
!2215 = distinct !DISubprogram(name: "transport_destroy_device", scope: !3, file: !3, line: 280, type: !1549, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2216 = !DILocalVariable(name: "dev", arg: 1, scope: !2215, file: !3, line: 280, type: !1524)
!2217 = !DILocation(line: 280, column: 46, scope: !2215)
!2218 = !DILocation(line: 282, column: 36, scope: !2215)
!2219 = !DILocation(line: 282, column: 2, scope: !2215)
!2220 = !DILocation(line: 283, column: 1, scope: !2215)
!2221 = distinct !DISubprogram(name: "transport_destroy_classdev", scope: !3, file: !3, line: 257, type: !2222, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1942, retainedNodes: !70)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !1937, !1524, !1524}
!2224 = !DILocalVariable(name: "cont", arg: 1, scope: !2221, file: !3, line: 257, type: !1937)
!2225 = !DILocation(line: 257, column: 68, scope: !2221)
!2226 = !DILocalVariable(name: "dev", arg: 2, scope: !2221, file: !3, line: 258, type: !1524)
!2227 = !DILocation(line: 258, column: 26, scope: !2221)
!2228 = !DILocalVariable(name: "classdev", arg: 3, scope: !2221, file: !3, line: 259, type: !1524)
!2229 = !DILocation(line: 259, column: 26, scope: !2221)
!2230 = !DILocalVariable(name: "tclass", scope: !2221, file: !3, line: 261, type: !7)
!2231 = !DILocation(line: 261, column: 26, scope: !2221)
!2232 = !DILocalVariable(name: "__mptr", scope: !2233, file: !3, line: 261, type: !174)
!2233 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 261, column: 35)
!2234 = !DILocation(line: 261, column: 35, scope: !2233)
!2235 = !DILocation(line: 261, column: 35, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 261, column: 35)
!2237 = !DILocation(line: 263, column: 6, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 263, column: 6)
!2239 = !DILocation(line: 263, column: 14, scope: !2238)
!2240 = !DILocation(line: 263, column: 21, scope: !2238)
!2241 = !DILocation(line: 263, column: 6, scope: !2221)
!2242 = !DILocation(line: 264, column: 14, scope: !2238)
!2243 = !DILocation(line: 264, column: 3, scope: !2238)
!2244 = !DILocation(line: 265, column: 1, scope: !2221)
