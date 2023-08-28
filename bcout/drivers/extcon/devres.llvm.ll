; ModuleID = '../bcout/drivers/extcon/devres.llvm.bc'
source_filename = "drivers/extcon/devres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.extcon_dev = type { i8*, i32*, i32*, %struct.device, %struct.raw_notifier_head, %struct.raw_notifier_head*, %struct.list_head, i32, %struct.spinlock, i32, %struct.device_type, %struct.extcon_cable*, %struct.attribute_group, %struct.attribute**, %struct.device_attribute* }
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
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.extcon_cable = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.extcon_dev_notifier_devres = type { %struct.extcon_dev*, i32, %struct.notifier_block* }

@.str = private unnamed_addr constant [24 x i8] c"drivers/extcon/devres.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.extcon_dev* @devm_extcon_dev_allocate(%struct.device* %dev, i32* %supported_cable) #0 !dbg !1939 {
entry:
  %retval = alloca %struct.extcon_dev*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %supported_cable.addr = alloca i32*, align 8
  %ptr = alloca %struct.extcon_dev**, align 8
  %edev = alloca %struct.extcon_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !1942, metadata !DIExpression()), !dbg !1943
  store i32* %supported_cable, i32** %supported_cable.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %supported_cable.addr, metadata !1944, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.declare(metadata %struct.extcon_dev*** %ptr, metadata !1946, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev, metadata !1948, metadata !DIExpression()), !dbg !1949
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_extcon_dev_release, i64 8, i32 3264) #3, !dbg !1950
  %0 = bitcast i8* %call to %struct.extcon_dev**, !dbg !1950
  store %struct.extcon_dev** %0, %struct.extcon_dev*** %ptr, align 8, !dbg !1951
  %1 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !1952
  %tobool = icmp ne %struct.extcon_dev** %1, null, !dbg !1952
  br i1 %tobool, label %if.end, label %if.then, !dbg !1954

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #3, !dbg !1955
  %2 = bitcast i8* %call1 to %struct.extcon_dev*, !dbg !1955
  store %struct.extcon_dev* %2, %struct.extcon_dev** %retval, align 8, !dbg !1956
  br label %return, !dbg !1956

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %supported_cable.addr, align 8, !dbg !1957
  %call2 = call %struct.extcon_dev* @extcon_dev_allocate(i32* %3) #3, !dbg !1958
  store %struct.extcon_dev* %call2, %struct.extcon_dev** %edev, align 8, !dbg !1959
  %4 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !1960
  %5 = bitcast %struct.extcon_dev* %4 to i8*, !dbg !1960
  %call3 = call zeroext i1 @IS_ERR(i8* %5) #3, !dbg !1962
  br i1 %call3, label %if.then4, label %if.end5, !dbg !1963

if.then4:                                         ; preds = %if.end
  %6 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !1964
  %7 = bitcast %struct.extcon_dev** %6 to i8*, !dbg !1964
  call void @devres_free(i8* %7) #3, !dbg !1966
  %8 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !1967
  store %struct.extcon_dev* %8, %struct.extcon_dev** %retval, align 8, !dbg !1968
  br label %return, !dbg !1968

if.end5:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1969
  %10 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !1970
  %dev6 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %10, i32 0, i32 3, !dbg !1971
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 1, !dbg !1972
  store %struct.device* %9, %struct.device** %parent, align 8, !dbg !1973
  %11 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !1974
  %12 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !1975
  store %struct.extcon_dev* %11, %struct.extcon_dev** %12, align 8, !dbg !1976
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !1977
  %14 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !1978
  %15 = bitcast %struct.extcon_dev** %14 to i8*, !dbg !1978
  call void @devres_add(%struct.device* %13, i8* %15) #3, !dbg !1979
  %16 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !1980
  store %struct.extcon_dev* %16, %struct.extcon_dev** %retval, align 8, !dbg !1981
  br label %return, !dbg !1981

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %17 = load %struct.extcon_dev*, %struct.extcon_dev** %retval, align 8, !dbg !1982
  ret %struct.extcon_dev* %17, !dbg !1982
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !1983 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !1994, metadata !DIExpression()), !dbg !1995
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !1996
  %1 = load i64, i64* %size.addr, align 8, !dbg !1997
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !1998
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #3, !dbg !1999
  ret i8* %call, !dbg !2000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_extcon_dev_release(%struct.device* %dev, i8* %res) #0 !dbg !2001 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2002, metadata !DIExpression()), !dbg !2003
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2004, metadata !DIExpression()), !dbg !2005
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2006
  %1 = bitcast i8* %0 to %struct.extcon_dev**, !dbg !2007
  %2 = load %struct.extcon_dev*, %struct.extcon_dev** %1, align 8, !dbg !2008
  call void @extcon_dev_free(%struct.extcon_dev* %2) #3, !dbg !2009
  ret void, !dbg !2010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2011 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2015, metadata !DIExpression()), !dbg !2016
  %0 = load i64, i64* %error.addr, align 8, !dbg !2017
  %1 = inttoptr i64 %0 to i8*, !dbg !2018
  ret i8* %1, !dbg !2019
}

; Function Attrs: noredzone
declare dso_local %struct.extcon_dev* @extcon_dev_allocate(i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2020 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2023, metadata !DIExpression()), !dbg !2024
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2025
  %1 = ptrtoint i8* %0 to i64, !dbg !2025
  %2 = inttoptr i64 %1 to i8*, !dbg !2025
  %3 = ptrtoint i8* %2 to i64, !dbg !2025
  %cmp = icmp uge i64 %3, -4095, !dbg !2025
  %lnot = xor i1 %cmp, true, !dbg !2025
  %lnot1 = xor i1 %lnot, true, !dbg !2025
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2025
  %conv = sext i32 %lnot.ext to i64, !dbg !2025
  %tobool = icmp ne i64 %conv, 0, !dbg !2025
  ret i1 %tobool, !dbg !2026
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_extcon_dev_free(%struct.device* %dev, %struct.extcon_dev* %edev) #0 !dbg !2027 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2030, metadata !DIExpression()), !dbg !2031
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2032, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2034, metadata !DIExpression()), !dbg !2036
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2036
  %1 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2036
  %2 = bitcast %struct.extcon_dev* %1 to i8*, !dbg !2036
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_extcon_dev_release, i32 (%struct.device*, i8*, i8*)* @devm_extcon_dev_match, i8* %2) #3, !dbg !2036
  %tobool = icmp ne i32 %call, 0, !dbg !2036
  %lnot = xor i1 %tobool, true, !dbg !2036
  %lnot1 = xor i1 %lnot, true, !dbg !2036
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2036
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2036
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2037
  %tobool2 = icmp ne i32 %3, 0, !dbg !2037
  %lnot3 = xor i1 %tobool2, true, !dbg !2037
  %lnot5 = xor i1 %lnot3, true, !dbg !2037
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2037
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2037
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2037
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2036

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2037

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2039

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2041

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2039

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 100, i32 2305, i64 12) #4, !dbg !2043, !srcloc !2045
  br label %do.end10, !dbg !2043

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #4, !dbg !2046, !srcloc !2048
  br label %do.body11, !dbg !2039

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2049

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2039

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2039

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2036
  %tobool14 = icmp ne i32 %4, 0, !dbg !2036
  %lnot15 = xor i1 %tobool14, true, !dbg !2036
  %lnot17 = xor i1 %lnot15, true, !dbg !2036
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2036
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2036
  store i64 %conv19, i64* %tmp, align 8, !dbg !2037
  %5 = load i64, i64* %tmp, align 8, !dbg !2036
  ret void, !dbg !2051
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_extcon_dev_match(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !2052 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %r = alloca %struct.extcon_dev**, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2055, metadata !DIExpression()), !dbg !2056
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2057, metadata !DIExpression()), !dbg !2058
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2059, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.declare(metadata %struct.extcon_dev*** %r, metadata !2061, metadata !DIExpression()), !dbg !2062
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2063
  %1 = bitcast i8* %0 to %struct.extcon_dev**, !dbg !2063
  store %struct.extcon_dev** %1, %struct.extcon_dev*** %r, align 8, !dbg !2062
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2064, metadata !DIExpression()), !dbg !2067
  %2 = load %struct.extcon_dev**, %struct.extcon_dev*** %r, align 8, !dbg !2067
  %tobool = icmp ne %struct.extcon_dev** %2, null, !dbg !2067
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !2067

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.extcon_dev**, %struct.extcon_dev*** %r, align 8, !dbg !2067
  %4 = load %struct.extcon_dev*, %struct.extcon_dev** %3, align 8, !dbg !2067
  %tobool1 = icmp ne %struct.extcon_dev* %4, null, !dbg !2067
  %lnot = xor i1 %tobool1, true, !dbg !2067
  br label %lor.end, !dbg !2067

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %5, true, !dbg !2067
  %lnot3 = xor i1 %lnot2, true, !dbg !2067
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2067
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2067
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !2068
  %tobool4 = icmp ne i32 %6, 0, !dbg !2068
  %lnot5 = xor i1 %tobool4, true, !dbg !2068
  %lnot7 = xor i1 %lnot5, true, !dbg !2068
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2068
  %conv = sext i32 %lnot.ext8 to i64, !dbg !2068
  %tobool9 = icmp ne i64 %conv, 0, !dbg !2068
  br i1 %tobool9, label %if.then, label %if.end, !dbg !2067

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !2068

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !2070

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !2072

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !2070

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 15, i32 2305, i64 12) #4, !dbg !2074, !srcloc !2076
  br label %do.end12, !dbg !2074

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 155) #4, !dbg !2077, !srcloc !2079
  br label %do.body13, !dbg !2070

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !2080

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !2070

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !2070

if.end:                                           ; preds = %do.end15, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !2067
  %tobool16 = icmp ne i32 %7, 0, !dbg !2067
  %lnot17 = xor i1 %tobool16, true, !dbg !2067
  %lnot19 = xor i1 %lnot17, true, !dbg !2067
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2067
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2067
  store i64 %conv21, i64* %tmp, align 8, !dbg !2068
  %8 = load i64, i64* %tmp, align 8, !dbg !2067
  %tobool22 = icmp ne i64 %8, 0, !dbg !2082
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2083

if.then23:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2084
  br label %return, !dbg !2084

if.end24:                                         ; preds = %if.end
  %9 = load %struct.extcon_dev**, %struct.extcon_dev*** %r, align 8, !dbg !2085
  %10 = load %struct.extcon_dev*, %struct.extcon_dev** %9, align 8, !dbg !2086
  %11 = load i8*, i8** %data.addr, align 8, !dbg !2087
  %12 = bitcast i8* %11 to %struct.extcon_dev*, !dbg !2087
  %cmp = icmp eq %struct.extcon_dev* %10, %12, !dbg !2088
  %conv25 = zext i1 %cmp to i32, !dbg !2088
  store i32 %conv25, i32* %retval, align 4, !dbg !2089
  br label %return, !dbg !2089

return:                                           ; preds = %if.end24, %if.then23
  %13 = load i32, i32* %retval, align 4, !dbg !2090
  ret i32 %13, !dbg !2090
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_extcon_dev_register(%struct.device* %dev, %struct.extcon_dev* %edev) #0 !dbg !2091 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %ptr = alloca %struct.extcon_dev**, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2094, metadata !DIExpression()), !dbg !2095
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.declare(metadata %struct.extcon_dev*** %ptr, metadata !2098, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2100, metadata !DIExpression()), !dbg !2101
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_extcon_dev_unreg, i64 8, i32 3264) #3, !dbg !2102
  %0 = bitcast i8* %call to %struct.extcon_dev**, !dbg !2102
  store %struct.extcon_dev** %0, %struct.extcon_dev*** %ptr, align 8, !dbg !2103
  %1 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !2104
  %tobool = icmp ne %struct.extcon_dev** %1, null, !dbg !2104
  br i1 %tobool, label %if.end, label %if.then, !dbg !2106

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2107
  br label %return, !dbg !2107

if.end:                                           ; preds = %entry
  %2 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2108
  %call1 = call i32 @extcon_dev_register(%struct.extcon_dev* %2) #3, !dbg !2109
  store i32 %call1, i32* %ret, align 4, !dbg !2110
  %3 = load i32, i32* %ret, align 4, !dbg !2111
  %tobool2 = icmp ne i32 %3, 0, !dbg !2111
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2113

if.then3:                                         ; preds = %if.end
  %4 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !2114
  %5 = bitcast %struct.extcon_dev** %4 to i8*, !dbg !2114
  call void @devres_free(i8* %5) #3, !dbg !2116
  %6 = load i32, i32* %ret, align 4, !dbg !2117
  store i32 %6, i32* %retval, align 4, !dbg !2118
  br label %return, !dbg !2118

if.end4:                                          ; preds = %if.end
  %7 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2119
  %8 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !2120
  store %struct.extcon_dev* %7, %struct.extcon_dev** %8, align 8, !dbg !2121
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2122
  %10 = load %struct.extcon_dev**, %struct.extcon_dev*** %ptr, align 8, !dbg !2123
  %11 = bitcast %struct.extcon_dev** %10 to i8*, !dbg !2123
  call void @devres_add(%struct.device* %9, i8* %11) #3, !dbg !2124
  store i32 0, i32* %retval, align 4, !dbg !2125
  br label %return, !dbg !2125

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2126
  ret i32 %12, !dbg !2126
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_extcon_dev_unreg(%struct.device* %dev, i8* %res) #0 !dbg !2127 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2128, metadata !DIExpression()), !dbg !2129
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2132
  %1 = bitcast i8* %0 to %struct.extcon_dev**, !dbg !2133
  %2 = load %struct.extcon_dev*, %struct.extcon_dev** %1, align 8, !dbg !2134
  call void @extcon_dev_unregister(%struct.extcon_dev* %2) #3, !dbg !2135
  ret void, !dbg !2136
}

; Function Attrs: noredzone
declare dso_local i32 @extcon_dev_register(%struct.extcon_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_extcon_dev_unregister(%struct.device* %dev, %struct.extcon_dev* %edev) #0 !dbg !2137 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2138, metadata !DIExpression()), !dbg !2139
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2140, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2142, metadata !DIExpression()), !dbg !2144
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2144
  %1 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2144
  %2 = bitcast %struct.extcon_dev* %1 to i8*, !dbg !2144
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_extcon_dev_unreg, i32 (%struct.device*, i8*, i8*)* @devm_extcon_dev_match, i8* %2) #3, !dbg !2144
  %tobool = icmp ne i32 %call, 0, !dbg !2144
  %lnot = xor i1 %tobool, true, !dbg !2144
  %lnot1 = xor i1 %lnot, true, !dbg !2144
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2144
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2144
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2145
  %tobool2 = icmp ne i32 %3, 0, !dbg !2145
  %lnot3 = xor i1 %tobool2, true, !dbg !2145
  %lnot5 = xor i1 %lnot3, true, !dbg !2145
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2145
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2145
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2145
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2144

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2145

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2147

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2149

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2147

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 151, i32 2305, i64 12) #4, !dbg !2151, !srcloc !2153
  br label %do.end10, !dbg !2151

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 157) #4, !dbg !2154, !srcloc !2156
  br label %do.body11, !dbg !2147

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2157

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2147

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2147

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2144
  %tobool14 = icmp ne i32 %4, 0, !dbg !2144
  %lnot15 = xor i1 %tobool14, true, !dbg !2144
  %lnot17 = xor i1 %lnot15, true, !dbg !2144
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2144
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2144
  store i64 %conv19, i64* %tmp, align 8, !dbg !2145
  %5 = load i64, i64* %tmp, align 8, !dbg !2144
  ret void, !dbg !2159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_extcon_register_notifier(%struct.device* %dev, %struct.extcon_dev* %edev, i32 %id, %struct.notifier_block* %nb) #0 !dbg !2160 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %id.addr = alloca i32, align 4
  %nb.addr = alloca %struct.notifier_block*, align 8
  %ptr = alloca %struct.extcon_dev_notifier_devres*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2163, metadata !DIExpression()), !dbg !2164
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2165, metadata !DIExpression()), !dbg !2166
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !2167, metadata !DIExpression()), !dbg !2168
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.declare(metadata %struct.extcon_dev_notifier_devres** %ptr, metadata !2171, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2179, metadata !DIExpression()), !dbg !2180
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_extcon_dev_notifier_unreg, i64 24, i32 3264) #3, !dbg !2181
  %0 = bitcast i8* %call to %struct.extcon_dev_notifier_devres*, !dbg !2181
  store %struct.extcon_dev_notifier_devres* %0, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2182
  %1 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2183
  %tobool = icmp ne %struct.extcon_dev_notifier_devres* %1, null, !dbg !2183
  br i1 %tobool, label %if.end, label %if.then, !dbg !2185

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2186
  br label %return, !dbg !2186

