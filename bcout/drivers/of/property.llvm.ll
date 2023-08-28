; ModuleID = '../bcout/drivers/of/property.llvm.bc'
source_filename = "drivers/of/property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
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
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.supplier_bindings = type { %struct.device_node* (%struct.device_node*, i8*, i32)* }
%struct.of_endpoint = type { i32, i32, %struct.device_node* }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.device_link = type { %struct.device*, %struct.list_head, %struct.device*, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.callback_head, i8 }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013OF: size of %s in node %pOF is not a multiple of %d\0A\00", align 1
@of_graph_parse_endpoint.__warned = internal global i8 0, section ".data.once", align 1, !dbg !0
@.str.3 = private unnamed_addr constant [40 x i8] c"%s(): endpoint %pOF has no parent node\0A\00", align 1
@__func__.of_graph_parse_endpoint = private unnamed_addr constant [24 x i8] c"of_graph_parse_endpoint\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"drivers/of/property.c\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\013OF: graph: no port node found in %pOF\0A\00", align 1
@of_graph_get_next_endpoint.__warned = internal global i8 0, section ".data.once", align 1, !dbg !2037
@__func__.of_graph_get_next_endpoint = private unnamed_addr constant [27 x i8] c"of_graph_get_next_endpoint\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@of_fwnode_ops = dso_local constant %struct.fwnode_operations { %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_get, void (%struct.fwnode_handle*)* @of_fwnode_put, i1 (%struct.fwnode_handle*)* @of_fwnode_device_is_available, i8* (%struct.fwnode_handle*, %struct.device*)* @of_fwnode_device_get_match_data, i1 (%struct.fwnode_handle*, i8*)* @of_fwnode_property_present, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @of_fwnode_property_read_int_array, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* @of_fwnode_property_read_string_array, i8* (%struct.fwnode_handle*)* @of_fwnode_get_name, i8* (%struct.fwnode_handle*)* @of_fwnode_get_name_prefix, %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_get_parent, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @of_fwnode_get_next_child_node, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* @of_fwnode_get_named_child_node, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @of_fwnode_get_reference_args, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @of_fwnode_graph_get_next_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_graph_get_remote_endpoint, %struct.fwnode_handle* (%struct.fwnode_handle*)* @of_fwnode_graph_get_port_parent, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* @of_fwnode_graph_parse_endpoint, i32 (%struct.fwnode_handle*, %struct.device*)* @of_fwnode_add_links }, align 8, !dbg !2042
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@of_supplier_bindings = internal constant [28 x %struct.supplier_bindings] [%struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_clocks }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_interconnects }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_iommus }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_iommu_maps }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_mboxes }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_io_channels }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_interrupt_parent }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_dmas }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_power_domains }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_hwlocks }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_extcon }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_interrupts_extended }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_nvmem_cells }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_phys }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_wakeup_parent }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl0 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl1 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl2 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl3 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl4 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl5 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl6 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl7 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_pinctrl8 }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_regulators }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_gpio }, %struct.supplier_bindings { %struct.device_node* (%struct.device_node*, i8*, i32)* @parse_gpios }, %struct.supplier_bindings zeroinitializer], align 16, !dbg !2044
@.str.10 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"iommu-map\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"io-channel\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"#io-channel-cells\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"hwlocks\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"#hwlock-cells\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"wakeup-parent\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"pinctrl-0\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"pinctrl-1\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"pinctrl-2\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"pinctrl-3\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"pinctrl-4\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"pinctrl-5\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"pinctrl-6\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"pinctrl-7\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"pinctrl-8\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"-supply\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"-gpio\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"-gpios\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @of_graph_is_present(%struct.device_node* %node) #0 !dbg !2061 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %ports = alloca %struct.device_node*, align 8
  %port = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2064, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.declare(metadata %struct.device_node** %ports, metadata !2066, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.declare(metadata %struct.device_node** %port, metadata !2068, metadata !DIExpression()), !dbg !2069
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2070
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !2071
  store %struct.device_node* %call, %struct.device_node** %ports, align 8, !dbg !2072
  %1 = load %struct.device_node*, %struct.device_node** %ports, align 8, !dbg !2073
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2073
  br i1 %tobool, label %if.then, label %if.end, !dbg !2075

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %ports, align 8, !dbg !2076
  store %struct.device_node* %2, %struct.device_node** %node.addr, align 8, !dbg !2077
  br label %if.end, !dbg !2078

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2079
  %call1 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !2080
  store %struct.device_node* %call1, %struct.device_node** %port, align 8, !dbg !2081
  %4 = load %struct.device_node*, %struct.device_node** %ports, align 8, !dbg !2082
  call void @of_node_put(%struct.device_node* %4) #7, !dbg !2083
  %5 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !2084
  call void @of_node_put(%struct.device_node* %5) #7, !dbg !2085
  %6 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !2086
  %tobool2 = icmp ne %struct.device_node* %6, null, !dbg !2087
  %lnot = xor i1 %tobool2, true, !dbg !2087
  %lnot3 = xor i1 %lnot, true, !dbg !2088
  ret i1 %lnot3, !dbg !2089
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2090 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2093, metadata !DIExpression()), !dbg !2094
  ret void, !dbg !2095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_count_elems_of_size(%struct.device_node* %np, i8* %propname, i32 %elem_size) #0 !dbg !2096 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %elem_size.addr = alloca i32, align 4
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2099, metadata !DIExpression()), !dbg !2100
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2101, metadata !DIExpression()), !dbg !2102
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !2103, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2105, metadata !DIExpression()), !dbg !2106
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2107
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2108
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !2109
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2106
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2110
  %tobool = icmp ne %struct.property* %2, null, !dbg !2110
  br i1 %tobool, label %if.end, label %if.then, !dbg !2112

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2113
  br label %return, !dbg !2113

if.end:                                           ; preds = %entry
  %3 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2114
  %value = getelementptr inbounds %struct.property, %struct.property* %3, i32 0, i32 2, !dbg !2116
  %4 = load i8*, i8** %value, align 8, !dbg !2116
  %tobool1 = icmp ne i8* %4, null, !dbg !2114
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2117

if.then2:                                         ; preds = %if.end
  store i32 -61, i32* %retval, align 4, !dbg !2118
  br label %return, !dbg !2118

if.end3:                                          ; preds = %if.end
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2119
  %length = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 1, !dbg !2121
  %6 = load i32, i32* %length, align 8, !dbg !2121
  %7 = load i32, i32* %elem_size.addr, align 4, !dbg !2122
  %rem = srem i32 %6, %7, !dbg !2123
  %cmp = icmp ne i32 %rem, 0, !dbg !2124
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2125

if.then4:                                         ; preds = %if.end3
  %8 = load i8*, i8** %propname.addr, align 8, !dbg !2126
  %9 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2126
  %10 = load i32, i32* %elem_size.addr, align 4, !dbg !2126
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %8, %struct.device_node* %9, i32 %10) #8, !dbg !2126
  store i32 -22, i32* %retval, align 4, !dbg !2128
  br label %return, !dbg !2128

if.end6:                                          ; preds = %if.end3
  %11 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2129
  %length7 = getelementptr inbounds %struct.property, %struct.property* %11, i32 0, i32 1, !dbg !2130
  %12 = load i32, i32* %length7, align 8, !dbg !2130
  %13 = load i32, i32* %elem_size.addr, align 4, !dbg !2131
  %div = sdiv i32 %12, %13, !dbg !2132
  store i32 %div, i32* %retval, align 4, !dbg !2133
  br label %return, !dbg !2133

return:                                           ; preds = %if.end6, %if.then4, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2134
  ret i32 %14, !dbg !2134
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_u32_index(%struct.device_node* %np, i8* %propname, i32 %index, i32* %out_value) #0 !dbg !2135 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !2138, metadata !DIExpression()), !dbg !2145
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !2154, metadata !DIExpression()), !dbg !2155
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %out_value.addr = alloca i32*, align 8
  %val = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2156, metadata !DIExpression()), !dbg !2157
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2158, metadata !DIExpression()), !dbg !2159
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2160, metadata !DIExpression()), !dbg !2161
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2162, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.declare(metadata i32** %val, metadata !2164, metadata !DIExpression()), !dbg !2167
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2168
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2169
  %2 = load i32, i32* %index.addr, align 4, !dbg !2170
  %add = add i32 %2, 1, !dbg !2171
  %conv = zext i32 %add to i64, !dbg !2172
  %mul = mul i64 %conv, 4, !dbg !2173
  %conv1 = trunc i64 %mul to i32, !dbg !2174
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 %conv1, i32 0, i64* null) #7, !dbg !2175
  %3 = bitcast i8* %call to i32*, !dbg !2175
  store i32* %3, i32** %val, align 8, !dbg !2167
  %4 = load i32*, i32** %val, align 8, !dbg !2176
  %5 = bitcast i32* %4 to i8*, !dbg !2176
  %call2 = call zeroext i1 @IS_ERR(i8* %5) #7, !dbg !2178
  br i1 %call2, label %if.then, label %if.end, !dbg !2179

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %val, align 8, !dbg !2180
  %7 = bitcast i32* %6 to i8*, !dbg !2180
  %call3 = call i64 @PTR_ERR(i8* %7) #7, !dbg !2181
  %conv4 = trunc i64 %call3 to i32, !dbg !2181
  store i32 %conv4, i32* %retval, align 4, !dbg !2182
  br label %return, !dbg !2182

if.end:                                           ; preds = %entry
  %8 = load i32*, i32** %val, align 8, !dbg !2183
  %9 = load i32, i32* %index.addr, align 4, !dbg !2184
  %idx.ext = zext i32 %9 to i64, !dbg !2185
  %add.ptr = getelementptr i32, i32* %8, i64 %idx.ext, !dbg !2185
  store i32* %add.ptr, i32** %p.addr.i, align 8
  %10 = load i32*, i32** %p.addr.i, align 8, !dbg !2186
  store i32* %10, i32** %p.addr.i.i, align 8
  %11 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2187
  %12 = load i32, i32* %11, align 4, !dbg !2187
  %13 = call i1 @llvm.is.constant.i32(i32 %12) #9, !dbg !2187
  br i1 %13, label %cond.true.i.i, label %cond.false.i.i, !dbg !2187

cond.true.i.i:                                    ; preds = %if.end
  %14 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2187
  %15 = load i32, i32* %14, align 4, !dbg !2187
  %and.i.i = and i32 %15, 255, !dbg !2187
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !2187
  %16 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2187
  %17 = load i32, i32* %16, align 4, !dbg !2187
  %and1.i.i = and i32 %17, 65280, !dbg !2187
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !2187
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !2187
  %18 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2187
  %19 = load i32, i32* %18, align 4, !dbg !2187
  %and3.i.i = and i32 %19, 16711680, !dbg !2187
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !2187
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !2187
  %20 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2187
  %21 = load i32, i32* %20, align 4, !dbg !2187
  %and5.i.i = and i32 %21, -16777216, !dbg !2187
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !2187
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !2187
  br label %__be32_to_cpup.exit, !dbg !2187

cond.false.i.i:                                   ; preds = %if.end
  %22 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2187
  %23 = load i32, i32* %22, align 4, !dbg !2187
  %call.i.i = call i32 @__fswab32(i32 %23) #10, !dbg !2187
  br label %__be32_to_cpup.exit, !dbg !2187

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !2187
  %24 = load i32*, i32** %out_value.addr, align 8, !dbg !2188
  store i32 %cond.i.i, i32* %24, align 4, !dbg !2189
  store i32 0, i32* %retval, align 4, !dbg !2190
  br label %return, !dbg !2190

return:                                           ; preds = %__be32_to_cpup.exit, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2191
  ret i32 %25, !dbg !2191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_find_property_value_of_size(%struct.device_node* %np, i8* %propname, i32 %min, i32 %max, i64* %len) #0 !dbg !2192 {
entry:
  %retval = alloca i8*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %len.addr = alloca i64*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2196, metadata !DIExpression()), !dbg !2197
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2198, metadata !DIExpression()), !dbg !2199
  store i32 %min, i32* %min.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %min.addr, metadata !2200, metadata !DIExpression()), !dbg !2201
  store i32 %max, i32* %max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max.addr, metadata !2202, metadata !DIExpression()), !dbg !2203
  store i64* %len, i64** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %len.addr, metadata !2204, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2206, metadata !DIExpression()), !dbg !2207
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2208
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2209
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !2210
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2207
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2211
  %tobool = icmp ne %struct.property* %2, null, !dbg !2211
  br i1 %tobool, label %if.end, label %if.then, !dbg !2213

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -22) #7, !dbg !2214
  store i8* %call1, i8** %retval, align 8, !dbg !2215
  br label %return, !dbg !2215

if.end:                                           ; preds = %entry
  %3 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2216
  %value = getelementptr inbounds %struct.property, %struct.property* %3, i32 0, i32 2, !dbg !2218
  %4 = load i8*, i8** %value, align 8, !dbg !2218
  %tobool2 = icmp ne i8* %4, null, !dbg !2216
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2219

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @ERR_PTR(i64 -61) #7, !dbg !2220
  store i8* %call4, i8** %retval, align 8, !dbg !2221
  br label %return, !dbg !2221

if.end5:                                          ; preds = %if.end
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2222
  %length = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 1, !dbg !2224
  %6 = load i32, i32* %length, align 8, !dbg !2224
  %7 = load i32, i32* %min.addr, align 4, !dbg !2225
  %cmp = icmp ult i32 %6, %7, !dbg !2226
  br i1 %cmp, label %if.then6, label %if.end8, !dbg !2227

if.then6:                                         ; preds = %if.end5
  %call7 = call i8* @ERR_PTR(i64 -75) #7, !dbg !2228
  store i8* %call7, i8** %retval, align 8, !dbg !2229
  br label %return, !dbg !2229

if.end8:                                          ; preds = %if.end5
  %8 = load i32, i32* %max.addr, align 4, !dbg !2230
  %tobool9 = icmp ne i32 %8, 0, !dbg !2230
  br i1 %tobool9, label %land.lhs.true, label %if.end14, !dbg !2232

land.lhs.true:                                    ; preds = %if.end8
  %9 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2233
  %length10 = getelementptr inbounds %struct.property, %struct.property* %9, i32 0, i32 1, !dbg !2234
  %10 = load i32, i32* %length10, align 8, !dbg !2234
  %11 = load i32, i32* %max.addr, align 4, !dbg !2235
  %cmp11 = icmp ugt i32 %10, %11, !dbg !2236
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !2237

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call i8* @ERR_PTR(i64 -75) #7, !dbg !2238
  store i8* %call13, i8** %retval, align 8, !dbg !2239
  br label %return, !dbg !2239

if.end14:                                         ; preds = %land.lhs.true, %if.end8
  %12 = load i64*, i64** %len.addr, align 8, !dbg !2240
  %tobool15 = icmp ne i64* %12, null, !dbg !2240
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !2242

if.then16:                                        ; preds = %if.end14
  %13 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2243
  %length17 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 1, !dbg !2244
  %14 = load i32, i32* %length17, align 8, !dbg !2244
  %conv = sext i32 %14 to i64, !dbg !2243
  %15 = load i64*, i64** %len.addr, align 8, !dbg !2245
  store i64 %conv, i64* %15, align 8, !dbg !2246
  br label %if.end18, !dbg !2247

if.end18:                                         ; preds = %if.then16, %if.end14
  %16 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2248
  %value19 = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 2, !dbg !2249
  %17 = load i8*, i8** %value19, align 8, !dbg !2249
  store i8* %17, i8** %retval, align 8, !dbg !2250
  br label %return, !dbg !2250

return:                                           ; preds = %if.end18, %if.then12, %if.then6, %if.then3, %if.then
  %18 = load i8*, i8** %retval, align 8, !dbg !2251
  ret i8* %18, !dbg !2251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2252 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2256, metadata !DIExpression()), !dbg !2257
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2258
  %1 = ptrtoint i8* %0 to i64, !dbg !2258
  %2 = inttoptr i64 %1 to i8*, !dbg !2258
  %3 = ptrtoint i8* %2 to i64, !dbg !2258
  %cmp = icmp uge i64 %3, -4095, !dbg !2258
  %lnot = xor i1 %cmp, true, !dbg !2258
  %lnot1 = xor i1 %lnot, true, !dbg !2258
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2258
  %conv = sext i32 %lnot.ext to i64, !dbg !2258
  %tobool = icmp ne i64 %conv, 0, !dbg !2258
  ret i1 %tobool, !dbg !2259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2260 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2263, metadata !DIExpression()), !dbg !2264
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2265
  %1 = ptrtoint i8* %0 to i64, !dbg !2266
  ret i64 %1, !dbg !2267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_u64_index(%struct.device_node* %np, i8* %propname, i32 %index, i64* %out_value) #0 !dbg !2268 {
entry:
  %p.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i.i, metadata !2271, metadata !DIExpression()), !dbg !2277
  %p.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %p.addr.i, metadata !2285, metadata !DIExpression()), !dbg !2286
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %out_value.addr = alloca i64*, align 8
  %val = alloca i64*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2289, metadata !DIExpression()), !dbg !2290
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2291, metadata !DIExpression()), !dbg !2292
  store i64* %out_value, i64** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_value.addr, metadata !2293, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.declare(metadata i64** %val, metadata !2295, metadata !DIExpression()), !dbg !2298
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2299
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2300
  %2 = load i32, i32* %index.addr, align 4, !dbg !2301
  %add = add i32 %2, 1, !dbg !2302
  %conv = zext i32 %add to i64, !dbg !2303
  %mul = mul i64 %conv, 8, !dbg !2304
  %conv1 = trunc i64 %mul to i32, !dbg !2305
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 %conv1, i32 0, i64* null) #7, !dbg !2306
  %3 = bitcast i8* %call to i64*, !dbg !2306
  store i64* %3, i64** %val, align 8, !dbg !2298
  %4 = load i64*, i64** %val, align 8, !dbg !2307
  %5 = bitcast i64* %4 to i8*, !dbg !2307
  %call2 = call zeroext i1 @IS_ERR(i8* %5) #7, !dbg !2309
  br i1 %call2, label %if.then, label %if.end, !dbg !2310

if.then:                                          ; preds = %entry
  %6 = load i64*, i64** %val, align 8, !dbg !2311
  %7 = bitcast i64* %6 to i8*, !dbg !2311
  %call3 = call i64 @PTR_ERR(i8* %7) #7, !dbg !2312
  %conv4 = trunc i64 %call3 to i32, !dbg !2312
  store i32 %conv4, i32* %retval, align 4, !dbg !2313
  br label %return, !dbg !2313

if.end:                                           ; preds = %entry
  %8 = load i64*, i64** %val, align 8, !dbg !2314
  %9 = load i32, i32* %index.addr, align 4, !dbg !2315
  %idx.ext = zext i32 %9 to i64, !dbg !2316
  %add.ptr = getelementptr i64, i64* %8, i64 %idx.ext, !dbg !2316
  store i64* %add.ptr, i64** %p.addr.i, align 8
  %10 = load i64*, i64** %p.addr.i, align 8, !dbg !2317
  store i64* %10, i64** %p.addr.i.i, align 8
  %11 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %12 = load i64, i64* %11, align 8, !dbg !2318
  %13 = call i1 @llvm.is.constant.i64(i64 %12) #9, !dbg !2318
  br i1 %13, label %cond.true.i.i, label %cond.false.i.i, !dbg !2318

cond.true.i.i:                                    ; preds = %if.end
  %14 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %15 = load i64, i64* %14, align 8, !dbg !2318
  %and.i.i = and i64 %15, 255, !dbg !2318
  %shl.i.i = shl i64 %and.i.i, 56, !dbg !2318
  %16 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %17 = load i64, i64* %16, align 8, !dbg !2318
  %and1.i.i = and i64 %17, 65280, !dbg !2318
  %shl2.i.i = shl i64 %and1.i.i, 40, !dbg !2318
  %or.i.i = or i64 %shl.i.i, %shl2.i.i, !dbg !2318
  %18 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %19 = load i64, i64* %18, align 8, !dbg !2318
  %and3.i.i = and i64 %19, 16711680, !dbg !2318
  %shl4.i.i = shl i64 %and3.i.i, 24, !dbg !2318
  %or5.i.i = or i64 %or.i.i, %shl4.i.i, !dbg !2318
  %20 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %21 = load i64, i64* %20, align 8, !dbg !2318
  %and6.i.i = and i64 %21, 4278190080, !dbg !2318
  %shl7.i.i = shl i64 %and6.i.i, 8, !dbg !2318
  %or8.i.i = or i64 %or5.i.i, %shl7.i.i, !dbg !2318
  %22 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %23 = load i64, i64* %22, align 8, !dbg !2318
  %and9.i.i = and i64 %23, 1095216660480, !dbg !2318
  %shr.i.i = lshr i64 %and9.i.i, 8, !dbg !2318
  %or10.i.i = or i64 %or8.i.i, %shr.i.i, !dbg !2318
  %24 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %25 = load i64, i64* %24, align 8, !dbg !2318
  %and11.i.i = and i64 %25, 280375465082880, !dbg !2318
  %shr12.i.i = lshr i64 %and11.i.i, 24, !dbg !2318
  %or13.i.i = or i64 %or10.i.i, %shr12.i.i, !dbg !2318
  %26 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %27 = load i64, i64* %26, align 8, !dbg !2318
  %and14.i.i = and i64 %27, 71776119061217280, !dbg !2318
  %shr15.i.i = lshr i64 %and14.i.i, 40, !dbg !2318
  %or16.i.i = or i64 %or13.i.i, %shr15.i.i, !dbg !2318
  %28 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %29 = load i64, i64* %28, align 8, !dbg !2318
  %and17.i.i = and i64 %29, -72057594037927936, !dbg !2318
  %shr18.i.i = lshr i64 %and17.i.i, 56, !dbg !2318
  %or19.i.i = or i64 %or16.i.i, %shr18.i.i, !dbg !2318
  br label %__be64_to_cpup.exit, !dbg !2318

cond.false.i.i:                                   ; preds = %if.end
  %30 = load i64*, i64** %p.addr.i.i, align 8, !dbg !2318
  %31 = load i64, i64* %30, align 8, !dbg !2318
  %call.i.i = call i64 @__fswab64(i64 %31) #10, !dbg !2318
  br label %__be64_to_cpup.exit, !dbg !2318

__be64_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i64 [ %or19.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !2318
  %32 = load i64*, i64** %out_value.addr, align 8, !dbg !2319
  store i64 %cond.i.i, i64* %32, align 8, !dbg !2320
  store i32 0, i32* %retval, align 4, !dbg !2321
  br label %return, !dbg !2321

return:                                           ; preds = %__be64_to_cpup.exit, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !2322
  ret i32 %33, !dbg !2322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_variable_u8_array(%struct.device_node* %np, i8* %propname, i8* %out_values, i64 %sz_min, i64 %sz_max) #0 !dbg !2323 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i8*, align 8
  %sz_min.addr = alloca i64, align 8
  %sz_max.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %count = alloca i64, align 8
  %val = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2329, metadata !DIExpression()), !dbg !2330
  store i8* %out_values, i8** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out_values.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  store i64 %sz_min, i64* %sz_min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_min.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i64 %sz_max, i64* %sz_max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_max.addr, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.declare(metadata i64* %sz, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.declare(metadata i8** %val, metadata !2341, metadata !DIExpression()), !dbg !2344
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2345
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2346
  %2 = load i64, i64* %sz_min.addr, align 8, !dbg !2347
  %mul = mul i64 %2, 1, !dbg !2348
  %conv = trunc i64 %mul to i32, !dbg !2349
  %3 = load i64, i64* %sz_max.addr, align 8, !dbg !2350
  %mul1 = mul i64 %3, 1, !dbg !2351
  %conv2 = trunc i64 %mul1 to i32, !dbg !2352
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 %conv, i32 %conv2, i64* %sz) #7, !dbg !2353
  store i8* %call, i8** %val, align 8, !dbg !2344
  %4 = load i8*, i8** %val, align 8, !dbg !2354
  %call3 = call zeroext i1 @IS_ERR(i8* %4) #7, !dbg !2356
  br i1 %call3, label %if.then, label %if.end, !dbg !2357

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %val, align 8, !dbg !2358
  %call4 = call i64 @PTR_ERR(i8* %5) #7, !dbg !2359
  %conv5 = trunc i64 %call4 to i32, !dbg !2359
  store i32 %conv5, i32* %retval, align 4, !dbg !2360
  br label %return, !dbg !2360

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %sz_max.addr, align 8, !dbg !2361
  %tobool = icmp ne i64 %6, 0, !dbg !2361
  br i1 %tobool, label %if.else, label %if.then6, !dbg !2363

if.then6:                                         ; preds = %if.end
  %7 = load i64, i64* %sz_min.addr, align 8, !dbg !2364
  store i64 %7, i64* %sz, align 8, !dbg !2365
  br label %if.end7, !dbg !2366

if.else:                                          ; preds = %if.end
  %8 = load i64, i64* %sz, align 8, !dbg !2367
  %div = udiv i64 %8, 1, !dbg !2367
  store i64 %div, i64* %sz, align 8, !dbg !2367
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %9 = load i64, i64* %sz, align 8, !dbg !2368
  store i64 %9, i64* %count, align 8, !dbg !2369
  br label %while.cond, !dbg !2370

while.cond:                                       ; preds = %while.body, %if.end7
  %10 = load i64, i64* %count, align 8, !dbg !2371
  %dec = add i64 %10, -1, !dbg !2371
  store i64 %dec, i64* %count, align 8, !dbg !2371
  %tobool8 = icmp ne i64 %10, 0, !dbg !2370
  br i1 %tobool8, label %while.body, label %while.end, !dbg !2370

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %val, align 8, !dbg !2372
  %incdec.ptr = getelementptr i8, i8* %11, i32 1, !dbg !2372
  store i8* %incdec.ptr, i8** %val, align 8, !dbg !2372
  %12 = load i8, i8* %11, align 1, !dbg !2373
  %13 = load i8*, i8** %out_values.addr, align 8, !dbg !2374
  %incdec.ptr9 = getelementptr i8, i8* %13, i32 1, !dbg !2374
  store i8* %incdec.ptr9, i8** %out_values.addr, align 8, !dbg !2374
  store i8 %12, i8* %13, align 1, !dbg !2375
  br label %while.cond, !dbg !2370, !llvm.loop !2376

while.end:                                        ; preds = %while.cond
  %14 = load i64, i64* %sz, align 8, !dbg !2377
  %conv10 = trunc i64 %14 to i32, !dbg !2377
  store i32 %conv10, i32* %retval, align 4, !dbg !2378
  br label %return, !dbg !2378

return:                                           ; preds = %while.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2379
  ret i32 %15, !dbg !2379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_variable_u16_array(%struct.device_node* %np, i8* %propname, i16* %out_values, i64 %sz_min, i64 %sz_max) #0 !dbg !2380 {
entry:
  %p.addr.i.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i.i, metadata !2384, metadata !DIExpression()), !dbg !2390
  %p.addr.i = alloca i16*, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr.i, metadata !2399, metadata !DIExpression()), !dbg !2400
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i16*, align 8
  %sz_min.addr = alloca i64, align 8
  %sz_max.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %count = alloca i64, align 8
  %val = alloca i16*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  store i16* %out_values, i16** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %out_values.addr, metadata !2405, metadata !DIExpression()), !dbg !2406
  store i64 %sz_min, i64* %sz_min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_min.addr, metadata !2407, metadata !DIExpression()), !dbg !2408
  store i64 %sz_max, i64* %sz_max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_max.addr, metadata !2409, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata i64* %sz, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2413, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.declare(metadata i16** %val, metadata !2415, metadata !DIExpression()), !dbg !2416
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2417
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2418
  %2 = load i64, i64* %sz_min.addr, align 8, !dbg !2419
  %mul = mul i64 %2, 2, !dbg !2420
  %conv = trunc i64 %mul to i32, !dbg !2421
  %3 = load i64, i64* %sz_max.addr, align 8, !dbg !2422
  %mul1 = mul i64 %3, 2, !dbg !2423
  %conv2 = trunc i64 %mul1 to i32, !dbg !2424
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 %conv, i32 %conv2, i64* %sz) #7, !dbg !2425
  %4 = bitcast i8* %call to i16*, !dbg !2425
  store i16* %4, i16** %val, align 8, !dbg !2416
  %5 = load i16*, i16** %val, align 8, !dbg !2426
  %6 = bitcast i16* %5 to i8*, !dbg !2426
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #7, !dbg !2428
  br i1 %call3, label %if.then, label %if.end, !dbg !2429

if.then:                                          ; preds = %entry
  %7 = load i16*, i16** %val, align 8, !dbg !2430
  %8 = bitcast i16* %7 to i8*, !dbg !2430
  %call4 = call i64 @PTR_ERR(i8* %8) #7, !dbg !2431
  %conv5 = trunc i64 %call4 to i32, !dbg !2431
  store i32 %conv5, i32* %retval, align 4, !dbg !2432
  br label %return, !dbg !2432

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %sz_max.addr, align 8, !dbg !2433
  %tobool = icmp ne i64 %9, 0, !dbg !2433
  br i1 %tobool, label %if.else, label %if.then6, !dbg !2435

if.then6:                                         ; preds = %if.end
  %10 = load i64, i64* %sz_min.addr, align 8, !dbg !2436
  store i64 %10, i64* %sz, align 8, !dbg !2437
  br label %if.end7, !dbg !2438

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %sz, align 8, !dbg !2439
  %div = udiv i64 %11, 2, !dbg !2439
  store i64 %div, i64* %sz, align 8, !dbg !2439
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %12 = load i64, i64* %sz, align 8, !dbg !2440
  store i64 %12, i64* %count, align 8, !dbg !2441
  br label %while.cond, !dbg !2442

while.cond:                                       ; preds = %__be16_to_cpup.exit, %if.end7
  %13 = load i64, i64* %count, align 8, !dbg !2443
  %dec = add i64 %13, -1, !dbg !2443
  store i64 %dec, i64* %count, align 8, !dbg !2443
  %tobool8 = icmp ne i64 %13, 0, !dbg !2442
  br i1 %tobool8, label %while.body, label %while.end, !dbg !2442

while.body:                                       ; preds = %while.cond
  %14 = load i16*, i16** %val, align 8, !dbg !2444
  %incdec.ptr = getelementptr i16, i16* %14, i32 1, !dbg !2444
  store i16* %incdec.ptr, i16** %val, align 8, !dbg !2444
  store i16* %14, i16** %p.addr.i, align 8
  %15 = load i16*, i16** %p.addr.i, align 8, !dbg !2445
  store i16* %15, i16** %p.addr.i.i, align 8
  %16 = load i16*, i16** %p.addr.i.i, align 8, !dbg !2446
  %17 = load i16, i16* %16, align 2, !dbg !2446
  %18 = call i1 @llvm.is.constant.i16(i16 %17) #9, !dbg !2446
  br i1 %18, label %cond.true.i.i, label %cond.false.i.i, !dbg !2446

cond.true.i.i:                                    ; preds = %while.body
  %19 = load i16*, i16** %p.addr.i.i, align 8, !dbg !2446
  %20 = load i16, i16* %19, align 2, !dbg !2446
  %conv.i.i = zext i16 %20 to i32, !dbg !2446
  %and.i.i = and i32 %conv.i.i, 255, !dbg !2446
  %shl.i.i = shl i32 %and.i.i, 8, !dbg !2446
  %21 = load i16*, i16** %p.addr.i.i, align 8, !dbg !2446
  %22 = load i16, i16* %21, align 2, !dbg !2446
  %conv1.i.i = zext i16 %22 to i32, !dbg !2446
  %and2.i.i = and i32 %conv1.i.i, 65280, !dbg !2446
  %shr.i.i = ashr i32 %and2.i.i, 8, !dbg !2446
  %or.i.i = or i32 %shl.i.i, %shr.i.i, !dbg !2446
  %conv3.i.i = trunc i32 %or.i.i to i16, !dbg !2446
  %conv4.i.i = zext i16 %conv3.i.i to i32, !dbg !2446
  br label %__be16_to_cpup.exit, !dbg !2446

cond.false.i.i:                                   ; preds = %while.body
  %23 = load i16*, i16** %p.addr.i.i, align 8, !dbg !2446
  %24 = load i16, i16* %23, align 2, !dbg !2446
  %call.i.i = call zeroext i16 @__fswab16(i16 zeroext %24) #10, !dbg !2446
  %conv5.i.i = zext i16 %call.i.i to i32, !dbg !2446
  br label %__be16_to_cpup.exit, !dbg !2446

__be16_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ %conv5.i.i, %cond.false.i.i ], !dbg !2446
  %conv6.i.i = trunc i32 %cond.i.i to i16, !dbg !2446
  %25 = load i16*, i16** %out_values.addr, align 8, !dbg !2447
  %incdec.ptr10 = getelementptr i16, i16* %25, i32 1, !dbg !2447
  store i16* %incdec.ptr10, i16** %out_values.addr, align 8, !dbg !2447
  store i16 %conv6.i.i, i16* %25, align 2, !dbg !2448
  br label %while.cond, !dbg !2442, !llvm.loop !2449

while.end:                                        ; preds = %while.cond
  %26 = load i64, i64* %sz, align 8, !dbg !2451
  %conv11 = trunc i64 %26 to i32, !dbg !2451
  store i32 %conv11, i32* %retval, align 4, !dbg !2452
  br label %return, !dbg !2452

return:                                           ; preds = %while.end, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !2453
  ret i32 %27, !dbg !2453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_variable_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz_min, i64 %sz_max) #0 !dbg !2454 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !2138, metadata !DIExpression()), !dbg !2457
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !2154, metadata !DIExpression()), !dbg !2460
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz_min.addr = alloca i64, align 8
  %sz_max.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %count = alloca i64, align 8
  %val = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i64 %sz_min, i64* %sz_min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_min.addr, metadata !2467, metadata !DIExpression()), !dbg !2468
  store i64 %sz_max, i64* %sz_max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_max.addr, metadata !2469, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.declare(metadata i64* %sz, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2473, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata i32** %val, metadata !2475, metadata !DIExpression()), !dbg !2476
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2477
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2478
  %2 = load i64, i64* %sz_min.addr, align 8, !dbg !2479
  %mul = mul i64 %2, 4, !dbg !2480
  %conv = trunc i64 %mul to i32, !dbg !2481
  %3 = load i64, i64* %sz_max.addr, align 8, !dbg !2482
  %mul1 = mul i64 %3, 4, !dbg !2483
  %conv2 = trunc i64 %mul1 to i32, !dbg !2484
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 %conv, i32 %conv2, i64* %sz) #7, !dbg !2485
  %4 = bitcast i8* %call to i32*, !dbg !2485
  store i32* %4, i32** %val, align 8, !dbg !2476
  %5 = load i32*, i32** %val, align 8, !dbg !2486
  %6 = bitcast i32* %5 to i8*, !dbg !2486
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #7, !dbg !2488
  br i1 %call3, label %if.then, label %if.end, !dbg !2489

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %val, align 8, !dbg !2490
  %8 = bitcast i32* %7 to i8*, !dbg !2490
  %call4 = call i64 @PTR_ERR(i8* %8) #7, !dbg !2491
  %conv5 = trunc i64 %call4 to i32, !dbg !2491
  store i32 %conv5, i32* %retval, align 4, !dbg !2492
  br label %return, !dbg !2492

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %sz_max.addr, align 8, !dbg !2493
  %tobool = icmp ne i64 %9, 0, !dbg !2493
  br i1 %tobool, label %if.else, label %if.then6, !dbg !2495

if.then6:                                         ; preds = %if.end
  %10 = load i64, i64* %sz_min.addr, align 8, !dbg !2496
  store i64 %10, i64* %sz, align 8, !dbg !2497
  br label %if.end7, !dbg !2498

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %sz, align 8, !dbg !2499
  %div = udiv i64 %11, 4, !dbg !2499
  store i64 %div, i64* %sz, align 8, !dbg !2499
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %12 = load i64, i64* %sz, align 8, !dbg !2500
  store i64 %12, i64* %count, align 8, !dbg !2501
  br label %while.cond, !dbg !2502

while.cond:                                       ; preds = %__be32_to_cpup.exit, %if.end7
  %13 = load i64, i64* %count, align 8, !dbg !2503
  %dec = add i64 %13, -1, !dbg !2503
  store i64 %dec, i64* %count, align 8, !dbg !2503
  %tobool8 = icmp ne i64 %13, 0, !dbg !2502
  br i1 %tobool8, label %while.body, label %while.end, !dbg !2502

while.body:                                       ; preds = %while.cond
  %14 = load i32*, i32** %val, align 8, !dbg !2504
  %incdec.ptr = getelementptr i32, i32* %14, i32 1, !dbg !2504
  store i32* %incdec.ptr, i32** %val, align 8, !dbg !2504
  store i32* %14, i32** %p.addr.i, align 8
  %15 = load i32*, i32** %p.addr.i, align 8, !dbg !2505
  store i32* %15, i32** %p.addr.i.i, align 8
  %16 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2506
  %17 = load i32, i32* %16, align 4, !dbg !2506
  %18 = call i1 @llvm.is.constant.i32(i32 %17) #9, !dbg !2506
  br i1 %18, label %cond.true.i.i, label %cond.false.i.i, !dbg !2506

cond.true.i.i:                                    ; preds = %while.body
  %19 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2506
  %20 = load i32, i32* %19, align 4, !dbg !2506
  %and.i.i = and i32 %20, 255, !dbg !2506
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !2506
  %21 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2506
  %22 = load i32, i32* %21, align 4, !dbg !2506
  %and1.i.i = and i32 %22, 65280, !dbg !2506
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !2506
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !2506
  %23 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2506
  %24 = load i32, i32* %23, align 4, !dbg !2506
  %and3.i.i = and i32 %24, 16711680, !dbg !2506
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !2506
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !2506
  %25 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2506
  %26 = load i32, i32* %25, align 4, !dbg !2506
  %and5.i.i = and i32 %26, -16777216, !dbg !2506
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !2506
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !2506
  br label %__be32_to_cpup.exit, !dbg !2506

cond.false.i.i:                                   ; preds = %while.body
  %27 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2506
  %28 = load i32, i32* %27, align 4, !dbg !2506
  %call.i.i = call i32 @__fswab32(i32 %28) #10, !dbg !2506
  br label %__be32_to_cpup.exit, !dbg !2506

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !2506
  %29 = load i32*, i32** %out_values.addr, align 8, !dbg !2507
  %incdec.ptr10 = getelementptr i32, i32* %29, i32 1, !dbg !2507
  store i32* %incdec.ptr10, i32** %out_values.addr, align 8, !dbg !2507
  store i32 %cond.i.i, i32* %29, align 4, !dbg !2508
  br label %while.cond, !dbg !2502, !llvm.loop !2509

while.end:                                        ; preds = %while.cond
  %30 = load i64, i64* %sz, align 8, !dbg !2511
  %conv11 = trunc i64 %30 to i32, !dbg !2511
  store i32 %conv11, i32* %retval, align 4, !dbg !2512
  br label %return, !dbg !2512

return:                                           ; preds = %while.end, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !2513
  ret i32 %31, !dbg !2513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_u64(%struct.device_node* %np, i8* %propname, i64* %out_value) #0 !dbg !2514 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i64*, align 8
  %val = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2517, metadata !DIExpression()), !dbg !2518
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2519, metadata !DIExpression()), !dbg !2520
  store i64* %out_value, i64** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_value.addr, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata i32** %val, metadata !2523, metadata !DIExpression()), !dbg !2524
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2525
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2526
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 8, i32 0, i64* null) #7, !dbg !2527
  %2 = bitcast i8* %call to i32*, !dbg !2527
  store i32* %2, i32** %val, align 8, !dbg !2524
  %3 = load i32*, i32** %val, align 8, !dbg !2528
  %4 = bitcast i32* %3 to i8*, !dbg !2528
  %call1 = call zeroext i1 @IS_ERR(i8* %4) #7, !dbg !2530
  br i1 %call1, label %if.then, label %if.end, !dbg !2531

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %val, align 8, !dbg !2532
  %6 = bitcast i32* %5 to i8*, !dbg !2532
  %call2 = call i64 @PTR_ERR(i8* %6) #7, !dbg !2533
  %conv = trunc i64 %call2 to i32, !dbg !2533
  store i32 %conv, i32* %retval, align 4, !dbg !2534
  br label %return, !dbg !2534

if.end:                                           ; preds = %entry
  %7 = load i32*, i32** %val, align 8, !dbg !2535
  %call3 = call i64 @of_read_number(i32* %7, i32 2) #7, !dbg !2536
  %8 = load i64*, i64** %out_value.addr, align 8, !dbg !2537
  store i64 %call3, i64* %8, align 8, !dbg !2538
  store i32 0, i32* %retval, align 4, !dbg !2539
  br label %return, !dbg !2539

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2540
  ret i32 %9, !dbg !2540
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_read_number(i32* %cell, i32 %size) #0 !dbg !2541 {
entry:
  %cell.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %r = alloca i64, align 8
  store i32* %cell, i32** %cell.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cell.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata i64* %r, metadata !2548, metadata !DIExpression()), !dbg !2549
  store i64 0, i64* %r, align 8, !dbg !2549
  br label %for.cond, !dbg !2550

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size.addr, align 4, !dbg !2551
  %dec = add i32 %0, -1, !dbg !2551
  store i32 %dec, i32* %size.addr, align 4, !dbg !2551
  %tobool = icmp ne i32 %0, 0, !dbg !2554
  br i1 %tobool, label %for.body, label %for.end, !dbg !2554

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %r, align 8, !dbg !2555
  %shl = shl i64 %1, 32, !dbg !2556
  %2 = load i32*, i32** %cell.addr, align 8, !dbg !2557
  %3 = load i32, i32* %2, align 4, !dbg !2557
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !2557
  br i1 %4, label %cond.true, label %cond.false, !dbg !2557

cond.true:                                        ; preds = %for.body
  %5 = load i32*, i32** %cell.addr, align 8, !dbg !2557
  %6 = load i32, i32* %5, align 4, !dbg !2557
  %and = and i32 %6, 255, !dbg !2557
  %shl1 = shl i32 %and, 24, !dbg !2557
  %7 = load i32*, i32** %cell.addr, align 8, !dbg !2557
  %8 = load i32, i32* %7, align 4, !dbg !2557
  %and2 = and i32 %8, 65280, !dbg !2557
  %shl3 = shl i32 %and2, 8, !dbg !2557
  %or = or i32 %shl1, %shl3, !dbg !2557
  %9 = load i32*, i32** %cell.addr, align 8, !dbg !2557
  %10 = load i32, i32* %9, align 4, !dbg !2557
  %and4 = and i32 %10, 16711680, !dbg !2557
  %shr = lshr i32 %and4, 8, !dbg !2557
  %or5 = or i32 %or, %shr, !dbg !2557
  %11 = load i32*, i32** %cell.addr, align 8, !dbg !2557
  %12 = load i32, i32* %11, align 4, !dbg !2557
  %and6 = and i32 %12, -16777216, !dbg !2557
  %shr7 = lshr i32 %and6, 24, !dbg !2557
  %or8 = or i32 %or5, %shr7, !dbg !2557
  br label %cond.end, !dbg !2557

cond.false:                                       ; preds = %for.body
  %13 = load i32*, i32** %cell.addr, align 8, !dbg !2557
  %14 = load i32, i32* %13, align 4, !dbg !2557
  %call = call i32 @__fswab32(i32 %14) #10, !dbg !2557
  br label %cond.end, !dbg !2557

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or8, %cond.true ], [ %call, %cond.false ], !dbg !2557
  %conv = zext i32 %cond to i64, !dbg !2557
  %or9 = or i64 %shl, %conv, !dbg !2558
  store i64 %or9, i64* %r, align 8, !dbg !2559
  br label %for.inc, !dbg !2560

for.inc:                                          ; preds = %cond.end
  %15 = load i32*, i32** %cell.addr, align 8, !dbg !2561
  %incdec.ptr = getelementptr i32, i32* %15, i32 1, !dbg !2561
  store i32* %incdec.ptr, i32** %cell.addr, align 8, !dbg !2561
  br label %for.cond, !dbg !2562, !llvm.loop !2563

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %r, align 8, !dbg !2565
  ret i64 %16, !dbg !2566
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_variable_u64_array(%struct.device_node* %np, i8* %propname, i64* %out_values, i64 %sz_min, i64 %sz_max) #0 !dbg !2567 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i64*, align 8
  %sz_min.addr = alloca i64, align 8
  %sz_max.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %count = alloca i64, align 8
  %val = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2570, metadata !DIExpression()), !dbg !2571
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2572, metadata !DIExpression()), !dbg !2573
  store i64* %out_values, i64** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_values.addr, metadata !2574, metadata !DIExpression()), !dbg !2575
  store i64 %sz_min, i64* %sz_min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_min.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  store i64 %sz_max, i64* %sz_max.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz_max.addr, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.declare(metadata i64* %sz, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2582, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.declare(metadata i32** %val, metadata !2584, metadata !DIExpression()), !dbg !2585
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2586
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2587
  %2 = load i64, i64* %sz_min.addr, align 8, !dbg !2588
  %mul = mul i64 %2, 8, !dbg !2589
  %conv = trunc i64 %mul to i32, !dbg !2590
  %3 = load i64, i64* %sz_max.addr, align 8, !dbg !2591
  %mul1 = mul i64 %3, 8, !dbg !2592
  %conv2 = trunc i64 %mul1 to i32, !dbg !2593
  %call = call i8* @of_find_property_value_of_size(%struct.device_node* %0, i8* %1, i32 %conv, i32 %conv2, i64* %sz) #7, !dbg !2594
  %4 = bitcast i8* %call to i32*, !dbg !2594
  store i32* %4, i32** %val, align 8, !dbg !2585
  %5 = load i32*, i32** %val, align 8, !dbg !2595
  %6 = bitcast i32* %5 to i8*, !dbg !2595
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #7, !dbg !2597
  br i1 %call3, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %val, align 8, !dbg !2599
  %8 = bitcast i32* %7 to i8*, !dbg !2599
  %call4 = call i64 @PTR_ERR(i8* %8) #7, !dbg !2600
  %conv5 = trunc i64 %call4 to i32, !dbg !2600
  store i32 %conv5, i32* %retval, align 4, !dbg !2601
  br label %return, !dbg !2601

if.end:                                           ; preds = %entry
  %9 = load i64, i64* %sz_max.addr, align 8, !dbg !2602
  %tobool = icmp ne i64 %9, 0, !dbg !2602
  br i1 %tobool, label %if.else, label %if.then6, !dbg !2604

if.then6:                                         ; preds = %if.end
  %10 = load i64, i64* %sz_min.addr, align 8, !dbg !2605
  store i64 %10, i64* %sz, align 8, !dbg !2606
  br label %if.end7, !dbg !2607

if.else:                                          ; preds = %if.end
  %11 = load i64, i64* %sz, align 8, !dbg !2608
  %div = udiv i64 %11, 8, !dbg !2608
  store i64 %div, i64* %sz, align 8, !dbg !2608
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %12 = load i64, i64* %sz, align 8, !dbg !2609
  store i64 %12, i64* %count, align 8, !dbg !2610
  br label %while.cond, !dbg !2611

while.cond:                                       ; preds = %while.body, %if.end7
  %13 = load i64, i64* %count, align 8, !dbg !2612
  %dec = add i64 %13, -1, !dbg !2612
  store i64 %dec, i64* %count, align 8, !dbg !2612
  %tobool8 = icmp ne i64 %13, 0, !dbg !2611
  br i1 %tobool8, label %while.body, label %while.end, !dbg !2611

while.body:                                       ; preds = %while.cond
  %14 = load i32*, i32** %val, align 8, !dbg !2613
  %call9 = call i64 @of_read_number(i32* %14, i32 2) #7, !dbg !2615
  %15 = load i64*, i64** %out_values.addr, align 8, !dbg !2616
  %incdec.ptr = getelementptr i64, i64* %15, i32 1, !dbg !2616
  store i64* %incdec.ptr, i64** %out_values.addr, align 8, !dbg !2616
  store i64 %call9, i64* %15, align 8, !dbg !2617
  %16 = load i32*, i32** %val, align 8, !dbg !2618
  %add.ptr = getelementptr i32, i32* %16, i64 2, !dbg !2618
  store i32* %add.ptr, i32** %val, align 8, !dbg !2618
  br label %while.cond, !dbg !2611, !llvm.loop !2619

while.end:                                        ; preds = %while.cond
  %17 = load i64, i64* %sz, align 8, !dbg !2621
  %conv10 = trunc i64 %17 to i32, !dbg !2621
  store i32 %conv10, i32* %retval, align 4, !dbg !2622
  br label %return, !dbg !2622

return:                                           ; preds = %while.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !2623
  ret i32 %18, !dbg !2623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_string(%struct.device_node* %np, i8* %propname, i8** %out_string) #0 !dbg !2624 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_string.addr = alloca i8**, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2629, metadata !DIExpression()), !dbg !2630
  store i8** %out_string, i8*** %out_string.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %out_string.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2633, metadata !DIExpression()), !dbg !2636
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2637
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2638
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !2639
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2636
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2640
  %tobool = icmp ne %struct.property* %2, null, !dbg !2640
  br i1 %tobool, label %if.end, label %if.then, !dbg !2642

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2643
  br label %return, !dbg !2643

if.end:                                           ; preds = %entry
  %3 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2644
  %value = getelementptr inbounds %struct.property, %struct.property* %3, i32 0, i32 2, !dbg !2646
  %4 = load i8*, i8** %value, align 8, !dbg !2646
  %tobool1 = icmp ne i8* %4, null, !dbg !2644
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2647

if.then2:                                         ; preds = %if.end
  store i32 -61, i32* %retval, align 4, !dbg !2648
  br label %return, !dbg !2648

if.end3:                                          ; preds = %if.end
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2649
  %value4 = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 2, !dbg !2651
  %6 = load i8*, i8** %value4, align 8, !dbg !2651
  %7 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2652
  %length = getelementptr inbounds %struct.property, %struct.property* %7, i32 0, i32 1, !dbg !2653
  %8 = load i32, i32* %length, align 8, !dbg !2653
  %conv = sext i32 %8 to i64, !dbg !2652
  %call5 = call i64 @strnlen(i8* %6, i64 %conv) #7, !dbg !2654
  %9 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2655
  %length6 = getelementptr inbounds %struct.property, %struct.property* %9, i32 0, i32 1, !dbg !2656
  %10 = load i32, i32* %length6, align 8, !dbg !2656
  %conv7 = sext i32 %10 to i64, !dbg !2655
  %cmp = icmp uge i64 %call5, %conv7, !dbg !2657
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2658

if.then9:                                         ; preds = %if.end3
  store i32 -84, i32* %retval, align 4, !dbg !2659
  br label %return, !dbg !2659

if.end10:                                         ; preds = %if.end3
  %11 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2660
  %value11 = getelementptr inbounds %struct.property, %struct.property* %11, i32 0, i32 2, !dbg !2661
  %12 = load i8*, i8** %value11, align 8, !dbg !2661
  %13 = load i8**, i8*** %out_string.addr, align 8, !dbg !2662
  store i8* %12, i8** %13, align 8, !dbg !2663
  store i32 0, i32* %retval, align 4, !dbg !2664
  br label %return, !dbg !2664

return:                                           ; preds = %if.end10, %if.then9, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2665
  ret i32 %14, !dbg !2665
}

; Function Attrs: noredzone
declare dso_local i64 @strnlen(i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_match_string(%struct.device_node* %np, i8* %propname, i8* %string) #0 !dbg !2666 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %string.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  %l = alloca i64, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %tmp = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2669, metadata !DIExpression()), !dbg !2670
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2671, metadata !DIExpression()), !dbg !2672
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2675, metadata !DIExpression()), !dbg !2676
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2677
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2678
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !2679
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2676
  call void @llvm.dbg.declare(metadata i64* %l, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.declare(metadata i8** %end, metadata !2686, metadata !DIExpression()), !dbg !2687
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2688
  %tobool = icmp ne %struct.property* %2, null, !dbg !2688
  br i1 %tobool, label %if.end, label %if.then, !dbg !2690

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2691
  br label %return, !dbg !2691

if.end:                                           ; preds = %entry
  %3 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2692
  %value = getelementptr inbounds %struct.property, %struct.property* %3, i32 0, i32 2, !dbg !2694
  %4 = load i8*, i8** %value, align 8, !dbg !2694
  %tobool1 = icmp ne i8* %4, null, !dbg !2692
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2695

if.then2:                                         ; preds = %if.end
  store i32 -61, i32* %retval, align 4, !dbg !2696
  br label %return, !dbg !2696

if.end3:                                          ; preds = %if.end
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2697
  %value4 = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 2, !dbg !2698
  %6 = load i8*, i8** %value4, align 8, !dbg !2698
  store i8* %6, i8** %p, align 8, !dbg !2699
  %7 = load i8*, i8** %p, align 8, !dbg !2700
  %8 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2701
  %length = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 1, !dbg !2702
  %9 = load i32, i32* %length, align 8, !dbg !2702
  %idx.ext = sext i32 %9 to i64, !dbg !2703
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !2703
  store i8* %add.ptr, i8** %end, align 8, !dbg !2704
  store i32 0, i32* %i, align 4, !dbg !2705
  br label %for.cond, !dbg !2707

for.cond:                                         ; preds = %for.inc, %if.end3
  %10 = load i8*, i8** %p, align 8, !dbg !2708
  %11 = load i8*, i8** %end, align 8, !dbg !2710
  %cmp = icmp ult i8* %10, %11, !dbg !2711
  br i1 %cmp, label %for.body, label %for.end, !dbg !2712

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %p, align 8, !dbg !2713
  %13 = load i8*, i8** %end, align 8, !dbg !2715
  %14 = load i8*, i8** %p, align 8, !dbg !2716
  %sub.ptr.lhs.cast = ptrtoint i8* %13 to i64, !dbg !2717
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64, !dbg !2717
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2717
  %call5 = call i64 @strnlen(i8* %12, i64 %sub.ptr.sub) #7, !dbg !2718
  %add = add i64 %call5, 1, !dbg !2719
  store i64 %add, i64* %l, align 8, !dbg !2720
  %15 = load i8*, i8** %p, align 8, !dbg !2721
  %16 = load i64, i64* %l, align 8, !dbg !2723
  %add.ptr6 = getelementptr i8, i8* %15, i64 %16, !dbg !2724
  %17 = load i8*, i8** %end, align 8, !dbg !2725
  %cmp7 = icmp ugt i8* %add.ptr6, %17, !dbg !2726
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !2727

if.then8:                                         ; preds = %for.body
  store i32 -84, i32* %retval, align 4, !dbg !2728
  br label %return, !dbg !2728

if.end9:                                          ; preds = %for.body
  store i32 0, i32* %tmp, align 4, !dbg !2729
  %18 = load i32, i32* %tmp, align 4, !dbg !2732
  %19 = load i8*, i8** %string.addr, align 8, !dbg !2733
  %20 = load i8*, i8** %p, align 8, !dbg !2735
  %call10 = call i32 @strcmp(i8* %19, i8* %20) #7, !dbg !2736
  %cmp11 = icmp eq i32 %call10, 0, !dbg !2737
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2738

if.then12:                                        ; preds = %if.end9
  %21 = load i32, i32* %i, align 4, !dbg !2739
  store i32 %21, i32* %retval, align 4, !dbg !2740
  br label %return, !dbg !2740

if.end13:                                         ; preds = %if.end9
  br label %for.inc, !dbg !2741

for.inc:                                          ; preds = %if.end13
  %22 = load i32, i32* %i, align 4, !dbg !2742
  %inc = add i32 %22, 1, !dbg !2742
  store i32 %inc, i32* %i, align 4, !dbg !2742
  %23 = load i64, i64* %l, align 8, !dbg !2743
  %24 = load i8*, i8** %p, align 8, !dbg !2744
  %add.ptr14 = getelementptr i8, i8* %24, i64 %23, !dbg !2744
  store i8* %add.ptr14, i8** %p, align 8, !dbg !2744
  br label %for.cond, !dbg !2745, !llvm.loop !2746

for.end:                                          ; preds = %for.cond
  store i32 -61, i32* %retval, align 4, !dbg !2748
  br label %return, !dbg !2748

return:                                           ; preds = %for.end, %if.then12, %if.then8, %if.then2, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !2749
  ret i32 %25, !dbg !2749
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_property_read_string_helper(%struct.device_node* %np, i8* %propname, i8** %out_strs, i64 %sz, i32 %skip) #0 !dbg !2750 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_strs.addr = alloca i8**, align 8
  %sz.addr = alloca i64, align 8
  %skip.addr = alloca i32, align 4
  %prop = alloca %struct.property*, align 8
  %l = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i8** %out_strs, i8*** %out_strs.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %out_strs.addr, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  store i32 %skip, i32* %skip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %skip.addr, metadata !2761, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2763, metadata !DIExpression()), !dbg !2764
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2765
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2766
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !2767
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2764
  call void @llvm.dbg.declare(metadata i32* %l, metadata !2768, metadata !DIExpression()), !dbg !2769
  store i32 0, i32* %l, align 4, !dbg !2769
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2770, metadata !DIExpression()), !dbg !2771
  store i32 0, i32* %i, align 4, !dbg !2771
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata i8** %end, metadata !2774, metadata !DIExpression()), !dbg !2775
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2776
  %tobool = icmp ne %struct.property* %2, null, !dbg !2776
  br i1 %tobool, label %if.end, label %if.then, !dbg !2778

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2779
  br label %return, !dbg !2779

if.end:                                           ; preds = %entry
  %3 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2780
  %value = getelementptr inbounds %struct.property, %struct.property* %3, i32 0, i32 2, !dbg !2782
  %4 = load i8*, i8** %value, align 8, !dbg !2782
  %tobool1 = icmp ne i8* %4, null, !dbg !2780
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2783

if.then2:                                         ; preds = %if.end
  store i32 -61, i32* %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

if.end3:                                          ; preds = %if.end
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2785
  %value4 = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 2, !dbg !2786
  %6 = load i8*, i8** %value4, align 8, !dbg !2786
  store i8* %6, i8** %p, align 8, !dbg !2787
  %7 = load i8*, i8** %p, align 8, !dbg !2788
  %8 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2789
  %length = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 1, !dbg !2790
  %9 = load i32, i32* %length, align 8, !dbg !2790
  %idx.ext = sext i32 %9 to i64, !dbg !2791
  %add.ptr = getelementptr i8, i8* %7, i64 %idx.ext, !dbg !2791
  store i8* %add.ptr, i8** %end, align 8, !dbg !2792
  store i32 0, i32* %i, align 4, !dbg !2793
  br label %for.cond, !dbg !2795

for.cond:                                         ; preds = %for.inc, %if.end3
  %10 = load i8*, i8** %p, align 8, !dbg !2796
  %11 = load i8*, i8** %end, align 8, !dbg !2798
  %cmp = icmp ult i8* %10, %11, !dbg !2799
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2800

land.rhs:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %out_strs.addr, align 8, !dbg !2801
  %tobool5 = icmp ne i8** %12, null, !dbg !2801
  br i1 %tobool5, label %lor.rhs, label %lor.end, !dbg !2802

lor.rhs:                                          ; preds = %land.rhs
  %13 = load i32, i32* %i, align 4, !dbg !2803
  %conv = sext i32 %13 to i64, !dbg !2803
  %14 = load i32, i32* %skip.addr, align 4, !dbg !2804
  %conv6 = sext i32 %14 to i64, !dbg !2804
  %15 = load i64, i64* %sz.addr, align 8, !dbg !2805
  %add = add i64 %conv6, %15, !dbg !2806
  %cmp7 = icmp ult i64 %conv, %add, !dbg !2807
  br label %lor.end, !dbg !2802

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %16 = phi i1 [ true, %land.rhs ], [ %cmp7, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %16, %lor.end ], !dbg !2808
  br i1 %17, label %for.body, label %for.end, !dbg !2809

for.body:                                         ; preds = %land.end
  %18 = load i8*, i8** %p, align 8, !dbg !2810
  %19 = load i8*, i8** %end, align 8, !dbg !2812
  %20 = load i8*, i8** %p, align 8, !dbg !2813
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64, !dbg !2814
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64, !dbg !2814
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2814
  %call9 = call i64 @strnlen(i8* %18, i64 %sub.ptr.sub) #7, !dbg !2815
  %add10 = add i64 %call9, 1, !dbg !2816
  %conv11 = trunc i64 %add10 to i32, !dbg !2815
  store i32 %conv11, i32* %l, align 4, !dbg !2817
  %21 = load i8*, i8** %p, align 8, !dbg !2818
  %22 = load i32, i32* %l, align 4, !dbg !2820
  %idx.ext12 = sext i32 %22 to i64, !dbg !2821
  %add.ptr13 = getelementptr i8, i8* %21, i64 %idx.ext12, !dbg !2821
  %23 = load i8*, i8** %end, align 8, !dbg !2822
  %cmp14 = icmp ugt i8* %add.ptr13, %23, !dbg !2823
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2824

if.then16:                                        ; preds = %for.body
  store i32 -84, i32* %retval, align 4, !dbg !2825
  br label %return, !dbg !2825

if.end17:                                         ; preds = %for.body
  %24 = load i8**, i8*** %out_strs.addr, align 8, !dbg !2826
  %tobool18 = icmp ne i8** %24, null, !dbg !2826
  br i1 %tobool18, label %land.lhs.true, label %if.end22, !dbg !2828

land.lhs.true:                                    ; preds = %if.end17
  %25 = load i32, i32* %i, align 4, !dbg !2829
  %26 = load i32, i32* %skip.addr, align 4, !dbg !2830
  %cmp19 = icmp sge i32 %25, %26, !dbg !2831
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2832

if.then21:                                        ; preds = %land.lhs.true
  %27 = load i8*, i8** %p, align 8, !dbg !2833
  %28 = load i8**, i8*** %out_strs.addr, align 8, !dbg !2834
  %incdec.ptr = getelementptr i8*, i8** %28, i32 1, !dbg !2834
  store i8** %incdec.ptr, i8*** %out_strs.addr, align 8, !dbg !2834
  store i8* %27, i8** %28, align 8, !dbg !2835
  br label %if.end22, !dbg !2836

if.end22:                                         ; preds = %if.then21, %land.lhs.true, %if.end17
  br label %for.inc, !dbg !2837

for.inc:                                          ; preds = %if.end22
  %29 = load i32, i32* %i, align 4, !dbg !2838
  %inc = add i32 %29, 1, !dbg !2838
  store i32 %inc, i32* %i, align 4, !dbg !2838
  %30 = load i32, i32* %l, align 4, !dbg !2839
  %31 = load i8*, i8** %p, align 8, !dbg !2840
  %idx.ext23 = sext i32 %30 to i64, !dbg !2840
  %add.ptr24 = getelementptr i8, i8* %31, i64 %idx.ext23, !dbg !2840
  store i8* %add.ptr24, i8** %p, align 8, !dbg !2840
  br label %for.cond, !dbg !2841, !llvm.loop !2842

for.end:                                          ; preds = %land.end
  %32 = load i32, i32* %skip.addr, align 4, !dbg !2844
  %33 = load i32, i32* %i, align 4, !dbg !2845
  %sub = sub i32 %33, %32, !dbg !2845
  store i32 %sub, i32* %i, align 4, !dbg !2845
  %34 = load i32, i32* %i, align 4, !dbg !2846
  %cmp25 = icmp sle i32 %34, 0, !dbg !2847
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !2846

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !2846

cond.false:                                       ; preds = %for.end
  %35 = load i32, i32* %i, align 4, !dbg !2848
  br label %cond.end, !dbg !2846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -61, %cond.true ], [ %35, %cond.false ], !dbg !2846
  store i32 %cond, i32* %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

return:                                           ; preds = %cond.end, %if.then16, %if.then2, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !2850
  ret i32 %36, !dbg !2850
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32* @of_prop_next_u32(%struct.property* %prop, i32* %cur, i32* %pu) #0 !dbg !2851 {
entry:
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !2138, metadata !DIExpression()), !dbg !2854
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !2154, metadata !DIExpression()), !dbg !2857
  %retval = alloca i32*, align 8
  %prop.addr = alloca %struct.property*, align 8
  %cur.addr = alloca i32*, align 8
  %pu.addr = alloca i32*, align 8
  %curv = alloca i8*, align 8
  store %struct.property* %prop, %struct.property** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %prop.addr, metadata !2858, metadata !DIExpression()), !dbg !2859
  store i32* %cur, i32** %cur.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cur.addr, metadata !2860, metadata !DIExpression()), !dbg !2861
  store i32* %pu, i32** %pu.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %pu.addr, metadata !2862, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.declare(metadata i8** %curv, metadata !2864, metadata !DIExpression()), !dbg !2865
  %0 = load i32*, i32** %cur.addr, align 8, !dbg !2866
  %1 = bitcast i32* %0 to i8*, !dbg !2866
  store i8* %1, i8** %curv, align 8, !dbg !2865
  %2 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2867
  %tobool = icmp ne %struct.property* %2, null, !dbg !2867
  br i1 %tobool, label %if.end, label %if.then, !dbg !2869

if.then:                                          ; preds = %entry
  store i32* null, i32** %retval, align 8, !dbg !2870
  br label %return, !dbg !2870

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %cur.addr, align 8, !dbg !2871
  %tobool1 = icmp ne i32* %3, null, !dbg !2871
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2873

if.then2:                                         ; preds = %if.end
  %4 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2874
  %value = getelementptr inbounds %struct.property, %struct.property* %4, i32 0, i32 2, !dbg !2876
  %5 = load i8*, i8** %value, align 8, !dbg !2876
  store i8* %5, i8** %curv, align 8, !dbg !2877
  br label %out_val, !dbg !2878

if.end3:                                          ; preds = %if.end
  %6 = load i8*, i8** %curv, align 8, !dbg !2879
  %add.ptr = getelementptr i8, i8* %6, i64 4, !dbg !2879
  store i8* %add.ptr, i8** %curv, align 8, !dbg !2879
  %7 = load i8*, i8** %curv, align 8, !dbg !2880
  %8 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2882
  %value4 = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 2, !dbg !2883
  %9 = load i8*, i8** %value4, align 8, !dbg !2883
  %10 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2884
  %length = getelementptr inbounds %struct.property, %struct.property* %10, i32 0, i32 1, !dbg !2885
  %11 = load i32, i32* %length, align 8, !dbg !2885
  %idx.ext = sext i32 %11 to i64, !dbg !2886
  %add.ptr5 = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !2886
  %cmp = icmp uge i8* %7, %add.ptr5, !dbg !2887
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2888

if.then6:                                         ; preds = %if.end3
  store i32* null, i32** %retval, align 8, !dbg !2889
  br label %return, !dbg !2889

if.end7:                                          ; preds = %if.end3
  br label %out_val, !dbg !2885

out_val:                                          ; preds = %if.end7, %if.then2
  call void @llvm.dbg.label(metadata !2890), !dbg !2891
  %12 = load i8*, i8** %curv, align 8, !dbg !2892
  %13 = bitcast i8* %12 to i32*, !dbg !2892
  store i32* %13, i32** %p.addr.i, align 8
  %14 = load i32*, i32** %p.addr.i, align 8, !dbg !2893
  store i32* %14, i32** %p.addr.i.i, align 8
  %15 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2894
  %16 = load i32, i32* %15, align 4, !dbg !2894
  %17 = call i1 @llvm.is.constant.i32(i32 %16) #9, !dbg !2894
  br i1 %17, label %cond.true.i.i, label %cond.false.i.i, !dbg !2894

cond.true.i.i:                                    ; preds = %out_val
  %18 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2894
  %19 = load i32, i32* %18, align 4, !dbg !2894
  %and.i.i = and i32 %19, 255, !dbg !2894
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !2894
  %20 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2894
  %21 = load i32, i32* %20, align 4, !dbg !2894
  %and1.i.i = and i32 %21, 65280, !dbg !2894
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !2894
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !2894
  %22 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2894
  %23 = load i32, i32* %22, align 4, !dbg !2894
  %and3.i.i = and i32 %23, 16711680, !dbg !2894
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !2894
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !2894
  %24 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2894
  %25 = load i32, i32* %24, align 4, !dbg !2894
  %and5.i.i = and i32 %25, -16777216, !dbg !2894
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !2894
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !2894
  br label %__be32_to_cpup.exit, !dbg !2894

cond.false.i.i:                                   ; preds = %out_val
  %26 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2894
  %27 = load i32, i32* %26, align 4, !dbg !2894
  %call.i.i = call i32 @__fswab32(i32 %27) #10, !dbg !2894
  br label %__be32_to_cpup.exit, !dbg !2894

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !2894
  %28 = load i32*, i32** %pu.addr, align 8, !dbg !2895
  store i32 %cond.i.i, i32* %28, align 4, !dbg !2896
  %29 = load i8*, i8** %curv, align 8, !dbg !2897
  %30 = bitcast i8* %29 to i32*, !dbg !2897
  store i32* %30, i32** %retval, align 8, !dbg !2898
  br label %return, !dbg !2898

return:                                           ; preds = %__be32_to_cpup.exit, %if.then6, %if.then
  %31 = load i32*, i32** %retval, align 8, !dbg !2899
  ret i32* %31, !dbg !2899
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i8* @of_prop_next_string(%struct.property* %prop, i8* %cur) #0 !dbg !2900 {
entry:
  %retval = alloca i8*, align 8
  %prop.addr = alloca %struct.property*, align 8
  %cur.addr = alloca i8*, align 8
  %curv = alloca i8*, align 8
  store %struct.property* %prop, %struct.property** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property** %prop.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i8* %cur, i8** %cur.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cur.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.declare(metadata i8** %curv, metadata !2907, metadata !DIExpression()), !dbg !2908
  %0 = load i8*, i8** %cur.addr, align 8, !dbg !2909
  store i8* %0, i8** %curv, align 8, !dbg !2908
  %1 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2910
  %tobool = icmp ne %struct.property* %1, null, !dbg !2910
  br i1 %tobool, label %if.end, label %if.then, !dbg !2912

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2913
  br label %return, !dbg !2913

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %cur.addr, align 8, !dbg !2914
  %tobool1 = icmp ne i8* %2, null, !dbg !2914
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2916

if.then2:                                         ; preds = %if.end
  %3 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2917
  %value = getelementptr inbounds %struct.property, %struct.property* %3, i32 0, i32 2, !dbg !2918
  %4 = load i8*, i8** %value, align 8, !dbg !2918
  store i8* %4, i8** %retval, align 8, !dbg !2919
  br label %return, !dbg !2919

if.end3:                                          ; preds = %if.end
  %5 = load i8*, i8** %cur.addr, align 8, !dbg !2920
  %call = call i64 @strlen(i8* %5) #7, !dbg !2921
  %add = add i64 %call, 1, !dbg !2922
  %6 = load i8*, i8** %curv, align 8, !dbg !2923
  %add.ptr = getelementptr i8, i8* %6, i64 %add, !dbg !2923
  store i8* %add.ptr, i8** %curv, align 8, !dbg !2923
  %7 = load i8*, i8** %curv, align 8, !dbg !2924
  %8 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2926
  %value4 = getelementptr inbounds %struct.property, %struct.property* %8, i32 0, i32 2, !dbg !2927
  %9 = load i8*, i8** %value4, align 8, !dbg !2927
  %10 = load %struct.property*, %struct.property** %prop.addr, align 8, !dbg !2928
  %length = getelementptr inbounds %struct.property, %struct.property* %10, i32 0, i32 1, !dbg !2929
  %11 = load i32, i32* %length, align 8, !dbg !2929
  %idx.ext = sext i32 %11 to i64, !dbg !2930
  %add.ptr5 = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !2930
  %cmp = icmp uge i8* %7, %add.ptr5, !dbg !2931
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2932

if.then6:                                         ; preds = %if.end3
  store i8* null, i8** %retval, align 8, !dbg !2933
  br label %return, !dbg !2933

if.end7:                                          ; preds = %if.end3
  %12 = load i8*, i8** %curv, align 8, !dbg !2934
  store i8* %12, i8** %retval, align 8, !dbg !2935
  br label %return, !dbg !2935

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !2936
  ret i8* %13, !dbg !2936
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_graph_parse_endpoint(%struct.device_node* %node, %struct.of_endpoint* %endpoint) #0 !dbg !2 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %endpoint.addr = alloca %struct.of_endpoint*, align 8
  %port_node = alloca %struct.device_node*, align 8
  %__ret_warn_once = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp39 = alloca i64, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2937, metadata !DIExpression()), !dbg !2938
  store %struct.of_endpoint* %endpoint, %struct.of_endpoint** %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_endpoint** %endpoint.addr, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.declare(metadata %struct.device_node** %port_node, metadata !2941, metadata !DIExpression()), !dbg !2942
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2943
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* %0) #7, !dbg !2944
  store %struct.device_node* %call, %struct.device_node** %port_node, align 8, !dbg !2942
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !2945, metadata !DIExpression()), !dbg !2947
  %1 = load %struct.device_node*, %struct.device_node** %port_node, align 8, !dbg !2947
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2947
  %lnot = xor i1 %tobool, true, !dbg !2947
  %lnot1 = xor i1 %lnot, true, !dbg !2947
  %lnot2 = xor i1 %lnot1, true, !dbg !2947
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2947
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !2947
  %2 = load i32, i32* %__ret_warn_once, align 4, !dbg !2948
  %tobool3 = icmp ne i32 %2, 0, !dbg !2948
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !2948

land.rhs:                                         ; preds = %entry
  %3 = load i8, i8* @of_graph_parse_endpoint.__warned, align 1, !dbg !2948
  %tobool4 = trunc i8 %3 to i1, !dbg !2948
  %lnot5 = xor i1 %tobool4, true, !dbg !2948
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot5, %land.rhs ], !dbg !2950
  %lnot7 = xor i1 %4, true, !dbg !2948
  %lnot9 = xor i1 %lnot7, true, !dbg !2948
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !2948
  %conv = sext i32 %lnot.ext10 to i64, !dbg !2948
  %tobool11 = icmp ne i64 %conv, 0, !dbg !2948
  br i1 %tobool11, label %if.then, label %if.end38, !dbg !2947

if.then:                                          ; preds = %land.end
  store i8 1, i8* @of_graph_parse_endpoint.__warned, align 1, !dbg !2951
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2953, metadata !DIExpression()), !dbg !2955
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !2955
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !2956
  %tobool12 = icmp ne i32 %5, 0, !dbg !2956
  %lnot13 = xor i1 %tobool12, true, !dbg !2956
  %lnot15 = xor i1 %lnot13, true, !dbg !2956
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !2956
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !2956
  %tobool18 = icmp ne i64 %conv17, 0, !dbg !2956
  br i1 %tobool18, label %if.then19, label %if.end, !dbg !2955

if.then19:                                        ; preds = %if.then
  br label %do.body, !dbg !2956

do.body:                                          ; preds = %if.then19
  br label %do.body20, !dbg !2958

do.body20:                                        ; preds = %do.body
  br label %do.end, !dbg !2960

do.end:                                           ; preds = %do.body20
  %6 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2958
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.of_graph_parse_endpoint, i64 0, i64 0), %struct.device_node* %6) #7, !dbg !2958
  br label %do.body21, !dbg !2958

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !2962

do.body22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !2964

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !2962

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 561, i32 2313, i64 12) #9, !dbg !2966, !srcloc !2968
  br label %do.end25, !dbg !2966

do.end25:                                         ; preds = %do.body24
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 155) #9, !dbg !2969, !srcloc !2971
  br label %do.body26, !dbg !2962

do.body26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2972

do.end27:                                         ; preds = %do.body26
  br label %do.end28, !dbg !2962

do.end28:                                         ; preds = %do.end27
  br label %do.body29, !dbg !2958

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !2974

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !2958

do.end31:                                         ; preds = %do.end30
  br label %if.end, !dbg !2958

if.end:                                           ; preds = %do.end31, %if.then
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !2955
  %tobool32 = icmp ne i32 %7, 0, !dbg !2955
  %lnot33 = xor i1 %tobool32, true, !dbg !2955
  %lnot35 = xor i1 %lnot33, true, !dbg !2955
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !2955
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !2955
  store i64 %conv37, i64* %tmp, align 8, !dbg !2956
  %8 = load i64, i64* %tmp, align 8, !dbg !2955
  br label %if.end38, !dbg !2951

if.end38:                                         ; preds = %if.end, %land.end
  %9 = load i32, i32* %__ret_warn_once, align 4, !dbg !2947
  %tobool40 = icmp ne i32 %9, 0, !dbg !2947
  %lnot41 = xor i1 %tobool40, true, !dbg !2947
  %lnot43 = xor i1 %lnot41, true, !dbg !2947
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !2947
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !2947
  store i64 %conv45, i64* %tmp39, align 8, !dbg !2948
  %10 = load i64, i64* %tmp39, align 8, !dbg !2947
  %11 = load %struct.of_endpoint*, %struct.of_endpoint** %endpoint.addr, align 8, !dbg !2976
  %12 = bitcast %struct.of_endpoint* %11 to i8*, !dbg !2977
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false), !dbg !2977
  %13 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2978
  %14 = load %struct.of_endpoint*, %struct.of_endpoint** %endpoint.addr, align 8, !dbg !2979
  %local_node = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %14, i32 0, i32 2, !dbg !2980
  store %struct.device_node* %13, %struct.device_node** %local_node, align 8, !dbg !2981
  %15 = load %struct.device_node*, %struct.device_node** %port_node, align 8, !dbg !2982
  %16 = load %struct.of_endpoint*, %struct.of_endpoint** %endpoint.addr, align 8, !dbg !2983
  %port = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %16, i32 0, i32 0, !dbg !2984
  %call46 = call i32 @of_property_read_u32(%struct.device_node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %port) #7, !dbg !2985
  %17 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2986
  %18 = load %struct.of_endpoint*, %struct.of_endpoint** %endpoint.addr, align 8, !dbg !2987
  %id = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %18, i32 0, i32 1, !dbg !2988
  %call47 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %id) #7, !dbg !2989
  %19 = load %struct.device_node*, %struct.device_node** %port_node, align 8, !dbg !2990
  call void @of_node_put(%struct.device_node* %19) #7, !dbg !2991
  ret i32 0, !dbg !2992
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2993 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3000, metadata !DIExpression()), !dbg !3001
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3002
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3003
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3004
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #7, !dbg !3005
  ret i32 %call, !dbg !3006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_port_by_id(%struct.device_node* %parent, i32 %id) #0 !dbg !3007 {
entry:
  %parent.addr = alloca %struct.device_node*, align 8
  %id.addr = alloca i32, align 4
  %node = alloca %struct.device_node*, align 8
  %port = alloca %struct.device_node*, align 8
  %port_id = alloca i32, align 4
  store %struct.device_node* %parent, %struct.device_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3012, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.declare(metadata %struct.device_node** %port, metadata !3016, metadata !DIExpression()), !dbg !3017
  %0 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3018
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3019
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !3020
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3021
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3021
  br i1 %tobool, label %if.then, label %if.end, !dbg !3023

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3024
  store %struct.device_node* %2, %struct.device_node** %parent.addr, align 8, !dbg !3025
  br label %if.end, !dbg !3026

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3027
  %call1 = call %struct.device_node* @of_get_next_child(%struct.device_node* %3, %struct.device_node* null) #7, !dbg !3027
  store %struct.device_node* %call1, %struct.device_node** %port, align 8, !dbg !3027
  br label %for.cond, !dbg !3027

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3029
  %cmp = icmp ne %struct.device_node* %4, null, !dbg !3029
  br i1 %cmp, label %for.body, label %for.end, !dbg !3027

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %port_id, metadata !3031, metadata !DIExpression()), !dbg !3033
  store i32 0, i32* %port_id, align 4, !dbg !3033
  %5 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3034
  %call2 = call zeroext i1 @of_node_name_eq(%struct.device_node* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !3036
  br i1 %call2, label %if.end4, label %if.then3, !dbg !3037

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !3038

if.end4:                                          ; preds = %for.body
  %6 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3039
  %call5 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %port_id) #7, !dbg !3040
  %7 = load i32, i32* %id.addr, align 4, !dbg !3041
  %8 = load i32, i32* %port_id, align 4, !dbg !3043
  %cmp6 = icmp eq i32 %7, %8, !dbg !3044
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3045

if.then7:                                         ; preds = %if.end4
  br label %for.end, !dbg !3046

if.end8:                                          ; preds = %if.end4
  br label %for.inc, !dbg !3047

for.inc:                                          ; preds = %if.end8, %if.then3
  %9 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3029
  %10 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3029
  %call9 = call %struct.device_node* @of_get_next_child(%struct.device_node* %9, %struct.device_node* %10) #7, !dbg !3029
  store %struct.device_node* %call9, %struct.device_node** %port, align 8, !dbg !3029
  br label %for.cond, !dbg !3029, !llvm.loop !3048

for.end:                                          ; preds = %if.then7, %for.cond
  %11 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3050
  call void @of_node_put(%struct.device_node* %11) #7, !dbg !3051
  %12 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3052
  ret %struct.device_node* %12, !dbg !3053
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_node_name_eq(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %parent, %struct.device_node* %prev) #0 !dbg !2039 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %parent.addr = alloca %struct.device_node*, align 8
  %prev.addr = alloca %struct.device_node*, align 8
  %endpoint = alloca %struct.device_node*, align 8
  %port = alloca %struct.device_node*, align 8
  %node = alloca %struct.device_node*, align 8
  %__ret_warn_once = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp53 = alloca i64, align 8
  store %struct.device_node* %parent, %struct.device_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent.addr, metadata !3054, metadata !DIExpression()), !dbg !3055
  store %struct.device_node* %prev, %struct.device_node** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %prev.addr, metadata !3056, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.declare(metadata %struct.device_node** %endpoint, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.declare(metadata %struct.device_node** %port, metadata !3060, metadata !DIExpression()), !dbg !3061
  %0 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3062
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !3062
  br i1 %tobool, label %if.end, label %if.then, !dbg !3064

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3065
  br label %return, !dbg !3065

if.end:                                           ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %prev.addr, align 8, !dbg !3066
  %tobool1 = icmp ne %struct.device_node* %1, null, !dbg !3066
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !3068

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3069, metadata !DIExpression()), !dbg !3071
  %2 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3072
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3073
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !3074
  %3 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3075
  %tobool3 = icmp ne %struct.device_node* %3, null, !dbg !3075
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3077

if.then4:                                         ; preds = %if.then2
  %4 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3078
  store %struct.device_node* %4, %struct.device_node** %parent.addr, align 8, !dbg !3079
  br label %if.end5, !dbg !3080

if.end5:                                          ; preds = %if.then4, %if.then2
  %5 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3081
  %call6 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !3082
  store %struct.device_node* %call6, %struct.device_node** %port, align 8, !dbg !3083
  %6 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3084
  call void @of_node_put(%struct.device_node* %6) #7, !dbg !3085
  %7 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3086
  %tobool7 = icmp ne %struct.device_node* %7, null, !dbg !3086
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3088

if.then8:                                         ; preds = %if.end5
  %8 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3089
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %8) #8, !dbg !3089
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3091
  br label %return, !dbg !3091

if.end10:                                         ; preds = %if.end5
  br label %if.end63, !dbg !3092

if.else:                                          ; preds = %if.end
  %9 = load %struct.device_node*, %struct.device_node** %prev.addr, align 8, !dbg !3093
  %call11 = call %struct.device_node* @of_get_parent(%struct.device_node* %9) #7, !dbg !3095
  store %struct.device_node* %call11, %struct.device_node** %port, align 8, !dbg !3096
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !3097, metadata !DIExpression()), !dbg !3100
  %10 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3100
  %tobool12 = icmp ne %struct.device_node* %10, null, !dbg !3100
  %lnot = xor i1 %tobool12, true, !dbg !3100
  %lnot13 = xor i1 %lnot, true, !dbg !3100
  %lnot14 = xor i1 %lnot13, true, !dbg !3100
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !3100
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !3100
  %11 = load i32, i32* %__ret_warn_once, align 4, !dbg !3101
  %tobool15 = icmp ne i32 %11, 0, !dbg !3101
  br i1 %tobool15, label %land.rhs, label %land.end, !dbg !3101

land.rhs:                                         ; preds = %if.else
  %12 = load i8, i8* @of_graph_get_next_endpoint.__warned, align 1, !dbg !3101
  %tobool16 = trunc i8 %12 to i1, !dbg !3101
  %lnot17 = xor i1 %tobool16, true, !dbg !3101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %13 = phi i1 [ false, %if.else ], [ %lnot17, %land.rhs ], !dbg !3103
  %lnot19 = xor i1 %13, true, !dbg !3101
  %lnot21 = xor i1 %lnot19, true, !dbg !3101
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !3101
  %conv = sext i32 %lnot.ext22 to i64, !dbg !3101
  %tobool23 = icmp ne i64 %conv, 0, !dbg !3101
  br i1 %tobool23, label %if.then24, label %if.end52, !dbg !3100

if.then24:                                        ; preds = %land.end
  store i8 1, i8* @of_graph_get_next_endpoint.__warned, align 1, !dbg !3104
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3106, metadata !DIExpression()), !dbg !3108
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3108
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !3109
  %tobool25 = icmp ne i32 %14, 0, !dbg !3109
  %lnot26 = xor i1 %tobool25, true, !dbg !3109
  %lnot28 = xor i1 %lnot26, true, !dbg !3109
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !3109
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !3109
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !3109
  br i1 %tobool31, label %if.then32, label %if.end45, !dbg !3108

if.then32:                                        ; preds = %if.then24
  br label %do.body, !dbg !3109

do.body:                                          ; preds = %if.then32
  br label %do.body33, !dbg !3111

do.body33:                                        ; preds = %do.body
  br label %do.end, !dbg !3113

do.end:                                           ; preds = %do.body33
  %15 = load %struct.device_node*, %struct.device_node** %prev.addr, align 8, !dbg !3111
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.of_graph_get_next_endpoint, i64 0, i64 0), %struct.device_node* %15) #7, !dbg !3111
  br label %do.body34, !dbg !3111

do.body34:                                        ; preds = %do.end
  br label %do.body35, !dbg !3115

do.body35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3117

do.end36:                                         ; preds = %do.body35
  br label %do.body37, !dbg !3115

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 650, i32 2313, i64 12) #9, !dbg !3119, !srcloc !3121
  br label %do.end38, !dbg !3119

do.end38:                                         ; preds = %do.body37
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !3122, !srcloc !3124
  br label %do.body39, !dbg !3115

do.body39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !3125

do.end40:                                         ; preds = %do.body39
  br label %do.end41, !dbg !3115

do.end41:                                         ; preds = %do.end40
  br label %do.body42, !dbg !3111

do.body42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !3127

do.end43:                                         ; preds = %do.body42
  br label %do.end44, !dbg !3111

do.end44:                                         ; preds = %do.end43
  br label %if.end45, !dbg !3111

if.end45:                                         ; preds = %do.end44, %if.then24
  %16 = load i32, i32* %__ret_warn_on, align 4, !dbg !3108
  %tobool46 = icmp ne i32 %16, 0, !dbg !3108
  %lnot47 = xor i1 %tobool46, true, !dbg !3108
  %lnot49 = xor i1 %lnot47, true, !dbg !3108
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !3108
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !3108
  store i64 %conv51, i64* %tmp, align 8, !dbg !3109
  %17 = load i64, i64* %tmp, align 8, !dbg !3108
  br label %if.end52, !dbg !3104

if.end52:                                         ; preds = %if.end45, %land.end
  %18 = load i32, i32* %__ret_warn_once, align 4, !dbg !3100
  %tobool54 = icmp ne i32 %18, 0, !dbg !3100
  %lnot55 = xor i1 %tobool54, true, !dbg !3100
  %lnot57 = xor i1 %lnot55, true, !dbg !3100
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !3100
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !3100
  store i64 %conv59, i64* %tmp53, align 8, !dbg !3101
  %19 = load i64, i64* %tmp53, align 8, !dbg !3100
  %tobool60 = icmp ne i64 %19, 0, !dbg !3129
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !3130

if.then61:                                        ; preds = %if.end52
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3131
  br label %return, !dbg !3131

if.end62:                                         ; preds = %if.end52
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end10
  br label %while.body, !dbg !3132

while.body:                                       ; preds = %if.end63, %do.end76
  %20 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3133
  %21 = load %struct.device_node*, %struct.device_node** %prev.addr, align 8, !dbg !3135
  %call64 = call %struct.device_node* @of_get_next_child(%struct.device_node* %20, %struct.device_node* %21) #7, !dbg !3136
  store %struct.device_node* %call64, %struct.device_node** %endpoint, align 8, !dbg !3137
  %22 = load %struct.device_node*, %struct.device_node** %endpoint, align 8, !dbg !3138
  %tobool65 = icmp ne %struct.device_node* %22, null, !dbg !3138
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !3140

if.then66:                                        ; preds = %while.body
  %23 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3141
  call void @of_node_put(%struct.device_node* %23) #7, !dbg !3143
  %24 = load %struct.device_node*, %struct.device_node** %endpoint, align 8, !dbg !3144
  store %struct.device_node* %24, %struct.device_node** %retval, align 8, !dbg !3145
  br label %return, !dbg !3145

if.end67:                                         ; preds = %while.body
  store %struct.device_node* null, %struct.device_node** %prev.addr, align 8, !dbg !3146
  br label %do.body68, !dbg !3147

do.body68:                                        ; preds = %do.cond, %if.end67
  %25 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3148
  %26 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3150
  %call69 = call %struct.device_node* @of_get_next_child(%struct.device_node* %25, %struct.device_node* %26) #7, !dbg !3151
  store %struct.device_node* %call69, %struct.device_node** %port, align 8, !dbg !3152
  %27 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3153
  %tobool70 = icmp ne %struct.device_node* %27, null, !dbg !3153
  br i1 %tobool70, label %if.end72, label %if.then71, !dbg !3155

if.then71:                                        ; preds = %do.body68
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3156
  br label %return, !dbg !3156

if.end72:                                         ; preds = %do.body68
  br label %do.cond, !dbg !3157

do.cond:                                          ; preds = %if.end72
  %28 = load %struct.device_node*, %struct.device_node** %port, align 8, !dbg !3158
  %call73 = call zeroext i1 @of_node_name_eq(%struct.device_node* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !3159
  %lnot74 = xor i1 %call73, true, !dbg !3160
  br i1 %lnot74, label %do.body68, label %do.end76, !dbg !3157, !llvm.loop !3161

do.end76:                                         ; preds = %do.cond
  br label %while.body, !dbg !3132, !llvm.loop !3163

return:                                           ; preds = %if.then71, %if.then66, %if.then61, %if.then8, %if.then
  %29 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3165
  ret %struct.device_node* %29, !dbg !3165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* %parent, i32 %port_reg, i32 %reg) #0 !dbg !3166 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %parent.addr = alloca %struct.device_node*, align 8
  %port_reg.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %endpoint = alloca %struct.of_endpoint, align 8
  %node = alloca %struct.device_node*, align 8
  store %struct.device_node* %parent, %struct.device_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent.addr, metadata !3169, metadata !DIExpression()), !dbg !3170
  store i32 %port_reg, i32* %port_reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port_reg.addr, metadata !3171, metadata !DIExpression()), !dbg !3172
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.declare(metadata %struct.of_endpoint* %endpoint, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3177, metadata !DIExpression()), !dbg !3178
  store %struct.device_node* null, %struct.device_node** %node, align 8, !dbg !3178
  %0 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3179
  %call = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %0, %struct.device_node* null) #7, !dbg !3179
  store %struct.device_node* %call, %struct.device_node** %node, align 8, !dbg !3179
  br label %for.cond, !dbg !3179

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3181
  %cmp = icmp ne %struct.device_node* %1, null, !dbg !3181
  br i1 %cmp, label %for.body, label %for.end, !dbg !3179

for.body:                                         ; preds = %for.cond
  %2 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3183
  %call1 = call i32 @of_graph_parse_endpoint(%struct.device_node* %2, %struct.of_endpoint* %endpoint) #7, !dbg !3185
  %3 = load i32, i32* %port_reg.addr, align 4, !dbg !3186
  %cmp2 = icmp eq i32 %3, -1, !dbg !3188
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false, !dbg !3189

lor.lhs.false:                                    ; preds = %for.body
  %port = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i32 0, i32 0, !dbg !3190
  %4 = load i32, i32* %port, align 8, !dbg !3190
  %5 = load i32, i32* %port_reg.addr, align 4, !dbg !3191
  %cmp3 = icmp eq i32 %4, %5, !dbg !3192
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !3193

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %6 = load i32, i32* %reg.addr, align 4, !dbg !3194
  %cmp4 = icmp eq i32 %6, -1, !dbg !3195
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !3196

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.of_endpoint, %struct.of_endpoint* %endpoint, i32 0, i32 1, !dbg !3197
  %7 = load i32, i32* %id, align 4, !dbg !3197
  %8 = load i32, i32* %reg.addr, align 4, !dbg !3198
  %cmp6 = icmp eq i32 %7, %8, !dbg !3199
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3200

if.then:                                          ; preds = %lor.lhs.false5, %land.lhs.true
  %9 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3201
  store %struct.device_node* %9, %struct.device_node** %retval, align 8, !dbg !3202
  br label %return, !dbg !3202

if.end:                                           ; preds = %lor.lhs.false5, %lor.lhs.false
  br label %for.inc, !dbg !3203

for.inc:                                          ; preds = %if.end
  %10 = load %struct.device_node*, %struct.device_node** %parent.addr, align 8, !dbg !3181
  %11 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3181
  %call7 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %10, %struct.device_node* %11) #7, !dbg !3181
  store %struct.device_node* %call7, %struct.device_node** %node, align 8, !dbg !3181
  br label %for.cond, !dbg !3181, !llvm.loop !3204

for.end:                                          ; preds = %for.cond
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3206
  br label %return, !dbg !3206

return:                                           ; preds = %for.end, %if.then
  %12 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3207
  ret %struct.device_node* %12, !dbg !3207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* %node) #0 !dbg !3208 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3213
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 0) #7, !dbg !3214
  ret %struct.device_node* %call, !dbg !3215
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_port_parent(%struct.device_node* %node) #0 !dbg !3216 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %depth = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.declare(metadata i32* %depth, metadata !3221, metadata !DIExpression()), !dbg !3222
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3223
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !3223
  br i1 %tobool, label %if.end, label %if.then, !dbg !3225

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3226
  br label %return, !dbg !3226

if.end:                                           ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3227
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %1) #7, !dbg !3228
  store i32 3, i32* %depth, align 4, !dbg !3229
  br label %for.cond, !dbg !3231

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %depth, align 4, !dbg !3232
  %tobool1 = icmp ne i32 %2, 0, !dbg !3232
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !3234

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3235
  %tobool2 = icmp ne %struct.device_node* %3, null, !dbg !3234
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool2, %land.rhs ], !dbg !3236
  br i1 %4, label %for.body, label %for.end, !dbg !3237

for.body:                                         ; preds = %land.end
  %5 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3238
  %call3 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %5) #7, !dbg !3240
  store %struct.device_node* %call3, %struct.device_node** %node.addr, align 8, !dbg !3241
  %6 = load i32, i32* %depth, align 4, !dbg !3242
  %cmp = icmp eq i32 %6, 2, !dbg !3244
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !3245

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3246
  %call4 = call zeroext i1 @of_node_name_eq(%struct.device_node* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3247
  br i1 %call4, label %if.end6, label %if.then5, !dbg !3248

if.then5:                                         ; preds = %land.lhs.true
  br label %for.end, !dbg !3249

if.end6:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3250

for.inc:                                          ; preds = %if.end6
  %8 = load i32, i32* %depth, align 4, !dbg !3251
  %dec = add i32 %8, -1, !dbg !3251
  store i32 %dec, i32* %depth, align 4, !dbg !3251
  br label %for.cond, !dbg !3252, !llvm.loop !3253

for.end:                                          ; preds = %if.then5, %land.end
  %9 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3255
  store %struct.device_node* %9, %struct.device_node** %retval, align 8, !dbg !3256
  br label %return, !dbg !3256

return:                                           ; preds = %for.end, %if.then
  %10 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3257
  ret %struct.device_node* %10, !dbg !3257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !3258 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3261
  ret %struct.device_node* %0, !dbg !3262
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %node) #0 !dbg !3263 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %np = alloca %struct.device_node*, align 8
  %pp = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.declare(metadata %struct.device_node** %pp, metadata !3268, metadata !DIExpression()), !dbg !3269
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3270
  %call = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* %0) #7, !dbg !3271
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3272
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3273
  %call1 = call %struct.device_node* @of_graph_get_port_parent(%struct.device_node* %1) #7, !dbg !3274
  store %struct.device_node* %call1, %struct.device_node** %pp, align 8, !dbg !3275
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3276
  call void @of_node_put(%struct.device_node* %2) #7, !dbg !3277
  %3 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !3278
  ret %struct.device_node* %3, !dbg !3279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_remote_port(%struct.device_node* %node) #0 !dbg !3280 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %np = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3283, metadata !DIExpression()), !dbg !3284
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3285
  %call = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* %0) #7, !dbg !3286
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3287
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3288
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3288
  br i1 %tobool, label %if.end, label %if.then, !dbg !3290

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3291
  br label %return, !dbg !3291

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3292
  %call1 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %2) #7, !dbg !3293
  store %struct.device_node* %call1, %struct.device_node** %retval, align 8, !dbg !3294
  br label %return, !dbg !3294

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3295
  ret %struct.device_node* %3, !dbg !3295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_graph_get_endpoint_count(%struct.device_node* %np) #0 !dbg !3296 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %endpoint = alloca %struct.device_node*, align 8
  %num = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.device_node** %endpoint, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.declare(metadata i32* %num, metadata !3303, metadata !DIExpression()), !dbg !3304
  store i32 0, i32* %num, align 4, !dbg !3304
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3305
  %call = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %0, %struct.device_node* null) #7, !dbg !3305
  store %struct.device_node* %call, %struct.device_node** %endpoint, align 8, !dbg !3305
  br label %for.cond, !dbg !3305

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.device_node*, %struct.device_node** %endpoint, align 8, !dbg !3307
  %cmp = icmp ne %struct.device_node* %1, null, !dbg !3307
  br i1 %cmp, label %for.body, label %for.end, !dbg !3305

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %num, align 4, !dbg !3309
  %inc = add i32 %2, 1, !dbg !3309
  store i32 %inc, i32* %num, align 4, !dbg !3309
  br label %for.inc, !dbg !3310

for.inc:                                          ; preds = %for.body
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3307
  %4 = load %struct.device_node*, %struct.device_node** %endpoint, align 8, !dbg !3307
  %call1 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %3, %struct.device_node* %4) #7, !dbg !3307
  store %struct.device_node* %call1, %struct.device_node** %endpoint, align 8, !dbg !3307
  br label %for.cond, !dbg !3307, !llvm.loop !3311

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %num, align 4, !dbg !3313
  ret i32 %5, !dbg !3314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_graph_get_remote_node(%struct.device_node* %node, i32 %port, i32 %endpoint) #0 !dbg !3315 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %port.addr = alloca i32, align 4
  %endpoint.addr = alloca i32, align 4
  %endpoint_node = alloca %struct.device_node*, align 8
  %remote = alloca %struct.device_node*, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3318, metadata !DIExpression()), !dbg !3319
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !3320, metadata !DIExpression()), !dbg !3321
  store i32 %endpoint, i32* %endpoint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %endpoint.addr, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.declare(metadata %struct.device_node** %endpoint_node, metadata !3324, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.declare(metadata %struct.device_node** %remote, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3328
  %1 = load i32, i32* %port.addr, align 4, !dbg !3329
  %2 = load i32, i32* %endpoint.addr, align 4, !dbg !3330
  %call = call %struct.device_node* @of_graph_get_endpoint_by_regs(%struct.device_node* %0, i32 %1, i32 %2) #7, !dbg !3331
  store %struct.device_node* %call, %struct.device_node** %endpoint_node, align 8, !dbg !3332
  %3 = load %struct.device_node*, %struct.device_node** %endpoint_node, align 8, !dbg !3333
  %tobool = icmp ne %struct.device_node* %3, null, !dbg !3333
  br i1 %tobool, label %if.end, label %if.then, !dbg !3335

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !3336
  %4 = load i32, i32* %tmp, align 4, !dbg !3340
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3341
  br label %return, !dbg !3341

if.end:                                           ; preds = %entry
  %5 = load %struct.device_node*, %struct.device_node** %endpoint_node, align 8, !dbg !3342
  %call1 = call %struct.device_node* @of_graph_get_remote_port_parent(%struct.device_node* %5) #7, !dbg !3343
  store %struct.device_node* %call1, %struct.device_node** %remote, align 8, !dbg !3344
  %6 = load %struct.device_node*, %struct.device_node** %endpoint_node, align 8, !dbg !3345
  call void @of_node_put(%struct.device_node* %6) #7, !dbg !3346
  %7 = load %struct.device_node*, %struct.device_node** %remote, align 8, !dbg !3347
  %tobool2 = icmp ne %struct.device_node* %7, null, !dbg !3347
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3349

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %tmp4, align 4, !dbg !3350
  %8 = load i32, i32* %tmp4, align 4, !dbg !3354
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3355
  br label %return, !dbg !3355

if.end5:                                          ; preds = %if.end
  %9 = load %struct.device_node*, %struct.device_node** %remote, align 8, !dbg !3356
  %call6 = call zeroext i1 @of_device_is_available(%struct.device_node* %9) #7, !dbg !3358
  br i1 %call6, label %if.end9, label %if.then7, !dbg !3359

if.then7:                                         ; preds = %if.end5
  store i32 0, i32* %tmp8, align 4, !dbg !3360
  %10 = load i32, i32* %tmp8, align 4, !dbg !3364
  %11 = load %struct.device_node*, %struct.device_node** %remote, align 8, !dbg !3365
  call void @of_node_put(%struct.device_node* %11) #7, !dbg !3366
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3367
  br label %return, !dbg !3367

if.end9:                                          ; preds = %if.end5
  %12 = load %struct.device_node*, %struct.device_node** %remote, align 8, !dbg !3368
  store %struct.device_node* %12, %struct.device_node** %retval, align 8, !dbg !3369
  br label %return, !dbg !3369

return:                                           ; preds = %if.end9, %if.then7, %if.then3, %if.then
  %13 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3370
  ret %struct.device_node* %13, !dbg !3370
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_device_is_available(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_get(%struct.fwnode_handle* %fwnode) #0 !dbg !3371 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %tmp3 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3374, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3377, metadata !DIExpression()), !dbg !3379
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3379
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3379
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3379
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3379
  br i1 %call, label %cond.true, label %cond.false, !dbg !3379

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3380, metadata !DIExpression()), !dbg !3382
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3382
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3382
  store i8* %3, i8** %__mptr, align 8, !dbg !3382
  br label %do.body, !dbg !3382

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3383

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3382
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3382
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3382
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3383
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3382
  br label %cond.end, !dbg !3379

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3379

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3379
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3379
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3379
  %call2 = call %struct.device_node* @of_node_get(%struct.device_node* %7) #7, !dbg !3376
  store %struct.device_node* %call2, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3376
  %8 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3376
  %tobool = icmp ne %struct.device_node* %8, null, !dbg !3376
  br i1 %tobool, label %cond.true4, label %cond.false6, !dbg !3376

cond.true4:                                       ; preds = %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3376
  %fwnode5 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 3, !dbg !3376
  br label %cond.end7, !dbg !3376

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7, !dbg !3376

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi %struct.fwnode_handle* [ %fwnode5, %cond.true4 ], [ null, %cond.false6 ], !dbg !3376
  store %struct.fwnode_handle* %cond8, %struct.fwnode_handle** %tmp3, align 8, !dbg !3376
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp3, align 8, !dbg !3376
  ret %struct.fwnode_handle* %10, !dbg !3385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_fwnode_put(%struct.fwnode_handle* %fwnode) #0 !dbg !3386 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3387, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3389, metadata !DIExpression()), !dbg !3391
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3391
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3391
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3391
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3391
  br i1 %call, label %cond.true, label %cond.false, !dbg !3391

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3392, metadata !DIExpression()), !dbg !3394
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3394
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3394
  store i8* %3, i8** %__mptr, align 8, !dbg !3394
  br label %do.body, !dbg !3394

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3395

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3394
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3394
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3394
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3395
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3394
  br label %cond.end, !dbg !3391

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3391

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3391
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3391
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3391
  call void @of_node_put(%struct.device_node* %7) #7, !dbg !3397
  ret void, !dbg !3398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_fwnode_device_is_available(%struct.fwnode_handle* %fwnode) #0 !dbg !3399 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3402, metadata !DIExpression()), !dbg !3404
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3404
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3404
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3404
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3404
  br i1 %call, label %cond.true, label %cond.false, !dbg !3404

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3405, metadata !DIExpression()), !dbg !3407
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3407
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3407
  store i8* %3, i8** %__mptr, align 8, !dbg !3407
  br label %do.body, !dbg !3407

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3408

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3407
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3407
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3407
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3408
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3407
  br label %cond.end, !dbg !3404

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3404

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3404
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3404
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3404
  %call2 = call zeroext i1 @of_device_is_available(%struct.device_node* %7) #7, !dbg !3410
  ret i1 %call2, !dbg !3411
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_fwnode_device_get_match_data(%struct.fwnode_handle* %fwnode, %struct.device* %dev) #0 !dbg !3412 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3413, metadata !DIExpression()), !dbg !3414
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3415, metadata !DIExpression()), !dbg !3416
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3417
  %call = call i8* @of_device_get_match_data(%struct.device* %0) #7, !dbg !3418
  ret i8* %call, !dbg !3419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_fwnode_property_present(%struct.fwnode_handle* %fwnode, i8* %propname) #0 !dbg !3420 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3423, metadata !DIExpression()), !dbg !3424
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3425, metadata !DIExpression()), !dbg !3427
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3427
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3427
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3427
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3427
  br i1 %call, label %cond.true, label %cond.false, !dbg !3427

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3428, metadata !DIExpression()), !dbg !3430
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3430
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3430
  store i8* %3, i8** %__mptr, align 8, !dbg !3430
  br label %do.body, !dbg !3430

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3431

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3430
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3430
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3430
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3431
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3430
  br label %cond.end, !dbg !3427

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3427

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3427
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3427
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3427
  %8 = load i8*, i8** %propname.addr, align 8, !dbg !3433
  %call2 = call zeroext i1 @of_property_read_bool(%struct.device_node* %7, i8* %8) #7, !dbg !3434
  ret i1 %call2, !dbg !3435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fwnode_property_read_int_array(%struct.fwnode_handle* %fwnode, i8* %propname, i32 %elem_size, i8* %val, i64 %nval) #0 !dbg !3436 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  %node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3437, metadata !DIExpression()), !dbg !3438
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3447, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3449, metadata !DIExpression()), !dbg !3451
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3451
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3451
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3451
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3451
  br i1 %call, label %cond.true, label %cond.false, !dbg !3451

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3452, metadata !DIExpression()), !dbg !3454
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3454
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3454
  store i8* %3, i8** %__mptr, align 8, !dbg !3454
  br label %do.body, !dbg !3454

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3455

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3454
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3454
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3454
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3455
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3454
  br label %cond.end, !dbg !3451

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3451

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3451
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3451
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3451
  store %struct.device_node* %7, %struct.device_node** %node, align 8, !dbg !3448
  %8 = load i8*, i8** %val.addr, align 8, !dbg !3457
  %tobool = icmp ne i8* %8, null, !dbg !3457
  br i1 %tobool, label %if.end, label %if.then, !dbg !3459

if.then:                                          ; preds = %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3460
  %10 = load i8*, i8** %propname.addr, align 8, !dbg !3461
  %11 = load i32, i32* %elem_size.addr, align 4, !dbg !3462
  %call2 = call i32 @of_property_count_elems_of_size(%struct.device_node* %9, i8* %10, i32 %11) #7, !dbg !3463
  store i32 %call2, i32* %retval, align 4, !dbg !3464
  br label %return, !dbg !3464

if.end:                                           ; preds = %cond.end
  %12 = load i32, i32* %elem_size.addr, align 4, !dbg !3465
  switch i32 %12, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
    i32 8, label %sw.bb8
  ], !dbg !3466

sw.bb:                                            ; preds = %if.end
  %13 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3467
  %14 = load i8*, i8** %propname.addr, align 8, !dbg !3469
  %15 = load i8*, i8** %val.addr, align 8, !dbg !3470
  %16 = load i64, i64* %nval.addr, align 8, !dbg !3471
  %call3 = call i32 @of_property_read_u8_array(%struct.device_node* %13, i8* %14, i8* %15, i64 %16) #7, !dbg !3472
  store i32 %call3, i32* %retval, align 4, !dbg !3473
  br label %return, !dbg !3473

sw.bb4:                                           ; preds = %if.end
  %17 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3474
  %18 = load i8*, i8** %propname.addr, align 8, !dbg !3475
  %19 = load i8*, i8** %val.addr, align 8, !dbg !3476
  %20 = bitcast i8* %19 to i16*, !dbg !3476
  %21 = load i64, i64* %nval.addr, align 8, !dbg !3477
  %call5 = call i32 @of_property_read_u16_array(%struct.device_node* %17, i8* %18, i16* %20, i64 %21) #7, !dbg !3478
  store i32 %call5, i32* %retval, align 4, !dbg !3479
  br label %return, !dbg !3479

sw.bb6:                                           ; preds = %if.end
  %22 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3480
  %23 = load i8*, i8** %propname.addr, align 8, !dbg !3481
  %24 = load i8*, i8** %val.addr, align 8, !dbg !3482
  %25 = bitcast i8* %24 to i32*, !dbg !3482
  %26 = load i64, i64* %nval.addr, align 8, !dbg !3483
  %call7 = call i32 @of_property_read_u32_array(%struct.device_node* %22, i8* %23, i32* %25, i64 %26) #7, !dbg !3484
  store i32 %call7, i32* %retval, align 4, !dbg !3485
  br label %return, !dbg !3485

sw.bb8:                                           ; preds = %if.end
  %27 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3486
  %28 = load i8*, i8** %propname.addr, align 8, !dbg !3487
  %29 = load i8*, i8** %val.addr, align 8, !dbg !3488
  %30 = bitcast i8* %29 to i64*, !dbg !3488
  %31 = load i64, i64* %nval.addr, align 8, !dbg !3489
  %call9 = call i32 @of_property_read_u64_array(%struct.device_node* %27, i8* %28, i64* %30, i64 %31) #7, !dbg !3490
  store i32 %call9, i32* %retval, align 4, !dbg !3491
  br label %return, !dbg !3491

sw.epilog:                                        ; preds = %if.end
  store i32 -6, i32* %retval, align 4, !dbg !3492
  br label %return, !dbg !3492

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !3493
  ret i32 %32, !dbg !3493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fwnode_property_read_string_array(%struct.fwnode_handle* %fwnode, i8* %propname, i8** %val, i64 %nval) #0 !dbg !3494 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i8**, align 8
  %nval.addr = alloca i64, align 8
  %node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3495, metadata !DIExpression()), !dbg !3496
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3497, metadata !DIExpression()), !dbg !3498
  store i8** %val, i8*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %val.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !3501, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3505, metadata !DIExpression()), !dbg !3507
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3507
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3507
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3507
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3507
  br i1 %call, label %cond.true, label %cond.false, !dbg !3507

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3508, metadata !DIExpression()), !dbg !3510
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3510
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3510
  store i8* %3, i8** %__mptr, align 8, !dbg !3510
  br label %do.body, !dbg !3510

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3511

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3510
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3510
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3510
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3511
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3510
  br label %cond.end, !dbg !3507

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3507

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3507
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3507
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3507
  store %struct.device_node* %7, %struct.device_node** %node, align 8, !dbg !3504
  %8 = load i8**, i8*** %val.addr, align 8, !dbg !3513
  %tobool = icmp ne i8** %8, null, !dbg !3513
  br i1 %tobool, label %cond.true2, label %cond.false4, !dbg !3513

cond.true2:                                       ; preds = %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3514
  %10 = load i8*, i8** %propname.addr, align 8, !dbg !3515
  %11 = load i8**, i8*** %val.addr, align 8, !dbg !3516
  %12 = load i64, i64* %nval.addr, align 8, !dbg !3517
  %call3 = call i32 @of_property_read_string_array(%struct.device_node* %9, i8* %10, i8** %11, i64 %12) #7, !dbg !3518
  br label %cond.end6, !dbg !3513

cond.false4:                                      ; preds = %cond.end
  %13 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3519
  %14 = load i8*, i8** %propname.addr, align 8, !dbg !3520
  %call5 = call i32 @of_property_count_strings(%struct.device_node* %13, i8* %14) #7, !dbg !3521
  br label %cond.end6, !dbg !3513

cond.end6:                                        ; preds = %cond.false4, %cond.true2
  %cond7 = phi i32 [ %call3, %cond.true2 ], [ %call5, %cond.false4 ], !dbg !3513
  ret i32 %cond7, !dbg !3522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_fwnode_get_name(%struct.fwnode_handle* %fwnode) #0 !dbg !3523 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3524, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3526, metadata !DIExpression()), !dbg !3528
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3528
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3528
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3528
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3528
  br i1 %call, label %cond.true, label %cond.false, !dbg !3528

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3529, metadata !DIExpression()), !dbg !3531
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3531
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3531
  store i8* %3, i8** %__mptr, align 8, !dbg !3531
  br label %do.body, !dbg !3531

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3532

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3531
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3531
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3531
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3532
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3531
  br label %cond.end, !dbg !3528

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3528

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3528
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3528
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3528
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %7, i32 0, i32 2, !dbg !3534
  %8 = load i8*, i8** %full_name, align 8, !dbg !3534
  %call2 = call i8* @kbasename(i8* %8) #7, !dbg !3535
  ret i8* %call2, !dbg !3536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_fwnode_get_name_prefix(%struct.fwnode_handle* %fwnode) #0 !dbg !3537 {
entry:
  %retval = alloca i8*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3540, metadata !DIExpression()), !dbg !3543
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3543
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3543
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3543
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3543
  br i1 %call, label %cond.true, label %cond.false, !dbg !3543

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3544, metadata !DIExpression()), !dbg !3546
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3546
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3546
  store i8* %3, i8** %__mptr, align 8, !dbg !3546
  br label %do.body, !dbg !3546

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3547

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3546
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3546
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3546
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3547
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3546
  br label %cond.end, !dbg !3543

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3543

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3543
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3543
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3543
  %parent = getelementptr inbounds %struct.device_node, %struct.device_node* %7, i32 0, i32 6, !dbg !3549
  %8 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !3549
  %tobool = icmp ne %struct.device_node* %8, null, !dbg !3550
  br i1 %tobool, label %if.end, label %if.then, !dbg !3551

if.then:                                          ; preds = %cond.end
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %retval, align 8, !dbg !3552
  br label %return, !dbg !3552

if.end:                                           ; preds = %cond.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %retval, align 8, !dbg !3553
  br label %return, !dbg !3553

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !3554
  ret i8* %9, !dbg !3554
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_get_parent(%struct.fwnode_handle* %fwnode) #0 !dbg !3555 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %tmp3 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3561, metadata !DIExpression()), !dbg !3563
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3563
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3563
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3563
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3563
  br i1 %call, label %cond.true, label %cond.false, !dbg !3563

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3564, metadata !DIExpression()), !dbg !3566
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3566
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3566
  store i8* %3, i8** %__mptr, align 8, !dbg !3566
  br label %do.body, !dbg !3566

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3567

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3566
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3566
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3566
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3567
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3566
  br label %cond.end, !dbg !3563

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3563

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3563
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3563
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3563
  %call2 = call %struct.device_node* @of_get_parent(%struct.device_node* %7) #7, !dbg !3560
  store %struct.device_node* %call2, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3560
  %8 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3560
  %tobool = icmp ne %struct.device_node* %8, null, !dbg !3560
  br i1 %tobool, label %cond.true4, label %cond.false6, !dbg !3560

cond.true4:                                       ; preds = %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3560
  %fwnode5 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 3, !dbg !3560
  br label %cond.end7, !dbg !3560

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7, !dbg !3560

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi %struct.fwnode_handle* [ %fwnode5, %cond.true4 ], [ null, %cond.false6 ], !dbg !3560
  store %struct.fwnode_handle* %cond8, %struct.fwnode_handle** %tmp3, align 8, !dbg !3560
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp3, align 8, !dbg !3560
  ret %struct.fwnode_handle* %10, !dbg !3569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_get_next_child_node(%struct.fwnode_handle* %fwnode, %struct.fwnode_handle* %child) #0 !dbg !3570 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %child.addr = alloca %struct.fwnode_handle*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode2 = alloca %struct.fwnode_handle*, align 8
  %tmp3 = alloca %struct.device_node*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp9 = alloca %struct.device_node*, align 8
  %tmp15 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3571, metadata !DIExpression()), !dbg !3572
  store %struct.fwnode_handle* %child, %struct.fwnode_handle** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %child.addr, metadata !3573, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3575, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3578, metadata !DIExpression()), !dbg !3580
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3580
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3580
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3580
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3580
  br i1 %call, label %cond.true, label %cond.false, !dbg !3580

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3581, metadata !DIExpression()), !dbg !3583
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3583
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3583
  store i8* %3, i8** %__mptr, align 8, !dbg !3583
  br label %do.body, !dbg !3583

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3584

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3583
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3583
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3583
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3584
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3583
  br label %cond.end, !dbg !3580

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3580

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3580
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3580
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3580
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode2, metadata !3586, metadata !DIExpression()), !dbg !3588
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !3588
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %__to_of_node_fwnode2, align 8, !dbg !3588
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode2, align 8, !dbg !3588
  %call4 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %9) #7, !dbg !3588
  br i1 %call4, label %cond.true5, label %cond.false11, !dbg !3588

cond.true5:                                       ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !3589, metadata !DIExpression()), !dbg !3591
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode2, align 8, !dbg !3591
  %11 = bitcast %struct.fwnode_handle* %10 to i8*, !dbg !3591
  store i8* %11, i8** %__mptr6, align 8, !dbg !3591
  br label %do.body7, !dbg !3591

do.body7:                                         ; preds = %cond.true5
  br label %do.end8, !dbg !3592

do.end8:                                          ; preds = %do.body7
  %12 = load i8*, i8** %__mptr6, align 8, !dbg !3591
  %add.ptr10 = getelementptr i8, i8* %12, i64 -24, !dbg !3591
  %13 = bitcast i8* %add.ptr10 to %struct.device_node*, !dbg !3591
  store %struct.device_node* %13, %struct.device_node** %tmp9, align 8, !dbg !3592
  %14 = load %struct.device_node*, %struct.device_node** %tmp9, align 8, !dbg !3591
  br label %cond.end12, !dbg !3588

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12, !dbg !3588

cond.end12:                                       ; preds = %cond.false11, %do.end8
  %cond13 = phi %struct.device_node* [ %14, %do.end8 ], [ null, %cond.false11 ], !dbg !3588
  store %struct.device_node* %cond13, %struct.device_node** %tmp3, align 8, !dbg !3588
  %15 = load %struct.device_node*, %struct.device_node** %tmp3, align 8, !dbg !3588
  %call14 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %7, %struct.device_node* %15) #7, !dbg !3577
  store %struct.device_node* %call14, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3577
  %16 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3577
  %tobool = icmp ne %struct.device_node* %16, null, !dbg !3577
  br i1 %tobool, label %cond.true16, label %cond.false18, !dbg !3577

cond.true16:                                      ; preds = %cond.end12
  %17 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3577
  %fwnode17 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 3, !dbg !3577
  br label %cond.end19, !dbg !3577

cond.false18:                                     ; preds = %cond.end12
  br label %cond.end19, !dbg !3577

cond.end19:                                       ; preds = %cond.false18, %cond.true16
  %cond20 = phi %struct.fwnode_handle* [ %fwnode17, %cond.true16 ], [ null, %cond.false18 ], !dbg !3577
  store %struct.fwnode_handle* %cond20, %struct.fwnode_handle** %tmp15, align 8, !dbg !3577
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp15, align 8, !dbg !3577
  ret %struct.fwnode_handle* %18, !dbg !3594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_get_named_child_node(%struct.fwnode_handle* %fwnode, i8* %childname) #0 !dbg !3595 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %childname.addr = alloca i8*, align 8
  %node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %tmp4 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i8* %childname, i8** %childname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %childname.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3602, metadata !DIExpression()), !dbg !3604
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3604
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3604
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3604
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3604
  br i1 %call, label %cond.true, label %cond.false, !dbg !3604

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3605, metadata !DIExpression()), !dbg !3607
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3607
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3607
  store i8* %3, i8** %__mptr, align 8, !dbg !3607
  br label %do.body, !dbg !3607

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3608

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3607
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3607
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3607
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3608
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3607
  br label %cond.end, !dbg !3604

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3604

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3604
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3604
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3604
  store %struct.device_node* %7, %struct.device_node** %node, align 8, !dbg !3601
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !3610, metadata !DIExpression()), !dbg !3611
  %8 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3612
  %call2 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %8, %struct.device_node* null) #7, !dbg !3612
  store %struct.device_node* %call2, %struct.device_node** %child, align 8, !dbg !3612
  br label %for.cond, !dbg !3612

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3614
  %cmp = icmp ne %struct.device_node* %9, null, !dbg !3614
  br i1 %cmp, label %for.body, label %for.end, !dbg !3612

for.body:                                         ; preds = %for.cond
  %10 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3616
  %11 = load i8*, i8** %childname.addr, align 8, !dbg !3618
  %call3 = call zeroext i1 @of_node_name_eq(%struct.device_node* %10, i8* %11) #7, !dbg !3619
  br i1 %call3, label %if.then, label %if.end, !dbg !3620

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3621, metadata !DIExpression()), !dbg !3623
  %12 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3623
  store %struct.device_node* %12, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3623
  %13 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3623
  %tobool = icmp ne %struct.device_node* %13, null, !dbg !3623
  br i1 %tobool, label %cond.true5, label %cond.false7, !dbg !3623

cond.true5:                                       ; preds = %if.then
  %14 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3623
  %fwnode6 = getelementptr inbounds %struct.device_node, %struct.device_node* %14, i32 0, i32 3, !dbg !3623
  br label %cond.end8, !dbg !3623

cond.false7:                                      ; preds = %if.then
  br label %cond.end8, !dbg !3623

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi %struct.fwnode_handle* [ %fwnode6, %cond.true5 ], [ null, %cond.false7 ], !dbg !3623
  store %struct.fwnode_handle* %cond9, %struct.fwnode_handle** %tmp4, align 8, !dbg !3623
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp4, align 8, !dbg !3623
  store %struct.fwnode_handle* %15, %struct.fwnode_handle** %retval, align 8, !dbg !3624
  br label %return, !dbg !3624

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3625

for.inc:                                          ; preds = %if.end
  %16 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3614
  %17 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3614
  %call10 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %16, %struct.device_node* %17) #7, !dbg !3614
  store %struct.device_node* %call10, %struct.device_node** %child, align 8, !dbg !3614
  br label %for.cond, !dbg !3614, !llvm.loop !3626

for.end:                                          ; preds = %for.cond
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !3628
  br label %return, !dbg !3628

return:                                           ; preds = %for.end, %cond.end8
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !3629
  ret %struct.fwnode_handle* %18, !dbg !3629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fwnode_get_reference_args(%struct.fwnode_handle* %fwnode, i8* %prop, i8* %nargs_prop, i32 %nargs, i32 %index, %struct.fwnode_reference_args* %args) #0 !dbg !3630 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %prop.addr = alloca i8*, align 8
  %nargs_prop.addr = alloca i8*, align 8
  %nargs.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %args.addr = alloca %struct.fwnode_reference_args*, align 8
  %of_args = alloca %struct.of_phandle_args, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode3 = alloca %struct.fwnode_handle*, align 8
  %tmp4 = alloca %struct.device_node*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp10 = alloca %struct.device_node*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %tmp22 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3631, metadata !DIExpression()), !dbg !3632
  store i8* %prop, i8** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop.addr, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i8* %nargs_prop, i8** %nargs_prop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %nargs_prop.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i32 %nargs, i32* %nargs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nargs.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3639, metadata !DIExpression()), !dbg !3640
  store %struct.fwnode_reference_args* %args, %struct.fwnode_reference_args** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_reference_args** %args.addr, metadata !3641, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %of_args, metadata !3643, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3654, metadata !DIExpression()), !dbg !3655
  %0 = load i8*, i8** %nargs_prop.addr, align 8, !dbg !3656
  %tobool = icmp ne i8* %0, null, !dbg !3656
  br i1 %tobool, label %if.then, label %if.else, !dbg !3658

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3659, metadata !DIExpression()), !dbg !3661
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3661
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3661
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3661
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %2) #7, !dbg !3661
  br i1 %call, label %cond.true, label %cond.false, !dbg !3661

cond.true:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3662, metadata !DIExpression()), !dbg !3664
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3664
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3664
  store i8* %4, i8** %__mptr, align 8, !dbg !3664
  br label %do.body, !dbg !3664

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3665

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3664
  %add.ptr = getelementptr i8, i8* %5, i64 -24, !dbg !3664
  %6 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3664
  store %struct.device_node* %6, %struct.device_node** %tmp1, align 8, !dbg !3665
  %7 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3664
  br label %cond.end, !dbg !3661

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !3661

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %7, %do.end ], [ null, %cond.false ], !dbg !3661
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3661
  %8 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3661
  %9 = load i8*, i8** %prop.addr, align 8, !dbg !3667
  %10 = load i8*, i8** %nargs_prop.addr, align 8, !dbg !3668
  %11 = load i32, i32* %index.addr, align 4, !dbg !3669
  %call2 = call i32 @of_parse_phandle_with_args(%struct.device_node* %8, i8* %9, i8* %10, i32 %11, %struct.of_phandle_args* %of_args) #7, !dbg !3670
  store i32 %call2, i32* %ret, align 4, !dbg !3671
  br label %if.end, !dbg !3672

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode3, metadata !3673, metadata !DIExpression()), !dbg !3675
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3675
  store %struct.fwnode_handle* %12, %struct.fwnode_handle** %__to_of_node_fwnode3, align 8, !dbg !3675
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode3, align 8, !dbg !3675
  %call5 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %13) #7, !dbg !3675
  br i1 %call5, label %cond.true6, label %cond.false12, !dbg !3675

cond.true6:                                       ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !3676, metadata !DIExpression()), !dbg !3678
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode3, align 8, !dbg !3678
  %15 = bitcast %struct.fwnode_handle* %14 to i8*, !dbg !3678
  store i8* %15, i8** %__mptr7, align 8, !dbg !3678
  br label %do.body8, !dbg !3678

do.body8:                                         ; preds = %cond.true6
  br label %do.end9, !dbg !3679

do.end9:                                          ; preds = %do.body8
  %16 = load i8*, i8** %__mptr7, align 8, !dbg !3678
  %add.ptr11 = getelementptr i8, i8* %16, i64 -24, !dbg !3678
  %17 = bitcast i8* %add.ptr11 to %struct.device_node*, !dbg !3678
  store %struct.device_node* %17, %struct.device_node** %tmp10, align 8, !dbg !3679
  %18 = load %struct.device_node*, %struct.device_node** %tmp10, align 8, !dbg !3678
  br label %cond.end13, !dbg !3675

cond.false12:                                     ; preds = %if.else
  br label %cond.end13, !dbg !3675

cond.end13:                                       ; preds = %cond.false12, %do.end9
  %cond14 = phi %struct.device_node* [ %18, %do.end9 ], [ null, %cond.false12 ], !dbg !3675
  store %struct.device_node* %cond14, %struct.device_node** %tmp4, align 8, !dbg !3675
  %19 = load %struct.device_node*, %struct.device_node** %tmp4, align 8, !dbg !3675
  %20 = load i8*, i8** %prop.addr, align 8, !dbg !3681
  %21 = load i32, i32* %nargs.addr, align 4, !dbg !3682
  %22 = load i32, i32* %index.addr, align 4, !dbg !3683
  %call15 = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %19, i8* %20, i32 %21, i32 %22, %struct.of_phandle_args* %of_args) #7, !dbg !3684
  store i32 %call15, i32* %ret, align 4, !dbg !3685
  br label %if.end

if.end:                                           ; preds = %cond.end13, %cond.end
  %23 = load i32, i32* %ret, align 4, !dbg !3686
  %cmp = icmp slt i32 %23, 0, !dbg !3688
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !3689

if.then16:                                        ; preds = %if.end
  %24 = load i32, i32* %ret, align 4, !dbg !3690
  store i32 %24, i32* %retval, align 4, !dbg !3691
  br label %return, !dbg !3691

if.end17:                                         ; preds = %if.end
  %25 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3692
  %tobool18 = icmp ne %struct.fwnode_reference_args* %25, null, !dbg !3692
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !3694

if.then19:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !3695
  br label %return, !dbg !3695

if.end20:                                         ; preds = %if.end17
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i32 0, i32 1, !dbg !3696
  %26 = load i32, i32* %args_count, align 8, !dbg !3696
  %27 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3697
  %nargs21 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %27, i32 0, i32 1, !dbg !3698
  store i32 %26, i32* %nargs21, align 8, !dbg !3699
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3700, metadata !DIExpression()), !dbg !3702
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i32 0, i32 0, !dbg !3702
  %28 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3702
  store %struct.device_node* %28, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3702
  %29 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3702
  %tobool23 = icmp ne %struct.device_node* %29, null, !dbg !3702
  br i1 %tobool23, label %cond.true24, label %cond.false26, !dbg !3702

cond.true24:                                      ; preds = %if.end20
  %30 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3702
  %fwnode25 = getelementptr inbounds %struct.device_node, %struct.device_node* %30, i32 0, i32 3, !dbg !3702
  br label %cond.end27, !dbg !3702

cond.false26:                                     ; preds = %if.end20
  br label %cond.end27, !dbg !3702

cond.end27:                                       ; preds = %cond.false26, %cond.true24
  %cond28 = phi %struct.fwnode_handle* [ %fwnode25, %cond.true24 ], [ null, %cond.false26 ], !dbg !3702
  store %struct.fwnode_handle* %cond28, %struct.fwnode_handle** %tmp22, align 8, !dbg !3702
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp22, align 8, !dbg !3702
  %32 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3703
  %fwnode29 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %32, i32 0, i32 0, !dbg !3704
  store %struct.fwnode_handle* %31, %struct.fwnode_handle** %fwnode29, align 8, !dbg !3705
  store i32 0, i32* %i, align 4, !dbg !3706
  br label %for.cond, !dbg !3708

for.cond:                                         ; preds = %for.inc, %cond.end27
  %33 = load i32, i32* %i, align 4, !dbg !3709
  %cmp30 = icmp ult i32 %33, 8, !dbg !3711
  br i1 %cmp30, label %for.body, label %for.end, !dbg !3712

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4, !dbg !3713
  %args_count31 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i32 0, i32 1, !dbg !3714
  %35 = load i32, i32* %args_count31, align 8, !dbg !3714
  %cmp32 = icmp ult i32 %34, %35, !dbg !3715
  br i1 %cmp32, label %cond.true33, label %cond.false35, !dbg !3713

cond.true33:                                      ; preds = %for.body
  %args34 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %of_args, i32 0, i32 2, !dbg !3716
  %36 = load i32, i32* %i, align 4, !dbg !3717
  %idxprom = zext i32 %36 to i64, !dbg !3718
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args34, i64 0, i64 %idxprom, !dbg !3718
  %37 = load i32, i32* %arrayidx, align 4, !dbg !3718
  br label %cond.end36, !dbg !3713

cond.false35:                                     ; preds = %for.body
  br label %cond.end36, !dbg !3713

cond.end36:                                       ; preds = %cond.false35, %cond.true33
  %cond37 = phi i32 [ %37, %cond.true33 ], [ 0, %cond.false35 ], !dbg !3713
  %conv = zext i32 %cond37 to i64, !dbg !3713
  %38 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !3719
  %args38 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %38, i32 0, i32 2, !dbg !3720
  %39 = load i32, i32* %i, align 4, !dbg !3721
  %idxprom39 = zext i32 %39 to i64, !dbg !3719
  %arrayidx40 = getelementptr [8 x i64], [8 x i64]* %args38, i64 0, i64 %idxprom39, !dbg !3719
  store i64 %conv, i64* %arrayidx40, align 8, !dbg !3722
  br label %for.inc, !dbg !3719

for.inc:                                          ; preds = %cond.end36
  %40 = load i32, i32* %i, align 4, !dbg !3723
  %inc = add i32 %40, 1, !dbg !3723
  store i32 %inc, i32* %i, align 4, !dbg !3723
  br label %for.cond, !dbg !3724, !llvm.loop !3725

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3727
  br label %return, !dbg !3727

return:                                           ; preds = %for.end, %if.then19, %if.then16
  %41 = load i32, i32* %retval, align 4, !dbg !3728
  ret i32 %41, !dbg !3728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_graph_get_next_endpoint(%struct.fwnode_handle* %fwnode, %struct.fwnode_handle* %prev) #0 !dbg !3729 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %prev.addr = alloca %struct.fwnode_handle*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode2 = alloca %struct.fwnode_handle*, align 8
  %tmp3 = alloca %struct.device_node*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp9 = alloca %struct.device_node*, align 8
  %tmp15 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3730, metadata !DIExpression()), !dbg !3731
  store %struct.fwnode_handle* %prev, %struct.fwnode_handle** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %prev.addr, metadata !3732, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3734, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3737, metadata !DIExpression()), !dbg !3739
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3739
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3739
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3739
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3739
  br i1 %call, label %cond.true, label %cond.false, !dbg !3739

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3740, metadata !DIExpression()), !dbg !3742
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3742
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3742
  store i8* %3, i8** %__mptr, align 8, !dbg !3742
  br label %do.body, !dbg !3742

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3743

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3742
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3742
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3742
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3743
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3742
  br label %cond.end, !dbg !3739

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3739

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3739
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3739
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3739
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode2, metadata !3745, metadata !DIExpression()), !dbg !3747
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %prev.addr, align 8, !dbg !3747
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %__to_of_node_fwnode2, align 8, !dbg !3747
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode2, align 8, !dbg !3747
  %call4 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %9) #7, !dbg !3747
  br i1 %call4, label %cond.true5, label %cond.false11, !dbg !3747

cond.true5:                                       ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !3748, metadata !DIExpression()), !dbg !3750
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode2, align 8, !dbg !3750
  %11 = bitcast %struct.fwnode_handle* %10 to i8*, !dbg !3750
  store i8* %11, i8** %__mptr6, align 8, !dbg !3750
  br label %do.body7, !dbg !3750

do.body7:                                         ; preds = %cond.true5
  br label %do.end8, !dbg !3751

do.end8:                                          ; preds = %do.body7
  %12 = load i8*, i8** %__mptr6, align 8, !dbg !3750
  %add.ptr10 = getelementptr i8, i8* %12, i64 -24, !dbg !3750
  %13 = bitcast i8* %add.ptr10 to %struct.device_node*, !dbg !3750
  store %struct.device_node* %13, %struct.device_node** %tmp9, align 8, !dbg !3751
  %14 = load %struct.device_node*, %struct.device_node** %tmp9, align 8, !dbg !3750
  br label %cond.end12, !dbg !3747

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12, !dbg !3747

cond.end12:                                       ; preds = %cond.false11, %do.end8
  %cond13 = phi %struct.device_node* [ %14, %do.end8 ], [ null, %cond.false11 ], !dbg !3747
  store %struct.device_node* %cond13, %struct.device_node** %tmp3, align 8, !dbg !3747
  %15 = load %struct.device_node*, %struct.device_node** %tmp3, align 8, !dbg !3747
  %call14 = call %struct.device_node* @of_graph_get_next_endpoint(%struct.device_node* %7, %struct.device_node* %15) #7, !dbg !3736
  store %struct.device_node* %call14, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3736
  %16 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3736
  %tobool = icmp ne %struct.device_node* %16, null, !dbg !3736
  br i1 %tobool, label %cond.true16, label %cond.false18, !dbg !3736

cond.true16:                                      ; preds = %cond.end12
  %17 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3736
  %fwnode17 = getelementptr inbounds %struct.device_node, %struct.device_node* %17, i32 0, i32 3, !dbg !3736
  br label %cond.end19, !dbg !3736

cond.false18:                                     ; preds = %cond.end12
  br label %cond.end19, !dbg !3736

cond.end19:                                       ; preds = %cond.false18, %cond.true16
  %cond20 = phi %struct.fwnode_handle* [ %fwnode17, %cond.true16 ], [ null, %cond.false18 ], !dbg !3736
  store %struct.fwnode_handle* %cond20, %struct.fwnode_handle** %tmp15, align 8, !dbg !3736
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp15, align 8, !dbg !3736
  ret %struct.fwnode_handle* %18, !dbg !3753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_graph_get_remote_endpoint(%struct.fwnode_handle* %fwnode) #0 !dbg !3754 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %tmp3 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3757, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3760, metadata !DIExpression()), !dbg !3762
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3762
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3762
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3762
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3762
  br i1 %call, label %cond.true, label %cond.false, !dbg !3762

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3763, metadata !DIExpression()), !dbg !3765
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3765
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3765
  store i8* %3, i8** %__mptr, align 8, !dbg !3765
  br label %do.body, !dbg !3765

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3766

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3765
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3765
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3765
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3766
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3765
  br label %cond.end, !dbg !3762

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3762

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3762
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3762
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3762
  %call2 = call %struct.device_node* @of_graph_get_remote_endpoint(%struct.device_node* %7) #7, !dbg !3759
  store %struct.device_node* %call2, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3759
  %8 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3759
  %tobool = icmp ne %struct.device_node* %8, null, !dbg !3759
  br i1 %tobool, label %cond.true4, label %cond.false6, !dbg !3759

cond.true4:                                       ; preds = %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3759
  %fwnode5 = getelementptr inbounds %struct.device_node, %struct.device_node* %9, i32 0, i32 3, !dbg !3759
  br label %cond.end7, !dbg !3759

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7, !dbg !3759

cond.end7:                                        ; preds = %cond.false6, %cond.true4
  %cond8 = phi %struct.fwnode_handle* [ %fwnode5, %cond.true4 ], [ null, %cond.false6 ], !dbg !3759
  store %struct.fwnode_handle* %cond8, %struct.fwnode_handle** %tmp3, align 8, !dbg !3759
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp3, align 8, !dbg !3759
  ret %struct.fwnode_handle* %10, !dbg !3768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_fwnode_graph_get_port_parent(%struct.fwnode_handle* %fwnode) #0 !dbg !3769 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %np = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %__of_fwnode_handle_node = alloca %struct.device_node*, align 8
  %tmp5 = alloca %struct.fwnode_handle*, align 8
  %__of_fwnode_handle_node13 = alloca %struct.device_node*, align 8
  %tmp15 = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3774, metadata !DIExpression()), !dbg !3776
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3776
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3776
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3776
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3776
  br i1 %call, label %cond.true, label %cond.false, !dbg !3776

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3777, metadata !DIExpression()), !dbg !3779
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3779
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3779
  store i8* %3, i8** %__mptr, align 8, !dbg !3779
  br label %do.body, !dbg !3779

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3780

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3779
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3779
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3779
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3780
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3779
  br label %cond.end, !dbg !3776

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3776

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3776
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3776
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3776
  %call2 = call %struct.device_node* @of_get_parent(%struct.device_node* %7) #7, !dbg !3782
  store %struct.device_node* %call2, %struct.device_node** %np, align 8, !dbg !3783
  %8 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3784
  %tobool = icmp ne %struct.device_node* %8, null, !dbg !3784
  br i1 %tobool, label %if.end, label %if.then, !dbg !3786

if.then:                                          ; preds = %cond.end
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !3787
  br label %return, !dbg !3787

if.end:                                           ; preds = %cond.end
  %9 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3788
  %call3 = call zeroext i1 @of_node_name_eq(%struct.device_node* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3790
  br i1 %call3, label %if.end12, label %if.then4, !dbg !3791

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node, metadata !3792, metadata !DIExpression()), !dbg !3794
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3794
  store %struct.device_node* %10, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3794
  %11 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3794
  %tobool6 = icmp ne %struct.device_node* %11, null, !dbg !3794
  br i1 %tobool6, label %cond.true7, label %cond.false9, !dbg !3794

cond.true7:                                       ; preds = %if.then4
  %12 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node, align 8, !dbg !3794
  %fwnode8 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 3, !dbg !3794
  br label %cond.end10, !dbg !3794

cond.false9:                                      ; preds = %if.then4
  br label %cond.end10, !dbg !3794

cond.end10:                                       ; preds = %cond.false9, %cond.true7
  %cond11 = phi %struct.fwnode_handle* [ %fwnode8, %cond.true7 ], [ null, %cond.false9 ], !dbg !3794
  store %struct.fwnode_handle* %cond11, %struct.fwnode_handle** %tmp5, align 8, !dbg !3794
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp5, align 8, !dbg !3794
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %retval, align 8, !dbg !3795
  br label %return, !dbg !3795

if.end12:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.device_node** %__of_fwnode_handle_node13, metadata !3796, metadata !DIExpression()), !dbg !3798
  %14 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3798
  %call14 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %14) #7, !dbg !3798
  store %struct.device_node* %call14, %struct.device_node** %__of_fwnode_handle_node13, align 8, !dbg !3798
  %15 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node13, align 8, !dbg !3798
  %tobool16 = icmp ne %struct.device_node* %15, null, !dbg !3798
  br i1 %tobool16, label %cond.true17, label %cond.false19, !dbg !3798

cond.true17:                                      ; preds = %if.end12
  %16 = load %struct.device_node*, %struct.device_node** %__of_fwnode_handle_node13, align 8, !dbg !3798
  %fwnode18 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 3, !dbg !3798
  br label %cond.end20, !dbg !3798

cond.false19:                                     ; preds = %if.end12
  br label %cond.end20, !dbg !3798

cond.end20:                                       ; preds = %cond.false19, %cond.true17
  %cond21 = phi %struct.fwnode_handle* [ %fwnode18, %cond.true17 ], [ null, %cond.false19 ], !dbg !3798
  store %struct.fwnode_handle* %cond21, %struct.fwnode_handle** %tmp15, align 8, !dbg !3798
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %tmp15, align 8, !dbg !3798
  store %struct.fwnode_handle* %17, %struct.fwnode_handle** %retval, align 8, !dbg !3799
  br label %return, !dbg !3799

return:                                           ; preds = %cond.end20, %cond.end10, %if.then
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !3800
  ret %struct.fwnode_handle* %18, !dbg !3800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fwnode_graph_parse_endpoint(%struct.fwnode_handle* %fwnode, %struct.fwnode_endpoint* %endpoint) #0 !dbg !3801 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %endpoint.addr = alloca %struct.fwnode_endpoint*, align 8
  %node = alloca %struct.device_node*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.device_node*, align 8
  %port_node = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3802, metadata !DIExpression()), !dbg !3803
  store %struct.fwnode_endpoint* %endpoint, %struct.fwnode_endpoint** %endpoint.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_endpoint** %endpoint.addr, metadata !3804, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3808, metadata !DIExpression()), !dbg !3810
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3810
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3810
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3810
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %1) #7, !dbg !3810
  br i1 %call, label %cond.true, label %cond.false, !dbg !3810

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3811, metadata !DIExpression()), !dbg !3813
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3813
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3813
  store i8* %3, i8** %__mptr, align 8, !dbg !3813
  br label %do.body, !dbg !3813

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3814

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3813
  %add.ptr = getelementptr i8, i8* %4, i64 -24, !dbg !3813
  %5 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3813
  store %struct.device_node* %5, %struct.device_node** %tmp1, align 8, !dbg !3814
  %6 = load %struct.device_node*, %struct.device_node** %tmp1, align 8, !dbg !3813
  br label %cond.end, !dbg !3810

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3810

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %6, %do.end ], [ null, %cond.false ], !dbg !3810
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3810
  %7 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3810
  store %struct.device_node* %7, %struct.device_node** %node, align 8, !dbg !3807
  call void @llvm.dbg.declare(metadata %struct.device_node** %port_node, metadata !3816, metadata !DIExpression()), !dbg !3817
  %8 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3818
  %call2 = call %struct.device_node* @of_get_parent(%struct.device_node* %8) #7, !dbg !3819
  store %struct.device_node* %call2, %struct.device_node** %port_node, align 8, !dbg !3817
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3820
  %10 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !3821
  %local_fwnode = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %10, i32 0, i32 2, !dbg !3822
  store %struct.fwnode_handle* %9, %struct.fwnode_handle** %local_fwnode, align 8, !dbg !3823
  %11 = load %struct.device_node*, %struct.device_node** %port_node, align 8, !dbg !3824
  %12 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !3825
  %port = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %12, i32 0, i32 0, !dbg !3826
  %call3 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %port) #7, !dbg !3827
  %13 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !3828
  %14 = load %struct.fwnode_endpoint*, %struct.fwnode_endpoint** %endpoint.addr, align 8, !dbg !3829
  %id = getelementptr inbounds %struct.fwnode_endpoint, %struct.fwnode_endpoint* %14, i32 0, i32 1, !dbg !3830
  %call4 = call i32 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %id) #7, !dbg !3831
  %15 = load %struct.device_node*, %struct.device_node** %port_node, align 8, !dbg !3832
  call void @of_node_put(%struct.device_node* %15) #7, !dbg !3833
  ret i32 0, !dbg !3834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fwnode_add_links(%struct.fwnode_handle* %fwnode, %struct.device* %dev) #0 !dbg !3835 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %__to_of_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp5 = alloca %struct.device_node*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3836, metadata !DIExpression()), !dbg !3837
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3838, metadata !DIExpression()), !dbg !3839
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3840
  %call = call zeroext i1 @is_of_node(%struct.fwnode_handle* %0) #7, !dbg !3840
  %lnot = xor i1 %call, true, !dbg !3840
  %lnot1 = xor i1 %lnot, true, !dbg !3840
  %lnot2 = xor i1 %lnot1, true, !dbg !3840
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3840
  %conv = sext i32 %lnot.ext to i64, !dbg !3840
  %tobool = icmp ne i64 %conv, 0, !dbg !3840
  br i1 %tobool, label %if.then, label %if.end, !dbg !3842

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3843
  br label %return, !dbg !3843

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3844
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_of_node_fwnode, metadata !3845, metadata !DIExpression()), !dbg !3847
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3847
  store %struct.fwnode_handle* %2, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3847
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3847
  %call3 = call zeroext i1 @is_of_node(%struct.fwnode_handle* %3) #7, !dbg !3847
  br i1 %call3, label %cond.true, label %cond.false, !dbg !3847

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3848, metadata !DIExpression()), !dbg !3850
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_of_node_fwnode, align 8, !dbg !3850
  %5 = bitcast %struct.fwnode_handle* %4 to i8*, !dbg !3850
  store i8* %5, i8** %__mptr, align 8, !dbg !3850
  br label %do.body, !dbg !3850

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3851

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3850
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !3850
  %7 = bitcast i8* %add.ptr to %struct.device_node*, !dbg !3850
  store %struct.device_node* %7, %struct.device_node** %tmp5, align 8, !dbg !3851
  %8 = load %struct.device_node*, %struct.device_node** %tmp5, align 8, !dbg !3850
  br label %cond.end, !dbg !3847

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3847

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.device_node* [ %8, %do.end ], [ null, %cond.false ], !dbg !3847
  store %struct.device_node* %cond, %struct.device_node** %tmp, align 8, !dbg !3847
  %9 = load %struct.device_node*, %struct.device_node** %tmp, align 8, !dbg !3847
  %call6 = call i32 @of_link_to_suppliers(%struct.device* %1, %struct.device_node* %9) #7, !dbg !3853
  store i32 %call6, i32* %retval, align 4, !dbg !3854
  br label %return, !dbg !3854

return:                                           ; preds = %cond.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3855
  ret i32 %10, !dbg !3855
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3856 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3859, metadata !DIExpression()), !dbg !3860
  %0 = load i64, i64* %error.addr, align 8, !dbg !3861
  %1 = inttoptr i64 %0 to i8*, !dbg !3862
  ret i8* %1, !dbg !3863
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !3864 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3867, metadata !DIExpression()), !dbg !3868
  %0 = load i32, i32* %val.addr, align 4, !dbg !3869
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !3870
  ret i32 %call, !dbg !3871
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !3872 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3874, metadata !DIExpression()), !dbg !3875
  %0 = load i32, i32* %val.addr, align 4, !dbg !3876
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #11, !dbg !3877, !srcloc !3878
  store i32 %1, i32* %val.addr, align 4, !dbg !3877
  %2 = load i32, i32* %val.addr, align 4, !dbg !3879
  ret i32 %2, !dbg !3880
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__fswab64(i64 %val) #6 !dbg !3881 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3884, metadata !DIExpression()), !dbg !3885
  %0 = load i64, i64* %val.addr, align 8, !dbg !3886
  %call = call i64 @__arch_swab64(i64 %0) #10, !dbg !3887
  ret i64 %call, !dbg !3888
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i64 @__arch_swab64(i64 %val) #6 !dbg !3889 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3890, metadata !DIExpression()), !dbg !3891
  %0 = load i64, i64* %val.addr, align 8, !dbg !3892
  %1 = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !3893, !srcloc !3894
  store i64 %1, i64* %val.addr, align 8, !dbg !3893
  %2 = load i64, i64* %val.addr, align 8, !dbg !3895
  ret i64 %2, !dbg !3896
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #6 !dbg !3897 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !3900, metadata !DIExpression()), !dbg !3901
  %0 = load i16, i16* %val.addr, align 2, !dbg !3902
  %conv = zext i16 %0 to i32, !dbg !3902
  %and = and i32 %conv, 255, !dbg !3902
  %shl = shl i32 %and, 8, !dbg !3902
  %1 = load i16, i16* %val.addr, align 2, !dbg !3902
  %conv1 = zext i16 %1 to i32, !dbg !3902
  %and2 = and i32 %conv1, 65280, !dbg !3902
  %shr = ashr i32 %and2, 8, !dbg !3902
  %or = or i32 %shl, %shr, !dbg !3902
  %conv3 = trunc i32 %or to i16, !dbg !3902
  ret i16 %conv3, !dbg !3903
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3904 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3907, metadata !DIExpression()), !dbg !3908
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3909, metadata !DIExpression()), !dbg !3910
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3915, metadata !DIExpression()), !dbg !3916
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3917
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3918
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3919
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3920
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #7, !dbg !3921
  store i32 %call, i32* %ret, align 4, !dbg !3916
  %4 = load i32, i32* %ret, align 4, !dbg !3922
  %cmp = icmp sge i32 %4, 0, !dbg !3924
  br i1 %cmp, label %if.then, label %if.else, !dbg !3925

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3926
  br label %return, !dbg !3926

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3927
  store i32 %5, i32* %retval, align 4, !dbg !3928
  br label %return, !dbg !3928

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3929
  ret i32 %6, !dbg !3929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_of_node(%struct.fwnode_handle* %fwnode) #0 !dbg !3930 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3933
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !3933
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #7, !dbg !3934
  br i1 %call, label %land.end, label %land.rhs, !dbg !3935

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3936
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !3937
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !3937
  %cmp = icmp eq %struct.fwnode_operations* %3, @of_fwnode_ops, !dbg !3938
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !3939
  ret i1 %4, !dbg !3940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !3941 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3942, metadata !DIExpression()), !dbg !3943
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3944
  %tobool = icmp ne i8* %0, null, !dbg !3944
  %lnot = xor i1 %tobool, true, !dbg !3944
  %lnot1 = xor i1 %lnot, true, !dbg !3944
  %lnot2 = xor i1 %lnot1, true, !dbg !3944
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3944
  %conv = sext i32 %lnot.ext to i64, !dbg !3944
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3944
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !3945

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3946
  %2 = ptrtoint i8* %1 to i64, !dbg !3946
  %3 = inttoptr i64 %2 to i8*, !dbg !3946
  %4 = ptrtoint i8* %3 to i64, !dbg !3946
  %cmp = icmp uge i64 %4, -4095, !dbg !3946
  %lnot5 = xor i1 %cmp, true, !dbg !3946
  %lnot7 = xor i1 %lnot5, true, !dbg !3946
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3946
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3946
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !3945
  br label %lor.end, !dbg !3945

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !3947
}

; Function Attrs: noredzone
declare dso_local i8* @of_device_get_match_data(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !3948 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3951, metadata !DIExpression()), !dbg !3952
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !3955, metadata !DIExpression()), !dbg !3956
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3957
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3958
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !3959
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !3956
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3960
  %tobool = icmp ne %struct.property* %2, null, !dbg !3960
  %3 = zext i1 %tobool to i64, !dbg !3960
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3960
  %tobool1 = icmp ne i32 %cond, 0, !dbg !3960
  ret i1 %tobool1, !dbg !3961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u8_array(%struct.device_node* %np, i8* %propname, i8* %out_values, i64 %sz) #0 !dbg !3962 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3967, metadata !DIExpression()), !dbg !3968
  store i8* %out_values, i8** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out_values.addr, metadata !3969, metadata !DIExpression()), !dbg !3970
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3973, metadata !DIExpression()), !dbg !3974
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3975
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3976
  %2 = load i8*, i8** %out_values.addr, align 8, !dbg !3977
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3978
  %call = call i32 @of_property_read_variable_u8_array(%struct.device_node* %0, i8* %1, i8* %2, i64 %3, i64 0) #7, !dbg !3979
  store i32 %call, i32* %ret, align 4, !dbg !3974
  %4 = load i32, i32* %ret, align 4, !dbg !3980
  %cmp = icmp sge i32 %4, 0, !dbg !3982
  br i1 %cmp, label %if.then, label %if.else, !dbg !3983

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3984
  br label %return, !dbg !3984

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3985
  store i32 %5, i32* %retval, align 4, !dbg !3986
  br label %return, !dbg !3986

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3987
  ret i32 %6, !dbg !3987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u16_array(%struct.device_node* %np, i8* %propname, i16* %out_values, i64 %sz) #0 !dbg !3988 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i16*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3993, metadata !DIExpression()), !dbg !3994
  store i16* %out_values, i16** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %out_values.addr, metadata !3995, metadata !DIExpression()), !dbg !3996
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3999, metadata !DIExpression()), !dbg !4000
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4001
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4002
  %2 = load i16*, i16** %out_values.addr, align 8, !dbg !4003
  %3 = load i64, i64* %sz.addr, align 8, !dbg !4004
  %call = call i32 @of_property_read_variable_u16_array(%struct.device_node* %0, i8* %1, i16* %2, i64 %3, i64 0) #7, !dbg !4005
  store i32 %call, i32* %ret, align 4, !dbg !4000
  %4 = load i32, i32* %ret, align 4, !dbg !4006
  %cmp = icmp sge i32 %4, 0, !dbg !4008
  br i1 %cmp, label %if.then, label %if.else, !dbg !4009

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4010
  br label %return, !dbg !4010

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4011
  store i32 %5, i32* %retval, align 4, !dbg !4012
  br label %return, !dbg !4012

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4013
  ret i32 %6, !dbg !4013
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u64_array(%struct.device_node* %np, i8* %propname, i64* %out_values, i64 %sz) #0 !dbg !4014 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i64*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4017, metadata !DIExpression()), !dbg !4018
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4019, metadata !DIExpression()), !dbg !4020
  store i64* %out_values, i64** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %out_values.addr, metadata !4021, metadata !DIExpression()), !dbg !4022
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4025, metadata !DIExpression()), !dbg !4026
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4027
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4028
  %2 = load i64*, i64** %out_values.addr, align 8, !dbg !4029
  %3 = load i64, i64* %sz.addr, align 8, !dbg !4030
  %call = call i32 @of_property_read_variable_u64_array(%struct.device_node* %0, i8* %1, i64* %2, i64 %3, i64 0) #7, !dbg !4031
  store i32 %call, i32* %ret, align 4, !dbg !4026
  %4 = load i32, i32* %ret, align 4, !dbg !4032
  %cmp = icmp sge i32 %4, 0, !dbg !4034
  br i1 %cmp, label %if.then, label %if.else, !dbg !4035

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4036
  br label %return, !dbg !4036

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4037
  store i32 %5, i32* %retval, align 4, !dbg !4038
  br label %return, !dbg !4038

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4039
  ret i32 %6, !dbg !4039
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_string_array(%struct.device_node* %np, i8* %propname, i8** %out_strs, i64 %sz) #0 !dbg !4040 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_strs.addr = alloca i8**, align 8
  %sz.addr = alloca i64, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4043, metadata !DIExpression()), !dbg !4044
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4045, metadata !DIExpression()), !dbg !4046
  store i8** %out_strs, i8*** %out_strs.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %out_strs.addr, metadata !4047, metadata !DIExpression()), !dbg !4048
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !4049, metadata !DIExpression()), !dbg !4050
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4051
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4052
  %2 = load i8**, i8*** %out_strs.addr, align 8, !dbg !4053
  %3 = load i64, i64* %sz.addr, align 8, !dbg !4054
  %call = call i32 @of_property_read_string_helper(%struct.device_node* %0, i8* %1, i8** %2, i64 %3, i32 0) #7, !dbg !4055
  ret i32 %call, !dbg !4056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_count_strings(%struct.device_node* %np, i8* %propname) #0 !dbg !4057 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4060, metadata !DIExpression()), !dbg !4061
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4062, metadata !DIExpression()), !dbg !4063
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4064
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4065
  %call = call i32 @of_property_read_string_helper(%struct.device_node* %0, i8* %1, i8** null, i64 0, i32 0) #7, !dbg !4066
  ret i32 %call, !dbg !4067
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kbasename(i8* %path) #0 !dbg !4068 {
entry:
  %path.addr = alloca i8*, align 8
  %tail = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !4074, metadata !DIExpression()), !dbg !4075
  %0 = load i8*, i8** %path.addr, align 8, !dbg !4076
  %call = call i8* @strrchr(i8* %0, i32 47) #7, !dbg !4077
  store i8* %call, i8** %tail, align 8, !dbg !4075
  %1 = load i8*, i8** %tail, align 8, !dbg !4078
  %tobool = icmp ne i8* %1, null, !dbg !4078
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4078

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %tail, align 8, !dbg !4079
  %add.ptr = getelementptr i8, i8* %2, i64 1, !dbg !4080
  br label %cond.end, !dbg !4078

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %path.addr, align 8, !dbg !4081
  br label %cond.end, !dbg !4078

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ], !dbg !4078
  ret i8* %cond, !dbg !4082
}

; Function Attrs: noredzone
declare dso_local i8* @strrchr(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_link_to_suppliers(%struct.device* %dev, %struct.device_node* %con_np) #0 !dbg !4083 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_np.addr = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %p = alloca %struct.property*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4086, metadata !DIExpression()), !dbg !4087
  store %struct.device_node* %con_np, %struct.device_node** %con_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %con_np.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata %struct.property** %p, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4094, metadata !DIExpression()), !dbg !4095
  store i32 0, i32* %ret, align 4, !dbg !4095
  %0 = load %struct.device_node*, %struct.device_node** %con_np.addr, align 8, !dbg !4096
  %properties = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i32 0, i32 4, !dbg !4096
  %1 = load %struct.property*, %struct.property** %properties, align 8, !dbg !4096
  store %struct.property* %1, %struct.property** %p, align 8, !dbg !4096
  br label %for.cond, !dbg !4096

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.property*, %struct.property** %p, align 8, !dbg !4098
  %cmp = icmp ne %struct.property* %2, null, !dbg !4098
  br i1 %cmp, label %for.body, label %for.end, !dbg !4096

for.body:                                         ; preds = %for.cond
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4100
  %4 = load %struct.device_node*, %struct.device_node** %con_np.addr, align 8, !dbg !4102
  %5 = load %struct.property*, %struct.property** %p, align 8, !dbg !4103
  %name = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 0, !dbg !4104
  %6 = load i8*, i8** %name, align 8, !dbg !4104
  %call = call i32 @of_link_property(%struct.device* %3, %struct.device_node* %4, i8* %6) #7, !dbg !4105
  %tobool = icmp ne i32 %call, 0, !dbg !4105
  br i1 %tobool, label %if.then, label %if.end, !dbg !4106

if.then:                                          ; preds = %for.body
  store i32 -19, i32* %ret, align 4, !dbg !4107
  br label %if.end, !dbg !4108

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4109

for.inc:                                          ; preds = %if.end
  %7 = load %struct.property*, %struct.property** %p, align 8, !dbg !4098
  %next = getelementptr inbounds %struct.property, %struct.property* %7, i32 0, i32 3, !dbg !4098
  %8 = load %struct.property*, %struct.property** %next, align 8, !dbg !4098
  store %struct.property* %8, %struct.property** %p, align 8, !dbg !4098
  br label %for.cond, !dbg !4098, !llvm.loop !4110

for.end:                                          ; preds = %for.cond
  %9 = load %struct.device_node*, %struct.device_node** %con_np.addr, align 8, !dbg !4112
  %call1 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %9, %struct.device_node* null) #7, !dbg !4112
  store %struct.device_node* %call1, %struct.device_node** %child, align 8, !dbg !4112
  br label %for.cond2, !dbg !4112

for.cond2:                                        ; preds = %for.inc10, %for.end
  %10 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !4114
  %cmp3 = icmp ne %struct.device_node* %10, null, !dbg !4114
  br i1 %cmp3, label %for.body4, label %for.end12, !dbg !4112

for.body4:                                        ; preds = %for.cond2
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4116
  %12 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !4118
  %call5 = call i32 @of_link_to_suppliers(%struct.device* %11, %struct.device_node* %12) #7, !dbg !4119
  %tobool6 = icmp ne i32 %call5, 0, !dbg !4119
  br i1 %tobool6, label %land.lhs.true, label %if.end9, !dbg !4120

land.lhs.true:                                    ; preds = %for.body4
  %13 = load i32, i32* %ret, align 4, !dbg !4121
  %tobool7 = icmp ne i32 %13, 0, !dbg !4121
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4122

if.then8:                                         ; preds = %land.lhs.true
  store i32 -11, i32* %ret, align 4, !dbg !4123
  br label %if.end9, !dbg !4124

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %for.body4
  br label %for.inc10, !dbg !4121

for.inc10:                                        ; preds = %if.end9
  %14 = load %struct.device_node*, %struct.device_node** %con_np.addr, align 8, !dbg !4114
  %15 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !4114
  %call11 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %14, %struct.device_node* %15) #7, !dbg !4114
  store %struct.device_node* %call11, %struct.device_node** %child, align 8, !dbg !4114
  br label %for.cond2, !dbg !4114, !llvm.loop !4125

for.end12:                                        ; preds = %for.cond2
  %16 = load i32, i32* %ret, align 4, !dbg !4127
  ret i32 %16, !dbg !4128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_link_property(%struct.device* %dev, %struct.device_node* %con_np, i8* %prop_name) #0 !dbg !4129 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %phandle = alloca %struct.device_node*, align 8
  %s = alloca %struct.supplier_bindings*, align 8
  %i = alloca i32, align 4
  %matched = alloca i8, align 1
  %ret = alloca i32, align 4
  %dl_flags = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  store %struct.device_node* %con_np, %struct.device_node** %con_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %con_np.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.declare(metadata %struct.device_node** %phandle, metadata !4138, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.declare(metadata %struct.supplier_bindings** %s, metadata !4140, metadata !DIExpression()), !dbg !4142
  store %struct.supplier_bindings* getelementptr inbounds ([28 x %struct.supplier_bindings], [28 x %struct.supplier_bindings]* @of_supplier_bindings, i64 0, i64 0), %struct.supplier_bindings** %s, align 8, !dbg !4142
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4143, metadata !DIExpression()), !dbg !4144
  store i32 0, i32* %i, align 4, !dbg !4144
  call void @llvm.dbg.declare(metadata i8* %matched, metadata !4145, metadata !DIExpression()), !dbg !4146
  store i8 0, i8* %matched, align 1, !dbg !4146
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4147, metadata !DIExpression()), !dbg !4148
  store i32 0, i32* %ret, align 4, !dbg !4148
  call void @llvm.dbg.declare(metadata i32* %dl_flags, metadata !4149, metadata !DIExpression()), !dbg !4150
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4151
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !4153
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4153
  %2 = load %struct.device_node*, %struct.device_node** %con_np.addr, align 8, !dbg !4154
  %cmp = icmp eq %struct.device_node* %1, %2, !dbg !4155
  br i1 %cmp, label %if.then, label %if.else, !dbg !4156

if.then:                                          ; preds = %entry
  %call = call i32 @fw_devlink_get_flags() #7, !dbg !4157
  store i32 %call, i32* %dl_flags, align 4, !dbg !4158
  br label %if.end, !dbg !4159

if.else:                                          ; preds = %entry
  store i32 128, i32* %dl_flags, align 4, !dbg !4160
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !4161

while.cond:                                       ; preds = %while.end, %if.end
  %3 = load i8, i8* %matched, align 1, !dbg !4162
  %tobool = trunc i8 %3 to i1, !dbg !4162
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4163

land.rhs:                                         ; preds = %while.cond
  %4 = load %struct.supplier_bindings*, %struct.supplier_bindings** %s, align 8, !dbg !4164
  %parse_prop = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %4, i32 0, i32 0, !dbg !4165
  %5 = load %struct.device_node* (%struct.device_node*, i8*, i32)*, %struct.device_node* (%struct.device_node*, i8*, i32)** %parse_prop, align 8, !dbg !4165
  %tobool1 = icmp ne %struct.device_node* (%struct.device_node*, i8*, i32)* %5, null, !dbg !4163
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !4166
  br i1 %6, label %while.body, label %while.end11, !dbg !4161

while.body:                                       ; preds = %land.end
  br label %while.cond2, !dbg !4167

while.cond2:                                      ; preds = %if.end10, %while.body
  %7 = load %struct.supplier_bindings*, %struct.supplier_bindings** %s, align 8, !dbg !4169
  %parse_prop3 = getelementptr inbounds %struct.supplier_bindings, %struct.supplier_bindings* %7, i32 0, i32 0, !dbg !4170
  %8 = load %struct.device_node* (%struct.device_node*, i8*, i32)*, %struct.device_node* (%struct.device_node*, i8*, i32)** %parse_prop3, align 8, !dbg !4170
  %9 = load %struct.device_node*, %struct.device_node** %con_np.addr, align 8, !dbg !4171
  %10 = load i8*, i8** %prop_name.addr, align 8, !dbg !4172
  %11 = load i32, i32* %i, align 4, !dbg !4173
  %call4 = call %struct.device_node* %8(%struct.device_node* %9, i8* %10, i32 %11) #7, !dbg !4169
  store %struct.device_node* %call4, %struct.device_node** %phandle, align 8, !dbg !4174
  %tobool5 = icmp ne %struct.device_node* %call4, null, !dbg !4167
  br i1 %tobool5, label %while.body6, label %while.end, !dbg !4167

while.body6:                                      ; preds = %while.cond2
  store i8 1, i8* %matched, align 1, !dbg !4175
  %12 = load i32, i32* %i, align 4, !dbg !4177
  %inc = add i32 %12, 1, !dbg !4177
  store i32 %inc, i32* %i, align 4, !dbg !4177
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4178
  %14 = load %struct.device_node*, %struct.device_node** %phandle, align 8, !dbg !4180
  %15 = load i32, i32* %dl_flags, align 4, !dbg !4181
  %call7 = call i32 @of_link_to_phandle(%struct.device* %13, %struct.device_node* %14, i32 %15) #7, !dbg !4182
  %cmp8 = icmp eq i32 %call7, -11, !dbg !4183
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4184

if.then9:                                         ; preds = %while.body6
  store i32 -11, i32* %ret, align 4, !dbg !4185
  br label %if.end10, !dbg !4186

if.end10:                                         ; preds = %if.then9, %while.body6
  %16 = load %struct.device_node*, %struct.device_node** %phandle, align 8, !dbg !4187
  call void @of_node_put(%struct.device_node* %16) #7, !dbg !4188
  br label %while.cond2, !dbg !4167, !llvm.loop !4189

while.end:                                        ; preds = %while.cond2
  %17 = load %struct.supplier_bindings*, %struct.supplier_bindings** %s, align 8, !dbg !4191
  %incdec.ptr = getelementptr %struct.supplier_bindings, %struct.supplier_bindings* %17, i32 1, !dbg !4191
  store %struct.supplier_bindings* %incdec.ptr, %struct.supplier_bindings** %s, align 8, !dbg !4191
  br label %while.cond, !dbg !4161, !llvm.loop !4192

while.end11:                                      ; preds = %land.end
  %18 = load i32, i32* %ret, align 4, !dbg !4194
  ret i32 %18, !dbg !4195
}

; Function Attrs: noredzone
declare dso_local i32 @fw_devlink_get_flags() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_link_to_phandle(%struct.device* %dev, %struct.device_node* %sup_np, i32 %dl_flags) #0 !dbg !4196 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %sup_np.addr = alloca %struct.device_node*, align 8
  %dl_flags.addr = alloca i32, align 4
  %sup_dev = alloca %struct.device*, align 8
  %sup_par_dev = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  %tmp_np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  store %struct.device_node* %sup_np, %struct.device_node** %sup_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %sup_np.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  store i32 %dl_flags, i32* %dl_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dl_flags.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata %struct.device** %sup_dev, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata %struct.device** %sup_par_dev, metadata !4207, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4209, metadata !DIExpression()), !dbg !4210
  store i32 0, i32* %ret, align 4, !dbg !4210
  call void @llvm.dbg.declare(metadata %struct.device_node** %tmp_np, metadata !4211, metadata !DIExpression()), !dbg !4212
  %0 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4213
  store %struct.device_node* %0, %struct.device_node** %tmp_np, align 8, !dbg !4212
  %1 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4214
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %1) #7, !dbg !4215
  br label %while.cond, !dbg !4216

while.cond:                                       ; preds = %if.end5, %entry
  %2 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4217
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !4216
  br i1 %tobool, label %while.body, label %while.end, !dbg !4216

while.body:                                       ; preds = %while.cond
  %3 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4218
  %call1 = call zeroext i1 @of_device_is_available(%struct.device_node* %3) #7, !dbg !4221
  br i1 %call1, label %if.end, label %if.then, !dbg !4222

if.then:                                          ; preds = %while.body
  %4 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4223
  call void @of_node_put(%struct.device_node* %4) #7, !dbg !4225
  store %struct.device_node* null, %struct.device_node** %sup_np.addr, align 8, !dbg !4226
  br label %if.end, !dbg !4227

if.end:                                           ; preds = %if.then, %while.body
  %5 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4228
  %call2 = call %struct.property* @of_find_property(%struct.device_node* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i32* null) #7, !dbg !4230
  %tobool3 = icmp ne %struct.property* %call2, null, !dbg !4230
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4231

if.then4:                                         ; preds = %if.end
  br label %while.end, !dbg !4232

if.end5:                                          ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4233
  %call6 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %6) #7, !dbg !4234
  store %struct.device_node* %call6, %struct.device_node** %sup_np.addr, align 8, !dbg !4235
  br label %while.cond, !dbg !4216, !llvm.loop !4236

while.end:                                        ; preds = %if.then4, %while.cond
  %7 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4238
  %tobool7 = icmp ne %struct.device_node* %7, null, !dbg !4238
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4240

if.then8:                                         ; preds = %while.end
  store i32 -19, i32* %retval, align 4, !dbg !4241
  br label %return, !dbg !4241

if.end9:                                          ; preds = %while.end
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4243
  %of_node = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 23, !dbg !4245
  %9 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4245
  %10 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4246
  %call10 = call zeroext i1 @of_is_ancestor_of(%struct.device_node* %9, %struct.device_node* %10) #7, !dbg !4247
  br i1 %call10, label %if.then11, label %if.end12, !dbg !4248

if.then11:                                        ; preds = %if.end9
  %11 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4249
  call void @of_node_put(%struct.device_node* %11) #7, !dbg !4251
  store i32 -22, i32* %retval, align 4, !dbg !4252
  br label %return, !dbg !4252

if.end12:                                         ; preds = %if.end9
  %12 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4253
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 3, !dbg !4253
  %dev13 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i32 0, i32 2, !dbg !4253
  %13 = load %struct.device*, %struct.device** %dev13, align 8, !dbg !4253
  %call14 = call %struct.device* @get_device(%struct.device* %13) #7, !dbg !4253
  store %struct.device* %call14, %struct.device** %sup_dev, align 8, !dbg !4254
  %14 = load %struct.device*, %struct.device** %sup_dev, align 8, !dbg !4255
  %tobool15 = icmp ne %struct.device* %14, null, !dbg !4255
  br i1 %tobool15, label %if.else, label %land.lhs.true, !dbg !4257

land.lhs.true:                                    ; preds = %if.end12
  %15 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4258
  %call16 = call i32 @of_node_check_flag(%struct.device_node* %15, i64 3) #7, !dbg !4259
  %tobool17 = icmp ne i32 %call16, 0, !dbg !4259
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !4260

if.then18:                                        ; preds = %land.lhs.true
  %16 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4261
  call void @of_node_put(%struct.device_node* %16) #7, !dbg !4263
  store i32 -19, i32* %retval, align 4, !dbg !4264
  br label %return, !dbg !4264

if.else:                                          ; preds = %land.lhs.true, %if.end12
  %17 = load %struct.device*, %struct.device** %sup_dev, align 8, !dbg !4265
  %tobool19 = icmp ne %struct.device* %17, null, !dbg !4265
  br i1 %tobool19, label %if.end32, label %if.then20, !dbg !4267

if.then20:                                        ; preds = %if.else
  %18 = load i32, i32* %dl_flags.addr, align 4, !dbg !4268
  %conv = zext i32 %18 to i64, !dbg !4268
  %and = and i64 %conv, 128, !dbg !4271
  %tobool21 = icmp ne i64 %and, 0, !dbg !4271
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4272

if.then22:                                        ; preds = %if.then20
  %19 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4273
  call void @of_node_put(%struct.device_node* %19) #7, !dbg !4275
  store i32 -11, i32* %retval, align 4, !dbg !4276
  br label %return, !dbg !4276

if.end23:                                         ; preds = %if.then20
  %20 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4277
  %call24 = call %struct.device* @of_get_next_parent_dev(%struct.device_node* %20) #7, !dbg !4278
  store %struct.device* %call24, %struct.device** %sup_par_dev, align 8, !dbg !4279
  %21 = load %struct.device*, %struct.device** %sup_par_dev, align 8, !dbg !4280
  %tobool25 = icmp ne %struct.device* %21, null, !dbg !4280
  br i1 %tobool25, label %land.lhs.true26, label %if.else30, !dbg !4282

land.lhs.true26:                                  ; preds = %if.end23
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4283
  %23 = load %struct.device*, %struct.device** %sup_par_dev, align 8, !dbg !4284
  %24 = bitcast %struct.device* %23 to i8*, !dbg !4284
  %call27 = call i32 @device_is_dependent(%struct.device* %22, i8* %24) #7, !dbg !4285
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4285
  br i1 %tobool28, label %if.then29, label %if.else30, !dbg !4286

if.then29:                                        ; preds = %land.lhs.true26
  store i32 -22, i32* %ret, align 4, !dbg !4287
  br label %if.end31, !dbg !4289

if.else30:                                        ; preds = %land.lhs.true26, %if.end23
  store i32 -11, i32* %ret, align 4, !dbg !4290
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  %25 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4292
  call void @of_node_put(%struct.device_node* %25) #7, !dbg !4293
  %26 = load %struct.device*, %struct.device** %sup_par_dev, align 8, !dbg !4294
  call void @put_device(%struct.device* %26) #7, !dbg !4295
  %27 = load i32, i32* %ret, align 4, !dbg !4296
  store i32 %27, i32* %retval, align 4, !dbg !4297
  br label %return, !dbg !4297

if.end32:                                         ; preds = %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32
  %28 = load %struct.device_node*, %struct.device_node** %sup_np.addr, align 8, !dbg !4298
  call void @of_node_put(%struct.device_node* %28) #7, !dbg !4299
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4300
  %30 = load %struct.device*, %struct.device** %sup_dev, align 8, !dbg !4302
  %31 = load i32, i32* %dl_flags.addr, align 4, !dbg !4303
  %call34 = call %struct.device_link* @device_link_add(%struct.device* %29, %struct.device* %30, i32 %31) #7, !dbg !4304
  %tobool35 = icmp ne %struct.device_link* %call34, null, !dbg !4304
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !4305

if.then36:                                        ; preds = %if.end33
  store i32 -22, i32* %ret, align 4, !dbg !4306
  br label %if.end37, !dbg !4307

if.end37:                                         ; preds = %if.then36, %if.end33
  %32 = load %struct.device*, %struct.device** %sup_dev, align 8, !dbg !4308
  call void @put_device(%struct.device* %32) #7, !dbg !4309
  %33 = load i32, i32* %ret, align 4, !dbg !4310
  store i32 %33, i32* %retval, align 4, !dbg !4311
  br label %return, !dbg !4311

return:                                           ; preds = %if.end37, %if.end31, %if.then22, %if.then18, %if.then11, %if.then8
  %34 = load i32, i32* %retval, align 4, !dbg !4312
  ret i32 %34, !dbg !4312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_clocks(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4313 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4316, metadata !DIExpression()), !dbg !4315
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4317, metadata !DIExpression()), !dbg !4315
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4315
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4315
  %2 = load i32, i32* %index.addr, align 4, !dbg !4315
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !4315
  ret %struct.device_node* %call, !dbg !4315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_interconnects(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4318 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4321, metadata !DIExpression()), !dbg !4320
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4322, metadata !DIExpression()), !dbg !4320
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4320
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4320
  %2 = load i32, i32* %index.addr, align 4, !dbg !4320
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !4320
  ret %struct.device_node* %call, !dbg !4320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_iommus(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4323 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4326, metadata !DIExpression()), !dbg !4325
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4327, metadata !DIExpression()), !dbg !4325
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4325
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4325
  %2 = load i32, i32* %index.addr, align 4, !dbg !4325
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !4325
  ret %struct.device_node* %call, !dbg !4325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_iommu_maps(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4328 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4331, metadata !DIExpression()), !dbg !4332
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4333, metadata !DIExpression()), !dbg !4334
  %0 = load i8*, i8** %prop_name.addr, align 8, !dbg !4335
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !4337
  %tobool = icmp ne i32 %call, 0, !dbg !4337
  br i1 %tobool, label %if.then, label %if.end, !dbg !4338

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4339
  br label %return, !dbg !4339

if.end:                                           ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4340
  %2 = load i8*, i8** %prop_name.addr, align 8, !dbg !4341
  %3 = load i32, i32* %index.addr, align 4, !dbg !4342
  %mul = mul i32 %3, 4, !dbg !4343
  %add = add i32 %mul, 1, !dbg !4344
  %call1 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %1, i8* %2, i32 %add) #7, !dbg !4345
  store %struct.device_node* %call1, %struct.device_node** %retval, align 8, !dbg !4346
  br label %return, !dbg !4346

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4347
  ret %struct.device_node* %4, !dbg !4347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_mboxes(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4348 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4351, metadata !DIExpression()), !dbg !4350
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4352, metadata !DIExpression()), !dbg !4350
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4350
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4350
  %2 = load i32, i32* %index.addr, align 4, !dbg !4350
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #7, !dbg !4350
  ret %struct.device_node* %call, !dbg !4350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_io_channels(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4353 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4356, metadata !DIExpression()), !dbg !4355
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4357, metadata !DIExpression()), !dbg !4355
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4355
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4355
  %2 = load i32, i32* %index.addr, align 4, !dbg !4355
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !4355
  ret %struct.device_node* %call, !dbg !4355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_interrupt_parent(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4358 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4361, metadata !DIExpression()), !dbg !4360
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4362, metadata !DIExpression()), !dbg !4360
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4360
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4360
  %2 = load i32, i32* %index.addr, align 4, !dbg !4360
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* null) #7, !dbg !4360
  ret %struct.device_node* %call, !dbg !4360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_dmas(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4363 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4364, metadata !DIExpression()), !dbg !4365
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4366, metadata !DIExpression()), !dbg !4365
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4367, metadata !DIExpression()), !dbg !4365
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4365
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4365
  %2 = load i32, i32* %index.addr, align 4, !dbg !4365
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !4365
  ret %struct.device_node* %call, !dbg !4365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_power_domains(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4368 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4371, metadata !DIExpression()), !dbg !4370
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4372, metadata !DIExpression()), !dbg !4370
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4370
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4370
  %2 = load i32, i32* %index.addr, align 4, !dbg !4370
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !4370
  ret %struct.device_node* %call, !dbg !4370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_hwlocks(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4373 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4374, metadata !DIExpression()), !dbg !4375
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4376, metadata !DIExpression()), !dbg !4375
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4377, metadata !DIExpression()), !dbg !4375
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4375
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4375
  %2 = load i32, i32* %index.addr, align 4, !dbg !4375
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !4375
  ret %struct.device_node* %call, !dbg !4375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_extcon(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4378 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4381, metadata !DIExpression()), !dbg !4380
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4382, metadata !DIExpression()), !dbg !4380
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4380
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4380
  %2 = load i32, i32* %index.addr, align 4, !dbg !4380
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* null) #7, !dbg !4380
  ret %struct.device_node* %call, !dbg !4380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_interrupts_extended(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4383 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4386, metadata !DIExpression()), !dbg !4385
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4387, metadata !DIExpression()), !dbg !4385
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4385
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4385
  %2 = load i32, i32* %index.addr, align 4, !dbg !4385
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !4385
  ret %struct.device_node* %call, !dbg !4385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_nvmem_cells(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4388 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4389, metadata !DIExpression()), !dbg !4390
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4391, metadata !DIExpression()), !dbg !4390
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4392, metadata !DIExpression()), !dbg !4390
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4390
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4390
  %2 = load i32, i32* %index.addr, align 4, !dbg !4390
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* null) #7, !dbg !4390
  ret %struct.device_node* %call, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_phys(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4393 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4396, metadata !DIExpression()), !dbg !4395
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4397, metadata !DIExpression()), !dbg !4395
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4395
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4395
  %2 = load i32, i32* %index.addr, align 4, !dbg !4395
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !4395
  ret %struct.device_node* %call, !dbg !4395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_wakeup_parent(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4398 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4401, metadata !DIExpression()), !dbg !4400
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4402, metadata !DIExpression()), !dbg !4400
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4400
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4400
  %2 = load i32, i32* %index.addr, align 4, !dbg !4400
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* null) #7, !dbg !4400
  ret %struct.device_node* %call, !dbg !4400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl0(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4403 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4406, metadata !DIExpression()), !dbg !4405
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4407, metadata !DIExpression()), !dbg !4405
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4405
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4405
  %2 = load i32, i32* %index.addr, align 4, !dbg !4405
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i8* null) #7, !dbg !4405
  ret %struct.device_node* %call, !dbg !4405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl1(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4408 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4411, metadata !DIExpression()), !dbg !4410
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4412, metadata !DIExpression()), !dbg !4410
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4410
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4410
  %2 = load i32, i32* %index.addr, align 4, !dbg !4410
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8* null) #7, !dbg !4410
  ret %struct.device_node* %call, !dbg !4410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl2(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4413 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4414, metadata !DIExpression()), !dbg !4415
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4416, metadata !DIExpression()), !dbg !4415
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4417, metadata !DIExpression()), !dbg !4415
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4415
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4415
  %2 = load i32, i32* %index.addr, align 4, !dbg !4415
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i8* null) #7, !dbg !4415
  ret %struct.device_node* %call, !dbg !4415
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl3(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4418 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4419, metadata !DIExpression()), !dbg !4420
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4421, metadata !DIExpression()), !dbg !4420
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4422, metadata !DIExpression()), !dbg !4420
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4420
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4420
  %2 = load i32, i32* %index.addr, align 4, !dbg !4420
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i8* null) #7, !dbg !4420
  ret %struct.device_node* %call, !dbg !4420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl4(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4423 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4426, metadata !DIExpression()), !dbg !4425
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4427, metadata !DIExpression()), !dbg !4425
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4425
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4425
  %2 = load i32, i32* %index.addr, align 4, !dbg !4425
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* null) #7, !dbg !4425
  ret %struct.device_node* %call, !dbg !4425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl5(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4428 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4429, metadata !DIExpression()), !dbg !4430
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4431, metadata !DIExpression()), !dbg !4430
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4432, metadata !DIExpression()), !dbg !4430
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4430
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4430
  %2 = load i32, i32* %index.addr, align 4, !dbg !4430
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* null) #7, !dbg !4430
  ret %struct.device_node* %call, !dbg !4430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl6(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4433 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4434, metadata !DIExpression()), !dbg !4435
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4436, metadata !DIExpression()), !dbg !4435
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4437, metadata !DIExpression()), !dbg !4435
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4435
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4435
  %2 = load i32, i32* %index.addr, align 4, !dbg !4435
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8* null) #7, !dbg !4435
  ret %struct.device_node* %call, !dbg !4435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl7(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4438 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4441, metadata !DIExpression()), !dbg !4440
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4442, metadata !DIExpression()), !dbg !4440
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4440
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4440
  %2 = load i32, i32* %index.addr, align 4, !dbg !4440
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* null) #7, !dbg !4440
  ret %struct.device_node* %call, !dbg !4440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_pinctrl8(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4443 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4446, metadata !DIExpression()), !dbg !4445
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4447, metadata !DIExpression()), !dbg !4445
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4445
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4445
  %2 = load i32, i32* %index.addr, align 4, !dbg !4445
  %call = call %struct.device_node* @parse_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i8* null) #7, !dbg !4445
  ret %struct.device_node* %call, !dbg !4445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_regulators(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4448 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4451, metadata !DIExpression()), !dbg !4450
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4452, metadata !DIExpression()), !dbg !4450
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4450
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4450
  %2 = load i32, i32* %index.addr, align 4, !dbg !4450
  %call = call %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8* null) #7, !dbg !4450
  ret %struct.device_node* %call, !dbg !4450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_gpio(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4453 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4454, metadata !DIExpression()), !dbg !4455
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4456, metadata !DIExpression()), !dbg !4455
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4457, metadata !DIExpression()), !dbg !4455
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4455
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4455
  %2 = load i32, i32* %index.addr, align 4, !dbg !4455
  %call = call %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !4455
  ret %struct.device_node* %call, !dbg !4455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_gpios(%struct.device_node* %np, i8* %prop_name, i32 %index) #0 !dbg !4458 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4461, metadata !DIExpression()), !dbg !4460
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4462, metadata !DIExpression()), !dbg !4460
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4460
  %1 = load i8*, i8** %prop_name.addr, align 8, !dbg !4460
  %2 = load i32, i32* %index.addr, align 4, !dbg !4460
  %call = call %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* %0, i8* %1, i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !4460
  ret %struct.device_node* %call, !dbg !4460
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_prop_cells(%struct.device_node* %np, i8* %prop_name, i32 %index, i8* %list_name, i8* %cells_name) #0 !dbg !4463 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %list_name.addr = alloca i8*, align 8
  %cells_name.addr = alloca i8*, align 8
  %sup_args = alloca %struct.of_phandle_args, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  store i8* %list_name, i8** %list_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %list_name.addr, metadata !4472, metadata !DIExpression()), !dbg !4473
  store i8* %cells_name, i8** %cells_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cells_name.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %sup_args, metadata !4476, metadata !DIExpression()), !dbg !4477
  %0 = load i8*, i8** %prop_name.addr, align 8, !dbg !4478
  %1 = load i8*, i8** %list_name.addr, align 8, !dbg !4480
  %call = call i32 @strcmp(i8* %0, i8* %1) #7, !dbg !4481
  %tobool = icmp ne i32 %call, 0, !dbg !4481
  br i1 %tobool, label %if.then, label %if.end, !dbg !4482

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4483
  br label %return, !dbg !4483

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4484
  %3 = load i8*, i8** %list_name.addr, align 8, !dbg !4486
  %4 = load i8*, i8** %cells_name.addr, align 8, !dbg !4487
  %5 = load i32, i32* %index.addr, align 4, !dbg !4488
  %call1 = call i32 @of_parse_phandle_with_args(%struct.device_node* %2, i8* %3, i8* %4, i32 %5, %struct.of_phandle_args* %sup_args) #7, !dbg !4489
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4489
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4490

if.then3:                                         ; preds = %if.end
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4491
  br label %return, !dbg !4491

if.end4:                                          ; preds = %if.end
  %np5 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sup_args, i32 0, i32 0, !dbg !4492
  %6 = load %struct.device_node*, %struct.device_node** %np5, align 8, !dbg !4492
  store %struct.device_node* %6, %struct.device_node** %retval, align 8, !dbg !4493
  br label %return, !dbg !4493

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4494
  ret %struct.device_node* %7, !dbg !4494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @parse_suffix_prop_cells(%struct.device_node* %np, i8* %prop_name, i32 %index, i8* %suffix, i8* %cells_name) #0 !dbg !4495 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %prop_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %suffix.addr = alloca i8*, align 8
  %cells_name.addr = alloca i8*, align 8
  %sup_args = alloca %struct.of_phandle_args, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i8* %prop_name, i8** %prop_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prop_name.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  store i8* %suffix, i8** %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %suffix.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  store i8* %cells_name, i8** %cells_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cells_name.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %sup_args, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load i8*, i8** %prop_name.addr, align 8, !dbg !4508
  %1 = load i8*, i8** %suffix.addr, align 8, !dbg !4510
  %call = call i32 @strcmp_suffix(i8* %0, i8* %1) #7, !dbg !4511
  %tobool = icmp ne i32 %call, 0, !dbg !4511
  br i1 %tobool, label %if.then, label %if.end, !dbg !4512

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4513
  br label %return, !dbg !4513

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4514
  %3 = load i8*, i8** %prop_name.addr, align 8, !dbg !4516
  %4 = load i8*, i8** %cells_name.addr, align 8, !dbg !4517
  %5 = load i32, i32* %index.addr, align 4, !dbg !4518
  %call1 = call i32 @of_parse_phandle_with_args(%struct.device_node* %2, i8* %3, i8* %4, i32 %5, %struct.of_phandle_args* %sup_args) #7, !dbg !4519
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4519
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4520

if.then3:                                         ; preds = %if.end
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4521
  br label %return, !dbg !4521

if.end4:                                          ; preds = %if.end
  %np5 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %sup_args, i32 0, i32 0, !dbg !4522
  %6 = load %struct.device_node*, %struct.device_node** %np5, align 8, !dbg !4522
  store %struct.device_node* %6, %struct.device_node** %retval, align 8, !dbg !4523
  br label %return, !dbg !4523

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %7 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4524
  ret %struct.device_node* %7, !dbg !4524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @strcmp_suffix(i8* %str, i8* %suffix) #0 !dbg !4525 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %suffix.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %suffix_len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i8* %suffix, i8** %suffix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %suffix.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata i32* %suffix_len, metadata !4534, metadata !DIExpression()), !dbg !4535
  %0 = load i8*, i8** %str.addr, align 8, !dbg !4536
  %call = call i64 @strlen(i8* %0) #7, !dbg !4537
  %conv = trunc i64 %call to i32, !dbg !4537
  store i32 %conv, i32* %len, align 4, !dbg !4538
  %1 = load i8*, i8** %suffix.addr, align 8, !dbg !4539
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !4540
  %conv2 = trunc i64 %call1 to i32, !dbg !4540
  store i32 %conv2, i32* %suffix_len, align 4, !dbg !4541
  %2 = load i32, i32* %len, align 4, !dbg !4542
  %3 = load i32, i32* %suffix_len, align 4, !dbg !4544
  %cmp = icmp ule i32 %2, %3, !dbg !4545
  br i1 %cmp, label %if.then, label %if.end, !dbg !4546

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4547
  br label %return, !dbg !4547

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %str.addr, align 8, !dbg !4548
  %5 = load i32, i32* %len, align 4, !dbg !4549
  %idx.ext = zext i32 %5 to i64, !dbg !4550
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !4550
  %6 = load i32, i32* %suffix_len, align 4, !dbg !4551
  %idx.ext4 = zext i32 %6 to i64, !dbg !4552
  %idx.neg = sub i64 0, %idx.ext4, !dbg !4552
  %add.ptr5 = getelementptr i8, i8* %add.ptr, i64 %idx.neg, !dbg !4552
  %7 = load i8*, i8** %suffix.addr, align 8, !dbg !4553
  %call6 = call i32 @strcmp(i8* %add.ptr5, i8* %7) #7, !dbg !4554
  store i32 %call6, i32* %retval, align 4, !dbg !4555
  br label %return, !dbg !4555

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4556
  ret i32 %8, !dbg !4556
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_is_ancestor_of(%struct.device_node* %test_ancestor, %struct.device_node* %child) #0 !dbg !4557 {
entry:
  %retval = alloca i1, align 1
  %test_ancestor.addr = alloca %struct.device_node*, align 8
  %child.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %test_ancestor, %struct.device_node** %test_ancestor.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %test_ancestor.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  store %struct.device_node* %child, %struct.device_node** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %child.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  %0 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !4564
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %0) #7, !dbg !4565
  br label %while.cond, !dbg !4566

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !4567
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4566
  br i1 %tobool, label %while.body, label %while.end, !dbg !4566

while.body:                                       ; preds = %while.cond
  %2 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !4568
  %3 = load %struct.device_node*, %struct.device_node** %test_ancestor.addr, align 8, !dbg !4571
  %cmp = icmp eq %struct.device_node* %2, %3, !dbg !4572
  br i1 %cmp, label %if.then, label %if.end, !dbg !4573

if.then:                                          ; preds = %while.body
  %4 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !4574
  call void @of_node_put(%struct.device_node* %4) #7, !dbg !4576
  store i1 true, i1* %retval, align 1, !dbg !4577
  br label %return, !dbg !4577

if.end:                                           ; preds = %while.body
  %5 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !4578
  %call1 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %5) #7, !dbg !4579
  store %struct.device_node* %call1, %struct.device_node** %child.addr, align 8, !dbg !4580
  br label %while.cond, !dbg !4566, !llvm.loop !4581

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval, align 1, !dbg !4583
  br label %return, !dbg !4583

return:                                           ; preds = %while.end, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !4584
  ret i1 %6, !dbg !4584
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_node_check_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !4585 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !4588, metadata !DIExpression()), !dbg !4589
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !4590, metadata !DIExpression()), !dbg !4591
  %0 = load i64, i64* %flag.addr, align 8, !dbg !4592
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !4593
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !4594
  %call = call zeroext i1 @test_bit(i64 %0, i64* %_flags) #7, !dbg !4595
  %conv = zext i1 %call to i32, !dbg !4595
  ret i32 %conv, !dbg !4596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @of_get_next_parent_dev(%struct.device_node* %np) #0 !dbg !4597 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4600, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4602, metadata !DIExpression()), !dbg !4603
  store %struct.device* null, %struct.device** %dev, align 8, !dbg !4603
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4604
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %0) #7, !dbg !4605
  br label %do.body, !dbg !4606

do.body:                                          ; preds = %land.end, %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4607
  %call1 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %1) #7, !dbg !4609
  store %struct.device_node* %call1, %struct.device_node** %np.addr, align 8, !dbg !4610
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4611
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !4611
  br i1 %tobool, label %if.then, label %if.end, !dbg !4613

if.then:                                          ; preds = %do.body
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4614
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %3, i32 0, i32 3, !dbg !4614
  %dev2 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i32 0, i32 2, !dbg !4614
  %4 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !4614
  %call3 = call %struct.device* @get_device(%struct.device* %4) #7, !dbg !4614
  store %struct.device* %call3, %struct.device** %dev, align 8, !dbg !4615
  br label %if.end, !dbg !4616

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !4617

do.cond:                                          ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4618
  %tobool4 = icmp ne %struct.device_node* %5, null, !dbg !4618
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !4619

land.rhs:                                         ; preds = %do.cond
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4620
  %tobool5 = icmp ne %struct.device* %6, null, !dbg !4621
  %lnot = xor i1 %tobool5, true, !dbg !4621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %7 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ], !dbg !4622
  br i1 %7, label %do.body, label %do.end, !dbg !4617, !llvm.loop !4623

do.end:                                           ; preds = %land.end
  %8 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4625
  call void @of_node_put(%struct.device_node* %8) #7, !dbg !4626
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4627
  ret %struct.device* %9, !dbg !4628
}

; Function Attrs: noredzone
declare dso_local i32 @device_is_dependent(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local %struct.device_link* @device_link_add(%struct.device*, %struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4629 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4636, metadata !DIExpression()), !dbg !4639
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4641, metadata !DIExpression()), !dbg !4642
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4643, metadata !DIExpression()), !dbg !4644
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4645, metadata !DIExpression()), !dbg !4647
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4649, metadata !DIExpression()), !dbg !4650
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4651, metadata !DIExpression()), !dbg !4659
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4661, metadata !DIExpression()), !dbg !4662
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4663, metadata !DIExpression()), !dbg !4664
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4665, metadata !DIExpression()), !dbg !4666
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4667
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4668
  %div = sdiv i64 %1, 64, !dbg !4668
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4669
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4667
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4670
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4671
  %conv.i = trunc i64 %4 to i32, !dbg !4671
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !4672
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4673
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4673
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4673
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4674
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4674
  br i1 %8, label %cond.true, label %cond.false, !dbg !4674

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4674
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4674
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4675
  %and.i = and i64 %11, 63, !dbg !4676
  %shl.i = shl i64 1, %and.i, !dbg !4677
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4678
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4679
  %shr.i = ashr i64 %13, 6, !dbg !4680
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4678
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4678
  %and1.i = and i64 %shl.i, %14, !dbg !4681
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4682
  %conv = zext i1 %cmp.i to i32, !dbg !4674
  br label %cond.end, !dbg !4674

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4674
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4674
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4683
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4684
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !4685, !srcloc !4686
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4685
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4687
  %tobool.i = trunc i8 %20 to i1, !dbg !4687
  %conv2 = zext i1 %tobool.i to i32, !dbg !4674
  br label %cond.end, !dbg !4674

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4674
  %tobool = icmp ne i32 %cond, 0, !dbg !4674
  ret i1 %tobool, !dbg !4688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4689 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  ret i1 true, !dbg !4697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4698 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4702, metadata !DIExpression()), !dbg !4703
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4704, metadata !DIExpression()), !dbg !4705
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4706, metadata !DIExpression()), !dbg !4707
  ret void, !dbg !4708
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { nounwind readnone }
attributes #12 = { noredzone nounwind }

!llvm.dbg.cu = !{!2020}
!llvm.module.flags = !{!2056, !2057, !2058, !2059}
!llvm.ident = !{!2060}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__warned", scope: !2, file: !3, line: 560, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "of_graph_parse_endpoint", scope: !3, file: !3, line: 555, type: !4, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3 = !DIFile(filename: "drivers/of/property.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !2013}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !10, line: 51, size: 1344, elements: !11)
!10 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !16, !23, !24, !1997, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !10, line: 52, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !9, file: !10, line: 53, baseType: !17, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !10, line: 28, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !9, file: !10, line: 54, baseType: !13, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !9, file: !10, line: 55, baseType: !25, size: 192, offset: 192)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !26, line: 17, size: 192, elements: !27)
!26 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !30, !1996}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !25, file: !26, line: 18, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !25, file: !26, line: 19, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !26, line: 110, size: 1152, elements: !34)
!34 = !{!35, !39, !43, !52, !1938, !1942, !1946, !1951, !1955, !1956, !1960, !1964, !1968, !1979, !1980, !1981, !1982, !1992}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !33, file: !26, line: 111, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!29, !29}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !33, file: !26, line: 112, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !29}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !33, file: !26, line: 113, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !50}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 30, baseType: !49)
!48 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !33, file: !26, line: 114, baseType: !53, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !50, !58}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !61, line: 461, size: 5568, elements: !62)
!61 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !1548, !1550, !1553, !1554, !1606, !1709, !1710, !1711, !1712, !1713, !1728, !1846, !1859, !1862, !1863, !1867, !1869, !1870, !1871, !1875, !1881, !1882, !1885, !1887, !1888, !1891, !1892, !1893, !1894, !1926, !1927, !1928, !1931, !1934, !1935, !1936, !1937}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !60, file: !61, line: 462, baseType: !64, size: 512)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !65, line: 64, size: 512, elements: !66)
!65 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !74, !76, !136, !1384, !1538, !1543, !1544, !1545, !1546, !1547}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 65, baseType: !13, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !64, file: !65, line: 66, baseType: !69, size: 128, offset: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !48, line: 178, size: 128, elements: !70)
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !48, line: 179, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !69, file: !48, line: 179, baseType: !72, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !64, file: !65, line: 67, baseType: !75, size: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !64, file: !65, line: 68, baseType: !77, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !65, line: 192, size: 704, elements: !79)
!79 = !{!80, !81, !97, !98}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !78, file: !65, line: 193, baseType: !69, size: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !78, file: !65, line: 194, baseType: !82, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !83, line: 83, baseType: !84)
!83 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !83, line: 71, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !83, line: 72, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !83, line: 72, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !87, file: !83, line: 73, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !83, line: 20, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !90, file: !83, line: 21, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 25, elements: !96)
!96 = !{}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !78, file: !65, line: 195, baseType: !64, size: 512, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !78, file: !65, line: 196, baseType: !99, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !65, line: 156, size: 192, elements: !102)
!102 = !{!103, !108, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !101, file: !65, line: 157, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!6, !77, !75}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !101, file: !65, line: 158, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!13, !77, !75}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !101, file: !65, line: 159, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!6, !77, !75, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !65, line: 148, size: 20736, elements: !120)
!120 = !{!121, !126, !130, !131, !135}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !119, file: !65, line: 149, baseType: !122, size: 192)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 192, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !119, file: !65, line: 150, baseType: !127, size: 4096, offset: 192)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 4096, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !119, file: !65, line: 151, baseType: !6, size: 32, offset: 4288)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !119, file: !65, line: 152, baseType: !132, size: 16384, offset: 4320)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16384, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 2048)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !119, file: !65, line: 153, baseType: !6, size: 32, offset: 20704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !64, file: !65, line: 69, baseType: !137, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !65, line: 138, size: 448, elements: !139)
!139 = !{!140, !144, !174, !176, !1325, !1362, !1366}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !138, file: !65, line: 139, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !75}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !138, file: !65, line: 140, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !148, line: 230, size: 128, elements: !149)
!148 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!149 = !{!150, !166}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !147, file: !148, line: 231, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !75, !159, !123}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !48, line: 60, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !156, line: 73, baseType: !157)
!156 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !156, line: 15, baseType: !158)
!158 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !148, line: 30, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !148, line: 31, baseType: !13, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !160, file: !148, line: 32, baseType: !164, size: 16, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !48, line: 19, baseType: !165)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !147, file: !148, line: 232, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!154, !75, !159, !13, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 55, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !156, line: 72, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !156, line: 16, baseType: !173)
!173 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !138, file: !65, line: 141, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !138, file: !65, line: 142, baseType: !177, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !148, line: 84, size: 320, elements: !181)
!181 = !{!182, !183, !187, !1322, !1323}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !148, line: 85, baseType: !13, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !180, file: !148, line: 86, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!164, !75, !159, !6}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !180, file: !148, line: 88, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!164, !75, !191, !6}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !148, line: 168, size: 448, elements: !193)
!193 = !{!194, !195, !196, !198, !208, !209}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !192, file: !148, line: 169, baseType: !160, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !192, file: !148, line: 170, baseType: !170, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !192, file: !148, line: 171, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !192, file: !148, line: 172, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!154, !202, !75, !191, !123, !205, !170}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !204, line: 526, flags: DIFlagFwdDecl)
!204 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !48, line: 46, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !156, line: 88, baseType: !207)
!207 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !192, file: !148, line: 174, baseType: !199, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !192, file: !148, line: 176, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!6, !202, !75, !191, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !215, line: 305, size: 1472, elements: !216)
!215 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !219, !220, !221, !229, !230, !1296, !1302, !1303, !1308, !1309, !1312, !1316, !1317, !1318, !1319, !1320}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !214, file: !215, line: 308, baseType: !173, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !214, file: !215, line: 309, baseType: !173, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !214, file: !215, line: 313, baseType: !213, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !214, file: !215, line: 313, baseType: !213, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !214, file: !215, line: 315, baseType: !222, size: 192, align: 64, offset: 256)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !223, line: 24, size: 192, align: 64, elements: !224)
!223 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !226, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !222, file: !223, line: 25, baseType: !173, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !222, file: !223, line: 26, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !222, file: !223, line: 27, baseType: !227, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !214, file: !215, line: 323, baseType: !173, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !214, file: !215, line: 327, baseType: !231, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !215, line: 388, size: 7296, elements: !233)
!233 = !{!234, !1292}
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !215, line: 389, baseType: !235, size: 7296)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !215, line: 389, size: 7296, elements: !236)
!236 = !{!237, !238, !242, !246, !250, !251, !252, !253, !254, !262, !267, !268, !269, !270, !279, !280, !281, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !316, !324, !327, !359, !360, !1263, !1264, !1267, !1270, !1271, !1274, !1275, !1276, !1279, !1291}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !235, file: !215, line: 390, baseType: !213, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !235, file: !215, line: 391, baseType: !239, size: 64, offset: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !223, line: 31, size: 64, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !239, file: !223, line: 32, baseType: !227, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !235, file: !215, line: 392, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !245)
!245 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !235, file: !215, line: 394, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!173, !202, !173, !173, !173, !173}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !235, file: !215, line: 398, baseType: !173, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !235, file: !215, line: 399, baseType: !173, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !235, file: !215, line: 405, baseType: !173, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !235, file: !215, line: 406, baseType: !173, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !235, file: !215, line: 407, baseType: !255, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !204, line: 286, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 286, size: 64, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !257, file: !204, line: 286, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !261, line: 18, baseType: !173)
!261 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !235, file: !215, line: 416, baseType: !263, size: 32, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !48, line: 168, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 166, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !264, file: !48, line: 167, baseType: !6, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !235, file: !215, line: 428, baseType: !263, size: 32, offset: 608)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !235, file: !215, line: 437, baseType: !263, size: 32, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !235, file: !215, line: 447, baseType: !263, size: 32, offset: 672)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !235, file: !215, line: 450, baseType: !271, size: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !272, line: 13, baseType: !273)
!272 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !48, line: 175, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 173, size: 64, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !274, file: !48, line: 174, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !19, line: 22, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !21, line: 30, baseType: !207)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !235, file: !215, line: 452, baseType: !6, size: 32, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !235, file: !215, line: 454, baseType: !82, offset: 800)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !235, file: !215, line: 457, baseType: !282, size: 256, offset: 832)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !283, line: 35, size: 256, elements: !284)
!283 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !286, !287, !289}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !282, file: !283, line: 36, baseType: !271, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !282, file: !283, line: 42, baseType: !271, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !282, file: !283, line: 46, baseType: !288, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !83, line: 29, baseType: !90)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !282, file: !283, line: 47, baseType: !69, size: 128, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !235, file: !215, line: 459, baseType: !69, size: 128, offset: 1088)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !235, file: !215, line: 466, baseType: !173, size: 64, offset: 1216)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !235, file: !215, line: 467, baseType: !173, size: 64, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !235, file: !215, line: 469, baseType: !173, size: 64, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !235, file: !215, line: 470, baseType: !173, size: 64, offset: 1408)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !235, file: !215, line: 471, baseType: !273, size: 64, offset: 1472)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !235, file: !215, line: 472, baseType: !173, size: 64, offset: 1536)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !235, file: !215, line: 473, baseType: !173, size: 64, offset: 1600)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !235, file: !215, line: 474, baseType: !173, size: 64, offset: 1664)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !235, file: !215, line: 475, baseType: !173, size: 64, offset: 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !235, file: !215, line: 477, baseType: !82, offset: 1792)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !235, file: !215, line: 478, baseType: !173, size: 64, offset: 1792)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !235, file: !215, line: 478, baseType: !173, size: 64, offset: 1856)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !235, file: !215, line: 478, baseType: !173, size: 64, offset: 1920)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !235, file: !215, line: 478, baseType: !173, size: 64, offset: 1984)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !235, file: !215, line: 479, baseType: !173, size: 64, offset: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !235, file: !215, line: 479, baseType: !173, size: 64, offset: 2112)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !235, file: !215, line: 479, baseType: !173, size: 64, offset: 2176)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !235, file: !215, line: 480, baseType: !173, size: 64, offset: 2240)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !235, file: !215, line: 480, baseType: !173, size: 64, offset: 2304)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !235, file: !215, line: 480, baseType: !173, size: 64, offset: 2368)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !235, file: !215, line: 480, baseType: !173, size: 64, offset: 2432)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !235, file: !215, line: 482, baseType: !313, size: 2816, offset: 2496)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2816, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 44)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !235, file: !215, line: 488, baseType: !317, size: 256, offset: 5312)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !318, line: 60, size: 256, elements: !319)
!318 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 61, baseType: !321, size: 256)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 4)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !235, file: !215, line: 490, baseType: !325, size: 64, offset: 5568)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !215, line: 490, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !235, file: !215, line: 493, baseType: !328, size: 896, offset: 5632)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !329, line: 53, baseType: !330)
!329 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 13, size: 896, elements: !331)
!331 = !{!332, !333, !334, !335, !338, !339, !346, !347, !351, !352, !355}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !330, file: !329, line: 18, baseType: !243, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !330, file: !329, line: 28, baseType: !273, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !330, file: !329, line: 31, baseType: !282, size: 256, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !330, file: !329, line: 32, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !329, line: 32, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !330, file: !329, line: 37, baseType: !165, size: 16, offset: 448)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !330, file: !329, line: 40, baseType: !340, size: 192, offset: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !341, line: 53, size: 192, elements: !342)
!341 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !341, line: 54, baseType: !271, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !340, file: !341, line: 55, baseType: !82, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !340, file: !341, line: 59, baseType: !69, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !330, file: !329, line: 41, baseType: !197, size: 64, offset: 704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !330, file: !329, line: 42, baseType: !348, size: 64, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !329, line: 42, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !330, file: !329, line: 44, baseType: !263, size: 32, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !330, file: !329, line: 50, baseType: !353, size: 16, offset: 864)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !165)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !330, file: !329, line: 51, baseType: !356, size: 16, offset: 880)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !19, line: 18, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !21, line: 23, baseType: !358)
!358 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !215, line: 495, baseType: !173, size: 64, offset: 6528)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !235, file: !215, line: 497, baseType: !361, size: 64, offset: 6592)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !215, line: 381, size: 384, elements: !363)
!363 = !{!364, !365, !1262}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !362, file: !215, line: 382, baseType: !263, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !362, file: !215, line: 383, baseType: !366, size: 128, offset: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !215, line: 376, size: 128, elements: !367)
!367 = !{!368, !1260}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !366, file: !215, line: 377, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !371, line: 640, size: 48640, elements: !372)
!371 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !379, !381, !382, !388, !389, !390, !391, !392, !393, !394, !395, !399, !417, !428, !528, !529, !530, !541, !542, !544, !545, !546, !547, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !632, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !688, !690, !691, !692, !704, !706, !707, !708, !709, !710, !716, !717, !718, !719, !720, !721, !722, !734, !739, !743, !744, !745, !748, !752, !755, !758, !761, !764, !767, !770, !773, !779, !780, !781, !787, !788, !789, !790, !791, !800, !801, !802, !803, !804, !809, !810, !811, !814, !815, !818, !821, !824, !827, !830, !833, !834, !914, !917, !920, !921, !924, !925, !926, !932, !933, !934, !947, !948, !949, !959, !964, !967, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !370, file: !371, line: 646, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !375, line: 56, size: 128, elements: !376)
!375 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !375, line: 57, baseType: !173, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !374, file: !375, line: 58, baseType: !18, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !371, line: 649, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !370, file: !371, line: 657, baseType: !197, size: 64, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !370, file: !371, line: 658, baseType: !383, size: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !384, line: 113, baseType: !385)
!384 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !384, line: 111, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !385, file: !384, line: 112, baseType: !263, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !371, line: 660, baseType: !22, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !370, file: !371, line: 661, baseType: !22, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !370, file: !371, line: 684, baseType: !6, size: 32, offset: 352)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !370, file: !371, line: 686, baseType: !6, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !370, file: !371, line: 687, baseType: !6, size: 32, offset: 416)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !370, file: !371, line: 688, baseType: !6, size: 32, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !370, file: !371, line: 689, baseType: !22, size: 32, offset: 480)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !370, file: !371, line: 691, baseType: !396, size: 64, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !371, line: 691, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !370, file: !371, line: 692, baseType: !400, size: 832, offset: 576)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !371, line: 451, size: 832, elements: !401)
!401 = !{!402, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !400, file: !371, line: 453, baseType: !403, size: 128)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !371, line: 325, size: 128, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !403, file: !371, line: 326, baseType: !173, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !403, file: !371, line: 327, baseType: !18, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !400, file: !371, line: 454, baseType: !222, size: 192, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !400, file: !371, line: 455, baseType: !69, size: 128, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !400, file: !371, line: 456, baseType: !22, size: 32, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !400, file: !371, line: 458, baseType: !243, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !400, file: !371, line: 459, baseType: !243, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !400, file: !371, line: 460, baseType: !243, size: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !400, file: !371, line: 461, baseType: !243, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !400, file: !371, line: 463, baseType: !243, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !400, file: !371, line: 465, baseType: !416, offset: 832)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !371, line: 415, elements: !96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !370, file: !371, line: 693, baseType: !418, size: 384, offset: 1408)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !371, line: 489, size: 384, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !418, file: !371, line: 490, baseType: !69, size: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !418, file: !371, line: 491, baseType: !173, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !418, file: !371, line: 492, baseType: !173, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !418, file: !371, line: 493, baseType: !22, size: 32, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !418, file: !371, line: 494, baseType: !165, size: 16, offset: 288)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !418, file: !371, line: 495, baseType: !165, size: 16, offset: 304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !418, file: !371, line: 497, baseType: !427, size: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !370, file: !371, line: 697, baseType: !429, size: 1792, offset: 1792)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !371, line: 507, size: 1792, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !525, !526}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !429, file: !371, line: 508, baseType: !222, size: 192, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !429, file: !371, line: 515, baseType: !243, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !429, file: !371, line: 516, baseType: !243, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !429, file: !371, line: 517, baseType: !243, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !429, file: !371, line: 518, baseType: !243, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !429, file: !371, line: 519, baseType: !243, size: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !429, file: !371, line: 526, baseType: !277, size: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !429, file: !371, line: 527, baseType: !243, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !371, line: 528, baseType: !22, size: 32, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !429, file: !371, line: 554, baseType: !22, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !429, file: !371, line: 555, baseType: !22, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !429, file: !371, line: 556, baseType: !22, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !429, file: !371, line: 557, baseType: !22, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !429, file: !371, line: 563, baseType: !445, size: 512, offset: 704)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !446, line: 118, size: 512, elements: !447)
!446 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!447 = !{!448, !456, !457, !466, !518, !522, !523, !524}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !446, line: 119, baseType: !449, size: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !450, line: 9, size: 256, elements: !451)
!450 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !449, file: !450, line: 10, baseType: !222, size: 192, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !449, file: !450, line: 11, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !455, line: 29, baseType: !277)
!455 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !445, file: !446, line: 120, baseType: !454, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !445, file: !446, line: 121, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !465}
!461 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !446, line: 65, baseType: !22, size: 32, elements: !462)
!462 = !{!463, !464}
!463 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!464 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !445, file: !446, line: 122, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !446, line: 159, size: 512, align: 512, elements: !469)
!469 = !{!470, !490, !491, !494, !504, !505, !513, !517}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !468, file: !446, line: 160, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !446, line: 214, size: 4608, align: 512, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !446, line: 215, baseType: !288)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !472, file: !446, line: 216, baseType: !22, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !472, file: !446, line: 217, baseType: !22, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !472, file: !446, line: 218, baseType: !22, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !472, file: !446, line: 219, baseType: !22, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !472, file: !446, line: 220, baseType: !22, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !472, file: !446, line: 221, baseType: !22, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !472, file: !446, line: 222, baseType: !22, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !472, file: !446, line: 233, baseType: !454, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !472, file: !446, line: 234, baseType: !465, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !472, file: !446, line: 235, baseType: !454, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !472, file: !446, line: 236, baseType: !465, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !472, file: !446, line: 237, baseType: !487, size: 4096, offset: 512)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 4096, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 8)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !468, file: !446, line: 161, baseType: !22, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !468, file: !446, line: 162, baseType: !492, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !48, line: 27, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !156, line: 96, baseType: !6)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !468, file: !446, line: 163, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !496, line: 276, baseType: !497)
!496 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !496, line: 276, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !497, file: !496, line: 276, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !496, line: 70, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !496, line: 65, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !501, file: !496, line: 66, baseType: !22, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !468, file: !446, line: 164, baseType: !465, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !468, file: !446, line: 165, baseType: !506, size: 128, offset: 256)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !450, line: 14, size: 128, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !506, file: !450, line: 15, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !223, line: 125, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !509, file: !223, line: 126, baseType: !239, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !509, file: !223, line: 127, baseType: !227, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !468, file: !446, line: 166, baseType: !514, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!454}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !468, file: !446, line: 167, baseType: !454, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !445, file: !446, line: 123, baseType: !519, size: 8, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !521)
!521 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !445, file: !446, line: 124, baseType: !519, size: 8, offset: 456)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !445, file: !446, line: 125, baseType: !519, size: 8, offset: 464)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !445, file: !446, line: 126, baseType: !519, size: 8, offset: 472)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !429, file: !371, line: 572, baseType: !445, size: 512, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !429, file: !371, line: 580, baseType: !527, size: 64, offset: 1728)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !370, file: !371, line: 721, baseType: !22, size: 32, offset: 3584)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !370, file: !371, line: 722, baseType: !6, size: 32, offset: 3616)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !370, file: !371, line: 723, baseType: !531, size: 64, offset: 3648)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !534, line: 17, baseType: !535)
!534 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !534, line: 17, size: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !535, file: !534, line: 17, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 64, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 1)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !370, file: !371, line: 724, baseType: !533, size: 64, offset: 3712)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !370, file: !371, line: 749, baseType: !543, offset: 3776)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !371, line: 290, elements: !96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !370, file: !371, line: 751, baseType: !69, size: 128, offset: 3776)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !370, file: !371, line: 757, baseType: !231, size: 64, offset: 3904)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !370, file: !371, line: 758, baseType: !231, size: 64, offset: 3968)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !370, file: !371, line: 761, baseType: !548, size: 320, offset: 4032)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !318, line: 34, size: 320, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !548, file: !318, line: 35, baseType: !243, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !548, file: !318, line: 36, baseType: !552, size: 256, offset: 64)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 256, elements: !322)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !370, file: !371, line: 766, baseType: !6, size: 32, offset: 4352)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !370, file: !371, line: 767, baseType: !6, size: 32, offset: 4384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !370, file: !371, line: 768, baseType: !6, size: 32, offset: 4416)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !370, file: !371, line: 770, baseType: !6, size: 32, offset: 4448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !370, file: !371, line: 772, baseType: !173, size: 64, offset: 4480)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !370, file: !371, line: 775, baseType: !22, size: 32, offset: 4544)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !370, file: !371, line: 778, baseType: !22, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !370, file: !371, line: 779, baseType: !22, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !370, file: !371, line: 780, baseType: !22, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !370, file: !371, line: 803, baseType: !22, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !370, file: !371, line: 806, baseType: !22, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !370, file: !371, line: 807, baseType: !22, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !370, file: !371, line: 809, baseType: !22, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !370, file: !371, line: 815, baseType: !22, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !370, file: !371, line: 831, baseType: !173, size: 64, offset: 4672)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !370, file: !371, line: 833, baseType: !569, size: 384, offset: 4736)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !570, line: 25, size: 384, elements: !571)
!570 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!571 = !{!572, !577}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !569, file: !570, line: 26, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!158, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, scope: !569, file: !570, line: 27, baseType: !578, size: 320, offset: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !570, line: 27, size: 320, elements: !579)
!579 = !{!580, !590, !622}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !578, file: !570, line: 36, baseType: !581, size: 320)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !578, file: !570, line: 29, size: 320, elements: !582)
!582 = !{!583, !585, !586, !587, !588, !589}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !581, file: !570, line: 30, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !581, file: !570, line: 31, baseType: !18, size: 32, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !570, line: 32, baseType: !18, size: 32, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !581, file: !570, line: 33, baseType: !18, size: 32, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !581, file: !570, line: 34, baseType: !243, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !581, file: !570, line: 35, baseType: !584, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !578, file: !570, line: 46, baseType: !591, size: 192)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !578, file: !570, line: 38, size: 192, elements: !592)
!592 = !{!593, !594, !600, !621}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !591, file: !570, line: 39, baseType: !492, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !570, line: 40, baseType: !595, size: 32, offset: 32)
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !570, line: 16, baseType: !22, size: 32, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!598 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!599 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !591, file: !570, line: 41, baseType: !601, size: 64, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !591, file: !570, line: 41, size: 64, elements: !602)
!602 = !{!603, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !601, file: !570, line: 42, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !606, line: 7, size: 128, elements: !607)
!606 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !605, file: !606, line: 8, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !156, line: 93, baseType: !207)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !605, file: !606, line: 9, baseType: !207, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !601, file: !570, line: 43, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !614, line: 7, size: 64, elements: !615)
!614 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!615 = !{!616, !620}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !613, file: !614, line: 8, baseType: !617, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !614, line: 5, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !19, line: 20, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !21, line: 26, baseType: !6)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !613, file: !614, line: 9, baseType: !618, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !591, file: !570, line: 45, baseType: !243, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !578, file: !570, line: 54, baseType: !623, size: 256)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !578, file: !570, line: 48, size: 256, elements: !624)
!624 = !{!625, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !623, file: !570, line: 49, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !570, line: 14, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !623, file: !570, line: 50, baseType: !6, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !623, file: !570, line: 51, baseType: !6, size: 32, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !623, file: !570, line: 52, baseType: !173, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !623, file: !570, line: 53, baseType: !173, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !370, file: !371, line: 835, baseType: !633, size: 32, offset: 5120)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !48, line: 22, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !156, line: 28, baseType: !6)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !370, file: !371, line: 836, baseType: !633, size: 32, offset: 5152)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !370, file: !371, line: 840, baseType: !173, size: 64, offset: 5184)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !370, file: !371, line: 849, baseType: !369, size: 64, offset: 5248)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !370, file: !371, line: 852, baseType: !369, size: 64, offset: 5312)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !370, file: !371, line: 857, baseType: !69, size: 128, offset: 5376)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !370, file: !371, line: 858, baseType: !69, size: 128, offset: 5504)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !370, file: !371, line: 859, baseType: !369, size: 64, offset: 5632)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !370, file: !371, line: 867, baseType: !69, size: 128, offset: 5696)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !370, file: !371, line: 868, baseType: !69, size: 128, offset: 5824)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !370, file: !371, line: 871, baseType: !645, size: 64, offset: 5952)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !647, line: 59, size: 768, elements: !648)
!647 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !650, !651, !652, !663, !664, !671, !680}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !646, file: !647, line: 61, baseType: !383, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !646, file: !647, line: 62, baseType: !22, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !646, file: !647, line: 63, baseType: !82, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !646, file: !647, line: 65, baseType: !653, size: 256, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 256, elements: !322)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !48, line: 182, size: 64, elements: !655)
!655 = !{!656}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !654, file: !48, line: 183, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !48, line: 186, size: 128, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !658, file: !48, line: 187, baseType: !657, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !658, file: !48, line: 187, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !646, file: !647, line: 66, baseType: !654, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !646, file: !647, line: 68, baseType: !665, size: 128, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !666, line: 40, baseType: !667)
!666 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !666, line: 36, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !666, line: 37, baseType: !82)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !667, file: !666, line: 38, baseType: !69, size: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !646, file: !647, line: 69, baseType: !672, size: 128, align: 64, offset: 512)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !48, line: 216, size: 128, align: 64, elements: !673)
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !48, line: 217, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !672, file: !48, line: 218, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !675}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !646, file: !647, line: 70, baseType: !681, size: 128, offset: 640)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 128, elements: !539)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !647, line: 54, size: 128, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !682, file: !647, line: 55, baseType: !6, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !682, file: !647, line: 56, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !647, line: 56, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !370, file: !371, line: 872, baseType: !689, size: 512, offset: 6016)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 512, elements: !322)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !370, file: !371, line: 873, baseType: !69, size: 128, offset: 6528)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !370, file: !371, line: 874, baseType: !69, size: 128, offset: 6656)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !370, file: !371, line: 876, baseType: !693, size: 64, offset: 6784)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !695, line: 26, size: 192, elements: !696)
!695 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !694, file: !695, line: 27, baseType: !22, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !694, file: !695, line: 28, baseType: !699, size: 128, offset: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !700, line: 43, size: 128, elements: !701)
!700 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !699, file: !700, line: 44, baseType: !288)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !699, file: !700, line: 45, baseType: !69, size: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !370, file: !371, line: 879, baseType: !705, size: 64, offset: 6848)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !370, file: !371, line: 882, baseType: !705, size: 64, offset: 6912)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !370, file: !371, line: 884, baseType: !243, size: 64, offset: 6976)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !370, file: !371, line: 885, baseType: !243, size: 64, offset: 7040)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !370, file: !371, line: 890, baseType: !243, size: 64, offset: 7104)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !370, file: !371, line: 891, baseType: !711, size: 128, offset: 7168)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !371, line: 242, size: 128, elements: !712)
!712 = !{!713, !714, !715}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !711, file: !371, line: 244, baseType: !243, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !711, file: !371, line: 245, baseType: !243, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !711, file: !371, line: 246, baseType: !288, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !370, file: !371, line: 900, baseType: !173, size: 64, offset: 7296)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !370, file: !371, line: 901, baseType: !173, size: 64, offset: 7360)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !370, file: !371, line: 904, baseType: !243, size: 64, offset: 7424)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !370, file: !371, line: 907, baseType: !243, size: 64, offset: 7488)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !370, file: !371, line: 910, baseType: !173, size: 64, offset: 7552)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !370, file: !371, line: 911, baseType: !173, size: 64, offset: 7616)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !370, file: !371, line: 914, baseType: !723, size: 640, offset: 7680)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !724, line: 123, size: 640, elements: !725)
!724 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !732, !733}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !723, file: !724, line: 124, baseType: !727, size: 576)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 576, elements: !124)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !724, line: 108, size: 192, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !728, file: !724, line: 109, baseType: !243, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !728, file: !724, line: 110, baseType: !506, size: 128, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !723, file: !724, line: 125, baseType: !22, size: 32, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !723, file: !724, line: 126, baseType: !22, size: 32, offset: 608)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !370, file: !371, line: 917, baseType: !735, size: 192, offset: 8320)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !724, line: 134, size: 192, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !735, file: !724, line: 135, baseType: !672, size: 128, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !735, file: !724, line: 136, baseType: !22, size: 32, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !370, file: !371, line: 923, baseType: !740, size: 64, offset: 8512)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !371, line: 923, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !370, file: !371, line: 926, baseType: !740, size: 64, offset: 8576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !370, file: !371, line: 929, baseType: !740, size: 64, offset: 8640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !370, file: !371, line: 933, baseType: !746, size: 64, offset: 8704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !371, line: 933, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !370, file: !371, line: 943, baseType: !749, size: 128, offset: 8768)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 16)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !370, file: !371, line: 945, baseType: !753, size: 64, offset: 8896)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !371, line: 49, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !370, file: !371, line: 956, baseType: !756, size: 64, offset: 8960)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !371, line: 45, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !370, file: !371, line: 959, baseType: !759, size: 64, offset: 9024)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !371, line: 959, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !370, file: !371, line: 962, baseType: !762, size: 64, offset: 9088)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !371, line: 66, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !370, file: !371, line: 966, baseType: !765, size: 64, offset: 9152)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !371, line: 50, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !370, file: !371, line: 969, baseType: !768, size: 64, offset: 9216)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !724, line: 223, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !370, file: !371, line: 970, baseType: !771, size: 64, offset: 9280)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !371, line: 62, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !370, file: !371, line: 971, baseType: !774, size: 64, offset: 9344)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !775, line: 25, baseType: !776)
!775 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !775, line: 23, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !776, file: !775, line: 24, baseType: !538, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !370, file: !371, line: 972, baseType: !774, size: 64, offset: 9408)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !370, file: !371, line: 974, baseType: !774, size: 64, offset: 9472)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !370, file: !371, line: 975, baseType: !782, size: 192, offset: 9536)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !783, line: 30, size: 192, elements: !784)
!783 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !782, file: !783, line: 31, baseType: !69, size: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !782, file: !783, line: 32, baseType: !774, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !370, file: !371, line: 976, baseType: !173, size: 64, offset: 9728)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !370, file: !371, line: 977, baseType: !170, size: 64, offset: 9792)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !370, file: !371, line: 978, baseType: !22, size: 32, offset: 9856)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !370, file: !371, line: 980, baseType: !675, size: 64, offset: 9920)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !370, file: !371, line: 989, baseType: !792, size: 128, offset: 9984)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !793, line: 35, size: 128, elements: !794)
!793 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!794 = !{!795, !796, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !792, file: !793, line: 36, baseType: !6, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !792, file: !793, line: 37, baseType: !263, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !792, file: !793, line: 38, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !793, line: 23, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !370, file: !371, line: 992, baseType: !243, size: 64, offset: 10112)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !370, file: !371, line: 993, baseType: !243, size: 64, offset: 10176)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !370, file: !371, line: 996, baseType: !82, offset: 10240)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !370, file: !371, line: 999, baseType: !288, offset: 10240)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !370, file: !371, line: 1001, baseType: !805, size: 64, offset: 10240)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !371, line: 636, size: 64, elements: !806)
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !805, file: !371, line: 637, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !370, file: !371, line: 1005, baseType: !509, size: 128, offset: 10304)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !370, file: !371, line: 1007, baseType: !369, size: 64, offset: 10432)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !370, file: !371, line: 1009, baseType: !812, size: 64, offset: 10496)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !371, line: 1009, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !370, file: !371, line: 1043, baseType: !197, size: 64, offset: 10560)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !370, file: !371, line: 1046, baseType: !816, size: 64, offset: 10624)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !371, line: 41, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !370, file: !371, line: 1050, baseType: !819, size: 64, offset: 10688)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !371, line: 42, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !370, file: !371, line: 1054, baseType: !822, size: 64, offset: 10752)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !371, line: 55, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !370, file: !371, line: 1056, baseType: !825, size: 64, offset: 10816)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !371, line: 40, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !370, file: !371, line: 1058, baseType: !828, size: 64, offset: 10880)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !371, line: 47, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !370, file: !371, line: 1061, baseType: !831, size: 64, offset: 10944)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !371, line: 43, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !370, file: !371, line: 1064, baseType: !173, size: 64, offset: 11008)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !370, file: !371, line: 1065, baseType: !835, size: 64, offset: 11072)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !783, line: 14, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !783, line: 12, size: 384, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !783, line: 13, baseType: !840, size: 384)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !783, line: 13, size: 384, elements: !841)
!841 = !{!842, !843, !844, !845}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !840, file: !783, line: 13, baseType: !6, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !840, file: !783, line: 13, baseType: !6, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !840, file: !783, line: 13, baseType: !6, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !840, file: !783, line: 13, baseType: !846, size: 256, offset: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !847, line: 32, size: 256, elements: !848)
!847 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!848 = !{!849, !855, !868, !874, !883, !903, !908}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !846, file: !847, line: 37, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 34, size: 64, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !850, file: !847, line: 35, baseType: !634, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !850, file: !847, line: 36, baseType: !854, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !156, line: 49, baseType: !22)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !846, file: !847, line: 45, baseType: !856, size: 192)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 40, size: 192, elements: !857)
!857 = !{!858, !860, !861, !867}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !856, file: !847, line: 41, baseType: !859, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !156, line: 95, baseType: !6)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !856, file: !847, line: 42, baseType: !6, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !856, file: !847, line: 43, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !847, line: 11, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !847, line: 8, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !863, file: !847, line: 9, baseType: !6, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !863, file: !847, line: 10, baseType: !197, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !856, file: !847, line: 44, baseType: !6, size: 32, offset: 128)
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
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !875, file: !847, line: 58, baseType: !6, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !875, file: !847, line: 59, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !156, line: 94, baseType: !157)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !875, file: !847, line: 60, baseType: !881, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !846, file: !847, line: 95, baseType: !884, size: 256)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 64, size: 256, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !884, file: !847, line: 65, baseType: !197, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !847, line: 77, baseType: !888, size: 192, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !847, line: 77, size: 192, elements: !889)
!889 = !{!890, !891, !898}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !888, file: !847, line: 82, baseType: !358, size: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !888, file: !847, line: 88, baseType: !892, size: 192)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !847, line: 84, size: 192, elements: !893)
!893 = !{!894, !896, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !892, file: !847, line: 85, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !488)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !892, file: !847, line: 86, baseType: !197, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !892, file: !847, line: 87, baseType: !197, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !888, file: !847, line: 93, baseType: !899, size: 96)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !847, line: 90, size: 96, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !899, file: !847, line: 91, baseType: !895, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !899, file: !847, line: 92, baseType: !20, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !846, file: !847, line: 101, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 98, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !904, file: !847, line: 99, baseType: !158, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !904, file: !847, line: 100, baseType: !6, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !846, file: !847, line: 108, baseType: !909, size: 128)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !847, line: 104, size: 128, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !909, file: !847, line: 105, baseType: !197, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !909, file: !847, line: 106, baseType: !6, size: 32, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !909, file: !847, line: 107, baseType: !22, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !370, file: !371, line: 1067, baseType: !915, offset: 11136)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !916, line: 12, elements: !96)
!916 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !370, file: !371, line: 1099, baseType: !918, size: 64, offset: 11136)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !371, line: 56, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !370, file: !371, line: 1103, baseType: !69, size: 128, offset: 11200)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !370, file: !371, line: 1104, baseType: !922, size: 64, offset: 11328)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !371, line: 46, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !370, file: !371, line: 1105, baseType: !340, size: 192, offset: 11392)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !370, file: !371, line: 1106, baseType: !22, size: 32, offset: 11584)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !370, file: !371, line: 1109, baseType: !927, size: 128, offset: 11648)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 128, elements: !930)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !371, line: 51, flags: DIFlagFwdDecl)
!930 = !{!931}
!931 = !DISubrange(count: 2)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !370, file: !371, line: 1110, baseType: !340, size: 192, offset: 11776)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !370, file: !371, line: 1111, baseType: !69, size: 128, offset: 11968)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !370, file: !371, line: 1173, baseType: !935, size: 64, offset: 12096)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !937, line: 62, size: 256, align: 256, elements: !938)
!937 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940, !941, !946}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !936, file: !937, line: 75, baseType: !20, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !936, file: !937, line: 90, baseType: !20, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !936, file: !937, line: 124, baseType: !942, size: 64, offset: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !937, line: 109, size: 64, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !942, file: !937, line: 110, baseType: !244, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !942, file: !937, line: 112, baseType: !244, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !937, line: 144, baseType: !20, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !370, file: !371, line: 1174, baseType: !18, size: 32, offset: 12160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !370, file: !371, line: 1179, baseType: !173, size: 64, offset: 12224)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !370, file: !371, line: 1182, baseType: !950, size: 128, offset: 12288)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !318, line: 76, size: 128, elements: !951)
!951 = !{!952, !957, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !950, file: !318, line: 85, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !954, line: 7, size: 64, elements: !955)
!954 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !953, file: !954, line: 12, baseType: !535, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !950, file: !318, line: 88, baseType: !47, size: 8, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !950, file: !318, line: 95, baseType: !47, size: 8, offset: 72)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !371, line: 1184, baseType: !960, size: 128, offset: 12416)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !371, line: 1184, size: 128, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !960, file: !371, line: 1185, baseType: !383, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !960, file: !371, line: 1186, baseType: !672, size: 128, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !370, file: !371, line: 1190, baseType: !965, size: 64, offset: 12544)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !371, line: 53, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !370, file: !371, line: 1192, baseType: !968, size: 128, offset: 12608)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !318, line: 64, size: 128, elements: !969)
!969 = !{!970, !1063, !1064}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !968, file: !318, line: 65, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !215, line: 68, size: 512, align: 128, elements: !973)
!973 = !{!974, !975, !1055, !1062}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !215, line: 69, baseType: !173, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !215, line: 77, baseType: !976, size: 320, offset: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !215, line: 77, size: 320, elements: !977)
!977 = !{!978, !987, !992, !1020, !1028, !1034, !1047, !1054}
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 78, baseType: !979, size: 320)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 78, size: 320, elements: !980)
!980 = !{!981, !982, !985, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !979, file: !215, line: 84, baseType: !69, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !979, file: !215, line: 86, baseType: !983, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !215, line: 26, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !979, file: !215, line: 87, baseType: !173, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !979, file: !215, line: 94, baseType: !173, size: 64, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 96, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 96, size: 64, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !988, file: !215, line: 101, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !48, line: 143, baseType: !243)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 103, baseType: !993, size: 320)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 103, size: 320, elements: !994)
!994 = !{!995, !1005, !1008, !1009}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !215, line: 104, baseType: !996, size: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !215, line: 104, size: 128, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !996, file: !215, line: 105, baseType: !69, size: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !215, line: 106, baseType: !1000, size: 128)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !996, file: !215, line: 106, size: 128, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1000, file: !215, line: 107, baseType: !971, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1000, file: !215, line: 109, baseType: !6, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1000, file: !215, line: 110, baseType: !6, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !993, file: !215, line: 117, baseType: !1006, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !215, line: 117, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !993, file: !215, line: 119, baseType: !197, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !215, line: 120, baseType: !1010, size: 64, offset: 256)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !215, line: 120, size: 64, elements: !1011)
!1011 = !{!1012, !1013, !1014}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1010, file: !215, line: 121, baseType: !197, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1010, file: !215, line: 122, baseType: !173, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !215, line: 123, baseType: !1015, size: 32)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !215, line: 123, size: 32, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1015, file: !215, line: 124, baseType: !22, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1015, file: !215, line: 125, baseType: !22, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1015, file: !215, line: 126, baseType: !22, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 130, baseType: !1021, size: 192)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 130, size: 192, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1021, file: !215, line: 131, baseType: !173, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1021, file: !215, line: 134, baseType: !521, size: 8, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1021, file: !215, line: 135, baseType: !521, size: 8, offset: 72)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1021, file: !215, line: 136, baseType: !263, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1021, file: !215, line: 137, baseType: !22, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 139, baseType: !1029, size: 256)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 139, size: 256, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1029, file: !215, line: 140, baseType: !173, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1029, file: !215, line: 141, baseType: !263, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1029, file: !215, line: 143, baseType: !69, size: 128, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 145, baseType: !1035, size: 256)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 145, size: 256, elements: !1036)
!1036 = !{!1037, !1038, !1040, !1041, !1046}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1035, file: !215, line: 146, baseType: !173, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1035, file: !215, line: 147, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !204, line: 509, baseType: !971)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1035, file: !215, line: 148, baseType: !173, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !215, line: 149, baseType: !1042, size: 64, offset: 192)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1035, file: !215, line: 149, size: 64, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1042, file: !215, line: 150, baseType: !231, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1042, file: !215, line: 151, baseType: !263, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1035, file: !215, line: 156, baseType: !82, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !976, file: !215, line: 159, baseType: !1048, size: 128)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !215, line: 159, size: 128, elements: !1049)
!1049 = !{!1050, !1053}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1048, file: !215, line: 161, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !215, line: 161, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1048, file: !215, line: 162, baseType: !197, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !976, file: !215, line: 176, baseType: !672, size: 128, align: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !215, line: 179, baseType: !1056, size: 32, offset: 384)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !215, line: 179, size: 32, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1056, file: !215, line: 184, baseType: !263, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1056, file: !215, line: 192, baseType: !22, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1056, file: !215, line: 194, baseType: !22, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1056, file: !215, line: 195, baseType: !6, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !972, file: !215, line: 199, baseType: !263, size: 32, offset: 416)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !968, file: !318, line: 67, baseType: !20, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !968, file: !318, line: 68, baseType: !20, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !370, file: !371, line: 1206, baseType: !6, size: 32, offset: 12736)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !370, file: !371, line: 1207, baseType: !6, size: 32, offset: 12768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !370, file: !371, line: 1209, baseType: !173, size: 64, offset: 12800)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !370, file: !371, line: 1219, baseType: !243, size: 64, offset: 12864)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !370, file: !371, line: 1220, baseType: !243, size: 64, offset: 12928)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !370, file: !371, line: 1317, baseType: !6, size: 32, offset: 12992)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !370, file: !371, line: 1319, baseType: !369, size: 64, offset: 13056)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !370, file: !371, line: 1322, baseType: !1073, size: 64, offset: 13120)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !371, line: 1322, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !370, file: !371, line: 1326, baseType: !383, size: 32, offset: 13184)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !370, file: !371, line: 1342, baseType: !197, size: 64, offset: 13248)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !370, file: !371, line: 1343, baseType: !244, size: 64, offset: 13312)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !370, file: !371, line: 1344, baseType: !243, size: 64, offset: 13376)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !370, file: !371, line: 1345, baseType: !244, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !370, file: !371, line: 1346, baseType: !244, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !370, file: !371, line: 1347, baseType: !244, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !370, file: !371, line: 1348, baseType: !672, size: 128, align: 64, offset: 13504)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !370, file: !371, line: 1358, baseType: !1084, size: 34816, offset: 13824)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1085, line: 485, size: 34816, elements: !1086)
!1085 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !{!1087, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1116, !1117, !1118, !1119, !1120, !1121, !1124, !1125, !1126}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1084, file: !1085, line: 487, baseType: !1088, size: 192)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1089, size: 192, elements: !124)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1090, line: 16, size: 64, elements: !1091)
!1090 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1089, file: !1090, line: 17, baseType: !353, size: 16)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1089, file: !1090, line: 18, baseType: !353, size: 16, offset: 16)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1089, file: !1090, line: 19, baseType: !353, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1089, file: !1090, line: 19, baseType: !353, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1089, file: !1090, line: 19, baseType: !353, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1089, file: !1090, line: 19, baseType: !353, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1089, file: !1090, line: 19, baseType: !353, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1089, file: !1090, line: 20, baseType: !353, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1089, file: !1090, line: 20, baseType: !353, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1089, file: !1090, line: 20, baseType: !353, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1089, file: !1090, line: 20, baseType: !353, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1089, file: !1090, line: 20, baseType: !353, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1089, file: !1090, line: 20, baseType: !353, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1084, file: !1085, line: 491, baseType: !173, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1084, file: !1085, line: 495, baseType: !165, size: 16, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1084, file: !1085, line: 496, baseType: !165, size: 16, offset: 272)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1084, file: !1085, line: 497, baseType: !165, size: 16, offset: 288)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1084, file: !1085, line: 498, baseType: !165, size: 16, offset: 304)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1084, file: !1085, line: 502, baseType: !173, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1084, file: !1085, line: 503, baseType: !173, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1084, file: !1085, line: 514, baseType: !1113, size: 256, offset: 448)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 256, elements: !322)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1085, line: 483, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1084, file: !1085, line: 516, baseType: !173, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1084, file: !1085, line: 518, baseType: !173, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1084, file: !1085, line: 520, baseType: !173, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1084, file: !1085, line: 521, baseType: !173, size: 64, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1084, file: !1085, line: 522, baseType: !173, size: 64, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1084, file: !1085, line: 528, baseType: !1122, size: 64, offset: 1024)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1085, line: 10, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1084, file: !1085, line: 535, baseType: !173, size: 64, offset: 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1084, file: !1085, line: 537, baseType: !22, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1084, file: !1085, line: 540, baseType: !1127, size: 33280, offset: 1536)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1128, line: 317, size: 33280, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1127, file: !1128, line: 330, baseType: !22, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1127, file: !1128, line: 337, baseType: !173, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1127, file: !1128, line: 348, baseType: !1133, size: 32768, offset: 512)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1128, line: 304, size: 32768, elements: !1134)
!1134 = !{!1135, !1150, !1189, !1239, !1256}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1133, file: !1128, line: 305, baseType: !1136, size: 896)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1128, line: 12, size: 896, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1149}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1136, file: !1128, line: 13, baseType: !18, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1136, file: !1128, line: 14, baseType: !18, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1136, file: !1128, line: 15, baseType: !18, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1136, file: !1128, line: 16, baseType: !18, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1136, file: !1128, line: 17, baseType: !18, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1136, file: !1128, line: 18, baseType: !18, size: 32, offset: 160)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1136, file: !1128, line: 19, baseType: !18, size: 32, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1136, file: !1128, line: 22, baseType: !1146, size: 640, offset: 224)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 640, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 20)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1136, file: !1128, line: 25, baseType: !18, size: 32, offset: 864)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1133, file: !1128, line: 306, baseType: !1151, size: 4096, align: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1128, line: 34, size: 4096, align: 128, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1157, !1172, !1173, !1174, !1178, !1180, !1184}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1151, file: !1128, line: 35, baseType: !353, size: 16)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1151, file: !1128, line: 36, baseType: !353, size: 16, offset: 16)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1151, file: !1128, line: 37, baseType: !353, size: 16, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1151, file: !1128, line: 38, baseType: !353, size: 16, offset: 48)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1128, line: 39, baseType: !1158, size: 128, offset: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !1128, line: 39, size: 128, elements: !1159)
!1159 = !{!1160, !1165}
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1128, line: 40, baseType: !1161, size: 128)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1128, line: 40, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1161, file: !1128, line: 41, baseType: !243, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1161, file: !1128, line: 42, baseType: !243, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1158, file: !1128, line: 44, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !1128, line: 44, size: 128, elements: !1167)
!1167 = !{!1168, !1169, !1170, !1171}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1166, file: !1128, line: 45, baseType: !18, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1166, file: !1128, line: 46, baseType: !18, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1166, file: !1128, line: 47, baseType: !18, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1166, file: !1128, line: 48, baseType: !18, size: 32, offset: 96)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1151, file: !1128, line: 51, baseType: !18, size: 32, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1151, file: !1128, line: 52, baseType: !18, size: 32, offset: 224)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1151, file: !1128, line: 55, baseType: !1175, size: 1024, offset: 256)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1151, file: !1128, line: 58, baseType: !1179, size: 2048, offset: 1280)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1151, file: !1128, line: 60, baseType: !1181, size: 384, offset: 3328)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 12)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1128, line: 62, baseType: !1185, size: 384, offset: 3712)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !1128, line: 62, size: 384, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1185, file: !1128, line: 63, baseType: !1181, size: 384)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1185, file: !1128, line: 64, baseType: !1181, size: 384)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1133, file: !1128, line: 307, baseType: !1190, size: 1088)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1128, line: 79, size: 1088, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1238}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1128, line: 80, baseType: !18, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1128, line: 81, baseType: !18, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1128, line: 82, baseType: !18, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1190, file: !1128, line: 83, baseType: !18, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1190, file: !1128, line: 84, baseType: !18, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1190, file: !1128, line: 85, baseType: !18, size: 32, offset: 160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1190, file: !1128, line: 86, baseType: !18, size: 32, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1128, line: 88, baseType: !1146, size: 640, offset: 224)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1190, file: !1128, line: 89, baseType: !519, size: 8, offset: 864)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1190, file: !1128, line: 90, baseType: !519, size: 8, offset: 872)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1190, file: !1128, line: 91, baseType: !519, size: 8, offset: 880)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1190, file: !1128, line: 92, baseType: !519, size: 8, offset: 888)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1190, file: !1128, line: 93, baseType: !519, size: 8, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1190, file: !1128, line: 94, baseType: !519, size: 8, offset: 904)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1190, file: !1128, line: 95, baseType: !1207, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1209, line: 11, size: 128, elements: !1210)
!1209 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1208, file: !1209, line: 12, baseType: !158, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1208, file: !1209, line: 13, baseType: !1213, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1215, line: 56, size: 1344, elements: !1216)
!1215 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1214, file: !1215, line: 61, baseType: !173, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1214, file: !1215, line: 62, baseType: !173, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1214, file: !1215, line: 63, baseType: !173, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1214, file: !1215, line: 64, baseType: !173, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1214, file: !1215, line: 65, baseType: !173, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1214, file: !1215, line: 66, baseType: !173, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1214, file: !1215, line: 68, baseType: !173, size: 64, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1214, file: !1215, line: 69, baseType: !173, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1214, file: !1215, line: 70, baseType: !173, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1214, file: !1215, line: 71, baseType: !173, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1214, file: !1215, line: 72, baseType: !173, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1214, file: !1215, line: 73, baseType: !173, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1214, file: !1215, line: 74, baseType: !173, size: 64, offset: 768)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1214, file: !1215, line: 75, baseType: !173, size: 64, offset: 832)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1214, file: !1215, line: 76, baseType: !173, size: 64, offset: 896)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1214, file: !1215, line: 81, baseType: !173, size: 64, offset: 960)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1214, file: !1215, line: 83, baseType: !173, size: 64, offset: 1024)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1214, file: !1215, line: 84, baseType: !173, size: 64, offset: 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !1215, line: 85, baseType: !173, size: 64, offset: 1152)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1214, file: !1215, line: 86, baseType: !173, size: 64, offset: 1216)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1214, file: !1215, line: 87, baseType: !173, size: 64, offset: 1280)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1190, file: !1128, line: 96, baseType: !18, size: 32, offset: 1024)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1133, file: !1128, line: 308, baseType: !1240, size: 4608, align: 512)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1128, line: 289, size: 4608, align: 512, elements: !1241)
!1241 = !{!1242, !1243, !1252}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1240, file: !1128, line: 290, baseType: !1151, size: 4096, align: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1240, file: !1128, line: 291, baseType: !1244, size: 512, offset: 4096)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1128, line: 268, size: 512, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1244, file: !1128, line: 269, baseType: !243, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1244, file: !1128, line: 270, baseType: !243, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1244, file: !1128, line: 271, baseType: !1249, size: 384, offset: 128)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 384, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 6)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1240, file: !1128, line: 292, baseType: !1253, offset: 4608)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 0)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1133, file: !1128, line: 309, baseType: !1257, size: 32768)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 32768, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 4096)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !215, line: 378, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !362, file: !215, line: 384, baseType: !694, size: 192, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !235, file: !215, line: 500, baseType: !82, offset: 6656)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !235, file: !215, line: 501, baseType: !1265, size: 64, offset: 6656)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !215, line: 387, flags: DIFlagFwdDecl)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !235, file: !215, line: 516, baseType: !1268, size: 64, offset: 6720)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !215, line: 516, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !235, file: !215, line: 519, baseType: !202, size: 64, offset: 6784)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !235, file: !215, line: 521, baseType: !1272, size: 64, offset: 6848)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !215, line: 521, flags: DIFlagFwdDecl)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !235, file: !215, line: 545, baseType: !263, size: 32, offset: 6912)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !235, file: !215, line: 548, baseType: !47, size: 8, offset: 6944)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !235, file: !215, line: 550, baseType: !1277, offset: 6952)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1278, line: 142, elements: !96)
!1278 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !235, file: !215, line: 554, baseType: !1280, size: 256, offset: 6976)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1281, line: 102, size: 256, elements: !1282)
!1281 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1280, file: !1281, line: 103, baseType: !271, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1280, file: !1281, line: 104, baseType: !69, size: 128, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1280, file: !1281, line: 105, baseType: !1286, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1281, line: 21, baseType: !1287)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !1290}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !235, file: !215, line: 557, baseType: !18, size: 32, offset: 7232)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !232, file: !215, line: 565, baseType: !1293, offset: 7296)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: -1)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !214, file: !215, line: 333, baseType: !1297, size: 64, offset: 576)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !204, line: 284, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !204, line: 284, size: 64, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1298, file: !204, line: 284, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !261, line: 19, baseType: !173)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !214, file: !215, line: 334, baseType: !173, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !214, file: !215, line: 343, baseType: !1304, size: 256, offset: 704)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !215, line: 340, size: 256, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1304, file: !215, line: 341, baseType: !222, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1304, file: !215, line: 342, baseType: !173, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !214, file: !215, line: 351, baseType: !69, size: 128, offset: 960)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !214, file: !215, line: 353, baseType: !1310, size: 64, offset: 1088)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !215, line: 353, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !214, file: !215, line: 356, baseType: !1313, size: 64, offset: 1152)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !215, line: 356, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !214, file: !215, line: 359, baseType: !173, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !214, file: !215, line: 361, baseType: !202, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !214, file: !215, line: 362, baseType: !197, size: 64, offset: 1344)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !214, file: !215, line: 365, baseType: !271, size: 64, offset: 1408)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !214, file: !215, line: 373, baseType: !1321, offset: 1472)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !215, line: 296, elements: !96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !180, file: !148, line: 90, baseType: !175, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !180, file: !148, line: 91, baseType: !1324, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !138, file: !65, line: 143, baseType: !1326, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1329, !75}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1332, line: 39, size: 384, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1340, !1344, !1348, !1354, !1358}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1331, file: !1332, line: 40, baseType: !1335, size: 32)
!1335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1332, line: 26, baseType: !22, size: 32, elements: !1336)
!1336 = !{!1337, !1338, !1339}
!1337 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!1338 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!1339 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1331, file: !1332, line: 41, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!47}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1331, file: !1332, line: 42, baseType: !1345, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!197}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1331, file: !1332, line: 43, baseType: !1349, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!56, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1332, line: 19, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1331, file: !1332, line: 44, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!56}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1331, file: !1332, line: 45, baseType: !1359, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !197}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !138, file: !65, line: 144, baseType: !1363, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!56, !75}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !138, file: !65, line: 145, baseType: !1367, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !75, !1370, !1377}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1372, line: 23, baseType: !1373)
!1372 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 21, size: 32, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1373, file: !1372, line: 22, baseType: !1376, size: 32)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !48, line: 32, baseType: !854)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1372, line: 28, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1372, line: 26, size: 32, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1379, file: !1372, line: 27, baseType: !1382, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !48, line: 33, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !156, line: 50, baseType: !22)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !64, file: !65, line: 70, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1387, line: 123, size: 1024, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1531, !1532, !1533, !1534, !1535}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1386, file: !1387, line: 124, baseType: !263, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1386, file: !1387, line: 125, baseType: !263, size: 32, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1386, file: !1387, line: 135, baseType: !1385, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !1387, line: 136, baseType: !13, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1386, file: !1387, line: 138, baseType: !222, size: 192, align: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1386, file: !1387, line: 140, baseType: !56, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1386, file: !1387, line: 141, baseType: !22, size: 32, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !1387, line: 142, baseType: !1397, size: 256, offset: 512)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !1387, line: 142, size: 256, elements: !1398)
!1398 = !{!1399, !1454, !1458}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1397, file: !1387, line: 143, baseType: !1400, size: 192)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1387, line: 91, size: 192, elements: !1401)
!1401 = !{!1402, !1403, !1404}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1400, file: !1387, line: 92, baseType: !173, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1400, file: !1387, line: 94, baseType: !239, size: 64, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1400, file: !1387, line: 100, baseType: !1405, size: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1387, line: 180, size: 704, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1424, !1425, !1426, !1452, !1453}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1406, file: !1387, line: 182, baseType: !1385, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1387, line: 183, baseType: !22, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1406, file: !1387, line: 186, baseType: !1411, size: 192, offset: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1412, line: 19, size: 192, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1422, !1423}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1411, file: !1412, line: 20, baseType: !1415, size: 128)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1416, line: 292, size: 128, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1419, !1421}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1415, file: !1416, line: 293, baseType: !82)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1415, file: !1416, line: 295, baseType: !1420, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !48, line: 148, baseType: !22)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1415, file: !1416, line: 296, baseType: !197, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1411, file: !1412, line: 21, baseType: !22, size: 32, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1411, file: !1412, line: 22, baseType: !22, size: 32, offset: 160)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1406, file: !1387, line: 187, baseType: !18, size: 32, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1406, file: !1387, line: 188, baseType: !18, size: 32, offset: 352)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1406, file: !1387, line: 189, baseType: !1427, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1387, line: 168, size: 320, elements: !1429)
!1429 = !{!1430, !1436, !1440, !1444, !1448}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1428, file: !1387, line: 169, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!6, !1434, !1405}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !204, line: 539, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1428, file: !1387, line: 171, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!6, !1385, !13, !164}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1428, file: !1387, line: 173, baseType: !1441, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!6, !1385}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1428, file: !1387, line: 174, baseType: !1445, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!6, !1385, !1385, !13}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1428, file: !1387, line: 176, baseType: !1449, size: 64, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!6, !1434, !1385, !1405}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1406, file: !1387, line: 192, baseType: !69, size: 128, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1406, file: !1387, line: 194, baseType: !665, size: 128, offset: 576)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1397, file: !1387, line: 144, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1387, line: 103, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1455, file: !1387, line: 104, baseType: !1385, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1397, file: !1387, line: 145, baseType: !1459, size: 256)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1387, line: 107, size: 256, elements: !1460)
!1460 = !{!1461, !1526, !1529, !1530}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1459, file: !1387, line: 108, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1387, line: 217, size: 768, elements: !1465)
!1465 = !{!1466, !1486, !1490, !1494, !1499, !1503, !1507, !1511, !1512, !1513, !1514, !1522}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1464, file: !1387, line: 222, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!6, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1387, line: 197, size: 1088, elements: !1472)
!1472 = !{!1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1471, file: !1387, line: 199, baseType: !1385, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1471, file: !1387, line: 200, baseType: !202, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1471, file: !1387, line: 201, baseType: !1434, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1471, file: !1387, line: 202, baseType: !197, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1471, file: !1387, line: 205, baseType: !340, size: 192, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1471, file: !1387, line: 206, baseType: !340, size: 192, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1471, file: !1387, line: 207, baseType: !6, size: 32, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1471, file: !1387, line: 208, baseType: !69, size: 128, offset: 704)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1471, file: !1387, line: 209, baseType: !123, size: 64, offset: 832)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1471, file: !1387, line: 211, baseType: !170, size: 64, offset: 896)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1471, file: !1387, line: 212, baseType: !47, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1471, file: !1387, line: 213, baseType: !47, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1471, file: !1387, line: 214, baseType: !1313, size: 64, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1464, file: !1387, line: 223, baseType: !1487, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !1470}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1464, file: !1387, line: 236, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!6, !1434, !197}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1464, file: !1387, line: 238, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!197, !1434, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1464, file: !1387, line: 239, baseType: !1500, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!197, !1434, !197, !1498}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1464, file: !1387, line: 240, baseType: !1504, size: 64, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1434, !197}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1464, file: !1387, line: 242, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!154, !1470, !123, !170, !205}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1464, file: !1387, line: 252, baseType: !170, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1464, file: !1387, line: 259, baseType: !47, size: 8, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1464, file: !1387, line: 260, baseType: !1508, size: 64, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1464, file: !1387, line: 263, baseType: !1515, size: 64, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1518, !1470, !1520}
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1519, line: 52, baseType: !22)
!1519 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1387, line: 27, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1464, file: !1387, line: 266, baseType: !1523, size: 64, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!6, !1470, !213}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1459, file: !1387, line: 109, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1387, line: 31, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1459, file: !1387, line: 110, baseType: !205, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1459, file: !1387, line: 111, baseType: !1385, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1386, file: !1387, line: 148, baseType: !197, size: 64, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1386, file: !1387, line: 154, baseType: !243, size: 64, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !1387, line: 156, baseType: !165, size: 16, offset: 896)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1386, file: !1387, line: 157, baseType: !164, size: 16, offset: 912)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1386, file: !1387, line: 158, baseType: !1536, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1387, line: 32, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !64, file: !65, line: 71, baseType: !1539, size: 32, offset: 448)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1540, line: 19, size: 32, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1539, file: !1540, line: 20, baseType: !383, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !64, file: !65, line: 75, baseType: !22, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !64, file: !65, line: 76, baseType: !22, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !64, file: !65, line: 77, baseType: !22, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !64, file: !65, line: 78, baseType: !22, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !64, file: !65, line: 79, baseType: !22, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !60, file: !61, line: 463, baseType: !1549, size: 64, offset: 512)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !60, file: !61, line: 465, baseType: !1551, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !61, line: 36, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !60, file: !61, line: 467, baseType: !13, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !61, line: 468, baseType: !1555, size: 64, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !61, line: 87, size: 384, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1565, !1570, !1574}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1557, file: !61, line: 88, baseType: !13, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1557, file: !61, line: 89, baseType: !177, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1557, file: !61, line: 90, baseType: !1562, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!6, !1549, !118}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1557, file: !61, line: 91, baseType: !1566, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!123, !1549, !1569, !1370, !1377}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1557, file: !61, line: 93, baseType: !1571, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1549}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1557, file: !61, line: 95, baseType: !1575, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1578, line: 278, size: 1472, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1577, file: !1578, line: 279, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!6, !1549}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1577, file: !1578, line: 280, baseType: !1571, size: 64, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1577, file: !1578, line: 281, baseType: !1581, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1577, file: !1578, line: 282, baseType: !1581, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1577, file: !1578, line: 283, baseType: !1581, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1577, file: !1578, line: 284, baseType: !1581, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1577, file: !1578, line: 285, baseType: !1581, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1577, file: !1578, line: 286, baseType: !1581, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1577, file: !1578, line: 287, baseType: !1581, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1577, file: !1578, line: 288, baseType: !1581, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1577, file: !1578, line: 289, baseType: !1581, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1577, file: !1578, line: 290, baseType: !1581, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1577, file: !1578, line: 291, baseType: !1581, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1577, file: !1578, line: 292, baseType: !1581, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1577, file: !1578, line: 293, baseType: !1581, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1577, file: !1578, line: 294, baseType: !1581, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1577, file: !1578, line: 295, baseType: !1581, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1577, file: !1578, line: 296, baseType: !1581, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1577, file: !1578, line: 297, baseType: !1581, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1577, file: !1578, line: 298, baseType: !1581, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1577, file: !1578, line: 299, baseType: !1581, size: 64, offset: 1280)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1577, file: !1578, line: 300, baseType: !1581, size: 64, offset: 1344)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1577, file: !1578, line: 301, baseType: !1581, size: 64, offset: 1408)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !60, file: !61, line: 470, baseType: !1607, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1609, line: 82, size: 1408, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1702, !1705, !1708}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1608, file: !1609, line: 83, baseType: !13, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1608, file: !1609, line: 84, baseType: !13, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1608, file: !1609, line: 85, baseType: !1549, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1608, file: !1609, line: 86, baseType: !177, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1608, file: !1609, line: 87, baseType: !177, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1608, file: !1609, line: 88, baseType: !177, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1608, file: !1609, line: 90, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!6, !1549, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1623, line: 95, size: 1152, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626, !1627, !1631, !1632, !1633, !1639, !1653, !1666, !1667, !1668, !1669, !1670, !1678, !1679, !1680, !1681, !1682, !1683}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1622, file: !1623, line: 96, baseType: !13, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1622, file: !1623, line: 97, baseType: !1607, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1622, file: !1623, line: 99, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1630, line: 76, flags: DIFlagFwdDecl)
!1630 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1622, file: !1623, line: 100, baseType: !13, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1622, file: !1623, line: 102, baseType: !47, size: 8, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1622, file: !1623, line: 103, baseType: !1634, size: 32, offset: 288)
!1634 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1623, line: 44, baseType: !22, size: 32, elements: !1635)
!1635 = !{!1636, !1637, !1638}
!1636 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!1637 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!1638 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1622, file: !1623, line: 105, baseType: !1640, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1643, line: 262, size: 1600, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1647, !1648, !1652}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1642, file: !1643, line: 263, baseType: !1646, size: 256)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 256, elements: !1176)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1642, file: !1643, line: 264, baseType: !1646, size: 256, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1642, file: !1643, line: 265, baseType: !1649, size: 1024, offset: 512)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1024, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1642, file: !1643, line: 266, baseType: !56, size: 64, offset: 1536)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1622, file: !1623, line: 106, baseType: !1654, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1643, line: 210, size: 256, elements: !1657)
!1657 = !{!1658, !1662, !1664, !1665}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1656, file: !1643, line: 211, baseType: !1659, size: 72)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 72, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 9)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1656, file: !1643, line: 212, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1643, line: 14, baseType: !173)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1656, file: !1643, line: 213, baseType: !20, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1656, file: !1643, line: 214, baseType: !20, size: 32, offset: 224)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1622, file: !1623, line: 108, baseType: !1581, size: 64, offset: 448)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1622, file: !1623, line: 109, baseType: !1571, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1622, file: !1623, line: 110, baseType: !1581, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1622, file: !1623, line: 111, baseType: !1571, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1622, file: !1623, line: 112, baseType: !1671, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!6, !1549, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1578, line: 52, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1578, line: 50, size: 32, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1675, file: !1578, line: 51, baseType: !6, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1622, file: !1623, line: 113, baseType: !1581, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1622, file: !1623, line: 114, baseType: !177, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1622, file: !1623, line: 115, baseType: !177, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1622, file: !1623, line: 117, baseType: !1575, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1622, file: !1623, line: 118, baseType: !1571, size: 64, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1622, file: !1623, line: 120, baseType: !1684, size: 64, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1623, line: 120, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1608, file: !1609, line: 91, baseType: !1562, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1608, file: !1609, line: 92, baseType: !1581, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1608, file: !1609, line: 93, baseType: !1571, size: 64, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1608, file: !1609, line: 94, baseType: !1581, size: 64, offset: 640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1608, file: !1609, line: 95, baseType: !1571, size: 64, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1608, file: !1609, line: 97, baseType: !1581, size: 64, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1608, file: !1609, line: 98, baseType: !1581, size: 64, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1608, file: !1609, line: 100, baseType: !1671, size: 64, offset: 896)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1608, file: !1609, line: 101, baseType: !1581, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1608, file: !1609, line: 103, baseType: !1581, size: 64, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1608, file: !1609, line: 105, baseType: !1581, size: 64, offset: 1088)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1608, file: !1609, line: 107, baseType: !1575, size: 64, offset: 1152)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1608, file: !1609, line: 109, baseType: !1699, size: 64, offset: 1216)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1609, line: 109, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1608, file: !1609, line: 111, baseType: !1703, size: 64, offset: 1280)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1609, line: 111, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1608, file: !1609, line: 112, baseType: !1706, offset: 1344)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1707, line: 187, elements: !96)
!1707 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1608, file: !1609, line: 114, baseType: !47, size: 8, offset: 1344)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !60, file: !61, line: 471, baseType: !1621, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !60, file: !61, line: 473, baseType: !197, size: 64, offset: 896)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !60, file: !61, line: 475, baseType: !197, size: 64, offset: 960)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !60, file: !61, line: 480, baseType: !340, size: 192, offset: 1024)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !60, file: !61, line: 484, baseType: !1714, size: 576, offset: 1216)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !61, line: 361, size: 576, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1714, file: !61, line: 362, baseType: !69, size: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1714, file: !61, line: 363, baseType: !69, size: 128, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1714, file: !61, line: 364, baseType: !69, size: 128, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1714, file: !61, line: 365, baseType: !69, size: 128, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1714, file: !61, line: 366, baseType: !47, size: 8, offset: 512)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1714, file: !61, line: 367, baseType: !1722, size: 32, offset: 544)
!1722 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !61, line: 343, baseType: !22, size: 32, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727}
!1724 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!1725 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!1726 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!1727 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !60, file: !61, line: 485, baseType: !1729, size: 2304, offset: 1792)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1578, line: 565, size: 2304, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1816, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1839, !1843}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1729, file: !1578, line: 566, baseType: !1674, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1729, file: !1578, line: 567, baseType: !22, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1729, file: !1578, line: 568, baseType: !22, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1729, file: !1578, line: 569, baseType: !47, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1729, file: !1578, line: 570, baseType: !47, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1729, file: !1578, line: 571, baseType: !47, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1729, file: !1578, line: 572, baseType: !47, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1729, file: !1578, line: 573, baseType: !47, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1729, file: !1578, line: 574, baseType: !47, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1729, file: !1578, line: 575, baseType: !47, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1729, file: !1578, line: 576, baseType: !47, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1729, file: !1578, line: 577, baseType: !18, size: 32, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1729, file: !1578, line: 578, baseType: !82, offset: 96)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1729, file: !1578, line: 580, baseType: !69, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1729, file: !1578, line: 581, baseType: !694, size: 192, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1729, file: !1578, line: 582, baseType: !1747, size: 64, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1749, line: 43, size: 1472, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1758, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1748, file: !1749, line: 44, baseType: !13, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1748, file: !1749, line: 45, baseType: !6, size: 32, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1748, file: !1749, line: 46, baseType: !69, size: 128, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !1749, line: 47, baseType: !82, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1748, file: !1749, line: 48, baseType: !1756, size: 64, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1578, line: 533, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1748, file: !1749, line: 49, baseType: !1759, size: 320, offset: 320)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1760, line: 11, size: 320, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1764, !1769}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1759, file: !1760, line: 16, baseType: !658, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1759, file: !1760, line: 17, baseType: !173, size: 64, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1759, file: !1760, line: 18, baseType: !1765, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 19, baseType: !18, size: 32, offset: 256)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1748, file: !1749, line: 50, baseType: !173, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1748, file: !1749, line: 51, baseType: !454, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1748, file: !1749, line: 52, baseType: !454, size: 64, offset: 768)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1748, file: !1749, line: 53, baseType: !454, size: 64, offset: 832)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1748, file: !1749, line: 54, baseType: !454, size: 64, offset: 896)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1748, file: !1749, line: 55, baseType: !454, size: 64, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1748, file: !1749, line: 56, baseType: !173, size: 64, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1748, file: !1749, line: 57, baseType: !173, size: 64, offset: 1088)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1748, file: !1749, line: 58, baseType: !173, size: 64, offset: 1152)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1748, file: !1749, line: 59, baseType: !173, size: 64, offset: 1216)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1748, file: !1749, line: 60, baseType: !173, size: 64, offset: 1280)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1748, file: !1749, line: 61, baseType: !1549, size: 64, offset: 1344)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1748, file: !1749, line: 62, baseType: !47, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1748, file: !1749, line: 63, baseType: !47, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1729, file: !1578, line: 583, baseType: !47, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1729, file: !1578, line: 584, baseType: !47, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1729, file: !1578, line: 585, baseType: !47, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1729, file: !1578, line: 586, baseType: !22, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1729, file: !1578, line: 587, baseType: !22, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1729, file: !1578, line: 592, baseType: !445, size: 512, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1729, file: !1578, line: 593, baseType: !243, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1729, file: !1578, line: 594, baseType: !1280, size: 256, offset: 1152)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1729, file: !1578, line: 595, baseType: !665, size: 128, offset: 1408)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1729, file: !1578, line: 596, baseType: !1756, size: 64, offset: 1536)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1729, file: !1578, line: 597, baseType: !263, size: 32, offset: 1600)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1729, file: !1578, line: 598, baseType: !263, size: 32, offset: 1632)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1729, file: !1578, line: 599, baseType: !22, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1729, file: !1578, line: 600, baseType: !22, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1729, file: !1578, line: 601, baseType: !22, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1729, file: !1578, line: 602, baseType: !22, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1729, file: !1578, line: 603, baseType: !22, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1729, file: !1578, line: 604, baseType: !47, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1729, file: !1578, line: 605, baseType: !22, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1729, file: !1578, line: 606, baseType: !22, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1729, file: !1578, line: 607, baseType: !22, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1729, file: !1578, line: 608, baseType: !22, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1729, file: !1578, line: 609, baseType: !22, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1729, file: !1578, line: 610, baseType: !22, size: 32, offset: 1696)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1729, file: !1578, line: 611, baseType: !1809, size: 32, offset: 1728)
!1809 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1578, line: 524, baseType: !22, size: 32, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814, !1815}
!1811 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!1812 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!1813 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!1814 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!1815 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1729, file: !1578, line: 612, baseType: !1817, size: 32, offset: 1760)
!1817 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1578, line: 502, baseType: !22, size: 32, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822}
!1819 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!1820 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!1821 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!1822 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1729, file: !1578, line: 613, baseType: !6, size: 32, offset: 1792)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1729, file: !1578, line: 614, baseType: !6, size: 32, offset: 1824)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1729, file: !1578, line: 615, baseType: !243, size: 64, offset: 1856)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1729, file: !1578, line: 616, baseType: !243, size: 64, offset: 1920)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1729, file: !1578, line: 617, baseType: !243, size: 64, offset: 1984)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1729, file: !1578, line: 618, baseType: !243, size: 64, offset: 2048)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1729, file: !1578, line: 620, baseType: !1830, size: 64, offset: 2112)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1578, line: 536, size: 256, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1831, file: !1578, line: 537, baseType: !82)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1831, file: !1578, line: 538, baseType: !22, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1831, file: !1578, line: 540, baseType: !69, size: 128, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1831, file: !1578, line: 543, baseType: !1837, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1578, line: 534, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1729, file: !1578, line: 621, baseType: !1840, size: 64, offset: 2176)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1549, !618}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1729, file: !1578, line: 622, baseType: !1844, size: 64, offset: 2240)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1578, line: 622, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !60, file: !61, line: 486, baseType: !1847, size: 64, offset: 4096)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1578, line: 642, size: 1792, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1856, !1857, !1858}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1848, file: !1578, line: 643, baseType: !1577, size: 1472)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1848, file: !1578, line: 644, baseType: !1581, size: 64, offset: 1472)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1848, file: !1578, line: 645, baseType: !1853, size: 64, offset: 1536)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !1549, !47}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1848, file: !1578, line: 646, baseType: !1581, size: 64, offset: 1600)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1848, file: !1578, line: 647, baseType: !1571, size: 64, offset: 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1848, file: !1578, line: 648, baseType: !1571, size: 64, offset: 1728)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !60, file: !61, line: 493, baseType: !1860, size: 64, offset: 4160)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !61, line: 493, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !60, file: !61, line: 499, baseType: !69, size: 128, offset: 4224)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !60, file: !61, line: 502, baseType: !1864, size: 64, offset: 4352)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !61, line: 502, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !60, file: !61, line: 504, baseType: !1868, size: 64, offset: 4416)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !60, file: !61, line: 505, baseType: !243, size: 64, offset: 4480)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !60, file: !61, line: 510, baseType: !243, size: 64, offset: 4544)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !60, file: !61, line: 511, baseType: !1872, size: 64, offset: 4608)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !61, line: 511, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !60, file: !61, line: 513, baseType: !1876, size: 64, offset: 4672)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !61, line: 288, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1877, file: !61, line: 293, baseType: !22, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1877, file: !61, line: 294, baseType: !173, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !60, file: !61, line: 515, baseType: !69, size: 128, offset: 4736)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !60, file: !61, line: 526, baseType: !1883, offset: 4864)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1884, line: 5, elements: !96)
!1884 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !60, file: !61, line: 528, baseType: !1886, size: 64, offset: 4864)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !60, file: !61, line: 529, baseType: !29, size: 64, offset: 4928)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !60, file: !61, line: 534, baseType: !1889, size: 32, offset: 4992)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !48, line: 16, baseType: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !48, line: 13, baseType: !18)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !60, file: !61, line: 535, baseType: !18, size: 32, offset: 5024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !60, file: !61, line: 537, baseType: !82, offset: 5056)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !60, file: !61, line: 538, baseType: !69, size: 128, offset: 5056)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !60, file: !61, line: 540, baseType: !1895, size: 64, offset: 5184)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1897, line: 54, size: 960, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905, !1909, !1913, !1914, !1915, !1916, !1920, !1924, !1925}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1896, file: !1897, line: 55, baseType: !13, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1896, file: !1897, line: 56, baseType: !1628, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1896, file: !1897, line: 58, baseType: !177, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1896, file: !1897, line: 59, baseType: !177, size: 64, offset: 192)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1896, file: !1897, line: 60, baseType: !75, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1896, file: !1897, line: 62, baseType: !1562, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1896, file: !1897, line: 63, baseType: !1906, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!123, !1549, !1569}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1896, file: !1897, line: 65, baseType: !1910, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1895}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1896, file: !1897, line: 66, baseType: !1571, size: 64, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1896, file: !1897, line: 68, baseType: !1581, size: 64, offset: 576)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1896, file: !1897, line: 70, baseType: !1329, size: 64, offset: 640)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1896, file: !1897, line: 71, baseType: !1917, size: 64, offset: 704)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!56, !1549}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1896, file: !1897, line: 73, baseType: !1921, size: 64, offset: 768)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1549, !1370, !1377}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1896, file: !1897, line: 75, baseType: !1575, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1896, file: !1897, line: 77, baseType: !1703, size: 64, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !60, file: !61, line: 541, baseType: !177, size: 64, offset: 5248)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !60, file: !61, line: 543, baseType: !1571, size: 64, offset: 5312)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !60, file: !61, line: 544, baseType: !1929, size: 64, offset: 5376)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !61, line: 45, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !60, file: !61, line: 545, baseType: !1932, size: 64, offset: 5440)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !61, line: 47, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !60, file: !61, line: 547, baseType: !47, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !60, file: !61, line: 548, baseType: !47, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !60, file: !61, line: 549, baseType: !47, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !60, file: !61, line: 550, baseType: !47, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !33, file: !26, line: 116, baseType: !1939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!47, !50, !13}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !33, file: !26, line: 118, baseType: !1943, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!6, !50, !13, !22, !197, !170}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !33, file: !26, line: 123, baseType: !1947, size: 64, offset: 384)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!6, !50, !13, !1950, !170}
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !33, file: !26, line: 126, baseType: !1952, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!13, !50}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !33, file: !26, line: 127, baseType: !1952, size: 64, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !33, file: !26, line: 128, baseType: !1957, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!29, !50}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !33, file: !26, line: 130, baseType: !1961, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!29, !50, !29}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !33, file: !26, line: 133, baseType: !1965, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!29, !50, !13}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !33, file: !26, line: 135, baseType: !1969, size: 64, offset: 768)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!6, !50, !13, !13, !22, !22, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !26, line: 43, size: 640, elements: !1974)
!1974 = !{!1975, !1976, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1973, file: !26, line: 44, baseType: !29, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1973, file: !26, line: 45, baseType: !22, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1973, file: !26, line: 46, baseType: !1978, size: 512, offset: 128)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 512, elements: !488)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !33, file: !26, line: 140, baseType: !1961, size: 64, offset: 832)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !33, file: !26, line: 143, baseType: !1957, size: 64, offset: 896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !33, file: !26, line: 145, baseType: !36, size: 64, offset: 960)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !33, file: !26, line: 146, baseType: !1983, size: 64, offset: 1024)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!6, !50, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !26, line: 29, size: 128, elements: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1987, file: !26, line: 30, baseType: !22, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1987, file: !26, line: 31, baseType: !22, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1987, file: !26, line: 32, baseType: !50, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !33, file: !26, line: 148, baseType: !1993, size: 64, offset: 1088)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!6, !50, !1549}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !25, file: !26, line: 20, baseType: !1549, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !9, file: !10, line: 57, baseType: !1998, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !10, line: 31, size: 704, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004, !2005}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1999, file: !10, line: 32, baseType: !123, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1999, file: !10, line: 33, baseType: !6, size: 32, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1999, file: !10, line: 34, baseType: !197, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1999, file: !10, line: 35, baseType: !1998, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1999, file: !10, line: 43, baseType: !192, size: 448, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !9, file: !10, line: 58, baseType: !1998, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !9, file: !10, line: 59, baseType: !1886, size: 64, offset: 512)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !9, file: !10, line: 60, baseType: !1886, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !9, file: !10, line: 61, baseType: !1886, size: 64, offset: 640)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !9, file: !10, line: 63, baseType: !64, size: 512, offset: 704)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 65, baseType: !173, size: 64, offset: 1216)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !9, file: !10, line: 66, baseType: !197, size: 64, offset: 1280)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_endpoint", file: !2015, line: 23, size: 128, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/of_graph.h", directory: "/home/lizy2001/genbc/linux")
!2016 = !{!2017, !2018, !2019}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2014, file: !2015, line: 24, baseType: !22, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2014, file: !2015, line: 25, baseType: !22, size: 32, offset: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "local_node", scope: !2014, file: !2015, line: 26, baseType: !7, size: 64, offset: 64)
!2020 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2021, retainedTypes: !2027, globals: !2036, splitDebugInlining: false, nameTableKind: None)
!2021 = !{!461, !595, !1335, !1634, !1722, !1809, !1817, !2022}
!2022 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2023, line: 10, baseType: !22, size: 32, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2026}
!2025 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!2026 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!2027 = !{!2028, !2030, !197, !173, !158, !2032, !20, !2033, !244, !2034, !354, !2029, !1886, !2035}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1519, line: 32, baseType: !20)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !1519, line: 34, baseType: !244)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!2036 = !{!0, !2037, !2042, !2044}
!2037 = !DIGlobalVariableExpression(var: !2038, expr: !DIExpression())
!2038 = distinct !DIGlobalVariable(name: "__warned", scope: !2039, file: !3, line: 649, type: !47, isLocal: true, isDefinition: true)
!2039 = distinct !DISubprogram(name: "of_graph_get_next_endpoint", scope: !3, file: !3, line: 619, type: !2040, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!1886, !7, !1886}
!2042 = !DIGlobalVariableExpression(var: !2043, expr: !DIExpression())
!2043 = distinct !DIGlobalVariable(name: "of_fwnode_ops", scope: !2020, file: !3, line: 1429, type: !32, isLocal: false, isDefinition: true)
!2044 = !DIGlobalVariableExpression(var: !2045, expr: !DIExpression())
!2045 = distinct !DIGlobalVariable(name: "of_supplier_bindings", scope: !2020, file: !3, line: 1322, type: !2046, isLocal: true, isDefinition: true)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2047, size: 1792, elements: !2054)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "supplier_bindings", file: !3, line: 1280, size: 64, elements: !2049)
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "parse_prop", scope: !2048, file: !3, line: 1281, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!1886, !1886, !13, !6}
!2054 = !{!2055}
!2055 = !DISubrange(count: 28)
!2056 = !{i32 7, !"Dwarf Version", i32 4}
!2057 = !{i32 2, !"Debug Info Version", i32 3}
!2058 = !{i32 1, !"wchar_size", i32 2}
!2059 = !{i32 1, !"Code Model", i32 2}
!2060 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2061 = distinct !DISubprogram(name: "of_graph_is_present", scope: !3, file: !3, line: 39, type: !2062, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!47, !7}
!2064 = !DILocalVariable(name: "node", arg: 1, scope: !2061, file: !3, line: 39, type: !7)
!2065 = !DILocation(line: 39, column: 52, scope: !2061)
!2066 = !DILocalVariable(name: "ports", scope: !2061, file: !3, line: 41, type: !1886)
!2067 = !DILocation(line: 41, column: 22, scope: !2061)
!2068 = !DILocalVariable(name: "port", scope: !2061, file: !3, line: 41, type: !1886)
!2069 = !DILocation(line: 41, column: 30, scope: !2061)
!2070 = !DILocation(line: 43, column: 31, scope: !2061)
!2071 = !DILocation(line: 43, column: 10, scope: !2061)
!2072 = !DILocation(line: 43, column: 8, scope: !2061)
!2073 = !DILocation(line: 44, column: 6, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 44, column: 6)
!2075 = !DILocation(line: 44, column: 6, scope: !2061)
!2076 = !DILocation(line: 45, column: 10, scope: !2074)
!2077 = !DILocation(line: 45, column: 8, scope: !2074)
!2078 = !DILocation(line: 45, column: 3, scope: !2074)
!2079 = !DILocation(line: 47, column: 30, scope: !2061)
!2080 = !DILocation(line: 47, column: 9, scope: !2061)
!2081 = !DILocation(line: 47, column: 7, scope: !2061)
!2082 = !DILocation(line: 48, column: 14, scope: !2061)
!2083 = !DILocation(line: 48, column: 2, scope: !2061)
!2084 = !DILocation(line: 49, column: 14, scope: !2061)
!2085 = !DILocation(line: 49, column: 2, scope: !2061)
!2086 = !DILocation(line: 51, column: 11, scope: !2061)
!2087 = !DILocation(line: 51, column: 10, scope: !2061)
!2088 = !DILocation(line: 51, column: 9, scope: !2061)
!2089 = !DILocation(line: 51, column: 2, scope: !2061)
!2090 = distinct !DISubprogram(name: "of_node_put", scope: !10, file: !10, line: 129, type: !2091, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !1886}
!2093 = !DILocalVariable(name: "node", arg: 1, scope: !2090, file: !10, line: 129, type: !1886)
!2094 = !DILocation(line: 129, column: 52, scope: !2090)
!2095 = !DILocation(line: 129, column: 60, scope: !2090)
!2096 = distinct !DISubprogram(name: "of_property_count_elems_of_size", scope: !3, file: !3, line: 67, type: !2097, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!6, !7, !13, !6}
!2099 = !DILocalVariable(name: "np", arg: 1, scope: !2096, file: !3, line: 67, type: !7)
!2100 = !DILocation(line: 67, column: 63, scope: !2096)
!2101 = !DILocalVariable(name: "propname", arg: 2, scope: !2096, file: !3, line: 68, type: !13)
!2102 = !DILocation(line: 68, column: 17, scope: !2096)
!2103 = !DILocalVariable(name: "elem_size", arg: 3, scope: !2096, file: !3, line: 68, type: !6)
!2104 = !DILocation(line: 68, column: 31, scope: !2096)
!2105 = !DILocalVariable(name: "prop", scope: !2096, file: !3, line: 70, type: !1998)
!2106 = !DILocation(line: 70, column: 19, scope: !2096)
!2107 = !DILocation(line: 70, column: 43, scope: !2096)
!2108 = !DILocation(line: 70, column: 47, scope: !2096)
!2109 = !DILocation(line: 70, column: 26, scope: !2096)
!2110 = !DILocation(line: 72, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 72, column: 6)
!2112 = !DILocation(line: 72, column: 6, scope: !2096)
!2113 = !DILocation(line: 73, column: 3, scope: !2111)
!2114 = !DILocation(line: 74, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 74, column: 6)
!2116 = !DILocation(line: 74, column: 13, scope: !2115)
!2117 = !DILocation(line: 74, column: 6, scope: !2096)
!2118 = !DILocation(line: 75, column: 3, scope: !2115)
!2119 = !DILocation(line: 77, column: 6, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 77, column: 6)
!2121 = !DILocation(line: 77, column: 12, scope: !2120)
!2122 = !DILocation(line: 77, column: 21, scope: !2120)
!2123 = !DILocation(line: 77, column: 19, scope: !2120)
!2124 = !DILocation(line: 77, column: 31, scope: !2120)
!2125 = !DILocation(line: 77, column: 6, scope: !2096)
!2126 = !DILocation(line: 78, column: 3, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 77, column: 37)
!2128 = !DILocation(line: 80, column: 3, scope: !2127)
!2129 = !DILocation(line: 83, column: 9, scope: !2096)
!2130 = !DILocation(line: 83, column: 15, scope: !2096)
!2131 = !DILocation(line: 83, column: 24, scope: !2096)
!2132 = !DILocation(line: 83, column: 22, scope: !2096)
!2133 = !DILocation(line: 83, column: 2, scope: !2096)
!2134 = !DILocation(line: 84, column: 1, scope: !2096)
!2135 = distinct !DISubprogram(name: "of_property_read_u32_index", scope: !3, file: !3, line: 137, type: !2136, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!6, !7, !13, !18, !584}
!2138 = !DILocalVariable(name: "p", arg: 1, scope: !2139, file: !2140, line: 184, type: !2143)
!2139 = distinct !DISubprogram(name: "__swab32p", scope: !2140, file: !2140, line: 184, type: !2141, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2140 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!20, !2143}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!2145 = !DILocation(line: 184, column: 53, scope: !2139, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 82, column: 9, scope: !2147, inlinedAt: !2153)
!2147 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !2148, file: !2148, line: 80, type: !2149, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2148 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!20, !2151}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2153 = distinct !DILocation(line: 149, column: 15, scope: !2135)
!2154 = !DILocalVariable(name: "p", arg: 1, scope: !2147, file: !2148, line: 80, type: !2151)
!2155 = !DILocation(line: 80, column: 59, scope: !2147, inlinedAt: !2153)
!2156 = !DILocalVariable(name: "np", arg: 1, scope: !2135, file: !3, line: 137, type: !7)
!2157 = !DILocation(line: 137, column: 58, scope: !2135)
!2158 = !DILocalVariable(name: "propname", arg: 2, scope: !2135, file: !3, line: 138, type: !13)
!2159 = !DILocation(line: 138, column: 24, scope: !2135)
!2160 = !DILocalVariable(name: "index", arg: 3, scope: !2135, file: !3, line: 139, type: !18)
!2161 = !DILocation(line: 139, column: 16, scope: !2135)
!2162 = !DILocalVariable(name: "out_value", arg: 4, scope: !2135, file: !3, line: 139, type: !584)
!2163 = !DILocation(line: 139, column: 28, scope: !2135)
!2164 = !DILocalVariable(name: "val", scope: !2135, file: !3, line: 141, type: !2165)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!2167 = !DILocation(line: 141, column: 13, scope: !2135)
!2168 = !DILocation(line: 141, column: 50, scope: !2135)
!2169 = !DILocation(line: 141, column: 54, scope: !2135)
!2170 = !DILocation(line: 142, column: 8, scope: !2135)
!2171 = !DILocation(line: 142, column: 14, scope: !2135)
!2172 = !DILocation(line: 142, column: 7, scope: !2135)
!2173 = !DILocation(line: 142, column: 19, scope: !2135)
!2174 = !DILocation(line: 142, column: 6, scope: !2135)
!2175 = !DILocation(line: 141, column: 19, scope: !2135)
!2176 = !DILocation(line: 146, column: 13, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 146, column: 6)
!2178 = !DILocation(line: 146, column: 6, scope: !2177)
!2179 = !DILocation(line: 146, column: 6, scope: !2135)
!2180 = !DILocation(line: 147, column: 18, scope: !2177)
!2181 = !DILocation(line: 147, column: 10, scope: !2177)
!2182 = !DILocation(line: 147, column: 3, scope: !2177)
!2183 = !DILocation(line: 149, column: 39, scope: !2135)
!2184 = !DILocation(line: 149, column: 46, scope: !2135)
!2185 = !DILocation(line: 149, column: 44, scope: !2135)
!2186 = !DILocation(line: 82, column: 28, scope: !2147, inlinedAt: !2153)
!2187 = !DILocation(line: 189, column: 9, scope: !2139, inlinedAt: !2146)
!2188 = !DILocation(line: 149, column: 3, scope: !2135)
!2189 = !DILocation(line: 149, column: 13, scope: !2135)
!2190 = !DILocation(line: 150, column: 2, scope: !2135)
!2191 = !DILocation(line: 151, column: 1, scope: !2135)
!2192 = distinct !DISubprogram(name: "of_find_property_value_of_size", scope: !3, file: !3, line: 102, type: !2193, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!197, !7, !13, !18, !18, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2196 = !DILocalVariable(name: "np", arg: 1, scope: !2192, file: !3, line: 102, type: !7)
!2197 = !DILocation(line: 102, column: 71, scope: !2192)
!2198 = !DILocalVariable(name: "propname", arg: 2, scope: !2192, file: !3, line: 103, type: !13)
!2199 = !DILocation(line: 103, column: 16, scope: !2192)
!2200 = !DILocalVariable(name: "min", arg: 3, scope: !2192, file: !3, line: 103, type: !18)
!2201 = !DILocation(line: 103, column: 30, scope: !2192)
!2202 = !DILocalVariable(name: "max", arg: 4, scope: !2192, file: !3, line: 103, type: !18)
!2203 = !DILocation(line: 103, column: 39, scope: !2192)
!2204 = !DILocalVariable(name: "len", arg: 5, scope: !2192, file: !3, line: 103, type: !2195)
!2205 = !DILocation(line: 103, column: 52, scope: !2192)
!2206 = !DILocalVariable(name: "prop", scope: !2192, file: !3, line: 105, type: !1998)
!2207 = !DILocation(line: 105, column: 19, scope: !2192)
!2208 = !DILocation(line: 105, column: 43, scope: !2192)
!2209 = !DILocation(line: 105, column: 47, scope: !2192)
!2210 = !DILocation(line: 105, column: 26, scope: !2192)
!2211 = !DILocation(line: 107, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 107, column: 6)
!2213 = !DILocation(line: 107, column: 6, scope: !2192)
!2214 = !DILocation(line: 108, column: 10, scope: !2212)
!2215 = !DILocation(line: 108, column: 3, scope: !2212)
!2216 = !DILocation(line: 109, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 109, column: 6)
!2218 = !DILocation(line: 109, column: 13, scope: !2217)
!2219 = !DILocation(line: 109, column: 6, scope: !2192)
!2220 = !DILocation(line: 110, column: 10, scope: !2217)
!2221 = !DILocation(line: 110, column: 3, scope: !2217)
!2222 = !DILocation(line: 111, column: 6, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 111, column: 6)
!2224 = !DILocation(line: 111, column: 12, scope: !2223)
!2225 = !DILocation(line: 111, column: 21, scope: !2223)
!2226 = !DILocation(line: 111, column: 19, scope: !2223)
!2227 = !DILocation(line: 111, column: 6, scope: !2192)
!2228 = !DILocation(line: 112, column: 10, scope: !2223)
!2229 = !DILocation(line: 112, column: 3, scope: !2223)
!2230 = !DILocation(line: 113, column: 6, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 113, column: 6)
!2232 = !DILocation(line: 113, column: 10, scope: !2231)
!2233 = !DILocation(line: 113, column: 13, scope: !2231)
!2234 = !DILocation(line: 113, column: 19, scope: !2231)
!2235 = !DILocation(line: 113, column: 28, scope: !2231)
!2236 = !DILocation(line: 113, column: 26, scope: !2231)
!2237 = !DILocation(line: 113, column: 6, scope: !2192)
!2238 = !DILocation(line: 114, column: 10, scope: !2231)
!2239 = !DILocation(line: 114, column: 3, scope: !2231)
!2240 = !DILocation(line: 116, column: 6, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 116, column: 6)
!2242 = !DILocation(line: 116, column: 6, scope: !2192)
!2243 = !DILocation(line: 117, column: 10, scope: !2241)
!2244 = !DILocation(line: 117, column: 16, scope: !2241)
!2245 = !DILocation(line: 117, column: 4, scope: !2241)
!2246 = !DILocation(line: 117, column: 8, scope: !2241)
!2247 = !DILocation(line: 117, column: 3, scope: !2241)
!2248 = !DILocation(line: 119, column: 9, scope: !2192)
!2249 = !DILocation(line: 119, column: 15, scope: !2192)
!2250 = !DILocation(line: 119, column: 2, scope: !2192)
!2251 = !DILocation(line: 120, column: 1, scope: !2192)
!2252 = distinct !DISubprogram(name: "IS_ERR", scope: !2253, file: !2253, line: 34, type: !2254, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2253 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!47, !56}
!2256 = !DILocalVariable(name: "ptr", arg: 1, scope: !2252, file: !2253, line: 34, type: !56)
!2257 = !DILocation(line: 34, column: 60, scope: !2252)
!2258 = !DILocation(line: 36, column: 9, scope: !2252)
!2259 = !DILocation(line: 36, column: 2, scope: !2252)
!2260 = distinct !DISubprogram(name: "PTR_ERR", scope: !2253, file: !2253, line: 29, type: !2261, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!158, !56}
!2263 = !DILocalVariable(name: "ptr", arg: 1, scope: !2260, file: !2253, line: 29, type: !56)
!2264 = !DILocation(line: 29, column: 61, scope: !2260)
!2265 = !DILocation(line: 31, column: 16, scope: !2260)
!2266 = !DILocation(line: 31, column: 9, scope: !2260)
!2267 = !DILocation(line: 31, column: 2, scope: !2260)
!2268 = distinct !DISubprogram(name: "of_property_read_u64_index", scope: !3, file: !3, line: 169, type: !2269, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!6, !7, !13, !18, !1868}
!2271 = !DILocalVariable(name: "p", arg: 1, scope: !2272, file: !2140, line: 197, type: !2275)
!2272 = distinct !DISubprogram(name: "__swab64p", scope: !2140, file: !2140, line: 197, type: !2273, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!244, !2275}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!2277 = !DILocation(line: 197, column: 53, scope: !2272, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 74, column: 9, scope: !2279, inlinedAt: !2284)
!2279 = distinct !DISubprogram(name: "__be64_to_cpup", scope: !2148, file: !2148, line: 72, type: !2280, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!244, !2282}
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2284 = distinct !DILocation(line: 180, column: 15, scope: !2268)
!2285 = !DILocalVariable(name: "p", arg: 1, scope: !2279, file: !2148, line: 72, type: !2282)
!2286 = !DILocation(line: 72, column: 59, scope: !2279, inlinedAt: !2284)
!2287 = !DILocalVariable(name: "np", arg: 1, scope: !2268, file: !3, line: 169, type: !7)
!2288 = !DILocation(line: 169, column: 58, scope: !2268)
!2289 = !DILocalVariable(name: "propname", arg: 2, scope: !2268, file: !3, line: 170, type: !13)
!2290 = !DILocation(line: 170, column: 24, scope: !2268)
!2291 = !DILocalVariable(name: "index", arg: 3, scope: !2268, file: !3, line: 171, type: !18)
!2292 = !DILocation(line: 171, column: 16, scope: !2268)
!2293 = !DILocalVariable(name: "out_value", arg: 4, scope: !2268, file: !3, line: 171, type: !1868)
!2294 = !DILocation(line: 171, column: 28, scope: !2268)
!2295 = !DILocalVariable(name: "val", scope: !2268, file: !3, line: 173, type: !2296)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!2298 = !DILocation(line: 173, column: 13, scope: !2268)
!2299 = !DILocation(line: 173, column: 50, scope: !2268)
!2300 = !DILocation(line: 173, column: 54, scope: !2268)
!2301 = !DILocation(line: 174, column: 8, scope: !2268)
!2302 = !DILocation(line: 174, column: 14, scope: !2268)
!2303 = !DILocation(line: 174, column: 7, scope: !2268)
!2304 = !DILocation(line: 174, column: 19, scope: !2268)
!2305 = !DILocation(line: 174, column: 6, scope: !2268)
!2306 = !DILocation(line: 173, column: 19, scope: !2268)
!2307 = !DILocation(line: 177, column: 13, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 177, column: 6)
!2309 = !DILocation(line: 177, column: 6, scope: !2308)
!2310 = !DILocation(line: 177, column: 6, scope: !2268)
!2311 = !DILocation(line: 178, column: 18, scope: !2308)
!2312 = !DILocation(line: 178, column: 10, scope: !2308)
!2313 = !DILocation(line: 178, column: 3, scope: !2308)
!2314 = !DILocation(line: 180, column: 39, scope: !2268)
!2315 = !DILocation(line: 180, column: 46, scope: !2268)
!2316 = !DILocation(line: 180, column: 44, scope: !2268)
!2317 = !DILocation(line: 74, column: 28, scope: !2279, inlinedAt: !2284)
!2318 = !DILocation(line: 202, column: 9, scope: !2272, inlinedAt: !2278)
!2319 = !DILocation(line: 180, column: 3, scope: !2268)
!2320 = !DILocation(line: 180, column: 13, scope: !2268)
!2321 = !DILocation(line: 181, column: 2, scope: !2268)
!2322 = !DILocation(line: 182, column: 1, scope: !2268)
!2323 = distinct !DISubprogram(name: "of_property_read_variable_u8_array", scope: !3, file: !3, line: 207, type: !2324, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!6, !7, !13, !2326, !170, !170}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!2327 = !DILocalVariable(name: "np", arg: 1, scope: !2323, file: !3, line: 207, type: !7)
!2328 = !DILocation(line: 207, column: 66, scope: !2323)
!2329 = !DILocalVariable(name: "propname", arg: 2, scope: !2323, file: !3, line: 208, type: !13)
!2330 = !DILocation(line: 208, column: 18, scope: !2323)
!2331 = !DILocalVariable(name: "out_values", arg: 3, scope: !2323, file: !3, line: 208, type: !2326)
!2332 = !DILocation(line: 208, column: 32, scope: !2323)
!2333 = !DILocalVariable(name: "sz_min", arg: 4, scope: !2323, file: !3, line: 209, type: !170)
!2334 = !DILocation(line: 209, column: 13, scope: !2323)
!2335 = !DILocalVariable(name: "sz_max", arg: 5, scope: !2323, file: !3, line: 209, type: !170)
!2336 = !DILocation(line: 209, column: 28, scope: !2323)
!2337 = !DILocalVariable(name: "sz", scope: !2323, file: !3, line: 211, type: !170)
!2338 = !DILocation(line: 211, column: 9, scope: !2323)
!2339 = !DILocalVariable(name: "count", scope: !2323, file: !3, line: 211, type: !170)
!2340 = !DILocation(line: 211, column: 13, scope: !2323)
!2341 = !DILocalVariable(name: "val", scope: !2323, file: !3, line: 212, type: !2342)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!2344 = !DILocation(line: 212, column: 12, scope: !2323)
!2345 = !DILocation(line: 212, column: 49, scope: !2323)
!2346 = !DILocation(line: 212, column: 53, scope: !2323)
!2347 = !DILocation(line: 213, column: 8, scope: !2323)
!2348 = !DILocation(line: 213, column: 15, scope: !2323)
!2349 = !DILocation(line: 213, column: 7, scope: !2323)
!2350 = !DILocation(line: 214, column: 8, scope: !2323)
!2351 = !DILocation(line: 214, column: 15, scope: !2323)
!2352 = !DILocation(line: 214, column: 7, scope: !2323)
!2353 = !DILocation(line: 212, column: 18, scope: !2323)
!2354 = !DILocation(line: 217, column: 13, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 217, column: 6)
!2356 = !DILocation(line: 217, column: 6, scope: !2355)
!2357 = !DILocation(line: 217, column: 6, scope: !2323)
!2358 = !DILocation(line: 218, column: 18, scope: !2355)
!2359 = !DILocation(line: 218, column: 10, scope: !2355)
!2360 = !DILocation(line: 218, column: 3, scope: !2355)
!2361 = !DILocation(line: 220, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 220, column: 6)
!2363 = !DILocation(line: 220, column: 6, scope: !2323)
!2364 = !DILocation(line: 221, column: 8, scope: !2362)
!2365 = !DILocation(line: 221, column: 6, scope: !2362)
!2366 = !DILocation(line: 221, column: 3, scope: !2362)
!2367 = !DILocation(line: 223, column: 6, scope: !2362)
!2368 = !DILocation(line: 225, column: 10, scope: !2323)
!2369 = !DILocation(line: 225, column: 8, scope: !2323)
!2370 = !DILocation(line: 226, column: 2, scope: !2323)
!2371 = !DILocation(line: 226, column: 14, scope: !2323)
!2372 = !DILocation(line: 227, column: 23, scope: !2323)
!2373 = !DILocation(line: 227, column: 19, scope: !2323)
!2374 = !DILocation(line: 227, column: 14, scope: !2323)
!2375 = !DILocation(line: 227, column: 17, scope: !2323)
!2376 = distinct !{!2376, !2370, !2372}
!2377 = !DILocation(line: 229, column: 9, scope: !2323)
!2378 = !DILocation(line: 229, column: 2, scope: !2323)
!2379 = !DILocation(line: 230, column: 1, scope: !2323)
!2380 = distinct !DISubprogram(name: "of_property_read_variable_u16_array", scope: !3, file: !3, line: 255, type: !2381, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!6, !7, !13, !2383, !170, !170}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2384 = !DILocalVariable(name: "p", arg: 1, scope: !2385, file: !2140, line: 171, type: !2388)
!2385 = distinct !DISubprogram(name: "__swab16p", scope: !2140, file: !2140, line: 171, type: !2386, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!354, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!2390 = !DILocation(line: 171, column: 53, scope: !2385, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 90, column: 9, scope: !2392, inlinedAt: !2398)
!2392 = distinct !DISubprogram(name: "__be16_to_cpup", scope: !2148, file: !2148, line: 88, type: !2393, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!354, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !1519, line: 30, baseType: !354)
!2398 = distinct !DILocation(line: 275, column: 19, scope: !2380)
!2399 = !DILocalVariable(name: "p", arg: 1, scope: !2392, file: !2148, line: 88, type: !2395)
!2400 = !DILocation(line: 88, column: 59, scope: !2392, inlinedAt: !2398)
!2401 = !DILocalVariable(name: "np", arg: 1, scope: !2380, file: !3, line: 255, type: !7)
!2402 = !DILocation(line: 255, column: 67, scope: !2380)
!2403 = !DILocalVariable(name: "propname", arg: 2, scope: !2380, file: !3, line: 256, type: !13)
!2404 = !DILocation(line: 256, column: 18, scope: !2380)
!2405 = !DILocalVariable(name: "out_values", arg: 3, scope: !2380, file: !3, line: 256, type: !2383)
!2406 = !DILocation(line: 256, column: 33, scope: !2380)
!2407 = !DILocalVariable(name: "sz_min", arg: 4, scope: !2380, file: !3, line: 257, type: !170)
!2408 = !DILocation(line: 257, column: 13, scope: !2380)
!2409 = !DILocalVariable(name: "sz_max", arg: 5, scope: !2380, file: !3, line: 257, type: !170)
!2410 = !DILocation(line: 257, column: 28, scope: !2380)
!2411 = !DILocalVariable(name: "sz", scope: !2380, file: !3, line: 259, type: !170)
!2412 = !DILocation(line: 259, column: 9, scope: !2380)
!2413 = !DILocalVariable(name: "count", scope: !2380, file: !3, line: 259, type: !170)
!2414 = !DILocation(line: 259, column: 13, scope: !2380)
!2415 = !DILocalVariable(name: "val", scope: !2380, file: !3, line: 260, type: !2395)
!2416 = !DILocation(line: 260, column: 16, scope: !2380)
!2417 = !DILocation(line: 260, column: 53, scope: !2380)
!2418 = !DILocation(line: 260, column: 57, scope: !2380)
!2419 = !DILocation(line: 261, column: 8, scope: !2380)
!2420 = !DILocation(line: 261, column: 15, scope: !2380)
!2421 = !DILocation(line: 261, column: 7, scope: !2380)
!2422 = !DILocation(line: 262, column: 8, scope: !2380)
!2423 = !DILocation(line: 262, column: 15, scope: !2380)
!2424 = !DILocation(line: 262, column: 7, scope: !2380)
!2425 = !DILocation(line: 260, column: 22, scope: !2380)
!2426 = !DILocation(line: 265, column: 13, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 265, column: 6)
!2428 = !DILocation(line: 265, column: 6, scope: !2427)
!2429 = !DILocation(line: 265, column: 6, scope: !2380)
!2430 = !DILocation(line: 266, column: 18, scope: !2427)
!2431 = !DILocation(line: 266, column: 10, scope: !2427)
!2432 = !DILocation(line: 266, column: 3, scope: !2427)
!2433 = !DILocation(line: 268, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 268, column: 6)
!2435 = !DILocation(line: 268, column: 6, scope: !2380)
!2436 = !DILocation(line: 269, column: 8, scope: !2434)
!2437 = !DILocation(line: 269, column: 6, scope: !2434)
!2438 = !DILocation(line: 269, column: 3, scope: !2434)
!2439 = !DILocation(line: 271, column: 6, scope: !2434)
!2440 = !DILocation(line: 273, column: 10, scope: !2380)
!2441 = !DILocation(line: 273, column: 8, scope: !2380)
!2442 = !DILocation(line: 274, column: 2, scope: !2380)
!2443 = !DILocation(line: 274, column: 14, scope: !2380)
!2444 = !DILocation(line: 275, column: 35, scope: !2380)
!2445 = !DILocation(line: 90, column: 28, scope: !2392, inlinedAt: !2398)
!2446 = !DILocation(line: 176, column: 9, scope: !2385, inlinedAt: !2391)
!2447 = !DILocation(line: 275, column: 14, scope: !2380)
!2448 = !DILocation(line: 275, column: 17, scope: !2380)
!2449 = distinct !{!2449, !2442, !2450}
!2450 = !DILocation(line: 275, column: 37, scope: !2380)
!2451 = !DILocation(line: 277, column: 9, scope: !2380)
!2452 = !DILocation(line: 277, column: 2, scope: !2380)
!2453 = !DILocation(line: 278, column: 1, scope: !2380)
!2454 = distinct !DISubprogram(name: "of_property_read_variable_u32_array", scope: !3, file: !3, line: 300, type: !2455, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!6, !7, !13, !584, !170, !170}
!2457 = !DILocation(line: 184, column: 53, scope: !2139, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 82, column: 9, scope: !2147, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 320, column: 19, scope: !2454)
!2460 = !DILocation(line: 80, column: 59, scope: !2147, inlinedAt: !2459)
!2461 = !DILocalVariable(name: "np", arg: 1, scope: !2454, file: !3, line: 300, type: !7)
!2462 = !DILocation(line: 300, column: 67, scope: !2454)
!2463 = !DILocalVariable(name: "propname", arg: 2, scope: !2454, file: !3, line: 301, type: !13)
!2464 = !DILocation(line: 301, column: 23, scope: !2454)
!2465 = !DILocalVariable(name: "out_values", arg: 3, scope: !2454, file: !3, line: 301, type: !584)
!2466 = !DILocation(line: 301, column: 38, scope: !2454)
!2467 = !DILocalVariable(name: "sz_min", arg: 4, scope: !2454, file: !3, line: 302, type: !170)
!2468 = !DILocation(line: 302, column: 18, scope: !2454)
!2469 = !DILocalVariable(name: "sz_max", arg: 5, scope: !2454, file: !3, line: 302, type: !170)
!2470 = !DILocation(line: 302, column: 33, scope: !2454)
!2471 = !DILocalVariable(name: "sz", scope: !2454, file: !3, line: 304, type: !170)
!2472 = !DILocation(line: 304, column: 9, scope: !2454)
!2473 = !DILocalVariable(name: "count", scope: !2454, file: !3, line: 304, type: !170)
!2474 = !DILocation(line: 304, column: 13, scope: !2454)
!2475 = !DILocalVariable(name: "val", scope: !2454, file: !3, line: 305, type: !2151)
!2476 = !DILocation(line: 305, column: 16, scope: !2454)
!2477 = !DILocation(line: 305, column: 53, scope: !2454)
!2478 = !DILocation(line: 305, column: 57, scope: !2454)
!2479 = !DILocation(line: 306, column: 8, scope: !2454)
!2480 = !DILocation(line: 306, column: 15, scope: !2454)
!2481 = !DILocation(line: 306, column: 7, scope: !2454)
!2482 = !DILocation(line: 307, column: 8, scope: !2454)
!2483 = !DILocation(line: 307, column: 15, scope: !2454)
!2484 = !DILocation(line: 307, column: 7, scope: !2454)
!2485 = !DILocation(line: 305, column: 22, scope: !2454)
!2486 = !DILocation(line: 310, column: 13, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 310, column: 6)
!2488 = !DILocation(line: 310, column: 6, scope: !2487)
!2489 = !DILocation(line: 310, column: 6, scope: !2454)
!2490 = !DILocation(line: 311, column: 18, scope: !2487)
!2491 = !DILocation(line: 311, column: 10, scope: !2487)
!2492 = !DILocation(line: 311, column: 3, scope: !2487)
!2493 = !DILocation(line: 313, column: 7, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 313, column: 6)
!2495 = !DILocation(line: 313, column: 6, scope: !2454)
!2496 = !DILocation(line: 314, column: 8, scope: !2494)
!2497 = !DILocation(line: 314, column: 6, scope: !2494)
!2498 = !DILocation(line: 314, column: 3, scope: !2494)
!2499 = !DILocation(line: 316, column: 6, scope: !2494)
!2500 = !DILocation(line: 318, column: 10, scope: !2454)
!2501 = !DILocation(line: 318, column: 8, scope: !2454)
!2502 = !DILocation(line: 319, column: 2, scope: !2454)
!2503 = !DILocation(line: 319, column: 14, scope: !2454)
!2504 = !DILocation(line: 320, column: 35, scope: !2454)
!2505 = !DILocation(line: 82, column: 28, scope: !2147, inlinedAt: !2459)
!2506 = !DILocation(line: 189, column: 9, scope: !2139, inlinedAt: !2458)
!2507 = !DILocation(line: 320, column: 14, scope: !2454)
!2508 = !DILocation(line: 320, column: 17, scope: !2454)
!2509 = distinct !{!2509, !2502, !2510}
!2510 = !DILocation(line: 320, column: 37, scope: !2454)
!2511 = !DILocation(line: 322, column: 9, scope: !2454)
!2512 = !DILocation(line: 322, column: 2, scope: !2454)
!2513 = !DILocation(line: 323, column: 1, scope: !2454)
!2514 = distinct !DISubprogram(name: "of_property_read_u64", scope: !3, file: !3, line: 339, type: !2515, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!6, !7, !13, !1868}
!2517 = !DILocalVariable(name: "np", arg: 1, scope: !2514, file: !3, line: 339, type: !7)
!2518 = !DILocation(line: 339, column: 52, scope: !2514)
!2519 = !DILocalVariable(name: "propname", arg: 2, scope: !2514, file: !3, line: 339, type: !13)
!2520 = !DILocation(line: 339, column: 68, scope: !2514)
!2521 = !DILocalVariable(name: "out_value", arg: 3, scope: !2514, file: !3, line: 340, type: !1868)
!2522 = !DILocation(line: 340, column: 10, scope: !2514)
!2523 = !DILocalVariable(name: "val", scope: !2514, file: !3, line: 342, type: !2151)
!2524 = !DILocation(line: 342, column: 16, scope: !2514)
!2525 = !DILocation(line: 342, column: 53, scope: !2514)
!2526 = !DILocation(line: 342, column: 57, scope: !2514)
!2527 = !DILocation(line: 342, column: 22, scope: !2514)
!2528 = !DILocation(line: 347, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 347, column: 6)
!2530 = !DILocation(line: 347, column: 6, scope: !2529)
!2531 = !DILocation(line: 347, column: 6, scope: !2514)
!2532 = !DILocation(line: 348, column: 18, scope: !2529)
!2533 = !DILocation(line: 348, column: 10, scope: !2529)
!2534 = !DILocation(line: 348, column: 3, scope: !2529)
!2535 = !DILocation(line: 350, column: 30, scope: !2514)
!2536 = !DILocation(line: 350, column: 15, scope: !2514)
!2537 = !DILocation(line: 350, column: 3, scope: !2514)
!2538 = !DILocation(line: 350, column: 13, scope: !2514)
!2539 = !DILocation(line: 351, column: 2, scope: !2514)
!2540 = !DILocation(line: 352, column: 1, scope: !2514)
!2541 = distinct !DISubprogram(name: "of_read_number", scope: !10, file: !10, line: 234, type: !2542, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!243, !2151, !6}
!2544 = !DILocalVariable(name: "cell", arg: 1, scope: !2541, file: !10, line: 234, type: !2151)
!2545 = !DILocation(line: 234, column: 48, scope: !2541)
!2546 = !DILocalVariable(name: "size", arg: 2, scope: !2541, file: !10, line: 234, type: !6)
!2547 = !DILocation(line: 234, column: 58, scope: !2541)
!2548 = !DILocalVariable(name: "r", scope: !2541, file: !10, line: 236, type: !243)
!2549 = !DILocation(line: 236, column: 6, scope: !2541)
!2550 = !DILocation(line: 237, column: 2, scope: !2541)
!2551 = !DILocation(line: 237, column: 13, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !10, line: 237, column: 2)
!2553 = distinct !DILexicalBlock(scope: !2541, file: !10, line: 237, column: 2)
!2554 = !DILocation(line: 237, column: 2, scope: !2553)
!2555 = !DILocation(line: 238, column: 8, scope: !2552)
!2556 = !DILocation(line: 238, column: 10, scope: !2552)
!2557 = !DILocation(line: 238, column: 19, scope: !2552)
!2558 = !DILocation(line: 238, column: 17, scope: !2552)
!2559 = !DILocation(line: 238, column: 5, scope: !2552)
!2560 = !DILocation(line: 238, column: 3, scope: !2552)
!2561 = !DILocation(line: 237, column: 21, scope: !2552)
!2562 = !DILocation(line: 237, column: 2, scope: !2552)
!2563 = distinct !{!2563, !2554, !2564}
!2564 = !DILocation(line: 238, column: 19, scope: !2553)
!2565 = !DILocation(line: 239, column: 9, scope: !2541)
!2566 = !DILocation(line: 239, column: 2, scope: !2541)
!2567 = distinct !DISubprogram(name: "of_property_read_variable_u64_array", scope: !3, file: !3, line: 374, type: !2568, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!6, !7, !13, !1868, !170, !170}
!2570 = !DILocalVariable(name: "np", arg: 1, scope: !2567, file: !3, line: 374, type: !7)
!2571 = !DILocation(line: 374, column: 67, scope: !2567)
!2572 = !DILocalVariable(name: "propname", arg: 2, scope: !2567, file: !3, line: 375, type: !13)
!2573 = !DILocation(line: 375, column: 23, scope: !2567)
!2574 = !DILocalVariable(name: "out_values", arg: 3, scope: !2567, file: !3, line: 375, type: !1868)
!2575 = !DILocation(line: 375, column: 38, scope: !2567)
!2576 = !DILocalVariable(name: "sz_min", arg: 4, scope: !2567, file: !3, line: 376, type: !170)
!2577 = !DILocation(line: 376, column: 18, scope: !2567)
!2578 = !DILocalVariable(name: "sz_max", arg: 5, scope: !2567, file: !3, line: 376, type: !170)
!2579 = !DILocation(line: 376, column: 33, scope: !2567)
!2580 = !DILocalVariable(name: "sz", scope: !2567, file: !3, line: 378, type: !170)
!2581 = !DILocation(line: 378, column: 9, scope: !2567)
!2582 = !DILocalVariable(name: "count", scope: !2567, file: !3, line: 378, type: !170)
!2583 = !DILocation(line: 378, column: 13, scope: !2567)
!2584 = !DILocalVariable(name: "val", scope: !2567, file: !3, line: 379, type: !2151)
!2585 = !DILocation(line: 379, column: 16, scope: !2567)
!2586 = !DILocation(line: 379, column: 53, scope: !2567)
!2587 = !DILocation(line: 379, column: 57, scope: !2567)
!2588 = !DILocation(line: 380, column: 8, scope: !2567)
!2589 = !DILocation(line: 380, column: 15, scope: !2567)
!2590 = !DILocation(line: 380, column: 7, scope: !2567)
!2591 = !DILocation(line: 381, column: 8, scope: !2567)
!2592 = !DILocation(line: 381, column: 15, scope: !2567)
!2593 = !DILocation(line: 381, column: 7, scope: !2567)
!2594 = !DILocation(line: 379, column: 22, scope: !2567)
!2595 = !DILocation(line: 384, column: 13, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 384, column: 6)
!2597 = !DILocation(line: 384, column: 6, scope: !2596)
!2598 = !DILocation(line: 384, column: 6, scope: !2567)
!2599 = !DILocation(line: 385, column: 18, scope: !2596)
!2600 = !DILocation(line: 385, column: 10, scope: !2596)
!2601 = !DILocation(line: 385, column: 3, scope: !2596)
!2602 = !DILocation(line: 387, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 387, column: 6)
!2604 = !DILocation(line: 387, column: 6, scope: !2567)
!2605 = !DILocation(line: 388, column: 8, scope: !2603)
!2606 = !DILocation(line: 388, column: 6, scope: !2603)
!2607 = !DILocation(line: 388, column: 3, scope: !2603)
!2608 = !DILocation(line: 390, column: 6, scope: !2603)
!2609 = !DILocation(line: 392, column: 10, scope: !2567)
!2610 = !DILocation(line: 392, column: 8, scope: !2567)
!2611 = !DILocation(line: 393, column: 2, scope: !2567)
!2612 = !DILocation(line: 393, column: 14, scope: !2567)
!2613 = !DILocation(line: 394, column: 34, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 393, column: 18)
!2615 = !DILocation(line: 394, column: 19, scope: !2614)
!2616 = !DILocation(line: 394, column: 14, scope: !2614)
!2617 = !DILocation(line: 394, column: 17, scope: !2614)
!2618 = !DILocation(line: 395, column: 7, scope: !2614)
!2619 = distinct !{!2619, !2611, !2620}
!2620 = !DILocation(line: 396, column: 2, scope: !2567)
!2621 = !DILocation(line: 398, column: 9, scope: !2567)
!2622 = !DILocation(line: 398, column: 2, scope: !2567)
!2623 = !DILocation(line: 399, column: 1, scope: !2567)
!2624 = distinct !DISubprogram(name: "of_property_read_string", scope: !3, file: !3, line: 417, type: !2625, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!6, !7, !13, !1950}
!2627 = !DILocalVariable(name: "np", arg: 1, scope: !2624, file: !3, line: 417, type: !7)
!2628 = !DILocation(line: 417, column: 55, scope: !2624)
!2629 = !DILocalVariable(name: "propname", arg: 2, scope: !2624, file: !3, line: 417, type: !13)
!2630 = !DILocation(line: 417, column: 71, scope: !2624)
!2631 = !DILocalVariable(name: "out_string", arg: 3, scope: !2624, file: !3, line: 418, type: !1950)
!2632 = !DILocation(line: 418, column: 18, scope: !2624)
!2633 = !DILocalVariable(name: "prop", scope: !2624, file: !3, line: 420, type: !2634)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!2636 = !DILocation(line: 420, column: 25, scope: !2624)
!2637 = !DILocation(line: 420, column: 49, scope: !2624)
!2638 = !DILocation(line: 420, column: 53, scope: !2624)
!2639 = !DILocation(line: 420, column: 32, scope: !2624)
!2640 = !DILocation(line: 421, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 421, column: 6)
!2642 = !DILocation(line: 421, column: 6, scope: !2624)
!2643 = !DILocation(line: 422, column: 3, scope: !2641)
!2644 = !DILocation(line: 423, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 423, column: 6)
!2646 = !DILocation(line: 423, column: 13, scope: !2645)
!2647 = !DILocation(line: 423, column: 6, scope: !2624)
!2648 = !DILocation(line: 424, column: 3, scope: !2645)
!2649 = !DILocation(line: 425, column: 14, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 425, column: 6)
!2651 = !DILocation(line: 425, column: 20, scope: !2650)
!2652 = !DILocation(line: 425, column: 27, scope: !2650)
!2653 = !DILocation(line: 425, column: 33, scope: !2650)
!2654 = !DILocation(line: 425, column: 6, scope: !2650)
!2655 = !DILocation(line: 425, column: 44, scope: !2650)
!2656 = !DILocation(line: 425, column: 50, scope: !2650)
!2657 = !DILocation(line: 425, column: 41, scope: !2650)
!2658 = !DILocation(line: 425, column: 6, scope: !2624)
!2659 = !DILocation(line: 426, column: 3, scope: !2650)
!2660 = !DILocation(line: 427, column: 16, scope: !2624)
!2661 = !DILocation(line: 427, column: 22, scope: !2624)
!2662 = !DILocation(line: 427, column: 3, scope: !2624)
!2663 = !DILocation(line: 427, column: 14, scope: !2624)
!2664 = !DILocation(line: 428, column: 2, scope: !2624)
!2665 = !DILocation(line: 429, column: 1, scope: !2624)
!2666 = distinct !DISubprogram(name: "of_property_match_string", scope: !3, file: !3, line: 441, type: !2667, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!6, !7, !13, !13}
!2669 = !DILocalVariable(name: "np", arg: 1, scope: !2666, file: !3, line: 441, type: !7)
!2670 = !DILocation(line: 441, column: 56, scope: !2666)
!2671 = !DILocalVariable(name: "propname", arg: 2, scope: !2666, file: !3, line: 441, type: !13)
!2672 = !DILocation(line: 441, column: 72, scope: !2666)
!2673 = !DILocalVariable(name: "string", arg: 3, scope: !2666, file: !3, line: 442, type: !13)
!2674 = !DILocation(line: 442, column: 21, scope: !2666)
!2675 = !DILocalVariable(name: "prop", scope: !2666, file: !3, line: 444, type: !2634)
!2676 = !DILocation(line: 444, column: 25, scope: !2666)
!2677 = !DILocation(line: 444, column: 49, scope: !2666)
!2678 = !DILocation(line: 444, column: 53, scope: !2666)
!2679 = !DILocation(line: 444, column: 32, scope: !2666)
!2680 = !DILocalVariable(name: "l", scope: !2666, file: !3, line: 445, type: !170)
!2681 = !DILocation(line: 445, column: 9, scope: !2666)
!2682 = !DILocalVariable(name: "i", scope: !2666, file: !3, line: 446, type: !6)
!2683 = !DILocation(line: 446, column: 6, scope: !2666)
!2684 = !DILocalVariable(name: "p", scope: !2666, file: !3, line: 447, type: !13)
!2685 = !DILocation(line: 447, column: 14, scope: !2666)
!2686 = !DILocalVariable(name: "end", scope: !2666, file: !3, line: 447, type: !13)
!2687 = !DILocation(line: 447, column: 18, scope: !2666)
!2688 = !DILocation(line: 449, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 449, column: 6)
!2690 = !DILocation(line: 449, column: 6, scope: !2666)
!2691 = !DILocation(line: 450, column: 3, scope: !2689)
!2692 = !DILocation(line: 451, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 451, column: 6)
!2694 = !DILocation(line: 451, column: 13, scope: !2693)
!2695 = !DILocation(line: 451, column: 6, scope: !2666)
!2696 = !DILocation(line: 452, column: 3, scope: !2693)
!2697 = !DILocation(line: 454, column: 6, scope: !2666)
!2698 = !DILocation(line: 454, column: 12, scope: !2666)
!2699 = !DILocation(line: 454, column: 4, scope: !2666)
!2700 = !DILocation(line: 455, column: 8, scope: !2666)
!2701 = !DILocation(line: 455, column: 12, scope: !2666)
!2702 = !DILocation(line: 455, column: 18, scope: !2666)
!2703 = !DILocation(line: 455, column: 10, scope: !2666)
!2704 = !DILocation(line: 455, column: 6, scope: !2666)
!2705 = !DILocation(line: 457, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 457, column: 2)
!2707 = !DILocation(line: 457, column: 7, scope: !2706)
!2708 = !DILocation(line: 457, column: 14, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 457, column: 2)
!2710 = !DILocation(line: 457, column: 18, scope: !2709)
!2711 = !DILocation(line: 457, column: 16, scope: !2709)
!2712 = !DILocation(line: 457, column: 2, scope: !2706)
!2713 = !DILocation(line: 458, column: 15, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 457, column: 36)
!2715 = !DILocation(line: 458, column: 18, scope: !2714)
!2716 = !DILocation(line: 458, column: 24, scope: !2714)
!2717 = !DILocation(line: 458, column: 22, scope: !2714)
!2718 = !DILocation(line: 458, column: 7, scope: !2714)
!2719 = !DILocation(line: 458, column: 27, scope: !2714)
!2720 = !DILocation(line: 458, column: 5, scope: !2714)
!2721 = !DILocation(line: 459, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 459, column: 7)
!2723 = !DILocation(line: 459, column: 11, scope: !2722)
!2724 = !DILocation(line: 459, column: 9, scope: !2722)
!2725 = !DILocation(line: 459, column: 15, scope: !2722)
!2726 = !DILocation(line: 459, column: 13, scope: !2722)
!2727 = !DILocation(line: 459, column: 7, scope: !2714)
!2728 = !DILocation(line: 460, column: 4, scope: !2722)
!2729 = !DILocation(line: 461, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 461, column: 3)
!2731 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 461, column: 3)
!2732 = !DILocation(line: 461, column: 3, scope: !2731)
!2733 = !DILocation(line: 462, column: 14, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 462, column: 7)
!2735 = !DILocation(line: 462, column: 22, scope: !2734)
!2736 = !DILocation(line: 462, column: 7, scope: !2734)
!2737 = !DILocation(line: 462, column: 25, scope: !2734)
!2738 = !DILocation(line: 462, column: 7, scope: !2714)
!2739 = !DILocation(line: 463, column: 11, scope: !2734)
!2740 = !DILocation(line: 463, column: 4, scope: !2734)
!2741 = !DILocation(line: 464, column: 2, scope: !2714)
!2742 = !DILocation(line: 457, column: 24, scope: !2709)
!2743 = !DILocation(line: 457, column: 33, scope: !2709)
!2744 = !DILocation(line: 457, column: 30, scope: !2709)
!2745 = !DILocation(line: 457, column: 2, scope: !2709)
!2746 = distinct !{!2746, !2712, !2747}
!2747 = !DILocation(line: 464, column: 2, scope: !2706)
!2748 = !DILocation(line: 465, column: 2, scope: !2666)
!2749 = !DILocation(line: 466, column: 1, scope: !2666)
!2750 = distinct !DISubprogram(name: "of_property_read_string_helper", scope: !3, file: !3, line: 480, type: !2751, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!6, !7, !13, !1950, !170, !6}
!2753 = !DILocalVariable(name: "np", arg: 1, scope: !2750, file: !3, line: 480, type: !7)
!2754 = !DILocation(line: 480, column: 62, scope: !2750)
!2755 = !DILocalVariable(name: "propname", arg: 2, scope: !2750, file: !3, line: 481, type: !13)
!2756 = !DILocation(line: 481, column: 20, scope: !2750)
!2757 = !DILocalVariable(name: "out_strs", arg: 3, scope: !2750, file: !3, line: 481, type: !1950)
!2758 = !DILocation(line: 481, column: 43, scope: !2750)
!2759 = !DILocalVariable(name: "sz", arg: 4, scope: !2750, file: !3, line: 482, type: !170)
!2760 = !DILocation(line: 482, column: 15, scope: !2750)
!2761 = !DILocalVariable(name: "skip", arg: 5, scope: !2750, file: !3, line: 482, type: !6)
!2762 = !DILocation(line: 482, column: 23, scope: !2750)
!2763 = !DILocalVariable(name: "prop", scope: !2750, file: !3, line: 484, type: !2634)
!2764 = !DILocation(line: 484, column: 25, scope: !2750)
!2765 = !DILocation(line: 484, column: 49, scope: !2750)
!2766 = !DILocation(line: 484, column: 53, scope: !2750)
!2767 = !DILocation(line: 484, column: 32, scope: !2750)
!2768 = !DILocalVariable(name: "l", scope: !2750, file: !3, line: 485, type: !6)
!2769 = !DILocation(line: 485, column: 6, scope: !2750)
!2770 = !DILocalVariable(name: "i", scope: !2750, file: !3, line: 485, type: !6)
!2771 = !DILocation(line: 485, column: 13, scope: !2750)
!2772 = !DILocalVariable(name: "p", scope: !2750, file: !3, line: 486, type: !13)
!2773 = !DILocation(line: 486, column: 14, scope: !2750)
!2774 = !DILocalVariable(name: "end", scope: !2750, file: !3, line: 486, type: !13)
!2775 = !DILocation(line: 486, column: 18, scope: !2750)
!2776 = !DILocation(line: 488, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 488, column: 6)
!2778 = !DILocation(line: 488, column: 6, scope: !2750)
!2779 = !DILocation(line: 489, column: 3, scope: !2777)
!2780 = !DILocation(line: 490, column: 7, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 490, column: 6)
!2782 = !DILocation(line: 490, column: 13, scope: !2781)
!2783 = !DILocation(line: 490, column: 6, scope: !2750)
!2784 = !DILocation(line: 491, column: 3, scope: !2781)
!2785 = !DILocation(line: 492, column: 6, scope: !2750)
!2786 = !DILocation(line: 492, column: 12, scope: !2750)
!2787 = !DILocation(line: 492, column: 4, scope: !2750)
!2788 = !DILocation(line: 493, column: 8, scope: !2750)
!2789 = !DILocation(line: 493, column: 12, scope: !2750)
!2790 = !DILocation(line: 493, column: 18, scope: !2750)
!2791 = !DILocation(line: 493, column: 10, scope: !2750)
!2792 = !DILocation(line: 493, column: 6, scope: !2750)
!2793 = !DILocation(line: 495, column: 9, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 495, column: 2)
!2795 = !DILocation(line: 495, column: 7, scope: !2794)
!2796 = !DILocation(line: 495, column: 14, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 495, column: 2)
!2798 = !DILocation(line: 495, column: 18, scope: !2797)
!2799 = !DILocation(line: 495, column: 16, scope: !2797)
!2800 = !DILocation(line: 495, column: 22, scope: !2797)
!2801 = !DILocation(line: 495, column: 27, scope: !2797)
!2802 = !DILocation(line: 495, column: 36, scope: !2797)
!2803 = !DILocation(line: 495, column: 39, scope: !2797)
!2804 = !DILocation(line: 495, column: 43, scope: !2797)
!2805 = !DILocation(line: 495, column: 50, scope: !2797)
!2806 = !DILocation(line: 495, column: 48, scope: !2797)
!2807 = !DILocation(line: 495, column: 41, scope: !2797)
!2808 = !DILocation(line: 0, scope: !2797)
!2809 = !DILocation(line: 495, column: 2, scope: !2794)
!2810 = !DILocation(line: 496, column: 15, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 495, column: 68)
!2812 = !DILocation(line: 496, column: 18, scope: !2811)
!2813 = !DILocation(line: 496, column: 24, scope: !2811)
!2814 = !DILocation(line: 496, column: 22, scope: !2811)
!2815 = !DILocation(line: 496, column: 7, scope: !2811)
!2816 = !DILocation(line: 496, column: 27, scope: !2811)
!2817 = !DILocation(line: 496, column: 5, scope: !2811)
!2818 = !DILocation(line: 497, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 497, column: 7)
!2820 = !DILocation(line: 497, column: 11, scope: !2819)
!2821 = !DILocation(line: 497, column: 9, scope: !2819)
!2822 = !DILocation(line: 497, column: 15, scope: !2819)
!2823 = !DILocation(line: 497, column: 13, scope: !2819)
!2824 = !DILocation(line: 497, column: 7, scope: !2811)
!2825 = !DILocation(line: 498, column: 4, scope: !2819)
!2826 = !DILocation(line: 499, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 499, column: 7)
!2828 = !DILocation(line: 499, column: 16, scope: !2827)
!2829 = !DILocation(line: 499, column: 19, scope: !2827)
!2830 = !DILocation(line: 499, column: 24, scope: !2827)
!2831 = !DILocation(line: 499, column: 21, scope: !2827)
!2832 = !DILocation(line: 499, column: 7, scope: !2811)
!2833 = !DILocation(line: 500, column: 18, scope: !2827)
!2834 = !DILocation(line: 500, column: 13, scope: !2827)
!2835 = !DILocation(line: 500, column: 16, scope: !2827)
!2836 = !DILocation(line: 500, column: 4, scope: !2827)
!2837 = !DILocation(line: 501, column: 2, scope: !2811)
!2838 = !DILocation(line: 495, column: 56, scope: !2797)
!2839 = !DILocation(line: 495, column: 65, scope: !2797)
!2840 = !DILocation(line: 495, column: 62, scope: !2797)
!2841 = !DILocation(line: 495, column: 2, scope: !2797)
!2842 = distinct !{!2842, !2809, !2843}
!2843 = !DILocation(line: 501, column: 2, scope: !2794)
!2844 = !DILocation(line: 502, column: 7, scope: !2750)
!2845 = !DILocation(line: 502, column: 4, scope: !2750)
!2846 = !DILocation(line: 503, column: 9, scope: !2750)
!2847 = !DILocation(line: 503, column: 11, scope: !2750)
!2848 = !DILocation(line: 503, column: 29, scope: !2750)
!2849 = !DILocation(line: 503, column: 2, scope: !2750)
!2850 = !DILocation(line: 504, column: 1, scope: !2750)
!2851 = distinct !DISubprogram(name: "of_prop_next_u32", scope: !3, file: !3, line: 507, type: !2852, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!2151, !1998, !2151, !584}
!2854 = !DILocation(line: 184, column: 53, scope: !2139, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 82, column: 9, scope: !2147, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 525, column: 8, scope: !2851)
!2857 = !DILocation(line: 80, column: 59, scope: !2147, inlinedAt: !2856)
!2858 = !DILocalVariable(name: "prop", arg: 1, scope: !2851, file: !3, line: 507, type: !1998)
!2859 = !DILocation(line: 507, column: 49, scope: !2851)
!2860 = !DILocalVariable(name: "cur", arg: 2, scope: !2851, file: !3, line: 507, type: !2151)
!2861 = !DILocation(line: 507, column: 69, scope: !2851)
!2862 = !DILocalVariable(name: "pu", arg: 3, scope: !2851, file: !3, line: 508, type: !584)
!2863 = !DILocation(line: 508, column: 16, scope: !2851)
!2864 = !DILocalVariable(name: "curv", scope: !2851, file: !3, line: 510, type: !56)
!2865 = !DILocation(line: 510, column: 14, scope: !2851)
!2866 = !DILocation(line: 510, column: 21, scope: !2851)
!2867 = !DILocation(line: 512, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 512, column: 6)
!2869 = !DILocation(line: 512, column: 6, scope: !2851)
!2870 = !DILocation(line: 513, column: 3, scope: !2868)
!2871 = !DILocation(line: 515, column: 7, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 515, column: 6)
!2873 = !DILocation(line: 515, column: 6, scope: !2851)
!2874 = !DILocation(line: 516, column: 10, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 515, column: 12)
!2876 = !DILocation(line: 516, column: 16, scope: !2875)
!2877 = !DILocation(line: 516, column: 8, scope: !2875)
!2878 = !DILocation(line: 517, column: 3, scope: !2875)
!2879 = !DILocation(line: 520, column: 7, scope: !2851)
!2880 = !DILocation(line: 521, column: 6, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 521, column: 6)
!2882 = !DILocation(line: 521, column: 14, scope: !2881)
!2883 = !DILocation(line: 521, column: 20, scope: !2881)
!2884 = !DILocation(line: 521, column: 28, scope: !2881)
!2885 = !DILocation(line: 521, column: 34, scope: !2881)
!2886 = !DILocation(line: 521, column: 26, scope: !2881)
!2887 = !DILocation(line: 521, column: 11, scope: !2881)
!2888 = !DILocation(line: 521, column: 6, scope: !2851)
!2889 = !DILocation(line: 522, column: 3, scope: !2881)
!2890 = !DILabel(scope: !2851, name: "out_val", file: !3, line: 524)
!2891 = !DILocation(line: 524, column: 1, scope: !2851)
!2892 = !DILocation(line: 525, column: 21, scope: !2851)
!2893 = !DILocation(line: 82, column: 28, scope: !2147, inlinedAt: !2856)
!2894 = !DILocation(line: 189, column: 9, scope: !2139, inlinedAt: !2855)
!2895 = !DILocation(line: 525, column: 3, scope: !2851)
!2896 = !DILocation(line: 525, column: 6, scope: !2851)
!2897 = !DILocation(line: 526, column: 9, scope: !2851)
!2898 = !DILocation(line: 526, column: 2, scope: !2851)
!2899 = !DILocation(line: 527, column: 1, scope: !2851)
!2900 = distinct !DISubprogram(name: "of_prop_next_string", scope: !3, file: !3, line: 530, type: !2901, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!13, !1998, !13}
!2903 = !DILocalVariable(name: "prop", arg: 1, scope: !2900, file: !3, line: 530, type: !1998)
!2904 = !DILocation(line: 530, column: 50, scope: !2900)
!2905 = !DILocalVariable(name: "cur", arg: 2, scope: !2900, file: !3, line: 530, type: !13)
!2906 = !DILocation(line: 530, column: 68, scope: !2900)
!2907 = !DILocalVariable(name: "curv", scope: !2900, file: !3, line: 532, type: !56)
!2908 = !DILocation(line: 532, column: 14, scope: !2900)
!2909 = !DILocation(line: 532, column: 21, scope: !2900)
!2910 = !DILocation(line: 534, column: 7, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 534, column: 6)
!2912 = !DILocation(line: 534, column: 6, scope: !2900)
!2913 = !DILocation(line: 535, column: 3, scope: !2911)
!2914 = !DILocation(line: 537, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 537, column: 6)
!2916 = !DILocation(line: 537, column: 6, scope: !2900)
!2917 = !DILocation(line: 538, column: 10, scope: !2915)
!2918 = !DILocation(line: 538, column: 16, scope: !2915)
!2919 = !DILocation(line: 538, column: 3, scope: !2915)
!2920 = !DILocation(line: 540, column: 17, scope: !2900)
!2921 = !DILocation(line: 540, column: 10, scope: !2900)
!2922 = !DILocation(line: 540, column: 22, scope: !2900)
!2923 = !DILocation(line: 540, column: 7, scope: !2900)
!2924 = !DILocation(line: 541, column: 6, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 541, column: 6)
!2926 = !DILocation(line: 541, column: 14, scope: !2925)
!2927 = !DILocation(line: 541, column: 20, scope: !2925)
!2928 = !DILocation(line: 541, column: 28, scope: !2925)
!2929 = !DILocation(line: 541, column: 34, scope: !2925)
!2930 = !DILocation(line: 541, column: 26, scope: !2925)
!2931 = !DILocation(line: 541, column: 11, scope: !2925)
!2932 = !DILocation(line: 541, column: 6, scope: !2900)
!2933 = !DILocation(line: 542, column: 3, scope: !2925)
!2934 = !DILocation(line: 544, column: 9, scope: !2900)
!2935 = !DILocation(line: 544, column: 2, scope: !2900)
!2936 = !DILocation(line: 545, column: 1, scope: !2900)
!2937 = !DILocalVariable(name: "node", arg: 1, scope: !2, file: !3, line: 555, type: !7)
!2938 = !DILocation(line: 555, column: 55, scope: !2)
!2939 = !DILocalVariable(name: "endpoint", arg: 2, scope: !2, file: !3, line: 556, type: !2013)
!2940 = !DILocation(line: 556, column: 28, scope: !2)
!2941 = !DILocalVariable(name: "port_node", scope: !2, file: !3, line: 558, type: !1886)
!2942 = !DILocation(line: 558, column: 22, scope: !2)
!2943 = !DILocation(line: 558, column: 48, scope: !2)
!2944 = !DILocation(line: 558, column: 34, scope: !2)
!2945 = !DILocalVariable(name: "__ret_warn_once", scope: !2946, file: !3, line: 560, type: !6)
!2946 = distinct !DILexicalBlock(scope: !2, file: !3, line: 560, column: 2)
!2947 = !DILocation(line: 560, column: 2, scope: !2946)
!2948 = !DILocation(line: 560, column: 2, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 560, column: 2)
!2950 = !DILocation(line: 0, scope: !2949)
!2951 = !DILocation(line: 560, column: 2, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 560, column: 2)
!2953 = !DILocalVariable(name: "__ret_warn_on", scope: !2954, file: !3, line: 560, type: !6)
!2954 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 560, column: 2)
!2955 = !DILocation(line: 560, column: 2, scope: !2954)
!2956 = !DILocation(line: 560, column: 2, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 560, column: 2)
!2958 = !DILocation(line: 560, column: 2, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2957, file: !3, line: 560, column: 2)
!2960 = !DILocation(line: 560, column: 2, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 560, column: 2)
!2962 = !DILocation(line: 560, column: 2, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 560, column: 2)
!2964 = !DILocation(line: 560, column: 2, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 560, column: 2)
!2966 = !DILocation(line: 560, column: 2, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 560, column: 2)
!2968 = !{i32 -2143573920, i32 -2143573891, i32 -2143573845, i32 -2143573787, i32 -2143573733, i32 -2143573679, i32 -2143573624, i32 -2143573593}
!2969 = !DILocation(line: 560, column: 2, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 560, column: 2)
!2971 = !{i32 -2143573179, i32 -2143573172, i32 -2143573120, i32 -2143573089, i32 -2143573059}
!2972 = !DILocation(line: 560, column: 2, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 560, column: 2)
!2974 = !DILocation(line: 560, column: 2, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 560, column: 2)
!2976 = !DILocation(line: 563, column: 9, scope: !2)
!2977 = !DILocation(line: 563, column: 2, scope: !2)
!2978 = !DILocation(line: 565, column: 25, scope: !2)
!2979 = !DILocation(line: 565, column: 2, scope: !2)
!2980 = !DILocation(line: 565, column: 12, scope: !2)
!2981 = !DILocation(line: 565, column: 23, scope: !2)
!2982 = !DILocation(line: 570, column: 23, scope: !2)
!2983 = !DILocation(line: 570, column: 42, scope: !2)
!2984 = !DILocation(line: 570, column: 52, scope: !2)
!2985 = !DILocation(line: 570, column: 2, scope: !2)
!2986 = !DILocation(line: 571, column: 23, scope: !2)
!2987 = !DILocation(line: 571, column: 37, scope: !2)
!2988 = !DILocation(line: 571, column: 47, scope: !2)
!2989 = !DILocation(line: 571, column: 2, scope: !2)
!2990 = !DILocation(line: 573, column: 14, scope: !2)
!2991 = !DILocation(line: 573, column: 2, scope: !2)
!2992 = !DILocation(line: 575, column: 2, scope: !2)
!2993 = distinct !DISubprogram(name: "of_property_read_u32", scope: !10, file: !10, line: 1214, type: !2994, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!6, !7, !13, !584}
!2996 = !DILocalVariable(name: "np", arg: 1, scope: !2993, file: !10, line: 1214, type: !7)
!2997 = !DILocation(line: 1214, column: 66, scope: !2993)
!2998 = !DILocalVariable(name: "propname", arg: 2, scope: !2993, file: !10, line: 1215, type: !13)
!2999 = !DILocation(line: 1215, column: 24, scope: !2993)
!3000 = !DILocalVariable(name: "out_value", arg: 3, scope: !2993, file: !10, line: 1216, type: !584)
!3001 = !DILocation(line: 1216, column: 17, scope: !2993)
!3002 = !DILocation(line: 1218, column: 36, scope: !2993)
!3003 = !DILocation(line: 1218, column: 40, scope: !2993)
!3004 = !DILocation(line: 1218, column: 50, scope: !2993)
!3005 = !DILocation(line: 1218, column: 9, scope: !2993)
!3006 = !DILocation(line: 1218, column: 2, scope: !2993)
!3007 = distinct !DISubprogram(name: "of_graph_get_port_by_id", scope: !3, file: !3, line: 587, type: !3008, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!1886, !1886, !18}
!3010 = !DILocalVariable(name: "parent", arg: 1, scope: !3007, file: !3, line: 587, type: !1886)
!3011 = !DILocation(line: 587, column: 65, scope: !3007)
!3012 = !DILocalVariable(name: "id", arg: 2, scope: !3007, file: !3, line: 587, type: !18)
!3013 = !DILocation(line: 587, column: 77, scope: !3007)
!3014 = !DILocalVariable(name: "node", scope: !3007, file: !3, line: 589, type: !1886)
!3015 = !DILocation(line: 589, column: 22, scope: !3007)
!3016 = !DILocalVariable(name: "port", scope: !3007, file: !3, line: 589, type: !1886)
!3017 = !DILocation(line: 589, column: 29, scope: !3007)
!3018 = !DILocation(line: 591, column: 30, scope: !3007)
!3019 = !DILocation(line: 591, column: 9, scope: !3007)
!3020 = !DILocation(line: 591, column: 7, scope: !3007)
!3021 = !DILocation(line: 592, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 592, column: 6)
!3023 = !DILocation(line: 592, column: 6, scope: !3007)
!3024 = !DILocation(line: 593, column: 12, scope: !3022)
!3025 = !DILocation(line: 593, column: 10, scope: !3022)
!3026 = !DILocation(line: 593, column: 3, scope: !3022)
!3027 = !DILocation(line: 595, column: 2, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 595, column: 2)
!3029 = !DILocation(line: 595, column: 2, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 595, column: 2)
!3031 = !DILocalVariable(name: "port_id", scope: !3032, file: !3, line: 596, type: !18)
!3032 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 595, column: 39)
!3033 = !DILocation(line: 596, column: 7, scope: !3032)
!3034 = !DILocation(line: 598, column: 24, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 598, column: 7)
!3036 = !DILocation(line: 598, column: 8, scope: !3035)
!3037 = !DILocation(line: 598, column: 7, scope: !3032)
!3038 = !DILocation(line: 599, column: 4, scope: !3035)
!3039 = !DILocation(line: 600, column: 24, scope: !3032)
!3040 = !DILocation(line: 600, column: 3, scope: !3032)
!3041 = !DILocation(line: 601, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 601, column: 7)
!3043 = !DILocation(line: 601, column: 13, scope: !3042)
!3044 = !DILocation(line: 601, column: 10, scope: !3042)
!3045 = !DILocation(line: 601, column: 7, scope: !3032)
!3046 = !DILocation(line: 602, column: 4, scope: !3042)
!3047 = !DILocation(line: 603, column: 2, scope: !3032)
!3048 = distinct !{!3048, !3027, !3049}
!3049 = !DILocation(line: 603, column: 2, scope: !3028)
!3050 = !DILocation(line: 605, column: 14, scope: !3007)
!3051 = !DILocation(line: 605, column: 2, scope: !3007)
!3052 = !DILocation(line: 607, column: 9, scope: !3007)
!3053 = !DILocation(line: 607, column: 2, scope: !3007)
!3054 = !DILocalVariable(name: "parent", arg: 1, scope: !2039, file: !3, line: 619, type: !7)
!3055 = !DILocation(line: 619, column: 74, scope: !2039)
!3056 = !DILocalVariable(name: "prev", arg: 2, scope: !2039, file: !3, line: 620, type: !1886)
!3057 = !DILocation(line: 620, column: 26, scope: !2039)
!3058 = !DILocalVariable(name: "endpoint", scope: !2039, file: !3, line: 622, type: !1886)
!3059 = !DILocation(line: 622, column: 22, scope: !2039)
!3060 = !DILocalVariable(name: "port", scope: !2039, file: !3, line: 623, type: !1886)
!3061 = !DILocation(line: 623, column: 22, scope: !2039)
!3062 = !DILocation(line: 625, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 625, column: 6)
!3064 = !DILocation(line: 625, column: 6, scope: !2039)
!3065 = !DILocation(line: 626, column: 3, scope: !3063)
!3066 = !DILocation(line: 633, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 633, column: 6)
!3068 = !DILocation(line: 633, column: 6, scope: !2039)
!3069 = !DILocalVariable(name: "node", scope: !3070, file: !3, line: 634, type: !1886)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 633, column: 13)
!3071 = !DILocation(line: 634, column: 23, scope: !3070)
!3072 = !DILocation(line: 636, column: 31, scope: !3070)
!3073 = !DILocation(line: 636, column: 10, scope: !3070)
!3074 = !DILocation(line: 636, column: 8, scope: !3070)
!3075 = !DILocation(line: 637, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 637, column: 7)
!3077 = !DILocation(line: 637, column: 7, scope: !3070)
!3078 = !DILocation(line: 638, column: 13, scope: !3076)
!3079 = !DILocation(line: 638, column: 11, scope: !3076)
!3080 = !DILocation(line: 638, column: 4, scope: !3076)
!3081 = !DILocation(line: 640, column: 31, scope: !3070)
!3082 = !DILocation(line: 640, column: 10, scope: !3070)
!3083 = !DILocation(line: 640, column: 8, scope: !3070)
!3084 = !DILocation(line: 641, column: 15, scope: !3070)
!3085 = !DILocation(line: 641, column: 3, scope: !3070)
!3086 = !DILocation(line: 643, column: 8, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 643, column: 7)
!3088 = !DILocation(line: 643, column: 7, scope: !3070)
!3089 = !DILocation(line: 644, column: 4, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 643, column: 14)
!3091 = !DILocation(line: 645, column: 4, scope: !3090)
!3092 = !DILocation(line: 647, column: 2, scope: !3070)
!3093 = !DILocation(line: 648, column: 24, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 647, column: 9)
!3095 = !DILocation(line: 648, column: 10, scope: !3094)
!3096 = !DILocation(line: 648, column: 8, scope: !3094)
!3097 = !DILocalVariable(name: "__ret_warn_once", scope: !3098, file: !3, line: 649, type: !6)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 649, column: 7)
!3099 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 649, column: 7)
!3100 = !DILocation(line: 649, column: 7, scope: !3098)
!3101 = !DILocation(line: 649, column: 7, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 649, column: 7)
!3103 = !DILocation(line: 0, scope: !3102)
!3104 = !DILocation(line: 649, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 649, column: 7)
!3106 = !DILocalVariable(name: "__ret_warn_on", scope: !3107, file: !3, line: 649, type: !6)
!3107 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 649, column: 7)
!3108 = !DILocation(line: 649, column: 7, scope: !3107)
!3109 = !DILocation(line: 649, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 649, column: 7)
!3111 = !DILocation(line: 649, column: 7, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 649, column: 7)
!3113 = !DILocation(line: 649, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 649, column: 7)
!3115 = !DILocation(line: 649, column: 7, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 649, column: 7)
!3117 = !DILocation(line: 649, column: 7, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 649, column: 7)
!3119 = !DILocation(line: 649, column: 7, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 649, column: 7)
!3121 = !{i32 -2143571101, i32 -2143571072, i32 -2143571026, i32 -2143570968, i32 -2143570914, i32 -2143570860, i32 -2143570805, i32 -2143570774}
!3122 = !DILocation(line: 649, column: 7, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 649, column: 7)
!3124 = !{i32 -2143570360, i32 -2143570353, i32 -2143570301, i32 -2143570270, i32 -2143570240}
!3125 = !DILocation(line: 649, column: 7, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 649, column: 7)
!3127 = !DILocation(line: 649, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 649, column: 7)
!3129 = !DILocation(line: 649, column: 7, scope: !3099)
!3130 = !DILocation(line: 649, column: 7, scope: !3094)
!3131 = !DILocation(line: 651, column: 4, scope: !3099)
!3132 = !DILocation(line: 654, column: 2, scope: !2039)
!3133 = !DILocation(line: 660, column: 32, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 654, column: 12)
!3135 = !DILocation(line: 660, column: 38, scope: !3134)
!3136 = !DILocation(line: 660, column: 14, scope: !3134)
!3137 = !DILocation(line: 660, column: 12, scope: !3134)
!3138 = !DILocation(line: 661, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 661, column: 7)
!3140 = !DILocation(line: 661, column: 7, scope: !3134)
!3141 = !DILocation(line: 662, column: 16, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 661, column: 17)
!3143 = !DILocation(line: 662, column: 4, scope: !3142)
!3144 = !DILocation(line: 663, column: 11, scope: !3142)
!3145 = !DILocation(line: 663, column: 4, scope: !3142)
!3146 = !DILocation(line: 667, column: 8, scope: !3134)
!3147 = !DILocation(line: 669, column: 3, scope: !3134)
!3148 = !DILocation(line: 670, column: 29, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 669, column: 6)
!3150 = !DILocation(line: 670, column: 37, scope: !3149)
!3151 = !DILocation(line: 670, column: 11, scope: !3149)
!3152 = !DILocation(line: 670, column: 9, scope: !3149)
!3153 = !DILocation(line: 671, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 671, column: 8)
!3155 = !DILocation(line: 671, column: 8, scope: !3149)
!3156 = !DILocation(line: 672, column: 5, scope: !3154)
!3157 = !DILocation(line: 673, column: 3, scope: !3149)
!3158 = !DILocation(line: 673, column: 29, scope: !3134)
!3159 = !DILocation(line: 673, column: 13, scope: !3134)
!3160 = !DILocation(line: 673, column: 12, scope: !3134)
!3161 = distinct !{!3161, !3147, !3162}
!3162 = !DILocation(line: 673, column: 42, scope: !3134)
!3163 = distinct !{!3163, !3132, !3164}
!3164 = !DILocation(line: 674, column: 2, scope: !2039)
!3165 = !DILocation(line: 675, column: 1, scope: !2039)
!3166 = distinct !DISubprogram(name: "of_graph_get_endpoint_by_regs", scope: !3, file: !3, line: 688, type: !3167, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!1886, !7, !6, !6}
!3169 = !DILocalVariable(name: "parent", arg: 1, scope: !3166, file: !3, line: 689, type: !7)
!3170 = !DILocation(line: 689, column: 28, scope: !3166)
!3171 = !DILocalVariable(name: "port_reg", arg: 2, scope: !3166, file: !3, line: 689, type: !6)
!3172 = !DILocation(line: 689, column: 40, scope: !3166)
!3173 = !DILocalVariable(name: "reg", arg: 3, scope: !3166, file: !3, line: 689, type: !6)
!3174 = !DILocation(line: 689, column: 54, scope: !3166)
!3175 = !DILocalVariable(name: "endpoint", scope: !3166, file: !3, line: 691, type: !2014)
!3176 = !DILocation(line: 691, column: 21, scope: !3166)
!3177 = !DILocalVariable(name: "node", scope: !3166, file: !3, line: 692, type: !1886)
!3178 = !DILocation(line: 692, column: 22, scope: !3166)
!3179 = !DILocation(line: 694, column: 2, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 694, column: 2)
!3181 = !DILocation(line: 694, column: 2, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 694, column: 2)
!3183 = !DILocation(line: 695, column: 27, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 694, column: 42)
!3185 = !DILocation(line: 695, column: 3, scope: !3184)
!3186 = !DILocation(line: 696, column: 9, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 696, column: 7)
!3188 = !DILocation(line: 696, column: 18, scope: !3187)
!3189 = !DILocation(line: 696, column: 25, scope: !3187)
!3190 = !DILocation(line: 696, column: 38, scope: !3187)
!3191 = !DILocation(line: 696, column: 46, scope: !3187)
!3192 = !DILocation(line: 696, column: 43, scope: !3187)
!3193 = !DILocation(line: 696, column: 57, scope: !3187)
!3194 = !DILocation(line: 697, column: 6, scope: !3187)
!3195 = !DILocation(line: 697, column: 10, scope: !3187)
!3196 = !DILocation(line: 697, column: 17, scope: !3187)
!3197 = !DILocation(line: 697, column: 30, scope: !3187)
!3198 = !DILocation(line: 697, column: 36, scope: !3187)
!3199 = !DILocation(line: 697, column: 33, scope: !3187)
!3200 = !DILocation(line: 696, column: 7, scope: !3184)
!3201 = !DILocation(line: 698, column: 11, scope: !3187)
!3202 = !DILocation(line: 698, column: 4, scope: !3187)
!3203 = !DILocation(line: 699, column: 2, scope: !3184)
!3204 = distinct !{!3204, !3179, !3205}
!3205 = !DILocation(line: 699, column: 2, scope: !3180)
!3206 = !DILocation(line: 701, column: 2, scope: !3166)
!3207 = !DILocation(line: 702, column: 1, scope: !3166)
!3208 = distinct !DISubprogram(name: "of_graph_get_remote_endpoint", scope: !3, file: !3, line: 712, type: !3209, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!1886, !7}
!3211 = !DILocalVariable(name: "node", arg: 1, scope: !3208, file: !3, line: 712, type: !7)
!3212 = !DILocation(line: 712, column: 76, scope: !3208)
!3213 = !DILocation(line: 715, column: 26, scope: !3208)
!3214 = !DILocation(line: 715, column: 9, scope: !3208)
!3215 = !DILocation(line: 715, column: 2, scope: !3208)
!3216 = distinct !DISubprogram(name: "of_graph_get_port_parent", scope: !3, file: !3, line: 726, type: !3217, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!1886, !1886}
!3219 = !DILocalVariable(name: "node", arg: 1, scope: !3216, file: !3, line: 726, type: !1886)
!3220 = !DILocation(line: 726, column: 66, scope: !3216)
!3221 = !DILocalVariable(name: "depth", scope: !3216, file: !3, line: 728, type: !22)
!3222 = !DILocation(line: 728, column: 15, scope: !3216)
!3223 = !DILocation(line: 730, column: 7, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 730, column: 6)
!3225 = !DILocation(line: 730, column: 6, scope: !3216)
!3226 = !DILocation(line: 731, column: 3, scope: !3224)
!3227 = !DILocation(line: 737, column: 14, scope: !3216)
!3228 = !DILocation(line: 737, column: 2, scope: !3216)
!3229 = !DILocation(line: 740, column: 13, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 740, column: 2)
!3231 = !DILocation(line: 740, column: 7, scope: !3230)
!3232 = !DILocation(line: 740, column: 18, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 740, column: 2)
!3234 = !DILocation(line: 740, column: 24, scope: !3233)
!3235 = !DILocation(line: 740, column: 27, scope: !3233)
!3236 = !DILocation(line: 0, scope: !3233)
!3237 = !DILocation(line: 740, column: 2, scope: !3230)
!3238 = !DILocation(line: 741, column: 29, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 740, column: 42)
!3240 = !DILocation(line: 741, column: 10, scope: !3239)
!3241 = !DILocation(line: 741, column: 8, scope: !3239)
!3242 = !DILocation(line: 742, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 742, column: 7)
!3244 = !DILocation(line: 742, column: 13, scope: !3243)
!3245 = !DILocation(line: 742, column: 18, scope: !3243)
!3246 = !DILocation(line: 742, column: 38, scope: !3243)
!3247 = !DILocation(line: 742, column: 22, scope: !3243)
!3248 = !DILocation(line: 742, column: 7, scope: !3239)
!3249 = !DILocation(line: 743, column: 4, scope: !3243)
!3250 = !DILocation(line: 744, column: 2, scope: !3239)
!3251 = !DILocation(line: 740, column: 38, scope: !3233)
!3252 = !DILocation(line: 740, column: 2, scope: !3233)
!3253 = distinct !{!3253, !3237, !3254}
!3254 = !DILocation(line: 744, column: 2, scope: !3230)
!3255 = !DILocation(line: 745, column: 9, scope: !3216)
!3256 = !DILocation(line: 745, column: 2, scope: !3216)
!3257 = !DILocation(line: 746, column: 1, scope: !3216)
!3258 = distinct !DISubprogram(name: "of_node_get", scope: !10, file: !10, line: 125, type: !3217, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3259 = !DILocalVariable(name: "node", arg: 1, scope: !3258, file: !10, line: 125, type: !1886)
!3260 = !DILocation(line: 125, column: 67, scope: !3258)
!3261 = !DILocation(line: 127, column: 9, scope: !3258)
!3262 = !DILocation(line: 127, column: 2, scope: !3258)
!3263 = distinct !DISubprogram(name: "of_graph_get_remote_port_parent", scope: !3, file: !3, line: 756, type: !3209, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3264 = !DILocalVariable(name: "node", arg: 1, scope: !3263, file: !3, line: 757, type: !7)
!3265 = !DILocation(line: 757, column: 37, scope: !3263)
!3266 = !DILocalVariable(name: "np", scope: !3263, file: !3, line: 759, type: !1886)
!3267 = !DILocation(line: 759, column: 22, scope: !3263)
!3268 = !DILocalVariable(name: "pp", scope: !3263, file: !3, line: 759, type: !1886)
!3269 = !DILocation(line: 759, column: 27, scope: !3263)
!3270 = !DILocation(line: 762, column: 36, scope: !3263)
!3271 = !DILocation(line: 762, column: 7, scope: !3263)
!3272 = !DILocation(line: 762, column: 5, scope: !3263)
!3273 = !DILocation(line: 764, column: 32, scope: !3263)
!3274 = !DILocation(line: 764, column: 7, scope: !3263)
!3275 = !DILocation(line: 764, column: 5, scope: !3263)
!3276 = !DILocation(line: 766, column: 14, scope: !3263)
!3277 = !DILocation(line: 766, column: 2, scope: !3263)
!3278 = !DILocation(line: 768, column: 9, scope: !3263)
!3279 = !DILocation(line: 768, column: 2, scope: !3263)
!3280 = distinct !DISubprogram(name: "of_graph_get_remote_port", scope: !3, file: !3, line: 779, type: !3209, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3281 = !DILocalVariable(name: "node", arg: 1, scope: !3280, file: !3, line: 779, type: !7)
!3282 = !DILocation(line: 779, column: 72, scope: !3280)
!3283 = !DILocalVariable(name: "np", scope: !3280, file: !3, line: 781, type: !1886)
!3284 = !DILocation(line: 781, column: 22, scope: !3280)
!3285 = !DILocation(line: 784, column: 36, scope: !3280)
!3286 = !DILocation(line: 784, column: 7, scope: !3280)
!3287 = !DILocation(line: 784, column: 5, scope: !3280)
!3288 = !DILocation(line: 785, column: 7, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 785, column: 6)
!3290 = !DILocation(line: 785, column: 6, scope: !3280)
!3291 = !DILocation(line: 786, column: 3, scope: !3289)
!3292 = !DILocation(line: 787, column: 28, scope: !3280)
!3293 = !DILocation(line: 787, column: 9, scope: !3280)
!3294 = !DILocation(line: 787, column: 2, scope: !3280)
!3295 = !DILocation(line: 788, column: 1, scope: !3280)
!3296 = distinct !DISubprogram(name: "of_graph_get_endpoint_count", scope: !3, file: !3, line: 791, type: !3297, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!6, !7}
!3299 = !DILocalVariable(name: "np", arg: 1, scope: !3296, file: !3, line: 791, type: !7)
!3300 = !DILocation(line: 791, column: 59, scope: !3296)
!3301 = !DILocalVariable(name: "endpoint", scope: !3296, file: !3, line: 793, type: !1886)
!3302 = !DILocation(line: 793, column: 22, scope: !3296)
!3303 = !DILocalVariable(name: "num", scope: !3296, file: !3, line: 794, type: !6)
!3304 = !DILocation(line: 794, column: 6, scope: !3296)
!3305 = !DILocation(line: 796, column: 2, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 796, column: 2)
!3307 = !DILocation(line: 796, column: 2, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 796, column: 2)
!3309 = !DILocation(line: 797, column: 6, scope: !3308)
!3310 = !DILocation(line: 797, column: 3, scope: !3308)
!3311 = distinct !{!3311, !3305, !3312}
!3312 = !DILocation(line: 797, column: 6, scope: !3306)
!3313 = !DILocation(line: 799, column: 9, scope: !3296)
!3314 = !DILocation(line: 799, column: 2, scope: !3296)
!3315 = distinct !DISubprogram(name: "of_graph_get_remote_node", scope: !3, file: !3, line: 812, type: !3316, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!1886, !7, !18, !18}
!3318 = !DILocalVariable(name: "node", arg: 1, scope: !3315, file: !3, line: 812, type: !7)
!3319 = !DILocation(line: 812, column: 72, scope: !3315)
!3320 = !DILocalVariable(name: "port", arg: 2, scope: !3315, file: !3, line: 813, type: !18)
!3321 = !DILocation(line: 813, column: 15, scope: !3315)
!3322 = !DILocalVariable(name: "endpoint", arg: 3, scope: !3315, file: !3, line: 813, type: !18)
!3323 = !DILocation(line: 813, column: 25, scope: !3315)
!3324 = !DILocalVariable(name: "endpoint_node", scope: !3315, file: !3, line: 815, type: !1886)
!3325 = !DILocation(line: 815, column: 22, scope: !3315)
!3326 = !DILocalVariable(name: "remote", scope: !3315, file: !3, line: 815, type: !1886)
!3327 = !DILocation(line: 815, column: 38, scope: !3315)
!3328 = !DILocation(line: 817, column: 48, scope: !3315)
!3329 = !DILocation(line: 817, column: 54, scope: !3315)
!3330 = !DILocation(line: 817, column: 60, scope: !3315)
!3331 = !DILocation(line: 817, column: 18, scope: !3315)
!3332 = !DILocation(line: 817, column: 16, scope: !3315)
!3333 = !DILocation(line: 818, column: 7, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 818, column: 6)
!3335 = !DILocation(line: 818, column: 6, scope: !3315)
!3336 = !DILocation(line: 819, column: 3, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 819, column: 3)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 819, column: 3)
!3339 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 818, column: 22)
!3340 = !DILocation(line: 819, column: 3, scope: !3338)
!3341 = !DILocation(line: 821, column: 3, scope: !3339)
!3342 = !DILocation(line: 824, column: 43, scope: !3315)
!3343 = !DILocation(line: 824, column: 11, scope: !3315)
!3344 = !DILocation(line: 824, column: 9, scope: !3315)
!3345 = !DILocation(line: 825, column: 14, scope: !3315)
!3346 = !DILocation(line: 825, column: 2, scope: !3315)
!3347 = !DILocation(line: 826, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 826, column: 6)
!3349 = !DILocation(line: 826, column: 6, scope: !3315)
!3350 = !DILocation(line: 827, column: 3, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 827, column: 3)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 827, column: 3)
!3353 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 826, column: 15)
!3354 = !DILocation(line: 827, column: 3, scope: !3352)
!3355 = !DILocation(line: 828, column: 3, scope: !3353)
!3356 = !DILocation(line: 831, column: 30, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 831, column: 6)
!3358 = !DILocation(line: 831, column: 7, scope: !3357)
!3359 = !DILocation(line: 831, column: 6, scope: !3315)
!3360 = !DILocation(line: 832, column: 3, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 832, column: 3)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 832, column: 3)
!3363 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 831, column: 39)
!3364 = !DILocation(line: 832, column: 3, scope: !3362)
!3365 = !DILocation(line: 833, column: 15, scope: !3363)
!3366 = !DILocation(line: 833, column: 3, scope: !3363)
!3367 = !DILocation(line: 834, column: 3, scope: !3363)
!3368 = !DILocation(line: 837, column: 9, scope: !3315)
!3369 = !DILocation(line: 837, column: 2, scope: !3315)
!3370 = !DILocation(line: 838, column: 1, scope: !3315)
!3371 = distinct !DISubprogram(name: "of_fwnode_get", scope: !3, file: !3, line: 841, type: !37, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3372 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3371, file: !3, line: 841, type: !29)
!3373 = !DILocation(line: 841, column: 66, scope: !3371)
!3374 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3375, file: !3, line: 843, type: !1886)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 843, column: 9)
!3376 = !DILocation(line: 843, column: 9, scope: !3375)
!3377 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3378, file: !3, line: 843, type: !29)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 843, column: 9)
!3379 = !DILocation(line: 843, column: 9, scope: !3378)
!3380 = !DILocalVariable(name: "__mptr", scope: !3381, file: !3, line: 843, type: !197)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 843, column: 9)
!3382 = !DILocation(line: 843, column: 9, scope: !3381)
!3383 = !DILocation(line: 843, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 843, column: 9)
!3385 = !DILocation(line: 843, column: 2, scope: !3371)
!3386 = distinct !DISubprogram(name: "of_fwnode_put", scope: !3, file: !3, line: 846, type: !41, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3387 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3386, file: !3, line: 846, type: !29)
!3388 = !DILocation(line: 846, column: 49, scope: !3386)
!3389 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3390, file: !3, line: 848, type: !29)
!3390 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 848, column: 14)
!3391 = !DILocation(line: 848, column: 14, scope: !3390)
!3392 = !DILocalVariable(name: "__mptr", scope: !3393, file: !3, line: 848, type: !197)
!3393 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 848, column: 14)
!3394 = !DILocation(line: 848, column: 14, scope: !3393)
!3395 = !DILocation(line: 848, column: 14, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 848, column: 14)
!3397 = !DILocation(line: 848, column: 2, scope: !3386)
!3398 = !DILocation(line: 849, column: 1, scope: !3386)
!3399 = distinct !DISubprogram(name: "of_fwnode_device_is_available", scope: !3, file: !3, line: 851, type: !45, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3400 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3399, file: !3, line: 851, type: !50)
!3401 = !DILocation(line: 851, column: 71, scope: !3399)
!3402 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3403, file: !3, line: 853, type: !50)
!3403 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 853, column: 32)
!3404 = !DILocation(line: 853, column: 32, scope: !3403)
!3405 = !DILocalVariable(name: "__mptr", scope: !3406, file: !3, line: 853, type: !197)
!3406 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 853, column: 32)
!3407 = !DILocation(line: 853, column: 32, scope: !3406)
!3408 = !DILocation(line: 853, column: 32, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 853, column: 32)
!3410 = !DILocation(line: 853, column: 9, scope: !3399)
!3411 = !DILocation(line: 853, column: 2, scope: !3399)
!3412 = distinct !DISubprogram(name: "of_fwnode_device_get_match_data", scope: !3, file: !3, line: 1020, type: !54, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3413 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3412, file: !3, line: 1020, type: !50)
!3414 = !DILocation(line: 1020, column: 61, scope: !3412)
!3415 = !DILocalVariable(name: "dev", arg: 2, scope: !3412, file: !3, line: 1021, type: !58)
!3416 = !DILocation(line: 1021, column: 26, scope: !3412)
!3417 = !DILocation(line: 1023, column: 34, scope: !3412)
!3418 = !DILocation(line: 1023, column: 9, scope: !3412)
!3419 = !DILocation(line: 1023, column: 2, scope: !3412)
!3420 = distinct !DISubprogram(name: "of_fwnode_property_present", scope: !3, file: !3, line: 856, type: !1940, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3421 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3420, file: !3, line: 856, type: !50)
!3422 = !DILocation(line: 856, column: 68, scope: !3420)
!3423 = !DILocalVariable(name: "propname", arg: 2, scope: !3420, file: !3, line: 857, type: !13)
!3424 = !DILocation(line: 857, column: 24, scope: !3420)
!3425 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3426, file: !3, line: 859, type: !50)
!3426 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 859, column: 31)
!3427 = !DILocation(line: 859, column: 31, scope: !3426)
!3428 = !DILocalVariable(name: "__mptr", scope: !3429, file: !3, line: 859, type: !197)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 859, column: 31)
!3430 = !DILocation(line: 859, column: 31, scope: !3429)
!3431 = !DILocation(line: 859, column: 31, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3429, file: !3, line: 859, column: 31)
!3433 = !DILocation(line: 859, column: 51, scope: !3420)
!3434 = !DILocation(line: 859, column: 9, scope: !3420)
!3435 = !DILocation(line: 859, column: 2, scope: !3420)
!3436 = distinct !DISubprogram(name: "of_fwnode_property_read_int_array", scope: !3, file: !3, line: 862, type: !1944, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3437 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3436, file: !3, line: 862, type: !50)
!3438 = !DILocation(line: 862, column: 74, scope: !3436)
!3439 = !DILocalVariable(name: "propname", arg: 2, scope: !3436, file: !3, line: 863, type: !13)
!3440 = !DILocation(line: 863, column: 23, scope: !3436)
!3441 = !DILocalVariable(name: "elem_size", arg: 3, scope: !3436, file: !3, line: 864, type: !22)
!3442 = !DILocation(line: 864, column: 24, scope: !3436)
!3443 = !DILocalVariable(name: "val", arg: 4, scope: !3436, file: !3, line: 864, type: !197)
!3444 = !DILocation(line: 864, column: 41, scope: !3436)
!3445 = !DILocalVariable(name: "nval", arg: 5, scope: !3436, file: !3, line: 865, type: !170)
!3446 = !DILocation(line: 865, column: 18, scope: !3436)
!3447 = !DILocalVariable(name: "node", scope: !3436, file: !3, line: 867, type: !7)
!3448 = !DILocation(line: 867, column: 28, scope: !3436)
!3449 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3450, file: !3, line: 867, type: !50)
!3450 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 867, column: 35)
!3451 = !DILocation(line: 867, column: 35, scope: !3450)
!3452 = !DILocalVariable(name: "__mptr", scope: !3453, file: !3, line: 867, type: !197)
!3453 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 867, column: 35)
!3454 = !DILocation(line: 867, column: 35, scope: !3453)
!3455 = !DILocation(line: 867, column: 35, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 867, column: 35)
!3457 = !DILocation(line: 869, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 869, column: 6)
!3459 = !DILocation(line: 869, column: 6, scope: !3436)
!3460 = !DILocation(line: 870, column: 42, scope: !3458)
!3461 = !DILocation(line: 870, column: 48, scope: !3458)
!3462 = !DILocation(line: 871, column: 14, scope: !3458)
!3463 = !DILocation(line: 870, column: 10, scope: !3458)
!3464 = !DILocation(line: 870, column: 3, scope: !3458)
!3465 = !DILocation(line: 873, column: 10, scope: !3436)
!3466 = !DILocation(line: 873, column: 2, scope: !3436)
!3467 = !DILocation(line: 875, column: 36, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 873, column: 21)
!3469 = !DILocation(line: 875, column: 42, scope: !3468)
!3470 = !DILocation(line: 875, column: 52, scope: !3468)
!3471 = !DILocation(line: 875, column: 57, scope: !3468)
!3472 = !DILocation(line: 875, column: 10, scope: !3468)
!3473 = !DILocation(line: 875, column: 3, scope: !3468)
!3474 = !DILocation(line: 877, column: 37, scope: !3468)
!3475 = !DILocation(line: 877, column: 43, scope: !3468)
!3476 = !DILocation(line: 877, column: 53, scope: !3468)
!3477 = !DILocation(line: 877, column: 58, scope: !3468)
!3478 = !DILocation(line: 877, column: 10, scope: !3468)
!3479 = !DILocation(line: 877, column: 3, scope: !3468)
!3480 = !DILocation(line: 879, column: 37, scope: !3468)
!3481 = !DILocation(line: 879, column: 43, scope: !3468)
!3482 = !DILocation(line: 879, column: 53, scope: !3468)
!3483 = !DILocation(line: 879, column: 58, scope: !3468)
!3484 = !DILocation(line: 879, column: 10, scope: !3468)
!3485 = !DILocation(line: 879, column: 3, scope: !3468)
!3486 = !DILocation(line: 881, column: 37, scope: !3468)
!3487 = !DILocation(line: 881, column: 43, scope: !3468)
!3488 = !DILocation(line: 881, column: 53, scope: !3468)
!3489 = !DILocation(line: 881, column: 58, scope: !3468)
!3490 = !DILocation(line: 881, column: 10, scope: !3468)
!3491 = !DILocation(line: 881, column: 3, scope: !3468)
!3492 = !DILocation(line: 884, column: 2, scope: !3436)
!3493 = !DILocation(line: 885, column: 1, scope: !3436)
!3494 = distinct !DISubprogram(name: "of_fwnode_property_read_string_array", scope: !3, file: !3, line: 888, type: !1948, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3495 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3494, file: !3, line: 888, type: !50)
!3496 = !DILocation(line: 888, column: 66, scope: !3494)
!3497 = !DILocalVariable(name: "propname", arg: 2, scope: !3494, file: !3, line: 889, type: !13)
!3498 = !DILocation(line: 889, column: 22, scope: !3494)
!3499 = !DILocalVariable(name: "val", arg: 3, scope: !3494, file: !3, line: 889, type: !1950)
!3500 = !DILocation(line: 889, column: 45, scope: !3494)
!3501 = !DILocalVariable(name: "nval", arg: 4, scope: !3494, file: !3, line: 890, type: !170)
!3502 = !DILocation(line: 890, column: 17, scope: !3494)
!3503 = !DILocalVariable(name: "node", scope: !3494, file: !3, line: 892, type: !7)
!3504 = !DILocation(line: 892, column: 28, scope: !3494)
!3505 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3506, file: !3, line: 892, type: !50)
!3506 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 892, column: 35)
!3507 = !DILocation(line: 892, column: 35, scope: !3506)
!3508 = !DILocalVariable(name: "__mptr", scope: !3509, file: !3, line: 892, type: !197)
!3509 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 892, column: 35)
!3510 = !DILocation(line: 892, column: 35, scope: !3509)
!3511 = !DILocation(line: 892, column: 35, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3509, file: !3, line: 892, column: 35)
!3513 = !DILocation(line: 894, column: 9, scope: !3494)
!3514 = !DILocation(line: 895, column: 33, scope: !3494)
!3515 = !DILocation(line: 895, column: 39, scope: !3494)
!3516 = !DILocation(line: 895, column: 49, scope: !3494)
!3517 = !DILocation(line: 895, column: 54, scope: !3494)
!3518 = !DILocation(line: 895, column: 3, scope: !3494)
!3519 = !DILocation(line: 896, column: 29, scope: !3494)
!3520 = !DILocation(line: 896, column: 35, scope: !3494)
!3521 = !DILocation(line: 896, column: 3, scope: !3494)
!3522 = !DILocation(line: 894, column: 2, scope: !3494)
!3523 = distinct !DISubprogram(name: "of_fwnode_get_name", scope: !3, file: !3, line: 899, type: !1953, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3524 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3523, file: !3, line: 899, type: !50)
!3525 = !DILocation(line: 899, column: 67, scope: !3523)
!3526 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3527, file: !3, line: 901, type: !50)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 901, column: 19)
!3528 = !DILocation(line: 901, column: 19, scope: !3527)
!3529 = !DILocalVariable(name: "__mptr", scope: !3530, file: !3, line: 901, type: !197)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 901, column: 19)
!3531 = !DILocation(line: 901, column: 19, scope: !3530)
!3532 = !DILocation(line: 901, column: 19, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 901, column: 19)
!3534 = !DILocation(line: 901, column: 39, scope: !3523)
!3535 = !DILocation(line: 901, column: 9, scope: !3523)
!3536 = !DILocation(line: 901, column: 2, scope: !3523)
!3537 = distinct !DISubprogram(name: "of_fwnode_get_name_prefix", scope: !3, file: !3, line: 904, type: !1953, scopeLine: 905, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3538 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3537, file: !3, line: 904, type: !50)
!3539 = !DILocation(line: 904, column: 74, scope: !3537)
!3540 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3541, file: !3, line: 907, type: !50)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 907, column: 7)
!3542 = distinct !DILexicalBlock(scope: !3537, file: !3, line: 907, column: 6)
!3543 = !DILocation(line: 907, column: 7, scope: !3541)
!3544 = !DILocalVariable(name: "__mptr", scope: !3545, file: !3, line: 907, type: !197)
!3545 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 907, column: 7)
!3546 = !DILocation(line: 907, column: 7, scope: !3545)
!3547 = !DILocation(line: 907, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !3, line: 907, column: 7)
!3549 = !DILocation(line: 907, column: 27, scope: !3542)
!3550 = !DILocation(line: 907, column: 7, scope: !3542)
!3551 = !DILocation(line: 907, column: 6, scope: !3537)
!3552 = !DILocation(line: 908, column: 3, scope: !3542)
!3553 = !DILocation(line: 910, column: 2, scope: !3537)
!3554 = !DILocation(line: 911, column: 1, scope: !3537)
!3555 = distinct !DISubprogram(name: "of_fwnode_get_parent", scope: !3, file: !3, line: 914, type: !1958, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3556 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3555, file: !3, line: 914, type: !50)
!3557 = !DILocation(line: 914, column: 50, scope: !3555)
!3558 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3559, file: !3, line: 916, type: !1886)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 916, column: 9)
!3560 = !DILocation(line: 916, column: 9, scope: !3559)
!3561 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3562, file: !3, line: 916, type: !50)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 916, column: 9)
!3563 = !DILocation(line: 916, column: 9, scope: !3562)
!3564 = !DILocalVariable(name: "__mptr", scope: !3565, file: !3, line: 916, type: !197)
!3565 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 916, column: 9)
!3566 = !DILocation(line: 916, column: 9, scope: !3565)
!3567 = !DILocation(line: 916, column: 9, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 916, column: 9)
!3569 = !DILocation(line: 916, column: 2, scope: !3555)
!3570 = distinct !DISubprogram(name: "of_fwnode_get_next_child_node", scope: !3, file: !3, line: 920, type: !1962, scopeLine: 922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3571 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3570, file: !3, line: 920, type: !50)
!3572 = !DILocation(line: 920, column: 59, scope: !3570)
!3573 = !DILocalVariable(name: "child", arg: 2, scope: !3570, file: !3, line: 921, type: !29)
!3574 = !DILocation(line: 921, column: 32, scope: !3570)
!3575 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3576, file: !3, line: 923, type: !1886)
!3576 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 923, column: 9)
!3577 = !DILocation(line: 923, column: 9, scope: !3576)
!3578 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3579, file: !3, line: 923, type: !50)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 923, column: 9)
!3580 = !DILocation(line: 923, column: 9, scope: !3579)
!3581 = !DILocalVariable(name: "__mptr", scope: !3582, file: !3, line: 923, type: !197)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 923, column: 9)
!3583 = !DILocation(line: 923, column: 9, scope: !3582)
!3584 = !DILocation(line: 923, column: 9, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 923, column: 9)
!3586 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3587, file: !3, line: 923, type: !29)
!3587 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 923, column: 9)
!3588 = !DILocation(line: 923, column: 9, scope: !3587)
!3589 = !DILocalVariable(name: "__mptr", scope: !3590, file: !3, line: 923, type: !197)
!3590 = distinct !DILexicalBlock(scope: !3587, file: !3, line: 923, column: 9)
!3591 = !DILocation(line: 923, column: 9, scope: !3590)
!3592 = !DILocation(line: 923, column: 9, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 923, column: 9)
!3594 = !DILocation(line: 923, column: 2, scope: !3570)
!3595 = distinct !DISubprogram(name: "of_fwnode_get_named_child_node", scope: !3, file: !3, line: 928, type: !1966, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3596 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3595, file: !3, line: 928, type: !50)
!3597 = !DILocation(line: 928, column: 60, scope: !3595)
!3598 = !DILocalVariable(name: "childname", arg: 2, scope: !3595, file: !3, line: 929, type: !13)
!3599 = !DILocation(line: 929, column: 23, scope: !3595)
!3600 = !DILocalVariable(name: "node", scope: !3595, file: !3, line: 931, type: !7)
!3601 = !DILocation(line: 931, column: 28, scope: !3595)
!3602 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3603, file: !3, line: 931, type: !50)
!3603 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 931, column: 35)
!3604 = !DILocation(line: 931, column: 35, scope: !3603)
!3605 = !DILocalVariable(name: "__mptr", scope: !3606, file: !3, line: 931, type: !197)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 931, column: 35)
!3607 = !DILocation(line: 931, column: 35, scope: !3606)
!3608 = !DILocation(line: 931, column: 35, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 931, column: 35)
!3610 = !DILocalVariable(name: "child", scope: !3595, file: !3, line: 932, type: !1886)
!3611 = !DILocation(line: 932, column: 22, scope: !3595)
!3612 = !DILocation(line: 934, column: 2, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 934, column: 2)
!3614 = !DILocation(line: 934, column: 2, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 934, column: 2)
!3616 = !DILocation(line: 935, column: 23, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 935, column: 7)
!3618 = !DILocation(line: 935, column: 30, scope: !3617)
!3619 = !DILocation(line: 935, column: 7, scope: !3617)
!3620 = !DILocation(line: 935, column: 7, scope: !3615)
!3621 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3622, file: !3, line: 936, type: !1886)
!3622 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 936, column: 11)
!3623 = !DILocation(line: 936, column: 11, scope: !3622)
!3624 = !DILocation(line: 936, column: 4, scope: !3617)
!3625 = !DILocation(line: 935, column: 39, scope: !3617)
!3626 = distinct !{!3626, !3612, !3627}
!3627 = !DILocation(line: 936, column: 11, scope: !3613)
!3628 = !DILocation(line: 938, column: 2, scope: !3595)
!3629 = !DILocation(line: 939, column: 1, scope: !3595)
!3630 = distinct !DISubprogram(name: "of_fwnode_get_reference_args", scope: !3, file: !3, line: 942, type: !1970, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3631 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3630, file: !3, line: 942, type: !50)
!3632 = !DILocation(line: 942, column: 58, scope: !3630)
!3633 = !DILocalVariable(name: "prop", arg: 2, scope: !3630, file: !3, line: 943, type: !13)
!3634 = !DILocation(line: 943, column: 21, scope: !3630)
!3635 = !DILocalVariable(name: "nargs_prop", arg: 3, scope: !3630, file: !3, line: 943, type: !13)
!3636 = !DILocation(line: 943, column: 39, scope: !3630)
!3637 = !DILocalVariable(name: "nargs", arg: 4, scope: !3630, file: !3, line: 944, type: !22)
!3638 = !DILocation(line: 944, column: 22, scope: !3630)
!3639 = !DILocalVariable(name: "index", arg: 5, scope: !3630, file: !3, line: 944, type: !22)
!3640 = !DILocation(line: 944, column: 42, scope: !3630)
!3641 = !DILocalVariable(name: "args", arg: 6, scope: !3630, file: !3, line: 945, type: !1972)
!3642 = !DILocation(line: 945, column: 39, scope: !3630)
!3643 = !DILocalVariable(name: "of_args", scope: !3630, file: !3, line: 947, type: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !10, line: 74, size: 640, elements: !3645)
!3645 = !{!3646, !3647, !3648}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !3644, file: !10, line: 75, baseType: !1886, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !3644, file: !10, line: 76, baseType: !6, size: 32, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3644, file: !10, line: 77, baseType: !3649, size: 512, offset: 96)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3650, size: 512, elements: !750)
!3650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !48, line: 104, baseType: !18)
!3651 = !DILocation(line: 947, column: 25, scope: !3630)
!3652 = !DILocalVariable(name: "i", scope: !3630, file: !3, line: 948, type: !22)
!3653 = !DILocation(line: 948, column: 15, scope: !3630)
!3654 = !DILocalVariable(name: "ret", scope: !3630, file: !3, line: 949, type: !6)
!3655 = !DILocation(line: 949, column: 6, scope: !3630)
!3656 = !DILocation(line: 951, column: 6, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 951, column: 6)
!3658 = !DILocation(line: 951, column: 6, scope: !3630)
!3659 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3660, file: !3, line: 952, type: !50)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 952, column: 36)
!3661 = !DILocation(line: 952, column: 36, scope: !3660)
!3662 = !DILocalVariable(name: "__mptr", scope: !3663, file: !3, line: 952, type: !197)
!3663 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 952, column: 36)
!3664 = !DILocation(line: 952, column: 36, scope: !3663)
!3665 = !DILocation(line: 952, column: 36, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 952, column: 36)
!3667 = !DILocation(line: 952, column: 56, scope: !3657)
!3668 = !DILocation(line: 953, column: 8, scope: !3657)
!3669 = !DILocation(line: 953, column: 20, scope: !3657)
!3670 = !DILocation(line: 952, column: 9, scope: !3657)
!3671 = !DILocation(line: 952, column: 7, scope: !3657)
!3672 = !DILocation(line: 952, column: 3, scope: !3657)
!3673 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3674, file: !3, line: 955, type: !50)
!3674 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 955, column: 42)
!3675 = !DILocation(line: 955, column: 42, scope: !3674)
!3676 = !DILocalVariable(name: "__mptr", scope: !3677, file: !3, line: 955, type: !197)
!3677 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 955, column: 42)
!3678 = !DILocation(line: 955, column: 42, scope: !3677)
!3679 = !DILocation(line: 955, column: 42, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 955, column: 42)
!3681 = !DILocation(line: 955, column: 62, scope: !3657)
!3682 = !DILocation(line: 956, column: 14, scope: !3657)
!3683 = !DILocation(line: 956, column: 21, scope: !3657)
!3684 = !DILocation(line: 955, column: 9, scope: !3657)
!3685 = !DILocation(line: 955, column: 7, scope: !3657)
!3686 = !DILocation(line: 957, column: 6, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 957, column: 6)
!3688 = !DILocation(line: 957, column: 10, scope: !3687)
!3689 = !DILocation(line: 957, column: 6, scope: !3630)
!3690 = !DILocation(line: 958, column: 10, scope: !3687)
!3691 = !DILocation(line: 958, column: 3, scope: !3687)
!3692 = !DILocation(line: 959, column: 7, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 959, column: 6)
!3694 = !DILocation(line: 959, column: 6, scope: !3630)
!3695 = !DILocation(line: 960, column: 3, scope: !3693)
!3696 = !DILocation(line: 962, column: 24, scope: !3630)
!3697 = !DILocation(line: 962, column: 2, scope: !3630)
!3698 = !DILocation(line: 962, column: 8, scope: !3630)
!3699 = !DILocation(line: 962, column: 14, scope: !3630)
!3700 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3701, file: !3, line: 963, type: !1886)
!3701 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 963, column: 17)
!3702 = !DILocation(line: 963, column: 17, scope: !3701)
!3703 = !DILocation(line: 963, column: 2, scope: !3630)
!3704 = !DILocation(line: 963, column: 8, scope: !3630)
!3705 = !DILocation(line: 963, column: 15, scope: !3630)
!3706 = !DILocation(line: 965, column: 9, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 965, column: 2)
!3708 = !DILocation(line: 965, column: 7, scope: !3707)
!3709 = !DILocation(line: 965, column: 14, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 965, column: 2)
!3711 = !DILocation(line: 965, column: 16, scope: !3710)
!3712 = !DILocation(line: 965, column: 2, scope: !3707)
!3713 = !DILocation(line: 966, column: 19, scope: !3710)
!3714 = !DILocation(line: 966, column: 31, scope: !3710)
!3715 = !DILocation(line: 966, column: 21, scope: !3710)
!3716 = !DILocation(line: 966, column: 52, scope: !3710)
!3717 = !DILocation(line: 966, column: 57, scope: !3710)
!3718 = !DILocation(line: 966, column: 44, scope: !3710)
!3719 = !DILocation(line: 966, column: 3, scope: !3710)
!3720 = !DILocation(line: 966, column: 9, scope: !3710)
!3721 = !DILocation(line: 966, column: 14, scope: !3710)
!3722 = !DILocation(line: 966, column: 17, scope: !3710)
!3723 = !DILocation(line: 965, column: 45, scope: !3710)
!3724 = !DILocation(line: 965, column: 2, scope: !3710)
!3725 = distinct !{!3725, !3712, !3726}
!3726 = !DILocation(line: 966, column: 62, scope: !3707)
!3727 = !DILocation(line: 968, column: 2, scope: !3630)
!3728 = !DILocation(line: 969, column: 1, scope: !3630)
!3729 = distinct !DISubprogram(name: "of_fwnode_graph_get_next_endpoint", scope: !3, file: !3, line: 972, type: !1962, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3730 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3729, file: !3, line: 972, type: !50)
!3731 = !DILocation(line: 972, column: 63, scope: !3729)
!3732 = !DILocalVariable(name: "prev", arg: 2, scope: !3729, file: !3, line: 973, type: !29)
!3733 = !DILocation(line: 973, column: 29, scope: !3729)
!3734 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3735, file: !3, line: 975, type: !1886)
!3735 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 975, column: 9)
!3736 = !DILocation(line: 975, column: 9, scope: !3735)
!3737 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3738, file: !3, line: 975, type: !50)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 975, column: 9)
!3739 = !DILocation(line: 975, column: 9, scope: !3738)
!3740 = !DILocalVariable(name: "__mptr", scope: !3741, file: !3, line: 975, type: !197)
!3741 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 975, column: 9)
!3742 = !DILocation(line: 975, column: 9, scope: !3741)
!3743 = !DILocation(line: 975, column: 9, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 975, column: 9)
!3745 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3746, file: !3, line: 975, type: !29)
!3746 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 975, column: 9)
!3747 = !DILocation(line: 975, column: 9, scope: !3746)
!3748 = !DILocalVariable(name: "__mptr", scope: !3749, file: !3, line: 975, type: !197)
!3749 = distinct !DILexicalBlock(scope: !3746, file: !3, line: 975, column: 9)
!3750 = !DILocation(line: 975, column: 9, scope: !3749)
!3751 = !DILocation(line: 975, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3749, file: !3, line: 975, column: 9)
!3753 = !DILocation(line: 975, column: 2, scope: !3729)
!3754 = distinct !DISubprogram(name: "of_fwnode_graph_get_remote_endpoint", scope: !3, file: !3, line: 980, type: !1958, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3755 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3754, file: !3, line: 980, type: !50)
!3756 = !DILocation(line: 980, column: 65, scope: !3754)
!3757 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3758, file: !3, line: 982, type: !1886)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !3, line: 982, column: 9)
!3759 = !DILocation(line: 982, column: 9, scope: !3758)
!3760 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3761, file: !3, line: 982, type: !50)
!3761 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 982, column: 9)
!3762 = !DILocation(line: 982, column: 9, scope: !3761)
!3763 = !DILocalVariable(name: "__mptr", scope: !3764, file: !3, line: 982, type: !197)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 982, column: 9)
!3765 = !DILocation(line: 982, column: 9, scope: !3764)
!3766 = !DILocation(line: 982, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 982, column: 9)
!3768 = !DILocation(line: 982, column: 2, scope: !3754)
!3769 = distinct !DISubprogram(name: "of_fwnode_graph_get_port_parent", scope: !3, file: !3, line: 987, type: !37, scopeLine: 988, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3770 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3769, file: !3, line: 987, type: !29)
!3771 = !DILocation(line: 987, column: 55, scope: !3769)
!3772 = !DILocalVariable(name: "np", scope: !3769, file: !3, line: 989, type: !1886)
!3773 = !DILocation(line: 989, column: 22, scope: !3769)
!3774 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3775, file: !3, line: 992, type: !29)
!3775 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 992, column: 21)
!3776 = !DILocation(line: 992, column: 21, scope: !3775)
!3777 = !DILocalVariable(name: "__mptr", scope: !3778, file: !3, line: 992, type: !197)
!3778 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 992, column: 21)
!3779 = !DILocation(line: 992, column: 21, scope: !3778)
!3780 = !DILocation(line: 992, column: 21, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3778, file: !3, line: 992, column: 21)
!3782 = !DILocation(line: 992, column: 7, scope: !3769)
!3783 = !DILocation(line: 992, column: 5, scope: !3769)
!3784 = !DILocation(line: 993, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 993, column: 6)
!3786 = !DILocation(line: 993, column: 6, scope: !3769)
!3787 = !DILocation(line: 994, column: 3, scope: !3785)
!3788 = !DILocation(line: 997, column: 23, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 997, column: 6)
!3790 = !DILocation(line: 997, column: 7, scope: !3789)
!3791 = !DILocation(line: 997, column: 6, scope: !3769)
!3792 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3793, file: !3, line: 998, type: !1886)
!3793 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 998, column: 10)
!3794 = !DILocation(line: 998, column: 10, scope: !3793)
!3795 = !DILocation(line: 998, column: 3, scope: !3789)
!3796 = !DILocalVariable(name: "__of_fwnode_handle_node", scope: !3797, file: !3, line: 1000, type: !1886)
!3797 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1000, column: 9)
!3798 = !DILocation(line: 1000, column: 9, scope: !3797)
!3799 = !DILocation(line: 1000, column: 2, scope: !3769)
!3800 = !DILocation(line: 1001, column: 1, scope: !3769)
!3801 = distinct !DISubprogram(name: "of_fwnode_graph_parse_endpoint", scope: !3, file: !3, line: 1003, type: !1984, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3802 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3801, file: !3, line: 1003, type: !50)
!3803 = !DILocation(line: 1003, column: 71, scope: !3801)
!3804 = !DILocalVariable(name: "endpoint", arg: 2, scope: !3801, file: !3, line: 1004, type: !1986)
!3805 = !DILocation(line: 1004, column: 32, scope: !3801)
!3806 = !DILocalVariable(name: "node", scope: !3801, file: !3, line: 1006, type: !7)
!3807 = !DILocation(line: 1006, column: 28, scope: !3801)
!3808 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3809, file: !3, line: 1006, type: !50)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 1006, column: 35)
!3810 = !DILocation(line: 1006, column: 35, scope: !3809)
!3811 = !DILocalVariable(name: "__mptr", scope: !3812, file: !3, line: 1006, type: !197)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 1006, column: 35)
!3813 = !DILocation(line: 1006, column: 35, scope: !3812)
!3814 = !DILocation(line: 1006, column: 35, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 1006, column: 35)
!3816 = !DILocalVariable(name: "port_node", scope: !3801, file: !3, line: 1007, type: !1886)
!3817 = !DILocation(line: 1007, column: 22, scope: !3801)
!3818 = !DILocation(line: 1007, column: 48, scope: !3801)
!3819 = !DILocation(line: 1007, column: 34, scope: !3801)
!3820 = !DILocation(line: 1009, column: 27, scope: !3801)
!3821 = !DILocation(line: 1009, column: 2, scope: !3801)
!3822 = !DILocation(line: 1009, column: 12, scope: !3801)
!3823 = !DILocation(line: 1009, column: 25, scope: !3801)
!3824 = !DILocation(line: 1011, column: 23, scope: !3801)
!3825 = !DILocation(line: 1011, column: 42, scope: !3801)
!3826 = !DILocation(line: 1011, column: 52, scope: !3801)
!3827 = !DILocation(line: 1011, column: 2, scope: !3801)
!3828 = !DILocation(line: 1012, column: 23, scope: !3801)
!3829 = !DILocation(line: 1012, column: 37, scope: !3801)
!3830 = !DILocation(line: 1012, column: 47, scope: !3801)
!3831 = !DILocation(line: 1012, column: 2, scope: !3801)
!3832 = !DILocation(line: 1014, column: 14, scope: !3801)
!3833 = !DILocation(line: 1014, column: 2, scope: !3801)
!3834 = !DILocation(line: 1016, column: 2, scope: !3801)
!3835 = distinct !DISubprogram(name: "of_fwnode_add_links", scope: !3, file: !3, line: 1420, type: !1994, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3836 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3835, file: !3, line: 1420, type: !50)
!3837 = !DILocation(line: 1420, column: 60, scope: !3835)
!3838 = !DILocalVariable(name: "dev", arg: 2, scope: !3835, file: !3, line: 1421, type: !1549)
!3839 = !DILocation(line: 1421, column: 26, scope: !3835)
!3840 = !DILocation(line: 1423, column: 6, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1423, column: 6)
!3842 = !DILocation(line: 1423, column: 6, scope: !3835)
!3843 = !DILocation(line: 1424, column: 3, scope: !3841)
!3844 = !DILocation(line: 1426, column: 30, scope: !3835)
!3845 = !DILocalVariable(name: "__to_of_node_fwnode", scope: !3846, file: !3, line: 1426, type: !50)
!3846 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1426, column: 35)
!3847 = !DILocation(line: 1426, column: 35, scope: !3846)
!3848 = !DILocalVariable(name: "__mptr", scope: !3849, file: !3, line: 1426, type: !197)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 1426, column: 35)
!3850 = !DILocation(line: 1426, column: 35, scope: !3849)
!3851 = !DILocation(line: 1426, column: 35, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 1426, column: 35)
!3853 = !DILocation(line: 1426, column: 9, scope: !3835)
!3854 = !DILocation(line: 1426, column: 2, scope: !3835)
!3855 = !DILocation(line: 1427, column: 1, scope: !3835)
!3856 = distinct !DISubprogram(name: "ERR_PTR", scope: !2253, file: !2253, line: 24, type: !3857, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!197, !158}
!3859 = !DILocalVariable(name: "error", arg: 1, scope: !3856, file: !2253, line: 24, type: !158)
!3860 = !DILocation(line: 24, column: 48, scope: !3856)
!3861 = !DILocation(line: 26, column: 18, scope: !3856)
!3862 = !DILocation(line: 26, column: 9, scope: !3856)
!3863 = !DILocation(line: 26, column: 2, scope: !3856)
!3864 = distinct !DISubprogram(name: "__fswab32", scope: !2140, file: !2140, line: 57, type: !3865, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!20, !20}
!3867 = !DILocalVariable(name: "val", arg: 1, scope: !3864, file: !2140, line: 57, type: !20)
!3868 = !DILocation(line: 57, column: 57, scope: !3864)
!3869 = !DILocation(line: 60, column: 23, scope: !3864)
!3870 = !DILocation(line: 60, column: 9, scope: !3864)
!3871 = !DILocation(line: 60, column: 2, scope: !3864)
!3872 = distinct !DISubprogram(name: "__arch_swab32", scope: !3873, file: !3873, line: 8, type: !3865, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3873 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!3874 = !DILocalVariable(name: "val", arg: 1, scope: !3872, file: !3873, line: 8, type: !20)
!3875 = !DILocation(line: 8, column: 61, scope: !3872)
!3876 = !DILocation(line: 10, column: 38, scope: !3872)
!3877 = !DILocation(line: 10, column: 2, scope: !3872)
!3878 = !{i32 392743}
!3879 = !DILocation(line: 11, column: 9, scope: !3872)
!3880 = !DILocation(line: 11, column: 2, scope: !3872)
!3881 = distinct !DISubprogram(name: "__fswab64", scope: !2140, file: !2140, line: 66, type: !3882, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!244, !244}
!3884 = !DILocalVariable(name: "val", arg: 1, scope: !3881, file: !2140, line: 66, type: !244)
!3885 = !DILocation(line: 66, column: 57, scope: !3881)
!3886 = !DILocation(line: 69, column: 23, scope: !3881)
!3887 = !DILocation(line: 69, column: 9, scope: !3881)
!3888 = !DILocation(line: 69, column: 2, scope: !3881)
!3889 = distinct !DISubprogram(name: "__arch_swab64", scope: !3873, file: !3873, line: 15, type: !3882, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3890 = !DILocalVariable(name: "val", arg: 1, scope: !3889, file: !3873, line: 15, type: !244)
!3891 = !DILocation(line: 15, column: 61, scope: !3889)
!3892 = !DILocation(line: 31, column: 38, scope: !3889)
!3893 = !DILocation(line: 31, column: 2, scope: !3889)
!3894 = !{i32 393147}
!3895 = !DILocation(line: 32, column: 9, scope: !3889)
!3896 = !DILocation(line: 32, column: 2, scope: !3889)
!3897 = distinct !DISubprogram(name: "__fswab16", scope: !2140, file: !2140, line: 48, type: !3898, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!354, !354}
!3900 = !DILocalVariable(name: "val", arg: 1, scope: !3897, file: !2140, line: 48, type: !354)
!3901 = !DILocation(line: 48, column: 57, scope: !3897)
!3902 = !DILocation(line: 53, column: 9, scope: !3897)
!3903 = !DILocation(line: 53, column: 2, scope: !3897)
!3904 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !10, file: !10, line: 494, type: !3905, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!6, !7, !13, !584, !170}
!3907 = !DILocalVariable(name: "np", arg: 1, scope: !3904, file: !10, line: 494, type: !7)
!3908 = !DILocation(line: 494, column: 72, scope: !3904)
!3909 = !DILocalVariable(name: "propname", arg: 2, scope: !3904, file: !10, line: 495, type: !13)
!3910 = !DILocation(line: 495, column: 23, scope: !3904)
!3911 = !DILocalVariable(name: "out_values", arg: 3, scope: !3904, file: !10, line: 496, type: !584)
!3912 = !DILocation(line: 496, column: 16, scope: !3904)
!3913 = !DILocalVariable(name: "sz", arg: 4, scope: !3904, file: !10, line: 496, type: !170)
!3914 = !DILocation(line: 496, column: 35, scope: !3904)
!3915 = !DILocalVariable(name: "ret", scope: !3904, file: !10, line: 498, type: !6)
!3916 = !DILocation(line: 498, column: 6, scope: !3904)
!3917 = !DILocation(line: 498, column: 48, scope: !3904)
!3918 = !DILocation(line: 498, column: 52, scope: !3904)
!3919 = !DILocation(line: 498, column: 62, scope: !3904)
!3920 = !DILocation(line: 499, column: 13, scope: !3904)
!3921 = !DILocation(line: 498, column: 12, scope: !3904)
!3922 = !DILocation(line: 500, column: 6, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3904, file: !10, line: 500, column: 6)
!3924 = !DILocation(line: 500, column: 10, scope: !3923)
!3925 = !DILocation(line: 500, column: 6, scope: !3904)
!3926 = !DILocation(line: 501, column: 3, scope: !3923)
!3927 = !DILocation(line: 503, column: 10, scope: !3923)
!3928 = !DILocation(line: 503, column: 3, scope: !3923)
!3929 = !DILocation(line: 504, column: 1, scope: !3904)
!3930 = distinct !DISubprogram(name: "is_of_node", scope: !10, file: !10, line: 155, type: !45, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3931 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3930, file: !10, line: 155, type: !50)
!3932 = !DILocation(line: 155, column: 59, scope: !3930)
!3933 = !DILocation(line: 157, column: 25, scope: !3930)
!3934 = !DILocation(line: 157, column: 10, scope: !3930)
!3935 = !DILocation(line: 157, column: 33, scope: !3930)
!3936 = !DILocation(line: 157, column: 36, scope: !3930)
!3937 = !DILocation(line: 157, column: 44, scope: !3930)
!3938 = !DILocation(line: 157, column: 48, scope: !3930)
!3939 = !DILocation(line: 0, scope: !3930)
!3940 = !DILocation(line: 157, column: 2, scope: !3930)
!3941 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2253, file: !2253, line: 39, type: !2254, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3942 = !DILocalVariable(name: "ptr", arg: 1, scope: !3941, file: !2253, line: 39, type: !56)
!3943 = !DILocation(line: 39, column: 68, scope: !3941)
!3944 = !DILocation(line: 41, column: 9, scope: !3941)
!3945 = !DILocation(line: 41, column: 24, scope: !3941)
!3946 = !DILocation(line: 41, column: 27, scope: !3941)
!3947 = !DILocation(line: 41, column: 2, scope: !3941)
!3948 = distinct !DISubprogram(name: "of_property_read_bool", scope: !10, file: !10, line: 1192, type: !3949, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!47, !7, !13}
!3951 = !DILocalVariable(name: "np", arg: 1, scope: !3948, file: !10, line: 1192, type: !7)
!3952 = !DILocation(line: 1192, column: 68, scope: !3948)
!3953 = !DILocalVariable(name: "propname", arg: 2, scope: !3948, file: !10, line: 1193, type: !13)
!3954 = !DILocation(line: 1193, column: 19, scope: !3948)
!3955 = !DILocalVariable(name: "prop", scope: !3948, file: !10, line: 1195, type: !1998)
!3956 = !DILocation(line: 1195, column: 19, scope: !3948)
!3957 = !DILocation(line: 1195, column: 43, scope: !3948)
!3958 = !DILocation(line: 1195, column: 47, scope: !3948)
!3959 = !DILocation(line: 1195, column: 26, scope: !3948)
!3960 = !DILocation(line: 1197, column: 9, scope: !3948)
!3961 = !DILocation(line: 1197, column: 2, scope: !3948)
!3962 = distinct !DISubprogram(name: "of_property_read_u8_array", scope: !10, file: !10, line: 436, type: !3963, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!6, !7, !13, !2326, !170}
!3965 = !DILocalVariable(name: "np", arg: 1, scope: !3962, file: !10, line: 436, type: !7)
!3966 = !DILocation(line: 436, column: 71, scope: !3962)
!3967 = !DILocalVariable(name: "propname", arg: 2, scope: !3962, file: !10, line: 437, type: !13)
!3968 = !DILocation(line: 437, column: 22, scope: !3962)
!3969 = !DILocalVariable(name: "out_values", arg: 3, scope: !3962, file: !10, line: 438, type: !2326)
!3970 = !DILocation(line: 438, column: 14, scope: !3962)
!3971 = !DILocalVariable(name: "sz", arg: 4, scope: !3962, file: !10, line: 438, type: !170)
!3972 = !DILocation(line: 438, column: 33, scope: !3962)
!3973 = !DILocalVariable(name: "ret", scope: !3962, file: !10, line: 440, type: !6)
!3974 = !DILocation(line: 440, column: 6, scope: !3962)
!3975 = !DILocation(line: 440, column: 47, scope: !3962)
!3976 = !DILocation(line: 440, column: 51, scope: !3962)
!3977 = !DILocation(line: 440, column: 61, scope: !3962)
!3978 = !DILocation(line: 441, column: 12, scope: !3962)
!3979 = !DILocation(line: 440, column: 12, scope: !3962)
!3980 = !DILocation(line: 442, column: 6, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3962, file: !10, line: 442, column: 6)
!3982 = !DILocation(line: 442, column: 10, scope: !3981)
!3983 = !DILocation(line: 442, column: 6, scope: !3962)
!3984 = !DILocation(line: 443, column: 3, scope: !3981)
!3985 = !DILocation(line: 445, column: 10, scope: !3981)
!3986 = !DILocation(line: 445, column: 3, scope: !3981)
!3987 = !DILocation(line: 446, column: 1, scope: !3962)
!3988 = distinct !DISubprogram(name: "of_property_read_u16_array", scope: !10, file: !10, line: 466, type: !3989, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!6, !7, !13, !2383, !170}
!3991 = !DILocalVariable(name: "np", arg: 1, scope: !3988, file: !10, line: 466, type: !7)
!3992 = !DILocation(line: 466, column: 72, scope: !3988)
!3993 = !DILocalVariable(name: "propname", arg: 2, scope: !3988, file: !10, line: 467, type: !13)
!3994 = !DILocation(line: 467, column: 23, scope: !3988)
!3995 = !DILocalVariable(name: "out_values", arg: 3, scope: !3988, file: !10, line: 468, type: !2383)
!3996 = !DILocation(line: 468, column: 16, scope: !3988)
!3997 = !DILocalVariable(name: "sz", arg: 4, scope: !3988, file: !10, line: 468, type: !170)
!3998 = !DILocation(line: 468, column: 35, scope: !3988)
!3999 = !DILocalVariable(name: "ret", scope: !3988, file: !10, line: 470, type: !6)
!4000 = !DILocation(line: 470, column: 6, scope: !3988)
!4001 = !DILocation(line: 470, column: 48, scope: !3988)
!4002 = !DILocation(line: 470, column: 52, scope: !3988)
!4003 = !DILocation(line: 470, column: 62, scope: !3988)
!4004 = !DILocation(line: 471, column: 13, scope: !3988)
!4005 = !DILocation(line: 470, column: 12, scope: !3988)
!4006 = !DILocation(line: 472, column: 6, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3988, file: !10, line: 472, column: 6)
!4008 = !DILocation(line: 472, column: 10, scope: !4007)
!4009 = !DILocation(line: 472, column: 6, scope: !3988)
!4010 = !DILocation(line: 473, column: 3, scope: !4007)
!4011 = !DILocation(line: 475, column: 10, scope: !4007)
!4012 = !DILocation(line: 475, column: 3, scope: !4007)
!4013 = !DILocation(line: 476, column: 1, scope: !3988)
!4014 = distinct !DISubprogram(name: "of_property_read_u64_array", scope: !10, file: !10, line: 522, type: !4015, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!6, !7, !13, !1868, !170}
!4017 = !DILocalVariable(name: "np", arg: 1, scope: !4014, file: !10, line: 522, type: !7)
!4018 = !DILocation(line: 522, column: 72, scope: !4014)
!4019 = !DILocalVariable(name: "propname", arg: 2, scope: !4014, file: !10, line: 523, type: !13)
!4020 = !DILocation(line: 523, column: 23, scope: !4014)
!4021 = !DILocalVariable(name: "out_values", arg: 3, scope: !4014, file: !10, line: 524, type: !1868)
!4022 = !DILocation(line: 524, column: 16, scope: !4014)
!4023 = !DILocalVariable(name: "sz", arg: 4, scope: !4014, file: !10, line: 524, type: !170)
!4024 = !DILocation(line: 524, column: 35, scope: !4014)
!4025 = !DILocalVariable(name: "ret", scope: !4014, file: !10, line: 526, type: !6)
!4026 = !DILocation(line: 526, column: 6, scope: !4014)
!4027 = !DILocation(line: 526, column: 48, scope: !4014)
!4028 = !DILocation(line: 526, column: 52, scope: !4014)
!4029 = !DILocation(line: 526, column: 62, scope: !4014)
!4030 = !DILocation(line: 527, column: 13, scope: !4014)
!4031 = !DILocation(line: 526, column: 12, scope: !4014)
!4032 = !DILocation(line: 528, column: 6, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4014, file: !10, line: 528, column: 6)
!4034 = !DILocation(line: 528, column: 10, scope: !4033)
!4035 = !DILocation(line: 528, column: 6, scope: !4014)
!4036 = !DILocation(line: 529, column: 3, scope: !4033)
!4037 = !DILocation(line: 531, column: 10, scope: !4033)
!4038 = !DILocation(line: 531, column: 3, scope: !4033)
!4039 = !DILocation(line: 532, column: 1, scope: !4014)
!4040 = distinct !DISubprogram(name: "of_property_read_string_array", scope: !10, file: !10, line: 1133, type: !4041, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!6, !7, !13, !1950, !170}
!4043 = !DILocalVariable(name: "np", arg: 1, scope: !4040, file: !10, line: 1133, type: !7)
!4044 = !DILocation(line: 1133, column: 75, scope: !4040)
!4045 = !DILocalVariable(name: "propname", arg: 2, scope: !4040, file: !10, line: 1134, type: !13)
!4046 = !DILocation(line: 1134, column: 19, scope: !4040)
!4047 = !DILocalVariable(name: "out_strs", arg: 3, scope: !4040, file: !10, line: 1134, type: !1950)
!4048 = !DILocation(line: 1134, column: 42, scope: !4040)
!4049 = !DILocalVariable(name: "sz", arg: 4, scope: !4040, file: !10, line: 1135, type: !170)
!4050 = !DILocation(line: 1135, column: 14, scope: !4040)
!4051 = !DILocation(line: 1137, column: 40, scope: !4040)
!4052 = !DILocation(line: 1137, column: 44, scope: !4040)
!4053 = !DILocation(line: 1137, column: 54, scope: !4040)
!4054 = !DILocation(line: 1137, column: 64, scope: !4040)
!4055 = !DILocation(line: 1137, column: 9, scope: !4040)
!4056 = !DILocation(line: 1137, column: 2, scope: !4040)
!4057 = distinct !DISubprogram(name: "of_property_count_strings", scope: !10, file: !10, line: 1152, type: !4058, scopeLine: 1154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!6, !7, !13}
!4060 = !DILocalVariable(name: "np", arg: 1, scope: !4057, file: !10, line: 1152, type: !7)
!4061 = !DILocation(line: 1152, column: 71, scope: !4057)
!4062 = !DILocalVariable(name: "propname", arg: 2, scope: !4057, file: !10, line: 1153, type: !13)
!4063 = !DILocation(line: 1153, column: 22, scope: !4057)
!4064 = !DILocation(line: 1155, column: 40, scope: !4057)
!4065 = !DILocation(line: 1155, column: 44, scope: !4057)
!4066 = !DILocation(line: 1155, column: 9, scope: !4057)
!4067 = !DILocation(line: 1155, column: 2, scope: !4057)
!4068 = distinct !DISubprogram(name: "kbasename", scope: !4069, file: !4069, line: 252, type: !4070, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4069 = !DIFile(filename: "./include/linux/string.h", directory: "/home/lizy2001/genbc/linux")
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!13, !13}
!4072 = !DILocalVariable(name: "path", arg: 1, scope: !4068, file: !4069, line: 252, type: !13)
!4073 = !DILocation(line: 252, column: 49, scope: !4068)
!4074 = !DILocalVariable(name: "tail", scope: !4068, file: !4069, line: 254, type: !13)
!4075 = !DILocation(line: 254, column: 14, scope: !4068)
!4076 = !DILocation(line: 254, column: 29, scope: !4068)
!4077 = !DILocation(line: 254, column: 21, scope: !4068)
!4078 = !DILocation(line: 255, column: 9, scope: !4068)
!4079 = !DILocation(line: 255, column: 16, scope: !4068)
!4080 = !DILocation(line: 255, column: 21, scope: !4068)
!4081 = !DILocation(line: 255, column: 27, scope: !4068)
!4082 = !DILocation(line: 255, column: 2, scope: !4068)
!4083 = distinct !DISubprogram(name: "of_link_to_suppliers", scope: !3, file: !3, line: 1402, type: !4084, scopeLine: 1404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!6, !1549, !1886}
!4086 = !DILocalVariable(name: "dev", arg: 1, scope: !4083, file: !3, line: 1402, type: !1549)
!4087 = !DILocation(line: 1402, column: 48, scope: !4083)
!4088 = !DILocalVariable(name: "con_np", arg: 2, scope: !4083, file: !3, line: 1403, type: !1886)
!4089 = !DILocation(line: 1403, column: 27, scope: !4083)
!4090 = !DILocalVariable(name: "child", scope: !4083, file: !3, line: 1405, type: !1886)
!4091 = !DILocation(line: 1405, column: 22, scope: !4083)
!4092 = !DILocalVariable(name: "p", scope: !4083, file: !3, line: 1406, type: !1998)
!4093 = !DILocation(line: 1406, column: 19, scope: !4083)
!4094 = !DILocalVariable(name: "ret", scope: !4083, file: !3, line: 1407, type: !6)
!4095 = !DILocation(line: 1407, column: 6, scope: !4083)
!4096 = !DILocation(line: 1409, column: 2, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 1409, column: 2)
!4098 = !DILocation(line: 1409, column: 2, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1409, column: 2)
!4100 = !DILocation(line: 1410, column: 24, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 1410, column: 7)
!4102 = !DILocation(line: 1410, column: 29, scope: !4101)
!4103 = !DILocation(line: 1410, column: 37, scope: !4101)
!4104 = !DILocation(line: 1410, column: 40, scope: !4101)
!4105 = !DILocation(line: 1410, column: 7, scope: !4101)
!4106 = !DILocation(line: 1410, column: 7, scope: !4099)
!4107 = !DILocation(line: 1411, column: 8, scope: !4101)
!4108 = !DILocation(line: 1411, column: 4, scope: !4101)
!4109 = !DILocation(line: 1410, column: 44, scope: !4101)
!4110 = distinct !{!4110, !4096, !4111}
!4111 = !DILocation(line: 1411, column: 11, scope: !4097)
!4112 = !DILocation(line: 1413, column: 2, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 1413, column: 2)
!4114 = !DILocation(line: 1413, column: 2, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 1413, column: 2)
!4116 = !DILocation(line: 1414, column: 28, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 1414, column: 7)
!4118 = !DILocation(line: 1414, column: 33, scope: !4117)
!4119 = !DILocation(line: 1414, column: 7, scope: !4117)
!4120 = !DILocation(line: 1414, column: 40, scope: !4117)
!4121 = !DILocation(line: 1414, column: 44, scope: !4117)
!4122 = !DILocation(line: 1414, column: 7, scope: !4115)
!4123 = !DILocation(line: 1415, column: 8, scope: !4117)
!4124 = !DILocation(line: 1415, column: 4, scope: !4117)
!4125 = distinct !{!4125, !4112, !4126}
!4126 = !DILocation(line: 1415, column: 11, scope: !4113)
!4127 = !DILocation(line: 1417, column: 9, scope: !4083)
!4128 = !DILocation(line: 1417, column: 2, scope: !4083)
!4129 = distinct !DISubprogram(name: "of_link_property", scope: !3, file: !3, line: 1372, type: !4130, scopeLine: 1374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!6, !1549, !1886, !13}
!4132 = !DILocalVariable(name: "dev", arg: 1, scope: !4129, file: !3, line: 1372, type: !1549)
!4133 = !DILocation(line: 1372, column: 44, scope: !4129)
!4134 = !DILocalVariable(name: "con_np", arg: 2, scope: !4129, file: !3, line: 1372, type: !1886)
!4135 = !DILocation(line: 1372, column: 69, scope: !4129)
!4136 = !DILocalVariable(name: "prop_name", arg: 3, scope: !4129, file: !3, line: 1373, type: !13)
!4137 = !DILocation(line: 1373, column: 21, scope: !4129)
!4138 = !DILocalVariable(name: "phandle", scope: !4129, file: !3, line: 1375, type: !1886)
!4139 = !DILocation(line: 1375, column: 22, scope: !4129)
!4140 = !DILocalVariable(name: "s", scope: !4129, file: !3, line: 1376, type: !4141)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!4142 = !DILocation(line: 1376, column: 34, scope: !4129)
!4143 = !DILocalVariable(name: "i", scope: !4129, file: !3, line: 1377, type: !22)
!4144 = !DILocation(line: 1377, column: 15, scope: !4129)
!4145 = !DILocalVariable(name: "matched", scope: !4129, file: !3, line: 1378, type: !47)
!4146 = !DILocation(line: 1378, column: 7, scope: !4129)
!4147 = !DILocalVariable(name: "ret", scope: !4129, file: !3, line: 1379, type: !6)
!4148 = !DILocation(line: 1379, column: 6, scope: !4129)
!4149 = !DILocalVariable(name: "dl_flags", scope: !4129, file: !3, line: 1380, type: !18)
!4150 = !DILocation(line: 1380, column: 6, scope: !4129)
!4151 = !DILocation(line: 1382, column: 6, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1382, column: 6)
!4153 = !DILocation(line: 1382, column: 11, scope: !4152)
!4154 = !DILocation(line: 1382, column: 22, scope: !4152)
!4155 = !DILocation(line: 1382, column: 19, scope: !4152)
!4156 = !DILocation(line: 1382, column: 6, scope: !4129)
!4157 = !DILocation(line: 1383, column: 14, scope: !4152)
!4158 = !DILocation(line: 1383, column: 12, scope: !4152)
!4159 = !DILocation(line: 1383, column: 3, scope: !4152)
!4160 = !DILocation(line: 1385, column: 12, scope: !4152)
!4161 = !DILocation(line: 1388, column: 2, scope: !4129)
!4162 = !DILocation(line: 1388, column: 10, scope: !4129)
!4163 = !DILocation(line: 1388, column: 18, scope: !4129)
!4164 = !DILocation(line: 1388, column: 21, scope: !4129)
!4165 = !DILocation(line: 1388, column: 24, scope: !4129)
!4166 = !DILocation(line: 0, scope: !4129)
!4167 = !DILocation(line: 1389, column: 3, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 1388, column: 36)
!4169 = !DILocation(line: 1389, column: 21, scope: !4168)
!4170 = !DILocation(line: 1389, column: 24, scope: !4168)
!4171 = !DILocation(line: 1389, column: 35, scope: !4168)
!4172 = !DILocation(line: 1389, column: 43, scope: !4168)
!4173 = !DILocation(line: 1389, column: 54, scope: !4168)
!4174 = !DILocation(line: 1389, column: 19, scope: !4168)
!4175 = !DILocation(line: 1390, column: 12, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 1389, column: 59)
!4177 = !DILocation(line: 1391, column: 5, scope: !4176)
!4178 = !DILocation(line: 1392, column: 27, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 1392, column: 8)
!4180 = !DILocation(line: 1392, column: 32, scope: !4179)
!4181 = !DILocation(line: 1392, column: 41, scope: !4179)
!4182 = !DILocation(line: 1392, column: 8, scope: !4179)
!4183 = !DILocation(line: 1393, column: 9, scope: !4179)
!4184 = !DILocation(line: 1392, column: 8, scope: !4176)
!4185 = !DILocation(line: 1394, column: 9, scope: !4179)
!4186 = !DILocation(line: 1394, column: 5, scope: !4179)
!4187 = !DILocation(line: 1395, column: 16, scope: !4176)
!4188 = !DILocation(line: 1395, column: 4, scope: !4176)
!4189 = distinct !{!4189, !4167, !4190}
!4190 = !DILocation(line: 1396, column: 3, scope: !4168)
!4191 = !DILocation(line: 1397, column: 4, scope: !4168)
!4192 = distinct !{!4192, !4161, !4193}
!4193 = !DILocation(line: 1398, column: 2, scope: !4129)
!4194 = !DILocation(line: 1399, column: 9, scope: !4129)
!4195 = !DILocation(line: 1399, column: 2, scope: !4129)
!4196 = distinct !DISubprogram(name: "of_link_to_phandle", scope: !3, file: !3, line: 1082, type: !4197, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!6, !1549, !1886, !18}
!4199 = !DILocalVariable(name: "dev", arg: 1, scope: !4196, file: !3, line: 1082, type: !1549)
!4200 = !DILocation(line: 1082, column: 46, scope: !4196)
!4201 = !DILocalVariable(name: "sup_np", arg: 2, scope: !4196, file: !3, line: 1082, type: !1886)
!4202 = !DILocation(line: 1082, column: 71, scope: !4196)
!4203 = !DILocalVariable(name: "dl_flags", arg: 3, scope: !4196, file: !3, line: 1083, type: !18)
!4204 = !DILocation(line: 1083, column: 14, scope: !4196)
!4205 = !DILocalVariable(name: "sup_dev", scope: !4196, file: !3, line: 1085, type: !1549)
!4206 = !DILocation(line: 1085, column: 17, scope: !4196)
!4207 = !DILocalVariable(name: "sup_par_dev", scope: !4196, file: !3, line: 1085, type: !1549)
!4208 = !DILocation(line: 1085, column: 27, scope: !4196)
!4209 = !DILocalVariable(name: "ret", scope: !4196, file: !3, line: 1086, type: !6)
!4210 = !DILocation(line: 1086, column: 6, scope: !4196)
!4211 = !DILocalVariable(name: "tmp_np", scope: !4196, file: !3, line: 1087, type: !1886)
!4212 = !DILocation(line: 1087, column: 22, scope: !4196)
!4213 = !DILocation(line: 1087, column: 31, scope: !4196)
!4214 = !DILocation(line: 1089, column: 14, scope: !4196)
!4215 = !DILocation(line: 1089, column: 2, scope: !4196)
!4216 = !DILocation(line: 1094, column: 2, scope: !4196)
!4217 = !DILocation(line: 1094, column: 9, scope: !4196)
!4218 = !DILocation(line: 1097, column: 31, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 1097, column: 7)
!4220 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 1094, column: 17)
!4221 = !DILocation(line: 1097, column: 8, scope: !4219)
!4222 = !DILocation(line: 1097, column: 7, scope: !4220)
!4223 = !DILocation(line: 1098, column: 16, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 1097, column: 40)
!4225 = !DILocation(line: 1098, column: 4, scope: !4224)
!4226 = !DILocation(line: 1099, column: 11, scope: !4224)
!4227 = !DILocation(line: 1100, column: 3, scope: !4224)
!4228 = !DILocation(line: 1102, column: 24, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 1102, column: 7)
!4230 = !DILocation(line: 1102, column: 7, scope: !4229)
!4231 = !DILocation(line: 1102, column: 7, scope: !4220)
!4232 = !DILocation(line: 1103, column: 4, scope: !4229)
!4233 = !DILocation(line: 1105, column: 31, scope: !4220)
!4234 = !DILocation(line: 1105, column: 12, scope: !4220)
!4235 = !DILocation(line: 1105, column: 10, scope: !4220)
!4236 = distinct !{!4236, !4216, !4237}
!4237 = !DILocation(line: 1106, column: 2, scope: !4196)
!4238 = !DILocation(line: 1108, column: 7, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 1108, column: 6)
!4240 = !DILocation(line: 1108, column: 6, scope: !4196)
!4241 = !DILocation(line: 1110, column: 3, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 1108, column: 15)
!4243 = !DILocation(line: 1118, column: 24, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 1118, column: 6)
!4245 = !DILocation(line: 1118, column: 29, scope: !4244)
!4246 = !DILocation(line: 1118, column: 38, scope: !4244)
!4247 = !DILocation(line: 1118, column: 6, scope: !4244)
!4248 = !DILocation(line: 1118, column: 6, scope: !4196)
!4249 = !DILocation(line: 1120, column: 15, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 1118, column: 47)
!4251 = !DILocation(line: 1120, column: 3, scope: !4250)
!4252 = !DILocation(line: 1121, column: 3, scope: !4250)
!4253 = !DILocation(line: 1123, column: 12, scope: !4196)
!4254 = !DILocation(line: 1123, column: 10, scope: !4196)
!4255 = !DILocation(line: 1124, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 1124, column: 6)
!4257 = !DILocation(line: 1124, column: 15, scope: !4256)
!4258 = !DILocation(line: 1124, column: 37, scope: !4256)
!4259 = !DILocation(line: 1124, column: 18, scope: !4256)
!4260 = !DILocation(line: 1124, column: 6, scope: !4196)
!4261 = !DILocation(line: 1128, column: 15, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 1124, column: 60)
!4263 = !DILocation(line: 1128, column: 3, scope: !4262)
!4264 = !DILocation(line: 1129, column: 3, scope: !4262)
!4265 = !DILocation(line: 1130, column: 14, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 1130, column: 13)
!4267 = !DILocation(line: 1130, column: 13, scope: !4256)
!4268 = !DILocation(line: 1136, column: 7, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 1136, column: 7)
!4270 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 1130, column: 23)
!4271 = !DILocation(line: 1136, column: 16, scope: !4269)
!4272 = !DILocation(line: 1136, column: 7, scope: !4270)
!4273 = !DILocation(line: 1137, column: 16, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 1136, column: 43)
!4275 = !DILocation(line: 1137, column: 4, scope: !4274)
!4276 = !DILocation(line: 1138, column: 4, scope: !4274)
!4277 = !DILocation(line: 1141, column: 40, scope: !4270)
!4278 = !DILocation(line: 1141, column: 17, scope: !4270)
!4279 = !DILocation(line: 1141, column: 15, scope: !4270)
!4280 = !DILocation(line: 1143, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 1143, column: 7)
!4282 = !DILocation(line: 1143, column: 19, scope: !4281)
!4283 = !DILocation(line: 1143, column: 42, scope: !4281)
!4284 = !DILocation(line: 1143, column: 47, scope: !4281)
!4285 = !DILocation(line: 1143, column: 22, scope: !4281)
!4286 = !DILocation(line: 1143, column: 7, scope: !4270)
!4287 = !DILocation(line: 1147, column: 8, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 1143, column: 61)
!4289 = !DILocation(line: 1148, column: 3, scope: !4288)
!4290 = !DILocation(line: 1153, column: 8, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 1148, column: 10)
!4292 = !DILocation(line: 1156, column: 15, scope: !4270)
!4293 = !DILocation(line: 1156, column: 3, scope: !4270)
!4294 = !DILocation(line: 1157, column: 14, scope: !4270)
!4295 = !DILocation(line: 1157, column: 3, scope: !4270)
!4296 = !DILocation(line: 1158, column: 10, scope: !4270)
!4297 = !DILocation(line: 1158, column: 3, scope: !4270)
!4298 = !DILocation(line: 1160, column: 14, scope: !4196)
!4299 = !DILocation(line: 1160, column: 2, scope: !4196)
!4300 = !DILocation(line: 1161, column: 23, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 1161, column: 6)
!4302 = !DILocation(line: 1161, column: 28, scope: !4301)
!4303 = !DILocation(line: 1161, column: 37, scope: !4301)
!4304 = !DILocation(line: 1161, column: 7, scope: !4301)
!4305 = !DILocation(line: 1161, column: 6, scope: !4196)
!4306 = !DILocation(line: 1162, column: 7, scope: !4301)
!4307 = !DILocation(line: 1162, column: 3, scope: !4301)
!4308 = !DILocation(line: 1163, column: 13, scope: !4196)
!4309 = !DILocation(line: 1163, column: 2, scope: !4196)
!4310 = !DILocation(line: 1164, column: 9, scope: !4196)
!4311 = !DILocation(line: 1164, column: 2, scope: !4196)
!4312 = !DILocation(line: 1165, column: 1, scope: !4196)
!4313 = distinct !DISubprogram(name: "parse_clocks", scope: !3, file: !3, line: 1285, type: !2052, scopeLine: 1285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4314 = !DILocalVariable(name: "np", arg: 1, scope: !4313, file: !3, line: 1285, type: !1886)
!4315 = !DILocation(line: 1285, column: 1, scope: !4313)
!4316 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4313, file: !3, line: 1285, type: !13)
!4317 = !DILocalVariable(name: "index", arg: 3, scope: !4313, file: !3, line: 1285, type: !6)
!4318 = distinct !DISubprogram(name: "parse_interconnects", scope: !3, file: !3, line: 1286, type: !2052, scopeLine: 1286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4319 = !DILocalVariable(name: "np", arg: 1, scope: !4318, file: !3, line: 1286, type: !1886)
!4320 = !DILocation(line: 1286, column: 1, scope: !4318)
!4321 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4318, file: !3, line: 1286, type: !13)
!4322 = !DILocalVariable(name: "index", arg: 3, scope: !4318, file: !3, line: 1286, type: !6)
!4323 = distinct !DISubprogram(name: "parse_iommus", scope: !3, file: !3, line: 1287, type: !2052, scopeLine: 1287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4324 = !DILocalVariable(name: "np", arg: 1, scope: !4323, file: !3, line: 1287, type: !1886)
!4325 = !DILocation(line: 1287, column: 1, scope: !4323)
!4326 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4323, file: !3, line: 1287, type: !13)
!4327 = !DILocalVariable(name: "index", arg: 3, scope: !4323, file: !3, line: 1287, type: !6)
!4328 = distinct !DISubprogram(name: "parse_iommu_maps", scope: !3, file: !3, line: 1313, type: !2052, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4329 = !DILocalVariable(name: "np", arg: 1, scope: !4328, file: !3, line: 1313, type: !1886)
!4330 = !DILocation(line: 1313, column: 65, scope: !4328)
!4331 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4328, file: !3, line: 1314, type: !13)
!4332 = !DILocation(line: 1314, column: 22, scope: !4328)
!4333 = !DILocalVariable(name: "index", arg: 3, scope: !4328, file: !3, line: 1314, type: !6)
!4334 = !DILocation(line: 1314, column: 37, scope: !4328)
!4335 = !DILocation(line: 1316, column: 13, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 1316, column: 6)
!4337 = !DILocation(line: 1316, column: 6, scope: !4336)
!4338 = !DILocation(line: 1316, column: 6, scope: !4328)
!4339 = !DILocation(line: 1317, column: 3, scope: !4336)
!4340 = !DILocation(line: 1319, column: 26, scope: !4328)
!4341 = !DILocation(line: 1319, column: 30, scope: !4328)
!4342 = !DILocation(line: 1319, column: 42, scope: !4328)
!4343 = !DILocation(line: 1319, column: 48, scope: !4328)
!4344 = !DILocation(line: 1319, column: 53, scope: !4328)
!4345 = !DILocation(line: 1319, column: 9, scope: !4328)
!4346 = !DILocation(line: 1319, column: 2, scope: !4328)
!4347 = !DILocation(line: 1320, column: 1, scope: !4328)
!4348 = distinct !DISubprogram(name: "parse_mboxes", scope: !3, file: !3, line: 1288, type: !2052, scopeLine: 1288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4349 = !DILocalVariable(name: "np", arg: 1, scope: !4348, file: !3, line: 1288, type: !1886)
!4350 = !DILocation(line: 1288, column: 1, scope: !4348)
!4351 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4348, file: !3, line: 1288, type: !13)
!4352 = !DILocalVariable(name: "index", arg: 3, scope: !4348, file: !3, line: 1288, type: !6)
!4353 = distinct !DISubprogram(name: "parse_io_channels", scope: !3, file: !3, line: 1289, type: !2052, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4354 = !DILocalVariable(name: "np", arg: 1, scope: !4353, file: !3, line: 1289, type: !1886)
!4355 = !DILocation(line: 1289, column: 1, scope: !4353)
!4356 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4353, file: !3, line: 1289, type: !13)
!4357 = !DILocalVariable(name: "index", arg: 3, scope: !4353, file: !3, line: 1289, type: !6)
!4358 = distinct !DISubprogram(name: "parse_interrupt_parent", scope: !3, file: !3, line: 1290, type: !2052, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4359 = !DILocalVariable(name: "np", arg: 1, scope: !4358, file: !3, line: 1290, type: !1886)
!4360 = !DILocation(line: 1290, column: 1, scope: !4358)
!4361 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4358, file: !3, line: 1290, type: !13)
!4362 = !DILocalVariable(name: "index", arg: 3, scope: !4358, file: !3, line: 1290, type: !6)
!4363 = distinct !DISubprogram(name: "parse_dmas", scope: !3, file: !3, line: 1291, type: !2052, scopeLine: 1291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4364 = !DILocalVariable(name: "np", arg: 1, scope: !4363, file: !3, line: 1291, type: !1886)
!4365 = !DILocation(line: 1291, column: 1, scope: !4363)
!4366 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4363, file: !3, line: 1291, type: !13)
!4367 = !DILocalVariable(name: "index", arg: 3, scope: !4363, file: !3, line: 1291, type: !6)
!4368 = distinct !DISubprogram(name: "parse_power_domains", scope: !3, file: !3, line: 1292, type: !2052, scopeLine: 1292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4369 = !DILocalVariable(name: "np", arg: 1, scope: !4368, file: !3, line: 1292, type: !1886)
!4370 = !DILocation(line: 1292, column: 1, scope: !4368)
!4371 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4368, file: !3, line: 1292, type: !13)
!4372 = !DILocalVariable(name: "index", arg: 3, scope: !4368, file: !3, line: 1292, type: !6)
!4373 = distinct !DISubprogram(name: "parse_hwlocks", scope: !3, file: !3, line: 1293, type: !2052, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4374 = !DILocalVariable(name: "np", arg: 1, scope: !4373, file: !3, line: 1293, type: !1886)
!4375 = !DILocation(line: 1293, column: 1, scope: !4373)
!4376 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4373, file: !3, line: 1293, type: !13)
!4377 = !DILocalVariable(name: "index", arg: 3, scope: !4373, file: !3, line: 1293, type: !6)
!4378 = distinct !DISubprogram(name: "parse_extcon", scope: !3, file: !3, line: 1294, type: !2052, scopeLine: 1294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4379 = !DILocalVariable(name: "np", arg: 1, scope: !4378, file: !3, line: 1294, type: !1886)
!4380 = !DILocation(line: 1294, column: 1, scope: !4378)
!4381 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4378, file: !3, line: 1294, type: !13)
!4382 = !DILocalVariable(name: "index", arg: 3, scope: !4378, file: !3, line: 1294, type: !6)
!4383 = distinct !DISubprogram(name: "parse_interrupts_extended", scope: !3, file: !3, line: 1295, type: !2052, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4384 = !DILocalVariable(name: "np", arg: 1, scope: !4383, file: !3, line: 1295, type: !1886)
!4385 = !DILocation(line: 1295, column: 1, scope: !4383)
!4386 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4383, file: !3, line: 1295, type: !13)
!4387 = !DILocalVariable(name: "index", arg: 3, scope: !4383, file: !3, line: 1295, type: !6)
!4388 = distinct !DISubprogram(name: "parse_nvmem_cells", scope: !3, file: !3, line: 1297, type: !2052, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4389 = !DILocalVariable(name: "np", arg: 1, scope: !4388, file: !3, line: 1297, type: !1886)
!4390 = !DILocation(line: 1297, column: 1, scope: !4388)
!4391 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4388, file: !3, line: 1297, type: !13)
!4392 = !DILocalVariable(name: "index", arg: 3, scope: !4388, file: !3, line: 1297, type: !6)
!4393 = distinct !DISubprogram(name: "parse_phys", scope: !3, file: !3, line: 1298, type: !2052, scopeLine: 1298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4394 = !DILocalVariable(name: "np", arg: 1, scope: !4393, file: !3, line: 1298, type: !1886)
!4395 = !DILocation(line: 1298, column: 1, scope: !4393)
!4396 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4393, file: !3, line: 1298, type: !13)
!4397 = !DILocalVariable(name: "index", arg: 3, scope: !4393, file: !3, line: 1298, type: !6)
!4398 = distinct !DISubprogram(name: "parse_wakeup_parent", scope: !3, file: !3, line: 1299, type: !2052, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4399 = !DILocalVariable(name: "np", arg: 1, scope: !4398, file: !3, line: 1299, type: !1886)
!4400 = !DILocation(line: 1299, column: 1, scope: !4398)
!4401 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4398, file: !3, line: 1299, type: !13)
!4402 = !DILocalVariable(name: "index", arg: 3, scope: !4398, file: !3, line: 1299, type: !6)
!4403 = distinct !DISubprogram(name: "parse_pinctrl0", scope: !3, file: !3, line: 1300, type: !2052, scopeLine: 1300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4404 = !DILocalVariable(name: "np", arg: 1, scope: !4403, file: !3, line: 1300, type: !1886)
!4405 = !DILocation(line: 1300, column: 1, scope: !4403)
!4406 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4403, file: !3, line: 1300, type: !13)
!4407 = !DILocalVariable(name: "index", arg: 3, scope: !4403, file: !3, line: 1300, type: !6)
!4408 = distinct !DISubprogram(name: "parse_pinctrl1", scope: !3, file: !3, line: 1301, type: !2052, scopeLine: 1301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4409 = !DILocalVariable(name: "np", arg: 1, scope: !4408, file: !3, line: 1301, type: !1886)
!4410 = !DILocation(line: 1301, column: 1, scope: !4408)
!4411 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4408, file: !3, line: 1301, type: !13)
!4412 = !DILocalVariable(name: "index", arg: 3, scope: !4408, file: !3, line: 1301, type: !6)
!4413 = distinct !DISubprogram(name: "parse_pinctrl2", scope: !3, file: !3, line: 1302, type: !2052, scopeLine: 1302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4414 = !DILocalVariable(name: "np", arg: 1, scope: !4413, file: !3, line: 1302, type: !1886)
!4415 = !DILocation(line: 1302, column: 1, scope: !4413)
!4416 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4413, file: !3, line: 1302, type: !13)
!4417 = !DILocalVariable(name: "index", arg: 3, scope: !4413, file: !3, line: 1302, type: !6)
!4418 = distinct !DISubprogram(name: "parse_pinctrl3", scope: !3, file: !3, line: 1303, type: !2052, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4419 = !DILocalVariable(name: "np", arg: 1, scope: !4418, file: !3, line: 1303, type: !1886)
!4420 = !DILocation(line: 1303, column: 1, scope: !4418)
!4421 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4418, file: !3, line: 1303, type: !13)
!4422 = !DILocalVariable(name: "index", arg: 3, scope: !4418, file: !3, line: 1303, type: !6)
!4423 = distinct !DISubprogram(name: "parse_pinctrl4", scope: !3, file: !3, line: 1304, type: !2052, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4424 = !DILocalVariable(name: "np", arg: 1, scope: !4423, file: !3, line: 1304, type: !1886)
!4425 = !DILocation(line: 1304, column: 1, scope: !4423)
!4426 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4423, file: !3, line: 1304, type: !13)
!4427 = !DILocalVariable(name: "index", arg: 3, scope: !4423, file: !3, line: 1304, type: !6)
!4428 = distinct !DISubprogram(name: "parse_pinctrl5", scope: !3, file: !3, line: 1305, type: !2052, scopeLine: 1305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4429 = !DILocalVariable(name: "np", arg: 1, scope: !4428, file: !3, line: 1305, type: !1886)
!4430 = !DILocation(line: 1305, column: 1, scope: !4428)
!4431 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4428, file: !3, line: 1305, type: !13)
!4432 = !DILocalVariable(name: "index", arg: 3, scope: !4428, file: !3, line: 1305, type: !6)
!4433 = distinct !DISubprogram(name: "parse_pinctrl6", scope: !3, file: !3, line: 1306, type: !2052, scopeLine: 1306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4434 = !DILocalVariable(name: "np", arg: 1, scope: !4433, file: !3, line: 1306, type: !1886)
!4435 = !DILocation(line: 1306, column: 1, scope: !4433)
!4436 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4433, file: !3, line: 1306, type: !13)
!4437 = !DILocalVariable(name: "index", arg: 3, scope: !4433, file: !3, line: 1306, type: !6)
!4438 = distinct !DISubprogram(name: "parse_pinctrl7", scope: !3, file: !3, line: 1307, type: !2052, scopeLine: 1307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4439 = !DILocalVariable(name: "np", arg: 1, scope: !4438, file: !3, line: 1307, type: !1886)
!4440 = !DILocation(line: 1307, column: 1, scope: !4438)
!4441 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4438, file: !3, line: 1307, type: !13)
!4442 = !DILocalVariable(name: "index", arg: 3, scope: !4438, file: !3, line: 1307, type: !6)
!4443 = distinct !DISubprogram(name: "parse_pinctrl8", scope: !3, file: !3, line: 1308, type: !2052, scopeLine: 1308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4444 = !DILocalVariable(name: "np", arg: 1, scope: !4443, file: !3, line: 1308, type: !1886)
!4445 = !DILocation(line: 1308, column: 1, scope: !4443)
!4446 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4443, file: !3, line: 1308, type: !13)
!4447 = !DILocalVariable(name: "index", arg: 3, scope: !4443, file: !3, line: 1308, type: !6)
!4448 = distinct !DISubprogram(name: "parse_regulators", scope: !3, file: !3, line: 1309, type: !2052, scopeLine: 1309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4449 = !DILocalVariable(name: "np", arg: 1, scope: !4448, file: !3, line: 1309, type: !1886)
!4450 = !DILocation(line: 1309, column: 1, scope: !4448)
!4451 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4448, file: !3, line: 1309, type: !13)
!4452 = !DILocalVariable(name: "index", arg: 3, scope: !4448, file: !3, line: 1309, type: !6)
!4453 = distinct !DISubprogram(name: "parse_gpio", scope: !3, file: !3, line: 1310, type: !2052, scopeLine: 1310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4454 = !DILocalVariable(name: "np", arg: 1, scope: !4453, file: !3, line: 1310, type: !1886)
!4455 = !DILocation(line: 1310, column: 1, scope: !4453)
!4456 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4453, file: !3, line: 1310, type: !13)
!4457 = !DILocalVariable(name: "index", arg: 3, scope: !4453, file: !3, line: 1310, type: !6)
!4458 = distinct !DISubprogram(name: "parse_gpios", scope: !3, file: !3, line: 1311, type: !2052, scopeLine: 1311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4459 = !DILocalVariable(name: "np", arg: 1, scope: !4458, file: !3, line: 1311, type: !1886)
!4460 = !DILocation(line: 1311, column: 1, scope: !4458)
!4461 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4458, file: !3, line: 1311, type: !13)
!4462 = !DILocalVariable(name: "index", arg: 3, scope: !4458, file: !3, line: 1311, type: !6)
!4463 = distinct !DISubprogram(name: "parse_prop_cells", scope: !3, file: !3, line: 1186, type: !4464, scopeLine: 1190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!1886, !1886, !13, !6, !13, !13}
!4466 = !DILocalVariable(name: "np", arg: 1, scope: !4463, file: !3, line: 1186, type: !1886)
!4467 = !DILocation(line: 1186, column: 65, scope: !4463)
!4468 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4463, file: !3, line: 1187, type: !13)
!4469 = !DILocation(line: 1187, column: 22, scope: !4463)
!4470 = !DILocalVariable(name: "index", arg: 3, scope: !4463, file: !3, line: 1187, type: !6)
!4471 = !DILocation(line: 1187, column: 37, scope: !4463)
!4472 = !DILocalVariable(name: "list_name", arg: 4, scope: !4463, file: !3, line: 1188, type: !13)
!4473 = !DILocation(line: 1188, column: 22, scope: !4463)
!4474 = !DILocalVariable(name: "cells_name", arg: 5, scope: !4463, file: !3, line: 1189, type: !13)
!4475 = !DILocation(line: 1189, column: 22, scope: !4463)
!4476 = !DILocalVariable(name: "sup_args", scope: !4463, file: !3, line: 1191, type: !3644)
!4477 = !DILocation(line: 1191, column: 25, scope: !4463)
!4478 = !DILocation(line: 1193, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 1193, column: 6)
!4480 = !DILocation(line: 1193, column: 24, scope: !4479)
!4481 = !DILocation(line: 1193, column: 6, scope: !4479)
!4482 = !DILocation(line: 1193, column: 6, scope: !4463)
!4483 = !DILocation(line: 1194, column: 3, scope: !4479)
!4484 = !DILocation(line: 1196, column: 33, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 1196, column: 6)
!4486 = !DILocation(line: 1196, column: 37, scope: !4485)
!4487 = !DILocation(line: 1196, column: 48, scope: !4485)
!4488 = !DILocation(line: 1196, column: 60, scope: !4485)
!4489 = !DILocation(line: 1196, column: 6, scope: !4485)
!4490 = !DILocation(line: 1196, column: 6, scope: !4463)
!4491 = !DILocation(line: 1198, column: 3, scope: !4485)
!4492 = !DILocation(line: 1200, column: 18, scope: !4463)
!4493 = !DILocation(line: 1200, column: 2, scope: !4463)
!4494 = !DILocation(line: 1201, column: 1, scope: !4463)
!4495 = distinct !DISubprogram(name: "parse_suffix_prop_cells", scope: !3, file: !3, line: 1240, type: !4464, scopeLine: 1244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4496 = !DILocalVariable(name: "np", arg: 1, scope: !4495, file: !3, line: 1240, type: !1886)
!4497 = !DILocation(line: 1240, column: 72, scope: !4495)
!4498 = !DILocalVariable(name: "prop_name", arg: 2, scope: !4495, file: !3, line: 1241, type: !13)
!4499 = !DILocation(line: 1241, column: 22, scope: !4495)
!4500 = !DILocalVariable(name: "index", arg: 3, scope: !4495, file: !3, line: 1241, type: !6)
!4501 = !DILocation(line: 1241, column: 37, scope: !4495)
!4502 = !DILocalVariable(name: "suffix", arg: 4, scope: !4495, file: !3, line: 1242, type: !13)
!4503 = !DILocation(line: 1242, column: 22, scope: !4495)
!4504 = !DILocalVariable(name: "cells_name", arg: 5, scope: !4495, file: !3, line: 1243, type: !13)
!4505 = !DILocation(line: 1243, column: 22, scope: !4495)
!4506 = !DILocalVariable(name: "sup_args", scope: !4495, file: !3, line: 1245, type: !3644)
!4507 = !DILocation(line: 1245, column: 25, scope: !4495)
!4508 = !DILocation(line: 1247, column: 20, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 1247, column: 6)
!4510 = !DILocation(line: 1247, column: 31, scope: !4509)
!4511 = !DILocation(line: 1247, column: 6, scope: !4509)
!4512 = !DILocation(line: 1247, column: 6, scope: !4495)
!4513 = !DILocation(line: 1248, column: 3, scope: !4509)
!4514 = !DILocation(line: 1250, column: 33, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 1250, column: 6)
!4516 = !DILocation(line: 1250, column: 37, scope: !4515)
!4517 = !DILocation(line: 1250, column: 48, scope: !4515)
!4518 = !DILocation(line: 1250, column: 60, scope: !4515)
!4519 = !DILocation(line: 1250, column: 6, scope: !4515)
!4520 = !DILocation(line: 1250, column: 6, scope: !4495)
!4521 = !DILocation(line: 1252, column: 3, scope: !4515)
!4522 = !DILocation(line: 1254, column: 18, scope: !4495)
!4523 = !DILocation(line: 1254, column: 2, scope: !4495)
!4524 = !DILocation(line: 1255, column: 1, scope: !4495)
!4525 = distinct !DISubprogram(name: "strcmp_suffix", scope: !3, file: !3, line: 1210, type: !4526, scopeLine: 1211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!6, !13, !13}
!4528 = !DILocalVariable(name: "str", arg: 1, scope: !4525, file: !3, line: 1210, type: !13)
!4529 = !DILocation(line: 1210, column: 38, scope: !4525)
!4530 = !DILocalVariable(name: "suffix", arg: 2, scope: !4525, file: !3, line: 1210, type: !13)
!4531 = !DILocation(line: 1210, column: 55, scope: !4525)
!4532 = !DILocalVariable(name: "len", scope: !4525, file: !3, line: 1212, type: !22)
!4533 = !DILocation(line: 1212, column: 15, scope: !4525)
!4534 = !DILocalVariable(name: "suffix_len", scope: !4525, file: !3, line: 1212, type: !22)
!4535 = !DILocation(line: 1212, column: 20, scope: !4525)
!4536 = !DILocation(line: 1214, column: 15, scope: !4525)
!4537 = !DILocation(line: 1214, column: 8, scope: !4525)
!4538 = !DILocation(line: 1214, column: 6, scope: !4525)
!4539 = !DILocation(line: 1215, column: 22, scope: !4525)
!4540 = !DILocation(line: 1215, column: 15, scope: !4525)
!4541 = !DILocation(line: 1215, column: 13, scope: !4525)
!4542 = !DILocation(line: 1216, column: 6, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 1216, column: 6)
!4544 = !DILocation(line: 1216, column: 13, scope: !4543)
!4545 = !DILocation(line: 1216, column: 10, scope: !4543)
!4546 = !DILocation(line: 1216, column: 6, scope: !4525)
!4547 = !DILocation(line: 1217, column: 3, scope: !4543)
!4548 = !DILocation(line: 1218, column: 16, scope: !4525)
!4549 = !DILocation(line: 1218, column: 22, scope: !4525)
!4550 = !DILocation(line: 1218, column: 20, scope: !4525)
!4551 = !DILocation(line: 1218, column: 28, scope: !4525)
!4552 = !DILocation(line: 1218, column: 26, scope: !4525)
!4553 = !DILocation(line: 1218, column: 40, scope: !4525)
!4554 = !DILocation(line: 1218, column: 9, scope: !4525)
!4555 = !DILocation(line: 1218, column: 2, scope: !4525)
!4556 = !DILocation(line: 1219, column: 1, scope: !4525)
!4557 = distinct !DISubprogram(name: "of_is_ancestor_of", scope: !3, file: !3, line: 1026, type: !4558, scopeLine: 1028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!47, !1886, !1886}
!4560 = !DILocalVariable(name: "test_ancestor", arg: 1, scope: !4557, file: !3, line: 1026, type: !1886)
!4561 = !DILocation(line: 1026, column: 51, scope: !4557)
!4562 = !DILocalVariable(name: "child", arg: 2, scope: !4557, file: !3, line: 1027, type: !1886)
!4563 = !DILocation(line: 1027, column: 30, scope: !4557)
!4564 = !DILocation(line: 1029, column: 14, scope: !4557)
!4565 = !DILocation(line: 1029, column: 2, scope: !4557)
!4566 = !DILocation(line: 1030, column: 2, scope: !4557)
!4567 = !DILocation(line: 1030, column: 9, scope: !4557)
!4568 = !DILocation(line: 1031, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 1031, column: 7)
!4570 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 1030, column: 16)
!4571 = !DILocation(line: 1031, column: 16, scope: !4569)
!4572 = !DILocation(line: 1031, column: 13, scope: !4569)
!4573 = !DILocation(line: 1031, column: 7, scope: !4570)
!4574 = !DILocation(line: 1032, column: 16, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 1031, column: 31)
!4576 = !DILocation(line: 1032, column: 4, scope: !4575)
!4577 = !DILocation(line: 1033, column: 4, scope: !4575)
!4578 = !DILocation(line: 1035, column: 30, scope: !4570)
!4579 = !DILocation(line: 1035, column: 11, scope: !4570)
!4580 = !DILocation(line: 1035, column: 9, scope: !4570)
!4581 = distinct !{!4581, !4566, !4582}
!4582 = !DILocation(line: 1036, column: 2, scope: !4557)
!4583 = !DILocation(line: 1037, column: 2, scope: !4557)
!4584 = !DILocation(line: 1038, column: 1, scope: !4557)
!4585 = distinct !DISubprogram(name: "of_node_check_flag", scope: !10, file: !10, line: 188, type: !4586, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!6, !1886, !173}
!4588 = !DILocalVariable(name: "n", arg: 1, scope: !4585, file: !10, line: 188, type: !1886)
!4589 = !DILocation(line: 188, column: 58, scope: !4585)
!4590 = !DILocalVariable(name: "flag", arg: 2, scope: !4585, file: !10, line: 188, type: !173)
!4591 = !DILocation(line: 188, column: 75, scope: !4585)
!4592 = !DILocation(line: 190, column: 18, scope: !4585)
!4593 = !DILocation(line: 190, column: 25, scope: !4585)
!4594 = !DILocation(line: 190, column: 28, scope: !4585)
!4595 = !DILocation(line: 190, column: 9, scope: !4585)
!4596 = !DILocation(line: 190, column: 2, scope: !4585)
!4597 = distinct !DISubprogram(name: "of_get_next_parent_dev", scope: !3, file: !3, line: 1050, type: !4598, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!1549, !1886}
!4600 = !DILocalVariable(name: "np", arg: 1, scope: !4597, file: !3, line: 1050, type: !1886)
!4601 = !DILocation(line: 1050, column: 66, scope: !4597)
!4602 = !DILocalVariable(name: "dev", scope: !4597, file: !3, line: 1052, type: !1549)
!4603 = !DILocation(line: 1052, column: 17, scope: !4597)
!4604 = !DILocation(line: 1054, column: 14, scope: !4597)
!4605 = !DILocation(line: 1054, column: 2, scope: !4597)
!4606 = !DILocation(line: 1055, column: 2, scope: !4597)
!4607 = !DILocation(line: 1056, column: 27, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 1055, column: 5)
!4609 = !DILocation(line: 1056, column: 8, scope: !4608)
!4610 = !DILocation(line: 1056, column: 6, scope: !4608)
!4611 = !DILocation(line: 1057, column: 7, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 1057, column: 7)
!4613 = !DILocation(line: 1057, column: 7, scope: !4608)
!4614 = !DILocation(line: 1058, column: 10, scope: !4612)
!4615 = !DILocation(line: 1058, column: 8, scope: !4612)
!4616 = !DILocation(line: 1058, column: 4, scope: !4612)
!4617 = !DILocation(line: 1059, column: 2, scope: !4608)
!4618 = !DILocation(line: 1059, column: 11, scope: !4597)
!4619 = !DILocation(line: 1059, column: 14, scope: !4597)
!4620 = !DILocation(line: 1059, column: 18, scope: !4597)
!4621 = !DILocation(line: 1059, column: 17, scope: !4597)
!4622 = !DILocation(line: 0, scope: !4597)
!4623 = distinct !{!4623, !4606, !4624}
!4624 = !DILocation(line: 1059, column: 21, scope: !4597)
!4625 = !DILocation(line: 1060, column: 14, scope: !4597)
!4626 = !DILocation(line: 1060, column: 2, scope: !4597)
!4627 = !DILocation(line: 1061, column: 9, scope: !4597)
!4628 = !DILocation(line: 1061, column: 2, scope: !4597)
!4629 = distinct !DISubprogram(name: "test_bit", scope: !4630, file: !4630, line: 132, type: !4631, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4630 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!47, !158, !4633}
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4635)
!4635 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !173)
!4636 = !DILocalVariable(name: "nr", arg: 1, scope: !4637, file: !4638, line: 210, type: !158)
!4637 = distinct !DISubprogram(name: "variable_test_bit", scope: !4638, file: !4638, line: 210, type: !4631, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4638 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4639 = !DILocation(line: 210, column: 52, scope: !4637, inlinedAt: !4640)
!4640 = distinct !DILocation(line: 135, column: 9, scope: !4629)
!4641 = !DILocalVariable(name: "addr", arg: 2, scope: !4637, file: !4638, line: 210, type: !4633)
!4642 = !DILocation(line: 210, column: 86, scope: !4637, inlinedAt: !4640)
!4643 = !DILocalVariable(name: "oldbit", scope: !4637, file: !4638, line: 212, type: !47)
!4644 = !DILocation(line: 212, column: 7, scope: !4637, inlinedAt: !4640)
!4645 = !DILocalVariable(name: "nr", arg: 1, scope: !4646, file: !4638, line: 204, type: !158)
!4646 = distinct !DISubprogram(name: "constant_test_bit", scope: !4638, file: !4638, line: 204, type: !4631, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4647 = !DILocation(line: 204, column: 52, scope: !4646, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 135, column: 9, scope: !4629)
!4649 = !DILocalVariable(name: "addr", arg: 2, scope: !4646, file: !4638, line: 204, type: !4633)
!4650 = !DILocation(line: 204, column: 86, scope: !4646, inlinedAt: !4648)
!4651 = !DILocalVariable(name: "v", arg: 1, scope: !4652, file: !4653, line: 69, type: !4656)
!4652 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4653, file: !4653, line: 69, type: !4654, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4653 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !4656, !170}
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4658)
!4658 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4659 = !DILocation(line: 69, column: 73, scope: !4652, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 134, column: 2, scope: !4629)
!4661 = !DILocalVariable(name: "size", arg: 2, scope: !4652, file: !4653, line: 69, type: !170)
!4662 = !DILocation(line: 69, column: 83, scope: !4652, inlinedAt: !4660)
!4663 = !DILocalVariable(name: "nr", arg: 1, scope: !4629, file: !4630, line: 132, type: !158)
!4664 = !DILocation(line: 132, column: 34, scope: !4629)
!4665 = !DILocalVariable(name: "addr", arg: 2, scope: !4629, file: !4630, line: 132, type: !4633)
!4666 = !DILocation(line: 132, column: 68, scope: !4629)
!4667 = !DILocation(line: 134, column: 25, scope: !4629)
!4668 = !DILocation(line: 134, column: 32, scope: !4629)
!4669 = !DILocation(line: 134, column: 30, scope: !4629)
!4670 = !DILocation(line: 71, column: 19, scope: !4652, inlinedAt: !4660)
!4671 = !DILocation(line: 71, column: 22, scope: !4652, inlinedAt: !4660)
!4672 = !DILocation(line: 71, column: 2, scope: !4652, inlinedAt: !4660)
!4673 = !DILocation(line: 72, column: 2, scope: !4652, inlinedAt: !4660)
!4674 = !DILocation(line: 135, column: 9, scope: !4629)
!4675 = !DILocation(line: 206, column: 19, scope: !4646, inlinedAt: !4648)
!4676 = !DILocation(line: 206, column: 22, scope: !4646, inlinedAt: !4648)
!4677 = !DILocation(line: 206, column: 15, scope: !4646, inlinedAt: !4648)
!4678 = !DILocation(line: 207, column: 4, scope: !4646, inlinedAt: !4648)
!4679 = !DILocation(line: 207, column: 9, scope: !4646, inlinedAt: !4648)
!4680 = !DILocation(line: 207, column: 12, scope: !4646, inlinedAt: !4648)
!4681 = !DILocation(line: 206, column: 44, scope: !4646, inlinedAt: !4648)
!4682 = !DILocation(line: 207, column: 37, scope: !4646, inlinedAt: !4648)
!4683 = !DILocation(line: 217, column: 33, scope: !4637, inlinedAt: !4640)
!4684 = !DILocation(line: 217, column: 46, scope: !4637, inlinedAt: !4640)
!4685 = !DILocation(line: 214, column: 2, scope: !4637, inlinedAt: !4640)
!4686 = !{i32 -2147170602, i32 -2147170542}
!4687 = !DILocation(line: 219, column: 9, scope: !4637, inlinedAt: !4640)
!4688 = !DILocation(line: 135, column: 2, scope: !4629)
!4689 = distinct !DISubprogram(name: "kasan_check_read", scope: !4690, file: !4690, line: 34, type: !4691, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4690 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!47, !4656, !22}
!4693 = !DILocalVariable(name: "p", arg: 1, scope: !4689, file: !4690, line: 34, type: !4656)
!4694 = !DILocation(line: 34, column: 58, scope: !4689)
!4695 = !DILocalVariable(name: "size", arg: 2, scope: !4689, file: !4690, line: 34, type: !22)
!4696 = !DILocation(line: 34, column: 74, scope: !4689)
!4697 = !DILocation(line: 36, column: 2, scope: !4689)
!4698 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4699, file: !4699, line: 178, type: !4700, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2020, retainedNodes: !96)
!4699 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4700 = !DISubroutineType(types: !4701)
!4701 = !{null, !4656, !170, !6}
!4702 = !DILocalVariable(name: "ptr", arg: 1, scope: !4698, file: !4699, line: 178, type: !4656)
!4703 = !DILocation(line: 178, column: 60, scope: !4698)
!4704 = !DILocalVariable(name: "size", arg: 2, scope: !4698, file: !4699, line: 178, type: !170)
!4705 = !DILocation(line: 178, column: 72, scope: !4698)
!4706 = !DILocalVariable(name: "type", arg: 3, scope: !4698, file: !4699, line: 179, type: !6)
!4707 = !DILocation(line: 179, column: 15, scope: !4698)
!4708 = !DILocation(line: 179, column: 23, scope: !4698)