if.end:                                           ; preds = %entry
  %2 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2187
  %3 = load i32, i32* %id.addr, align 4, !dbg !2188
  %4 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !2189
  %call1 = call i32 @extcon_register_notifier(%struct.extcon_dev* %2, i32 %3, %struct.notifier_block* %4) #3, !dbg !2190
  store i32 %call1, i32* %ret, align 4, !dbg !2191
  %5 = load i32, i32* %ret, align 4, !dbg !2192
  %tobool2 = icmp ne i32 %5, 0, !dbg !2192
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2194

if.then3:                                         ; preds = %if.end
  %6 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2195
  %7 = bitcast %struct.extcon_dev_notifier_devres* %6 to i8*, !dbg !2195
  call void @devres_free(i8* %7) #3, !dbg !2197
  %8 = load i32, i32* %ret, align 4, !dbg !2198
  store i32 %8, i32* %retval, align 4, !dbg !2199
  br label %return, !dbg !2199

if.end4:                                          ; preds = %if.end
  %9 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2200
  %10 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2201
  %edev5 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %10, i32 0, i32 0, !dbg !2202
  store %struct.extcon_dev* %9, %struct.extcon_dev** %edev5, align 8, !dbg !2203
  %11 = load i32, i32* %id.addr, align 4, !dbg !2204
  %12 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2205
  %id6 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %12, i32 0, i32 1, !dbg !2206
  store i32 %11, i32* %id6, align 8, !dbg !2207
  %13 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !2208
  %14 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2209
  %nb7 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %14, i32 0, i32 2, !dbg !2210
  store %struct.notifier_block* %13, %struct.notifier_block** %nb7, align 8, !dbg !2211
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2212
  %16 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2213
  %17 = bitcast %struct.extcon_dev_notifier_devres* %16 to i8*, !dbg !2213
  call void @devres_add(%struct.device* %15, i8* %17) #3, !dbg !2214
  store i32 0, i32* %retval, align 4, !dbg !2215
  br label %return, !dbg !2215

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2216
  ret i32 %18, !dbg !2216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_extcon_dev_notifier_unreg(%struct.device* %dev, i8* %res) #0 !dbg !2217 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %this = alloca %struct.extcon_dev_notifier_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2218, metadata !DIExpression()), !dbg !2219
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2220, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.declare(metadata %struct.extcon_dev_notifier_devres** %this, metadata !2222, metadata !DIExpression()), !dbg !2223
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2224
  %1 = bitcast i8* %0 to %struct.extcon_dev_notifier_devres*, !dbg !2224
  store %struct.extcon_dev_notifier_devres* %1, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2223
  %2 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2225
  %edev = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %2, i32 0, i32 0, !dbg !2226
  %3 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !2226
  %4 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2227
  %id = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %4, i32 0, i32 1, !dbg !2228
  %5 = load i32, i32* %id, align 8, !dbg !2228
  %6 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2229
  %nb = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %6, i32 0, i32 2, !dbg !2230
  %7 = load %struct.notifier_block*, %struct.notifier_block** %nb, align 8, !dbg !2230
  %call = call i32 @extcon_unregister_notifier(%struct.extcon_dev* %3, i32 %5, %struct.notifier_block* %7) #3, !dbg !2231
  ret void, !dbg !2232
}

; Function Attrs: noredzone
declare dso_local i32 @extcon_register_notifier(%struct.extcon_dev*, i32, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_extcon_unregister_notifier(%struct.device* %dev, %struct.extcon_dev* %edev, i32 %id, %struct.notifier_block* %nb) #0 !dbg !2233 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %id.addr = alloca i32, align 4
  %nb.addr = alloca %struct.notifier_block*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2236, metadata !DIExpression()), !dbg !2237
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2238, metadata !DIExpression()), !dbg !2239
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !2240, metadata !DIExpression()), !dbg !2241
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !2242, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2244, metadata !DIExpression()), !dbg !2246
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2246
  %1 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2246
  %2 = bitcast %struct.extcon_dev* %1 to i8*, !dbg !2246
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_extcon_dev_notifier_unreg, i32 (%struct.device*, i8*, i8*)* @devm_extcon_dev_match, i8* %2) #3, !dbg !2246
  %tobool = icmp ne i32 %call, 0, !dbg !2246
  %lnot = xor i1 %tobool, true, !dbg !2246
  %lnot1 = xor i1 %lnot, true, !dbg !2246
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2246
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2246
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2247
  %tobool2 = icmp ne i32 %3, 0, !dbg !2247
  %lnot3 = xor i1 %tobool2, true, !dbg !2247
  %lnot5 = xor i1 %lnot3, true, !dbg !2247
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2247
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2247
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2247
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2246

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2247

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2249

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2251

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2249

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 211, i32 2305, i64 12) #4, !dbg !2253, !srcloc !2255
  br label %do.end10, !dbg !2253

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 158) #4, !dbg !2256, !srcloc !2258
  br label %do.body11, !dbg !2249

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2259

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2249

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2249

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2246
  %tobool14 = icmp ne i32 %4, 0, !dbg !2246
  %lnot15 = xor i1 %tobool14, true, !dbg !2246
  %lnot17 = xor i1 %lnot15, true, !dbg !2246
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2246
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2246
  store i64 %conv19, i64* %tmp, align 8, !dbg !2247
  %5 = load i64, i64* %tmp, align 8, !dbg !2246
  ret void, !dbg !2261
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_extcon_register_notifier_all(%struct.device* %dev, %struct.extcon_dev* %edev, %struct.notifier_block* %nb) #0 !dbg !2262 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  %ptr = alloca %struct.extcon_dev_notifier_devres*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2265, metadata !DIExpression()), !dbg !2266
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2267, metadata !DIExpression()), !dbg !2268
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !2269, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.declare(metadata %struct.extcon_dev_notifier_devres** %ptr, metadata !2271, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2273, metadata !DIExpression()), !dbg !2274
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_extcon_dev_notifier_all_unreg, i64 24, i32 3264) #3, !dbg !2275
  %0 = bitcast i8* %call to %struct.extcon_dev_notifier_devres*, !dbg !2275
  store %struct.extcon_dev_notifier_devres* %0, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2276
  %1 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2277
  %tobool = icmp ne %struct.extcon_dev_notifier_devres* %1, null, !dbg !2277
  br i1 %tobool, label %if.end, label %if.then, !dbg !2279

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2280
  br label %return, !dbg !2280

if.end:                                           ; preds = %entry
  %2 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2281
  %3 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !2282
  %call1 = call i32 @extcon_register_notifier_all(%struct.extcon_dev* %2, %struct.notifier_block* %3) #3, !dbg !2283
  store i32 %call1, i32* %ret, align 4, !dbg !2284
  %4 = load i32, i32* %ret, align 4, !dbg !2285
  %tobool2 = icmp ne i32 %4, 0, !dbg !2285
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2287

if.then3:                                         ; preds = %if.end
  %5 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2288
  %6 = bitcast %struct.extcon_dev_notifier_devres* %5 to i8*, !dbg !2288
  call void @devres_free(i8* %6) #3, !dbg !2290
  %7 = load i32, i32* %ret, align 4, !dbg !2291
  store i32 %7, i32* %retval, align 4, !dbg !2292
  br label %return, !dbg !2292

if.end4:                                          ; preds = %if.end
  %8 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2293
  %9 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2294
  %edev5 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %9, i32 0, i32 0, !dbg !2295
  store %struct.extcon_dev* %8, %struct.extcon_dev** %edev5, align 8, !dbg !2296
  %10 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !2297
  %11 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2298
  %nb6 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %11, i32 0, i32 2, !dbg !2299
  store %struct.notifier_block* %10, %struct.notifier_block** %nb6, align 8, !dbg !2300
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2301
  %13 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %ptr, align 8, !dbg !2302
  %14 = bitcast %struct.extcon_dev_notifier_devres* %13 to i8*, !dbg !2302
  call void @devres_add(%struct.device* %12, i8* %14) #3, !dbg !2303
  store i32 0, i32* %retval, align 4, !dbg !2304
  br label %return, !dbg !2304

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2305
  ret i32 %15, !dbg !2305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_extcon_dev_notifier_all_unreg(%struct.device* %dev, i8* %res) #0 !dbg !2306 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %this = alloca %struct.extcon_dev_notifier_devres*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2307, metadata !DIExpression()), !dbg !2308
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2309, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.declare(metadata %struct.extcon_dev_notifier_devres** %this, metadata !2311, metadata !DIExpression()), !dbg !2312
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2313
  %1 = bitcast i8* %0 to %struct.extcon_dev_notifier_devres*, !dbg !2313
  store %struct.extcon_dev_notifier_devres* %1, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2312
  %2 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2314
  %edev = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %2, i32 0, i32 0, !dbg !2315
  %3 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !2315
  %4 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %this, align 8, !dbg !2316
  %nb = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %4, i32 0, i32 2, !dbg !2317
  %5 = load %struct.notifier_block*, %struct.notifier_block** %nb, align 8, !dbg !2317
  %call = call i32 @extcon_unregister_notifier_all(%struct.extcon_dev* %3, %struct.notifier_block* %5) #3, !dbg !2318
  ret void, !dbg !2319
}

; Function Attrs: noredzone
declare dso_local i32 @extcon_register_notifier_all(%struct.extcon_dev*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_extcon_unregister_notifier_all(%struct.device* %dev, %struct.extcon_dev* %edev, %struct.notifier_block* %nb) #0 !dbg !2320 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %edev.addr = alloca %struct.extcon_dev*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2323, metadata !DIExpression()), !dbg !2324
  store %struct.extcon_dev* %edev, %struct.extcon_dev** %edev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %edev.addr, metadata !2325, metadata !DIExpression()), !dbg !2326
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2329, metadata !DIExpression()), !dbg !2331
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2331
  %1 = load %struct.extcon_dev*, %struct.extcon_dev** %edev.addr, align 8, !dbg !2331
  %2 = bitcast %struct.extcon_dev* %1 to i8*, !dbg !2331
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_extcon_dev_notifier_all_unreg, i32 (%struct.device*, i8*, i8*)* @devm_extcon_dev_match, i8* %2) #3, !dbg !2331
  %tobool = icmp ne i32 %call, 0, !dbg !2331
  %lnot = xor i1 %tobool, true, !dbg !2331
  %lnot1 = xor i1 %lnot, true, !dbg !2331
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2331
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2331
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2332
  %tobool2 = icmp ne i32 %3, 0, !dbg !2332
  %lnot3 = xor i1 %tobool2, true, !dbg !2332
  %lnot5 = xor i1 %lnot3, true, !dbg !2332
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !2332
  %conv = sext i32 %lnot.ext6 to i64, !dbg !2332
  %tobool7 = icmp ne i64 %conv, 0, !dbg !2332
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2331

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2332

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !2334

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !2336

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2334

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 265, i32 2305, i64 12) #4, !dbg !2338, !srcloc !2340
  br label %do.end10, !dbg !2338

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 159) #4, !dbg !2341, !srcloc !2343
  br label %do.body11, !dbg !2334

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !2344

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !2334

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2334

if.end:                                           ; preds = %do.end13, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2331
  %tobool14 = icmp ne i32 %4, 0, !dbg !2331
  %lnot15 = xor i1 %tobool14, true, !dbg !2331
  %lnot17 = xor i1 %lnot15, true, !dbg !2331
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2331
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2331
  store i64 %conv19, i64* %tmp, align 8, !dbg !2332
  %5 = load i64, i64* %tmp, align 8, !dbg !2331
  ret void, !dbg !2346
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @extcon_dev_free(%struct.extcon_dev*) #2

; Function Attrs: noredzone
declare dso_local void @extcon_dev_unregister(%struct.extcon_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @extcon_unregister_notifier(%struct.extcon_dev*, i32, %struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local i32 @extcon_unregister_notifier_all(%struct.extcon_dev*, %struct.notifier_block*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1934, !1935, !1936, !1937}
!llvm.ident = !{!1938}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !48, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/extcon/devres.c", directory: "/home/lizy2001/genbc/linux")
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
!48 = !{!49, !51, !208, !184}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !50, line: 148, baseType: !5)
!50 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev", file: !54, line: 41, size: 6976, elements: !55)
!54 = !DIFile(filename: "drivers/extcon/extcon.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !60, !63, !70, !1894, !1909, !1911, !1912, !1913, !1914, !1915, !1916, !1919, !1920, !1921}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !54, line: 43, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "supported_cable", scope: !53, file: !54, line: 44, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "mutually_exclusive", scope: !53, file: !54, line: 45, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !67, line: 21, baseType: !68)
!67 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !69, line: 27, baseType: !5)
!69 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !53, file: !54, line: 48, baseType: !71, size: 5568, offset: 192)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !72)
!72 = !{!73, !1545, !1547, !1550, !1551, !1602, !1680, !1681, !1682, !1683, !1684, !1693, !1798, !1811, !1814, !1815, !1819, !1821, !1822, !1823, !1827, !1833, !1834, !1837, !1841, !1844, !1847, !1848, !1849, !1850, !1882, !1883, !1884, !1887, !1890, !1891, !1892, !1893}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !71, file: !28, line: 462, baseType: !74, size: 512)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !75, line: 64, size: 512, elements: !76)
!75 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !78, !84, !86, !147, !1382, !1535, !1540, !1541, !1542, !1543, !1544}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 65, baseType: !57, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !74, file: !75, line: 66, baseType: !79, size: 128, offset: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !50, line: 178, size: 128, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !50, line: 179, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !79, file: !50, line: 179, baseType: !82, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !74, file: !75, line: 67, baseType: !85, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !74, file: !75, line: 68, baseType: !87, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !75, line: 192, size: 704, elements: !89)
!89 = !{!90, !91, !107, !108}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !88, file: !75, line: 193, baseType: !79, size: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !88, file: !75, line: 194, baseType: !92, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !93, line: 83, baseType: !94)
!93 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !93, line: 71, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 72, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 72, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !97, file: !93, line: 73, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !93, line: 20, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !100, file: !93, line: 21, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !104, line: 25, baseType: !105)
!104 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 25, elements: !106)
!106 = !{}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !88, file: !75, line: 195, baseType: !74, size: 512, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !88, file: !75, line: 196, baseType: !109, size: 64, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !75, line: 156, size: 192, elements: !112)
!112 = !{!113, !119, !124}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !111, file: !75, line: 157, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !87, !85}
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !75, line: 158, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!57, !87, !85}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !111, file: !75, line: 159, baseType: !125, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!118, !87, !85, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !75, line: 148, size: 20736, elements: !131)
!131 = !{!132, !137, !141, !142, !146}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !130, file: !75, line: 149, baseType: !133, size: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 192, elements: !135)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!135 = !{!136}
!136 = !DISubrange(count: 3)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !130, file: !75, line: 150, baseType: !138, size: 4096, offset: 192)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 4096, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !130, file: !75, line: 151, baseType: !118, size: 32, offset: 4288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !130, file: !75, line: 152, baseType: !143, size: 16384, offset: 4320)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 16384, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 2048)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !130, file: !75, line: 153, baseType: !118, size: 32, offset: 20704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !74, file: !75, line: 69, baseType: !148, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !75, line: 138, size: 448, elements: !150)
!150 = !{!151, !155, !185, !187, !1328, !1361, !1365}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !149, file: !75, line: 139, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !85}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !149, file: !75, line: 140, baseType: !156, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !159, line: 230, size: 128, elements: !160)
!159 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !177}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !158, file: !159, line: 231, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !85, !170, !134}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !50, line: 60, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !167, line: 73, baseType: !168)
!167 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !167, line: 15, baseType: !169)
!169 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !159, line: 30, size: 128, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !159, line: 31, baseType: !57, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !171, file: !159, line: 32, baseType: !175, size: 16, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !50, line: 19, baseType: !176)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !158, file: !159, line: 232, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!165, !85, !170, !57, !181}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 55, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !167, line: 72, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !167, line: 16, baseType: !184)
!184 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !149, file: !75, line: 141, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !149, file: !75, line: 142, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !159, line: 84, size: 320, elements: !192)
!192 = !{!193, !194, !198, !1325, !1326}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !159, line: 85, baseType: !57, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !191, file: !159, line: 86, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!175, !85, !170, !118}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !191, file: !159, line: 88, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!175, !85, !202, !118}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !159, line: 168, size: 448, elements: !204)
!204 = !{!205, !206, !207, !209, !219, !220}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !203, file: !159, line: 169, baseType: !171, size: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !203, file: !159, line: 170, baseType: !181, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !203, file: !159, line: 171, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !203, file: !159, line: 172, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!165, !213, !85, !202, !134, !216, !181}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !215, line: 526, flags: DIFlagFwdDecl)
!215 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !50, line: 46, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !167, line: 88, baseType: !218)
!218 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !203, file: !159, line: 174, baseType: !210, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !203, file: !159, line: 176, baseType: !221, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!118, !213, !85, !202, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !226, line: 305, size: 1472, elements: !227)
!226 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228, !229, !230, !231, !232, !240, !241, !1299, !1305, !1306, !1311, !1312, !1315, !1319, !1320, !1321, !1322, !1323}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !225, file: !226, line: 308, baseType: !184, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !225, file: !226, line: 309, baseType: !184, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !225, file: !226, line: 313, baseType: !224, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !225, file: !226, line: 313, baseType: !224, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !225, file: !226, line: 315, baseType: !233, size: 192, align: 64, offset: 256)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !234, line: 24, size: 192, align: 64, elements: !235)
!234 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !237, !239}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !233, file: !234, line: 25, baseType: !184, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !233, file: !234, line: 26, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !233, file: !234, line: 27, baseType: !238, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !225, file: !226, line: 323, baseType: !184, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !225, file: !226, line: 327, baseType: !242, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !226, line: 388, size: 7296, elements: !244)
!244 = !{!245, !1295}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !226, line: 389, baseType: !246, size: 7296)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !243, file: !226, line: 389, size: 7296, elements: !247)
!247 = !{!248, !249, !253, !257, !261, !262, !263, !264, !265, !273, !278, !279, !280, !281, !290, !291, !292, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !335, !338, !370, !371, !1265, !1266, !1269, !1273, !1274, !1277, !1278, !1279, !1282, !1294}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !246, file: !226, line: 390, baseType: !224, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !246, file: !226, line: 391, baseType: !250, size: 64, offset: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !234, line: 31, size: 64, elements: !251)
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !250, file: !234, line: 32, baseType: !238, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !246, file: !226, line: 392, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !67, line: 23, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !69, line: 31, baseType: !256)
!256 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !246, file: !226, line: 394, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!184, !213, !184, !184, !184, !184}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !246, file: !226, line: 398, baseType: !184, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !246, file: !226, line: 399, baseType: !184, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !246, file: !226, line: 405, baseType: !184, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !246, file: !226, line: 406, baseType: !184, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !246, file: !226, line: 407, baseType: !266, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !215, line: 286, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 286, size: 64, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !268, file: !215, line: 286, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !272, line: 18, baseType: !184)
!272 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !246, file: !226, line: 416, baseType: !274, size: 32, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !50, line: 168, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 166, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !275, file: !50, line: 167, baseType: !118, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !246, file: !226, line: 428, baseType: !274, size: 32, offset: 608)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !246, file: !226, line: 437, baseType: !274, size: 32, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !246, file: !226, line: 447, baseType: !274, size: 32, offset: 672)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !246, file: !226, line: 450, baseType: !282, size: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !283, line: 13, baseType: !284)
!283 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !50, line: 175, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 173, size: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !50, line: 174, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !67, line: 22, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !69, line: 30, baseType: !218)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !246, file: !226, line: 452, baseType: !118, size: 32, offset: 768)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !246, file: !226, line: 454, baseType: !92, offset: 800)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !246, file: !226, line: 457, baseType: !293, size: 256, offset: 832)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !294, line: 35, size: 256, elements: !295)
!294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !297, !298, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !293, file: !294, line: 36, baseType: !282, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !293, file: !294, line: 42, baseType: !282, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !293, file: !294, line: 46, baseType: !299, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !93, line: 29, baseType: !100)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !293, file: !294, line: 47, baseType: !79, size: 128, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !246, file: !226, line: 459, baseType: !79, size: 128, offset: 1088)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !246, file: !226, line: 466, baseType: !184, size: 64, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !246, file: !226, line: 467, baseType: !184, size: 64, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !246, file: !226, line: 469, baseType: !184, size: 64, offset: 1344)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !246, file: !226, line: 470, baseType: !184, size: 64, offset: 1408)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !246, file: !226, line: 471, baseType: !284, size: 64, offset: 1472)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !246, file: !226, line: 472, baseType: !184, size: 64, offset: 1536)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !246, file: !226, line: 473, baseType: !184, size: 64, offset: 1600)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !246, file: !226, line: 474, baseType: !184, size: 64, offset: 1664)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !246, file: !226, line: 475, baseType: !184, size: 64, offset: 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !246, file: !226, line: 477, baseType: !92, offset: 1792)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !246, file: !226, line: 478, baseType: !184, size: 64, offset: 1792)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !246, file: !226, line: 478, baseType: !184, size: 64, offset: 1856)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !246, file: !226, line: 478, baseType: !184, size: 64, offset: 1920)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !246, file: !226, line: 478, baseType: !184, size: 64, offset: 1984)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !246, file: !226, line: 479, baseType: !184, size: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !246, file: !226, line: 479, baseType: !184, size: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !246, file: !226, line: 479, baseType: !184, size: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !246, file: !226, line: 480, baseType: !184, size: 64, offset: 2240)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !246, file: !226, line: 480, baseType: !184, size: 64, offset: 2304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !246, file: !226, line: 480, baseType: !184, size: 64, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !246, file: !226, line: 480, baseType: !184, size: 64, offset: 2432)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !246, file: !226, line: 482, baseType: !324, size: 2816, offset: 2496)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 2816, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 44)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !246, file: !226, line: 488, baseType: !328, size: 256, offset: 5312)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !329, line: 60, size: 256, elements: !330)
!329 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !328, file: !329, line: 61, baseType: !332, size: 256)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 256, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 4)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !246, file: !226, line: 490, baseType: !336, size: 64, offset: 5568)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !226, line: 490, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !246, file: !226, line: 493, baseType: !339, size: 896, offset: 5632)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !340, line: 53, baseType: !341)
!340 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 13, size: 896, elements: !342)
!342 = !{!343, !344, !345, !346, !349, !350, !357, !358, !362, !363, !366}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !341, file: !340, line: 18, baseType: !254, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !341, file: !340, line: 28, baseType: !284, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !341, file: !340, line: 31, baseType: !293, size: 256, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !341, file: !340, line: 32, baseType: !347, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !340, line: 32, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !341, file: !340, line: 37, baseType: !176, size: 16, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !340, line: 40, baseType: !351, size: 192, offset: 512)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !352, line: 53, size: 192, elements: !353)
!352 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !351, file: !352, line: 54, baseType: !282, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !351, file: !352, line: 55, baseType: !92, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !351, file: !352, line: 59, baseType: !79, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !341, file: !340, line: 41, baseType: !208, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !341, file: !340, line: 42, baseType: !359, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !340, line: 42, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !341, file: !340, line: 44, baseType: !274, size: 32, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !341, file: !340, line: 50, baseType: !364, size: 16, offset: 864)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !67, line: 19, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !69, line: 24, baseType: !176)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !341, file: !340, line: 51, baseType: !367, size: 16, offset: 880)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !67, line: 18, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !69, line: 23, baseType: !369)
!369 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !226, line: 495, baseType: !184, size: 64, offset: 6528)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !246, file: !226, line: 497, baseType: !372, size: 64, offset: 6592)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !226, line: 381, size: 384, elements: !374)
!374 = !{!375, !376, !1264}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !373, file: !226, line: 382, baseType: !274, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !373, file: !226, line: 383, baseType: !377, size: 128, offset: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !226, line: 376, size: 128, elements: !378)
!378 = !{!379, !1262}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !377, file: !226, line: 377, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !382, line: 640, size: 48640, elements: !383)
!382 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !390, !392, !393, !399, !400, !401, !402, !403, !404, !405, !406, !410, !428, !439, !534, !535, !536, !547, !548, !550, !551, !552, !553, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !632, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !688, !690, !691, !692, !704, !706, !707, !708, !709, !710, !716, !717, !718, !719, !720, !721, !722, !734, !739, !743, !744, !745, !748, !752, !755, !758, !761, !764, !767, !770, !773, !779, !780, !781, !787, !788, !789, !790, !791, !800, !801, !802, !803, !804, !809, !810, !811, !814, !815, !818, !821, !824, !827, !830, !833, !834, !914, !917, !920, !921, !924, !925, !926, !932, !933, !934, !947, !948, !949, !961, !966, !969, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !381, file: !382, line: 646, baseType: !385, size: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !386, line: 56, size: 128, elements: !387)
!386 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !386, line: 57, baseType: !184, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !385, file: !386, line: 58, baseType: !66, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !382, line: 649, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !169)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !381, file: !382, line: 657, baseType: !208, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !381, file: !382, line: 658, baseType: !394, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !395, line: 113, baseType: !396)
!395 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !395, line: 111, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !396, file: !395, line: 112, baseType: !274, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !382, line: 660, baseType: !5, size: 32, offset: 288)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !381, file: !382, line: 661, baseType: !5, size: 32, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !381, file: !382, line: 684, baseType: !118, size: 32, offset: 352)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !381, file: !382, line: 686, baseType: !118, size: 32, offset: 384)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !381, file: !382, line: 687, baseType: !118, size: 32, offset: 416)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !381, file: !382, line: 688, baseType: !118, size: 32, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !381, file: !382, line: 689, baseType: !5, size: 32, offset: 480)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !381, file: !382, line: 691, baseType: !407, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !382, line: 691, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !381, file: !382, line: 692, baseType: !411, size: 832, offset: 576)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !382, line: 451, size: 832, elements: !412)
!412 = !{!413, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !411, file: !382, line: 453, baseType: !414, size: 128)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !382, line: 325, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !414, file: !382, line: 326, baseType: !184, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !414, file: !382, line: 327, baseType: !66, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !411, file: !382, line: 454, baseType: !233, size: 192, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !411, file: !382, line: 455, baseType: !79, size: 128, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !411, file: !382, line: 456, baseType: !5, size: 32, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !411, file: !382, line: 458, baseType: !254, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !411, file: !382, line: 459, baseType: !254, size: 64, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !411, file: !382, line: 460, baseType: !254, size: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !411, file: !382, line: 461, baseType: !254, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !411, file: !382, line: 463, baseType: !254, size: 64, offset: 768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !411, file: !382, line: 465, baseType: !427, offset: 832)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !382, line: 415, elements: !106)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !381, file: !382, line: 693, baseType: !429, size: 384, offset: 1408)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !382, line: 489, size: 384, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !429, file: !382, line: 490, baseType: !79, size: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !429, file: !382, line: 491, baseType: !184, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !429, file: !382, line: 492, baseType: !184, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !429, file: !382, line: 493, baseType: !5, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !429, file: !382, line: 494, baseType: !176, size: 16, offset: 288)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !429, file: !382, line: 495, baseType: !176, size: 16, offset: 304)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !429, file: !382, line: 497, baseType: !438, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !381, file: !382, line: 697, baseType: !440, size: 1792, offset: 1792)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !382, line: 507, size: 1792, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !531, !532}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !440, file: !382, line: 508, baseType: !233, size: 192, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !440, file: !382, line: 515, baseType: !254, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !440, file: !382, line: 516, baseType: !254, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !440, file: !382, line: 517, baseType: !254, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !440, file: !382, line: 518, baseType: !254, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !440, file: !382, line: 519, baseType: !254, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !440, file: !382, line: 526, baseType: !288, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !440, file: !382, line: 527, baseType: !254, size: 64, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !382, line: 528, baseType: !5, size: 32, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !440, file: !382, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !440, file: !382, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !440, file: !382, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !440, file: !382, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !440, file: !382, line: 563, baseType: !456, size: 512, offset: 704)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !457)
!457 = !{!458, !466, !467, !472, !524, !528, !529, !530}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !4, line: 119, baseType: !459, size: 256)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !460, line: 9, size: 256, elements: !461)
!460 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !459, file: !460, line: 10, baseType: !233, size: 192, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !459, file: !460, line: 11, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !465, line: 29, baseType: !288)
!465 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !456, file: !4, line: 120, baseType: !464, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !456, file: !4, line: 121, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!3, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !456, file: !4, line: 122, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !475)
!475 = !{!476, !496, !497, !500, !510, !511, !519, !523}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !474, file: !4, line: 160, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !478, file: !4, line: 215, baseType: !299)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !478, file: !4, line: 216, baseType: !5, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !478, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !478, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !478, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !478, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !478, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !478, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !478, file: !4, line: 233, baseType: !464, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !478, file: !4, line: 234, baseType: !471, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !478, file: !4, line: 235, baseType: !464, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !478, file: !4, line: 236, baseType: !471, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !478, file: !4, line: 237, baseType: !493, size: 4096, offset: 512)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 4096, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 8)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !474, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !474, file: !4, line: 162, baseType: !498, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !50, line: 27, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !167, line: 96, baseType: !118)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !474, file: !4, line: 163, baseType: !501, size: 32, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !502, line: 276, baseType: !503)
!502 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !502, line: 276, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !503, file: !502, line: 276, baseType: !506, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !502, line: 70, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !502, line: 65, size: 32, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !507, file: !502, line: 66, baseType: !5, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !474, file: !4, line: 164, baseType: !471, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !474, file: !4, line: 165, baseType: !512, size: 128, offset: 256)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !460, line: 14, size: 128, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !512, file: !460, line: 15, baseType: !515, size: 128)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !234, line: 125, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !515, file: !234, line: 126, baseType: !250, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !515, file: !234, line: 127, baseType: !238, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !474, file: !4, line: 166, baseType: !520, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!464}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !474, file: !4, line: 167, baseType: !464, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !456, file: !4, line: 123, baseType: !525, size: 8, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !67, line: 17, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !69, line: 21, baseType: !527)
!527 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !456, file: !4, line: 124, baseType: !525, size: 8, offset: 456)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !456, file: !4, line: 125, baseType: !525, size: 8, offset: 464)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !456, file: !4, line: 126, baseType: !525, size: 8, offset: 472)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !440, file: !382, line: 572, baseType: !456, size: 512, offset: 1216)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !440, file: !382, line: 580, baseType: !533, size: 64, offset: 1728)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !381, file: !382, line: 721, baseType: !5, size: 32, offset: 3584)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !381, file: !382, line: 722, baseType: !118, size: 32, offset: 3616)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !381, file: !382, line: 723, baseType: !537, size: 64, offset: 3648)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !540, line: 17, baseType: !541)
!540 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !540, line: 17, size: 64, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !541, file: !540, line: 17, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 1)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !381, file: !382, line: 724, baseType: !539, size: 64, offset: 3712)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !381, file: !382, line: 749, baseType: !549, offset: 3776)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !382, line: 290, elements: !106)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !381, file: !382, line: 751, baseType: !79, size: 128, offset: 3776)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !381, file: !382, line: 757, baseType: !242, size: 64, offset: 3904)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !381, file: !382, line: 758, baseType: !242, size: 64, offset: 3968)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !381, file: !382, line: 761, baseType: !554, size: 320, offset: 4032)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !329, line: 34, size: 320, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !554, file: !329, line: 35, baseType: !254, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !554, file: !329, line: 36, baseType: !558, size: 256, offset: 64)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !333)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !381, file: !382, line: 766, baseType: !118, size: 32, offset: 4352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !381, file: !382, line: 767, baseType: !118, size: 32, offset: 4384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !381, file: !382, line: 768, baseType: !118, size: 32, offset: 4416)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !381, file: !382, line: 770, baseType: !118, size: 32, offset: 4448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !381, file: !382, line: 772, baseType: !184, size: 64, offset: 4480)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !381, file: !382, line: 775, baseType: !5, size: 32, offset: 4544)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !381, file: !382, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !381, file: !382, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !381, file: !382, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !381, file: !382, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !381, file: !382, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !381, file: !382, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !381, file: !382, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !381, file: !382, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !381, file: !382, line: 831, baseType: !184, size: 64, offset: 4672)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !381, file: !382, line: 833, baseType: !575, size: 384, offset: 4736)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !576)
!576 = !{!577, !582}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !575, file: !10, line: 26, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!169, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !10, line: 27, baseType: !583, size: 320, offset: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !10, line: 27, size: 320, elements: !584)
!584 = !{!585, !595, !622}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !583, file: !10, line: 36, baseType: !586, size: 320)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !10, line: 29, size: 320, elements: !587)
!587 = !{!588, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !586, file: !10, line: 30, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !586, file: !10, line: 31, baseType: !66, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !10, line: 32, baseType: !66, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !586, file: !10, line: 33, baseType: !66, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !586, file: !10, line: 34, baseType: !254, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !586, file: !10, line: 35, baseType: !589, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !583, file: !10, line: 46, baseType: !596, size: 192)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !10, line: 38, size: 192, elements: !597)
!597 = !{!598, !599, !600, !621}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !596, file: !10, line: 39, baseType: !498, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !596, file: !10, line: 41, baseType: !601, size: 64, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !596, file: !10, line: 41, size: 64, elements: !602)
!602 = !{!603, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !601, file: !10, line: 42, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !606, line: 7, size: 128, elements: !607)
!606 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !605, file: !606, line: 8, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !167, line: 93, baseType: !218)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !605, file: !606, line: 9, baseType: !218, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !601, file: !10, line: 43, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !614, line: 7, size: 64, elements: !615)
!614 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!615 = !{!616, !620}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !613, file: !614, line: 8, baseType: !617, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !614, line: 5, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !67, line: 20, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !69, line: 26, baseType: !118)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !613, file: !614, line: 9, baseType: !618, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !596, file: !10, line: 45, baseType: !254, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !583, file: !10, line: 54, baseType: !623, size: 256)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !10, line: 48, size: 256, elements: !624)
!624 = !{!625, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !623, file: !10, line: 49, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !623, file: !10, line: 50, baseType: !118, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !623, file: !10, line: 51, baseType: !118, size: 32, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !623, file: !10, line: 52, baseType: !184, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !623, file: !10, line: 53, baseType: !184, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !381, file: !382, line: 835, baseType: !633, size: 32, offset: 5120)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !50, line: 22, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !167, line: 28, baseType: !118)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !381, file: !382, line: 836, baseType: !633, size: 32, offset: 5152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !381, file: !382, line: 840, baseType: !184, size: 64, offset: 5184)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !381, file: !382, line: 849, baseType: !380, size: 64, offset: 5248)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !381, file: !382, line: 852, baseType: !380, size: 64, offset: 5312)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !381, file: !382, line: 857, baseType: !79, size: 128, offset: 5376)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !381, file: !382, line: 858, baseType: !79, size: 128, offset: 5504)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !381, file: !382, line: 859, baseType: !380, size: 64, offset: 5632)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !381, file: !382, line: 867, baseType: !79, size: 128, offset: 5696)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !381, file: !382, line: 868, baseType: !79, size: 128, offset: 5824)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !381, file: !382, line: 871, baseType: !645, size: 64, offset: 5952)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !647, line: 59, size: 768, elements: !648)
!647 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !650, !651, !652, !663, !664, !671, !680}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !646, file: !647, line: 61, baseType: !394, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !646, file: !647, line: 62, baseType: !5, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !646, file: !647, line: 63, baseType: !92, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !646, file: !647, line: 65, baseType: !653, size: 256, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 256, elements: !333)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !50, line: 182, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !654, file: !50, line: 183, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !50, line: 186, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !50, line: 187, baseType: !657, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !658, file: !50, line: 187, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !646, file: !647, line: 66, baseType: !654, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !646, file: !647, line: 68, baseType: !665, size: 128, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !666, line: 40, baseType: !667)
!666 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !666, line: 36, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !666, line: 37, baseType: !92)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !667, file: !666, line: 38, baseType: !79, size: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !646, file: !647, line: 69, baseType: !672, size: 128, align: 64, offset: 512)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !50, line: 216, size: 128, align: 64, elements: !673)
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !50, line: 217, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !672, file: !50, line: 218, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !675}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !646, file: !647, line: 70, baseType: !681, size: 128, offset: 640)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 128, elements: !545)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !647, line: 54, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !682, file: !647, line: 55, baseType: !118, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !682, file: !647, line: 56, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !647, line: 56, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !381, file: !382, line: 872, baseType: !689, size: 512, offset: 6016)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 512, elements: !333)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !381, file: !382, line: 873, baseType: !79, size: 128, offset: 6528)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !381, file: !382, line: 874, baseType: !79, size: 128, offset: 6656)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !381, file: !382, line: 876, baseType: !693, size: 64, offset: 6784)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !695, line: 26, size: 192, elements: !696)
!695 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !694, file: !695, line: 27, baseType: !5, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !694, file: !695, line: 28, baseType: !699, size: 128, offset: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !700, line: 43, size: 128, elements: !701)
!700 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !699, file: !700, line: 44, baseType: !299)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !699, file: !700, line: 45, baseType: !79, size: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !381, file: !382, line: 879, baseType: !705, size: 64, offset: 6848)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !381, file: !382, line: 882, baseType: !705, size: 64, offset: 6912)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !381, file: !382, line: 884, baseType: !254, size: 64, offset: 6976)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !381, file: !382, line: 885, baseType: !254, size: 64, offset: 7040)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !381, file: !382, line: 890, baseType: !254, size: 64, offset: 7104)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !381, file: !382, line: 891, baseType: !711, size: 128, offset: 7168)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !382, line: 242, size: 128, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !711, file: !382, line: 244, baseType: !254, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !711, file: !382, line: 245, baseType: !254, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !382, line: 246, baseType: !299, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !381, file: !382, line: 900, baseType: !184, size: 64, offset: 7296)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !381, file: !382, line: 901, baseType: !184, size: 64, offset: 7360)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !381, file: !382, line: 904, baseType: !254, size: 64, offset: 7424)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !381, file: !382, line: 907, baseType: !254, size: 64, offset: 7488)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !381, file: !382, line: 910, baseType: !184, size: 64, offset: 7552)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !381, file: !382, line: 911, baseType: !184, size: 64, offset: 7616)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !381, file: !382, line: 914, baseType: !723, size: 640, offset: 7680)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !724, line: 123, size: 640, elements: !725)
!724 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !732, !733}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !723, file: !724, line: 124, baseType: !727, size: 576)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 576, elements: !135)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !724, line: 108, size: 192, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !728, file: !724, line: 109, baseType: !254, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !728, file: !724, line: 110, baseType: !512, size: 128, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !723, file: !724, line: 125, baseType: !5, size: 32, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !723, file: !724, line: 126, baseType: !5, size: 32, offset: 608)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !381, file: !382, line: 917, baseType: !735, size: 192, offset: 8320)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !724, line: 134, size: 192, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !735, file: !724, line: 135, baseType: !672, size: 128, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !735, file: !724, line: 136, baseType: !5, size: 32, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !381, file: !382, line: 923, baseType: !740, size: 64, offset: 8512)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !382, line: 923, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !381, file: !382, line: 926, baseType: !740, size: 64, offset: 8576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !381, file: !382, line: 929, baseType: !740, size: 64, offset: 8640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !381, file: !382, line: 933, baseType: !746, size: 64, offset: 8704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !382, line: 933, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !381, file: !382, line: 943, baseType: !749, size: 128, offset: 8768)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 128, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 16)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !381, file: !382, line: 945, baseType: !753, size: 64, offset: 8896)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !382, line: 49, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !381, file: !382, line: 956, baseType: !756, size: 64, offset: 8960)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !382, line: 45, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !381, file: !382, line: 959, baseType: !759, size: 64, offset: 9024)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !382, line: 959, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !381, file: !382, line: 962, baseType: !762, size: 64, offset: 9088)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !382, line: 66, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !381, file: !382, line: 966, baseType: !765, size: 64, offset: 9152)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !382, line: 50, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !381, file: !382, line: 969, baseType: !768, size: 64, offset: 9216)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !724, line: 223, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !381, file: !382, line: 970, baseType: !771, size: 64, offset: 9280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !382, line: 62, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !381, file: !382, line: 971, baseType: !774, size: 64, offset: 9344)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !775, line: 25, baseType: !776)
!775 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 23, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !776, file: !775, line: 24, baseType: !544, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !381, file: !382, line: 972, baseType: !774, size: 64, offset: 9408)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !381, file: !382, line: 974, baseType: !774, size: 64, offset: 9472)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !381, file: !382, line: 975, baseType: !782, size: 192, offset: 9536)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !783, line: 30, size: 192, elements: !784)
!783 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !782, file: !783, line: 31, baseType: !79, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !782, file: !783, line: 32, baseType: !774, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !381, file: !382, line: 976, baseType: !184, size: 64, offset: 9728)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !381, file: !382, line: 977, baseType: !181, size: 64, offset: 9792)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !381, file: !382, line: 978, baseType: !5, size: 32, offset: 9856)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !381, file: !382, line: 980, baseType: !675, size: 64, offset: 9920)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !381, file: !382, line: 989, baseType: !792, size: 128, offset: 9984)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !793, line: 35, size: 128, elements: !794)
!793 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !792, file: !793, line: 36, baseType: !118, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !792, file: !793, line: 37, baseType: !274, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !792, file: !793, line: 38, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !793, line: 23, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !381, file: !382, line: 992, baseType: !254, size: 64, offset: 10112)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !381, file: !382, line: 993, baseType: !254, size: 64, offset: 10176)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !381, file: !382, line: 996, baseType: !92, offset: 10240)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !381, file: !382, line: 999, baseType: !299, offset: 10240)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !381, file: !382, line: 1001, baseType: !805, size: 64, offset: 10240)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !382, line: 636, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !805, file: !382, line: 637, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !381, file: !382, line: 1005, baseType: !515, size: 128, offset: 10304)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !381, file: !382, line: 1007, baseType: !380, size: 64, offset: 10432)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !381, file: !382, line: 1009, baseType: !812, size: 64, offset: 10496)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !382, line: 1009, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !381, file: !382, line: 1043, baseType: !208, size: 64, offset: 10560)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !381, file: !382, line: 1046, baseType: !816, size: 64, offset: 10624)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !382, line: 41, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !381, file: !382, line: 1050, baseType: !819, size: 64, offset: 10688)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !382, line: 42, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !381, file: !382, line: 1054, baseType: !822, size: 64, offset: 10752)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !382, line: 55, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !381, file: !382, line: 1056, baseType: !825, size: 64, offset: 10816)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !382, line: 40, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !381, file: !382, line: 1058, baseType: !828, size: 64, offset: 10880)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !382, line: 47, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !381, file: !382, line: 1061, baseType: !831, size: 64, offset: 10944)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !382, line: 43, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !381, file: !382, line: 1064, baseType: !184, size: 64, offset: 11008)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !381, file: !382, line: 1065, baseType: !835, size: 64, offset: 11072)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !783, line: 14, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !783, line: 12, size: 384, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !783, line: 13, baseType: !840, size: 384)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !783, line: 13, size: 384, elements: !841)
!841 = !{!842, !843, !844, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !840, file: !783, line: 13, baseType: !118, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !840, file: !783, line: 13, baseType: !118, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !840, file: !783, line: 13, baseType: !118, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !840, file: !783, line: 13, baseType: !846, size: 256, offset: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !847, line: 32, size: 256, elements: !848)
!847 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!848 = !{!849, !855, !868, !874, !883, !903, !908}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !846, file: !847, line: 37, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 34, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !850, file: !847, line: 35, baseType: !634, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !850, file: !847, line: 36, baseType: !854, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !167, line: 49, baseType: !5)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !846, file: !847, line: 45, baseType: !856, size: 192)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 40, size: 192, elements: !857)
!857 = !{!858, !860, !861, !867}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !856, file: !847, line: 41, baseType: !859, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !167, line: 95, baseType: !118)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !856, file: !847, line: 42, baseType: !118, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !856, file: !847, line: 43, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !847, line: 11, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !847, line: 8, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !863, file: !847, line: 9, baseType: !118, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !863, file: !847, line: 10, baseType: !208, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !856, file: !847, line: 44, baseType: !118, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !846, file: !847, line: 52, baseType: !869, size: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 48, size: 128, elements: !870)
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !869, file: !847, line: 49, baseType: !634, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !869, file: !847, line: 50, baseType: !854, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !869, file: !847, line: 51, baseType: !862, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !846, file: !847, line: 61, baseType: !875, size: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 55, size: 256, elements: !876)
!876 = !{!877, !878, !879, !880, !882}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !875, file: !847, line: 56, baseType: !634, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !875, file: !847, line: 57, baseType: !854, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !875, file: !847, line: 58, baseType: !118, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !875, file: !847, line: 59, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !167, line: 94, baseType: !168)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !875, file: !847, line: 60, baseType: !881, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !846, file: !847, line: 95, baseType: !884, size: 256)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 64, size: 256, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !884, file: !847, line: 65, baseType: !208, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !847, line: 77, baseType: !888, size: 192, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !847, line: 77, size: 192, elements: !889)
!889 = !{!890, !891, !898}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !888, file: !847, line: 82, baseType: !369, size: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !888, file: !847, line: 88, baseType: !892, size: 192)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !847, line: 84, size: 192, elements: !893)
!893 = !{!894, !896, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !892, file: !847, line: 85, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !494)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !892, file: !847, line: 86, baseType: !208, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !892, file: !847, line: 87, baseType: !208, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !888, file: !847, line: 93, baseType: !899, size: 96)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !847, line: 90, size: 96, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !899, file: !847, line: 91, baseType: !895, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !899, file: !847, line: 92, baseType: !68, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !846, file: !847, line: 101, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 98, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !904, file: !847, line: 99, baseType: !169, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !904, file: !847, line: 100, baseType: !118, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !846, file: !847, line: 108, baseType: !909, size: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 104, size: 128, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !909, file: !847, line: 105, baseType: !208, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !909, file: !847, line: 106, baseType: !118, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !909, file: !847, line: 107, baseType: !5, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !381, file: !382, line: 1067, baseType: !915, offset: 11136)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !916, line: 12, elements: !106)
!916 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !381, file: !382, line: 1099, baseType: !918, size: 64, offset: 11136)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !382, line: 56, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !381, file: !382, line: 1103, baseType: !79, size: 128, offset: 11200)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !381, file: !382, line: 1104, baseType: !922, size: 64, offset: 11328)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !382, line: 46, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !381, file: !382, line: 1105, baseType: !351, size: 192, offset: 11392)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !381, file: !382, line: 1106, baseType: !5, size: 32, offset: 11584)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !381, file: !382, line: 1109, baseType: !927, size: 128, offset: 11648)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 128, elements: !930)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !382, line: 51, flags: DIFlagFwdDecl)
!930 = !{!931}
!931 = !DISubrange(count: 2)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !381, file: !382, line: 1110, baseType: !351, size: 192, offset: 11776)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !381, file: !382, line: 1111, baseType: !79, size: 128, offset: 11968)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !381, file: !382, line: 1173, baseType: !935, size: 64, offset: 12096)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !937, line: 62, size: 256, align: 256, elements: !938)
!937 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940, !941, !946}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !936, file: !937, line: 75, baseType: !68, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !936, file: !937, line: 90, baseType: !68, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !936, file: !937, line: 124, baseType: !942, size: 64, offset: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !937, line: 109, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !942, file: !937, line: 110, baseType: !255, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !942, file: !937, line: 112, baseType: !255, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !937, line: 144, baseType: !68, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !381, file: !382, line: 1174, baseType: !66, size: 32, offset: 12160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !381, file: !382, line: 1179, baseType: !184, size: 64, offset: 12224)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !381, file: !382, line: 1182, baseType: !950, size: 128, offset: 12288)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !329, line: 76, size: 128, elements: !951)
!951 = !{!952, !957, !960}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !950, file: !329, line: 85, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !954, line: 7, size: 64, elements: !955)
!954 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !953, file: !954, line: 12, baseType: !541, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !950, file: !329, line: 88, baseType: !958, size: 8, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !50, line: 30, baseType: !959)
!959 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !950, file: !329, line: 95, baseType: !958, size: 8, offset: 72)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !381, file: !382, line: 1184, baseType: !962, size: 128, offset: 12416)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !381, file: !382, line: 1184, size: 128, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !962, file: !382, line: 1185, baseType: !394, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !962, file: !382, line: 1186, baseType: !672, size: 128, align: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !381, file: !382, line: 1190, baseType: !967, size: 64, offset: 12544)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !382, line: 53, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !381, file: !382, line: 1192, baseType: !970, size: 128, offset: 12608)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !329, line: 64, size: 128, elements: !971)
!971 = !{!972, !1065, !1066}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !970, file: !329, line: 65, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !226, line: 68, size: 512, align: 128, elements: !975)
!975 = !{!976, !977, !1057, !1064}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !226, line: 69, baseType: !184, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !226, line: 77, baseType: !978, size: 320, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !226, line: 77, size: 320, elements: !979)
!979 = !{!980, !989, !994, !1022, !1030, !1036, !1049, !1056}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 78, baseType: !981, size: 320)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 78, size: 320, elements: !982)
!982 = !{!983, !984, !987, !988}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !981, file: !226, line: 84, baseType: !79, size: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !981, file: !226, line: 86, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !226, line: 26, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !981, file: !226, line: 87, baseType: !184, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !981, file: !226, line: 94, baseType: !184, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 96, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 96, size: 64, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !990, file: !226, line: 101, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !50, line: 143, baseType: !254)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 103, baseType: !995, size: 320)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 103, size: 320, elements: !996)
!996 = !{!997, !1007, !1010, !1011}
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !226, line: 104, baseType: !998, size: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !226, line: 104, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !998, file: !226, line: 105, baseType: !79, size: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !226, line: 106, baseType: !1002, size: 128)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !226, line: 106, size: 128, elements: !1003)
!1003 = !{!1004, !1005, !1006}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !226, line: 107, baseType: !973, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1002, file: !226, line: 109, baseType: !118, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1002, file: !226, line: 110, baseType: !118, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !995, file: !226, line: 117, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !226, line: 117, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !995, file: !226, line: 119, baseType: !208, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !226, line: 120, baseType: !1012, size: 64, offset: 256)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !995, file: !226, line: 120, size: 64, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1012, file: !226, line: 121, baseType: !208, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1012, file: !226, line: 122, baseType: !184, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !226, line: 123, baseType: !1017, size: 32)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1012, file: !226, line: 123, size: 32, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1017, file: !226, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1017, file: !226, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1017, file: !226, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 130, baseType: !1023, size: 192)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 130, size: 192, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1023, file: !226, line: 131, baseType: !184, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1023, file: !226, line: 134, baseType: !527, size: 8, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1023, file: !226, line: 135, baseType: !527, size: 8, offset: 72)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1023, file: !226, line: 136, baseType: !274, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1023, file: !226, line: 137, baseType: !5, size: 32, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 139, baseType: !1031, size: 256)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 139, size: 256, elements: !1032)
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1031, file: !226, line: 140, baseType: !184, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1031, file: !226, line: 141, baseType: !274, size: 32, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1031, file: !226, line: 143, baseType: !79, size: 128, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 145, baseType: !1037, size: 256)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 145, size: 256, elements: !1038)
!1038 = !{!1039, !1040, !1042, !1043, !1048}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1037, file: !226, line: 146, baseType: !184, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1037, file: !226, line: 147, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !215, line: 509, baseType: !973)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1037, file: !226, line: 148, baseType: !184, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !1037, file: !226, line: 149, baseType: !1044, size: 64, offset: 192)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1037, file: !226, line: 149, size: 64, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1044, file: !226, line: 150, baseType: !242, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1044, file: !226, line: 151, baseType: !274, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1037, file: !226, line: 156, baseType: !92, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !226, line: 159, baseType: !1050, size: 128)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !226, line: 159, size: 128, elements: !1051)
!1051 = !{!1052, !1055}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1050, file: !226, line: 161, baseType: !1053, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !226, line: 161, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1050, file: !226, line: 162, baseType: !208, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !978, file: !226, line: 176, baseType: !672, size: 128, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !226, line: 179, baseType: !1058, size: 32, offset: 384)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !226, line: 179, size: 32, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1058, file: !226, line: 184, baseType: !274, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1058, file: !226, line: 192, baseType: !5, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1058, file: !226, line: 194, baseType: !5, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1058, file: !226, line: 195, baseType: !118, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !974, file: !226, line: 199, baseType: !274, size: 32, offset: 416)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !970, file: !329, line: 67, baseType: !68, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !970, file: !329, line: 68, baseType: !68, size: 32, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !381, file: !382, line: 1206, baseType: !118, size: 32, offset: 12736)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !381, file: !382, line: 1207, baseType: !118, size: 32, offset: 12768)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !381, file: !382, line: 1209, baseType: !184, size: 64, offset: 12800)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !381, file: !382, line: 1219, baseType: !254, size: 64, offset: 12864)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !381, file: !382, line: 1220, baseType: !254, size: 64, offset: 12928)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !381, file: !382, line: 1317, baseType: !118, size: 32, offset: 12992)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !381, file: !382, line: 1319, baseType: !380, size: 64, offset: 13056)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !381, file: !382, line: 1322, baseType: !1075, size: 64, offset: 13120)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !382, line: 1322, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !381, file: !382, line: 1326, baseType: !394, size: 32, offset: 13184)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !381, file: !382, line: 1342, baseType: !208, size: 64, offset: 13248)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !381, file: !382, line: 1343, baseType: !255, size: 64, offset: 13312)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !381, file: !382, line: 1344, baseType: !254, size: 64, offset: 13376)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !381, file: !382, line: 1345, baseType: !255, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !381, file: !382, line: 1346, baseType: !255, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !381, file: !382, line: 1347, baseType: !255, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !381, file: !382, line: 1348, baseType: !672, size: 128, align: 64, offset: 13504)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !381, file: !382, line: 1358, baseType: !1086, size: 34816, offset: 13824)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1087, line: 485, size: 34816, elements: !1088)
!1087 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1118, !1119, !1120, !1121, !1122, !1123, !1126, !1127, !1128}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1086, file: !1087, line: 487, baseType: !1090, size: 192)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 192, elements: !135)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1092, line: 16, size: 64, elements: !1093)
!1092 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1091, file: !1092, line: 17, baseType: !364, size: 16)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1091, file: !1092, line: 18, baseType: !364, size: 16, offset: 16)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1091, file: !1092, line: 19, baseType: !364, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1091, file: !1092, line: 19, baseType: !364, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1091, file: !1092, line: 19, baseType: !364, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1091, file: !1092, line: 19, baseType: !364, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1091, file: !1092, line: 19, baseType: !364, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1091, file: !1092, line: 20, baseType: !364, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1091, file: !1092, line: 20, baseType: !364, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1091, file: !1092, line: 20, baseType: !364, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1091, file: !1092, line: 20, baseType: !364, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1091, file: !1092, line: 20, baseType: !364, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1091, file: !1092, line: 20, baseType: !364, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1086, file: !1087, line: 491, baseType: !184, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1086, file: !1087, line: 495, baseType: !176, size: 16, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1086, file: !1087, line: 496, baseType: !176, size: 16, offset: 272)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1086, file: !1087, line: 497, baseType: !176, size: 16, offset: 288)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1086, file: !1087, line: 498, baseType: !176, size: 16, offset: 304)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1086, file: !1087, line: 502, baseType: !184, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1086, file: !1087, line: 503, baseType: !184, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1086, file: !1087, line: 514, baseType: !1115, size: 256, offset: 448)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 256, elements: !333)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1087, line: 483, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1086, file: !1087, line: 516, baseType: !184, size: 64, offset: 704)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1086, file: !1087, line: 518, baseType: !184, size: 64, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1086, file: !1087, line: 520, baseType: !184, size: 64, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1086, file: !1087, line: 521, baseType: !184, size: 64, offset: 896)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1086, file: !1087, line: 522, baseType: !184, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1086, file: !1087, line: 528, baseType: !1124, size: 64, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1087, line: 10, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1086, file: !1087, line: 535, baseType: !184, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1086, file: !1087, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1086, file: !1087, line: 540, baseType: !1129, size: 33280, offset: 1536)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1130, line: 317, size: 33280, elements: !1131)
!1130 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1129, file: !1130, line: 330, baseType: !5, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1129, file: !1130, line: 337, baseType: !184, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1129, file: !1130, line: 348, baseType: !1135, size: 32768, offset: 512)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1130, line: 304, size: 32768, elements: !1136)
!1136 = !{!1137, !1152, !1191, !1241, !1258}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1135, file: !1130, line: 305, baseType: !1138, size: 896)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1130, line: 12, size: 896, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1151}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1138, file: !1130, line: 13, baseType: !66, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1138, file: !1130, line: 14, baseType: !66, size: 32, offset: 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1138, file: !1130, line: 15, baseType: !66, size: 32, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1138, file: !1130, line: 16, baseType: !66, size: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1138, file: !1130, line: 17, baseType: !66, size: 32, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1138, file: !1130, line: 18, baseType: !66, size: 32, offset: 160)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1138, file: !1130, line: 19, baseType: !66, size: 32, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1138, file: !1130, line: 22, baseType: !1148, size: 640, offset: 224)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 640, elements: !1149)
!1149 = !{!1150}
!1150 = !DISubrange(count: 20)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1138, file: !1130, line: 25, baseType: !66, size: 32, offset: 864)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1135, file: !1130, line: 306, baseType: !1153, size: 4096, align: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1130, line: 34, size: 4096, align: 128, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1174, !1175, !1176, !1180, !1182, !1186}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1153, file: !1130, line: 35, baseType: !364, size: 16)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1153, file: !1130, line: 36, baseType: !364, size: 16, offset: 16)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1153, file: !1130, line: 37, baseType: !364, size: 16, offset: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1153, file: !1130, line: 38, baseType: !364, size: 16, offset: 48)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1130, line: 39, baseType: !1160, size: 128, offset: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1130, line: 39, size: 128, elements: !1161)
!1161 = !{!1162, !1167}
!1162 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !1130, line: 40, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !1130, line: 40, size: 128, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1163, file: !1130, line: 41, baseType: !254, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1163, file: !1130, line: 42, baseType: !254, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !1130, line: 44, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !1130, line: 44, size: 128, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1168, file: !1130, line: 45, baseType: !66, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1168, file: !1130, line: 46, baseType: !66, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1168, file: !1130, line: 47, baseType: !66, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1168, file: !1130, line: 48, baseType: !66, size: 32, offset: 96)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1153, file: !1130, line: 51, baseType: !66, size: 32, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1153, file: !1130, line: 52, baseType: !66, size: 32, offset: 224)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1153, file: !1130, line: 55, baseType: !1177, size: 1024, offset: 256)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1024, elements: !1178)
!1178 = !{!1179}
!1179 = !DISubrange(count: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1153, file: !1130, line: 58, baseType: !1181, size: 2048, offset: 1280)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 2048, elements: !139)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1153, file: !1130, line: 60, baseType: !1183, size: 384, offset: 3328)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 384, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 12)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1130, line: 62, baseType: !1187, size: 384, offset: 3712)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1130, line: 62, size: 384, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1187, file: !1130, line: 63, baseType: !1183, size: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1187, file: !1130, line: 64, baseType: !1183, size: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1135, file: !1130, line: 307, baseType: !1192, size: 1088)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1130, line: 79, size: 1088, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1240}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1192, file: !1130, line: 80, baseType: !66, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1192, file: !1130, line: 81, baseType: !66, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1192, file: !1130, line: 82, baseType: !66, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1192, file: !1130, line: 83, baseType: !66, size: 32, offset: 96)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1192, file: !1130, line: 84, baseType: !66, size: 32, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1192, file: !1130, line: 85, baseType: !66, size: 32, offset: 160)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1192, file: !1130, line: 86, baseType: !66, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1192, file: !1130, line: 88, baseType: !1148, size: 640, offset: 224)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1192, file: !1130, line: 89, baseType: !525, size: 8, offset: 864)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1192, file: !1130, line: 90, baseType: !525, size: 8, offset: 872)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1192, file: !1130, line: 91, baseType: !525, size: 8, offset: 880)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1192, file: !1130, line: 92, baseType: !525, size: 8, offset: 888)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1192, file: !1130, line: 93, baseType: !525, size: 8, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1192, file: !1130, line: 94, baseType: !525, size: 8, offset: 904)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1192, file: !1130, line: 95, baseType: !1209, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1211, line: 11, size: 128, elements: !1212)
!1211 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1210, file: !1211, line: 12, baseType: !169, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1210, file: !1211, line: 13, baseType: !1215, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1217, line: 56, size: 1344, elements: !1218)
!1217 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1216, file: !1217, line: 61, baseType: !184, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1216, file: !1217, line: 62, baseType: !184, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1216, file: !1217, line: 63, baseType: !184, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1216, file: !1217, line: 64, baseType: !184, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1216, file: !1217, line: 65, baseType: !184, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1216, file: !1217, line: 66, baseType: !184, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1216, file: !1217, line: 68, baseType: !184, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1216, file: !1217, line: 69, baseType: !184, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1216, file: !1217, line: 70, baseType: !184, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1216, file: !1217, line: 71, baseType: !184, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1216, file: !1217, line: 72, baseType: !184, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1216, file: !1217, line: 73, baseType: !184, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1216, file: !1217, line: 74, baseType: !184, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1216, file: !1217, line: 75, baseType: !184, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1216, file: !1217, line: 76, baseType: !184, size: 64, offset: 896)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1216, file: !1217, line: 81, baseType: !184, size: 64, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1216, file: !1217, line: 83, baseType: !184, size: 64, offset: 1024)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1216, file: !1217, line: 84, baseType: !184, size: 64, offset: 1088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !1217, line: 85, baseType: !184, size: 64, offset: 1152)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1216, file: !1217, line: 86, baseType: !184, size: 64, offset: 1216)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1216, file: !1217, line: 87, baseType: !184, size: 64, offset: 1280)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1192, file: !1130, line: 96, baseType: !66, size: 32, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1135, file: !1130, line: 308, baseType: !1242, size: 4608, align: 512)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1130, line: 289, size: 4608, align: 512, elements: !1243)
!1243 = !{!1244, !1245, !1254}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1242, file: !1130, line: 290, baseType: !1153, size: 4096, align: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1242, file: !1130, line: 291, baseType: !1246, size: 512, offset: 4096)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1130, line: 268, size: 512, elements: !1247)
!1247 = !{!1248, !1249, !1250}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1246, file: !1130, line: 269, baseType: !254, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1246, file: !1130, line: 270, baseType: !254, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1246, file: !1130, line: 271, baseType: !1251, size: 384, offset: 128)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 384, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 6)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1242, file: !1130, line: 292, baseType: !1255, offset: 4608)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 0)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1135, file: !1130, line: 309, baseType: !1259, size: 32768)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 32768, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 4096)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !226, line: 378, baseType: !1263, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !373, file: !226, line: 384, baseType: !694, size: 192, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !246, file: !226, line: 500, baseType: !92, offset: 6656)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !246, file: !226, line: 501, baseType: !1267, size: 64, offset: 6656)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !226, line: 387, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !246, file: !226, line: 516, baseType: !1270, size: 64, offset: 6720)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1272, line: 18, flags: DIFlagFwdDecl)
!1272 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !246, file: !226, line: 519, baseType: !213, size: 64, offset: 6784)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !246, file: !226, line: 521, baseType: !1275, size: 64, offset: 6848)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !226, line: 521, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !246, file: !226, line: 545, baseType: !274, size: 32, offset: 6912)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !246, file: !226, line: 548, baseType: !958, size: 8, offset: 6944)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !246, file: !226, line: 550, baseType: !1280, offset: 6952)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1281, line: 142, elements: !106)
!1281 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !246, file: !226, line: 554, baseType: !1283, size: 256, offset: 6976)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1284, line: 102, size: 256, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1283, file: !1284, line: 103, baseType: !282, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1283, file: !1284, line: 104, baseType: !79, size: 128, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1283, file: !1284, line: 105, baseType: !1289, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1284, line: 21, baseType: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1293}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !246, file: !226, line: 557, baseType: !66, size: 32, offset: 7232)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !243, file: !226, line: 565, baseType: !1296, offset: 7296)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: -1)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !225, file: !226, line: 333, baseType: !1300, size: 64, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !215, line: 284, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !215, line: 284, size: 64, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1301, file: !215, line: 284, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !272, line: 19, baseType: !184)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !225, file: !226, line: 334, baseType: !184, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !225, file: !226, line: 343, baseType: !1307, size: 256, offset: 704)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !225, file: !226, line: 340, size: 256, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1307, file: !226, line: 341, baseType: !233, size: 192, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1307, file: !226, line: 342, baseType: !184, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !225, file: !226, line: 351, baseType: !79, size: 128, offset: 960)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !225, file: !226, line: 353, baseType: !1313, size: 64, offset: 1088)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !226, line: 353, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !225, file: !226, line: 356, baseType: !1316, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1318)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !226, line: 356, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !225, file: !226, line: 359, baseType: !184, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !225, file: !226, line: 361, baseType: !213, size: 64, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !225, file: !226, line: 362, baseType: !208, size: 64, offset: 1344)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !225, file: !226, line: 365, baseType: !282, size: 64, offset: 1408)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !225, file: !226, line: 373, baseType: !1324, offset: 1472)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !226, line: 296, elements: !106)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !191, file: !159, line: 90, baseType: !186, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !191, file: !159, line: 91, baseType: !1327, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !149, file: !75, line: 143, baseType: !1329, size: 64, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!1332, !85}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1335)
!1335 = !{!1336, !1337, !1341, !1345, !1353, !1357}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1334, file: !16, line: 40, baseType: !15, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1334, file: !16, line: 41, baseType: !1338, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!958}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1334, file: !16, line: 42, baseType: !1342, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!208}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1334, file: !16, line: 43, baseType: !1346, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!1349, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1334, file: !16, line: 44, baseType: !1354, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1349}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1334, file: !16, line: 45, baseType: !1358, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !208}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !149, file: !75, line: 144, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1349, !85}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !149, file: !75, line: 145, baseType: !1366, size: 64, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{null, !85, !1369, !1375}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1272, line: 23, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1272, line: 21, size: 32, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1371, file: !1272, line: 22, baseType: !1374, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !50, line: 32, baseType: !854)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1272, line: 28, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1272, line: 26, size: 32, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1377, file: !1272, line: 27, baseType: !1380, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !50, line: 33, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !167, line: 50, baseType: !5)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !74, file: !75, line: 70, baseType: !1383, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1385, line: 123, size: 1024, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1528, !1529, !1530, !1531, !1532}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1384, file: !1385, line: 124, baseType: !274, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1384, file: !1385, line: 125, baseType: !274, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1384, file: !1385, line: 135, baseType: !1383, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1384, file: !1385, line: 136, baseType: !57, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1384, file: !1385, line: 138, baseType: !233, size: 192, align: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1384, file: !1385, line: 140, baseType: !1349, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1384, file: !1385, line: 141, baseType: !5, size: 32, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1385, line: 142, baseType: !1395, size: 256, offset: 512)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !1385, line: 142, size: 256, elements: !1396)
!1396 = !{!1397, !1451, !1455}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1395, file: !1385, line: 143, baseType: !1398, size: 192)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1385, line: 91, size: 192, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1398, file: !1385, line: 92, baseType: !184, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1398, file: !1385, line: 94, baseType: !250, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1398, file: !1385, line: 100, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1385, line: 180, size: 704, elements: !1405)
!1405 = !{!1406, !1407, !1408, !1421, !1422, !1423, !1449, !1450}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1404, file: !1385, line: 182, baseType: !1383, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1385, line: 183, baseType: !5, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1404, file: !1385, line: 186, baseType: !1409, size: 192, offset: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1410, line: 19, size: 192, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !{!1412, !1419, !1420}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1409, file: !1410, line: 20, baseType: !1413, size: 128)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1414, line: 292, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1417, !1418}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1413, file: !1414, line: 293, baseType: !92)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1413, file: !1414, line: 295, baseType: !49, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1413, file: !1414, line: 296, baseType: !208, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1409, file: !1410, line: 21, baseType: !5, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1409, file: !1410, line: 22, baseType: !5, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1404, file: !1385, line: 187, baseType: !66, size: 32, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1404, file: !1385, line: 188, baseType: !66, size: 32, offset: 352)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1404, file: !1385, line: 189, baseType: !1424, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1385, line: 168, size: 320, elements: !1426)
!1426 = !{!1427, !1433, !1437, !1441, !1445}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1425, file: !1385, line: 169, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!118, !1431, !1403}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !215, line: 539, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1425, file: !1385, line: 171, baseType: !1434, size: 64, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!118, !1383, !57, !175}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1425, file: !1385, line: 173, baseType: !1438, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!118, !1383}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1425, file: !1385, line: 174, baseType: !1442, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!118, !1383, !1383, !57}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1425, file: !1385, line: 176, baseType: !1446, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!118, !1431, !1383, !1403}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1404, file: !1385, line: 192, baseType: !79, size: 128, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1404, file: !1385, line: 194, baseType: !665, size: 128, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1395, file: !1385, line: 144, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1385, line: 103, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1452, file: !1385, line: 104, baseType: !1383, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1395, file: !1385, line: 145, baseType: !1456, size: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1385, line: 107, size: 256, elements: !1457)
!1457 = !{!1458, !1523, !1526, !1527}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1456, file: !1385, line: 108, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1385, line: 217, size: 768, elements: !1462)
!1462 = !{!1463, !1483, !1487, !1491, !1496, !1500, !1504, !1508, !1509, !1510, !1511, !1519}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1461, file: !1385, line: 222, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!118, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1385, line: 197, size: 1088, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1468, file: !1385, line: 199, baseType: !1383, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1468, file: !1385, line: 200, baseType: !213, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1468, file: !1385, line: 201, baseType: !1431, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1468, file: !1385, line: 202, baseType: !208, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1468, file: !1385, line: 205, baseType: !351, size: 192, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1468, file: !1385, line: 206, baseType: !351, size: 192, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1468, file: !1385, line: 207, baseType: !118, size: 32, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1468, file: !1385, line: 208, baseType: !79, size: 128, offset: 704)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1468, file: !1385, line: 209, baseType: !134, size: 64, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1468, file: !1385, line: 211, baseType: !181, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1468, file: !1385, line: 212, baseType: !958, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1468, file: !1385, line: 213, baseType: !958, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1468, file: !1385, line: 214, baseType: !1316, size: 64, offset: 1024)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1461, file: !1385, line: 223, baseType: !1484, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !1467}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1461, file: !1385, line: 236, baseType: !1488, size: 64, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!118, !1431, !208}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1461, file: !1385, line: 238, baseType: !1492, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!208, !1431, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1461, file: !1385, line: 239, baseType: !1497, size: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!208, !1431, !208, !1495}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1461, file: !1385, line: 240, baseType: !1501, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !1431, !208}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1461, file: !1385, line: 242, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!165, !1467, !134, !181, !216}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1461, file: !1385, line: 252, baseType: !181, size: 64, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1461, file: !1385, line: 259, baseType: !958, size: 8, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1461, file: !1385, line: 260, baseType: !1505, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1461, file: !1385, line: 263, baseType: !1512, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1515, !1467, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1516, line: 52, baseType: !5)
!1516 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1385, line: 27, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1461, file: !1385, line: 266, baseType: !1520, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!118, !1467, !224}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1456, file: !1385, line: 109, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1385, line: 31, flags: DIFlagFwdDecl)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1456, file: !1385, line: 110, baseType: !216, size: 64, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1456, file: !1385, line: 111, baseType: !1383, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1384, file: !1385, line: 148, baseType: !208, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1384, file: !1385, line: 154, baseType: !254, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !1385, line: 156, baseType: !176, size: 16, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1384, file: !1385, line: 157, baseType: !175, size: 16, offset: 912)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1384, file: !1385, line: 158, baseType: !1533, size: 64, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1385, line: 32, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !74, file: !75, line: 71, baseType: !1536, size: 32, offset: 448)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1537, line: 19, size: 32, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1536, file: !1537, line: 20, baseType: !394, size: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !74, file: !75, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !74, file: !75, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !74, file: !75, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !74, file: !75, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !74, file: !75, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !71, file: !28, line: 463, baseType: !1546, size: 64, offset: 512)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !71, file: !28, line: 465, baseType: !1548, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !71, file: !28, line: 467, baseType: !57, size: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !28, line: 468, baseType: !1552, size: 64, offset: 704)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1555)
!1555 = !{!1556, !1557, !1558, !1562, !1567, !1571}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1554, file: !28, line: 88, baseType: !57, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1554, file: !28, line: 89, baseType: !188, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1554, file: !28, line: 90, baseType: !1559, size: 64, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!118, !1546, !129}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1554, file: !28, line: 91, baseType: !1563, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!134, !1546, !1566, !1369, !1375}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1554, file: !28, line: 93, baseType: !1568, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{null, !1546}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1554, file: !28, line: 95, baseType: !1572, size: 64, offset: 320)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1575)
!1575 = !{!1576, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1574, file: !35, line: 279, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!118, !1546}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1574, file: !35, line: 280, baseType: !1568, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1574, file: !35, line: 281, baseType: !1577, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1574, file: !35, line: 282, baseType: !1577, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1574, file: !35, line: 283, baseType: !1577, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1574, file: !35, line: 284, baseType: !1577, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1574, file: !35, line: 285, baseType: !1577, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1574, file: !35, line: 286, baseType: !1577, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1574, file: !35, line: 287, baseType: !1577, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1574, file: !35, line: 288, baseType: !1577, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1574, file: !35, line: 289, baseType: !1577, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1574, file: !35, line: 290, baseType: !1577, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1574, file: !35, line: 291, baseType: !1577, size: 64, offset: 768)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1574, file: !35, line: 292, baseType: !1577, size: 64, offset: 832)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1574, file: !35, line: 293, baseType: !1577, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1574, file: !35, line: 294, baseType: !1577, size: 64, offset: 960)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1574, file: !35, line: 295, baseType: !1577, size: 64, offset: 1024)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1574, file: !35, line: 296, baseType: !1577, size: 64, offset: 1088)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1574, file: !35, line: 297, baseType: !1577, size: 64, offset: 1152)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1574, file: !35, line: 298, baseType: !1577, size: 64, offset: 1216)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1574, file: !35, line: 299, baseType: !1577, size: 64, offset: 1280)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1574, file: !35, line: 300, baseType: !1577, size: 64, offset: 1344)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1574, file: !35, line: 301, baseType: !1577, size: 64, offset: 1408)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !71, file: !28, line: 470, baseType: !1603, size: 64, offset: 768)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1605, line: 82, size: 1408, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1673, !1676, !1679}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1604, file: !1605, line: 83, baseType: !57, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1604, file: !1605, line: 84, baseType: !57, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1604, file: !1605, line: 85, baseType: !1546, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1604, file: !1605, line: 86, baseType: !188, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1604, file: !1605, line: 87, baseType: !188, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1604, file: !1605, line: 88, baseType: !188, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1604, file: !1605, line: 90, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!118, !1546, !1617}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1619)
!1619 = !{!1620, !1621, !1622, !1626, !1627, !1628, !1629, !1633, !1637, !1638, !1639, !1640, !1641, !1649, !1650, !1651, !1652, !1653, !1654}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1618, file: !22, line: 96, baseType: !57, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1618, file: !22, line: 97, baseType: !1603, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1618, file: !22, line: 99, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1625, line: 76, flags: DIFlagFwdDecl)
!1625 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1618, file: !22, line: 100, baseType: !57, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1618, file: !22, line: 102, baseType: !958, size: 8, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1618, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1618, file: !22, line: 105, baseType: !1630, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !22, line: 105, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1618, file: !22, line: 106, baseType: !1634, size: 64, offset: 384)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !22, line: 106, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1618, file: !22, line: 108, baseType: !1577, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1618, file: !22, line: 109, baseType: !1568, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1618, file: !22, line: 110, baseType: !1577, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1618, file: !22, line: 111, baseType: !1568, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1618, file: !22, line: 112, baseType: !1642, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!118, !1546, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1646, file: !35, line: 51, baseType: !118, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1618, file: !22, line: 113, baseType: !1577, size: 64, offset: 768)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1618, file: !22, line: 114, baseType: !188, size: 64, offset: 832)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1618, file: !22, line: 115, baseType: !188, size: 64, offset: 896)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1618, file: !22, line: 117, baseType: !1572, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1618, file: !22, line: 118, baseType: !1568, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1618, file: !22, line: 120, baseType: !1655, size: 64, offset: 1088)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1604, file: !1605, line: 91, baseType: !1559, size: 64, offset: 448)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1604, file: !1605, line: 92, baseType: !1577, size: 64, offset: 512)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1604, file: !1605, line: 93, baseType: !1568, size: 64, offset: 576)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1604, file: !1605, line: 94, baseType: !1577, size: 64, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1604, file: !1605, line: 95, baseType: !1568, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1604, file: !1605, line: 97, baseType: !1577, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1604, file: !1605, line: 98, baseType: !1577, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1604, file: !1605, line: 100, baseType: !1642, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1604, file: !1605, line: 101, baseType: !1577, size: 64, offset: 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1604, file: !1605, line: 103, baseType: !1577, size: 64, offset: 1024)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1604, file: !1605, line: 105, baseType: !1577, size: 64, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1604, file: !1605, line: 107, baseType: !1572, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1604, file: !1605, line: 109, baseType: !1670, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1605, line: 109, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1604, file: !1605, line: 111, baseType: !1674, size: 64, offset: 1280)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1605, line: 111, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1604, file: !1605, line: 112, baseType: !1677, offset: 1344)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1678, line: 187, elements: !106)
!1678 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1604, file: !1605, line: 114, baseType: !958, size: 8, offset: 1344)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !71, file: !28, line: 471, baseType: !1617, size: 64, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !71, file: !28, line: 473, baseType: !208, size: 64, offset: 896)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !71, file: !28, line: 475, baseType: !208, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !71, file: !28, line: 480, baseType: !351, size: 192, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !71, file: !28, line: 484, baseType: !1685, size: 576, offset: 1216)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1685, file: !28, line: 362, baseType: !79, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1685, file: !28, line: 363, baseType: !79, size: 128, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1685, file: !28, line: 364, baseType: !79, size: 128, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1685, file: !28, line: 365, baseType: !79, size: 128, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1685, file: !28, line: 366, baseType: !958, size: 8, offset: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1685, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !71, file: !28, line: 485, baseType: !1694, size: 2304, offset: 1792)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1695)
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1791, !1795}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1694, file: !35, line: 566, baseType: !1645, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1694, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1694, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1694, file: !35, line: 569, baseType: !958, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1694, file: !35, line: 570, baseType: !958, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1694, file: !35, line: 571, baseType: !958, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1694, file: !35, line: 572, baseType: !958, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1694, file: !35, line: 573, baseType: !958, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1694, file: !35, line: 574, baseType: !958, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1694, file: !35, line: 575, baseType: !958, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1694, file: !35, line: 576, baseType: !958, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1694, file: !35, line: 577, baseType: !66, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !35, line: 578, baseType: !92, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1694, file: !35, line: 580, baseType: !79, size: 128, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1694, file: !35, line: 581, baseType: !694, size: 192, offset: 256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1694, file: !35, line: 582, baseType: !1712, size: 64, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1714, line: 43, size: 1472, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1723, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1713, file: !1714, line: 44, baseType: !57, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1713, file: !1714, line: 45, baseType: !118, size: 32, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1713, file: !1714, line: 46, baseType: !79, size: 128, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1713, file: !1714, line: 47, baseType: !92, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1713, file: !1714, line: 48, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1713, file: !1714, line: 49, baseType: !1724, size: 320, offset: 320)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1725, line: 11, size: 320, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729, !1734}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1724, file: !1725, line: 16, baseType: !658, size: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1724, file: !1725, line: 17, baseType: !184, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1724, file: !1725, line: 18, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1724, file: !1725, line: 19, baseType: !66, size: 32, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1713, file: !1714, line: 50, baseType: !184, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1713, file: !1714, line: 51, baseType: !464, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1713, file: !1714, line: 52, baseType: !464, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1713, file: !1714, line: 53, baseType: !464, size: 64, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1713, file: !1714, line: 54, baseType: !464, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1713, file: !1714, line: 55, baseType: !464, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1713, file: !1714, line: 56, baseType: !184, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1713, file: !1714, line: 57, baseType: !184, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1713, file: !1714, line: 58, baseType: !184, size: 64, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1713, file: !1714, line: 59, baseType: !184, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1713, file: !1714, line: 60, baseType: !184, size: 64, offset: 1280)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1713, file: !1714, line: 61, baseType: !1546, size: 64, offset: 1344)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1713, file: !1714, line: 62, baseType: !958, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1713, file: !1714, line: 63, baseType: !958, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1694, file: !35, line: 583, baseType: !958, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1694, file: !35, line: 584, baseType: !958, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1694, file: !35, line: 585, baseType: !958, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1694, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1694, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1694, file: !35, line: 592, baseType: !456, size: 512, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1694, file: !35, line: 593, baseType: !254, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1694, file: !35, line: 594, baseType: !1283, size: 256, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1694, file: !35, line: 595, baseType: !665, size: 128, offset: 1408)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1694, file: !35, line: 596, baseType: !1721, size: 64, offset: 1536)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1694, file: !35, line: 597, baseType: !274, size: 32, offset: 1600)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1694, file: !35, line: 598, baseType: !274, size: 32, offset: 1632)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1694, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1694, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1694, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1694, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1694, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1694, file: !35, line: 604, baseType: !958, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1694, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1694, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1694, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1694, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1694, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1694, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1694, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1694, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1694, file: !35, line: 613, baseType: !118, size: 32, offset: 1792)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1694, file: !35, line: 614, baseType: !118, size: 32, offset: 1824)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1694, file: !35, line: 615, baseType: !254, size: 64, offset: 1856)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1694, file: !35, line: 616, baseType: !254, size: 64, offset: 1920)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1694, file: !35, line: 617, baseType: !254, size: 64, offset: 1984)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1694, file: !35, line: 618, baseType: !254, size: 64, offset: 2048)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1694, file: !35, line: 620, baseType: !1782, size: 64, offset: 2112)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1784)
!1784 = !{!1785, !1786, !1787, !1788}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1783, file: !35, line: 537, baseType: !92)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1783, file: !35, line: 538, baseType: !5, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1783, file: !35, line: 540, baseType: !79, size: 128, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1783, file: !35, line: 543, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1694, file: !35, line: 621, baseType: !1792, size: 64, offset: 2176)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1546, !618}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1694, file: !35, line: 622, baseType: !1796, size: 64, offset: 2240)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !71, file: !28, line: 486, baseType: !1799, size: 64, offset: 4096)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1801)
!1801 = !{!1802, !1803, !1804, !1808, !1809, !1810}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1800, file: !35, line: 643, baseType: !1574, size: 1472)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1800, file: !35, line: 644, baseType: !1577, size: 64, offset: 1472)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1800, file: !35, line: 645, baseType: !1805, size: 64, offset: 1536)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1546, !958}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1800, file: !35, line: 646, baseType: !1577, size: 64, offset: 1600)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1800, file: !35, line: 647, baseType: !1568, size: 64, offset: 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1800, file: !35, line: 648, baseType: !1568, size: 64, offset: 1728)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !71, file: !28, line: 493, baseType: !1812, size: 64, offset: 4160)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !71, file: !28, line: 499, baseType: !79, size: 128, offset: 4224)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !71, file: !28, line: 502, baseType: !1816, size: 64, offset: 4352)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1818)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !71, file: !28, line: 504, baseType: !1820, size: 64, offset: 4416)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !71, file: !28, line: 505, baseType: !254, size: 64, offset: 4480)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !71, file: !28, line: 510, baseType: !254, size: 64, offset: 4544)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !71, file: !28, line: 511, baseType: !1824, size: 64, offset: 4608)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !71, file: !28, line: 513, baseType: !1828, size: 64, offset: 4672)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1829, file: !28, line: 293, baseType: !5, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1829, file: !28, line: 294, baseType: !184, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !71, file: !28, line: 515, baseType: !79, size: 128, offset: 4736)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !71, file: !28, line: 526, baseType: !1835, offset: 4864)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1836, line: 5, elements: !106)
!1836 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !71, file: !28, line: 528, baseType: !1838, size: 64, offset: 4864)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1840, line: 14, flags: DIFlagFwdDecl)
!1840 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !71, file: !28, line: 529, baseType: !1842, size: 64, offset: 4928)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1605, line: 22, flags: DIFlagFwdDecl)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !71, file: !28, line: 534, baseType: !1845, size: 32, offset: 4992)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !50, line: 16, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !50, line: 13, baseType: !66)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !71, file: !28, line: 535, baseType: !66, size: 32, offset: 5024)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !71, file: !28, line: 537, baseType: !92, offset: 5056)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !71, file: !28, line: 538, baseType: !79, size: 128, offset: 5056)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !71, file: !28, line: 540, baseType: !1851, size: 64, offset: 5184)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1853, line: 54, size: 960, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856, !1857, !1858, !1859, !1860, !1861, !1865, !1869, !1870, !1871, !1872, !1876, !1880, !1881}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1852, file: !1853, line: 55, baseType: !57, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1852, file: !1853, line: 56, baseType: !1623, size: 64, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1852, file: !1853, line: 58, baseType: !188, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1852, file: !1853, line: 59, baseType: !188, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1852, file: !1853, line: 60, baseType: !85, size: 64, offset: 256)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1852, file: !1853, line: 62, baseType: !1559, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1852, file: !1853, line: 63, baseType: !1862, size: 64, offset: 384)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!134, !1546, !1566}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1852, file: !1853, line: 65, baseType: !1866, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1851}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1852, file: !1853, line: 66, baseType: !1568, size: 64, offset: 512)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1852, file: !1853, line: 68, baseType: !1577, size: 64, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1852, file: !1853, line: 70, baseType: !1332, size: 64, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1852, file: !1853, line: 71, baseType: !1873, size: 64, offset: 704)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1349, !1546}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1852, file: !1853, line: 73, baseType: !1877, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1546, !1369, !1375}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1852, file: !1853, line: 75, baseType: !1572, size: 64, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1852, file: !1853, line: 77, baseType: !1674, size: 64, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !71, file: !28, line: 541, baseType: !188, size: 64, offset: 5248)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !71, file: !28, line: 543, baseType: !1568, size: 64, offset: 5312)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !71, file: !28, line: 544, baseType: !1885, size: 64, offset: 5376)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !71, file: !28, line: 545, baseType: !1888, size: 64, offset: 5440)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !71, file: !28, line: 547, baseType: !958, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !71, file: !28, line: 548, baseType: !958, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !71, file: !28, line: 549, baseType: !958, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !71, file: !28, line: 550, baseType: !958, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nh_all", scope: !53, file: !54, line: 49, baseType: !1895, size: 64, offset: 5760)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !1896, line: 70, size: 64, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1895, file: !1896, line: 71, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1896, line: 54, size: 192, elements: !1901)
!1901 = !{!1902, !1907, !1908}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1900, file: !1896, line: 55, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1896, line: 51, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!118, !1899, !184, !208}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1900, file: !1896, line: 56, baseType: !1899, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1900, file: !1896, line: 57, baseType: !118, size: 32, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nh", scope: !53, file: !54, line: 50, baseType: !1910, size: 64, offset: 5824)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !53, file: !54, line: 51, baseType: !79, size: 128, offset: 5888)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "max_supported", scope: !53, file: !54, line: 52, baseType: !118, size: 32, offset: 6016)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !53, file: !54, line: 53, baseType: !92, offset: 6048)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !53, file: !54, line: 54, baseType: !66, size: 32, offset: 6048)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "extcon_dev_type", scope: !53, file: !54, line: 57, baseType: !1554, size: 384, offset: 6080)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cables", scope: !53, file: !54, line: 58, baseType: !1917, size: 64, offset: 6464)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_cable", file: !54, line: 58, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "attr_g_muex", scope: !53, file: !54, line: 61, baseType: !191, size: 320, offset: 6528)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "attrs_muex", scope: !53, file: !54, line: 62, baseType: !186, size: 64, offset: 6848)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "d_attrs_muex", scope: !53, file: !54, line: 63, baseType: !1922, size: 64, offset: 6912)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !28, line: 99, size: 256, elements: !1924)
!1924 = !{!1925, !1926, !1930}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1923, file: !28, line: 100, baseType: !171, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1923, file: !28, line: 101, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!165, !1546, !1922, !134}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1923, file: !28, line: 103, baseType: !1931, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!165, !1546, !1922, !57, !181}
!1934 = !{i32 7, !"Dwarf Version", i32 4}
!1935 = !{i32 2, !"Debug Info Version", i32 3}
!1936 = !{i32 1, !"wchar_size", i32 2}
!1937 = !{i32 1, !"Code Model", i32 2}
!1938 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1939 = distinct !DISubprogram(name: "devm_extcon_dev_allocate", scope: !1, file: !1, line: 65, type: !1940, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!52, !1546, !61}
!1942 = !DILocalVariable(name: "dev", arg: 1, scope: !1939, file: !1, line: 65, type: !1546)
!1943 = !DILocation(line: 65, column: 60, scope: !1939)
!1944 = !DILocalVariable(name: "supported_cable", arg: 2, scope: !1939, file: !1, line: 66, type: !61)
!1945 = !DILocation(line: 66, column: 26, scope: !1939)
!1946 = !DILocalVariable(name: "ptr", scope: !1939, file: !1, line: 68, type: !51)
!1947 = !DILocation(line: 68, column: 22, scope: !1939)
!1948 = !DILocalVariable(name: "edev", scope: !1939, file: !1, line: 68, type: !52)
!1949 = !DILocation(line: 68, column: 28, scope: !1939)
!1950 = !DILocation(line: 70, column: 8, scope: !1939)
!1951 = !DILocation(line: 70, column: 6, scope: !1939)
!1952 = !DILocation(line: 71, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 71, column: 6)
!1954 = !DILocation(line: 71, column: 6, scope: !1939)
!1955 = !DILocation(line: 72, column: 10, scope: !1953)
!1956 = !DILocation(line: 72, column: 3, scope: !1953)
!1957 = !DILocation(line: 74, column: 29, scope: !1939)
!1958 = !DILocation(line: 74, column: 9, scope: !1939)
!1959 = !DILocation(line: 74, column: 7, scope: !1939)
!1960 = !DILocation(line: 75, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 75, column: 6)
!1962 = !DILocation(line: 75, column: 6, scope: !1961)
!1963 = !DILocation(line: 75, column: 6, scope: !1939)
!1964 = !DILocation(line: 76, column: 15, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !1, line: 75, column: 20)
!1966 = !DILocation(line: 76, column: 3, scope: !1965)
!1967 = !DILocation(line: 77, column: 10, scope: !1965)
!1968 = !DILocation(line: 77, column: 3, scope: !1965)
!1969 = !DILocation(line: 80, column: 21, scope: !1939)
!1970 = !DILocation(line: 80, column: 2, scope: !1939)
!1971 = !DILocation(line: 80, column: 8, scope: !1939)
!1972 = !DILocation(line: 80, column: 12, scope: !1939)
!1973 = !DILocation(line: 80, column: 19, scope: !1939)
!1974 = !DILocation(line: 82, column: 9, scope: !1939)
!1975 = !DILocation(line: 82, column: 3, scope: !1939)
!1976 = !DILocation(line: 82, column: 7, scope: !1939)
!1977 = !DILocation(line: 83, column: 13, scope: !1939)
!1978 = !DILocation(line: 83, column: 18, scope: !1939)
!1979 = !DILocation(line: 83, column: 2, scope: !1939)
!1980 = !DILocation(line: 85, column: 9, scope: !1939)
!1981 = !DILocation(line: 85, column: 2, scope: !1939)
!1982 = !DILocation(line: 86, column: 1, scope: !1939)
!1983 = distinct !DISubprogram(name: "devres_alloc", scope: !28, file: !28, line: 178, type: !1984, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!208, !1986, !181, !49}
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !28, line: 165, baseType: !1987)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1546, !208}
!1990 = !DILocalVariable(name: "release", arg: 1, scope: !1983, file: !28, line: 178, type: !1986)
!1991 = !DILocation(line: 178, column: 47, scope: !1983)
!1992 = !DILocalVariable(name: "size", arg: 2, scope: !1983, file: !28, line: 178, type: !181)
!1993 = !DILocation(line: 178, column: 63, scope: !1983)
!1994 = !DILocalVariable(name: "gfp", arg: 3, scope: !1983, file: !28, line: 178, type: !49)
!1995 = !DILocation(line: 178, column: 75, scope: !1983)
!1996 = !DILocation(line: 180, column: 27, scope: !1983)
!1997 = !DILocation(line: 180, column: 36, scope: !1983)
!1998 = !DILocation(line: 180, column: 42, scope: !1983)
!1999 = !DILocation(line: 180, column: 9, scope: !1983)
!2000 = !DILocation(line: 180, column: 2, scope: !1983)
!2001 = distinct !DISubprogram(name: "devm_extcon_dev_release", scope: !1, file: !1, line: 21, type: !1988, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2002 = !DILocalVariable(name: "dev", arg: 1, scope: !2001, file: !1, line: 21, type: !1546)
!2003 = !DILocation(line: 21, column: 52, scope: !2001)
!2004 = !DILocalVariable(name: "res", arg: 2, scope: !2001, file: !1, line: 21, type: !208)
!2005 = !DILocation(line: 21, column: 63, scope: !2001)
!2006 = !DILocation(line: 23, column: 41, scope: !2001)
!2007 = !DILocation(line: 23, column: 19, scope: !2001)
!2008 = !DILocation(line: 23, column: 18, scope: !2001)
!2009 = !DILocation(line: 23, column: 2, scope: !2001)
!2010 = !DILocation(line: 24, column: 1, scope: !2001)
!2011 = distinct !DISubprogram(name: "ERR_PTR", scope: !2012, file: !2012, line: 24, type: !2013, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2012 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!208, !169}
!2015 = !DILocalVariable(name: "error", arg: 1, scope: !2011, file: !2012, line: 24, type: !169)
!2016 = !DILocation(line: 24, column: 48, scope: !2011)
!2017 = !DILocation(line: 26, column: 18, scope: !2011)
!2018 = !DILocation(line: 26, column: 9, scope: !2011)
!2019 = !DILocation(line: 26, column: 2, scope: !2011)
!2020 = distinct !DISubprogram(name: "IS_ERR", scope: !2012, file: !2012, line: 34, type: !2021, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!958, !1349}
!2023 = !DILocalVariable(name: "ptr", arg: 1, scope: !2020, file: !2012, line: 34, type: !1349)
!2024 = !DILocation(line: 34, column: 60, scope: !2020)
!2025 = !DILocation(line: 36, column: 9, scope: !2020)
!2026 = !DILocation(line: 36, column: 2, scope: !2020)
!2027 = distinct !DISubprogram(name: "devm_extcon_dev_free", scope: !1, file: !1, line: 97, type: !2028, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !1546, !52}
!2030 = !DILocalVariable(name: "dev", arg: 1, scope: !2027, file: !1, line: 97, type: !1546)
!2031 = !DILocation(line: 97, column: 42, scope: !2027)
!2032 = !DILocalVariable(name: "edev", arg: 2, scope: !2027, file: !1, line: 97, type: !52)
!2033 = !DILocation(line: 97, column: 66, scope: !2027)
!2034 = !DILocalVariable(name: "__ret_warn_on", scope: !2035, file: !1, line: 99, type: !118)
!2035 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 99, column: 2)
!2036 = !DILocation(line: 99, column: 2, scope: !2035)
!2037 = !DILocation(line: 99, column: 2, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 99, column: 2)
!2039 = !DILocation(line: 99, column: 2, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 99, column: 2)
!2041 = !DILocation(line: 99, column: 2, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 99, column: 2)
!2043 = !DILocation(line: 99, column: 2, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 99, column: 2)
!2045 = !{i32 -2143794094, i32 -2143794065, i32 -2143794019, i32 -2143793961, i32 -2143793907, i32 -2143793853, i32 -2143793798, i32 -2143793767}
!2046 = !DILocation(line: 99, column: 2, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 99, column: 2)
!2048 = !{i32 -2143793362, i32 -2143793355, i32 -2143793303, i32 -2143793272, i32 -2143793242}
!2049 = !DILocation(line: 99, column: 2, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2040, file: !1, line: 99, column: 2)
!2051 = !DILocation(line: 101, column: 1, scope: !2027)
!2052 = distinct !DISubprogram(name: "devm_extcon_dev_match", scope: !1, file: !1, line: 11, type: !2053, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!118, !1546, !208, !208}
!2055 = !DILocalVariable(name: "dev", arg: 1, scope: !2052, file: !1, line: 11, type: !1546)
!2056 = !DILocation(line: 11, column: 49, scope: !2052)
!2057 = !DILocalVariable(name: "res", arg: 2, scope: !2052, file: !1, line: 11, type: !208)
!2058 = !DILocation(line: 11, column: 60, scope: !2052)
!2059 = !DILocalVariable(name: "data", arg: 3, scope: !2052, file: !1, line: 11, type: !208)
!2060 = !DILocation(line: 11, column: 71, scope: !2052)
!2061 = !DILocalVariable(name: "r", scope: !2052, file: !1, line: 13, type: !51)
!2062 = !DILocation(line: 13, column: 22, scope: !2052)
!2063 = !DILocation(line: 13, column: 26, scope: !2052)
!2064 = !DILocalVariable(name: "__ret_warn_on", scope: !2065, file: !1, line: 15, type: !118)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !1, line: 15, column: 6)
!2066 = distinct !DILexicalBlock(scope: !2052, file: !1, line: 15, column: 6)
!2067 = !DILocation(line: 15, column: 6, scope: !2065)
!2068 = !DILocation(line: 15, column: 6, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !1, line: 15, column: 6)
!2070 = !DILocation(line: 15, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 15, column: 6)
!2072 = !DILocation(line: 15, column: 6, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 15, column: 6)
!2074 = !DILocation(line: 15, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 15, column: 6)
!2076 = !{i32 -2143795899, i32 -2143795870, i32 -2143795824, i32 -2143795766, i32 -2143795712, i32 -2143795658, i32 -2143795603, i32 -2143795572}
!2077 = !DILocation(line: 15, column: 6, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 15, column: 6)
!2079 = !{i32 -2143795168, i32 -2143795161, i32 -2143795109, i32 -2143795078, i32 -2143795048}
!2080 = !DILocation(line: 15, column: 6, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2071, file: !1, line: 15, column: 6)
!2082 = !DILocation(line: 15, column: 6, scope: !2066)
!2083 = !DILocation(line: 15, column: 6, scope: !2052)
!2084 = !DILocation(line: 16, column: 3, scope: !2066)
!2085 = !DILocation(line: 18, column: 10, scope: !2052)
!2086 = !DILocation(line: 18, column: 9, scope: !2052)
!2087 = !DILocation(line: 18, column: 15, scope: !2052)
!2088 = !DILocation(line: 18, column: 12, scope: !2052)
!2089 = !DILocation(line: 18, column: 2, scope: !2052)
!2090 = !DILocation(line: 19, column: 1, scope: !2052)
!2091 = distinct !DISubprogram(name: "devm_extcon_dev_register", scope: !1, file: !1, line: 118, type: !2092, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!118, !1546, !52}
!2094 = !DILocalVariable(name: "dev", arg: 1, scope: !2091, file: !1, line: 118, type: !1546)
!2095 = !DILocation(line: 118, column: 45, scope: !2091)
!2096 = !DILocalVariable(name: "edev", arg: 2, scope: !2091, file: !1, line: 118, type: !52)
!2097 = !DILocation(line: 118, column: 69, scope: !2091)
!2098 = !DILocalVariable(name: "ptr", scope: !2091, file: !1, line: 120, type: !51)
!2099 = !DILocation(line: 120, column: 22, scope: !2091)
!2100 = !DILocalVariable(name: "ret", scope: !2091, file: !1, line: 121, type: !118)
!2101 = !DILocation(line: 121, column: 6, scope: !2091)
!2102 = !DILocation(line: 123, column: 8, scope: !2091)
!2103 = !DILocation(line: 123, column: 6, scope: !2091)
!2104 = !DILocation(line: 124, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 124, column: 6)
!2106 = !DILocation(line: 124, column: 6, scope: !2091)
!2107 = !DILocation(line: 125, column: 3, scope: !2105)
!2108 = !DILocation(line: 127, column: 28, scope: !2091)
!2109 = !DILocation(line: 127, column: 8, scope: !2091)
!2110 = !DILocation(line: 127, column: 6, scope: !2091)
!2111 = !DILocation(line: 128, column: 6, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2091, file: !1, line: 128, column: 6)
!2113 = !DILocation(line: 128, column: 6, scope: !2091)
!2114 = !DILocation(line: 129, column: 15, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !1, line: 128, column: 11)
!2116 = !DILocation(line: 129, column: 3, scope: !2115)
!2117 = !DILocation(line: 130, column: 10, scope: !2115)
!2118 = !DILocation(line: 130, column: 3, scope: !2115)
!2119 = !DILocation(line: 133, column: 9, scope: !2091)
!2120 = !DILocation(line: 133, column: 3, scope: !2091)
!2121 = !DILocation(line: 133, column: 7, scope: !2091)
!2122 = !DILocation(line: 134, column: 13, scope: !2091)
!2123 = !DILocation(line: 134, column: 18, scope: !2091)
!2124 = !DILocation(line: 134, column: 2, scope: !2091)
!2125 = !DILocation(line: 136, column: 2, scope: !2091)
!2126 = !DILocation(line: 137, column: 1, scope: !2091)
!2127 = distinct !DISubprogram(name: "devm_extcon_dev_unreg", scope: !1, file: !1, line: 27, type: !1988, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2128 = !DILocalVariable(name: "dev", arg: 1, scope: !2127, file: !1, line: 27, type: !1546)
!2129 = !DILocation(line: 27, column: 50, scope: !2127)
!2130 = !DILocalVariable(name: "res", arg: 2, scope: !2127, file: !1, line: 27, type: !208)
!2131 = !DILocation(line: 27, column: 61, scope: !2127)
!2132 = !DILocation(line: 29, column: 47, scope: !2127)
!2133 = !DILocation(line: 29, column: 25, scope: !2127)
!2134 = !DILocation(line: 29, column: 24, scope: !2127)
!2135 = !DILocation(line: 29, column: 2, scope: !2127)
!2136 = !DILocation(line: 30, column: 1, scope: !2127)
!2137 = distinct !DISubprogram(name: "devm_extcon_dev_unregister", scope: !1, file: !1, line: 148, type: !2028, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2138 = !DILocalVariable(name: "dev", arg: 1, scope: !2137, file: !1, line: 148, type: !1546)
!2139 = !DILocation(line: 148, column: 48, scope: !2137)
!2140 = !DILocalVariable(name: "edev", arg: 2, scope: !2137, file: !1, line: 148, type: !52)
!2141 = !DILocation(line: 148, column: 72, scope: !2137)
!2142 = !DILocalVariable(name: "__ret_warn_on", scope: !2143, file: !1, line: 150, type: !118)
!2143 = distinct !DILexicalBlock(scope: !2137, file: !1, line: 150, column: 2)
!2144 = !DILocation(line: 150, column: 2, scope: !2143)
!2145 = !DILocation(line: 150, column: 2, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !1, line: 150, column: 2)
!2147 = !DILocation(line: 150, column: 2, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 150, column: 2)
!2149 = !DILocation(line: 150, column: 2, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 150, column: 2)
!2151 = !DILocation(line: 150, column: 2, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 150, column: 2)
!2153 = !{i32 -2143792183, i32 -2143792154, i32 -2143792108, i32 -2143792050, i32 -2143791996, i32 -2143791942, i32 -2143791887, i32 -2143791856}
!2154 = !DILocation(line: 150, column: 2, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 150, column: 2)
!2156 = !{i32 -2143791451, i32 -2143791444, i32 -2143791392, i32 -2143791361, i32 -2143791331}
!2157 = !DILocation(line: 150, column: 2, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2148, file: !1, line: 150, column: 2)
!2159 = !DILocation(line: 152, column: 1, scope: !2137)
!2160 = distinct !DISubprogram(name: "devm_extcon_register_notifier", scope: !1, file: !1, line: 172, type: !2161, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!118, !1546, !52, !5, !1899}
!2163 = !DILocalVariable(name: "dev", arg: 1, scope: !2160, file: !1, line: 172, type: !1546)
!2164 = !DILocation(line: 172, column: 50, scope: !2160)
!2165 = !DILocalVariable(name: "edev", arg: 2, scope: !2160, file: !1, line: 172, type: !52)
!2166 = !DILocation(line: 172, column: 74, scope: !2160)
!2167 = !DILocalVariable(name: "id", arg: 3, scope: !2160, file: !1, line: 173, type: !5)
!2168 = !DILocation(line: 173, column: 18, scope: !2160)
!2169 = !DILocalVariable(name: "nb", arg: 4, scope: !2160, file: !1, line: 173, type: !1899)
!2170 = !DILocation(line: 173, column: 45, scope: !2160)
!2171 = !DILocalVariable(name: "ptr", scope: !2160, file: !1, line: 175, type: !2172)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev_notifier_devres", file: !1, line: 32, size: 192, elements: !2174)
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !2173, file: !1, line: 33, baseType: !52, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2173, file: !1, line: 34, baseType: !5, size: 32, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !2173, file: !1, line: 35, baseType: !1899, size: 64, offset: 128)
!2178 = !DILocation(line: 175, column: 37, scope: !2160)
!2179 = !DILocalVariable(name: "ret", scope: !2160, file: !1, line: 176, type: !118)
!2180 = !DILocation(line: 176, column: 6, scope: !2160)
!2181 = !DILocation(line: 178, column: 8, scope: !2160)
!2182 = !DILocation(line: 178, column: 6, scope: !2160)
!2183 = !DILocation(line: 180, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 180, column: 6)
!2185 = !DILocation(line: 180, column: 6, scope: !2160)
!2186 = !DILocation(line: 181, column: 3, scope: !2184)
!2187 = !DILocation(line: 183, column: 33, scope: !2160)
!2188 = !DILocation(line: 183, column: 39, scope: !2160)
!2189 = !DILocation(line: 183, column: 43, scope: !2160)
!2190 = !DILocation(line: 183, column: 8, scope: !2160)
!2191 = !DILocation(line: 183, column: 6, scope: !2160)
!2192 = !DILocation(line: 184, column: 6, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 184, column: 6)
!2194 = !DILocation(line: 184, column: 6, scope: !2160)
!2195 = !DILocation(line: 185, column: 15, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !1, line: 184, column: 11)
!2197 = !DILocation(line: 185, column: 3, scope: !2196)
!2198 = !DILocation(line: 186, column: 10, scope: !2196)
!2199 = !DILocation(line: 186, column: 3, scope: !2196)
!2200 = !DILocation(line: 189, column: 14, scope: !2160)
!2201 = !DILocation(line: 189, column: 2, scope: !2160)
!2202 = !DILocation(line: 189, column: 7, scope: !2160)
!2203 = !DILocation(line: 189, column: 12, scope: !2160)
!2204 = !DILocation(line: 190, column: 12, scope: !2160)
!2205 = !DILocation(line: 190, column: 2, scope: !2160)
!2206 = !DILocation(line: 190, column: 7, scope: !2160)
!2207 = !DILocation(line: 190, column: 10, scope: !2160)
!2208 = !DILocation(line: 191, column: 12, scope: !2160)
!2209 = !DILocation(line: 191, column: 2, scope: !2160)
!2210 = !DILocation(line: 191, column: 7, scope: !2160)
!2211 = !DILocation(line: 191, column: 10, scope: !2160)
!2212 = !DILocation(line: 192, column: 13, scope: !2160)
!2213 = !DILocation(line: 192, column: 18, scope: !2160)
!2214 = !DILocation(line: 192, column: 2, scope: !2160)
!2215 = !DILocation(line: 194, column: 2, scope: !2160)
!2216 = !DILocation(line: 195, column: 1, scope: !2160)
!2217 = distinct !DISubprogram(name: "devm_extcon_dev_notifier_unreg", scope: !1, file: !1, line: 38, type: !1988, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2218 = !DILocalVariable(name: "dev", arg: 1, scope: !2217, file: !1, line: 38, type: !1546)
!2219 = !DILocation(line: 38, column: 59, scope: !2217)
!2220 = !DILocalVariable(name: "res", arg: 2, scope: !2217, file: !1, line: 38, type: !208)
!2221 = !DILocation(line: 38, column: 70, scope: !2217)
!2222 = !DILocalVariable(name: "this", scope: !2217, file: !1, line: 40, type: !2172)
!2223 = !DILocation(line: 40, column: 37, scope: !2217)
!2224 = !DILocation(line: 40, column: 44, scope: !2217)
!2225 = !DILocation(line: 42, column: 29, scope: !2217)
!2226 = !DILocation(line: 42, column: 35, scope: !2217)
!2227 = !DILocation(line: 42, column: 41, scope: !2217)
!2228 = !DILocation(line: 42, column: 47, scope: !2217)
!2229 = !DILocation(line: 42, column: 51, scope: !2217)
!2230 = !DILocation(line: 42, column: 57, scope: !2217)
!2231 = !DILocation(line: 42, column: 2, scope: !2217)
!2232 = !DILocation(line: 43, column: 1, scope: !2217)
!2233 = distinct !DISubprogram(name: "devm_extcon_unregister_notifier", scope: !1, file: !1, line: 206, type: !2234, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !1546, !52, !5, !1899}
!2236 = !DILocalVariable(name: "dev", arg: 1, scope: !2233, file: !1, line: 206, type: !1546)
!2237 = !DILocation(line: 206, column: 53, scope: !2233)
!2238 = !DILocalVariable(name: "edev", arg: 2, scope: !2233, file: !1, line: 207, type: !52)
!2239 = !DILocation(line: 207, column: 24, scope: !2233)
!2240 = !DILocalVariable(name: "id", arg: 3, scope: !2233, file: !1, line: 207, type: !5)
!2241 = !DILocation(line: 207, column: 43, scope: !2233)
!2242 = !DILocalVariable(name: "nb", arg: 4, scope: !2233, file: !1, line: 208, type: !1899)
!2243 = !DILocation(line: 208, column: 28, scope: !2233)
!2244 = !DILocalVariable(name: "__ret_warn_on", scope: !2245, file: !1, line: 210, type: !118)
!2245 = distinct !DILexicalBlock(scope: !2233, file: !1, line: 210, column: 2)
!2246 = !DILocation(line: 210, column: 2, scope: !2245)
!2247 = !DILocation(line: 210, column: 2, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 210, column: 2)
!2249 = !DILocation(line: 210, column: 2, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 210, column: 2)
!2251 = !DILocation(line: 210, column: 2, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 210, column: 2)
!2253 = !DILocation(line: 210, column: 2, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 210, column: 2)
!2255 = !{i32 -2143790249, i32 -2143790220, i32 -2143790174, i32 -2143790116, i32 -2143790062, i32 -2143790008, i32 -2143789953, i32 -2143789922}
!2256 = !DILocation(line: 210, column: 2, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 210, column: 2)
!2258 = !{i32 -2143789517, i32 -2143789510, i32 -2143789458, i32 -2143789427, i32 -2143789397}
!2259 = !DILocation(line: 210, column: 2, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2250, file: !1, line: 210, column: 2)
!2261 = !DILocation(line: 212, column: 1, scope: !2233)
!2262 = distinct !DISubprogram(name: "devm_extcon_register_notifier_all", scope: !1, file: !1, line: 228, type: !2263, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!118, !1546, !52, !1899}
!2265 = !DILocalVariable(name: "dev", arg: 1, scope: !2262, file: !1, line: 228, type: !1546)
!2266 = !DILocation(line: 228, column: 54, scope: !2262)
!2267 = !DILocalVariable(name: "edev", arg: 2, scope: !2262, file: !1, line: 228, type: !52)
!2268 = !DILocation(line: 228, column: 78, scope: !2262)
!2269 = !DILocalVariable(name: "nb", arg: 3, scope: !2262, file: !1, line: 229, type: !1899)
!2270 = !DILocation(line: 229, column: 28, scope: !2262)
!2271 = !DILocalVariable(name: "ptr", scope: !2262, file: !1, line: 231, type: !2172)
!2272 = !DILocation(line: 231, column: 37, scope: !2262)
!2273 = !DILocalVariable(name: "ret", scope: !2262, file: !1, line: 232, type: !118)
!2274 = !DILocation(line: 232, column: 6, scope: !2262)
!2275 = !DILocation(line: 234, column: 8, scope: !2262)
!2276 = !DILocation(line: 234, column: 6, scope: !2262)
!2277 = !DILocation(line: 236, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 236, column: 6)
!2279 = !DILocation(line: 236, column: 6, scope: !2262)
!2280 = !DILocation(line: 237, column: 3, scope: !2278)
!2281 = !DILocation(line: 239, column: 37, scope: !2262)
!2282 = !DILocation(line: 239, column: 43, scope: !2262)
!2283 = !DILocation(line: 239, column: 8, scope: !2262)
!2284 = !DILocation(line: 239, column: 6, scope: !2262)
!2285 = !DILocation(line: 240, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2262, file: !1, line: 240, column: 6)
!2287 = !DILocation(line: 240, column: 6, scope: !2262)
!2288 = !DILocation(line: 241, column: 15, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 240, column: 11)
!2290 = !DILocation(line: 241, column: 3, scope: !2289)
!2291 = !DILocation(line: 242, column: 10, scope: !2289)
!2292 = !DILocation(line: 242, column: 3, scope: !2289)
!2293 = !DILocation(line: 245, column: 14, scope: !2262)
!2294 = !DILocation(line: 245, column: 2, scope: !2262)
!2295 = !DILocation(line: 245, column: 7, scope: !2262)
!2296 = !DILocation(line: 245, column: 12, scope: !2262)
!2297 = !DILocation(line: 246, column: 12, scope: !2262)
!2298 = !DILocation(line: 246, column: 2, scope: !2262)
!2299 = !DILocation(line: 246, column: 7, scope: !2262)
!2300 = !DILocation(line: 246, column: 10, scope: !2262)
!2301 = !DILocation(line: 247, column: 13, scope: !2262)
!2302 = !DILocation(line: 247, column: 18, scope: !2262)
!2303 = !DILocation(line: 247, column: 2, scope: !2262)
!2304 = !DILocation(line: 249, column: 2, scope: !2262)
!2305 = !DILocation(line: 250, column: 1, scope: !2262)
!2306 = distinct !DISubprogram(name: "devm_extcon_dev_notifier_all_unreg", scope: !1, file: !1, line: 45, type: !1988, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2307 = !DILocalVariable(name: "dev", arg: 1, scope: !2306, file: !1, line: 45, type: !1546)
!2308 = !DILocation(line: 45, column: 63, scope: !2306)
!2309 = !DILocalVariable(name: "res", arg: 2, scope: !2306, file: !1, line: 45, type: !208)
!2310 = !DILocation(line: 45, column: 74, scope: !2306)
!2311 = !DILocalVariable(name: "this", scope: !2306, file: !1, line: 47, type: !2172)
!2312 = !DILocation(line: 47, column: 37, scope: !2306)
!2313 = !DILocation(line: 47, column: 44, scope: !2306)
!2314 = !DILocation(line: 49, column: 33, scope: !2306)
!2315 = !DILocation(line: 49, column: 39, scope: !2306)
!2316 = !DILocation(line: 49, column: 45, scope: !2306)
!2317 = !DILocation(line: 49, column: 51, scope: !2306)
!2318 = !DILocation(line: 49, column: 2, scope: !2306)
!2319 = !DILocation(line: 50, column: 1, scope: !2306)
!2320 = distinct !DISubprogram(name: "devm_extcon_unregister_notifier_all", scope: !1, file: !1, line: 260, type: !2321, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !106)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !1546, !52, !1899}
!2323 = !DILocalVariable(name: "dev", arg: 1, scope: !2320, file: !1, line: 260, type: !1546)
!2324 = !DILocation(line: 260, column: 57, scope: !2320)
!2325 = !DILocalVariable(name: "edev", arg: 2, scope: !2320, file: !1, line: 261, type: !52)
!2326 = !DILocation(line: 261, column: 24, scope: !2320)
!2327 = !DILocalVariable(name: "nb", arg: 3, scope: !2320, file: !1, line: 262, type: !1899)
!2328 = !DILocation(line: 262, column: 28, scope: !2320)
!2329 = !DILocalVariable(name: "__ret_warn_on", scope: !2330, file: !1, line: 264, type: !118)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 264, column: 2)
!2331 = !DILocation(line: 264, column: 2, scope: !2330)
!2332 = !DILocation(line: 264, column: 2, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 264, column: 2)
!2334 = !DILocation(line: 264, column: 2, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2333, file: !1, line: 264, column: 2)
!2336 = !DILocation(line: 264, column: 2, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 264, column: 2)
!2338 = !DILocation(line: 264, column: 2, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 264, column: 2)
!2340 = !{i32 -2143788301, i32 -2143788272, i32 -2143788226, i32 -2143788168, i32 -2143788114, i32 -2143788060, i32 -2143788005, i32 -2143787974}
!2341 = !DILocation(line: 264, column: 2, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 264, column: 2)
!2343 = !{i32 -2143787569, i32 -2143787562, i32 -2143787510, i32 -2143787479, i32 -2143787449}
!2344 = !DILocation(line: 264, column: 2, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 264, column: 2)
!2346 = !DILocation(line: 266, column: 1, scope: !2320)
