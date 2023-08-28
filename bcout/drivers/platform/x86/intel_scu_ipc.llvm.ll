; ModuleID = '../bcout/drivers/platform/x86/intel_scu_ipc.llvm.bc'
source_filename = "drivers/platform/x86/intel_scu_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_intel_scu_ipc_init4:\09\09\09"
module asm ".long\09intel_scu_ipc_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.intel_scu_ipc_dev = type { %struct.device, %struct.resource, %struct.module*, i32, i8*, %struct.completion }
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
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.module = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kmem_cache = type opaque
%struct.intel_scu_ipc_devres = type { %struct.intel_scu_ipc_dev* }
%struct.intel_scu_ipc_data = type { %struct.resource, i32 }

@ipclock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ipclock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ipclock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@ipcdev = internal global %struct.intel_scu_ipc_dev* null, align 8, !dbg !2052
@.str = private unnamed_addr constant [32 x i8] c"IPC command %#x failed with %d\0A\00", align 1
@intel_scu_ipc_class = internal global %struct.class { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %struct.module* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.kobject* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*)* null, void (%struct.class*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, %struct.kobj_ns_type_operations* null, i8* (%struct.device*)* null, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)* null, %struct.dev_pm_ops* null, %struct.subsys_private* null }, align 8, !dbg !2054
@.str.1 = private unnamed_addr constant [14 x i8] c"intel_scu_ipc\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"drivers/platform/x86/intel_scu_ipc.c\00", align 1
@__UNIQUE_ID___addressable_intel_scu_ipc_init163 = internal global i8* bitcast (i32 ()* @intel_scu_ipc_init to i8*), section ".discard.addressable", align 8, !dbg !2043
@__exitcall_intel_scu_ipc_exit = internal global void ()* @intel_scu_ipc_exit, section ".exitcall.exit", align 8, !dbg !2045
@jiffies = external dso_local global i64, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2056
@.str.4 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@intel_scu_ipc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2061
@llvm.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_intel_scu_ipc_init163 to i8*), i8* bitcast (void ()* @intel_scu_ipc_exit to i8*), i8* bitcast (void ()** @__exitcall_intel_scu_ipc_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_scu_ipc_dev* @intel_scu_ipc_dev_get() #0 !dbg !2071 {
entry:
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !2074, metadata !DIExpression()), !dbg !2075
  store %struct.intel_scu_ipc_dev* null, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2075
  call void @mutex_lock(%struct.mutex* @ipclock) #9, !dbg !2076
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2077
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %0, null, !dbg !2077
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2079

if.then:                                          ; preds = %entry
  %1 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2080
  %dev = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %1, i32 0, i32 0, !dbg !2082
  %call = call %struct.device* @get_device(%struct.device* %dev) #9, !dbg !2083
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2084
  %owner = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %2, i32 0, i32 2, !dbg !2086
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2086
  %call1 = call zeroext i1 @try_module_get(%struct.module* %3) #9, !dbg !2087
  br i1 %call1, label %if.else, label %if.then2, !dbg !2088

if.then2:                                         ; preds = %if.then
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2089
  %dev3 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %4, i32 0, i32 0, !dbg !2090
  call void @put_device(%struct.device* %dev3) #9, !dbg !2091
  br label %if.end, !dbg !2091

if.else:                                          ; preds = %if.then
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2092
  store %struct.intel_scu_ipc_dev* %5, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2093
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !2094

if.end4:                                          ; preds = %if.end, %entry
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2095
  %6 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2096
  ret %struct.intel_scu_ipc_dev* %6, !dbg !2097
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !2098 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2102, metadata !DIExpression()), !dbg !2103
  ret i1 true, !dbg !2104
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_scu_ipc_dev_put(%struct.intel_scu_ipc_dev* %scu) #0 !dbg !2105 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2110
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %0, null, !dbg !2110
  br i1 %tobool, label %if.then, label %if.end, !dbg !2112

if.then:                                          ; preds = %entry
  %1 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2113
  %owner = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %1, i32 0, i32 2, !dbg !2115
  %2 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2115
  call void @module_put(%struct.module* %2) #9, !dbg !2116
  %3 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2117
  %dev = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %3, i32 0, i32 0, !dbg !2118
  call void @put_device(%struct.device* %dev) #9, !dbg !2119
  br label %if.end, !dbg !2120

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2121
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !2122 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2125, metadata !DIExpression()), !dbg !2126
  ret void, !dbg !2127
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_scu_ipc_dev* @devm_intel_scu_ipc_dev_get(%struct.device* %dev) #0 !dbg !2128 {
entry:
  %retval = alloca %struct.intel_scu_ipc_dev*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %dr = alloca %struct.intel_scu_ipc_devres*, align 8
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_devres** %dr, metadata !2133, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !2139, metadata !DIExpression()), !dbg !2140
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_intel_scu_ipc_dev_release, i64 8, i32 3264) #9, !dbg !2141
  %0 = bitcast i8* %call to %struct.intel_scu_ipc_devres*, !dbg !2141
  store %struct.intel_scu_ipc_devres* %0, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2142
  %1 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2143
  %tobool = icmp ne %struct.intel_scu_ipc_devres* %1, null, !dbg !2143
  br i1 %tobool, label %if.end, label %if.then, !dbg !2145

if.then:                                          ; preds = %entry
  store %struct.intel_scu_ipc_dev* null, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2146
  br label %return, !dbg !2146

if.end:                                           ; preds = %entry
  %call1 = call %struct.intel_scu_ipc_dev* @intel_scu_ipc_dev_get() #9, !dbg !2147
  store %struct.intel_scu_ipc_dev* %call1, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2148
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2149
  %tobool2 = icmp ne %struct.intel_scu_ipc_dev* %2, null, !dbg !2149
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2151

if.then3:                                         ; preds = %if.end
  %3 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2152
  %4 = bitcast %struct.intel_scu_ipc_devres* %3 to i8*, !dbg !2152
  call void @devres_free(i8* %4) #9, !dbg !2154
  store %struct.intel_scu_ipc_dev* null, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2155
  br label %return, !dbg !2155

if.end4:                                          ; preds = %if.end
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2156
  %6 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2157
  %scu5 = getelementptr inbounds %struct.intel_scu_ipc_devres, %struct.intel_scu_ipc_devres* %6, i32 0, i32 0, !dbg !2158
  store %struct.intel_scu_ipc_dev* %5, %struct.intel_scu_ipc_dev** %scu5, align 8, !dbg !2159
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2160
  %8 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2161
  %9 = bitcast %struct.intel_scu_ipc_devres* %8 to i8*, !dbg !2161
  call void @devres_add(%struct.device* %7, i8* %9) #9, !dbg !2162
  %10 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2163
  store %struct.intel_scu_ipc_dev* %10, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2164
  br label %return, !dbg !2164

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %11 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2165
  ret %struct.intel_scu_ipc_dev* %11, !dbg !2165
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2166 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2173, metadata !DIExpression()), !dbg !2174
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2175, metadata !DIExpression()), !dbg !2176
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2177, metadata !DIExpression()), !dbg !2178
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2179
  %1 = load i64, i64* %size.addr, align 8, !dbg !2180
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2181
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #9, !dbg !2182
  ret i8* %call, !dbg !2183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_intel_scu_ipc_dev_release(%struct.device* %dev, i8* %res) #0 !dbg !2184 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %dr = alloca %struct.intel_scu_ipc_devres*, align 8
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_devres** %dr, metadata !2189, metadata !DIExpression()), !dbg !2190
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2191
  %1 = bitcast i8* %0 to %struct.intel_scu_ipc_devres*, !dbg !2191
  store %struct.intel_scu_ipc_devres* %1, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2190
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !2192, metadata !DIExpression()), !dbg !2193
  %2 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !2194
  %scu1 = getelementptr inbounds %struct.intel_scu_ipc_devres, %struct.intel_scu_ipc_devres* %2, i32 0, i32 0, !dbg !2195
  %3 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu1, align 8, !dbg !2195
  store %struct.intel_scu_ipc_dev* %3, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2193
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2196
  call void @intel_scu_ipc_dev_put(%struct.intel_scu_ipc_dev* %4) #9, !dbg !2197
  ret void, !dbg !2198
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_ioread8(%struct.intel_scu_ipc_dev* %scu, i16 zeroext %addr, i8* %data) #0 !dbg !2199 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %addr.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2203, metadata !DIExpression()), !dbg !2204
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2205, metadata !DIExpression()), !dbg !2206
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2207, metadata !DIExpression()), !dbg !2208
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2209
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2210
  %call = call i32 @pwr_reg_rdwr(%struct.intel_scu_ipc_dev* %0, i16* %addr.addr, i8* %1, i32 1, i32 255, i32 1) #9, !dbg !2211
  ret i32 %call, !dbg !2212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pwr_reg_rdwr(%struct.intel_scu_ipc_dev* %scu, i16* %addr, i8* %data, i32 %count, i32 %op, i32 %id) #0 !dbg !2213 {
entry:
  %retval = alloca i32, align 4
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %addr.addr = alloca i16*, align 8
  %data.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %nc = alloca i32, align 4
  %offset = alloca i32, align 4
  %err = alloca i32, align 4
  %cbuf = alloca [20 x i8], align 16
  %wbuf = alloca i32*, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  store i16* %addr, i16** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %addr.addr, metadata !2219, metadata !DIExpression()), !dbg !2220
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata i32* %nc, metadata !2229, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !2231, metadata !DIExpression()), !dbg !2232
  store i32 0, i32* %offset, align 4, !dbg !2232
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2233, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.declare(metadata [20 x i8]* %cbuf, metadata !2235, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.declare(metadata i32** %wbuf, metadata !2238, metadata !DIExpression()), !dbg !2239
  %0 = bitcast [20 x i8]* %cbuf to i32*, !dbg !2240
  store i32* %0, i32** %wbuf, align 8, !dbg !2239
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %cbuf, i64 0, i64 0, !dbg !2241
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 20, i1 false), !dbg !2241
  call void @mutex_lock(%struct.mutex* @ipclock) #9, !dbg !2242
  %1 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2243
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %1, null, !dbg !2243
  br i1 %tobool, label %if.end, label %if.then, !dbg !2245

if.then:                                          ; preds = %entry
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2246
  store %struct.intel_scu_ipc_dev* %2, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2247
  br label %if.end, !dbg !2248

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2249
  %tobool1 = icmp ne %struct.intel_scu_ipc_dev* %3, null, !dbg !2249
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2251

if.then2:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2252
  store i32 -19, i32* %retval, align 4, !dbg !2254
  br label %return, !dbg !2254

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %nc, align 4, !dbg !2255
  br label %for.cond, !dbg !2257

for.cond:                                         ; preds = %for.inc, %if.end3
  %4 = load i32, i32* %nc, align 4, !dbg !2258
  %5 = load i32, i32* %count.addr, align 4, !dbg !2260
  %cmp = icmp ult i32 %4, %5, !dbg !2261
  br i1 %cmp, label %for.body, label %for.end, !dbg !2262

for.body:                                         ; preds = %for.cond
  %6 = load i16*, i16** %addr.addr, align 8, !dbg !2263
  %7 = load i32, i32* %nc, align 4, !dbg !2265
  %idxprom = sext i32 %7 to i64, !dbg !2263
  %arrayidx = getelementptr i16, i16* %6, i64 %idxprom, !dbg !2263
  %8 = load i16, i16* %arrayidx, align 2, !dbg !2263
  %conv = trunc i16 %8 to i8, !dbg !2263
  %9 = load i32, i32* %offset, align 4, !dbg !2266
  %idxprom4 = zext i32 %9 to i64, !dbg !2267
  %arrayidx5 = getelementptr [20 x i8], [20 x i8]* %cbuf, i64 0, i64 %idxprom4, !dbg !2267
  store i8 %conv, i8* %arrayidx5, align 1, !dbg !2268
  %10 = load i16*, i16** %addr.addr, align 8, !dbg !2269
  %11 = load i32, i32* %nc, align 4, !dbg !2270
  %idxprom6 = sext i32 %11 to i64, !dbg !2269
  %arrayidx7 = getelementptr i16, i16* %10, i64 %idxprom6, !dbg !2269
  %12 = load i16, i16* %arrayidx7, align 2, !dbg !2269
  %conv8 = zext i16 %12 to i32, !dbg !2269
  %shr = ashr i32 %conv8, 8, !dbg !2271
  %conv9 = trunc i32 %shr to i8, !dbg !2269
  %13 = load i32, i32* %offset, align 4, !dbg !2272
  %add = add i32 %13, 1, !dbg !2273
  %idxprom10 = zext i32 %add to i64, !dbg !2274
  %arrayidx11 = getelementptr [20 x i8], [20 x i8]* %cbuf, i64 0, i64 %idxprom10, !dbg !2274
  store i8 %conv9, i8* %arrayidx11, align 1, !dbg !2275
  br label %for.inc, !dbg !2276

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %nc, align 4, !dbg !2277
  %inc = add i32 %14, 1, !dbg !2277
  store i32 %inc, i32* %nc, align 4, !dbg !2277
  %15 = load i32, i32* %offset, align 4, !dbg !2278
  %add12 = add i32 %15, 2, !dbg !2278
  store i32 %add12, i32* %offset, align 4, !dbg !2278
  br label %for.cond, !dbg !2279, !llvm.loop !2280

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %id.addr, align 4, !dbg !2282
  %cmp13 = icmp eq i32 %16, 1, !dbg !2284
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !2285

if.then15:                                        ; preds = %for.end
  store i32 0, i32* %nc, align 4, !dbg !2286
  store i32 0, i32* %offset, align 4, !dbg !2289
  br label %for.cond16, !dbg !2290

for.cond16:                                       ; preds = %for.inc22, %if.then15
  %17 = load i32, i32* %nc, align 4, !dbg !2291
  %18 = load i32, i32* %count.addr, align 4, !dbg !2293
  %cmp17 = icmp ult i32 %17, %18, !dbg !2294
  br i1 %cmp17, label %for.body19, label %for.end25, !dbg !2295

for.body19:                                       ; preds = %for.cond16
  %19 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2296
  %20 = load i32*, i32** %wbuf, align 8, !dbg !2297
  %21 = load i32, i32* %nc, align 4, !dbg !2298
  %idxprom20 = sext i32 %21 to i64, !dbg !2297
  %arrayidx21 = getelementptr i32, i32* %20, i64 %idxprom20, !dbg !2297
  %22 = load i32, i32* %arrayidx21, align 4, !dbg !2297
  %23 = load i32, i32* %offset, align 4, !dbg !2299
  call void @ipc_data_writel(%struct.intel_scu_ipc_dev* %19, i32 %22, i32 %23) #9, !dbg !2300
  br label %for.inc22, !dbg !2300

for.inc22:                                        ; preds = %for.body19
  %24 = load i32, i32* %nc, align 4, !dbg !2301
  %inc23 = add i32 %24, 1, !dbg !2301
  store i32 %inc23, i32* %nc, align 4, !dbg !2301
  %25 = load i32, i32* %offset, align 4, !dbg !2302
  %add24 = add i32 %25, 4, !dbg !2302
  store i32 %add24, i32* %offset, align 4, !dbg !2302
  br label %for.cond16, !dbg !2303, !llvm.loop !2304

for.end25:                                        ; preds = %for.cond16
  %26 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2306
  %27 = load i32, i32* %count.addr, align 4, !dbg !2307
  %mul = mul i32 %27, 2, !dbg !2308
  %shl = shl i32 %mul, 16, !dbg !2309
  %28 = load i32, i32* %id.addr, align 4, !dbg !2310
  %shl26 = shl i32 %28, 12, !dbg !2311
  %or = or i32 %shl, %shl26, !dbg !2312
  %29 = load i32, i32* %op.addr, align 4, !dbg !2313
  %or27 = or i32 %or, %29, !dbg !2314
  call void @ipc_command(%struct.intel_scu_ipc_dev* %26, i32 %or27) #9, !dbg !2315
  br label %if.end75, !dbg !2316

if.else:                                          ; preds = %for.end
  %30 = load i32, i32* %id.addr, align 4, !dbg !2317
  %cmp28 = icmp eq i32 %30, 0, !dbg !2319
  br i1 %cmp28, label %if.then30, label %if.else58, !dbg !2320

if.then30:                                        ; preds = %if.else
  store i32 0, i32* %nc, align 4, !dbg !2321
  br label %for.cond31, !dbg !2324

for.cond31:                                       ; preds = %for.inc39, %if.then30
  %31 = load i32, i32* %nc, align 4, !dbg !2325
  %32 = load i32, i32* %count.addr, align 4, !dbg !2327
  %cmp32 = icmp ult i32 %31, %32, !dbg !2328
  br i1 %cmp32, label %for.body34, label %for.end42, !dbg !2329

for.body34:                                       ; preds = %for.cond31
  %33 = load i8*, i8** %data.addr, align 8, !dbg !2330
  %34 = load i32, i32* %nc, align 4, !dbg !2331
  %idxprom35 = sext i32 %34 to i64, !dbg !2330
  %arrayidx36 = getelementptr i8, i8* %33, i64 %idxprom35, !dbg !2330
  %35 = load i8, i8* %arrayidx36, align 1, !dbg !2330
  %36 = load i32, i32* %offset, align 4, !dbg !2332
  %idxprom37 = zext i32 %36 to i64, !dbg !2333
  %arrayidx38 = getelementptr [20 x i8], [20 x i8]* %cbuf, i64 0, i64 %idxprom37, !dbg !2333
  store i8 %35, i8* %arrayidx38, align 1, !dbg !2334
  br label %for.inc39, !dbg !2333

for.inc39:                                        ; preds = %for.body34
  %37 = load i32, i32* %nc, align 4, !dbg !2335
  %inc40 = add i32 %37, 1, !dbg !2335
  store i32 %inc40, i32* %nc, align 4, !dbg !2335
  %38 = load i32, i32* %offset, align 4, !dbg !2336
  %add41 = add i32 %38, 1, !dbg !2336
  store i32 %add41, i32* %offset, align 4, !dbg !2336
  br label %for.cond31, !dbg !2337, !llvm.loop !2338

for.end42:                                        ; preds = %for.cond31
  store i32 0, i32* %nc, align 4, !dbg !2340
  store i32 0, i32* %offset, align 4, !dbg !2342
  br label %for.cond43, !dbg !2343

for.cond43:                                       ; preds = %for.inc49, %for.end42
  %39 = load i32, i32* %nc, align 4, !dbg !2344
  %40 = load i32, i32* %count.addr, align 4, !dbg !2346
  %cmp44 = icmp ult i32 %39, %40, !dbg !2347
  br i1 %cmp44, label %for.body46, label %for.end52, !dbg !2348

for.body46:                                       ; preds = %for.cond43
  %41 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2349
  %42 = load i32*, i32** %wbuf, align 8, !dbg !2350
  %43 = load i32, i32* %nc, align 4, !dbg !2351
  %idxprom47 = sext i32 %43 to i64, !dbg !2350
  %arrayidx48 = getelementptr i32, i32* %42, i64 %idxprom47, !dbg !2350
  %44 = load i32, i32* %arrayidx48, align 4, !dbg !2350
  %45 = load i32, i32* %offset, align 4, !dbg !2352
  call void @ipc_data_writel(%struct.intel_scu_ipc_dev* %41, i32 %44, i32 %45) #9, !dbg !2353
  br label %for.inc49, !dbg !2353

for.inc49:                                        ; preds = %for.body46
  %46 = load i32, i32* %nc, align 4, !dbg !2354
  %inc50 = add i32 %46, 1, !dbg !2354
  store i32 %inc50, i32* %nc, align 4, !dbg !2354
  %47 = load i32, i32* %offset, align 4, !dbg !2355
  %add51 = add i32 %47, 4, !dbg !2355
  store i32 %add51, i32* %offset, align 4, !dbg !2355
  br label %for.cond43, !dbg !2356, !llvm.loop !2357

for.end52:                                        ; preds = %for.cond43
  %48 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2359
  %49 = load i32, i32* %count.addr, align 4, !dbg !2360
  %mul53 = mul i32 %49, 3, !dbg !2361
  %shl54 = shl i32 %mul53, 16, !dbg !2362
  %50 = load i32, i32* %id.addr, align 4, !dbg !2363
  %shl55 = shl i32 %50, 12, !dbg !2364
  %or56 = or i32 %shl54, %shl55, !dbg !2365
  %51 = load i32, i32* %op.addr, align 4, !dbg !2366
  %or57 = or i32 %or56, %51, !dbg !2367
  call void @ipc_command(%struct.intel_scu_ipc_dev* %48, i32 %or57) #9, !dbg !2368
  br label %if.end74, !dbg !2369

if.else58:                                        ; preds = %if.else
  %52 = load i32, i32* %id.addr, align 4, !dbg !2370
  %cmp59 = icmp eq i32 %52, 2, !dbg !2372
  br i1 %cmp59, label %if.then61, label %if.end73, !dbg !2373

if.then61:                                        ; preds = %if.else58
  %53 = load i8*, i8** %data.addr, align 8, !dbg !2374
  %arrayidx62 = getelementptr i8, i8* %53, i64 0, !dbg !2374
  %54 = load i8, i8* %arrayidx62, align 1, !dbg !2374
  %55 = load i32, i32* %offset, align 4, !dbg !2376
  %idxprom63 = zext i32 %55 to i64, !dbg !2377
  %arrayidx64 = getelementptr [20 x i8], [20 x i8]* %cbuf, i64 0, i64 %idxprom63, !dbg !2377
  store i8 %54, i8* %arrayidx64, align 1, !dbg !2378
  %56 = load i8*, i8** %data.addr, align 8, !dbg !2379
  %arrayidx65 = getelementptr i8, i8* %56, i64 1, !dbg !2379
  %57 = load i8, i8* %arrayidx65, align 1, !dbg !2379
  %58 = load i32, i32* %offset, align 4, !dbg !2380
  %add66 = add i32 %58, 1, !dbg !2381
  %idxprom67 = zext i32 %add66 to i64, !dbg !2382
  %arrayidx68 = getelementptr [20 x i8], [20 x i8]* %cbuf, i64 0, i64 %idxprom67, !dbg !2382
  store i8 %57, i8* %arrayidx68, align 1, !dbg !2383
  %59 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2384
  %60 = load i32*, i32** %wbuf, align 8, !dbg !2385
  %arrayidx69 = getelementptr i32, i32* %60, i64 0, !dbg !2385
  %61 = load i32, i32* %arrayidx69, align 4, !dbg !2385
  call void @ipc_data_writel(%struct.intel_scu_ipc_dev* %59, i32 %61, i32 0) #9, !dbg !2386
  %62 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2387
  %63 = load i32, i32* %id.addr, align 4, !dbg !2388
  %shl70 = shl i32 %63, 12, !dbg !2389
  %or71 = or i32 262144, %shl70, !dbg !2390
  %64 = load i32, i32* %op.addr, align 4, !dbg !2391
  %or72 = or i32 %or71, %64, !dbg !2392
  call void @ipc_command(%struct.intel_scu_ipc_dev* %62, i32 %or72) #9, !dbg !2393
  br label %if.end73, !dbg !2394

if.end73:                                         ; preds = %if.then61, %if.else58
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %for.end52
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %for.end25
  %65 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2395
  %call = call i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %65) #9, !dbg !2396
  store i32 %call, i32* %err, align 4, !dbg !2397
  %66 = load i32, i32* %err, align 4, !dbg !2398
  %tobool76 = icmp ne i32 %66, 0, !dbg !2398
  br i1 %tobool76, label %if.end91, label %land.lhs.true, !dbg !2400

land.lhs.true:                                    ; preds = %if.end75
  %67 = load i32, i32* %id.addr, align 4, !dbg !2401
  %cmp77 = icmp eq i32 %67, 1, !dbg !2402
  br i1 %cmp77, label %if.then79, label %if.end91, !dbg !2403

if.then79:                                        ; preds = %land.lhs.true
  %arraydecay80 = getelementptr inbounds [20 x i8], [20 x i8]* %cbuf, i64 0, i64 0, !dbg !2404
  %68 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2406
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %68, i32 0, i32 4, !dbg !2407
  %69 = load i8*, i8** %ipc_base, align 8, !dbg !2407
  %add.ptr = getelementptr i8, i8* %69, i64 144, !dbg !2408
  call void @memcpy_fromio(i8* %arraydecay80, i8* %add.ptr, i64 16) #9, !dbg !2409
  store i32 0, i32* %nc, align 4, !dbg !2410
  br label %for.cond81, !dbg !2412

for.cond81:                                       ; preds = %for.inc88, %if.then79
  %70 = load i32, i32* %nc, align 4, !dbg !2413
  %71 = load i32, i32* %count.addr, align 4, !dbg !2415
  %cmp82 = icmp ult i32 %70, %71, !dbg !2416
  br i1 %cmp82, label %for.body84, label %for.end90, !dbg !2417

for.body84:                                       ; preds = %for.cond81
  %72 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2418
  %73 = load i32, i32* %nc, align 4, !dbg !2419
  %call85 = call zeroext i8 @ipc_data_readb(%struct.intel_scu_ipc_dev* %72, i32 %73) #9, !dbg !2420
  %74 = load i8*, i8** %data.addr, align 8, !dbg !2421
  %75 = load i32, i32* %nc, align 4, !dbg !2422
  %idxprom86 = sext i32 %75 to i64, !dbg !2421
  %arrayidx87 = getelementptr i8, i8* %74, i64 %idxprom86, !dbg !2421
  store i8 %call85, i8* %arrayidx87, align 1, !dbg !2423
  br label %for.inc88, !dbg !2421

for.inc88:                                        ; preds = %for.body84
  %76 = load i32, i32* %nc, align 4, !dbg !2424
  %inc89 = add i32 %76, 1, !dbg !2424
  store i32 %inc89, i32* %nc, align 4, !dbg !2424
  br label %for.cond81, !dbg !2425, !llvm.loop !2426

for.end90:                                        ; preds = %for.cond81
  br label %if.end91, !dbg !2428

if.end91:                                         ; preds = %for.end90, %land.lhs.true, %if.end75
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2429
  %77 = load i32, i32* %err, align 4, !dbg !2430
  store i32 %77, i32* %retval, align 4, !dbg !2431
  br label %return, !dbg !2431

return:                                           ; preds = %if.end91, %if.then2
  %78 = load i32, i32* %retval, align 4, !dbg !2432
  ret i32 %78, !dbg !2432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_iowrite8(%struct.intel_scu_ipc_dev* %scu, i16 zeroext %addr, i8 zeroext %data) #0 !dbg !2433 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %addr.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2438, metadata !DIExpression()), !dbg !2439
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !2440, metadata !DIExpression()), !dbg !2441
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2442
  %call = call i32 @pwr_reg_rdwr(%struct.intel_scu_ipc_dev* %0, i16* %addr.addr, i8* %data.addr, i32 1, i32 255, i32 0) #9, !dbg !2443
  ret i32 %call, !dbg !2444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_readv(%struct.intel_scu_ipc_dev* %scu, i16* %addr, i8* %data, i64 %len) #0 !dbg !2445 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %addr.addr = alloca i16*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2448, metadata !DIExpression()), !dbg !2449
  store i16* %addr, i16** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %addr.addr, metadata !2450, metadata !DIExpression()), !dbg !2451
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2454, metadata !DIExpression()), !dbg !2455
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2456
  %1 = load i16*, i16** %addr.addr, align 8, !dbg !2457
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2458
  %3 = load i64, i64* %len.addr, align 8, !dbg !2459
  %conv = trunc i64 %3 to i32, !dbg !2459
  %call = call i32 @pwr_reg_rdwr(%struct.intel_scu_ipc_dev* %0, i16* %1, i8* %2, i32 %conv, i32 255, i32 1) #9, !dbg !2460
  ret i32 %call, !dbg !2461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_writev(%struct.intel_scu_ipc_dev* %scu, i16* %addr, i8* %data, i64 %len) #0 !dbg !2462 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %addr.addr = alloca i16*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i16* %addr, i16** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %addr.addr, metadata !2465, metadata !DIExpression()), !dbg !2466
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2467, metadata !DIExpression()), !dbg !2468
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !2469, metadata !DIExpression()), !dbg !2470
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2471
  %1 = load i16*, i16** %addr.addr, align 8, !dbg !2472
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2473
  %3 = load i64, i64* %len.addr, align 8, !dbg !2474
  %conv = trunc i64 %3 to i32, !dbg !2474
  %call = call i32 @pwr_reg_rdwr(%struct.intel_scu_ipc_dev* %0, i16* %1, i8* %2, i32 %conv, i32 255, i32 0) #9, !dbg !2475
  ret i32 %call, !dbg !2476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_update(%struct.intel_scu_ipc_dev* %scu, i16 zeroext %addr, i8 zeroext %data, i8 zeroext %mask) #0 !dbg !2477 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %addr.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  %mask.addr = alloca i8, align 1
  %tmp = alloca [2 x i8], align 1
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  store i16 %addr, i16* %addr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %addr.addr, metadata !2482, metadata !DIExpression()), !dbg !2483
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  store i8 %mask, i8* %mask.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mask.addr, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata [2 x i8]* %tmp, metadata !2488, metadata !DIExpression()), !dbg !2490
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 0, !dbg !2491
  %0 = load i8, i8* %data.addr, align 1, !dbg !2492
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !2491
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !2491
  %1 = load i8, i8* %mask.addr, align 1, !dbg !2493
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !2491
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2494
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %tmp, i64 0, i64 0, !dbg !2495
  %call = call i32 @pwr_reg_rdwr(%struct.intel_scu_ipc_dev* %2, i16* %addr.addr, i8* %arraydecay, i32 1, i32 255, i32 2) #9, !dbg !2496
  ret i32 %call, !dbg !2497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_simple_command(%struct.intel_scu_ipc_dev* %scu, i32 %cmd, i32 %sub) #0 !dbg !2498 {
entry:
  %retval = alloca i32, align 4
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %cmd.addr = alloca i32, align 4
  %sub.addr = alloca i32, align 4
  %cmdval = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2501, metadata !DIExpression()), !dbg !2502
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !2503, metadata !DIExpression()), !dbg !2504
  store i32 %sub, i32* %sub.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sub.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata i32* %cmdval, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @mutex_lock(%struct.mutex* @ipclock) #9, !dbg !2511
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2512
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %0, null, !dbg !2512
  br i1 %tobool, label %if.end, label %if.then, !dbg !2514

if.then:                                          ; preds = %entry
  %1 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2515
  store %struct.intel_scu_ipc_dev* %1, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2516
  br label %if.end, !dbg !2517

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2518
  %tobool1 = icmp ne %struct.intel_scu_ipc_dev* %2, null, !dbg !2518
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2520

if.then2:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2521
  store i32 -19, i32* %retval, align 4, !dbg !2523
  br label %return, !dbg !2523

if.end3:                                          ; preds = %if.end
  %3 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2524
  store %struct.intel_scu_ipc_dev* %3, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2525
  %4 = load i32, i32* %sub.addr, align 4, !dbg !2526
  %shl = shl i32 %4, 12, !dbg !2527
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !2528
  %or = or i32 %shl, %5, !dbg !2529
  store i32 %or, i32* %cmdval, align 4, !dbg !2530
  %6 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2531
  %7 = load i32, i32* %cmdval, align 4, !dbg !2532
  call void @ipc_command(%struct.intel_scu_ipc_dev* %6, i32 %7) #9, !dbg !2533
  %8 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2534
  %call = call i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %8) #9, !dbg !2535
  store i32 %call, i32* %err, align 4, !dbg !2536
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2537
  %9 = load i32, i32* %err, align 4, !dbg !2538
  %tobool4 = icmp ne i32 %9, 0, !dbg !2538
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2540

if.then5:                                         ; preds = %if.end3
  %10 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2541
  %dev = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %10, i32 0, i32 0, !dbg !2541
  %11 = load i32, i32* %cmdval, align 4, !dbg !2541
  %12 = load i32, i32* %err, align 4, !dbg !2541
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12) #10, !dbg !2541
  br label %if.end6, !dbg !2541

if.end6:                                          ; preds = %if.then5, %if.end3
  %13 = load i32, i32* %err, align 4, !dbg !2542
  store i32 %13, i32* %retval, align 4, !dbg !2543
  br label %return, !dbg !2543

return:                                           ; preds = %if.end6, %if.then2
  %14 = load i32, i32* %retval, align 4, !dbg !2544
  ret i32 %14, !dbg !2544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ipc_command(%struct.intel_scu_ipc_dev* %scu, i32 %cmd) #0 !dbg !2545 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %cmd.addr = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !2550, metadata !DIExpression()), !dbg !2551
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2552
  %cmd_complete = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %0, i32 0, i32 5, !dbg !2553
  call void @reinit_completion(%struct.completion* %cmd_complete) #9, !dbg !2554
  %1 = load i32, i32* %cmd.addr, align 4, !dbg !2555
  %or = or i32 %1, 256, !dbg !2556
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2557
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %2, i32 0, i32 4, !dbg !2558
  %3 = load i8*, i8** %ipc_base, align 8, !dbg !2558
  call void @writel(i32 %or, i8* %3) #9, !dbg !2559
  ret void, !dbg !2560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %scu) #0 !dbg !2561 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2566
  %irq = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %0, i32 0, i32 3, !dbg !2567
  %1 = load i32, i32* %irq, align 8, !dbg !2567
  %cmp = icmp sgt i32 %1, 0, !dbg !2568
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2566

cond.true:                                        ; preds = %entry
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2569
  %call = call i32 @ipc_wait_for_interrupt(%struct.intel_scu_ipc_dev* %2) #9, !dbg !2570
  br label %cond.end, !dbg !2566

cond.false:                                       ; preds = %entry
  %3 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2571
  %call1 = call i32 @busy_loop(%struct.intel_scu_ipc_dev* %3) #9, !dbg !2572
  br label %cond.end, !dbg !2566

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ], !dbg !2566
  ret i32 %cond, !dbg !2573
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_scu_ipc_dev_command_with_size(%struct.intel_scu_ipc_dev* %scu, i32 %cmd, i32 %sub, i8* %in, i64 %inlen, i64 %size, i8* %out, i64 %outlen) #0 !dbg !2574 {
entry:
  %retval = alloca i32, align 4
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %cmd.addr = alloca i32, align 4
  %sub.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %inlen.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %out.addr = alloca i8*, align 8
  %outlen.addr = alloca i64, align 8
  %outbuflen = alloca i64, align 8
  %inbuflen = alloca i64, align 8
  %cmdval = alloca i32, align 4
  %inbuf = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %outbuf = alloca [4 x i32], align 16
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2577, metadata !DIExpression()), !dbg !2578
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i32 %sub, i32* %sub.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sub.addr, metadata !2581, metadata !DIExpression()), !dbg !2582
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  store i64 %inlen, i64* %inlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %inlen.addr, metadata !2585, metadata !DIExpression()), !dbg !2586
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2587, metadata !DIExpression()), !dbg !2588
  store i8* %out, i8** %out.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i64 %outlen, i64* %outlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %outlen.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.declare(metadata i64* %outbuflen, metadata !2593, metadata !DIExpression()), !dbg !2594
  %0 = load i64, i64* %outlen.addr, align 8, !dbg !2595
  %add = add i64 %0, 4, !dbg !2595
  %sub1 = sub i64 %add, 1, !dbg !2595
  %div = udiv i64 %sub1, 4, !dbg !2595
  store i64 %div, i64* %outbuflen, align 8, !dbg !2594
  call void @llvm.dbg.declare(metadata i64* %inbuflen, metadata !2596, metadata !DIExpression()), !dbg !2597
  %1 = load i64, i64* %inlen.addr, align 8, !dbg !2598
  %add2 = add i64 %1, 4, !dbg !2598
  %sub3 = sub i64 %add2, 1, !dbg !2598
  %div4 = udiv i64 %sub3, 4, !dbg !2598
  store i64 %div4, i64* %inbuflen, align 8, !dbg !2597
  call void @llvm.dbg.declare(metadata i32* %cmdval, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata [4 x i32]* %inbuf, metadata !2601, metadata !DIExpression()), !dbg !2603
  %2 = bitcast [4 x i32]* %inbuf to i8*, !dbg !2603
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 16, i1 false), !dbg !2603
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2604, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2606, metadata !DIExpression()), !dbg !2607
  %3 = load i64, i64* %inbuflen, align 8, !dbg !2608
  %cmp = icmp ugt i64 %3, 4, !dbg !2610
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2611

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, i64* %outbuflen, align 8, !dbg !2612
  %cmp5 = icmp ugt i64 %4, 4, !dbg !2613
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2614

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !2615
  br label %return, !dbg !2615

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(%struct.mutex* @ipclock) #9, !dbg !2616
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2617
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %5, null, !dbg !2617
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !2619

if.then6:                                         ; preds = %if.end
  %6 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2620
  store %struct.intel_scu_ipc_dev* %6, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2621
  br label %if.end7, !dbg !2622

if.end7:                                          ; preds = %if.then6, %if.end
  %7 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2623
  %tobool8 = icmp ne %struct.intel_scu_ipc_dev* %7, null, !dbg !2623
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2625

if.then9:                                         ; preds = %if.end7
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2626
  store i32 -19, i32* %retval, align 4, !dbg !2628
  br label %return, !dbg !2628

if.end10:                                         ; preds = %if.end7
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %inbuf, i64 0, i64 0, !dbg !2629
  %8 = bitcast i32* %arraydecay to i8*, !dbg !2629
  %9 = load i8*, i8** %in.addr, align 8, !dbg !2630
  %10 = load i64, i64* %inlen.addr, align 8, !dbg !2631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 1 %9, i64 %10, i1 false), !dbg !2629
  store i32 0, i32* %i, align 4, !dbg !2632
  br label %for.cond, !dbg !2634

for.cond:                                         ; preds = %for.inc, %if.end10
  %11 = load i32, i32* %i, align 4, !dbg !2635
  %conv = sext i32 %11 to i64, !dbg !2635
  %12 = load i64, i64* %inbuflen, align 8, !dbg !2637
  %cmp11 = icmp ult i64 %conv, %12, !dbg !2638
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2639

for.body:                                         ; preds = %for.cond
  %13 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2640
  %14 = load i32, i32* %i, align 4, !dbg !2641
  %idxprom = sext i32 %14 to i64, !dbg !2642
  %arrayidx = getelementptr [4 x i32], [4 x i32]* %inbuf, i64 0, i64 %idxprom, !dbg !2642
  %15 = load i32, i32* %arrayidx, align 4, !dbg !2642
  %16 = load i32, i32* %i, align 4, !dbg !2643
  %mul = mul i32 4, %16, !dbg !2644
  call void @ipc_data_writel(%struct.intel_scu_ipc_dev* %13, i32 %15, i32 %mul) #9, !dbg !2645
  br label %for.inc, !dbg !2645

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !2646
  %inc = add i32 %17, 1, !dbg !2646
  store i32 %inc, i32* %i, align 4, !dbg !2646
  br label %for.cond, !dbg !2647, !llvm.loop !2648

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* %size.addr, align 8, !dbg !2650
  %shl = shl i64 %18, 16, !dbg !2651
  %19 = load i32, i32* %sub.addr, align 4, !dbg !2652
  %shl13 = shl i32 %19, 12, !dbg !2653
  %conv14 = sext i32 %shl13 to i64, !dbg !2654
  %or = or i64 %shl, %conv14, !dbg !2655
  %20 = load i32, i32* %cmd.addr, align 4, !dbg !2656
  %conv15 = sext i32 %20 to i64, !dbg !2656
  %or16 = or i64 %or, %conv15, !dbg !2657
  %conv17 = trunc i64 %or16 to i32, !dbg !2658
  store i32 %conv17, i32* %cmdval, align 4, !dbg !2659
  %21 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2660
  %22 = load i32, i32* %cmdval, align 4, !dbg !2661
  call void @ipc_command(%struct.intel_scu_ipc_dev* %21, i32 %22) #9, !dbg !2662
  %23 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2663
  %call = call i32 @intel_scu_ipc_check_status(%struct.intel_scu_ipc_dev* %23) #9, !dbg !2664
  store i32 %call, i32* %err, align 4, !dbg !2665
  %24 = load i32, i32* %err, align 4, !dbg !2666
  %tobool18 = icmp ne i32 %24, 0, !dbg !2666
  br i1 %tobool18, label %if.end33, label %if.then19, !dbg !2668

if.then19:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata [4 x i32]* %outbuf, metadata !2669, metadata !DIExpression()), !dbg !2671
  %25 = bitcast [4 x i32]* %outbuf to i8*, !dbg !2671
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 16, i1 false), !dbg !2671
  store i32 0, i32* %i, align 4, !dbg !2672
  br label %for.cond20, !dbg !2674

for.cond20:                                       ; preds = %for.inc29, %if.then19
  %26 = load i32, i32* %i, align 4, !dbg !2675
  %conv21 = sext i32 %26 to i64, !dbg !2675
  %27 = load i64, i64* %outbuflen, align 8, !dbg !2677
  %cmp22 = icmp ult i64 %conv21, %27, !dbg !2678
  br i1 %cmp22, label %for.body24, label %for.end31, !dbg !2679

for.body24:                                       ; preds = %for.cond20
  %28 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2680
  %29 = load i32, i32* %i, align 4, !dbg !2681
  %mul25 = mul i32 4, %29, !dbg !2682
  %call26 = call i32 @ipc_data_readl(%struct.intel_scu_ipc_dev* %28, i32 %mul25) #9, !dbg !2683
  %30 = load i32, i32* %i, align 4, !dbg !2684
  %idxprom27 = sext i32 %30 to i64, !dbg !2685
  %arrayidx28 = getelementptr [4 x i32], [4 x i32]* %outbuf, i64 0, i64 %idxprom27, !dbg !2685
  store i32 %call26, i32* %arrayidx28, align 4, !dbg !2686
  br label %for.inc29, !dbg !2685

for.inc29:                                        ; preds = %for.body24
  %31 = load i32, i32* %i, align 4, !dbg !2687
  %inc30 = add i32 %31, 1, !dbg !2687
  store i32 %inc30, i32* %i, align 4, !dbg !2687
  br label %for.cond20, !dbg !2688, !llvm.loop !2689

for.end31:                                        ; preds = %for.cond20
  %32 = load i8*, i8** %out.addr, align 8, !dbg !2691
  %arraydecay32 = getelementptr inbounds [4 x i32], [4 x i32]* %outbuf, i64 0, i64 0, !dbg !2692
  %33 = bitcast i32* %arraydecay32 to i8*, !dbg !2692
  %34 = load i64, i64* %outlen.addr, align 8, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 16 %33, i64 %34, i1 false), !dbg !2692
  br label %if.end33, !dbg !2694

if.end33:                                         ; preds = %for.end31, %for.end
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2695
  %35 = load i32, i32* %err, align 4, !dbg !2696
  %tobool34 = icmp ne i32 %35, 0, !dbg !2696
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !2698

if.then35:                                        ; preds = %if.end33
  %36 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2699
  %dev = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %36, i32 0, i32 0, !dbg !2699
  %37 = load i32, i32* %cmdval, align 4, !dbg !2699
  %38 = load i32, i32* %err, align 4, !dbg !2699
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38) #10, !dbg !2699
  br label %if.end36, !dbg !2699

if.end36:                                         ; preds = %if.then35, %if.end33
  %39 = load i32, i32* %err, align 4, !dbg !2700
  store i32 %39, i32* %retval, align 4, !dbg !2701
  br label %return, !dbg !2701

return:                                           ; preds = %if.end36, %if.then9, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !2702
  ret i32 %40, !dbg !2702
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ipc_data_writel(%struct.intel_scu_ipc_dev* %scu, i32 %data, i32 %offset) #0 !dbg !2703 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %data.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2706, metadata !DIExpression()), !dbg !2707
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  %0 = load i32, i32* %data.addr, align 4, !dbg !2712
  %1 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2713
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %1, i32 0, i32 4, !dbg !2714
  %2 = load i8*, i8** %ipc_base, align 8, !dbg !2714
  %add.ptr = getelementptr i8, i8* %2, i64 128, !dbg !2715
  %3 = load i32, i32* %offset.addr, align 4, !dbg !2716
  %idx.ext = zext i32 %3 to i64, !dbg !2717
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !2717
  call void @writel(i32 %0, i8* %add.ptr1) #9, !dbg !2718
  ret void, !dbg !2719
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipc_data_readl(%struct.intel_scu_ipc_dev* %scu, i32 %offset) #0 !dbg !2720 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !2727
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %0, i32 0, i32 4, !dbg !2728
  %1 = load i8*, i8** %ipc_base, align 8, !dbg !2728
  %add.ptr = getelementptr i8, i8* %1, i64 144, !dbg !2729
  %2 = load i32, i32* %offset.addr, align 4, !dbg !2730
  %idx.ext = zext i32 %2 to i64, !dbg !2731
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !2731
  %call = call i32 @readl(i8* %add.ptr1) #9, !dbg !2732
  ret i32 %call, !dbg !2733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_scu_ipc_dev* @__intel_scu_ipc_register(%struct.device* %parent, %struct.intel_scu_ipc_data* %scu_data, %struct.module* %owner) #0 !dbg !2734 {
entry:
  %retval = alloca %struct.intel_scu_ipc_dev*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %scu_data.addr = alloca %struct.intel_scu_ipc_data*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %err = alloca i32, align 4
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  %ipc_base = alloca i8*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2744, metadata !DIExpression()), !dbg !2745
  store %struct.intel_scu_ipc_data* %scu_data, %struct.intel_scu_ipc_data** %scu_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_data** %scu_data.addr, metadata !2746, metadata !DIExpression()), !dbg !2747
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata i8** %ipc_base, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @mutex_lock(%struct.mutex* @ipclock) #9, !dbg !2756
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2757
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %0, null, !dbg !2757
  br i1 %tobool, label %if.then, label %if.end, !dbg !2759

if.then:                                          ; preds = %entry
  store i32 -16, i32* %err, align 4, !dbg !2760
  br label %err_unlock, !dbg !2762

if.end:                                           ; preds = %entry
  %call = call i8* @kzalloc(i64 808, i32 3264) #9, !dbg !2763
  %1 = bitcast i8* %call to %struct.intel_scu_ipc_dev*, !dbg !2763
  store %struct.intel_scu_ipc_dev* %1, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2764
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2765
  %tobool1 = icmp ne %struct.intel_scu_ipc_dev* %2, null, !dbg !2765
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2767

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !2768
  br label %err_unlock, !dbg !2770

if.end3:                                          ; preds = %if.end
  %3 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2771
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2772
  %owner4 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %4, i32 0, i32 2, !dbg !2773
  store %struct.module* %3, %struct.module** %owner4, align 8, !dbg !2774
  %5 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2775
  %6 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2776
  %dev = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %6, i32 0, i32 0, !dbg !2777
  %parent5 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2778
  store %struct.device* %5, %struct.device** %parent5, align 8, !dbg !2779
  %7 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2780
  %dev6 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %7, i32 0, i32 0, !dbg !2781
  %class = getelementptr inbounds %struct.device, %struct.device* %dev6, i32 0, i32 29, !dbg !2782
  store %struct.class* @intel_scu_ipc_class, %struct.class** %class, align 8, !dbg !2783
  %8 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2784
  %dev7 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %8, i32 0, i32 0, !dbg !2785
  %release = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 31, !dbg !2786
  store void (%struct.device*)* @intel_scu_ipc_release, void (%struct.device*)** %release, align 8, !dbg !2787
  %9 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2788
  %dev8 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %9, i32 0, i32 0, !dbg !2789
  %call9 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2790
  %10 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2791
  %mem = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %10, i32 0, i32 0, !dbg !2791
  %start = getelementptr inbounds %struct.resource, %struct.resource* %mem, i32 0, i32 0, !dbg !2791
  %11 = load i64, i64* %start, align 8, !dbg !2791
  %12 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2791
  %mem10 = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %12, i32 0, i32 0, !dbg !2791
  %call11 = call i64 @resource_size(%struct.resource* %mem10) #9, !dbg !2791
  %call12 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %11, i64 %call11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0) #9, !dbg !2791
  %tobool13 = icmp ne %struct.resource* %call12, null, !dbg !2791
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2793

if.then14:                                        ; preds = %if.end3
  store i32 -16, i32* %err, align 4, !dbg !2794
  br label %err_free, !dbg !2796

if.end15:                                         ; preds = %if.end3
  %13 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2797
  %mem16 = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %13, i32 0, i32 0, !dbg !2798
  %start17 = getelementptr inbounds %struct.resource, %struct.resource* %mem16, i32 0, i32 0, !dbg !2799
  %14 = load i64, i64* %start17, align 8, !dbg !2799
  %15 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2800
  %mem18 = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %15, i32 0, i32 0, !dbg !2801
  %call19 = call i64 @resource_size(%struct.resource* %mem18) #9, !dbg !2802
  %call20 = call i8* @ioremap(i64 %14, i64 %call19) #9, !dbg !2803
  store i8* %call20, i8** %ipc_base, align 8, !dbg !2804
  %16 = load i8*, i8** %ipc_base, align 8, !dbg !2805
  %tobool21 = icmp ne i8* %16, null, !dbg !2805
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !2807

if.then22:                                        ; preds = %if.end15
  store i32 -12, i32* %err, align 4, !dbg !2808
  br label %err_release, !dbg !2810

if.end23:                                         ; preds = %if.end15
  %17 = load i8*, i8** %ipc_base, align 8, !dbg !2811
  %18 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2812
  %ipc_base24 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %18, i32 0, i32 4, !dbg !2813
  store i8* %17, i8** %ipc_base24, align 8, !dbg !2814
  %19 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2815
  %mem25 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %19, i32 0, i32 1, !dbg !2816
  %20 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2817
  %mem26 = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %20, i32 0, i32 0, !dbg !2818
  %21 = bitcast %struct.resource* %mem25 to i8*, !dbg !2818
  %22 = bitcast %struct.resource* %mem26 to i8*, !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 64, i1 false), !dbg !2818
  %23 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2819
  %irq = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %23, i32 0, i32 1, !dbg !2820
  %24 = load i32, i32* %irq, align 8, !dbg !2820
  %25 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2821
  %irq27 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %25, i32 0, i32 3, !dbg !2822
  store i32 %24, i32* %irq27, align 8, !dbg !2823
  %26 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2824
  %cmd_complete = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %26, i32 0, i32 5, !dbg !2824
  call void @__init_completion(%struct.completion* %cmd_complete) #9, !dbg !2824
  %27 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2825
  %irq28 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %27, i32 0, i32 3, !dbg !2827
  %28 = load i32, i32* %irq28, align 8, !dbg !2827
  %cmp = icmp sgt i32 %28, 0, !dbg !2828
  br i1 %cmp, label %if.then29, label %if.end35, !dbg !2829

if.then29:                                        ; preds = %if.end23
  %29 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2830
  %irq30 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %29, i32 0, i32 3, !dbg !2832
  %30 = load i32, i32* %irq30, align 8, !dbg !2832
  %31 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2833
  %32 = bitcast %struct.intel_scu_ipc_dev* %31 to i8*, !dbg !2833
  %call31 = call i32 @request_irq(i32 %30, i32 (i32, i8*)* @ioc, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %32) #9, !dbg !2834
  store i32 %call31, i32* %err, align 4, !dbg !2835
  %33 = load i32, i32* %err, align 4, !dbg !2836
  %tobool32 = icmp ne i32 %33, 0, !dbg !2836
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !2838

if.then33:                                        ; preds = %if.then29
  br label %err_unmap, !dbg !2839

if.end34:                                         ; preds = %if.then29
  br label %if.end35, !dbg !2840

if.end35:                                         ; preds = %if.end34, %if.end23
  %34 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2841
  %dev36 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %34, i32 0, i32 0, !dbg !2842
  %call37 = call i32 @device_register(%struct.device* %dev36) #9, !dbg !2843
  store i32 %call37, i32* %err, align 4, !dbg !2844
  %35 = load i32, i32* %err, align 4, !dbg !2845
  %tobool38 = icmp ne i32 %35, 0, !dbg !2845
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !2847

if.then39:                                        ; preds = %if.end35
  %36 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2848
  %dev40 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %36, i32 0, i32 0, !dbg !2850
  call void @put_device(%struct.device* %dev40) #9, !dbg !2851
  br label %err_unlock, !dbg !2852

if.end41:                                         ; preds = %if.end35
  %37 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2853
  store %struct.intel_scu_ipc_dev* %37, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !2854
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2855
  %38 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2856
  store %struct.intel_scu_ipc_dev* %38, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2857
  br label %return, !dbg !2857

err_unmap:                                        ; preds = %if.then33
  call void @llvm.dbg.label(metadata !2858), !dbg !2859
  %39 = load i8*, i8** %ipc_base, align 8, !dbg !2860
  call void @iounmap(i8* %39) #9, !dbg !2861
  br label %err_release, !dbg !2861

err_release:                                      ; preds = %err_unmap, %if.then22
  call void @llvm.dbg.label(metadata !2862), !dbg !2863
  %40 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2864
  %mem42 = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %40, i32 0, i32 0, !dbg !2864
  %start43 = getelementptr inbounds %struct.resource, %struct.resource* %mem42, i32 0, i32 0, !dbg !2864
  %41 = load i64, i64* %start43, align 8, !dbg !2864
  %42 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !2864
  %mem44 = getelementptr inbounds %struct.intel_scu_ipc_data, %struct.intel_scu_ipc_data* %42, i32 0, i32 0, !dbg !2864
  %call45 = call i64 @resource_size(%struct.resource* %mem44) #9, !dbg !2864
  call void @__release_region(%struct.resource* @iomem_resource, i64 %41, i64 %call45) #9, !dbg !2864
  br label %err_free, !dbg !2864

err_free:                                         ; preds = %err_release, %if.then14
  call void @llvm.dbg.label(metadata !2865), !dbg !2866
  %43 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !2867
  %44 = bitcast %struct.intel_scu_ipc_dev* %43 to i8*, !dbg !2867
  call void @kfree(i8* %44) #9, !dbg !2868
  br label %err_unlock, !dbg !2868

err_unlock:                                       ; preds = %err_free, %if.then39, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !2869), !dbg !2870
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !2871
  %45 = load i32, i32* %err, align 4, !dbg !2872
  %conv = sext i32 %45 to i64, !dbg !2872
  %call46 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !2873
  %46 = bitcast i8* %call46 to %struct.intel_scu_ipc_dev*, !dbg !2873
  store %struct.intel_scu_ipc_dev* %46, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2874
  br label %return, !dbg !2874

return:                                           ; preds = %err_unlock, %if.end41
  %47 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !2875
  ret %struct.intel_scu_ipc_dev* %47, !dbg !2875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2876 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2879, metadata !DIExpression()), !dbg !2883
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2889, metadata !DIExpression()), !dbg !2890
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2891, metadata !DIExpression()), !dbg !2892
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2893, metadata !DIExpression()), !dbg !2894
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2895, metadata !DIExpression()), !dbg !2899
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2901, metadata !DIExpression()), !dbg !2905
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2907, metadata !DIExpression()), !dbg !2911
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2916, metadata !DIExpression()), !dbg !2917
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2918, metadata !DIExpression()), !dbg !2919
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2920, metadata !DIExpression()), !dbg !2921
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2922, metadata !DIExpression()), !dbg !2923
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2924, metadata !DIExpression()), !dbg !2925
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2926, metadata !DIExpression()), !dbg !2927
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2928, metadata !DIExpression()), !dbg !2929
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2930, metadata !DIExpression()), !dbg !2931
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2932, metadata !DIExpression()), !dbg !2933
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2934, metadata !DIExpression()), !dbg !2935
  %0 = load i64, i64* %size.addr, align 8, !dbg !2936
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2937
  %or = or i32 %1, 256, !dbg !2938
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2939
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !2940
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2941

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2942
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2943
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2944

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2945
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2946
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2947
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !2948
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2925
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2949
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2950
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2951
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2952
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2953
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2954
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !2955
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2955
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2955
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2955
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !2955
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2956
  br label %kmalloc.exit, !dbg !2956

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2957
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2958
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2958
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2960

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2961
  br label %kmalloc_index.exit.i, !dbg !2961

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2962
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2964
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2965

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2966
  br label %kmalloc_index.exit.i, !dbg !2966

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2967
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2969
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2970

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2971
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2972
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2973

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2974
  br label %kmalloc_index.exit.i, !dbg !2974

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2975
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2977
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2978

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2979
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2980
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2981

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2982
  br label %kmalloc_index.exit.i, !dbg !2982

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2983
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2985
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2986

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2987
  br label %kmalloc_index.exit.i, !dbg !2987

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2988
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2990
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2991

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2992
  br label %kmalloc_index.exit.i, !dbg !2992

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2993
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2995
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2996

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2997
  br label %kmalloc_index.exit.i, !dbg !2997

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2998
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3000
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3001

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3002
  br label %kmalloc_index.exit.i, !dbg !3002

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3003
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3005
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3006

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3007
  br label %kmalloc_index.exit.i, !dbg !3007

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3008
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3010
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3011

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3012
  br label %kmalloc_index.exit.i, !dbg !3012

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3013
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3015
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3016

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3017
  br label %kmalloc_index.exit.i, !dbg !3017

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3018
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3020
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3021

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3022
  br label %kmalloc_index.exit.i, !dbg !3022

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3025
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3026

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3027
  br label %kmalloc_index.exit.i, !dbg !3027

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3028
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3030
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3031

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3032
  br label %kmalloc_index.exit.i, !dbg !3032

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3033
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3035
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3036

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3037
  br label %kmalloc_index.exit.i, !dbg !3037

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3038
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3040
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3041

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3042
  br label %kmalloc_index.exit.i, !dbg !3042

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3043
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3045
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3046

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3047
  br label %kmalloc_index.exit.i, !dbg !3047

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3048
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3050
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3051

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3052
  br label %kmalloc_index.exit.i, !dbg !3052

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3053
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3055
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3056

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3057
  br label %kmalloc_index.exit.i, !dbg !3057

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3058
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3060
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3061

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3062
  br label %kmalloc_index.exit.i, !dbg !3062

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3063
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3065
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3066

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3067
  br label %kmalloc_index.exit.i, !dbg !3067

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3068
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3070
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3071

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3072
  br label %kmalloc_index.exit.i, !dbg !3072

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3073
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3075
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3076

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3077
  br label %kmalloc_index.exit.i, !dbg !3077

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3078
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3080
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3081

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3082
  br label %kmalloc_index.exit.i, !dbg !3082

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3083
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3085
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3086

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3087
  br label %kmalloc_index.exit.i, !dbg !3087

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3088
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3090
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3091

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3092
  br label %kmalloc_index.exit.i, !dbg !3092

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3093
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3095
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3096

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3097
  br label %kmalloc_index.exit.i, !dbg !3097

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3098
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3100
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3101

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3102
  br label %kmalloc_index.exit.i, !dbg !3102

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3103, !srcloc !3106
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #11, !dbg !3107, !srcloc !3110
  unreachable, !dbg !3111

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3112
  store i32 %45, i32* %index.i, align 4, !dbg !3113
  %46 = load i32, i32* %index.i, align 4, !dbg !3114
  %tobool.i = icmp ne i32 %46, 0, !dbg !3114
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3116

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3117
  br label %kmalloc.exit, !dbg !3117

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3118
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3119
  %and.i.i = and i32 %48, 17, !dbg !3119
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3119
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3119
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3119
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3119
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3121

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3122
  br label %kmalloc_type.exit.i, !dbg !3122

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3123
  %and2.i.i = and i32 %49, 1, !dbg !3124
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3123
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3123
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3123
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3125
  br label %kmalloc_type.exit.i, !dbg !3125

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3126
  %idxprom.i = zext i32 %51 to i64, !dbg !3127
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3127
  %52 = load i32, i32* %index.i, align 4, !dbg !3128
  %idxprom6.i = zext i32 %52 to i64, !dbg !3127
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3127
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3127
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3129
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3130
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3131
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3132
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3133
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3133
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3133
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3133
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3133
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2894
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3134
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3135
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3136
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3137
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3138
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3139
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3140
  store i8* %62, i8** %retval.i, align 8, !dbg !3141
  br label %kmalloc.exit, !dbg !3141

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3142
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3143
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3144
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3144
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3144
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3144
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3144
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3145
  br label %kmalloc.exit, !dbg !3145

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3146
  ret i8* %65, !dbg !3147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_scu_ipc_release(%struct.device* %dev) #0 !dbg !3148 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !3151, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3153, metadata !DIExpression()), !dbg !3155
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3155
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3155
  store i8* %1, i8** %__mptr, align 8, !dbg !3155
  br label %do.body, !dbg !3155

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3156

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3155
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !3155
  %3 = bitcast i8* %add.ptr to %struct.intel_scu_ipc_dev*, !dbg !3155
  store %struct.intel_scu_ipc_dev* %3, %struct.intel_scu_ipc_dev** %tmp, align 8, !dbg !3156
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %tmp, align 8, !dbg !3155
  store %struct.intel_scu_ipc_dev* %4, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3158
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3159
  %irq = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %5, i32 0, i32 3, !dbg !3161
  %6 = load i32, i32* %irq, align 8, !dbg !3161
  %cmp = icmp sgt i32 %6, 0, !dbg !3162
  br i1 %cmp, label %if.then, label %if.end, !dbg !3163

if.then:                                          ; preds = %do.end
  %7 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3164
  %irq1 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %7, i32 0, i32 3, !dbg !3165
  %8 = load i32, i32* %irq1, align 8, !dbg !3165
  %9 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3166
  %10 = bitcast %struct.intel_scu_ipc_dev* %9 to i8*, !dbg !3166
  %call = call i8* @free_irq(i32 %8, i8* %10) #9, !dbg !3167
  br label %if.end, !dbg !3167

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3168
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %11, i32 0, i32 4, !dbg !3169
  %12 = load i8*, i8** %ipc_base, align 8, !dbg !3169
  call void @iounmap(i8* %12) #9, !dbg !3170
  %13 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3171
  %mem = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %13, i32 0, i32 1, !dbg !3171
  %start = getelementptr inbounds %struct.resource, %struct.resource* %mem, i32 0, i32 0, !dbg !3171
  %14 = load i64, i64* %start, align 8, !dbg !3171
  %15 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3171
  %mem2 = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %15, i32 0, i32 1, !dbg !3171
  %call3 = call i64 @resource_size(%struct.resource* %mem2) #9, !dbg !3171
  call void @__release_region(%struct.resource* @iomem_resource, i64 %14, i64 %call3) #9, !dbg !3171
  %16 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3172
  %17 = bitcast %struct.intel_scu_ipc_dev* %16 to i8*, !dbg !3172
  call void @kfree(i8* %17) #9, !dbg !3173
  ret void, !dbg !3174
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !3175 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3182
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !3183
  %1 = load i64, i64* %end, align 8, !dbg !3183
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3184
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !3185
  %3 = load i64, i64* %start, align 8, !dbg !3185
  %sub = sub i64 %1, %3, !dbg !3186
  %add = add i64 %sub, 1, !dbg !3187
  ret i64 %add, !dbg !3188
}

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #0 !dbg !2058 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3191
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !3192
  store i32 0, i32* %done, align 8, !dbg !3193
  br label %do.body, !dbg !3194

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3195
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !3195
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #9, !dbg !3195
  br label %do.end, !dbg !3195

do.end:                                           ; preds = %do.body
  ret void, !dbg !3197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !3198 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !3215, metadata !DIExpression()), !dbg !3216
  %0 = load i32, i32* %irq.addr, align 4, !dbg !3217
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !3218
  %2 = load i64, i64* %flags.addr, align 8, !dbg !3219
  %3 = load i8*, i8** %name.addr, align 8, !dbg !3220
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !3221
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #9, !dbg !3222
  ret i32 %call, !dbg !3223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ioc(i32 %irq, i8* %dev_id) #0 !dbg !3224 {
entry:
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  %status = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !3225, metadata !DIExpression()), !dbg !3226
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !3229, metadata !DIExpression()), !dbg !3230
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !3231
  %1 = bitcast i8* %0 to %struct.intel_scu_ipc_dev*, !dbg !3231
  store %struct.intel_scu_ipc_dev* %1, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3230
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3232, metadata !DIExpression()), !dbg !3233
  %2 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3234
  %call = call zeroext i8 @ipc_read_status(%struct.intel_scu_ipc_dev* %2) #9, !dbg !3235
  %conv = zext i8 %call to i32, !dbg !3235
  store i32 %conv, i32* %status, align 4, !dbg !3233
  %3 = load i32, i32* %status, align 4, !dbg !3236
  %conv1 = sext i32 %3 to i64, !dbg !3236
  %or = or i64 %conv1, 4, !dbg !3237
  %conv2 = trunc i64 %or to i32, !dbg !3236
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3238
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %4, i32 0, i32 4, !dbg !3239
  %5 = load i8*, i8** %ipc_base, align 8, !dbg !3239
  %add.ptr = getelementptr i8, i8* %5, i64 4, !dbg !3240
  call void @writel(i32 %conv2, i8* %add.ptr) #9, !dbg !3241
  %6 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3242
  %cmd_complete = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %6, i32 0, i32 5, !dbg !3243
  call void @complete(%struct.completion* %cmd_complete) #9, !dbg !3244
  ret i32 1, !dbg !3245
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3246 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3250, metadata !DIExpression()), !dbg !3251
  %0 = load i64, i64* %error.addr, align 8, !dbg !3252
  %1 = inttoptr i64 %0 to i8*, !dbg !3253
  ret i8* %1, !dbg !3254
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_scu_ipc_unregister(%struct.intel_scu_ipc_dev* %scu) #0 !dbg !3255 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !3256, metadata !DIExpression()), !dbg !3257
  call void @mutex_lock(%struct.mutex* @ipclock) #9, !dbg !3258
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3259, metadata !DIExpression()), !dbg !3262
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !3262
  %tobool = icmp ne %struct.intel_scu_ipc_dev* %0, null, !dbg !3262
  %lnot = xor i1 %tobool, true, !dbg !3262
  %lnot1 = xor i1 %lnot, true, !dbg !3262
  %lnot2 = xor i1 %lnot1, true, !dbg !3262
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3262
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3262
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3263
  %tobool3 = icmp ne i32 %1, 0, !dbg !3263
  %lnot4 = xor i1 %tobool3, true, !dbg !3263
  %lnot6 = xor i1 %lnot4, true, !dbg !3263
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3263
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3263
  %tobool8 = icmp ne i64 %conv, 0, !dbg !3263
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3262

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3263

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !3265

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !3267

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !3265

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 650, i32 2305, i64 12) #11, !dbg !3269, !srcloc !3271
  br label %do.end11, !dbg !3269

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 162) #11, !dbg !3272, !srcloc !3274
  br label %do.body12, !dbg !3265

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3275

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !3265

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !3265

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3262
  %tobool15 = icmp ne i32 %2, 0, !dbg !3262
  %lnot16 = xor i1 %tobool15, true, !dbg !3262
  %lnot18 = xor i1 %lnot16, true, !dbg !3262
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !3262
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !3262
  store i64 %conv20, i64* %tmp, align 8, !dbg !3263
  %3 = load i64, i64* %tmp, align 8, !dbg !3262
  %tobool21 = icmp ne i64 %3, 0, !dbg !3277
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !3278

if.then22:                                        ; preds = %if.end
  store %struct.intel_scu_ipc_dev* null, %struct.intel_scu_ipc_dev** @ipcdev, align 8, !dbg !3279
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !3281
  %dev = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %4, i32 0, i32 0, !dbg !3282
  call void @device_unregister(%struct.device* %dev) #9, !dbg !3283
  br label %if.end23, !dbg !3284

if.end23:                                         ; preds = %if.then22, %if.end
  call void @mutex_unlock(%struct.mutex* @ipclock) #9, !dbg !3285
  ret void, !dbg !3286
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_scu_ipc_dev* @__devm_intel_scu_ipc_register(%struct.device* %parent, %struct.intel_scu_ipc_data* %scu_data, %struct.module* %owner) #0 !dbg !3287 {
entry:
  %retval = alloca %struct.intel_scu_ipc_dev*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %scu_data.addr = alloca %struct.intel_scu_ipc_data*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %dr = alloca %struct.intel_scu_ipc_devres*, align 8
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !3288, metadata !DIExpression()), !dbg !3289
  store %struct.intel_scu_ipc_data* %scu_data, %struct.intel_scu_ipc_data** %scu_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_data** %scu_data.addr, metadata !3290, metadata !DIExpression()), !dbg !3291
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !3292, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_devres** %dr, metadata !3294, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !3296, metadata !DIExpression()), !dbg !3297
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_intel_scu_ipc_unregister, i64 8, i32 3264) #9, !dbg !3298
  %0 = bitcast i8* %call to %struct.intel_scu_ipc_devres*, !dbg !3298
  store %struct.intel_scu_ipc_devres* %0, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3299
  %1 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3300
  %tobool = icmp ne %struct.intel_scu_ipc_devres* %1, null, !dbg !3300
  br i1 %tobool, label %if.end, label %if.then, !dbg !3302

if.then:                                          ; preds = %entry
  store %struct.intel_scu_ipc_dev* null, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !3303
  br label %return, !dbg !3303

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3304
  %3 = load %struct.intel_scu_ipc_data*, %struct.intel_scu_ipc_data** %scu_data.addr, align 8, !dbg !3305
  %4 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !3306
  %call1 = call %struct.intel_scu_ipc_dev* @__intel_scu_ipc_register(%struct.device* %2, %struct.intel_scu_ipc_data* %3, %struct.module* %4) #9, !dbg !3307
  store %struct.intel_scu_ipc_dev* %call1, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3308
  %5 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3309
  %6 = bitcast %struct.intel_scu_ipc_dev* %5 to i8*, !dbg !3309
  %call2 = call zeroext i1 @IS_ERR(i8* %6) #9, !dbg !3311
  br i1 %call2, label %if.then3, label %if.end4, !dbg !3312

if.then3:                                         ; preds = %if.end
  %7 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3313
  %8 = bitcast %struct.intel_scu_ipc_devres* %7 to i8*, !dbg !3313
  call void @devres_free(i8* %8) #9, !dbg !3315
  %9 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3316
  store %struct.intel_scu_ipc_dev* %9, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !3317
  br label %return, !dbg !3317

if.end4:                                          ; preds = %if.end
  %10 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3318
  %11 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3319
  %scu5 = getelementptr inbounds %struct.intel_scu_ipc_devres, %struct.intel_scu_ipc_devres* %11, i32 0, i32 0, !dbg !3320
  store %struct.intel_scu_ipc_dev* %10, %struct.intel_scu_ipc_dev** %scu5, align 8, !dbg !3321
  %12 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !3322
  %13 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3323
  %14 = bitcast %struct.intel_scu_ipc_devres* %13 to i8*, !dbg !3323
  call void @devres_add(%struct.device* %12, i8* %14) #9, !dbg !3324
  %15 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3325
  store %struct.intel_scu_ipc_dev* %15, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !3326
  br label %return, !dbg !3326

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %16 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %retval, align 8, !dbg !3327
  ret %struct.intel_scu_ipc_dev* %16, !dbg !3327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_intel_scu_ipc_unregister(%struct.device* %dev, i8* %res) #0 !dbg !3328 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %dr = alloca %struct.intel_scu_ipc_devres*, align 8
  %scu = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !3331, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_devres** %dr, metadata !3333, metadata !DIExpression()), !dbg !3334
  %0 = load i8*, i8** %res.addr, align 8, !dbg !3335
  %1 = bitcast i8* %0 to %struct.intel_scu_ipc_devres*, !dbg !3335
  store %struct.intel_scu_ipc_devres* %1, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3334
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu, metadata !3336, metadata !DIExpression()), !dbg !3337
  %2 = load %struct.intel_scu_ipc_devres*, %struct.intel_scu_ipc_devres** %dr, align 8, !dbg !3338
  %scu1 = getelementptr inbounds %struct.intel_scu_ipc_devres, %struct.intel_scu_ipc_devres* %2, i32 0, i32 0, !dbg !3339
  %3 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu1, align 8, !dbg !3339
  store %struct.intel_scu_ipc_dev* %3, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3337
  %4 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu, align 8, !dbg !3340
  call void @intel_scu_ipc_unregister(%struct.intel_scu_ipc_dev* %4) #9, !dbg !3341
  ret void, !dbg !3342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3343 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3346, metadata !DIExpression()), !dbg !3347
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3348
  %1 = ptrtoint i8* %0 to i64, !dbg !3348
  %2 = inttoptr i64 %1 to i8*, !dbg !3348
  %3 = ptrtoint i8* %2 to i64, !dbg !3348
  %cmp = icmp uge i64 %3, -4095, !dbg !3348
  %lnot = xor i1 %cmp, true, !dbg !3348
  %lnot1 = xor i1 %lnot, true, !dbg !3348
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3348
  %conv = sext i32 %lnot.ext to i64, !dbg !3348
  %tobool = icmp ne i64 %conv, 0, !dbg !3348
  ret i1 %tobool, !dbg !3349
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_scu_ipc_init() #5 section ".init.text" !dbg !2063 {
entry:
  %tmp = alloca i32, align 4
  %call = call i32 @__class_register(%struct.class* @intel_scu_ipc_class, %struct.lock_class_key* @intel_scu_ipc_init.__key) #9, !dbg !3350
  store i32 %call, i32* %tmp, align 4, !dbg !3350
  %0 = load i32, i32* %tmp, align 4, !dbg !3350
  ret i32 %0, !dbg !3352
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @intel_scu_ipc_exit() #5 section ".exit.text" !dbg !3353 {
entry:
  call void @class_unregister(%struct.class* @intel_scu_ipc_class) #9, !dbg !3354
  ret void, !dbg !3355
}

; Function Attrs: noredzone
declare dso_local void @class_unregister(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @memcpy_fromio(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ipc_data_readb(%struct.intel_scu_ipc_dev* %scu, i32 %offset) #0 !dbg !3356 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !3359, metadata !DIExpression()), !dbg !3360
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !3361, metadata !DIExpression()), !dbg !3362
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !3363
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %0, i32 0, i32 4, !dbg !3364
  %1 = load i8*, i8** %ipc_base, align 8, !dbg !3364
  %add.ptr = getelementptr i8, i8* %1, i64 144, !dbg !3365
  %2 = load i32, i32* %offset.addr, align 4, !dbg !3366
  %idx.ext = zext i32 %2 to i64, !dbg !3367
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !3367
  %call = call zeroext i8 @readb(i8* %add.ptr1) #9, !dbg !3368
  ret i8 %call, !dbg !3369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !3370 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !3379, metadata !DIExpression()), !dbg !3378
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3378
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #11, !dbg !3378, !srcloc !3380
  store i8 %1, i8* %ret, align 1, !dbg !3378
  %2 = load i8, i8* %ret, align 1, !dbg !3378
  ret i8 %2, !dbg !3378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #0 !dbg !3381 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !3382, metadata !DIExpression()), !dbg !3383
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3384
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !3385
  store i32 0, i32* %done, align 8, !dbg !3386
  ret void, !dbg !3387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !3388 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3392, metadata !DIExpression()), !dbg !3393
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3394, metadata !DIExpression()), !dbg !3393
  %0 = load i32, i32* %val.addr, align 4, !dbg !3393
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !3393
  %2 = bitcast i8* %1 to i32*, !dbg !3393
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #11, !dbg !3393, !srcloc !3395
  ret void, !dbg !3393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ipc_wait_for_interrupt(%struct.intel_scu_ipc_dev* %scu) #0 !dbg !3396 {
entry:
  %retval = alloca i32, align 4
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %status = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !3397, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3399, metadata !DIExpression()), !dbg !3400
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !3401
  %cmd_complete = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %0, i32 0, i32 5, !dbg !3403
  %call = call i64 @wait_for_completion_timeout(%struct.completion* %cmd_complete, i64 750) #9, !dbg !3404
  %tobool = icmp ne i64 %call, 0, !dbg !3404
  br i1 %tobool, label %if.end, label %if.then, !dbg !3405

if.then:                                          ; preds = %entry
  store i32 -110, i32* %retval, align 4, !dbg !3406
  br label %return, !dbg !3406

if.end:                                           ; preds = %entry
  %1 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !3407
  %call1 = call zeroext i8 @ipc_read_status(%struct.intel_scu_ipc_dev* %1) #9, !dbg !3408
  %conv = zext i8 %call1 to i32, !dbg !3408
  store i32 %conv, i32* %status, align 4, !dbg !3409
  %2 = load i32, i32* %status, align 4, !dbg !3410
  %conv2 = sext i32 %2 to i64, !dbg !3410
  %and = and i64 %conv2, 2, !dbg !3412
  %tobool3 = icmp ne i64 %and, 0, !dbg !3412
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3413

if.then4:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !3414
  br label %return, !dbg !3414

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3415
  br label %return, !dbg !3415

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3416
  ret i32 %3, !dbg !3416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @busy_loop(%struct.intel_scu_ipc_dev* %scu) #0 !dbg !3417 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3418, metadata !DIExpression()), !dbg !3424
  %retval = alloca i32, align 4
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  %end = alloca i64, align 8
  %status = alloca i32, align 4
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.declare(metadata i64* %end, metadata !3428, metadata !DIExpression()), !dbg !3429
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !3430
  store i32 750, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !3431
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #11, !dbg !3433
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !3434

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !3435
  %cmp.i = icmp slt i32 %3, 0, !dbg !3438
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3439

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3440
  br label %msecs_to_jiffies.exit, !dbg !3440

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !3441
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #13, !dbg !3442
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3443
  br label %msecs_to_jiffies.exit, !dbg !3443

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !3444
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #13, !dbg !3446
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3447
  br label %msecs_to_jiffies.exit, !dbg !3447

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !3448
  %add = add i64 %0, %6, !dbg !3449
  store i64 %add, i64* %end, align 8, !dbg !3429
  br label %do.body, !dbg !3450

do.body:                                          ; preds = %do.cond, %msecs_to_jiffies.exit
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3451, metadata !DIExpression()), !dbg !3453
  %7 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !3454
  %call1 = call zeroext i8 @ipc_read_status(%struct.intel_scu_ipc_dev* %7) #9, !dbg !3455
  %conv = zext i8 %call1 to i32, !dbg !3455
  store i32 %conv, i32* %status, align 4, !dbg !3456
  %8 = load i32, i32* %status, align 4, !dbg !3457
  %conv2 = zext i32 %8 to i64, !dbg !3457
  %and = and i64 %conv2, 1, !dbg !3459
  %tobool = icmp ne i64 %and, 0, !dbg !3459
  br i1 %tobool, label %if.end, label %if.then, !dbg !3460

if.then:                                          ; preds = %do.body
  %9 = load i32, i32* %status, align 4, !dbg !3461
  %conv3 = zext i32 %9 to i64, !dbg !3461
  %and4 = and i64 %conv3, 2, !dbg !3462
  %tobool5 = icmp ne i64 %and4, 0, !dbg !3463
  %10 = zext i1 %tobool5 to i64, !dbg !3463
  %cond = select i1 %tobool5, i32 -5, i32 0, !dbg !3463
  store i32 %cond, i32* %retval, align 4, !dbg !3464
  br label %return, !dbg !3464

if.end:                                           ; preds = %do.body
  call void @usleep_range(i64 50, i64 100) #9, !dbg !3465
  br label %do.cond, !dbg !3466

do.cond:                                          ; preds = %if.end
  %11 = load volatile i64, i64* @jiffies, align 8, !dbg !3467
  %12 = load i64, i64* %end, align 8, !dbg !3467
  %sub = sub i64 %11, %12, !dbg !3467
  %cmp = icmp slt i64 %sub, 0, !dbg !3467
  br i1 %cmp, label %do.body, label %do.end, !dbg !3466, !llvm.loop !3468

do.end:                                           ; preds = %do.cond
  store i32 -110, i32* %retval, align 4, !dbg !3470
  br label %return, !dbg !3470

return:                                           ; preds = %do.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3471
  ret i32 %13, !dbg !3471
}

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @ipc_read_status(%struct.intel_scu_ipc_dev* %scu) #0 !dbg !3472 {
entry:
  %scu.addr = alloca %struct.intel_scu_ipc_dev*, align 8
  store %struct.intel_scu_ipc_dev* %scu, %struct.intel_scu_ipc_dev** %scu.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_scu_ipc_dev** %scu.addr, metadata !3475, metadata !DIExpression()), !dbg !3476
  %0 = load %struct.intel_scu_ipc_dev*, %struct.intel_scu_ipc_dev** %scu.addr, align 8, !dbg !3477
  %ipc_base = getelementptr inbounds %struct.intel_scu_ipc_dev, %struct.intel_scu_ipc_dev* %0, i32 0, i32 4, !dbg !3478
  %1 = load i8*, i8** %ipc_base, align 8, !dbg !3478
  %add.ptr = getelementptr i8, i8* %1, i64 4, !dbg !3479
  %call = call i32 @__readl(i8* %add.ptr) #9, !dbg !3480
  %conv = trunc i32 %call to i8, !dbg !3480
  ret i8 %conv, !dbg !3481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__readl(i8* %addr) #0 !dbg !3482 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3485, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3487, metadata !DIExpression()), !dbg !3486
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3486
  %1 = bitcast i8* %0 to i32*, !dbg !3486
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* %1) #11, !dbg !3486, !srcloc !3488
  store i32 %2, i32* %ret, align 4, !dbg !3486
  %3 = load i32, i32* %ret, align 4, !dbg !3486
  ret i32 %3, !dbg !3486
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !3489 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !3490, metadata !DIExpression()), !dbg !3491
  %0 = load i32, i32* %m.addr, align 4, !dbg !3492
  %conv = zext i32 %0 to i64, !dbg !3492
  %add = add i64 %conv, 4, !dbg !3493
  %sub = sub i64 %add, 1, !dbg !3494
  %div = sdiv i64 %sub, 4, !dbg !3495
  ret i64 %div, !dbg !3496
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !3497 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3500, metadata !DIExpression()), !dbg !3499
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !3499
  %1 = bitcast i8* %0 to i32*, !dbg !3499
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #11, !dbg !3499, !srcloc !3501
  store i32 %2, i32* %ret, align 4, !dbg !3499
  %3 = load i32, i32* %ret, align 4, !dbg !3499
  ret i32 %3, !dbg !3499
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3502 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3506, metadata !DIExpression()), !dbg !3511
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3513, metadata !DIExpression()), !dbg !3514
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3515, metadata !DIExpression()), !dbg !3516
  %0 = load i64, i64* %size.addr, align 8, !dbg !3517
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3519
  br i1 %1, label %if.then, label %if.end447, !dbg !3520

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3521
  %tobool = icmp ne i64 %2, 0, !dbg !3521
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3524

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3525
  br label %return, !dbg !3525

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3526
  %cmp = icmp ult i64 %3, 4096, !dbg !3528
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3529

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3530
  br label %return, !dbg !3530

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub = sub i64 %4, 1, !dbg !3531
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3531
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3531

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub4 = sub i64 %6, 1, !dbg !3531
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3531
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3531

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub6 = sub i64 %8, 1, !dbg !3531
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3531
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3531

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3531

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub9 = sub i64 %9, 1, !dbg !3531
  %and = and i64 %sub9, -9223372036854775808, !dbg !3531
  %tobool10 = icmp ne i64 %and, 0, !dbg !3531
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3531

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3531

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub13 = sub i64 %10, 1, !dbg !3531
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3531
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3531
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3531

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3531

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub18 = sub i64 %11, 1, !dbg !3531
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3531
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3531
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3531

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3531

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub23 = sub i64 %12, 1, !dbg !3531
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3531
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3531
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3531

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3531

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub28 = sub i64 %13, 1, !dbg !3531
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3531
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3531
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3531

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3531

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub33 = sub i64 %14, 1, !dbg !3531
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3531
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3531
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3531

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3531

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub38 = sub i64 %15, 1, !dbg !3531
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3531
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3531
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3531

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3531

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub43 = sub i64 %16, 1, !dbg !3531
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3531
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3531
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3531

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3531

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub48 = sub i64 %17, 1, !dbg !3531
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3531
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3531
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3531

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3531

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub53 = sub i64 %18, 1, !dbg !3531
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3531
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3531
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3531

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3531

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub58 = sub i64 %19, 1, !dbg !3531
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3531
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3531
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3531

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3531

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub63 = sub i64 %20, 1, !dbg !3531
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3531
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3531
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3531

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3531

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub68 = sub i64 %21, 1, !dbg !3531
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3531
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3531
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3531

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3531

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub73 = sub i64 %22, 1, !dbg !3531
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3531
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3531
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3531

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3531

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub78 = sub i64 %23, 1, !dbg !3531
  %and79 = and i64 %sub78, 562949953421312, !dbg !3531
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3531
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3531

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3531

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub83 = sub i64 %24, 1, !dbg !3531
  %and84 = and i64 %sub83, 281474976710656, !dbg !3531
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3531
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3531

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3531

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub88 = sub i64 %25, 1, !dbg !3531
  %and89 = and i64 %sub88, 140737488355328, !dbg !3531
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3531
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3531

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3531

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub93 = sub i64 %26, 1, !dbg !3531
  %and94 = and i64 %sub93, 70368744177664, !dbg !3531
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3531
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3531

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3531

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub98 = sub i64 %27, 1, !dbg !3531
  %and99 = and i64 %sub98, 35184372088832, !dbg !3531
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3531
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3531

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3531

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub103 = sub i64 %28, 1, !dbg !3531
  %and104 = and i64 %sub103, 17592186044416, !dbg !3531
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3531
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3531

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3531

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub108 = sub i64 %29, 1, !dbg !3531
  %and109 = and i64 %sub108, 8796093022208, !dbg !3531
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3531
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3531

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3531

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub113 = sub i64 %30, 1, !dbg !3531
  %and114 = and i64 %sub113, 4398046511104, !dbg !3531
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3531
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3531

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3531

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub118 = sub i64 %31, 1, !dbg !3531
  %and119 = and i64 %sub118, 2199023255552, !dbg !3531
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3531
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3531

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3531

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub123 = sub i64 %32, 1, !dbg !3531
  %and124 = and i64 %sub123, 1099511627776, !dbg !3531
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3531
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3531

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3531

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub128 = sub i64 %33, 1, !dbg !3531
  %and129 = and i64 %sub128, 549755813888, !dbg !3531
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3531
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3531

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3531

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub133 = sub i64 %34, 1, !dbg !3531
  %and134 = and i64 %sub133, 274877906944, !dbg !3531
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3531
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3531

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3531

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub138 = sub i64 %35, 1, !dbg !3531
  %and139 = and i64 %sub138, 137438953472, !dbg !3531
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3531
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3531

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3531

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub143 = sub i64 %36, 1, !dbg !3531
  %and144 = and i64 %sub143, 68719476736, !dbg !3531
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3531
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3531

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3531

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub148 = sub i64 %37, 1, !dbg !3531
  %and149 = and i64 %sub148, 34359738368, !dbg !3531
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3531
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3531

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3531

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub153 = sub i64 %38, 1, !dbg !3531
  %and154 = and i64 %sub153, 17179869184, !dbg !3531
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3531
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3531

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3531

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub158 = sub i64 %39, 1, !dbg !3531
  %and159 = and i64 %sub158, 8589934592, !dbg !3531
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3531
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3531

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3531

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub163 = sub i64 %40, 1, !dbg !3531
  %and164 = and i64 %sub163, 4294967296, !dbg !3531
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3531
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3531

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3531

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub168 = sub i64 %41, 1, !dbg !3531
  %and169 = and i64 %sub168, 2147483648, !dbg !3531
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3531
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3531

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3531

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub173 = sub i64 %42, 1, !dbg !3531
  %and174 = and i64 %sub173, 1073741824, !dbg !3531
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3531
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3531

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3531

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub178 = sub i64 %43, 1, !dbg !3531
  %and179 = and i64 %sub178, 536870912, !dbg !3531
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3531
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3531

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3531

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub183 = sub i64 %44, 1, !dbg !3531
  %and184 = and i64 %sub183, 268435456, !dbg !3531
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3531
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3531

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3531

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub188 = sub i64 %45, 1, !dbg !3531
  %and189 = and i64 %sub188, 134217728, !dbg !3531
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3531
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3531

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3531

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub193 = sub i64 %46, 1, !dbg !3531
  %and194 = and i64 %sub193, 67108864, !dbg !3531
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3531
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3531

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3531

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub198 = sub i64 %47, 1, !dbg !3531
  %and199 = and i64 %sub198, 33554432, !dbg !3531
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3531
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3531

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3531

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub203 = sub i64 %48, 1, !dbg !3531
  %and204 = and i64 %sub203, 16777216, !dbg !3531
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3531
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3531

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3531

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub208 = sub i64 %49, 1, !dbg !3531
  %and209 = and i64 %sub208, 8388608, !dbg !3531
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3531
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3531

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3531

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub213 = sub i64 %50, 1, !dbg !3531
  %and214 = and i64 %sub213, 4194304, !dbg !3531
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3531
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3531

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3531

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub218 = sub i64 %51, 1, !dbg !3531
  %and219 = and i64 %sub218, 2097152, !dbg !3531
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3531
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3531

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3531

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub223 = sub i64 %52, 1, !dbg !3531
  %and224 = and i64 %sub223, 1048576, !dbg !3531
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3531
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3531

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3531

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub228 = sub i64 %53, 1, !dbg !3531
  %and229 = and i64 %sub228, 524288, !dbg !3531
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3531
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3531

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3531

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub233 = sub i64 %54, 1, !dbg !3531
  %and234 = and i64 %sub233, 262144, !dbg !3531
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3531
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3531

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3531

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub238 = sub i64 %55, 1, !dbg !3531
  %and239 = and i64 %sub238, 131072, !dbg !3531
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3531
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3531

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3531

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub243 = sub i64 %56, 1, !dbg !3531
  %and244 = and i64 %sub243, 65536, !dbg !3531
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3531
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3531

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3531

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub248 = sub i64 %57, 1, !dbg !3531
  %and249 = and i64 %sub248, 32768, !dbg !3531
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3531
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3531

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3531

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub253 = sub i64 %58, 1, !dbg !3531
  %and254 = and i64 %sub253, 16384, !dbg !3531
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3531
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3531

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3531

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub258 = sub i64 %59, 1, !dbg !3531
  %and259 = and i64 %sub258, 8192, !dbg !3531
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3531
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3531

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3531

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub263 = sub i64 %60, 1, !dbg !3531
  %and264 = and i64 %sub263, 4096, !dbg !3531
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3531
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3531

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3531

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub268 = sub i64 %61, 1, !dbg !3531
  %and269 = and i64 %sub268, 2048, !dbg !3531
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3531
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3531

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3531

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub273 = sub i64 %62, 1, !dbg !3531
  %and274 = and i64 %sub273, 1024, !dbg !3531
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3531
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3531

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3531

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub278 = sub i64 %63, 1, !dbg !3531
  %and279 = and i64 %sub278, 512, !dbg !3531
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3531
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3531

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3531

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub283 = sub i64 %64, 1, !dbg !3531
  %and284 = and i64 %sub283, 256, !dbg !3531
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3531
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3531

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3531

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub288 = sub i64 %65, 1, !dbg !3531
  %and289 = and i64 %sub288, 128, !dbg !3531
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3531
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3531

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3531

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub293 = sub i64 %66, 1, !dbg !3531
  %and294 = and i64 %sub293, 64, !dbg !3531
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3531
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3531

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3531

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub298 = sub i64 %67, 1, !dbg !3531
  %and299 = and i64 %sub298, 32, !dbg !3531
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3531
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3531

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3531

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub303 = sub i64 %68, 1, !dbg !3531
  %and304 = and i64 %sub303, 16, !dbg !3531
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3531
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3531

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3531

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub308 = sub i64 %69, 1, !dbg !3531
  %and309 = and i64 %sub308, 8, !dbg !3531
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3531
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3531

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3531

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub313 = sub i64 %70, 1, !dbg !3531
  %and314 = and i64 %sub313, 4, !dbg !3531
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3531
  %71 = zext i1 %tobool315 to i64, !dbg !3531
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3531
  br label %cond.end, !dbg !3531

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3531
  br label %cond.end317, !dbg !3531

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3531
  br label %cond.end319, !dbg !3531

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3531
  br label %cond.end321, !dbg !3531

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3531
  br label %cond.end323, !dbg !3531

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3531
  br label %cond.end325, !dbg !3531

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3531
  br label %cond.end327, !dbg !3531

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3531
  br label %cond.end329, !dbg !3531

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3531
  br label %cond.end331, !dbg !3531

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3531
  br label %cond.end333, !dbg !3531

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3531
  br label %cond.end335, !dbg !3531

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3531
  br label %cond.end337, !dbg !3531

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3531
  br label %cond.end339, !dbg !3531

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3531
  br label %cond.end341, !dbg !3531

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3531
  br label %cond.end343, !dbg !3531

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3531
  br label %cond.end345, !dbg !3531

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3531
  br label %cond.end347, !dbg !3531

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3531
  br label %cond.end349, !dbg !3531

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3531
  br label %cond.end351, !dbg !3531

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3531
  br label %cond.end353, !dbg !3531

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3531
  br label %cond.end355, !dbg !3531

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3531
  br label %cond.end357, !dbg !3531

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3531
  br label %cond.end359, !dbg !3531

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3531
  br label %cond.end361, !dbg !3531

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3531
  br label %cond.end363, !dbg !3531

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3531
  br label %cond.end365, !dbg !3531

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3531
  br label %cond.end367, !dbg !3531

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3531
  br label %cond.end369, !dbg !3531

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3531
  br label %cond.end371, !dbg !3531

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3531
  br label %cond.end373, !dbg !3531

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3531
  br label %cond.end375, !dbg !3531

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3531
  br label %cond.end377, !dbg !3531

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3531
  br label %cond.end379, !dbg !3531

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3531
  br label %cond.end381, !dbg !3531

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3531
  br label %cond.end383, !dbg !3531

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3531
  br label %cond.end385, !dbg !3531

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3531
  br label %cond.end387, !dbg !3531

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3531
  br label %cond.end389, !dbg !3531

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3531
  br label %cond.end391, !dbg !3531

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3531
  br label %cond.end393, !dbg !3531

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3531
  br label %cond.end395, !dbg !3531

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3531
  br label %cond.end397, !dbg !3531

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3531
  br label %cond.end399, !dbg !3531

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3531
  br label %cond.end401, !dbg !3531

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3531
  br label %cond.end403, !dbg !3531

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3531
  br label %cond.end405, !dbg !3531

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3531
  br label %cond.end407, !dbg !3531

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3531
  br label %cond.end409, !dbg !3531

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3531
  br label %cond.end411, !dbg !3531

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3531
  br label %cond.end413, !dbg !3531

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3531
  br label %cond.end415, !dbg !3531

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3531
  br label %cond.end417, !dbg !3531

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3531
  br label %cond.end419, !dbg !3531

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3531
  br label %cond.end421, !dbg !3531

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3531
  br label %cond.end423, !dbg !3531

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3531
  br label %cond.end425, !dbg !3531

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3531
  br label %cond.end427, !dbg !3531

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3531
  br label %cond.end429, !dbg !3531

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3531
  br label %cond.end431, !dbg !3531

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3531
  br label %cond.end433, !dbg !3531

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3531
  br label %cond.end435, !dbg !3531

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3531
  br label %cond.end437, !dbg !3531

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3531
  br label %cond.end440, !dbg !3531

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3531

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3531
  br label %cond.end444, !dbg !3531

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3531
  %sub443 = sub i64 %72, 1, !dbg !3531
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3531
  br label %cond.end444, !dbg !3531

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3531
  %sub446 = sub i32 %cond445, 12, !dbg !3532
  %add = add i32 %sub446, 1, !dbg !3533
  store i32 %add, i32* %retval, align 4, !dbg !3534
  br label %return, !dbg !3534

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3535
  %dec = add i64 %73, -1, !dbg !3535
  store i64 %dec, i64* %size.addr, align 8, !dbg !3535
  %74 = load i64, i64* %size.addr, align 8, !dbg !3536
  %shr = lshr i64 %74, 12, !dbg !3536
  store i64 %shr, i64* %size.addr, align 8, !dbg !3536
  %75 = load i64, i64* %size.addr, align 8, !dbg !3537
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3514
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3538
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3539
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3538, !srcloc !3540
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3538
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3541
  %add.i = add i32 %79, 1, !dbg !3542
  store i32 %add.i, i32* %retval, align 4, !dbg !3543
  br label %return, !dbg !3543

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3544
  ret i32 %80, !dbg !3544
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3545 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3506, metadata !DIExpression()), !dbg !3549
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3513, metadata !DIExpression()), !dbg !3551
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  %0 = load i64, i64* %n.addr, align 8, !dbg !3554
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3551
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3555
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3556
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3555, !srcloc !3540
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3555
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3557
  %add.i = add i32 %4, 1, !dbg !3558
  %sub = sub i32 %add.i, 1, !dbg !3559
  ret i32 %sub, !dbg !3560
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3561 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3565, metadata !DIExpression()), !dbg !3566
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3567, metadata !DIExpression()), !dbg !3568
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3569, metadata !DIExpression()), !dbg !3570
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3571, metadata !DIExpression()), !dbg !3572
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3573
  ret i8* %0, !dbg !3574
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #2

; Function Attrs: noredzone
declare dso_local i32 @__class_register(%struct.class*, %struct.lock_class_key*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2066, !2067, !2068, !2069}
!llvm.ident = !{!2070}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ipclock", scope: !2, file: !3, line: 81, type: !368, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !68, globals: !2042, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/platform/x86/intel_scu_ipc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !62}
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
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !63, line: 11, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!68 = !{!69, !71, !76, !79, !81, !82, !83, !84, !202}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 148, baseType: !7)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !73, line: 21, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !75, line: 27, baseType: !7)
!75 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!81 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_scu_ipc_dev", file: !3, line: 56, size: 6464, elements: !86)
!86 = !{!87, !2024, !2038, !2039, !2040, !2041}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !85, file: !3, line: 57, baseType: !88, size: 5568)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !89)
!89 = !{!90, !1588, !1590, !1593, !1594, !1645, !1723, !1724, !1725, !1726, !1727, !1736, !1841, !1854, !1857, !1858, !1862, !1864, !1865, !1866, !1870, !1876, !1877, !1880, !1884, !1974, !1977, !1978, !1979, !1980, !2012, !2013, !2014, !2017, !2020, !2021, !2022, !2023}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !88, file: !30, line: 462, baseType: !91, size: 512)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !92, line: 64, size: 512, elements: !93)
!92 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !98, !104, !106, !166, !1425, !1578, !1583, !1584, !1585, !1586, !1587}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !92, line: 65, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !91, file: !92, line: 66, baseType: !99, size: 128, offset: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !70, line: 178, size: 128, elements: !100)
!100 = !{!101, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !70, line: 179, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !99, file: !70, line: 179, baseType: !102, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !91, file: !92, line: 67, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !91, file: !92, line: 68, baseType: !107, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !92, line: 192, size: 704, elements: !109)
!109 = !{!110, !111, !127, !128}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !108, file: !92, line: 193, baseType: !99, size: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !108, file: !92, line: 194, baseType: !112, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !113, line: 83, baseType: !114)
!113 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !113, line: 71, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 72, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 72, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !117, file: !113, line: 73, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !113, line: 20, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !120, file: !113, line: 21, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !124, line: 25, baseType: !125)
!124 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 25, elements: !126)
!126 = !{}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !108, file: !92, line: 195, baseType: !91, size: 512, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !108, file: !92, line: 196, baseType: !129, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !92, line: 156, size: 192, elements: !132)
!132 = !{!133, !138, !143}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !131, file: !92, line: 157, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!82, !107, !105}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !92, line: 158, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!95, !107, !105}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !131, file: !92, line: 159, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!82, !107, !105, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !92, line: 148, size: 20736, elements: !150)
!150 = !{!151, !156, !160, !161, !165}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !149, file: !92, line: 149, baseType: !152, size: 192)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 192, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!154 = !{!155}
!155 = !DISubrange(count: 3)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !149, file: !92, line: 150, baseType: !157, size: 4096, offset: 192)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 4096, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !149, file: !92, line: 151, baseType: !82, size: 32, offset: 4288)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !149, file: !92, line: 152, baseType: !162, size: 16384, offset: 4320)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16384, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 2048)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !149, file: !92, line: 153, baseType: !82, size: 32, offset: 20704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !91, file: !92, line: 69, baseType: !167, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !92, line: 138, size: 448, elements: !169)
!169 = !{!170, !174, !203, !205, !1373, !1404, !1408}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !168, file: !92, line: 139, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !105}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !168, file: !92, line: 140, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !178, line: 230, size: 128, elements: !179)
!178 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180, !195}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !177, file: !178, line: 231, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !105, !188, !153}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !70, line: 60, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !186, line: 73, baseType: !187)
!186 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !186, line: 15, baseType: !81)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !178, line: 30, size: 128, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !178, line: 31, baseType: !95, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !189, file: !178, line: 32, baseType: !193, size: 16, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !70, line: 19, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !177, file: !178, line: 232, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!184, !105, !188, !95, !199}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 55, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !186, line: 72, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !186, line: 16, baseType: !202)
!202 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !168, file: !92, line: 141, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !168, file: !92, line: 142, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !178, line: 84, size: 320, elements: !210)
!210 = !{!211, !212, !216, !1370, !1371}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !178, line: 85, baseType: !95, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !209, file: !178, line: 86, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!193, !105, !188, !82}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !209, file: !178, line: 88, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!193, !105, !220, !82}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !178, line: 168, size: 448, elements: !222)
!222 = !{!223, !224, !225, !226, !236, !237}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !221, file: !178, line: 169, baseType: !189, size: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !178, line: 170, baseType: !199, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !221, file: !178, line: 171, baseType: !83, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !221, file: !178, line: 172, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!184, !230, !105, !220, !153, !233, !199}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !232, line: 526, flags: DIFlagFwdDecl)
!232 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !70, line: 46, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !186, line: 88, baseType: !235)
!235 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !221, file: !178, line: 174, baseType: !227, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !221, file: !178, line: 176, baseType: !238, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!82, !230, !105, !220, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !243, line: 305, size: 1472, elements: !244)
!243 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !246, !247, !248, !249, !257, !258, !1344, !1350, !1351, !1356, !1357, !1360, !1364, !1365, !1366, !1367, !1368}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !242, file: !243, line: 308, baseType: !202, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !242, file: !243, line: 309, baseType: !202, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !242, file: !243, line: 313, baseType: !241, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !242, file: !243, line: 313, baseType: !241, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !242, file: !243, line: 315, baseType: !250, size: 192, align: 64, offset: 256)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !251, line: 24, size: 192, align: 64, elements: !252)
!251 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!252 = !{!253, !254, !256}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !250, file: !251, line: 25, baseType: !202, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !250, file: !251, line: 26, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !250, file: !251, line: 27, baseType: !255, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !242, file: !243, line: 323, baseType: !202, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !242, file: !243, line: 327, baseType: !259, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !243, line: 388, size: 7296, elements: !261)
!261 = !{!262, !1340}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !243, line: 389, baseType: !263, size: 7296)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !243, line: 389, size: 7296, elements: !264)
!264 = !{!265, !266, !270, !274, !278, !279, !280, !281, !282, !290, !295, !296, !297, !298, !307, !308, !309, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !344, !352, !355, !403, !404, !1310, !1311, !1314, !1318, !1319, !1322, !1323, !1324, !1327, !1339}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !263, file: !243, line: 390, baseType: !241, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !263, file: !243, line: 391, baseType: !267, size: 64, offset: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !251, line: 31, size: 64, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !267, file: !251, line: 32, baseType: !255, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !263, file: !243, line: 392, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !73, line: 23, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !75, line: 31, baseType: !273)
!273 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !263, file: !243, line: 394, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!202, !230, !202, !202, !202, !202}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !263, file: !243, line: 398, baseType: !202, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !263, file: !243, line: 399, baseType: !202, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !263, file: !243, line: 405, baseType: !202, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !263, file: !243, line: 406, baseType: !202, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !263, file: !243, line: 407, baseType: !283, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !232, line: 286, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 286, size: 64, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !285, file: !232, line: 286, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !289, line: 18, baseType: !202)
!289 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !263, file: !243, line: 416, baseType: !291, size: 32, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 168, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 166, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !292, file: !70, line: 167, baseType: !82, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !263, file: !243, line: 428, baseType: !291, size: 32, offset: 608)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !263, file: !243, line: 437, baseType: !291, size: 32, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !263, file: !243, line: 447, baseType: !291, size: 32, offset: 672)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !263, file: !243, line: 450, baseType: !299, size: 64, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !300, line: 13, baseType: !301)
!300 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !70, line: 175, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 173, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !302, file: !70, line: 174, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !73, line: 22, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !75, line: 30, baseType: !235)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !263, file: !243, line: 452, baseType: !82, size: 32, offset: 768)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !263, file: !243, line: 454, baseType: !112, offset: 800)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !263, file: !243, line: 457, baseType: !310, size: 256, offset: 832)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !311, line: 35, size: 256, elements: !312)
!311 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!312 = !{!313, !314, !315, !317}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !310, file: !311, line: 36, baseType: !299, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !310, file: !311, line: 42, baseType: !299, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !310, file: !311, line: 46, baseType: !316, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !113, line: 29, baseType: !120)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !310, file: !311, line: 47, baseType: !99, size: 128, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !263, file: !243, line: 459, baseType: !99, size: 128, offset: 1088)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !263, file: !243, line: 466, baseType: !202, size: 64, offset: 1216)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !263, file: !243, line: 467, baseType: !202, size: 64, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !263, file: !243, line: 469, baseType: !202, size: 64, offset: 1344)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !263, file: !243, line: 470, baseType: !202, size: 64, offset: 1408)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !263, file: !243, line: 471, baseType: !301, size: 64, offset: 1472)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !263, file: !243, line: 472, baseType: !202, size: 64, offset: 1536)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !263, file: !243, line: 473, baseType: !202, size: 64, offset: 1600)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !263, file: !243, line: 474, baseType: !202, size: 64, offset: 1664)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !263, file: !243, line: 475, baseType: !202, size: 64, offset: 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !263, file: !243, line: 477, baseType: !112, offset: 1792)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1792)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1856)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1920)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1984)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !263, file: !243, line: 479, baseType: !202, size: 64, offset: 2048)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !263, file: !243, line: 479, baseType: !202, size: 64, offset: 2112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !263, file: !243, line: 479, baseType: !202, size: 64, offset: 2176)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2240)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2304)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2368)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !263, file: !243, line: 482, baseType: !341, size: 2816, offset: 2496)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2816, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 44)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !263, file: !243, line: 488, baseType: !345, size: 256, offset: 5312)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !346, line: 60, size: 256, elements: !347)
!346 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !345, file: !346, line: 61, baseType: !349, size: 256)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 4)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !263, file: !243, line: 490, baseType: !353, size: 64, offset: 5568)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !243, line: 490, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !263, file: !243, line: 493, baseType: !356, size: 896, offset: 5632)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !357, line: 53, baseType: !358)
!357 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 13, size: 896, elements: !359)
!359 = !{!360, !361, !362, !363, !366, !367, !374, !375, !395, !396, !399}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !358, file: !357, line: 18, baseType: !271, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !358, file: !357, line: 28, baseType: !301, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !358, file: !357, line: 31, baseType: !310, size: 256, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !358, file: !357, line: 32, baseType: !364, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !357, line: 32, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !358, file: !357, line: 37, baseType: !194, size: 16, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !358, file: !357, line: 40, baseType: !368, size: 192, offset: 512)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !369, line: 53, size: 192, elements: !370)
!369 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !368, file: !369, line: 54, baseType: !299, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !368, file: !369, line: 55, baseType: !112, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !368, file: !369, line: 59, baseType: !99, size: 128, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !358, file: !357, line: 41, baseType: !83, size: 64, offset: 704)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !358, file: !357, line: 42, baseType: !376, size: 64, offset: 768)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !379, line: 13, size: 896, elements: !380)
!379 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !378, file: !379, line: 14, baseType: !83, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !378, file: !379, line: 15, baseType: !202, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !378, file: !379, line: 17, baseType: !202, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !378, file: !379, line: 17, baseType: !202, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !378, file: !379, line: 19, baseType: !81, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !378, file: !379, line: 21, baseType: !81, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !378, file: !379, line: 22, baseType: !81, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !378, file: !379, line: 23, baseType: !81, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !378, file: !379, line: 24, baseType: !81, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !378, file: !379, line: 25, baseType: !81, size: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !378, file: !379, line: 26, baseType: !81, size: 64, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !378, file: !379, line: 27, baseType: !81, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !378, file: !379, line: 28, baseType: !81, size: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !378, file: !379, line: 29, baseType: !81, size: 64, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !358, file: !357, line: 44, baseType: !291, size: 32, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !358, file: !357, line: 50, baseType: !397, size: 16, offset: 864)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !73, line: 19, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !75, line: 24, baseType: !194)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !358, file: !357, line: 51, baseType: !400, size: 16, offset: 880)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !73, line: 18, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !75, line: 23, baseType: !402)
!402 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !243, line: 495, baseType: !202, size: 64, offset: 6528)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !263, file: !243, line: 497, baseType: !405, size: 64, offset: 6592)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !243, line: 381, size: 384, elements: !407)
!407 = !{!408, !409, !1309}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !406, file: !243, line: 382, baseType: !291, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !406, file: !243, line: 383, baseType: !410, size: 128, offset: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !243, line: 376, size: 128, elements: !411)
!411 = !{!412, !1307}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !410, file: !243, line: 377, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !415, line: 640, size: 48640, elements: !416)
!415 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!416 = !{!417, !423, !425, !426, !432, !433, !434, !435, !436, !437, !438, !439, !443, !461, !472, !566, !567, !568, !579, !580, !582, !583, !584, !585, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !663, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !719, !721, !722, !723, !735, !737, !738, !739, !740, !741, !747, !748, !749, !750, !751, !752, !753, !765, !770, !774, !775, !776, !779, !783, !786, !789, !792, !795, !798, !801, !804, !810, !811, !812, !818, !819, !820, !821, !822, !831, !832, !833, !834, !835, !840, !841, !842, !845, !846, !849, !852, !855, !858, !861, !864, !865, !945, !948, !951, !952, !955, !956, !957, !963, !964, !965, !978, !979, !980, !992, !997, !1000, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !414, file: !415, line: 646, baseType: !418, size: 128)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !419, line: 56, size: 128, elements: !420)
!419 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !419, line: 57, baseType: !202, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !418, file: !419, line: 58, baseType: !72, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !415, line: 649, baseType: !424, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !81)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !414, file: !415, line: 657, baseType: !83, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !414, file: !415, line: 658, baseType: !427, size: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !428, line: 113, baseType: !429)
!428 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !428, line: 111, size: 32, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !429, file: !428, line: 112, baseType: !291, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !415, line: 660, baseType: !7, size: 32, offset: 288)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !414, file: !415, line: 661, baseType: !7, size: 32, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !414, file: !415, line: 684, baseType: !82, size: 32, offset: 352)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !414, file: !415, line: 686, baseType: !82, size: 32, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !414, file: !415, line: 687, baseType: !82, size: 32, offset: 416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !414, file: !415, line: 688, baseType: !82, size: 32, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !414, file: !415, line: 689, baseType: !7, size: 32, offset: 480)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !414, file: !415, line: 691, baseType: !440, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !415, line: 691, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !414, file: !415, line: 692, baseType: !444, size: 832, offset: 576)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !415, line: 451, size: 832, elements: !445)
!445 = !{!446, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !444, file: !415, line: 453, baseType: !447, size: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !415, line: 325, size: 128, elements: !448)
!448 = !{!449, !450}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !447, file: !415, line: 326, baseType: !202, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !447, file: !415, line: 327, baseType: !72, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !444, file: !415, line: 454, baseType: !250, size: 192, align: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !444, file: !415, line: 455, baseType: !99, size: 128, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !444, file: !415, line: 456, baseType: !7, size: 32, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !444, file: !415, line: 458, baseType: !271, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !444, file: !415, line: 459, baseType: !271, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !444, file: !415, line: 460, baseType: !271, size: 64, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !444, file: !415, line: 461, baseType: !271, size: 64, offset: 704)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !444, file: !415, line: 463, baseType: !271, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !444, file: !415, line: 465, baseType: !460, offset: 832)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !415, line: 415, elements: !126)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !414, file: !415, line: 693, baseType: !462, size: 384, offset: 1408)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !415, line: 489, size: 384, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !462, file: !415, line: 490, baseType: !99, size: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !462, file: !415, line: 491, baseType: !202, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !462, file: !415, line: 492, baseType: !202, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !462, file: !415, line: 493, baseType: !7, size: 32, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !462, file: !415, line: 494, baseType: !194, size: 16, offset: 288)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !462, file: !415, line: 495, baseType: !194, size: 16, offset: 304)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !462, file: !415, line: 497, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !414, file: !415, line: 697, baseType: !473, size: 1792, offset: 1792)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !415, line: 507, size: 1792, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !563, !564}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !473, file: !415, line: 508, baseType: !250, size: 192, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !473, file: !415, line: 515, baseType: !271, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !473, file: !415, line: 516, baseType: !271, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !473, file: !415, line: 517, baseType: !271, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !473, file: !415, line: 518, baseType: !271, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !473, file: !415, line: 519, baseType: !271, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !473, file: !415, line: 526, baseType: !305, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !473, file: !415, line: 527, baseType: !271, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !415, line: 528, baseType: !7, size: 32, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !473, file: !415, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !473, file: !415, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !473, file: !415, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !473, file: !415, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !473, file: !415, line: 563, baseType: !489, size: 512, offset: 704)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !490)
!490 = !{!491, !499, !500, !505, !557, !560, !561, !562}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !489, file: !6, line: 119, baseType: !492, size: 256)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !493, line: 9, size: 256, elements: !494)
!493 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !492, file: !493, line: 10, baseType: !250, size: 192, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !492, file: !493, line: 11, baseType: !497, size: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !498, line: 29, baseType: !305)
!498 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !489, file: !6, line: 120, baseType: !497, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !489, file: !6, line: 121, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!5, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !489, file: !6, line: 122, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !508)
!508 = !{!509, !529, !530, !533, !543, !544, !552, !556}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !507, file: !6, line: 160, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !511, file: !6, line: 215, baseType: !316)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !511, file: !6, line: 216, baseType: !7, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !511, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !511, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !511, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !511, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !511, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !511, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !511, file: !6, line: 233, baseType: !497, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !511, file: !6, line: 234, baseType: !504, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !511, file: !6, line: 235, baseType: !497, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !511, file: !6, line: 236, baseType: !504, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !511, file: !6, line: 237, baseType: !526, size: 4096, offset: 512)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 4096, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !507, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !507, file: !6, line: 162, baseType: !531, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !70, line: 27, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !186, line: 96, baseType: !82)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !507, file: !6, line: 163, baseType: !534, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !535, line: 276, baseType: !536)
!535 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !535, line: 276, size: 32, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !536, file: !535, line: 276, baseType: !539, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !535, line: 70, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !535, line: 65, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !540, file: !535, line: 66, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !507, file: !6, line: 164, baseType: !504, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !507, file: !6, line: 165, baseType: !545, size: 128, offset: 256)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !493, line: 14, size: 128, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !545, file: !493, line: 15, baseType: !548, size: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !251, line: 125, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !548, file: !251, line: 126, baseType: !267, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !548, file: !251, line: 127, baseType: !255, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !507, file: !6, line: 166, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!497}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !507, file: !6, line: 167, baseType: !497, size: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !489, file: !6, line: 123, baseType: !558, size: 8, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !73, line: 17, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !75, line: 21, baseType: !78)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !489, file: !6, line: 124, baseType: !558, size: 8, offset: 456)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !489, file: !6, line: 125, baseType: !558, size: 8, offset: 464)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !489, file: !6, line: 126, baseType: !558, size: 8, offset: 472)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !473, file: !415, line: 572, baseType: !489, size: 512, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !473, file: !415, line: 580, baseType: !565, size: 64, offset: 1728)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !414, file: !415, line: 721, baseType: !7, size: 32, offset: 3584)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !414, file: !415, line: 722, baseType: !82, size: 32, offset: 3616)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !414, file: !415, line: 723, baseType: !569, size: 64, offset: 3648)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !572, line: 17, baseType: !573)
!572 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !572, line: 17, size: 64, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !573, file: !572, line: 17, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 1)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !414, file: !415, line: 724, baseType: !571, size: 64, offset: 3712)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !414, file: !415, line: 749, baseType: !581, offset: 3776)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !415, line: 290, elements: !126)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !414, file: !415, line: 751, baseType: !99, size: 128, offset: 3776)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !414, file: !415, line: 757, baseType: !259, size: 64, offset: 3904)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !414, file: !415, line: 758, baseType: !259, size: 64, offset: 3968)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !414, file: !415, line: 761, baseType: !586, size: 320, offset: 4032)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !346, line: 34, size: 320, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !586, file: !346, line: 35, baseType: !271, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !586, file: !346, line: 36, baseType: !590, size: 256, offset: 64)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !350)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !414, file: !415, line: 766, baseType: !82, size: 32, offset: 4352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !414, file: !415, line: 767, baseType: !82, size: 32, offset: 4384)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !414, file: !415, line: 768, baseType: !82, size: 32, offset: 4416)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !414, file: !415, line: 770, baseType: !82, size: 32, offset: 4448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !414, file: !415, line: 772, baseType: !202, size: 64, offset: 4480)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !414, file: !415, line: 775, baseType: !7, size: 32, offset: 4544)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !414, file: !415, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !414, file: !415, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !414, file: !415, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !414, file: !415, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !414, file: !415, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !414, file: !415, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !414, file: !415, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !414, file: !415, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !414, file: !415, line: 831, baseType: !202, size: 64, offset: 4672)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !414, file: !415, line: 833, baseType: !607, size: 384, offset: 4736)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !608)
!608 = !{!609, !614}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !607, file: !12, line: 26, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!81, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, scope: !607, file: !12, line: 27, baseType: !615, size: 320, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !607, file: !12, line: 27, size: 320, elements: !616)
!616 = !{!617, !626, !653}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !615, file: !12, line: 36, baseType: !618, size: 320)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !12, line: 29, size: 320, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !618, file: !12, line: 30, baseType: !71, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !618, file: !12, line: 31, baseType: !72, size: 32, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !12, line: 32, baseType: !72, size: 32, offset: 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !618, file: !12, line: 33, baseType: !72, size: 32, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !618, file: !12, line: 34, baseType: !271, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !618, file: !12, line: 35, baseType: !71, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !615, file: !12, line: 46, baseType: !627, size: 192)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !12, line: 38, size: 192, elements: !628)
!628 = !{!629, !630, !631, !652}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !627, file: !12, line: 39, baseType: !531, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !627, file: !12, line: 41, baseType: !632, size: 64, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !627, file: !12, line: 41, size: 64, elements: !633)
!633 = !{!634, !642}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !632, file: !12, line: 42, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !637, line: 7, size: 128, elements: !638)
!637 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !636, file: !637, line: 8, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !186, line: 93, baseType: !235)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !636, file: !637, line: 9, baseType: !235, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !632, file: !12, line: 43, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !645, line: 7, size: 64, elements: !646)
!645 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!646 = !{!647, !651}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !644, file: !645, line: 8, baseType: !648, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !645, line: 5, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !73, line: 20, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !75, line: 26, baseType: !82)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !644, file: !645, line: 9, baseType: !649, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !627, file: !12, line: 45, baseType: !271, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !615, file: !12, line: 54, baseType: !654, size: 256)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !12, line: 48, size: 256, elements: !655)
!655 = !{!656, !659, !660, !661, !662}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !654, file: !12, line: 49, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !654, file: !12, line: 50, baseType: !82, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !654, file: !12, line: 51, baseType: !82, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !654, file: !12, line: 52, baseType: !202, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !654, file: !12, line: 53, baseType: !202, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !414, file: !415, line: 835, baseType: !664, size: 32, offset: 5120)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !70, line: 22, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !186, line: 28, baseType: !82)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !414, file: !415, line: 836, baseType: !664, size: 32, offset: 5152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !414, file: !415, line: 840, baseType: !202, size: 64, offset: 5184)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !414, file: !415, line: 849, baseType: !413, size: 64, offset: 5248)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !414, file: !415, line: 852, baseType: !413, size: 64, offset: 5312)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !414, file: !415, line: 857, baseType: !99, size: 128, offset: 5376)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !414, file: !415, line: 858, baseType: !99, size: 128, offset: 5504)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !414, file: !415, line: 859, baseType: !413, size: 64, offset: 5632)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !414, file: !415, line: 867, baseType: !99, size: 128, offset: 5696)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !414, file: !415, line: 868, baseType: !99, size: 128, offset: 5824)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !414, file: !415, line: 871, baseType: !676, size: 64, offset: 5952)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !678, line: 59, size: 768, elements: !679)
!678 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !681, !682, !683, !694, !695, !702, !711}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !677, file: !678, line: 61, baseType: !427, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !677, file: !678, line: 62, baseType: !7, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !677, file: !678, line: 63, baseType: !112, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !677, file: !678, line: 65, baseType: !684, size: 256, offset: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 256, elements: !350)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !70, line: 182, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !685, file: !70, line: 183, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !70, line: 186, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !70, line: 187, baseType: !688, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !689, file: !70, line: 187, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !677, file: !678, line: 66, baseType: !685, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !677, file: !678, line: 68, baseType: !696, size: 128, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !697, line: 40, baseType: !698)
!697 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !697, line: 36, size: 128, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !698, file: !697, line: 37, baseType: !112)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !698, file: !697, line: 38, baseType: !99, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !677, file: !678, line: 69, baseType: !703, size: 128, align: 64, offset: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !70, line: 216, size: 128, align: 64, elements: !704)
!704 = !{!705, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !70, line: 217, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !703, file: !70, line: 218, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !706}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !677, file: !678, line: 70, baseType: !712, size: 128, offset: 640)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 128, elements: !577)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !678, line: 54, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !713, file: !678, line: 55, baseType: !82, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !713, file: !678, line: 56, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !678, line: 56, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !414, file: !415, line: 872, baseType: !720, size: 512, offset: 6016)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 512, elements: !350)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !414, file: !415, line: 873, baseType: !99, size: 128, offset: 6528)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !414, file: !415, line: 874, baseType: !99, size: 128, offset: 6656)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !414, file: !415, line: 876, baseType: !724, size: 64, offset: 6784)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !726, line: 26, size: 192, elements: !727)
!726 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !725, file: !726, line: 27, baseType: !7, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !725, file: !726, line: 28, baseType: !730, size: 128, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !731, line: 43, size: 128, elements: !732)
!731 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !731, line: 44, baseType: !316)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !730, file: !731, line: 45, baseType: !99, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !414, file: !415, line: 879, baseType: !736, size: 64, offset: 6848)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !414, file: !415, line: 882, baseType: !736, size: 64, offset: 6912)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !414, file: !415, line: 884, baseType: !271, size: 64, offset: 6976)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !414, file: !415, line: 885, baseType: !271, size: 64, offset: 7040)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !414, file: !415, line: 890, baseType: !271, size: 64, offset: 7104)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !414, file: !415, line: 891, baseType: !742, size: 128, offset: 7168)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !415, line: 242, size: 128, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !742, file: !415, line: 244, baseType: !271, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !742, file: !415, line: 245, baseType: !271, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !742, file: !415, line: 246, baseType: !316, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !414, file: !415, line: 900, baseType: !202, size: 64, offset: 7296)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !414, file: !415, line: 901, baseType: !202, size: 64, offset: 7360)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !414, file: !415, line: 904, baseType: !271, size: 64, offset: 7424)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !414, file: !415, line: 907, baseType: !271, size: 64, offset: 7488)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !414, file: !415, line: 910, baseType: !202, size: 64, offset: 7552)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !414, file: !415, line: 911, baseType: !202, size: 64, offset: 7616)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !414, file: !415, line: 914, baseType: !754, size: 640, offset: 7680)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !755, line: 123, size: 640, elements: !756)
!755 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !763, !764}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !754, file: !755, line: 124, baseType: !758, size: 576)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 576, elements: !154)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !755, line: 108, size: 192, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !759, file: !755, line: 109, baseType: !271, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !759, file: !755, line: 110, baseType: !545, size: 128, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !754, file: !755, line: 125, baseType: !7, size: 32, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !754, file: !755, line: 126, baseType: !7, size: 32, offset: 608)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !414, file: !415, line: 917, baseType: !766, size: 192, offset: 8320)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !755, line: 134, size: 192, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !766, file: !755, line: 135, baseType: !703, size: 128, align: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !766, file: !755, line: 136, baseType: !7, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !414, file: !415, line: 923, baseType: !771, size: 64, offset: 8512)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !415, line: 923, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !414, file: !415, line: 926, baseType: !771, size: 64, offset: 8576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !414, file: !415, line: 929, baseType: !771, size: 64, offset: 8640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !414, file: !415, line: 933, baseType: !777, size: 64, offset: 8704)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !415, line: 933, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !414, file: !415, line: 943, baseType: !780, size: 128, offset: 8768)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 16)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !414, file: !415, line: 945, baseType: !784, size: 64, offset: 8896)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !415, line: 49, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !414, file: !415, line: 956, baseType: !787, size: 64, offset: 8960)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !415, line: 45, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !414, file: !415, line: 959, baseType: !790, size: 64, offset: 9024)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !415, line: 959, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !414, file: !415, line: 962, baseType: !793, size: 64, offset: 9088)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !415, line: 66, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !414, file: !415, line: 966, baseType: !796, size: 64, offset: 9152)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !415, line: 50, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !414, file: !415, line: 969, baseType: !799, size: 64, offset: 9216)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !755, line: 223, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !414, file: !415, line: 970, baseType: !802, size: 64, offset: 9280)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !415, line: 62, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !414, file: !415, line: 971, baseType: !805, size: 64, offset: 9344)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !806, line: 25, baseType: !807)
!806 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 23, size: 64, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !807, file: !806, line: 24, baseType: !576, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !414, file: !415, line: 972, baseType: !805, size: 64, offset: 9408)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !414, file: !415, line: 974, baseType: !805, size: 64, offset: 9472)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !414, file: !415, line: 975, baseType: !813, size: 192, offset: 9536)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !814, line: 30, size: 192, elements: !815)
!814 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !813, file: !814, line: 31, baseType: !99, size: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !813, file: !814, line: 32, baseType: !805, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !414, file: !415, line: 976, baseType: !202, size: 64, offset: 9728)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !414, file: !415, line: 977, baseType: !199, size: 64, offset: 9792)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !414, file: !415, line: 978, baseType: !7, size: 32, offset: 9856)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !414, file: !415, line: 980, baseType: !706, size: 64, offset: 9920)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !414, file: !415, line: 989, baseType: !823, size: 128, offset: 9984)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !824, line: 35, size: 128, elements: !825)
!824 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !823, file: !824, line: 36, baseType: !82, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !823, file: !824, line: 37, baseType: !291, size: 32, offset: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !823, file: !824, line: 38, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !824, line: 23, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !414, file: !415, line: 992, baseType: !271, size: 64, offset: 10112)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !414, file: !415, line: 993, baseType: !271, size: 64, offset: 10176)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !414, file: !415, line: 996, baseType: !112, offset: 10240)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !414, file: !415, line: 999, baseType: !316, offset: 10240)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !414, file: !415, line: 1001, baseType: !836, size: 64, offset: 10240)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !415, line: 636, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !415, line: 637, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !414, file: !415, line: 1005, baseType: !548, size: 128, offset: 10304)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !414, file: !415, line: 1007, baseType: !413, size: 64, offset: 10432)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !414, file: !415, line: 1009, baseType: !843, size: 64, offset: 10496)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !415, line: 1009, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !414, file: !415, line: 1043, baseType: !83, size: 64, offset: 10560)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !414, file: !415, line: 1046, baseType: !847, size: 64, offset: 10624)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !415, line: 41, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !414, file: !415, line: 1050, baseType: !850, size: 64, offset: 10688)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !415, line: 42, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !414, file: !415, line: 1054, baseType: !853, size: 64, offset: 10752)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !415, line: 55, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !414, file: !415, line: 1056, baseType: !856, size: 64, offset: 10816)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !415, line: 40, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !414, file: !415, line: 1058, baseType: !859, size: 64, offset: 10880)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !415, line: 47, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !414, file: !415, line: 1061, baseType: !862, size: 64, offset: 10944)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !415, line: 43, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !414, file: !415, line: 1064, baseType: !202, size: 64, offset: 11008)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !414, file: !415, line: 1065, baseType: !866, size: 64, offset: 11072)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !814, line: 14, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !814, line: 12, size: 384, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !868, file: !814, line: 13, baseType: !871, size: 384)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !814, line: 13, size: 384, elements: !872)
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !871, file: !814, line: 13, baseType: !82, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !871, file: !814, line: 13, baseType: !82, size: 32, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !871, file: !814, line: 13, baseType: !82, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !871, file: !814, line: 13, baseType: !877, size: 256, offset: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !878, line: 32, size: 256, elements: !879)
!878 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!879 = !{!880, !886, !899, !905, !914, !934, !939}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !877, file: !878, line: 37, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 34, size: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !881, file: !878, line: 35, baseType: !665, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !881, file: !878, line: 36, baseType: !885, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !186, line: 49, baseType: !7)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !877, file: !878, line: 45, baseType: !887, size: 192)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 40, size: 192, elements: !888)
!888 = !{!889, !891, !892, !898}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !887, file: !878, line: 41, baseType: !890, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !186, line: 95, baseType: !82)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !887, file: !878, line: 42, baseType: !82, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !887, file: !878, line: 43, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !878, line: 11, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !878, line: 8, size: 64, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !894, file: !878, line: 9, baseType: !82, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !894, file: !878, line: 10, baseType: !83, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !887, file: !878, line: 44, baseType: !82, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !877, file: !878, line: 52, baseType: !900, size: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 48, size: 128, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !900, file: !878, line: 49, baseType: !665, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !900, file: !878, line: 50, baseType: !885, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !900, file: !878, line: 51, baseType: !893, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !877, file: !878, line: 61, baseType: !906, size: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 55, size: 256, elements: !907)
!907 = !{!908, !909, !910, !911, !913}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !906, file: !878, line: 56, baseType: !665, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !906, file: !878, line: 57, baseType: !885, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !906, file: !878, line: 58, baseType: !82, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !906, file: !878, line: 59, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !186, line: 94, baseType: !187)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !906, file: !878, line: 60, baseType: !912, size: 64, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !877, file: !878, line: 95, baseType: !915, size: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 64, size: 256, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !915, file: !878, line: 65, baseType: !83, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !878, line: 77, baseType: !919, size: 192, offset: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !878, line: 77, size: 192, elements: !920)
!920 = !{!921, !922, !929}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !919, file: !878, line: 82, baseType: !402, size: 16)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !919, file: !878, line: 88, baseType: !923, size: 192)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !878, line: 84, size: 192, elements: !924)
!924 = !{!925, !927, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !923, file: !878, line: 85, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !527)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !923, file: !878, line: 86, baseType: !83, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !923, file: !878, line: 87, baseType: !83, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !919, file: !878, line: 93, baseType: !930, size: 96)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !878, line: 90, size: 96, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !930, file: !878, line: 91, baseType: !926, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !930, file: !878, line: 92, baseType: !74, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !877, file: !878, line: 101, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 98, size: 128, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !935, file: !878, line: 99, baseType: !81, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !935, file: !878, line: 100, baseType: !82, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !877, file: !878, line: 108, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !878, line: 104, size: 128, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !940, file: !878, line: 105, baseType: !83, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !940, file: !878, line: 106, baseType: !82, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !940, file: !878, line: 107, baseType: !7, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !414, file: !415, line: 1067, baseType: !946, offset: 11136)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !947, line: 12, elements: !126)
!947 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!948 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !414, file: !415, line: 1099, baseType: !949, size: 64, offset: 11136)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !415, line: 56, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !414, file: !415, line: 1103, baseType: !99, size: 128, offset: 11200)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !414, file: !415, line: 1104, baseType: !953, size: 64, offset: 11328)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !415, line: 46, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !414, file: !415, line: 1105, baseType: !368, size: 192, offset: 11392)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !414, file: !415, line: 1106, baseType: !7, size: 32, offset: 11584)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !414, file: !415, line: 1109, baseType: !958, size: 128, offset: 11648)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 128, elements: !961)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !415, line: 51, flags: DIFlagFwdDecl)
!961 = !{!962}
!962 = !DISubrange(count: 2)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !414, file: !415, line: 1110, baseType: !368, size: 192, offset: 11776)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !414, file: !415, line: 1111, baseType: !99, size: 128, offset: 11968)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !414, file: !415, line: 1173, baseType: !966, size: 64, offset: 12096)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !968, line: 62, size: 256, align: 256, elements: !969)
!968 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!969 = !{!970, !971, !972, !977}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !967, file: !968, line: 75, baseType: !74, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !967, file: !968, line: 90, baseType: !74, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !967, file: !968, line: 124, baseType: !973, size: 64, offset: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 109, size: 64, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !973, file: !968, line: 110, baseType: !272, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !973, file: !968, line: 112, baseType: !272, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 144, baseType: !74, size: 32, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !414, file: !415, line: 1174, baseType: !72, size: 32, offset: 12160)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !414, file: !415, line: 1179, baseType: !202, size: 64, offset: 12224)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !414, file: !415, line: 1182, baseType: !981, size: 128, offset: 12288)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !346, line: 76, size: 128, elements: !982)
!982 = !{!983, !988, !991}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !981, file: !346, line: 85, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !985, line: 7, size: 64, elements: !986)
!985 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !984, file: !985, line: 12, baseType: !573, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !981, file: !346, line: 88, baseType: !989, size: 8, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 30, baseType: !990)
!990 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !981, file: !346, line: 95, baseType: !989, size: 8, offset: 72)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !415, line: 1184, baseType: !993, size: 128, offset: 12416)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !414, file: !415, line: 1184, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !993, file: !415, line: 1185, baseType: !427, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !993, file: !415, line: 1186, baseType: !703, size: 128, align: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !414, file: !415, line: 1190, baseType: !998, size: 64, offset: 12544)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !415, line: 53, flags: DIFlagFwdDecl)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !414, file: !415, line: 1192, baseType: !1001, size: 128, offset: 12608)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !346, line: 64, size: 128, elements: !1002)
!1002 = !{!1003, !1096, !1097}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1001, file: !346, line: 65, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !243, line: 68, size: 512, align: 128, elements: !1006)
!1006 = !{!1007, !1008, !1088, !1095}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1005, file: !243, line: 69, baseType: !202, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !243, line: 77, baseType: !1009, size: 320, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !243, line: 77, size: 320, elements: !1010)
!1010 = !{!1011, !1020, !1025, !1053, !1061, !1067, !1080, !1087}
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 78, baseType: !1012, size: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 78, size: 320, elements: !1013)
!1013 = !{!1014, !1015, !1018, !1019}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1012, file: !243, line: 84, baseType: !99, size: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1012, file: !243, line: 86, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !243, line: 26, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1012, file: !243, line: 87, baseType: !202, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1012, file: !243, line: 94, baseType: !202, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 96, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 96, size: 64, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1021, file: !243, line: 101, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !70, line: 143, baseType: !271)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 103, baseType: !1026, size: 320)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 103, size: 320, elements: !1027)
!1027 = !{!1028, !1038, !1041, !1042}
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !243, line: 104, baseType: !1029, size: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !243, line: 104, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1029, file: !243, line: 105, baseType: !99, size: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !243, line: 106, baseType: !1033, size: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !243, line: 106, size: 128, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !243, line: 107, baseType: !1004, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1033, file: !243, line: 109, baseType: !82, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1033, file: !243, line: 110, baseType: !82, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1026, file: !243, line: 117, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !243, line: 117, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1026, file: !243, line: 119, baseType: !83, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !243, line: 120, baseType: !1043, size: 64, offset: 256)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !243, line: 120, size: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1043, file: !243, line: 121, baseType: !83, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1043, file: !243, line: 122, baseType: !202, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !243, line: 123, baseType: !1048, size: 32)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !243, line: 123, size: 32, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1048, file: !243, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1048, file: !243, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1048, file: !243, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 130, baseType: !1054, size: 192)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 130, size: 192, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1054, file: !243, line: 131, baseType: !202, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1054, file: !243, line: 134, baseType: !78, size: 8, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1054, file: !243, line: 135, baseType: !78, size: 8, offset: 72)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1054, file: !243, line: 136, baseType: !291, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1054, file: !243, line: 137, baseType: !7, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 139, baseType: !1062, size: 256)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 139, size: 256, elements: !1063)
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1062, file: !243, line: 140, baseType: !202, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1062, file: !243, line: 141, baseType: !291, size: 32, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1062, file: !243, line: 143, baseType: !99, size: 128, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 145, baseType: !1068, size: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 145, size: 256, elements: !1069)
!1069 = !{!1070, !1071, !1073, !1074, !1079}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1068, file: !243, line: 146, baseType: !202, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1068, file: !243, line: 147, baseType: !1072, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !232, line: 509, baseType: !1004)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1068, file: !243, line: 148, baseType: !202, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !243, line: 149, baseType: !1075, size: 64, offset: 192)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !243, line: 149, size: 64, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1075, file: !243, line: 150, baseType: !259, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1075, file: !243, line: 151, baseType: !291, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1068, file: !243, line: 156, baseType: !112, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !243, line: 159, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !243, line: 159, size: 128, elements: !1082)
!1082 = !{!1083, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1081, file: !243, line: 161, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !243, line: 161, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1081, file: !243, line: 162, baseType: !83, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1009, file: !243, line: 176, baseType: !703, size: 128, align: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !243, line: 179, baseType: !1089, size: 32, offset: 384)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !243, line: 179, size: 32, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1089, file: !243, line: 184, baseType: !291, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1089, file: !243, line: 192, baseType: !7, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1089, file: !243, line: 194, baseType: !7, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1089, file: !243, line: 195, baseType: !82, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1005, file: !243, line: 199, baseType: !291, size: 32, offset: 416)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1001, file: !346, line: 67, baseType: !74, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1001, file: !346, line: 68, baseType: !74, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !414, file: !415, line: 1206, baseType: !82, size: 32, offset: 12736)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !414, file: !415, line: 1207, baseType: !82, size: 32, offset: 12768)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !414, file: !415, line: 1209, baseType: !202, size: 64, offset: 12800)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !414, file: !415, line: 1219, baseType: !271, size: 64, offset: 12864)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !414, file: !415, line: 1220, baseType: !271, size: 64, offset: 12928)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !414, file: !415, line: 1317, baseType: !82, size: 32, offset: 12992)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !414, file: !415, line: 1319, baseType: !413, size: 64, offset: 13056)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !414, file: !415, line: 1322, baseType: !1106, size: 64, offset: 13120)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1108, line: 56, size: 512, elements: !1109)
!1108 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1116, !1117, !1119}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1107, file: !1108, line: 57, baseType: !1106, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1107, file: !1108, line: 58, baseType: !83, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1107, file: !1108, line: 59, baseType: !202, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !1108, line: 60, baseType: !202, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1107, file: !1108, line: 61, baseType: !1115, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1107, file: !1108, line: 62, baseType: !7, size: 32, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1107, file: !1108, line: 63, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !70, line: 153, baseType: !271)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1107, file: !1108, line: 64, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !414, file: !415, line: 1326, baseType: !427, size: 32, offset: 13184)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !414, file: !415, line: 1342, baseType: !83, size: 64, offset: 13248)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !414, file: !415, line: 1343, baseType: !272, size: 64, offset: 13312)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !414, file: !415, line: 1344, baseType: !271, size: 64, offset: 13376)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !414, file: !415, line: 1345, baseType: !272, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !414, file: !415, line: 1346, baseType: !272, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !414, file: !415, line: 1347, baseType: !272, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !414, file: !415, line: 1348, baseType: !703, size: 128, align: 64, offset: 13504)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !414, file: !415, line: 1358, baseType: !1131, size: 34816, offset: 13824)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1132, line: 485, size: 34816, elements: !1133)
!1132 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !{!1134, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1163, !1164, !1165, !1166, !1167, !1168, !1171, !1172, !1173}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1131, file: !1132, line: 487, baseType: !1135, size: 192)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 192, elements: !154)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1137, line: 16, size: 64, elements: !1138)
!1137 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1136, file: !1137, line: 17, baseType: !397, size: 16)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1136, file: !1137, line: 18, baseType: !397, size: 16, offset: 16)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1136, file: !1137, line: 19, baseType: !397, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1136, file: !1137, line: 19, baseType: !397, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1136, file: !1137, line: 19, baseType: !397, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1136, file: !1137, line: 19, baseType: !397, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1136, file: !1137, line: 19, baseType: !397, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1136, file: !1137, line: 20, baseType: !397, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1136, file: !1137, line: 20, baseType: !397, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1136, file: !1137, line: 20, baseType: !397, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1136, file: !1137, line: 20, baseType: !397, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1136, file: !1137, line: 20, baseType: !397, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1136, file: !1137, line: 20, baseType: !397, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1131, file: !1132, line: 491, baseType: !202, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1131, file: !1132, line: 495, baseType: !194, size: 16, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1131, file: !1132, line: 496, baseType: !194, size: 16, offset: 272)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1131, file: !1132, line: 497, baseType: !194, size: 16, offset: 288)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1131, file: !1132, line: 498, baseType: !194, size: 16, offset: 304)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1131, file: !1132, line: 502, baseType: !202, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1131, file: !1132, line: 503, baseType: !202, size: 64, offset: 384)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1131, file: !1132, line: 514, baseType: !1160, size: 256, offset: 448)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1161, size: 256, elements: !350)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1132, line: 483, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1131, file: !1132, line: 516, baseType: !202, size: 64, offset: 704)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1131, file: !1132, line: 518, baseType: !202, size: 64, offset: 768)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1131, file: !1132, line: 520, baseType: !202, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1131, file: !1132, line: 521, baseType: !202, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1131, file: !1132, line: 522, baseType: !202, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1131, file: !1132, line: 528, baseType: !1169, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1132, line: 10, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1131, file: !1132, line: 535, baseType: !202, size: 64, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1131, file: !1132, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1131, file: !1132, line: 540, baseType: !1174, size: 33280, offset: 1536)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1175, line: 317, size: 33280, elements: !1176)
!1175 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1176 = !{!1177, !1178, !1179}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1174, file: !1175, line: 330, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1174, file: !1175, line: 337, baseType: !202, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1174, file: !1175, line: 348, baseType: !1180, size: 32768, offset: 512)
!1180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1175, line: 304, size: 32768, elements: !1181)
!1181 = !{!1182, !1197, !1236, !1286, !1303}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1180, file: !1175, line: 305, baseType: !1183, size: 896)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1175, line: 12, size: 896, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1183, file: !1175, line: 13, baseType: !72, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1183, file: !1175, line: 14, baseType: !72, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1183, file: !1175, line: 15, baseType: !72, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1183, file: !1175, line: 16, baseType: !72, size: 32, offset: 96)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1183, file: !1175, line: 17, baseType: !72, size: 32, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1183, file: !1175, line: 18, baseType: !72, size: 32, offset: 160)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1183, file: !1175, line: 19, baseType: !72, size: 32, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1183, file: !1175, line: 22, baseType: !1193, size: 640, offset: 224)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 20)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1183, file: !1175, line: 25, baseType: !72, size: 32, offset: 864)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1180, file: !1175, line: 306, baseType: !1198, size: 4096, align: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1175, line: 34, size: 4096, align: 128, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1219, !1220, !1221, !1225, !1227, !1231}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1198, file: !1175, line: 35, baseType: !397, size: 16)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1198, file: !1175, line: 36, baseType: !397, size: 16, offset: 16)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1198, file: !1175, line: 37, baseType: !397, size: 16, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1198, file: !1175, line: 38, baseType: !397, size: 16, offset: 48)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1175, line: 39, baseType: !1205, size: 128, offset: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !1175, line: 39, size: 128, elements: !1206)
!1206 = !{!1207, !1212}
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1175, line: 40, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !1175, line: 40, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1208, file: !1175, line: 41, baseType: !271, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1208, file: !1175, line: 42, baseType: !271, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !1175, line: 44, baseType: !1213, size: 128)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !1175, line: 44, size: 128, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1213, file: !1175, line: 45, baseType: !72, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1213, file: !1175, line: 46, baseType: !72, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1213, file: !1175, line: 47, baseType: !72, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1213, file: !1175, line: 48, baseType: !72, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1198, file: !1175, line: 51, baseType: !72, size: 32, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1198, file: !1175, line: 52, baseType: !72, size: 32, offset: 224)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1198, file: !1175, line: 55, baseType: !1222, size: 1024, offset: 256)
!1222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 1024, elements: !1223)
!1223 = !{!1224}
!1224 = !DISubrange(count: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1198, file: !1175, line: 58, baseType: !1226, size: 2048, offset: 1280)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 2048, elements: !158)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1198, file: !1175, line: 60, baseType: !1228, size: 384, offset: 3328)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 384, elements: !1229)
!1229 = !{!1230}
!1230 = !DISubrange(count: 12)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1175, line: 62, baseType: !1232, size: 384, offset: 3712)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !1175, line: 62, size: 384, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1232, file: !1175, line: 63, baseType: !1228, size: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1232, file: !1175, line: 64, baseType: !1228, size: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1180, file: !1175, line: 307, baseType: !1237, size: 1088)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1175, line: 79, size: 1088, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1285}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1237, file: !1175, line: 80, baseType: !72, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1237, file: !1175, line: 81, baseType: !72, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1237, file: !1175, line: 82, baseType: !72, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1237, file: !1175, line: 83, baseType: !72, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1237, file: !1175, line: 84, baseType: !72, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1237, file: !1175, line: 85, baseType: !72, size: 32, offset: 160)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1237, file: !1175, line: 86, baseType: !72, size: 32, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1237, file: !1175, line: 88, baseType: !1193, size: 640, offset: 224)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1237, file: !1175, line: 89, baseType: !558, size: 8, offset: 864)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1237, file: !1175, line: 90, baseType: !558, size: 8, offset: 872)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1237, file: !1175, line: 91, baseType: !558, size: 8, offset: 880)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1237, file: !1175, line: 92, baseType: !558, size: 8, offset: 888)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1237, file: !1175, line: 93, baseType: !558, size: 8, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1237, file: !1175, line: 94, baseType: !558, size: 8, offset: 904)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1237, file: !1175, line: 95, baseType: !1254, size: 64, offset: 960)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1256, line: 11, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1255, file: !1256, line: 12, baseType: !81, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1255, file: !1256, line: 13, baseType: !1260, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1262, line: 56, size: 1344, elements: !1263)
!1262 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1261, file: !1262, line: 61, baseType: !202, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1261, file: !1262, line: 62, baseType: !202, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1261, file: !1262, line: 63, baseType: !202, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1261, file: !1262, line: 64, baseType: !202, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1261, file: !1262, line: 65, baseType: !202, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1261, file: !1262, line: 66, baseType: !202, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1261, file: !1262, line: 68, baseType: !202, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1261, file: !1262, line: 69, baseType: !202, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1261, file: !1262, line: 70, baseType: !202, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1261, file: !1262, line: 71, baseType: !202, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1261, file: !1262, line: 72, baseType: !202, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1261, file: !1262, line: 73, baseType: !202, size: 64, offset: 704)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1261, file: !1262, line: 74, baseType: !202, size: 64, offset: 768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1261, file: !1262, line: 75, baseType: !202, size: 64, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1261, file: !1262, line: 76, baseType: !202, size: 64, offset: 896)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1261, file: !1262, line: 81, baseType: !202, size: 64, offset: 960)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1261, file: !1262, line: 83, baseType: !202, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1261, file: !1262, line: 84, baseType: !202, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1261, file: !1262, line: 85, baseType: !202, size: 64, offset: 1152)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1261, file: !1262, line: 86, baseType: !202, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1261, file: !1262, line: 87, baseType: !202, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1237, file: !1175, line: 96, baseType: !72, size: 32, offset: 1024)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1180, file: !1175, line: 308, baseType: !1287, size: 4608, align: 512)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1175, line: 289, size: 4608, align: 512, elements: !1288)
!1288 = !{!1289, !1290, !1299}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1287, file: !1175, line: 290, baseType: !1198, size: 4096, align: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1287, file: !1175, line: 291, baseType: !1291, size: 512, offset: 4096)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1175, line: 268, size: 512, elements: !1292)
!1292 = !{!1293, !1294, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1291, file: !1175, line: 269, baseType: !271, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1291, file: !1175, line: 270, baseType: !271, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1291, file: !1175, line: 271, baseType: !1296, size: 384, offset: 128)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 6)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1287, file: !1175, line: 292, baseType: !1300, offset: 4608)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 0)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1180, file: !1175, line: 309, baseType: !1304, size: 32768)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 32768, elements: !1305)
!1305 = !{!1306}
!1306 = !DISubrange(count: 4096)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !243, line: 378, baseType: !1308, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !406, file: !243, line: 384, baseType: !725, size: 192, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !263, file: !243, line: 500, baseType: !112, offset: 6656)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !263, file: !243, line: 501, baseType: !1312, size: 64, offset: 6656)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !243, line: 387, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !263, file: !243, line: 516, baseType: !1315, size: 64, offset: 6720)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1317, line: 18, flags: DIFlagFwdDecl)
!1317 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !263, file: !243, line: 519, baseType: !230, size: 64, offset: 6784)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !263, file: !243, line: 521, baseType: !1320, size: 64, offset: 6848)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !243, line: 521, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !263, file: !243, line: 545, baseType: !291, size: 32, offset: 6912)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !263, file: !243, line: 548, baseType: !989, size: 8, offset: 6944)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !263, file: !243, line: 550, baseType: !1325, offset: 6952)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1326, line: 142, elements: !126)
!1326 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !263, file: !243, line: 554, baseType: !1328, size: 256, offset: 6976)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1329, line: 102, size: 256, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1328, file: !1329, line: 103, baseType: !299, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1328, file: !1329, line: 104, baseType: !99, size: 128, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1328, file: !1329, line: 105, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1329, line: 21, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !263, file: !243, line: 557, baseType: !72, size: 32, offset: 7232)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !260, file: !243, line: 565, baseType: !1341, offset: 7296)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: -1)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !242, file: !243, line: 333, baseType: !1345, size: 64, offset: 576)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !232, line: 284, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !232, line: 284, size: 64, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1346, file: !232, line: 284, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !289, line: 19, baseType: !202)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !242, file: !243, line: 334, baseType: !202, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !242, file: !243, line: 343, baseType: !1352, size: 256, offset: 704)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !243, line: 340, size: 256, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1352, file: !243, line: 341, baseType: !250, size: 192, align: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1352, file: !243, line: 342, baseType: !202, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !242, file: !243, line: 351, baseType: !99, size: 128, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !242, file: !243, line: 353, baseType: !1358, size: 64, offset: 1088)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !243, line: 353, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !242, file: !243, line: 356, baseType: !1361, size: 64, offset: 1152)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !243, line: 356, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !242, file: !243, line: 359, baseType: !202, size: 64, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !242, file: !243, line: 361, baseType: !230, size: 64, offset: 1280)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !242, file: !243, line: 362, baseType: !83, size: 64, offset: 1344)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !242, file: !243, line: 365, baseType: !299, size: 64, offset: 1408)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !242, file: !243, line: 373, baseType: !1369, offset: 1472)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !243, line: 296, elements: !126)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !209, file: !178, line: 90, baseType: !204, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !209, file: !178, line: 91, baseType: !1372, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !168, file: !92, line: 143, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1377, !105}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1380)
!1380 = !{!1381, !1382, !1386, !1390, !1396, !1400}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1379, file: !18, line: 40, baseType: !17, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1379, file: !18, line: 41, baseType: !1383, size: 64, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!989}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1379, file: !18, line: 42, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!83}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1379, file: !18, line: 43, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1120, !1394}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1379, file: !18, line: 44, baseType: !1397, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!1120}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1379, file: !18, line: 45, baseType: !1401, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !83}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !168, file: !92, line: 144, baseType: !1405, size: 64, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1120, !105}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !168, file: !92, line: 145, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !105, !1412, !1418}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1317, line: 23, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 21, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1414, file: !1317, line: 22, baseType: !1417, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !70, line: 32, baseType: !885)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1317, line: 28, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 26, size: 32, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1420, file: !1317, line: 27, baseType: !1423, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !70, line: 33, baseType: !1424)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !186, line: 50, baseType: !7)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !91, file: !92, line: 70, baseType: !1426, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1428, line: 123, size: 1024, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1571, !1572, !1573, !1574, !1575}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1427, file: !1428, line: 124, baseType: !291, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1427, file: !1428, line: 125, baseType: !291, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1427, file: !1428, line: 135, baseType: !1426, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1427, file: !1428, line: 136, baseType: !95, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1427, file: !1428, line: 138, baseType: !250, size: 192, align: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1427, file: !1428, line: 140, baseType: !1120, size: 64, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1427, file: !1428, line: 141, baseType: !7, size: 32, offset: 448)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1428, line: 142, baseType: !1438, size: 256, offset: 512)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1428, line: 142, size: 256, elements: !1439)
!1439 = !{!1440, !1494, !1498}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1438, file: !1428, line: 143, baseType: !1441, size: 192)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1428, line: 91, size: 192, elements: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1441, file: !1428, line: 92, baseType: !202, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1441, file: !1428, line: 94, baseType: !267, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1441, file: !1428, line: 100, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1428, line: 180, size: 704, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1464, !1465, !1466, !1492, !1493}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1447, file: !1428, line: 182, baseType: !1426, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !1428, line: 183, baseType: !7, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1447, file: !1428, line: 186, baseType: !1452, size: 192, offset: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1453, line: 19, size: 192, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1462, !1463}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1452, file: !1453, line: 20, baseType: !1456, size: 128)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1457, line: 292, size: 128, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1456, file: !1457, line: 293, baseType: !112)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1456, file: !1457, line: 295, baseType: !69, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1456, file: !1457, line: 296, baseType: !83, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1452, file: !1453, line: 21, baseType: !7, size: 32, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1452, file: !1453, line: 22, baseType: !7, size: 32, offset: 160)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1447, file: !1428, line: 187, baseType: !72, size: 32, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1447, file: !1428, line: 188, baseType: !72, size: 32, offset: 352)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1447, file: !1428, line: 189, baseType: !1467, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1428, line: 168, size: 320, elements: !1469)
!1469 = !{!1470, !1476, !1480, !1484, !1488}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1468, file: !1428, line: 169, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!82, !1474, !1446}
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !232, line: 539, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1468, file: !1428, line: 171, baseType: !1477, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!82, !1426, !95, !193}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1468, file: !1428, line: 173, baseType: !1481, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!82, !1426}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1468, file: !1428, line: 174, baseType: !1485, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!82, !1426, !1426, !95}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1468, file: !1428, line: 176, baseType: !1489, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!82, !1474, !1426, !1446}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1447, file: !1428, line: 192, baseType: !99, size: 128, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1447, file: !1428, line: 194, baseType: !696, size: 128, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1438, file: !1428, line: 144, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1428, line: 103, size: 64, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1495, file: !1428, line: 104, baseType: !1426, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1438, file: !1428, line: 145, baseType: !1499, size: 256)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1428, line: 107, size: 256, elements: !1500)
!1500 = !{!1501, !1566, !1569, !1570}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1499, file: !1428, line: 108, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1428, line: 217, size: 768, elements: !1505)
!1505 = !{!1506, !1526, !1530, !1534, !1539, !1543, !1547, !1551, !1552, !1553, !1554, !1562}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1504, file: !1428, line: 222, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!82, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1428, line: 197, size: 1088, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1511, file: !1428, line: 199, baseType: !1426, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1511, file: !1428, line: 200, baseType: !230, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1511, file: !1428, line: 201, baseType: !1474, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1511, file: !1428, line: 202, baseType: !83, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1511, file: !1428, line: 205, baseType: !368, size: 192, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1511, file: !1428, line: 206, baseType: !368, size: 192, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1511, file: !1428, line: 207, baseType: !82, size: 32, offset: 640)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1511, file: !1428, line: 208, baseType: !99, size: 128, offset: 704)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1511, file: !1428, line: 209, baseType: !153, size: 64, offset: 832)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1511, file: !1428, line: 211, baseType: !199, size: 64, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1511, file: !1428, line: 212, baseType: !989, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1511, file: !1428, line: 213, baseType: !989, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1511, file: !1428, line: 214, baseType: !1361, size: 64, offset: 1024)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1504, file: !1428, line: 223, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1510}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1504, file: !1428, line: 236, baseType: !1531, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!82, !1474, !83}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1504, file: !1428, line: 238, baseType: !1535, size: 64, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!83, !1474, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1504, file: !1428, line: 239, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!83, !1474, !83, !1538}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1504, file: !1428, line: 240, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1474, !83}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1504, file: !1428, line: 242, baseType: !1548, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!184, !1510, !153, !199, !233}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1504, file: !1428, line: 252, baseType: !199, size: 64, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1504, file: !1428, line: 259, baseType: !989, size: 8, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1504, file: !1428, line: 260, baseType: !1548, size: 64, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1504, file: !1428, line: 263, baseType: !1555, size: 64, offset: 640)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1558, !1510, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1559, line: 52, baseType: !7)
!1559 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1428, line: 27, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1504, file: !1428, line: 266, baseType: !1563, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!82, !1510, !241}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1499, file: !1428, line: 109, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1428, line: 31, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1499, file: !1428, line: 110, baseType: !233, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1499, file: !1428, line: 111, baseType: !1426, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1427, file: !1428, line: 148, baseType: !83, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1427, file: !1428, line: 154, baseType: !271, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1427, file: !1428, line: 156, baseType: !194, size: 16, offset: 896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1427, file: !1428, line: 157, baseType: !193, size: 16, offset: 912)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1427, file: !1428, line: 158, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1428, line: 32, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !91, file: !92, line: 71, baseType: !1579, size: 32, offset: 448)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1580, line: 19, size: 32, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1579, file: !1580, line: 20, baseType: !427, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !91, file: !92, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !91, file: !92, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !91, file: !92, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !91, file: !92, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !91, file: !92, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !30, line: 463, baseType: !1589, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !88, file: !30, line: 465, baseType: !1591, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !88, file: !30, line: 467, baseType: !95, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !30, line: 468, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1605, !1610, !1614}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1597, file: !30, line: 88, baseType: !95, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1597, file: !30, line: 89, baseType: !206, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1597, file: !30, line: 90, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!82, !1589, !148}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1597, file: !30, line: 91, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!153, !1589, !1609, !1412, !1418}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1597, file: !30, line: 93, baseType: !1611, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1589}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1597, file: !30, line: 95, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1618)
!1618 = !{!1619, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1617, file: !37, line: 279, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!82, !1589}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1617, file: !37, line: 280, baseType: !1611, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1617, file: !37, line: 281, baseType: !1620, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1617, file: !37, line: 282, baseType: !1620, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1617, file: !37, line: 283, baseType: !1620, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1617, file: !37, line: 284, baseType: !1620, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1617, file: !37, line: 285, baseType: !1620, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1617, file: !37, line: 286, baseType: !1620, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1617, file: !37, line: 287, baseType: !1620, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1617, file: !37, line: 288, baseType: !1620, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1617, file: !37, line: 289, baseType: !1620, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1617, file: !37, line: 290, baseType: !1620, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1617, file: !37, line: 291, baseType: !1620, size: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1617, file: !37, line: 292, baseType: !1620, size: 64, offset: 832)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1617, file: !37, line: 293, baseType: !1620, size: 64, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1617, file: !37, line: 294, baseType: !1620, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1617, file: !37, line: 295, baseType: !1620, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1617, file: !37, line: 296, baseType: !1620, size: 64, offset: 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1617, file: !37, line: 297, baseType: !1620, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1617, file: !37, line: 298, baseType: !1620, size: 64, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1617, file: !37, line: 299, baseType: !1620, size: 64, offset: 1280)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1617, file: !37, line: 300, baseType: !1620, size: 64, offset: 1344)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1617, file: !37, line: 301, baseType: !1620, size: 64, offset: 1408)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !88, file: !30, line: 470, baseType: !1646, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1648, line: 82, size: 1408, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1716, !1719, !1722}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1647, file: !1648, line: 83, baseType: !95, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1647, file: !1648, line: 84, baseType: !95, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1647, file: !1648, line: 85, baseType: !1589, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1647, file: !1648, line: 86, baseType: !206, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1647, file: !1648, line: 87, baseType: !206, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1647, file: !1648, line: 88, baseType: !206, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1647, file: !1648, line: 90, baseType: !1657, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!82, !1589, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1669, !1670, !1671, !1672, !1676, !1680, !1681, !1682, !1683, !1684, !1692, !1693, !1694, !1695, !1696, !1697}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1661, file: !24, line: 96, baseType: !95, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1661, file: !24, line: 97, baseType: !1646, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1661, file: !24, line: 99, baseType: !1666, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1668, line: 76, flags: DIFlagFwdDecl)
!1668 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1661, file: !24, line: 100, baseType: !95, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1661, file: !24, line: 102, baseType: !989, size: 8, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1661, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1661, file: !24, line: 105, baseType: !1673, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1661, file: !24, line: 106, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1661, file: !24, line: 108, baseType: !1620, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1661, file: !24, line: 109, baseType: !1611, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1661, file: !24, line: 110, baseType: !1620, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1661, file: !24, line: 111, baseType: !1611, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1661, file: !24, line: 112, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!82, !1589, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1689, file: !37, line: 51, baseType: !82, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1661, file: !24, line: 113, baseType: !1620, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1661, file: !24, line: 114, baseType: !206, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1661, file: !24, line: 115, baseType: !206, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1661, file: !24, line: 117, baseType: !1615, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1661, file: !24, line: 118, baseType: !1611, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1661, file: !24, line: 120, baseType: !1698, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1647, file: !1648, line: 91, baseType: !1602, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1647, file: !1648, line: 92, baseType: !1620, size: 64, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1647, file: !1648, line: 93, baseType: !1611, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1647, file: !1648, line: 94, baseType: !1620, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1647, file: !1648, line: 95, baseType: !1611, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1647, file: !1648, line: 97, baseType: !1620, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1647, file: !1648, line: 98, baseType: !1620, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1647, file: !1648, line: 100, baseType: !1685, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1647, file: !1648, line: 101, baseType: !1620, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1647, file: !1648, line: 103, baseType: !1620, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1647, file: !1648, line: 105, baseType: !1620, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1647, file: !1648, line: 107, baseType: !1615, size: 64, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1647, file: !1648, line: 109, baseType: !1713, size: 64, offset: 1216)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1648, line: 109, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1647, file: !1648, line: 111, baseType: !1717, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1648, line: 111, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1647, file: !1648, line: 112, baseType: !1720, offset: 1344)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1721, line: 187, elements: !126)
!1721 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1647, file: !1648, line: 114, baseType: !989, size: 8, offset: 1344)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !88, file: !30, line: 471, baseType: !1660, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !88, file: !30, line: 473, baseType: !83, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !88, file: !30, line: 475, baseType: !83, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !88, file: !30, line: 480, baseType: !368, size: 192, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !88, file: !30, line: 484, baseType: !1728, size: 576, offset: 1216)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1728, file: !30, line: 362, baseType: !99, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1728, file: !30, line: 363, baseType: !99, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1728, file: !30, line: 364, baseType: !99, size: 128, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1728, file: !30, line: 365, baseType: !99, size: 128, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1728, file: !30, line: 366, baseType: !989, size: 8, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1728, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !88, file: !30, line: 485, baseType: !1737, size: 2304, offset: 1792)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1834, !1838}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1737, file: !37, line: 566, baseType: !1688, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1737, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1737, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1737, file: !37, line: 569, baseType: !989, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1737, file: !37, line: 570, baseType: !989, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1737, file: !37, line: 571, baseType: !989, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1737, file: !37, line: 572, baseType: !989, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1737, file: !37, line: 573, baseType: !989, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1737, file: !37, line: 574, baseType: !989, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1737, file: !37, line: 575, baseType: !989, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1737, file: !37, line: 576, baseType: !989, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1737, file: !37, line: 577, baseType: !72, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1737, file: !37, line: 578, baseType: !112, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1737, file: !37, line: 580, baseType: !99, size: 128, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1737, file: !37, line: 581, baseType: !725, size: 192, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1737, file: !37, line: 582, baseType: !1755, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1757, line: 43, size: 1472, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1766, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1756, file: !1757, line: 44, baseType: !95, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1756, file: !1757, line: 45, baseType: !82, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1756, file: !1757, line: 46, baseType: !99, size: 128, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !1757, line: 47, baseType: !112, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1756, file: !1757, line: 48, baseType: !1764, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1756, file: !1757, line: 49, baseType: !1767, size: 320, offset: 320)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1768, line: 11, size: 320, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1771, !1772, !1777}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1767, file: !1768, line: 16, baseType: !689, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1767, file: !1768, line: 17, baseType: !202, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1767, file: !1768, line: 18, baseType: !1773, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1776}
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1768, line: 19, baseType: !72, size: 32, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1756, file: !1757, line: 50, baseType: !202, size: 64, offset: 640)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1756, file: !1757, line: 51, baseType: !497, size: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1756, file: !1757, line: 52, baseType: !497, size: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1756, file: !1757, line: 53, baseType: !497, size: 64, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1756, file: !1757, line: 54, baseType: !497, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1756, file: !1757, line: 55, baseType: !497, size: 64, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1756, file: !1757, line: 56, baseType: !202, size: 64, offset: 1024)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1756, file: !1757, line: 57, baseType: !202, size: 64, offset: 1088)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1756, file: !1757, line: 58, baseType: !202, size: 64, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1756, file: !1757, line: 59, baseType: !202, size: 64, offset: 1216)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1756, file: !1757, line: 60, baseType: !202, size: 64, offset: 1280)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1756, file: !1757, line: 61, baseType: !1589, size: 64, offset: 1344)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1756, file: !1757, line: 62, baseType: !989, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1756, file: !1757, line: 63, baseType: !989, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1737, file: !37, line: 583, baseType: !989, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1737, file: !37, line: 584, baseType: !989, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1737, file: !37, line: 585, baseType: !989, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1737, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1737, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1737, file: !37, line: 592, baseType: !489, size: 512, offset: 576)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1737, file: !37, line: 593, baseType: !271, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1737, file: !37, line: 594, baseType: !1328, size: 256, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1737, file: !37, line: 595, baseType: !696, size: 128, offset: 1408)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1737, file: !37, line: 596, baseType: !1764, size: 64, offset: 1536)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1737, file: !37, line: 597, baseType: !291, size: 32, offset: 1600)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1737, file: !37, line: 598, baseType: !291, size: 32, offset: 1632)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1737, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1737, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1737, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1737, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1737, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1737, file: !37, line: 604, baseType: !989, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1737, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1737, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1737, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1737, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1737, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1737, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1737, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1737, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1737, file: !37, line: 613, baseType: !82, size: 32, offset: 1792)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1737, file: !37, line: 614, baseType: !82, size: 32, offset: 1824)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1737, file: !37, line: 615, baseType: !271, size: 64, offset: 1856)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1737, file: !37, line: 616, baseType: !271, size: 64, offset: 1920)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1737, file: !37, line: 617, baseType: !271, size: 64, offset: 1984)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1737, file: !37, line: 618, baseType: !271, size: 64, offset: 2048)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1737, file: !37, line: 620, baseType: !1825, size: 64, offset: 2112)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1826, file: !37, line: 537, baseType: !112)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1826, file: !37, line: 538, baseType: !7, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1826, file: !37, line: 540, baseType: !99, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1826, file: !37, line: 543, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1737, file: !37, line: 621, baseType: !1835, size: 64, offset: 2176)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1589, !649}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1737, file: !37, line: 622, baseType: !1839, size: 64, offset: 2240)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !88, file: !30, line: 486, baseType: !1842, size: 64, offset: 4096)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1851, !1852, !1853}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1843, file: !37, line: 643, baseType: !1617, size: 1472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1843, file: !37, line: 644, baseType: !1620, size: 64, offset: 1472)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1843, file: !37, line: 645, baseType: !1848, size: 64, offset: 1536)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1589, !989}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1843, file: !37, line: 646, baseType: !1620, size: 64, offset: 1600)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1843, file: !37, line: 647, baseType: !1611, size: 64, offset: 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1843, file: !37, line: 648, baseType: !1611, size: 64, offset: 1728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !88, file: !30, line: 493, baseType: !1855, size: 64, offset: 4160)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !88, file: !30, line: 499, baseType: !99, size: 128, offset: 4224)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !88, file: !30, line: 502, baseType: !1859, size: 64, offset: 4352)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !88, file: !30, line: 504, baseType: !1863, size: 64, offset: 4416)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !88, file: !30, line: 505, baseType: !271, size: 64, offset: 4480)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !88, file: !30, line: 510, baseType: !271, size: 64, offset: 4544)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !88, file: !30, line: 511, baseType: !1867, size: 64, offset: 4608)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !88, file: !30, line: 513, baseType: !1871, size: 64, offset: 4672)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1872, file: !30, line: 293, baseType: !7, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1872, file: !30, line: 294, baseType: !202, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !88, file: !30, line: 515, baseType: !99, size: 128, offset: 4736)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !88, file: !30, line: 526, baseType: !1878, offset: 4864)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1879, line: 5, elements: !126)
!1879 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !88, file: !30, line: 528, baseType: !1881, size: 64, offset: 4864)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1883, line: 14, flags: DIFlagFwdDecl)
!1883 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !88, file: !30, line: 529, baseType: !1885, size: 64, offset: 4928)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1887, line: 17, size: 192, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890, !1973}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1886, file: !1887, line: 18, baseType: !1885, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1886, file: !1887, line: 19, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1893)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1887, line: 110, size: 1152, elements: !1894)
!1894 = !{!1895, !1899, !1903, !1909, !1915, !1919, !1923, !1928, !1932, !1933, !1937, !1941, !1945, !1956, !1957, !1958, !1959, !1969}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1893, file: !1887, line: 111, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!1885, !1885}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1893, file: !1887, line: 112, baseType: !1900, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !1885}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1893, file: !1887, line: 113, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!989, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1893, file: !1887, line: 114, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!1120, !1907, !1913}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1893, file: !1887, line: 116, baseType: !1916, size: 64, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!989, !1907, !95}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1893, file: !1887, line: 118, baseType: !1920, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!82, !1907, !95, !7, !83, !199}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1893, file: !1887, line: 123, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!82, !1907, !95, !1927, !199}
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1893, file: !1887, line: 126, baseType: !1929, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!95, !1907}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1893, file: !1887, line: 127, baseType: !1929, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1893, file: !1887, line: 128, baseType: !1934, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!1885, !1907}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1893, file: !1887, line: 130, baseType: !1938, size: 64, offset: 640)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1885, !1907, !1885}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1893, file: !1887, line: 133, baseType: !1942, size: 64, offset: 704)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1885, !1907, !95}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1893, file: !1887, line: 135, baseType: !1946, size: 64, offset: 768)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!82, !1907, !95, !95, !7, !7, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1887, line: 43, size: 640, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1950, file: !1887, line: 44, baseType: !1885, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1950, file: !1887, line: 45, baseType: !7, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1950, file: !1887, line: 46, baseType: !1955, size: 512, offset: 128)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 512, elements: !527)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1893, file: !1887, line: 140, baseType: !1938, size: 64, offset: 832)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1893, file: !1887, line: 143, baseType: !1934, size: 64, offset: 896)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1893, file: !1887, line: 145, baseType: !1896, size: 64, offset: 960)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1893, file: !1887, line: 146, baseType: !1960, size: 64, offset: 1024)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!82, !1907, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1887, line: 29, size: 128, elements: !1965)
!1965 = !{!1966, !1967, !1968}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1964, file: !1887, line: 30, baseType: !7, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1964, file: !1887, line: 31, baseType: !7, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1964, file: !1887, line: 32, baseType: !1907, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1893, file: !1887, line: 148, baseType: !1970, size: 64, offset: 1088)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!82, !1907, !1589}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1886, file: !1887, line: 20, baseType: !1589, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !88, file: !30, line: 534, baseType: !1975, size: 32, offset: 4992)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !70, line: 16, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !70, line: 13, baseType: !72)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !88, file: !30, line: 535, baseType: !72, size: 32, offset: 5024)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !88, file: !30, line: 537, baseType: !112, offset: 5056)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !88, file: !30, line: 538, baseType: !99, size: 128, offset: 5056)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !88, file: !30, line: 540, baseType: !1981, size: 64, offset: 5184)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1983, line: 54, size: 960, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1995, !1999, !2000, !2001, !2002, !2006, !2010, !2011}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1982, file: !1983, line: 55, baseType: !95, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1982, file: !1983, line: 56, baseType: !1666, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1982, file: !1983, line: 58, baseType: !206, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1982, file: !1983, line: 59, baseType: !206, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1982, file: !1983, line: 60, baseType: !105, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1982, file: !1983, line: 62, baseType: !1602, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1982, file: !1983, line: 63, baseType: !1992, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!153, !1589, !1609}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1982, file: !1983, line: 65, baseType: !1996, size: 64, offset: 448)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1981}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1982, file: !1983, line: 66, baseType: !1611, size: 64, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1982, file: !1983, line: 68, baseType: !1620, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1982, file: !1983, line: 70, baseType: !1377, size: 64, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1982, file: !1983, line: 71, baseType: !2003, size: 64, offset: 704)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!1120, !1589}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1982, file: !1983, line: 73, baseType: !2007, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !1589, !1412, !1418}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1982, file: !1983, line: 75, baseType: !1615, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1982, file: !1983, line: 77, baseType: !1717, size: 64, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !88, file: !30, line: 541, baseType: !206, size: 64, offset: 5248)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !88, file: !30, line: 543, baseType: !1611, size: 64, offset: 5312)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !88, file: !30, line: 544, baseType: !2015, size: 64, offset: 5376)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !88, file: !30, line: 545, baseType: !2018, size: 64, offset: 5440)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !88, file: !30, line: 547, baseType: !989, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !88, file: !30, line: 548, baseType: !989, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !88, file: !30, line: 549, baseType: !989, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !88, file: !30, line: 550, baseType: !989, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !85, file: !3, line: 58, baseType: !2025, size: 512, offset: 5568)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2026, line: 20, size: 512, elements: !2027)
!2026 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2027 = !{!2028, !2030, !2031, !2032, !2033, !2034, !2036, !2037}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2025, file: !2026, line: 21, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !70, line: 158, baseType: !1118)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2025, file: !2026, line: 22, baseType: !2029, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2025, file: !2026, line: 23, baseType: !95, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2025, file: !2026, line: 24, baseType: !202, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2025, file: !2026, line: 25, baseType: !202, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2025, file: !2026, line: 26, baseType: !2035, size: 64, offset: 320)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2025, file: !2026, line: 26, baseType: !2035, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2025, file: !2026, line: 26, baseType: !2035, size: 64, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !85, file: !3, line: 59, baseType: !1666, size: 64, offset: 6080)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !85, file: !3, line: 60, baseType: !82, size: 32, offset: 6144)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_base", scope: !85, file: !3, line: 61, baseType: !83, size: 64, offset: 6208)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_complete", scope: !85, file: !3, line: 62, baseType: !725, size: 192, offset: 6272)
!2042 = !{!2043, !2045, !2052, !0, !2054, !2056, !2061}
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_scu_ipc_init163", scope: !2, file: !3, line: 706, type: !83, isLocal: true, isDefinition: true)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "__exitcall_intel_scu_ipc_exit", scope: !2, file: !3, line: 712, type: !2047, isLocal: true, isDefinition: true)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2048, line: 117, baseType: !2049)
!2048 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null}
!2052 = !DIGlobalVariableExpression(var: !2053, expr: !DIExpression())
!2053 = distinct !DIGlobalVariable(name: "ipcdev", scope: !2, file: !3, line: 80, type: !84, isLocal: true, isDefinition: true)
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(name: "intel_scu_ipc_class", scope: !2, file: !3, line: 83, type: !1982, isLocal: true, isDefinition: true)
!2056 = !DIGlobalVariableExpression(var: !2057, expr: !DIExpression())
!2057 = distinct !DIGlobalVariable(name: "__key", scope: !2058, file: !726, line: 88, type: !1720, isLocal: true, isDefinition: true)
!2058 = distinct !DISubprogram(name: "__init_completion", scope: !726, file: !726, line: 85, type: !2059, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !724}
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(name: "__key", scope: !2063, file: !3, line: 704, type: !1720, isLocal: true, isDefinition: true)
!2063 = distinct !DISubprogram(name: "intel_scu_ipc_init", scope: !3, file: !3, line: 702, type: !2064, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!82}
!2066 = !{i32 7, !"Dwarf Version", i32 4}
!2067 = !{i32 2, !"Debug Info Version", i32 3}
!2068 = !{i32 1, !"wchar_size", i32 2}
!2069 = !{i32 1, !"Code Model", i32 2}
!2070 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2071 = distinct !DISubprogram(name: "intel_scu_ipc_dev_get", scope: !3, file: !3, line: 100, type: !2072, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!84}
!2074 = !DILocalVariable(name: "scu", scope: !2071, file: !3, line: 102, type: !84)
!2075 = !DILocation(line: 102, column: 28, scope: !2071)
!2076 = !DILocation(line: 104, column: 2, scope: !2071)
!2077 = !DILocation(line: 105, column: 6, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 105, column: 6)
!2079 = !DILocation(line: 105, column: 6, scope: !2071)
!2080 = !DILocation(line: 106, column: 15, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 105, column: 14)
!2082 = !DILocation(line: 106, column: 23, scope: !2081)
!2083 = !DILocation(line: 106, column: 3, scope: !2081)
!2084 = !DILocation(line: 111, column: 23, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 111, column: 7)
!2086 = !DILocation(line: 111, column: 31, scope: !2085)
!2087 = !DILocation(line: 111, column: 8, scope: !2085)
!2088 = !DILocation(line: 111, column: 7, scope: !2081)
!2089 = !DILocation(line: 112, column: 16, scope: !2085)
!2090 = !DILocation(line: 112, column: 24, scope: !2085)
!2091 = !DILocation(line: 112, column: 4, scope: !2085)
!2092 = !DILocation(line: 114, column: 10, scope: !2085)
!2093 = !DILocation(line: 114, column: 8, scope: !2085)
!2094 = !DILocation(line: 115, column: 2, scope: !2081)
!2095 = !DILocation(line: 117, column: 2, scope: !2071)
!2096 = !DILocation(line: 118, column: 9, scope: !2071)
!2097 = !DILocation(line: 118, column: 2, scope: !2071)
!2098 = distinct !DISubprogram(name: "try_module_get", scope: !2099, file: !2099, line: 751, type: !2100, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2099 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!989, !1666}
!2102 = !DILocalVariable(name: "module", arg: 1, scope: !2098, file: !2099, line: 751, type: !1666)
!2103 = !DILocation(line: 751, column: 50, scope: !2098)
!2104 = !DILocation(line: 753, column: 2, scope: !2098)
!2105 = distinct !DISubprogram(name: "intel_scu_ipc_dev_put", scope: !3, file: !3, line: 130, type: !2106, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{null, !84}
!2108 = !DILocalVariable(name: "scu", arg: 1, scope: !2105, file: !3, line: 130, type: !84)
!2109 = !DILocation(line: 130, column: 54, scope: !2105)
!2110 = !DILocation(line: 132, column: 6, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 132, column: 6)
!2112 = !DILocation(line: 132, column: 6, scope: !2105)
!2113 = !DILocation(line: 133, column: 14, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 132, column: 11)
!2115 = !DILocation(line: 133, column: 19, scope: !2114)
!2116 = !DILocation(line: 133, column: 3, scope: !2114)
!2117 = !DILocation(line: 134, column: 15, scope: !2114)
!2118 = !DILocation(line: 134, column: 20, scope: !2114)
!2119 = !DILocation(line: 134, column: 3, scope: !2114)
!2120 = !DILocation(line: 135, column: 2, scope: !2114)
!2121 = !DILocation(line: 136, column: 1, scope: !2105)
!2122 = distinct !DISubprogram(name: "module_put", scope: !2099, file: !2099, line: 756, type: !2123, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !1666}
!2125 = !DILocalVariable(name: "module", arg: 1, scope: !2122, file: !2099, line: 756, type: !1666)
!2126 = !DILocation(line: 756, column: 46, scope: !2122)
!2127 = !DILocation(line: 758, column: 1, scope: !2122)
!2128 = distinct !DISubprogram(name: "devm_intel_scu_ipc_dev_get", scope: !3, file: !3, line: 162, type: !2129, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!84, !1589}
!2131 = !DILocalVariable(name: "dev", arg: 1, scope: !2128, file: !3, line: 162, type: !1589)
!2132 = !DILocation(line: 162, column: 69, scope: !2128)
!2133 = !DILocalVariable(name: "dr", scope: !2128, file: !3, line: 164, type: !2134)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_scu_ipc_devres", file: !3, line: 139, size: 64, elements: !2136)
!2136 = !{!2137}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "scu", scope: !2135, file: !3, line: 140, baseType: !84, size: 64)
!2138 = !DILocation(line: 164, column: 31, scope: !2128)
!2139 = !DILocalVariable(name: "scu", scope: !2128, file: !3, line: 165, type: !84)
!2140 = !DILocation(line: 165, column: 28, scope: !2128)
!2141 = !DILocation(line: 167, column: 7, scope: !2128)
!2142 = !DILocation(line: 167, column: 5, scope: !2128)
!2143 = !DILocation(line: 168, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 168, column: 6)
!2145 = !DILocation(line: 168, column: 6, scope: !2128)
!2146 = !DILocation(line: 169, column: 3, scope: !2144)
!2147 = !DILocation(line: 171, column: 8, scope: !2128)
!2148 = !DILocation(line: 171, column: 6, scope: !2128)
!2149 = !DILocation(line: 172, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 172, column: 6)
!2151 = !DILocation(line: 172, column: 6, scope: !2128)
!2152 = !DILocation(line: 173, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 172, column: 12)
!2154 = !DILocation(line: 173, column: 3, scope: !2153)
!2155 = !DILocation(line: 174, column: 3, scope: !2153)
!2156 = !DILocation(line: 177, column: 12, scope: !2128)
!2157 = !DILocation(line: 177, column: 2, scope: !2128)
!2158 = !DILocation(line: 177, column: 6, scope: !2128)
!2159 = !DILocation(line: 177, column: 10, scope: !2128)
!2160 = !DILocation(line: 178, column: 13, scope: !2128)
!2161 = !DILocation(line: 178, column: 18, scope: !2128)
!2162 = !DILocation(line: 178, column: 2, scope: !2128)
!2163 = !DILocation(line: 180, column: 9, scope: !2128)
!2164 = !DILocation(line: 180, column: 2, scope: !2128)
!2165 = !DILocation(line: 181, column: 1, scope: !2128)
!2166 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !2167, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!83, !2169, !199, !69}
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !2170)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !1589, !83}
!2173 = !DILocalVariable(name: "release", arg: 1, scope: !2166, file: !30, line: 178, type: !2169)
!2174 = !DILocation(line: 178, column: 47, scope: !2166)
!2175 = !DILocalVariable(name: "size", arg: 2, scope: !2166, file: !30, line: 178, type: !199)
!2176 = !DILocation(line: 178, column: 63, scope: !2166)
!2177 = !DILocalVariable(name: "gfp", arg: 3, scope: !2166, file: !30, line: 178, type: !69)
!2178 = !DILocation(line: 178, column: 75, scope: !2166)
!2179 = !DILocation(line: 180, column: 27, scope: !2166)
!2180 = !DILocation(line: 180, column: 36, scope: !2166)
!2181 = !DILocation(line: 180, column: 42, scope: !2166)
!2182 = !DILocation(line: 180, column: 9, scope: !2166)
!2183 = !DILocation(line: 180, column: 2, scope: !2166)
!2184 = distinct !DISubprogram(name: "devm_intel_scu_ipc_dev_release", scope: !3, file: !3, line: 143, type: !2171, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2185 = !DILocalVariable(name: "dev", arg: 1, scope: !2184, file: !3, line: 143, type: !1589)
!2186 = !DILocation(line: 143, column: 59, scope: !2184)
!2187 = !DILocalVariable(name: "res", arg: 2, scope: !2184, file: !3, line: 143, type: !83)
!2188 = !DILocation(line: 143, column: 70, scope: !2184)
!2189 = !DILocalVariable(name: "dr", scope: !2184, file: !3, line: 145, type: !2134)
!2190 = !DILocation(line: 145, column: 31, scope: !2184)
!2191 = !DILocation(line: 145, column: 36, scope: !2184)
!2192 = !DILocalVariable(name: "scu", scope: !2184, file: !3, line: 146, type: !84)
!2193 = !DILocation(line: 146, column: 28, scope: !2184)
!2194 = !DILocation(line: 146, column: 34, scope: !2184)
!2195 = !DILocation(line: 146, column: 38, scope: !2184)
!2196 = !DILocation(line: 148, column: 24, scope: !2184)
!2197 = !DILocation(line: 148, column: 2, scope: !2184)
!2198 = !DILocation(line: 149, column: 1, scope: !2184)
!2199 = distinct !DISubprogram(name: "intel_scu_ipc_dev_ioread8", scope: !3, file: !3, line: 334, type: !2200, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!82, !84, !397, !2202}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!2203 = !DILocalVariable(name: "scu", arg: 1, scope: !2199, file: !3, line: 334, type: !84)
!2204 = !DILocation(line: 334, column: 57, scope: !2199)
!2205 = !DILocalVariable(name: "addr", arg: 2, scope: !2199, file: !3, line: 334, type: !397)
!2206 = !DILocation(line: 334, column: 66, scope: !2199)
!2207 = !DILocalVariable(name: "data", arg: 3, scope: !2199, file: !3, line: 334, type: !2202)
!2208 = !DILocation(line: 334, column: 76, scope: !2199)
!2209 = !DILocation(line: 336, column: 22, scope: !2199)
!2210 = !DILocation(line: 336, column: 34, scope: !2199)
!2211 = !DILocation(line: 336, column: 9, scope: !2199)
!2212 = !DILocation(line: 336, column: 2, scope: !2199)
!2213 = distinct !DISubprogram(name: "pwr_reg_rdwr", scope: !3, file: !3, line: 271, type: !2214, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!82, !84, !2216, !2202, !72, !72, !72}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!2217 = !DILocalVariable(name: "scu", arg: 1, scope: !2213, file: !3, line: 271, type: !84)
!2218 = !DILocation(line: 271, column: 51, scope: !2213)
!2219 = !DILocalVariable(name: "addr", arg: 2, scope: !2213, file: !3, line: 271, type: !2216)
!2220 = !DILocation(line: 271, column: 61, scope: !2213)
!2221 = !DILocalVariable(name: "data", arg: 3, scope: !2213, file: !3, line: 271, type: !2202)
!2222 = !DILocation(line: 271, column: 71, scope: !2213)
!2223 = !DILocalVariable(name: "count", arg: 4, scope: !2213, file: !3, line: 272, type: !72)
!2224 = !DILocation(line: 272, column: 8, scope: !2213)
!2225 = !DILocalVariable(name: "op", arg: 5, scope: !2213, file: !3, line: 272, type: !72)
!2226 = !DILocation(line: 272, column: 19, scope: !2213)
!2227 = !DILocalVariable(name: "id", arg: 6, scope: !2213, file: !3, line: 272, type: !72)
!2228 = !DILocation(line: 272, column: 27, scope: !2213)
!2229 = !DILocalVariable(name: "nc", scope: !2213, file: !3, line: 274, type: !82)
!2230 = !DILocation(line: 274, column: 6, scope: !2213)
!2231 = !DILocalVariable(name: "offset", scope: !2213, file: !3, line: 275, type: !72)
!2232 = !DILocation(line: 275, column: 6, scope: !2213)
!2233 = !DILocalVariable(name: "err", scope: !2213, file: !3, line: 276, type: !82)
!2234 = !DILocation(line: 276, column: 6, scope: !2213)
!2235 = !DILocalVariable(name: "cbuf", scope: !2213, file: !3, line: 277, type: !2236)
!2236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 160, elements: !1194)
!2237 = !DILocation(line: 277, column: 5, scope: !2213)
!2238 = !DILocalVariable(name: "wbuf", scope: !2213, file: !3, line: 278, type: !71)
!2239 = !DILocation(line: 278, column: 7, scope: !2213)
!2240 = !DILocation(line: 278, column: 14, scope: !2213)
!2241 = !DILocation(line: 280, column: 2, scope: !2213)
!2242 = !DILocation(line: 282, column: 2, scope: !2213)
!2243 = !DILocation(line: 283, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 283, column: 6)
!2245 = !DILocation(line: 283, column: 6, scope: !2213)
!2246 = !DILocation(line: 284, column: 9, scope: !2244)
!2247 = !DILocation(line: 284, column: 7, scope: !2244)
!2248 = !DILocation(line: 284, column: 3, scope: !2244)
!2249 = !DILocation(line: 285, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 285, column: 6)
!2251 = !DILocation(line: 285, column: 6, scope: !2213)
!2252 = !DILocation(line: 286, column: 3, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 285, column: 12)
!2254 = !DILocation(line: 287, column: 3, scope: !2253)
!2255 = !DILocation(line: 290, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 290, column: 2)
!2257 = !DILocation(line: 290, column: 7, scope: !2256)
!2258 = !DILocation(line: 290, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 290, column: 2)
!2260 = !DILocation(line: 290, column: 20, scope: !2259)
!2261 = !DILocation(line: 290, column: 18, scope: !2259)
!2262 = !DILocation(line: 290, column: 2, scope: !2256)
!2263 = !DILocation(line: 291, column: 18, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 290, column: 46)
!2265 = !DILocation(line: 291, column: 23, scope: !2264)
!2266 = !DILocation(line: 291, column: 8, scope: !2264)
!2267 = !DILocation(line: 291, column: 3, scope: !2264)
!2268 = !DILocation(line: 291, column: 16, scope: !2264)
!2269 = !DILocation(line: 292, column: 22, scope: !2264)
!2270 = !DILocation(line: 292, column: 27, scope: !2264)
!2271 = !DILocation(line: 292, column: 31, scope: !2264)
!2272 = !DILocation(line: 292, column: 8, scope: !2264)
!2273 = !DILocation(line: 292, column: 15, scope: !2264)
!2274 = !DILocation(line: 292, column: 3, scope: !2264)
!2275 = !DILocation(line: 292, column: 20, scope: !2264)
!2276 = !DILocation(line: 293, column: 2, scope: !2264)
!2277 = !DILocation(line: 290, column: 29, scope: !2259)
!2278 = !DILocation(line: 290, column: 40, scope: !2259)
!2279 = !DILocation(line: 290, column: 2, scope: !2259)
!2280 = distinct !{!2280, !2262, !2281}
!2281 = !DILocation(line: 293, column: 2, scope: !2256)
!2282 = !DILocation(line: 295, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 295, column: 6)
!2284 = !DILocation(line: 295, column: 9, scope: !2283)
!2285 = !DILocation(line: 295, column: 6, scope: !2213)
!2286 = !DILocation(line: 296, column: 11, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 296, column: 3)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 295, column: 30)
!2289 = !DILocation(line: 296, column: 23, scope: !2287)
!2290 = !DILocation(line: 296, column: 8, scope: !2287)
!2291 = !DILocation(line: 296, column: 28, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 296, column: 3)
!2293 = !DILocation(line: 296, column: 33, scope: !2292)
!2294 = !DILocation(line: 296, column: 31, scope: !2292)
!2295 = !DILocation(line: 296, column: 3, scope: !2287)
!2296 = !DILocation(line: 297, column: 20, scope: !2292)
!2297 = !DILocation(line: 297, column: 25, scope: !2292)
!2298 = !DILocation(line: 297, column: 30, scope: !2292)
!2299 = !DILocation(line: 297, column: 35, scope: !2292)
!2300 = !DILocation(line: 297, column: 4, scope: !2292)
!2301 = !DILocation(line: 296, column: 42, scope: !2292)
!2302 = !DILocation(line: 296, column: 53, scope: !2292)
!2303 = !DILocation(line: 296, column: 3, scope: !2292)
!2304 = distinct !{!2304, !2295, !2305}
!2305 = !DILocation(line: 297, column: 41, scope: !2287)
!2306 = !DILocation(line: 298, column: 15, scope: !2288)
!2307 = !DILocation(line: 298, column: 21, scope: !2288)
!2308 = !DILocation(line: 298, column: 27, scope: !2288)
!2309 = !DILocation(line: 298, column: 32, scope: !2288)
!2310 = !DILocation(line: 298, column: 40, scope: !2288)
!2311 = !DILocation(line: 298, column: 43, scope: !2288)
!2312 = !DILocation(line: 298, column: 38, scope: !2288)
!2313 = !DILocation(line: 298, column: 60, scope: !2288)
!2314 = !DILocation(line: 298, column: 58, scope: !2288)
!2315 = !DILocation(line: 298, column: 3, scope: !2288)
!2316 = !DILocation(line: 299, column: 2, scope: !2288)
!2317 = !DILocation(line: 299, column: 13, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 299, column: 13)
!2319 = !DILocation(line: 299, column: 16, scope: !2318)
!2320 = !DILocation(line: 299, column: 13, scope: !2283)
!2321 = !DILocation(line: 300, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 300, column: 3)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 299, column: 37)
!2324 = !DILocation(line: 300, column: 8, scope: !2322)
!2325 = !DILocation(line: 300, column: 16, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 300, column: 3)
!2327 = !DILocation(line: 300, column: 21, scope: !2326)
!2328 = !DILocation(line: 300, column: 19, scope: !2326)
!2329 = !DILocation(line: 300, column: 3, scope: !2322)
!2330 = !DILocation(line: 301, column: 19, scope: !2326)
!2331 = !DILocation(line: 301, column: 24, scope: !2326)
!2332 = !DILocation(line: 301, column: 9, scope: !2326)
!2333 = !DILocation(line: 301, column: 4, scope: !2326)
!2334 = !DILocation(line: 301, column: 17, scope: !2326)
!2335 = !DILocation(line: 300, column: 30, scope: !2326)
!2336 = !DILocation(line: 300, column: 41, scope: !2326)
!2337 = !DILocation(line: 300, column: 3, scope: !2326)
!2338 = distinct !{!2338, !2329, !2339}
!2339 = !DILocation(line: 301, column: 26, scope: !2322)
!2340 = !DILocation(line: 302, column: 11, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 302, column: 3)
!2342 = !DILocation(line: 302, column: 23, scope: !2341)
!2343 = !DILocation(line: 302, column: 8, scope: !2341)
!2344 = !DILocation(line: 302, column: 28, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 302, column: 3)
!2346 = !DILocation(line: 302, column: 33, scope: !2345)
!2347 = !DILocation(line: 302, column: 31, scope: !2345)
!2348 = !DILocation(line: 302, column: 3, scope: !2341)
!2349 = !DILocation(line: 303, column: 20, scope: !2345)
!2350 = !DILocation(line: 303, column: 25, scope: !2345)
!2351 = !DILocation(line: 303, column: 30, scope: !2345)
!2352 = !DILocation(line: 303, column: 35, scope: !2345)
!2353 = !DILocation(line: 303, column: 4, scope: !2345)
!2354 = !DILocation(line: 302, column: 42, scope: !2345)
!2355 = !DILocation(line: 302, column: 53, scope: !2345)
!2356 = !DILocation(line: 302, column: 3, scope: !2345)
!2357 = distinct !{!2357, !2348, !2358}
!2358 = !DILocation(line: 303, column: 41, scope: !2341)
!2359 = !DILocation(line: 304, column: 15, scope: !2323)
!2360 = !DILocation(line: 304, column: 21, scope: !2323)
!2361 = !DILocation(line: 304, column: 27, scope: !2323)
!2362 = !DILocation(line: 304, column: 32, scope: !2323)
!2363 = !DILocation(line: 304, column: 40, scope: !2323)
!2364 = !DILocation(line: 304, column: 43, scope: !2323)
!2365 = !DILocation(line: 304, column: 38, scope: !2323)
!2366 = !DILocation(line: 304, column: 60, scope: !2323)
!2367 = !DILocation(line: 304, column: 58, scope: !2323)
!2368 = !DILocation(line: 304, column: 3, scope: !2323)
!2369 = !DILocation(line: 305, column: 2, scope: !2323)
!2370 = !DILocation(line: 305, column: 13, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 305, column: 13)
!2372 = !DILocation(line: 305, column: 16, scope: !2371)
!2373 = !DILocation(line: 305, column: 13, scope: !2318)
!2374 = !DILocation(line: 306, column: 18, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 305, column: 37)
!2376 = !DILocation(line: 306, column: 8, scope: !2375)
!2377 = !DILocation(line: 306, column: 3, scope: !2375)
!2378 = !DILocation(line: 306, column: 16, scope: !2375)
!2379 = !DILocation(line: 307, column: 22, scope: !2375)
!2380 = !DILocation(line: 307, column: 8, scope: !2375)
!2381 = !DILocation(line: 307, column: 15, scope: !2375)
!2382 = !DILocation(line: 307, column: 3, scope: !2375)
!2383 = !DILocation(line: 307, column: 20, scope: !2375)
!2384 = !DILocation(line: 308, column: 19, scope: !2375)
!2385 = !DILocation(line: 308, column: 24, scope: !2375)
!2386 = !DILocation(line: 308, column: 3, scope: !2375)
!2387 = !DILocation(line: 309, column: 15, scope: !2375)
!2388 = !DILocation(line: 309, column: 30, scope: !2375)
!2389 = !DILocation(line: 309, column: 33, scope: !2375)
!2390 = !DILocation(line: 309, column: 28, scope: !2375)
!2391 = !DILocation(line: 309, column: 50, scope: !2375)
!2392 = !DILocation(line: 309, column: 48, scope: !2375)
!2393 = !DILocation(line: 309, column: 3, scope: !2375)
!2394 = !DILocation(line: 310, column: 2, scope: !2375)
!2395 = !DILocation(line: 312, column: 35, scope: !2213)
!2396 = !DILocation(line: 312, column: 8, scope: !2213)
!2397 = !DILocation(line: 312, column: 6, scope: !2213)
!2398 = !DILocation(line: 313, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2213, file: !3, line: 313, column: 6)
!2400 = !DILocation(line: 313, column: 11, scope: !2399)
!2401 = !DILocation(line: 313, column: 14, scope: !2399)
!2402 = !DILocation(line: 313, column: 17, scope: !2399)
!2403 = !DILocation(line: 313, column: 6, scope: !2213)
!2404 = !DILocation(line: 315, column: 17, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 313, column: 38)
!2406 = !DILocation(line: 315, column: 23, scope: !2405)
!2407 = !DILocation(line: 315, column: 28, scope: !2405)
!2408 = !DILocation(line: 315, column: 37, scope: !2405)
!2409 = !DILocation(line: 315, column: 3, scope: !2405)
!2410 = !DILocation(line: 316, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 316, column: 3)
!2412 = !DILocation(line: 316, column: 8, scope: !2411)
!2413 = !DILocation(line: 316, column: 16, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 316, column: 3)
!2415 = !DILocation(line: 316, column: 21, scope: !2414)
!2416 = !DILocation(line: 316, column: 19, scope: !2414)
!2417 = !DILocation(line: 316, column: 3, scope: !2411)
!2418 = !DILocation(line: 317, column: 30, scope: !2414)
!2419 = !DILocation(line: 317, column: 35, scope: !2414)
!2420 = !DILocation(line: 317, column: 15, scope: !2414)
!2421 = !DILocation(line: 317, column: 4, scope: !2414)
!2422 = !DILocation(line: 317, column: 9, scope: !2414)
!2423 = !DILocation(line: 317, column: 13, scope: !2414)
!2424 = !DILocation(line: 316, column: 30, scope: !2414)
!2425 = !DILocation(line: 316, column: 3, scope: !2414)
!2426 = distinct !{!2426, !2417, !2427}
!2427 = !DILocation(line: 317, column: 37, scope: !2411)
!2428 = !DILocation(line: 318, column: 2, scope: !2405)
!2429 = !DILocation(line: 319, column: 2, scope: !2213)
!2430 = !DILocation(line: 320, column: 9, scope: !2213)
!2431 = !DILocation(line: 320, column: 2, scope: !2213)
!2432 = !DILocation(line: 321, column: 1, scope: !2213)
!2433 = distinct !DISubprogram(name: "intel_scu_ipc_dev_iowrite8", scope: !3, file: !3, line: 351, type: !2434, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!82, !84, !397, !558}
!2436 = !DILocalVariable(name: "scu", arg: 1, scope: !2433, file: !3, line: 351, type: !84)
!2437 = !DILocation(line: 351, column: 58, scope: !2433)
!2438 = !DILocalVariable(name: "addr", arg: 2, scope: !2433, file: !3, line: 351, type: !397)
!2439 = !DILocation(line: 351, column: 67, scope: !2433)
!2440 = !DILocalVariable(name: "data", arg: 3, scope: !2433, file: !3, line: 351, type: !558)
!2441 = !DILocation(line: 351, column: 76, scope: !2433)
!2442 = !DILocation(line: 353, column: 22, scope: !2433)
!2443 = !DILocation(line: 353, column: 9, scope: !2433)
!2444 = !DILocation(line: 353, column: 2, scope: !2433)
!2445 = distinct !DISubprogram(name: "intel_scu_ipc_dev_readv", scope: !3, file: !3, line: 371, type: !2446, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!82, !84, !2216, !2202, !199}
!2448 = !DILocalVariable(name: "scu", arg: 1, scope: !2445, file: !3, line: 371, type: !84)
!2449 = !DILocation(line: 371, column: 55, scope: !2445)
!2450 = !DILocalVariable(name: "addr", arg: 2, scope: !2445, file: !3, line: 371, type: !2216)
!2451 = !DILocation(line: 371, column: 65, scope: !2445)
!2452 = !DILocalVariable(name: "data", arg: 3, scope: !2445, file: !3, line: 371, type: !2202)
!2453 = !DILocation(line: 371, column: 75, scope: !2445)
!2454 = !DILocalVariable(name: "len", arg: 4, scope: !2445, file: !3, line: 372, type: !199)
!2455 = !DILocation(line: 372, column: 15, scope: !2445)
!2456 = !DILocation(line: 374, column: 22, scope: !2445)
!2457 = !DILocation(line: 374, column: 27, scope: !2445)
!2458 = !DILocation(line: 374, column: 33, scope: !2445)
!2459 = !DILocation(line: 374, column: 39, scope: !2445)
!2460 = !DILocation(line: 374, column: 9, scope: !2445)
!2461 = !DILocation(line: 374, column: 2, scope: !2445)
!2462 = distinct !DISubprogram(name: "intel_scu_ipc_dev_writev", scope: !3, file: !3, line: 392, type: !2446, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2463 = !DILocalVariable(name: "scu", arg: 1, scope: !2462, file: !3, line: 392, type: !84)
!2464 = !DILocation(line: 392, column: 56, scope: !2462)
!2465 = !DILocalVariable(name: "addr", arg: 2, scope: !2462, file: !3, line: 392, type: !2216)
!2466 = !DILocation(line: 392, column: 66, scope: !2462)
!2467 = !DILocalVariable(name: "data", arg: 3, scope: !2462, file: !3, line: 392, type: !2202)
!2468 = !DILocation(line: 392, column: 76, scope: !2462)
!2469 = !DILocalVariable(name: "len", arg: 4, scope: !2462, file: !3, line: 393, type: !199)
!2470 = !DILocation(line: 393, column: 16, scope: !2462)
!2471 = !DILocation(line: 395, column: 22, scope: !2462)
!2472 = !DILocation(line: 395, column: 27, scope: !2462)
!2473 = !DILocation(line: 395, column: 33, scope: !2462)
!2474 = !DILocation(line: 395, column: 39, scope: !2462)
!2475 = !DILocation(line: 395, column: 9, scope: !2462)
!2476 = !DILocation(line: 395, column: 2, scope: !2462)
!2477 = distinct !DISubprogram(name: "intel_scu_ipc_dev_update", scope: !3, file: !3, line: 414, type: !2478, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!82, !84, !397, !558, !558}
!2480 = !DILocalVariable(name: "scu", arg: 1, scope: !2477, file: !3, line: 414, type: !84)
!2481 = !DILocation(line: 414, column: 56, scope: !2477)
!2482 = !DILocalVariable(name: "addr", arg: 2, scope: !2477, file: !3, line: 414, type: !397)
!2483 = !DILocation(line: 414, column: 65, scope: !2477)
!2484 = !DILocalVariable(name: "data", arg: 3, scope: !2477, file: !3, line: 414, type: !558)
!2485 = !DILocation(line: 414, column: 74, scope: !2477)
!2486 = !DILocalVariable(name: "mask", arg: 4, scope: !2477, file: !3, line: 415, type: !558)
!2487 = !DILocation(line: 415, column: 12, scope: !2477)
!2488 = !DILocalVariable(name: "tmp", scope: !2477, file: !3, line: 417, type: !2489)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 16, elements: !961)
!2490 = !DILocation(line: 417, column: 5, scope: !2477)
!2491 = !DILocation(line: 417, column: 14, scope: !2477)
!2492 = !DILocation(line: 417, column: 16, scope: !2477)
!2493 = !DILocation(line: 417, column: 22, scope: !2477)
!2494 = !DILocation(line: 418, column: 22, scope: !2477)
!2495 = !DILocation(line: 418, column: 34, scope: !2477)
!2496 = !DILocation(line: 418, column: 9, scope: !2477)
!2497 = !DILocation(line: 418, column: 2, scope: !2477)
!2498 = distinct !DISubprogram(name: "intel_scu_ipc_dev_simple_command", scope: !3, file: !3, line: 435, type: !2499, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!82, !84, !82, !82}
!2501 = !DILocalVariable(name: "scu", arg: 1, scope: !2498, file: !3, line: 435, type: !84)
!2502 = !DILocation(line: 435, column: 64, scope: !2498)
!2503 = !DILocalVariable(name: "cmd", arg: 2, scope: !2498, file: !3, line: 435, type: !82)
!2504 = !DILocation(line: 435, column: 73, scope: !2498)
!2505 = !DILocalVariable(name: "sub", arg: 3, scope: !2498, file: !3, line: 436, type: !82)
!2506 = !DILocation(line: 436, column: 14, scope: !2498)
!2507 = !DILocalVariable(name: "cmdval", scope: !2498, file: !3, line: 438, type: !72)
!2508 = !DILocation(line: 438, column: 6, scope: !2498)
!2509 = !DILocalVariable(name: "err", scope: !2498, file: !3, line: 439, type: !82)
!2510 = !DILocation(line: 439, column: 6, scope: !2498)
!2511 = !DILocation(line: 441, column: 2, scope: !2498)
!2512 = !DILocation(line: 442, column: 7, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 442, column: 6)
!2514 = !DILocation(line: 442, column: 6, scope: !2498)
!2515 = !DILocation(line: 443, column: 9, scope: !2513)
!2516 = !DILocation(line: 443, column: 7, scope: !2513)
!2517 = !DILocation(line: 443, column: 3, scope: !2513)
!2518 = !DILocation(line: 444, column: 7, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 444, column: 6)
!2520 = !DILocation(line: 444, column: 6, scope: !2498)
!2521 = !DILocation(line: 445, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 444, column: 12)
!2523 = !DILocation(line: 446, column: 3, scope: !2522)
!2524 = !DILocation(line: 448, column: 8, scope: !2498)
!2525 = !DILocation(line: 448, column: 6, scope: !2498)
!2526 = !DILocation(line: 449, column: 11, scope: !2498)
!2527 = !DILocation(line: 449, column: 15, scope: !2498)
!2528 = !DILocation(line: 449, column: 23, scope: !2498)
!2529 = !DILocation(line: 449, column: 21, scope: !2498)
!2530 = !DILocation(line: 449, column: 9, scope: !2498)
!2531 = !DILocation(line: 450, column: 14, scope: !2498)
!2532 = !DILocation(line: 450, column: 19, scope: !2498)
!2533 = !DILocation(line: 450, column: 2, scope: !2498)
!2534 = !DILocation(line: 451, column: 35, scope: !2498)
!2535 = !DILocation(line: 451, column: 8, scope: !2498)
!2536 = !DILocation(line: 451, column: 6, scope: !2498)
!2537 = !DILocation(line: 452, column: 2, scope: !2498)
!2538 = !DILocation(line: 453, column: 6, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 453, column: 6)
!2540 = !DILocation(line: 453, column: 6, scope: !2498)
!2541 = !DILocation(line: 454, column: 3, scope: !2539)
!2542 = !DILocation(line: 455, column: 9, scope: !2498)
!2543 = !DILocation(line: 455, column: 2, scope: !2498)
!2544 = !DILocation(line: 456, column: 1, scope: !2498)
!2545 = distinct !DISubprogram(name: "ipc_command", scope: !3, file: !3, line: 191, type: !2546, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !84, !72}
!2548 = !DILocalVariable(name: "scu", arg: 1, scope: !2545, file: !3, line: 191, type: !84)
!2549 = !DILocation(line: 191, column: 58, scope: !2545)
!2550 = !DILocalVariable(name: "cmd", arg: 2, scope: !2545, file: !3, line: 191, type: !72)
!2551 = !DILocation(line: 191, column: 67, scope: !2545)
!2552 = !DILocation(line: 193, column: 21, scope: !2545)
!2553 = !DILocation(line: 193, column: 26, scope: !2545)
!2554 = !DILocation(line: 193, column: 2, scope: !2545)
!2555 = !DILocation(line: 194, column: 9, scope: !2545)
!2556 = !DILocation(line: 194, column: 13, scope: !2545)
!2557 = !DILocation(line: 194, column: 24, scope: !2545)
!2558 = !DILocation(line: 194, column: 29, scope: !2545)
!2559 = !DILocation(line: 194, column: 2, scope: !2545)
!2560 = !DILocation(line: 195, column: 1, scope: !2545)
!2561 = distinct !DISubprogram(name: "intel_scu_ipc_check_status", scope: !3, file: !3, line: 265, type: !2562, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!82, !84}
!2564 = !DILocalVariable(name: "scu", arg: 1, scope: !2561, file: !3, line: 265, type: !84)
!2565 = !DILocation(line: 265, column: 65, scope: !2561)
!2566 = !DILocation(line: 267, column: 9, scope: !2561)
!2567 = !DILocation(line: 267, column: 14, scope: !2561)
!2568 = !DILocation(line: 267, column: 18, scope: !2561)
!2569 = !DILocation(line: 267, column: 47, scope: !2561)
!2570 = !DILocation(line: 267, column: 24, scope: !2561)
!2571 = !DILocation(line: 267, column: 64, scope: !2561)
!2572 = !DILocation(line: 267, column: 54, scope: !2561)
!2573 = !DILocation(line: 267, column: 2, scope: !2561)
!2574 = distinct !DISubprogram(name: "intel_scu_ipc_dev_command_with_size", scope: !3, file: !3, line: 475, type: !2575, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!82, !84, !82, !82, !1120, !199, !199, !83, !199}
!2577 = !DILocalVariable(name: "scu", arg: 1, scope: !2574, file: !3, line: 475, type: !84)
!2578 = !DILocation(line: 475, column: 67, scope: !2574)
!2579 = !DILocalVariable(name: "cmd", arg: 2, scope: !2574, file: !3, line: 475, type: !82)
!2580 = !DILocation(line: 475, column: 76, scope: !2574)
!2581 = !DILocalVariable(name: "sub", arg: 3, scope: !2574, file: !3, line: 476, type: !82)
!2582 = !DILocation(line: 476, column: 10, scope: !2574)
!2583 = !DILocalVariable(name: "in", arg: 4, scope: !2574, file: !3, line: 476, type: !1120)
!2584 = !DILocation(line: 476, column: 27, scope: !2574)
!2585 = !DILocalVariable(name: "inlen", arg: 5, scope: !2574, file: !3, line: 476, type: !199)
!2586 = !DILocation(line: 476, column: 38, scope: !2574)
!2587 = !DILocalVariable(name: "size", arg: 6, scope: !2574, file: !3, line: 477, type: !199)
!2588 = !DILocation(line: 477, column: 13, scope: !2574)
!2589 = !DILocalVariable(name: "out", arg: 7, scope: !2574, file: !3, line: 477, type: !83)
!2590 = !DILocation(line: 477, column: 25, scope: !2574)
!2591 = !DILocalVariable(name: "outlen", arg: 8, scope: !2574, file: !3, line: 477, type: !199)
!2592 = !DILocation(line: 477, column: 37, scope: !2574)
!2593 = !DILocalVariable(name: "outbuflen", scope: !2574, file: !3, line: 479, type: !199)
!2594 = !DILocation(line: 479, column: 9, scope: !2574)
!2595 = !DILocation(line: 479, column: 21, scope: !2574)
!2596 = !DILocalVariable(name: "inbuflen", scope: !2574, file: !3, line: 480, type: !199)
!2597 = !DILocation(line: 480, column: 9, scope: !2574)
!2598 = !DILocation(line: 480, column: 20, scope: !2574)
!2599 = !DILocalVariable(name: "cmdval", scope: !2574, file: !3, line: 481, type: !72)
!2600 = !DILocation(line: 481, column: 6, scope: !2574)
!2601 = !DILocalVariable(name: "inbuf", scope: !2574, file: !3, line: 481, type: !2602)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 128, elements: !350)
!2603 = !DILocation(line: 481, column: 14, scope: !2574)
!2604 = !DILocalVariable(name: "i", scope: !2574, file: !3, line: 482, type: !82)
!2605 = !DILocation(line: 482, column: 6, scope: !2574)
!2606 = !DILocalVariable(name: "err", scope: !2574, file: !3, line: 482, type: !82)
!2607 = !DILocation(line: 482, column: 9, scope: !2574)
!2608 = !DILocation(line: 484, column: 6, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 484, column: 6)
!2610 = !DILocation(line: 484, column: 15, scope: !2609)
!2611 = !DILocation(line: 484, column: 19, scope: !2609)
!2612 = !DILocation(line: 484, column: 22, scope: !2609)
!2613 = !DILocation(line: 484, column: 32, scope: !2609)
!2614 = !DILocation(line: 484, column: 6, scope: !2574)
!2615 = !DILocation(line: 485, column: 3, scope: !2609)
!2616 = !DILocation(line: 487, column: 2, scope: !2574)
!2617 = !DILocation(line: 488, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 488, column: 6)
!2619 = !DILocation(line: 488, column: 6, scope: !2574)
!2620 = !DILocation(line: 489, column: 9, scope: !2618)
!2621 = !DILocation(line: 489, column: 7, scope: !2618)
!2622 = !DILocation(line: 489, column: 3, scope: !2618)
!2623 = !DILocation(line: 490, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 490, column: 6)
!2625 = !DILocation(line: 490, column: 6, scope: !2574)
!2626 = !DILocation(line: 491, column: 3, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 490, column: 12)
!2628 = !DILocation(line: 492, column: 3, scope: !2627)
!2629 = !DILocation(line: 495, column: 2, scope: !2574)
!2630 = !DILocation(line: 495, column: 16, scope: !2574)
!2631 = !DILocation(line: 495, column: 20, scope: !2574)
!2632 = !DILocation(line: 496, column: 9, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 496, column: 2)
!2634 = !DILocation(line: 496, column: 7, scope: !2633)
!2635 = !DILocation(line: 496, column: 14, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 496, column: 2)
!2637 = !DILocation(line: 496, column: 18, scope: !2636)
!2638 = !DILocation(line: 496, column: 16, scope: !2636)
!2639 = !DILocation(line: 496, column: 2, scope: !2633)
!2640 = !DILocation(line: 497, column: 19, scope: !2636)
!2641 = !DILocation(line: 497, column: 30, scope: !2636)
!2642 = !DILocation(line: 497, column: 24, scope: !2636)
!2643 = !DILocation(line: 497, column: 38, scope: !2636)
!2644 = !DILocation(line: 497, column: 36, scope: !2636)
!2645 = !DILocation(line: 497, column: 3, scope: !2636)
!2646 = !DILocation(line: 496, column: 29, scope: !2636)
!2647 = !DILocation(line: 496, column: 2, scope: !2636)
!2648 = distinct !{!2648, !2639, !2649}
!2649 = !DILocation(line: 497, column: 39, scope: !2633)
!2650 = !DILocation(line: 499, column: 12, scope: !2574)
!2651 = !DILocation(line: 499, column: 17, scope: !2574)
!2652 = !DILocation(line: 499, column: 27, scope: !2574)
!2653 = !DILocation(line: 499, column: 31, scope: !2574)
!2654 = !DILocation(line: 499, column: 26, scope: !2574)
!2655 = !DILocation(line: 499, column: 24, scope: !2574)
!2656 = !DILocation(line: 499, column: 40, scope: !2574)
!2657 = !DILocation(line: 499, column: 38, scope: !2574)
!2658 = !DILocation(line: 499, column: 11, scope: !2574)
!2659 = !DILocation(line: 499, column: 9, scope: !2574)
!2660 = !DILocation(line: 500, column: 14, scope: !2574)
!2661 = !DILocation(line: 500, column: 19, scope: !2574)
!2662 = !DILocation(line: 500, column: 2, scope: !2574)
!2663 = !DILocation(line: 501, column: 35, scope: !2574)
!2664 = !DILocation(line: 501, column: 8, scope: !2574)
!2665 = !DILocation(line: 501, column: 6, scope: !2574)
!2666 = !DILocation(line: 503, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 503, column: 6)
!2668 = !DILocation(line: 503, column: 6, scope: !2574)
!2669 = !DILocalVariable(name: "outbuf", scope: !2670, file: !3, line: 504, type: !2602)
!2670 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 503, column: 12)
!2671 = !DILocation(line: 504, column: 7, scope: !2670)
!2672 = !DILocation(line: 506, column: 10, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 506, column: 3)
!2674 = !DILocation(line: 506, column: 8, scope: !2673)
!2675 = !DILocation(line: 506, column: 15, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 506, column: 3)
!2677 = !DILocation(line: 506, column: 19, scope: !2676)
!2678 = !DILocation(line: 506, column: 17, scope: !2676)
!2679 = !DILocation(line: 506, column: 3, scope: !2673)
!2680 = !DILocation(line: 507, column: 31, scope: !2676)
!2681 = !DILocation(line: 507, column: 40, scope: !2676)
!2682 = !DILocation(line: 507, column: 38, scope: !2676)
!2683 = !DILocation(line: 507, column: 16, scope: !2676)
!2684 = !DILocation(line: 507, column: 11, scope: !2676)
!2685 = !DILocation(line: 507, column: 4, scope: !2676)
!2686 = !DILocation(line: 507, column: 14, scope: !2676)
!2687 = !DILocation(line: 506, column: 31, scope: !2676)
!2688 = !DILocation(line: 506, column: 3, scope: !2676)
!2689 = distinct !{!2689, !2679, !2690}
!2690 = !DILocation(line: 507, column: 41, scope: !2673)
!2691 = !DILocation(line: 509, column: 10, scope: !2670)
!2692 = !DILocation(line: 509, column: 3, scope: !2670)
!2693 = !DILocation(line: 509, column: 23, scope: !2670)
!2694 = !DILocation(line: 510, column: 2, scope: !2670)
!2695 = !DILocation(line: 512, column: 2, scope: !2574)
!2696 = !DILocation(line: 513, column: 6, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 513, column: 6)
!2698 = !DILocation(line: 513, column: 6, scope: !2574)
!2699 = !DILocation(line: 514, column: 3, scope: !2697)
!2700 = !DILocation(line: 515, column: 9, scope: !2574)
!2701 = !DILocation(line: 515, column: 2, scope: !2574)
!2702 = !DILocation(line: 516, column: 1, scope: !2574)
!2703 = distinct !DISubprogram(name: "ipc_data_writel", scope: !3, file: !3, line: 203, type: !2704, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{null, !84, !72, !72}
!2706 = !DILocalVariable(name: "scu", arg: 1, scope: !2703, file: !3, line: 203, type: !84)
!2707 = !DILocation(line: 203, column: 62, scope: !2703)
!2708 = !DILocalVariable(name: "data", arg: 2, scope: !2703, file: !3, line: 203, type: !72)
!2709 = !DILocation(line: 203, column: 71, scope: !2703)
!2710 = !DILocalVariable(name: "offset", arg: 3, scope: !2703, file: !3, line: 203, type: !72)
!2711 = !DILocation(line: 203, column: 81, scope: !2703)
!2712 = !DILocation(line: 205, column: 9, scope: !2703)
!2713 = !DILocation(line: 205, column: 15, scope: !2703)
!2714 = !DILocation(line: 205, column: 20, scope: !2703)
!2715 = !DILocation(line: 205, column: 29, scope: !2703)
!2716 = !DILocation(line: 205, column: 50, scope: !2703)
!2717 = !DILocation(line: 205, column: 48, scope: !2703)
!2718 = !DILocation(line: 205, column: 2, scope: !2703)
!2719 = !DILocation(line: 206, column: 1, scope: !2703)
!2720 = distinct !DISubprogram(name: "ipc_data_readl", scope: !3, file: !3, line: 227, type: !2721, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!72, !84, !72}
!2723 = !DILocalVariable(name: "scu", arg: 1, scope: !2720, file: !3, line: 227, type: !84)
!2724 = !DILocation(line: 227, column: 60, scope: !2720)
!2725 = !DILocalVariable(name: "offset", arg: 2, scope: !2720, file: !3, line: 227, type: !72)
!2726 = !DILocation(line: 227, column: 69, scope: !2720)
!2727 = !DILocation(line: 229, column: 15, scope: !2720)
!2728 = !DILocation(line: 229, column: 20, scope: !2720)
!2729 = !DILocation(line: 229, column: 29, scope: !2720)
!2730 = !DILocation(line: 229, column: 49, scope: !2720)
!2731 = !DILocation(line: 229, column: 47, scope: !2720)
!2732 = !DILocation(line: 229, column: 9, scope: !2720)
!2733 = !DILocation(line: 229, column: 2, scope: !2720)
!2734 = distinct !DISubprogram(name: "__intel_scu_ipc_register", scope: !3, file: !3, line: 561, type: !2735, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!84, !1589, !2737, !1666}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2739)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_scu_ipc_data", file: !2740, line: 15, size: 576, elements: !2741)
!2740 = !DIFile(filename: "./arch/x86/include/asm/intel_scu_ipc.h", directory: "/home/lizy2001/genbc/linux")
!2741 = !{!2742, !2743}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2739, file: !2740, line: 16, baseType: !2025, size: 512)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2739, file: !2740, line: 17, baseType: !82, size: 32, offset: 512)
!2744 = !DILocalVariable(name: "parent", arg: 1, scope: !2734, file: !3, line: 561, type: !1589)
!2745 = !DILocation(line: 561, column: 41, scope: !2734)
!2746 = !DILocalVariable(name: "scu_data", arg: 2, scope: !2734, file: !3, line: 562, type: !2737)
!2747 = !DILocation(line: 562, column: 38, scope: !2734)
!2748 = !DILocalVariable(name: "owner", arg: 3, scope: !2734, file: !3, line: 563, type: !1666)
!2749 = !DILocation(line: 563, column: 20, scope: !2734)
!2750 = !DILocalVariable(name: "err", scope: !2734, file: !3, line: 565, type: !82)
!2751 = !DILocation(line: 565, column: 6, scope: !2734)
!2752 = !DILocalVariable(name: "scu", scope: !2734, file: !3, line: 566, type: !84)
!2753 = !DILocation(line: 566, column: 28, scope: !2734)
!2754 = !DILocalVariable(name: "ipc_base", scope: !2734, file: !3, line: 567, type: !83)
!2755 = !DILocation(line: 567, column: 16, scope: !2734)
!2756 = !DILocation(line: 569, column: 2, scope: !2734)
!2757 = !DILocation(line: 571, column: 6, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 571, column: 6)
!2759 = !DILocation(line: 571, column: 6, scope: !2734)
!2760 = !DILocation(line: 572, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 571, column: 14)
!2762 = !DILocation(line: 573, column: 3, scope: !2761)
!2763 = !DILocation(line: 576, column: 8, scope: !2734)
!2764 = !DILocation(line: 576, column: 6, scope: !2734)
!2765 = !DILocation(line: 577, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 577, column: 6)
!2767 = !DILocation(line: 577, column: 6, scope: !2734)
!2768 = !DILocation(line: 578, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 577, column: 12)
!2770 = !DILocation(line: 579, column: 3, scope: !2769)
!2771 = !DILocation(line: 582, column: 15, scope: !2734)
!2772 = !DILocation(line: 582, column: 2, scope: !2734)
!2773 = !DILocation(line: 582, column: 7, scope: !2734)
!2774 = !DILocation(line: 582, column: 13, scope: !2734)
!2775 = !DILocation(line: 583, column: 20, scope: !2734)
!2776 = !DILocation(line: 583, column: 2, scope: !2734)
!2777 = !DILocation(line: 583, column: 7, scope: !2734)
!2778 = !DILocation(line: 583, column: 11, scope: !2734)
!2779 = !DILocation(line: 583, column: 18, scope: !2734)
!2780 = !DILocation(line: 584, column: 2, scope: !2734)
!2781 = !DILocation(line: 584, column: 7, scope: !2734)
!2782 = !DILocation(line: 584, column: 11, scope: !2734)
!2783 = !DILocation(line: 584, column: 17, scope: !2734)
!2784 = !DILocation(line: 585, column: 2, scope: !2734)
!2785 = !DILocation(line: 585, column: 7, scope: !2734)
!2786 = !DILocation(line: 585, column: 11, scope: !2734)
!2787 = !DILocation(line: 585, column: 19, scope: !2734)
!2788 = !DILocation(line: 586, column: 16, scope: !2734)
!2789 = !DILocation(line: 586, column: 21, scope: !2734)
!2790 = !DILocation(line: 586, column: 2, scope: !2734)
!2791 = !DILocation(line: 588, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 588, column: 6)
!2793 = !DILocation(line: 588, column: 6, scope: !2734)
!2794 = !DILocation(line: 590, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 589, column: 23)
!2796 = !DILocation(line: 591, column: 3, scope: !2795)
!2797 = !DILocation(line: 594, column: 21, scope: !2734)
!2798 = !DILocation(line: 594, column: 31, scope: !2734)
!2799 = !DILocation(line: 594, column: 35, scope: !2734)
!2800 = !DILocation(line: 594, column: 57, scope: !2734)
!2801 = !DILocation(line: 594, column: 67, scope: !2734)
!2802 = !DILocation(line: 594, column: 42, scope: !2734)
!2803 = !DILocation(line: 594, column: 13, scope: !2734)
!2804 = !DILocation(line: 594, column: 11, scope: !2734)
!2805 = !DILocation(line: 595, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 595, column: 6)
!2807 = !DILocation(line: 595, column: 6, scope: !2734)
!2808 = !DILocation(line: 596, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 595, column: 17)
!2810 = !DILocation(line: 597, column: 3, scope: !2809)
!2811 = !DILocation(line: 600, column: 18, scope: !2734)
!2812 = !DILocation(line: 600, column: 2, scope: !2734)
!2813 = !DILocation(line: 600, column: 7, scope: !2734)
!2814 = !DILocation(line: 600, column: 16, scope: !2734)
!2815 = !DILocation(line: 601, column: 2, scope: !2734)
!2816 = !DILocation(line: 601, column: 7, scope: !2734)
!2817 = !DILocation(line: 601, column: 13, scope: !2734)
!2818 = !DILocation(line: 601, column: 23, scope: !2734)
!2819 = !DILocation(line: 602, column: 13, scope: !2734)
!2820 = !DILocation(line: 602, column: 23, scope: !2734)
!2821 = !DILocation(line: 602, column: 2, scope: !2734)
!2822 = !DILocation(line: 602, column: 7, scope: !2734)
!2823 = !DILocation(line: 602, column: 11, scope: !2734)
!2824 = !DILocation(line: 603, column: 2, scope: !2734)
!2825 = !DILocation(line: 605, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 605, column: 6)
!2827 = !DILocation(line: 605, column: 11, scope: !2826)
!2828 = !DILocation(line: 605, column: 15, scope: !2826)
!2829 = !DILocation(line: 605, column: 6, scope: !2734)
!2830 = !DILocation(line: 606, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 605, column: 20)
!2832 = !DILocation(line: 606, column: 26, scope: !2831)
!2833 = !DILocation(line: 606, column: 56, scope: !2831)
!2834 = !DILocation(line: 606, column: 9, scope: !2831)
!2835 = !DILocation(line: 606, column: 7, scope: !2831)
!2836 = !DILocation(line: 607, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 607, column: 7)
!2838 = !DILocation(line: 607, column: 7, scope: !2831)
!2839 = !DILocation(line: 608, column: 4, scope: !2837)
!2840 = !DILocation(line: 609, column: 2, scope: !2831)
!2841 = !DILocation(line: 615, column: 25, scope: !2734)
!2842 = !DILocation(line: 615, column: 30, scope: !2734)
!2843 = !DILocation(line: 615, column: 8, scope: !2734)
!2844 = !DILocation(line: 615, column: 6, scope: !2734)
!2845 = !DILocation(line: 616, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 616, column: 6)
!2847 = !DILocation(line: 616, column: 6, scope: !2734)
!2848 = !DILocation(line: 617, column: 15, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 616, column: 11)
!2850 = !DILocation(line: 617, column: 20, scope: !2849)
!2851 = !DILocation(line: 617, column: 3, scope: !2849)
!2852 = !DILocation(line: 618, column: 3, scope: !2849)
!2853 = !DILocation(line: 622, column: 11, scope: !2734)
!2854 = !DILocation(line: 622, column: 9, scope: !2734)
!2855 = !DILocation(line: 623, column: 2, scope: !2734)
!2856 = !DILocation(line: 625, column: 9, scope: !2734)
!2857 = !DILocation(line: 625, column: 2, scope: !2734)
!2858 = !DILabel(scope: !2734, name: "err_unmap", file: !3, line: 627)
!2859 = !DILocation(line: 627, column: 1, scope: !2734)
!2860 = !DILocation(line: 628, column: 10, scope: !2734)
!2861 = !DILocation(line: 628, column: 2, scope: !2734)
!2862 = !DILabel(scope: !2734, name: "err_release", file: !3, line: 629)
!2863 = !DILocation(line: 629, column: 1, scope: !2734)
!2864 = !DILocation(line: 630, column: 2, scope: !2734)
!2865 = !DILabel(scope: !2734, name: "err_free", file: !3, line: 631)
!2866 = !DILocation(line: 631, column: 1, scope: !2734)
!2867 = !DILocation(line: 632, column: 8, scope: !2734)
!2868 = !DILocation(line: 632, column: 2, scope: !2734)
!2869 = !DILabel(scope: !2734, name: "err_unlock", file: !3, line: 633)
!2870 = !DILocation(line: 633, column: 1, scope: !2734)
!2871 = !DILocation(line: 634, column: 2, scope: !2734)
!2872 = !DILocation(line: 636, column: 17, scope: !2734)
!2873 = !DILocation(line: 636, column: 9, scope: !2734)
!2874 = !DILocation(line: 636, column: 2, scope: !2734)
!2875 = !DILocation(line: 637, column: 1, scope: !2734)
!2876 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 662, type: !2877, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!83, !199, !69}
!2879 = !DILocalVariable(name: "s", arg: 1, scope: !2880, file: !56, line: 445, type: !1039)
!2880 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !2881, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!83, !1039, !69, !199}
!2883 = !DILocation(line: 445, column: 72, scope: !2880, inlinedAt: !2884)
!2884 = distinct !DILocation(line: 552, column: 10, scope: !2885, inlinedAt: !2888)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !56, line: 540, column: 34)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !56, line: 540, column: 6)
!2887 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !2877, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2888 = distinct !DILocation(line: 664, column: 9, scope: !2876)
!2889 = !DILocalVariable(name: "flags", arg: 2, scope: !2880, file: !56, line: 446, type: !69)
!2890 = !DILocation(line: 446, column: 9, scope: !2880, inlinedAt: !2884)
!2891 = !DILocalVariable(name: "size", arg: 3, scope: !2880, file: !56, line: 446, type: !199)
!2892 = !DILocation(line: 446, column: 23, scope: !2880, inlinedAt: !2884)
!2893 = !DILocalVariable(name: "ret", scope: !2880, file: !56, line: 448, type: !83)
!2894 = !DILocation(line: 448, column: 8, scope: !2880, inlinedAt: !2884)
!2895 = !DILocalVariable(name: "flags", arg: 1, scope: !2896, file: !56, line: 318, type: !69)
!2896 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !2897, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!55, !69}
!2899 = !DILocation(line: 318, column: 67, scope: !2896, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 553, column: 20, scope: !2885, inlinedAt: !2888)
!2901 = !DILocalVariable(name: "size", arg: 1, scope: !2902, file: !56, line: 346, type: !199)
!2902 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !2903, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!7, !199}
!2905 = !DILocation(line: 346, column: 58, scope: !2902, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 547, column: 11, scope: !2885, inlinedAt: !2888)
!2907 = !DILocalVariable(name: "size", arg: 1, scope: !2908, file: !56, line: 472, type: !199)
!2908 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !2909, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!83, !199, !69, !7}
!2911 = !DILocation(line: 472, column: 28, scope: !2908, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 481, column: 9, scope: !2913, inlinedAt: !2914)
!2913 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !2877, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!2914 = distinct !DILocation(line: 545, column: 11, scope: !2915, inlinedAt: !2888)
!2915 = distinct !DILexicalBlock(scope: !2885, file: !56, line: 544, column: 7)
!2916 = !DILocalVariable(name: "flags", arg: 2, scope: !2908, file: !56, line: 472, type: !69)
!2917 = !DILocation(line: 472, column: 40, scope: !2908, inlinedAt: !2912)
!2918 = !DILocalVariable(name: "order", arg: 3, scope: !2908, file: !56, line: 472, type: !7)
!2919 = !DILocation(line: 472, column: 60, scope: !2908, inlinedAt: !2912)
!2920 = !DILocalVariable(name: "size", arg: 1, scope: !2913, file: !56, line: 478, type: !199)
!2921 = !DILocation(line: 478, column: 51, scope: !2913, inlinedAt: !2914)
!2922 = !DILocalVariable(name: "flags", arg: 2, scope: !2913, file: !56, line: 478, type: !69)
!2923 = !DILocation(line: 478, column: 63, scope: !2913, inlinedAt: !2914)
!2924 = !DILocalVariable(name: "order", scope: !2913, file: !56, line: 480, type: !7)
!2925 = !DILocation(line: 480, column: 15, scope: !2913, inlinedAt: !2914)
!2926 = !DILocalVariable(name: "size", arg: 1, scope: !2887, file: !56, line: 538, type: !199)
!2927 = !DILocation(line: 538, column: 45, scope: !2887, inlinedAt: !2888)
!2928 = !DILocalVariable(name: "flags", arg: 2, scope: !2887, file: !56, line: 538, type: !69)
!2929 = !DILocation(line: 538, column: 57, scope: !2887, inlinedAt: !2888)
!2930 = !DILocalVariable(name: "index", scope: !2885, file: !56, line: 542, type: !7)
!2931 = !DILocation(line: 542, column: 16, scope: !2885, inlinedAt: !2888)
!2932 = !DILocalVariable(name: "size", arg: 1, scope: !2876, file: !56, line: 662, type: !199)
!2933 = !DILocation(line: 662, column: 36, scope: !2876)
!2934 = !DILocalVariable(name: "flags", arg: 2, scope: !2876, file: !56, line: 662, type: !69)
!2935 = !DILocation(line: 662, column: 48, scope: !2876)
!2936 = !DILocation(line: 664, column: 17, scope: !2876)
!2937 = !DILocation(line: 664, column: 23, scope: !2876)
!2938 = !DILocation(line: 664, column: 29, scope: !2876)
!2939 = !DILocation(line: 540, column: 27, scope: !2886, inlinedAt: !2888)
!2940 = !DILocation(line: 540, column: 6, scope: !2886, inlinedAt: !2888)
!2941 = !DILocation(line: 540, column: 6, scope: !2887, inlinedAt: !2888)
!2942 = !DILocation(line: 544, column: 7, scope: !2915, inlinedAt: !2888)
!2943 = !DILocation(line: 544, column: 12, scope: !2915, inlinedAt: !2888)
!2944 = !DILocation(line: 544, column: 7, scope: !2885, inlinedAt: !2888)
!2945 = !DILocation(line: 545, column: 25, scope: !2915, inlinedAt: !2888)
!2946 = !DILocation(line: 545, column: 31, scope: !2915, inlinedAt: !2888)
!2947 = !DILocation(line: 480, column: 33, scope: !2913, inlinedAt: !2914)
!2948 = !DILocation(line: 480, column: 23, scope: !2913, inlinedAt: !2914)
!2949 = !DILocation(line: 481, column: 29, scope: !2913, inlinedAt: !2914)
!2950 = !DILocation(line: 481, column: 35, scope: !2913, inlinedAt: !2914)
!2951 = !DILocation(line: 481, column: 42, scope: !2913, inlinedAt: !2914)
!2952 = !DILocation(line: 474, column: 23, scope: !2908, inlinedAt: !2912)
!2953 = !DILocation(line: 474, column: 29, scope: !2908, inlinedAt: !2912)
!2954 = !DILocation(line: 474, column: 36, scope: !2908, inlinedAt: !2912)
!2955 = !DILocation(line: 474, column: 9, scope: !2908, inlinedAt: !2912)
!2956 = !DILocation(line: 545, column: 4, scope: !2915, inlinedAt: !2888)
!2957 = !DILocation(line: 547, column: 25, scope: !2885, inlinedAt: !2888)
!2958 = !DILocation(line: 348, column: 7, scope: !2959, inlinedAt: !2906)
!2959 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 348, column: 6)
!2960 = !DILocation(line: 348, column: 6, scope: !2902, inlinedAt: !2906)
!2961 = !DILocation(line: 349, column: 3, scope: !2959, inlinedAt: !2906)
!2962 = !DILocation(line: 351, column: 6, scope: !2963, inlinedAt: !2906)
!2963 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 351, column: 6)
!2964 = !DILocation(line: 351, column: 11, scope: !2963, inlinedAt: !2906)
!2965 = !DILocation(line: 351, column: 6, scope: !2902, inlinedAt: !2906)
!2966 = !DILocation(line: 352, column: 3, scope: !2963, inlinedAt: !2906)
!2967 = !DILocation(line: 354, column: 32, scope: !2968, inlinedAt: !2906)
!2968 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 354, column: 6)
!2969 = !DILocation(line: 354, column: 37, scope: !2968, inlinedAt: !2906)
!2970 = !DILocation(line: 354, column: 42, scope: !2968, inlinedAt: !2906)
!2971 = !DILocation(line: 354, column: 45, scope: !2968, inlinedAt: !2906)
!2972 = !DILocation(line: 354, column: 50, scope: !2968, inlinedAt: !2906)
!2973 = !DILocation(line: 354, column: 6, scope: !2902, inlinedAt: !2906)
!2974 = !DILocation(line: 355, column: 3, scope: !2968, inlinedAt: !2906)
!2975 = !DILocation(line: 356, column: 32, scope: !2976, inlinedAt: !2906)
!2976 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 356, column: 6)
!2977 = !DILocation(line: 356, column: 37, scope: !2976, inlinedAt: !2906)
!2978 = !DILocation(line: 356, column: 43, scope: !2976, inlinedAt: !2906)
!2979 = !DILocation(line: 356, column: 46, scope: !2976, inlinedAt: !2906)
!2980 = !DILocation(line: 356, column: 51, scope: !2976, inlinedAt: !2906)
!2981 = !DILocation(line: 356, column: 6, scope: !2902, inlinedAt: !2906)
!2982 = !DILocation(line: 357, column: 3, scope: !2976, inlinedAt: !2906)
!2983 = !DILocation(line: 358, column: 6, scope: !2984, inlinedAt: !2906)
!2984 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 358, column: 6)
!2985 = !DILocation(line: 358, column: 11, scope: !2984, inlinedAt: !2906)
!2986 = !DILocation(line: 358, column: 6, scope: !2902, inlinedAt: !2906)
!2987 = !DILocation(line: 358, column: 26, scope: !2984, inlinedAt: !2906)
!2988 = !DILocation(line: 359, column: 6, scope: !2989, inlinedAt: !2906)
!2989 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 359, column: 6)
!2990 = !DILocation(line: 359, column: 11, scope: !2989, inlinedAt: !2906)
!2991 = !DILocation(line: 359, column: 6, scope: !2902, inlinedAt: !2906)
!2992 = !DILocation(line: 359, column: 26, scope: !2989, inlinedAt: !2906)
!2993 = !DILocation(line: 360, column: 6, scope: !2994, inlinedAt: !2906)
!2994 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 360, column: 6)
!2995 = !DILocation(line: 360, column: 11, scope: !2994, inlinedAt: !2906)
!2996 = !DILocation(line: 360, column: 6, scope: !2902, inlinedAt: !2906)
!2997 = !DILocation(line: 360, column: 26, scope: !2994, inlinedAt: !2906)
!2998 = !DILocation(line: 361, column: 6, scope: !2999, inlinedAt: !2906)
!2999 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 361, column: 6)
!3000 = !DILocation(line: 361, column: 11, scope: !2999, inlinedAt: !2906)
!3001 = !DILocation(line: 361, column: 6, scope: !2902, inlinedAt: !2906)
!3002 = !DILocation(line: 361, column: 26, scope: !2999, inlinedAt: !2906)
!3003 = !DILocation(line: 362, column: 6, scope: !3004, inlinedAt: !2906)
!3004 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 362, column: 6)
!3005 = !DILocation(line: 362, column: 11, scope: !3004, inlinedAt: !2906)
!3006 = !DILocation(line: 362, column: 6, scope: !2902, inlinedAt: !2906)
!3007 = !DILocation(line: 362, column: 26, scope: !3004, inlinedAt: !2906)
!3008 = !DILocation(line: 363, column: 6, scope: !3009, inlinedAt: !2906)
!3009 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 363, column: 6)
!3010 = !DILocation(line: 363, column: 11, scope: !3009, inlinedAt: !2906)
!3011 = !DILocation(line: 363, column: 6, scope: !2902, inlinedAt: !2906)
!3012 = !DILocation(line: 363, column: 26, scope: !3009, inlinedAt: !2906)
!3013 = !DILocation(line: 364, column: 6, scope: !3014, inlinedAt: !2906)
!3014 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 364, column: 6)
!3015 = !DILocation(line: 364, column: 11, scope: !3014, inlinedAt: !2906)
!3016 = !DILocation(line: 364, column: 6, scope: !2902, inlinedAt: !2906)
!3017 = !DILocation(line: 364, column: 26, scope: !3014, inlinedAt: !2906)
!3018 = !DILocation(line: 365, column: 6, scope: !3019, inlinedAt: !2906)
!3019 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 365, column: 6)
!3020 = !DILocation(line: 365, column: 11, scope: !3019, inlinedAt: !2906)
!3021 = !DILocation(line: 365, column: 6, scope: !2902, inlinedAt: !2906)
!3022 = !DILocation(line: 365, column: 26, scope: !3019, inlinedAt: !2906)
!3023 = !DILocation(line: 366, column: 6, scope: !3024, inlinedAt: !2906)
!3024 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 366, column: 6)
!3025 = !DILocation(line: 366, column: 11, scope: !3024, inlinedAt: !2906)
!3026 = !DILocation(line: 366, column: 6, scope: !2902, inlinedAt: !2906)
!3027 = !DILocation(line: 366, column: 26, scope: !3024, inlinedAt: !2906)
!3028 = !DILocation(line: 367, column: 6, scope: !3029, inlinedAt: !2906)
!3029 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 367, column: 6)
!3030 = !DILocation(line: 367, column: 11, scope: !3029, inlinedAt: !2906)
!3031 = !DILocation(line: 367, column: 6, scope: !2902, inlinedAt: !2906)
!3032 = !DILocation(line: 367, column: 26, scope: !3029, inlinedAt: !2906)
!3033 = !DILocation(line: 368, column: 6, scope: !3034, inlinedAt: !2906)
!3034 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 368, column: 6)
!3035 = !DILocation(line: 368, column: 11, scope: !3034, inlinedAt: !2906)
!3036 = !DILocation(line: 368, column: 6, scope: !2902, inlinedAt: !2906)
!3037 = !DILocation(line: 368, column: 26, scope: !3034, inlinedAt: !2906)
!3038 = !DILocation(line: 369, column: 6, scope: !3039, inlinedAt: !2906)
!3039 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 369, column: 6)
!3040 = !DILocation(line: 369, column: 11, scope: !3039, inlinedAt: !2906)
!3041 = !DILocation(line: 369, column: 6, scope: !2902, inlinedAt: !2906)
!3042 = !DILocation(line: 369, column: 26, scope: !3039, inlinedAt: !2906)
!3043 = !DILocation(line: 370, column: 6, scope: !3044, inlinedAt: !2906)
!3044 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 370, column: 6)
!3045 = !DILocation(line: 370, column: 11, scope: !3044, inlinedAt: !2906)
!3046 = !DILocation(line: 370, column: 6, scope: !2902, inlinedAt: !2906)
!3047 = !DILocation(line: 370, column: 26, scope: !3044, inlinedAt: !2906)
!3048 = !DILocation(line: 371, column: 6, scope: !3049, inlinedAt: !2906)
!3049 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 371, column: 6)
!3050 = !DILocation(line: 371, column: 11, scope: !3049, inlinedAt: !2906)
!3051 = !DILocation(line: 371, column: 6, scope: !2902, inlinedAt: !2906)
!3052 = !DILocation(line: 371, column: 26, scope: !3049, inlinedAt: !2906)
!3053 = !DILocation(line: 372, column: 6, scope: !3054, inlinedAt: !2906)
!3054 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 372, column: 6)
!3055 = !DILocation(line: 372, column: 11, scope: !3054, inlinedAt: !2906)
!3056 = !DILocation(line: 372, column: 6, scope: !2902, inlinedAt: !2906)
!3057 = !DILocation(line: 372, column: 26, scope: !3054, inlinedAt: !2906)
!3058 = !DILocation(line: 373, column: 6, scope: !3059, inlinedAt: !2906)
!3059 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 373, column: 6)
!3060 = !DILocation(line: 373, column: 11, scope: !3059, inlinedAt: !2906)
!3061 = !DILocation(line: 373, column: 6, scope: !2902, inlinedAt: !2906)
!3062 = !DILocation(line: 373, column: 26, scope: !3059, inlinedAt: !2906)
!3063 = !DILocation(line: 374, column: 6, scope: !3064, inlinedAt: !2906)
!3064 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 374, column: 6)
!3065 = !DILocation(line: 374, column: 11, scope: !3064, inlinedAt: !2906)
!3066 = !DILocation(line: 374, column: 6, scope: !2902, inlinedAt: !2906)
!3067 = !DILocation(line: 374, column: 26, scope: !3064, inlinedAt: !2906)
!3068 = !DILocation(line: 375, column: 6, scope: !3069, inlinedAt: !2906)
!3069 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 375, column: 6)
!3070 = !DILocation(line: 375, column: 11, scope: !3069, inlinedAt: !2906)
!3071 = !DILocation(line: 375, column: 6, scope: !2902, inlinedAt: !2906)
!3072 = !DILocation(line: 375, column: 27, scope: !3069, inlinedAt: !2906)
!3073 = !DILocation(line: 376, column: 6, scope: !3074, inlinedAt: !2906)
!3074 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 376, column: 6)
!3075 = !DILocation(line: 376, column: 11, scope: !3074, inlinedAt: !2906)
!3076 = !DILocation(line: 376, column: 6, scope: !2902, inlinedAt: !2906)
!3077 = !DILocation(line: 376, column: 32, scope: !3074, inlinedAt: !2906)
!3078 = !DILocation(line: 377, column: 6, scope: !3079, inlinedAt: !2906)
!3079 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 377, column: 6)
!3080 = !DILocation(line: 377, column: 11, scope: !3079, inlinedAt: !2906)
!3081 = !DILocation(line: 377, column: 6, scope: !2902, inlinedAt: !2906)
!3082 = !DILocation(line: 377, column: 32, scope: !3079, inlinedAt: !2906)
!3083 = !DILocation(line: 378, column: 6, scope: !3084, inlinedAt: !2906)
!3084 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 378, column: 6)
!3085 = !DILocation(line: 378, column: 11, scope: !3084, inlinedAt: !2906)
!3086 = !DILocation(line: 378, column: 6, scope: !2902, inlinedAt: !2906)
!3087 = !DILocation(line: 378, column: 32, scope: !3084, inlinedAt: !2906)
!3088 = !DILocation(line: 379, column: 6, scope: !3089, inlinedAt: !2906)
!3089 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 379, column: 6)
!3090 = !DILocation(line: 379, column: 11, scope: !3089, inlinedAt: !2906)
!3091 = !DILocation(line: 379, column: 6, scope: !2902, inlinedAt: !2906)
!3092 = !DILocation(line: 379, column: 33, scope: !3089, inlinedAt: !2906)
!3093 = !DILocation(line: 380, column: 6, scope: !3094, inlinedAt: !2906)
!3094 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 380, column: 6)
!3095 = !DILocation(line: 380, column: 11, scope: !3094, inlinedAt: !2906)
!3096 = !DILocation(line: 380, column: 6, scope: !2902, inlinedAt: !2906)
!3097 = !DILocation(line: 380, column: 33, scope: !3094, inlinedAt: !2906)
!3098 = !DILocation(line: 381, column: 6, scope: !3099, inlinedAt: !2906)
!3099 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 381, column: 6)
!3100 = !DILocation(line: 381, column: 11, scope: !3099, inlinedAt: !2906)
!3101 = !DILocation(line: 381, column: 6, scope: !2902, inlinedAt: !2906)
!3102 = !DILocation(line: 381, column: 33, scope: !3099, inlinedAt: !2906)
!3103 = !DILocation(line: 382, column: 2, scope: !3104, inlinedAt: !2906)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !56, line: 382, column: 2)
!3105 = distinct !DILexicalBlock(scope: !2902, file: !56, line: 382, column: 2)
!3106 = !{i32 -2143375423, i32 -2143375394, i32 -2143375348, i32 -2143375290, i32 -2143375236, i32 -2143375182, i32 -2143375127, i32 -2143375096}
!3107 = !DILocation(line: 382, column: 2, scope: !3108, inlinedAt: !2906)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !56, line: 382, column: 2)
!3109 = distinct !DILexicalBlock(scope: !3105, file: !56, line: 382, column: 2)
!3110 = !{i32 -2143374653, i32 -2143374646, i32 -2143374592, i32 -2143374561, i32 -2143374531}
!3111 = !DILocation(line: 382, column: 2, scope: !3109, inlinedAt: !2906)
!3112 = !DILocation(line: 386, column: 1, scope: !2902, inlinedAt: !2906)
!3113 = !DILocation(line: 547, column: 9, scope: !2885, inlinedAt: !2888)
!3114 = !DILocation(line: 549, column: 8, scope: !3115, inlinedAt: !2888)
!3115 = distinct !DILexicalBlock(scope: !2885, file: !56, line: 549, column: 7)
!3116 = !DILocation(line: 549, column: 7, scope: !2885, inlinedAt: !2888)
!3117 = !DILocation(line: 550, column: 4, scope: !3115, inlinedAt: !2888)
!3118 = !DILocation(line: 553, column: 33, scope: !2885, inlinedAt: !2888)
!3119 = !DILocation(line: 325, column: 6, scope: !3120, inlinedAt: !2900)
!3120 = distinct !DILexicalBlock(scope: !2896, file: !56, line: 325, column: 6)
!3121 = !DILocation(line: 325, column: 6, scope: !2896, inlinedAt: !2900)
!3122 = !DILocation(line: 326, column: 3, scope: !3120, inlinedAt: !2900)
!3123 = !DILocation(line: 332, column: 9, scope: !2896, inlinedAt: !2900)
!3124 = !DILocation(line: 332, column: 15, scope: !2896, inlinedAt: !2900)
!3125 = !DILocation(line: 332, column: 2, scope: !2896, inlinedAt: !2900)
!3126 = !DILocation(line: 336, column: 1, scope: !2896, inlinedAt: !2900)
!3127 = !DILocation(line: 553, column: 5, scope: !2885, inlinedAt: !2888)
!3128 = !DILocation(line: 553, column: 41, scope: !2885, inlinedAt: !2888)
!3129 = !DILocation(line: 554, column: 5, scope: !2885, inlinedAt: !2888)
!3130 = !DILocation(line: 554, column: 12, scope: !2885, inlinedAt: !2888)
!3131 = !DILocation(line: 448, column: 31, scope: !2880, inlinedAt: !2884)
!3132 = !DILocation(line: 448, column: 34, scope: !2880, inlinedAt: !2884)
!3133 = !DILocation(line: 448, column: 14, scope: !2880, inlinedAt: !2884)
!3134 = !DILocation(line: 450, column: 22, scope: !2880, inlinedAt: !2884)
!3135 = !DILocation(line: 450, column: 25, scope: !2880, inlinedAt: !2884)
!3136 = !DILocation(line: 450, column: 30, scope: !2880, inlinedAt: !2884)
!3137 = !DILocation(line: 450, column: 36, scope: !2880, inlinedAt: !2884)
!3138 = !DILocation(line: 450, column: 8, scope: !2880, inlinedAt: !2884)
!3139 = !DILocation(line: 450, column: 6, scope: !2880, inlinedAt: !2884)
!3140 = !DILocation(line: 451, column: 9, scope: !2880, inlinedAt: !2884)
!3141 = !DILocation(line: 552, column: 3, scope: !2885, inlinedAt: !2888)
!3142 = !DILocation(line: 557, column: 19, scope: !2887, inlinedAt: !2888)
!3143 = !DILocation(line: 557, column: 25, scope: !2887, inlinedAt: !2888)
!3144 = !DILocation(line: 557, column: 9, scope: !2887, inlinedAt: !2888)
!3145 = !DILocation(line: 557, column: 2, scope: !2887, inlinedAt: !2888)
!3146 = !DILocation(line: 558, column: 1, scope: !2887, inlinedAt: !2888)
!3147 = !DILocation(line: 664, column: 2, scope: !2876)
!3148 = distinct !DISubprogram(name: "intel_scu_ipc_release", scope: !3, file: !3, line: 537, type: !1612, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3149 = !DILocalVariable(name: "dev", arg: 1, scope: !3148, file: !3, line: 537, type: !1589)
!3150 = !DILocation(line: 537, column: 50, scope: !3148)
!3151 = !DILocalVariable(name: "scu", scope: !3148, file: !3, line: 539, type: !84)
!3152 = !DILocation(line: 539, column: 28, scope: !3148)
!3153 = !DILocalVariable(name: "__mptr", scope: !3154, file: !3, line: 541, type: !83)
!3154 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 541, column: 8)
!3155 = !DILocation(line: 541, column: 8, scope: !3154)
!3156 = !DILocation(line: 541, column: 8, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 541, column: 8)
!3158 = !DILocation(line: 541, column: 6, scope: !3148)
!3159 = !DILocation(line: 542, column: 6, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 542, column: 6)
!3161 = !DILocation(line: 542, column: 11, scope: !3160)
!3162 = !DILocation(line: 542, column: 15, scope: !3160)
!3163 = !DILocation(line: 542, column: 6, scope: !3148)
!3164 = !DILocation(line: 543, column: 12, scope: !3160)
!3165 = !DILocation(line: 543, column: 17, scope: !3160)
!3166 = !DILocation(line: 543, column: 22, scope: !3160)
!3167 = !DILocation(line: 543, column: 3, scope: !3160)
!3168 = !DILocation(line: 544, column: 10, scope: !3148)
!3169 = !DILocation(line: 544, column: 15, scope: !3148)
!3170 = !DILocation(line: 544, column: 2, scope: !3148)
!3171 = !DILocation(line: 545, column: 2, scope: !3148)
!3172 = !DILocation(line: 546, column: 8, scope: !3148)
!3173 = !DILocation(line: 546, column: 2, scope: !3148)
!3174 = !DILocation(line: 547, column: 1, scope: !3148)
!3175 = distinct !DISubprogram(name: "resource_size", scope: !2026, file: !2026, line: 210, type: !3176, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!2029, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2025)
!3180 = !DILocalVariable(name: "res", arg: 1, scope: !3175, file: !2026, line: 210, type: !3178)
!3181 = !DILocation(line: 210, column: 68, scope: !3175)
!3182 = !DILocation(line: 212, column: 9, scope: !3175)
!3183 = !DILocation(line: 212, column: 14, scope: !3175)
!3184 = !DILocation(line: 212, column: 20, scope: !3175)
!3185 = !DILocation(line: 212, column: 25, scope: !3175)
!3186 = !DILocation(line: 212, column: 18, scope: !3175)
!3187 = !DILocation(line: 212, column: 31, scope: !3175)
!3188 = !DILocation(line: 212, column: 2, scope: !3175)
!3189 = !DILocalVariable(name: "x", arg: 1, scope: !2058, file: !726, line: 85, type: !724)
!3190 = !DILocation(line: 85, column: 57, scope: !2058)
!3191 = !DILocation(line: 87, column: 2, scope: !2058)
!3192 = !DILocation(line: 87, column: 5, scope: !2058)
!3193 = !DILocation(line: 87, column: 10, scope: !2058)
!3194 = !DILocation(line: 88, column: 2, scope: !2058)
!3195 = !DILocation(line: 88, column: 2, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !2058, file: !726, line: 88, column: 2)
!3197 = !DILocation(line: 89, column: 1, scope: !2058)
!3198 = distinct !DISubprogram(name: "request_irq", scope: !3199, file: !3199, line: 157, type: !3200, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3199 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!82, !7, !3202, !202, !95, !83}
!3202 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !3199, line: 92, baseType: !3203)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!3206, !82, !83}
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !63, line: 17, baseType: !62)
!3207 = !DILocalVariable(name: "irq", arg: 1, scope: !3198, file: !3199, line: 157, type: !7)
!3208 = !DILocation(line: 157, column: 26, scope: !3198)
!3209 = !DILocalVariable(name: "handler", arg: 2, scope: !3198, file: !3199, line: 157, type: !3202)
!3210 = !DILocation(line: 157, column: 45, scope: !3198)
!3211 = !DILocalVariable(name: "flags", arg: 3, scope: !3198, file: !3199, line: 157, type: !202)
!3212 = !DILocation(line: 157, column: 68, scope: !3198)
!3213 = !DILocalVariable(name: "name", arg: 4, scope: !3198, file: !3199, line: 158, type: !95)
!3214 = !DILocation(line: 158, column: 18, scope: !3198)
!3215 = !DILocalVariable(name: "dev", arg: 5, scope: !3198, file: !3199, line: 158, type: !83)
!3216 = !DILocation(line: 158, column: 30, scope: !3198)
!3217 = !DILocation(line: 160, column: 30, scope: !3198)
!3218 = !DILocation(line: 160, column: 35, scope: !3198)
!3219 = !DILocation(line: 160, column: 50, scope: !3198)
!3220 = !DILocation(line: 160, column: 57, scope: !3198)
!3221 = !DILocation(line: 160, column: 63, scope: !3198)
!3222 = !DILocation(line: 160, column: 9, scope: !3198)
!3223 = !DILocation(line: 160, column: 2, scope: !3198)
!3224 = distinct !DISubprogram(name: "ioc", scope: !3, file: !3, line: 526, type: !3204, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3225 = !DILocalVariable(name: "irq", arg: 1, scope: !3224, file: !3, line: 526, type: !82)
!3226 = !DILocation(line: 526, column: 28, scope: !3224)
!3227 = !DILocalVariable(name: "dev_id", arg: 2, scope: !3224, file: !3, line: 526, type: !83)
!3228 = !DILocation(line: 526, column: 39, scope: !3224)
!3229 = !DILocalVariable(name: "scu", scope: !3224, file: !3, line: 528, type: !84)
!3230 = !DILocation(line: 528, column: 28, scope: !3224)
!3231 = !DILocation(line: 528, column: 34, scope: !3224)
!3232 = !DILocalVariable(name: "status", scope: !3224, file: !3, line: 529, type: !82)
!3233 = !DILocation(line: 529, column: 6, scope: !3224)
!3234 = !DILocation(line: 529, column: 31, scope: !3224)
!3235 = !DILocation(line: 529, column: 15, scope: !3224)
!3236 = !DILocation(line: 531, column: 9, scope: !3224)
!3237 = !DILocation(line: 531, column: 16, scope: !3224)
!3238 = !DILocation(line: 531, column: 34, scope: !3224)
!3239 = !DILocation(line: 531, column: 39, scope: !3224)
!3240 = !DILocation(line: 531, column: 48, scope: !3224)
!3241 = !DILocation(line: 531, column: 2, scope: !3224)
!3242 = !DILocation(line: 532, column: 12, scope: !3224)
!3243 = !DILocation(line: 532, column: 17, scope: !3224)
!3244 = !DILocation(line: 532, column: 2, scope: !3224)
!3245 = !DILocation(line: 534, column: 2, scope: !3224)
!3246 = distinct !DISubprogram(name: "ERR_PTR", scope: !3247, file: !3247, line: 24, type: !3248, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3247 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!83, !81}
!3250 = !DILocalVariable(name: "error", arg: 1, scope: !3246, file: !3247, line: 24, type: !81)
!3251 = !DILocation(line: 24, column: 48, scope: !3246)
!3252 = !DILocation(line: 26, column: 18, scope: !3246)
!3253 = !DILocation(line: 26, column: 9, scope: !3246)
!3254 = !DILocation(line: 26, column: 2, scope: !3246)
!3255 = distinct !DISubprogram(name: "intel_scu_ipc_unregister", scope: !3, file: !3, line: 647, type: !2106, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3256 = !DILocalVariable(name: "scu", arg: 1, scope: !3255, file: !3, line: 647, type: !84)
!3257 = !DILocation(line: 647, column: 57, scope: !3255)
!3258 = !DILocation(line: 649, column: 2, scope: !3255)
!3259 = !DILocalVariable(name: "__ret_warn_on", scope: !3260, file: !3, line: 650, type: !82)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 650, column: 7)
!3261 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 650, column: 6)
!3262 = !DILocation(line: 650, column: 7, scope: !3260)
!3263 = !DILocation(line: 650, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 650, column: 7)
!3265 = !DILocation(line: 650, column: 7, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 650, column: 7)
!3267 = !DILocation(line: 650, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 650, column: 7)
!3269 = !DILocation(line: 650, column: 7, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 650, column: 7)
!3271 = !{i32 -2143355532, i32 -2143355503, i32 -2143355457, i32 -2143355399, i32 -2143355345, i32 -2143355291, i32 -2143355236, i32 -2143355205}
!3272 = !DILocation(line: 650, column: 7, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 650, column: 7)
!3274 = !{i32 -2143354787, i32 -2143354780, i32 -2143354728, i32 -2143354697, i32 -2143354667}
!3275 = !DILocation(line: 650, column: 7, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 650, column: 7)
!3277 = !DILocation(line: 650, column: 7, scope: !3261)
!3278 = !DILocation(line: 650, column: 6, scope: !3255)
!3279 = !DILocation(line: 651, column: 10, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 650, column: 25)
!3281 = !DILocation(line: 652, column: 22, scope: !3280)
!3282 = !DILocation(line: 652, column: 27, scope: !3280)
!3283 = !DILocation(line: 652, column: 3, scope: !3280)
!3284 = !DILocation(line: 653, column: 2, scope: !3280)
!3285 = !DILocation(line: 654, column: 2, scope: !3255)
!3286 = !DILocation(line: 655, column: 1, scope: !3255)
!3287 = distinct !DISubprogram(name: "__devm_intel_scu_ipc_register", scope: !3, file: !3, line: 678, type: !2735, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3288 = !DILocalVariable(name: "parent", arg: 1, scope: !3287, file: !3, line: 678, type: !1589)
!3289 = !DILocation(line: 678, column: 46, scope: !3287)
!3290 = !DILocalVariable(name: "scu_data", arg: 2, scope: !3287, file: !3, line: 679, type: !2737)
!3291 = !DILocation(line: 679, column: 43, scope: !3287)
!3292 = !DILocalVariable(name: "owner", arg: 3, scope: !3287, file: !3, line: 680, type: !1666)
!3293 = !DILocation(line: 680, column: 25, scope: !3287)
!3294 = !DILocalVariable(name: "dr", scope: !3287, file: !3, line: 682, type: !2134)
!3295 = !DILocation(line: 682, column: 31, scope: !3287)
!3296 = !DILocalVariable(name: "scu", scope: !3287, file: !3, line: 683, type: !84)
!3297 = !DILocation(line: 683, column: 28, scope: !3287)
!3298 = !DILocation(line: 685, column: 7, scope: !3287)
!3299 = !DILocation(line: 685, column: 5, scope: !3287)
!3300 = !DILocation(line: 686, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 686, column: 6)
!3302 = !DILocation(line: 686, column: 6, scope: !3287)
!3303 = !DILocation(line: 687, column: 3, scope: !3301)
!3304 = !DILocation(line: 689, column: 33, scope: !3287)
!3305 = !DILocation(line: 689, column: 41, scope: !3287)
!3306 = !DILocation(line: 689, column: 51, scope: !3287)
!3307 = !DILocation(line: 689, column: 8, scope: !3287)
!3308 = !DILocation(line: 689, column: 6, scope: !3287)
!3309 = !DILocation(line: 690, column: 13, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 690, column: 6)
!3311 = !DILocation(line: 690, column: 6, scope: !3310)
!3312 = !DILocation(line: 690, column: 6, scope: !3287)
!3313 = !DILocation(line: 691, column: 15, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 690, column: 19)
!3315 = !DILocation(line: 691, column: 3, scope: !3314)
!3316 = !DILocation(line: 692, column: 10, scope: !3314)
!3317 = !DILocation(line: 692, column: 3, scope: !3314)
!3318 = !DILocation(line: 695, column: 12, scope: !3287)
!3319 = !DILocation(line: 695, column: 2, scope: !3287)
!3320 = !DILocation(line: 695, column: 6, scope: !3287)
!3321 = !DILocation(line: 695, column: 10, scope: !3287)
!3322 = !DILocation(line: 696, column: 13, scope: !3287)
!3323 = !DILocation(line: 696, column: 21, scope: !3287)
!3324 = !DILocation(line: 696, column: 2, scope: !3287)
!3325 = !DILocation(line: 698, column: 9, scope: !3287)
!3326 = !DILocation(line: 698, column: 2, scope: !3287)
!3327 = !DILocation(line: 699, column: 1, scope: !3287)
!3328 = distinct !DISubprogram(name: "devm_intel_scu_ipc_unregister", scope: !3, file: !3, line: 658, type: !2171, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3329 = !DILocalVariable(name: "dev", arg: 1, scope: !3328, file: !3, line: 658, type: !1589)
!3330 = !DILocation(line: 658, column: 58, scope: !3328)
!3331 = !DILocalVariable(name: "res", arg: 2, scope: !3328, file: !3, line: 658, type: !83)
!3332 = !DILocation(line: 658, column: 69, scope: !3328)
!3333 = !DILocalVariable(name: "dr", scope: !3328, file: !3, line: 660, type: !2134)
!3334 = !DILocation(line: 660, column: 31, scope: !3328)
!3335 = !DILocation(line: 660, column: 36, scope: !3328)
!3336 = !DILocalVariable(name: "scu", scope: !3328, file: !3, line: 661, type: !84)
!3337 = !DILocation(line: 661, column: 28, scope: !3328)
!3338 = !DILocation(line: 661, column: 34, scope: !3328)
!3339 = !DILocation(line: 661, column: 38, scope: !3328)
!3340 = !DILocation(line: 663, column: 27, scope: !3328)
!3341 = !DILocation(line: 663, column: 2, scope: !3328)
!3342 = !DILocation(line: 664, column: 1, scope: !3328)
!3343 = distinct !DISubprogram(name: "IS_ERR", scope: !3247, file: !3247, line: 34, type: !3344, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!989, !1120}
!3346 = !DILocalVariable(name: "ptr", arg: 1, scope: !3343, file: !3247, line: 34, type: !1120)
!3347 = !DILocation(line: 34, column: 60, scope: !3343)
!3348 = !DILocation(line: 36, column: 9, scope: !3343)
!3349 = !DILocation(line: 36, column: 2, scope: !3343)
!3350 = !DILocation(line: 704, column: 9, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 704, column: 9)
!3352 = !DILocation(line: 704, column: 2, scope: !2063)
!3353 = distinct !DISubprogram(name: "intel_scu_ipc_exit", scope: !3, file: !3, line: 708, type: !2050, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3354 = !DILocation(line: 710, column: 2, scope: !3353)
!3355 = !DILocation(line: 711, column: 1, scope: !3353)
!3356 = distinct !DISubprogram(name: "ipc_data_readb", scope: !3, file: !3, line: 221, type: !3357, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!558, !84, !72}
!3359 = !DILocalVariable(name: "scu", arg: 1, scope: !3356, file: !3, line: 221, type: !84)
!3360 = !DILocation(line: 221, column: 59, scope: !3356)
!3361 = !DILocalVariable(name: "offset", arg: 2, scope: !3356, file: !3, line: 221, type: !72)
!3362 = !DILocation(line: 221, column: 68, scope: !3356)
!3363 = !DILocation(line: 223, column: 15, scope: !3356)
!3364 = !DILocation(line: 223, column: 20, scope: !3356)
!3365 = !DILocation(line: 223, column: 29, scope: !3356)
!3366 = !DILocation(line: 223, column: 49, scope: !3356)
!3367 = !DILocation(line: 223, column: 47, scope: !3356)
!3368 = !DILocation(line: 223, column: 9, scope: !3356)
!3369 = !DILocation(line: 223, column: 2, scope: !3356)
!3370 = distinct !DISubprogram(name: "readb", scope: !3371, file: !3371, line: 57, type: !3372, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3371 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!78, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3376)
!3376 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3377 = !DILocalVariable(name: "addr", arg: 1, scope: !3370, file: !3371, line: 57, type: !3374)
!3378 = !DILocation(line: 57, column: 1, scope: !3370)
!3379 = !DILocalVariable(name: "ret", scope: !3370, file: !3371, line: 57, type: !78)
!3380 = !{i32 -2143697369}
!3381 = distinct !DISubprogram(name: "reinit_completion", scope: !726, file: !726, line: 98, type: !2059, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3382 = !DILocalVariable(name: "x", arg: 1, scope: !3381, file: !726, line: 98, type: !724)
!3383 = !DILocation(line: 98, column: 57, scope: !3381)
!3384 = !DILocation(line: 100, column: 2, scope: !3381)
!3385 = !DILocation(line: 100, column: 5, scope: !3381)
!3386 = !DILocation(line: 100, column: 10, scope: !3381)
!3387 = !DILocation(line: 101, column: 1, scope: !3381)
!3388 = distinct !DISubprogram(name: "writel", scope: !3371, file: !3371, line: 67, type: !3389, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !7, !3391}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3392 = !DILocalVariable(name: "val", arg: 1, scope: !3388, file: !3371, line: 67, type: !7)
!3393 = !DILocation(line: 67, column: 1, scope: !3388)
!3394 = !DILocalVariable(name: "addr", arg: 2, scope: !3388, file: !3371, line: 67, type: !3391)
!3395 = !{i32 -2143694145}
!3396 = distinct !DISubprogram(name: "ipc_wait_for_interrupt", scope: !3, file: !3, line: 251, type: !2562, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3397 = !DILocalVariable(name: "scu", arg: 1, scope: !3396, file: !3, line: 251, type: !84)
!3398 = !DILocation(line: 251, column: 68, scope: !3396)
!3399 = !DILocalVariable(name: "status", scope: !3396, file: !3, line: 253, type: !82)
!3400 = !DILocation(line: 253, column: 6, scope: !3396)
!3401 = !DILocation(line: 255, column: 36, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 255, column: 6)
!3403 = !DILocation(line: 255, column: 41, scope: !3402)
!3404 = !DILocation(line: 255, column: 7, scope: !3402)
!3405 = !DILocation(line: 255, column: 6, scope: !3396)
!3406 = !DILocation(line: 256, column: 3, scope: !3402)
!3407 = !DILocation(line: 258, column: 27, scope: !3396)
!3408 = !DILocation(line: 258, column: 11, scope: !3396)
!3409 = !DILocation(line: 258, column: 9, scope: !3396)
!3410 = !DILocation(line: 259, column: 6, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 259, column: 6)
!3412 = !DILocation(line: 259, column: 13, scope: !3411)
!3413 = !DILocation(line: 259, column: 6, scope: !3396)
!3414 = !DILocation(line: 260, column: 3, scope: !3411)
!3415 = !DILocation(line: 262, column: 2, scope: !3396)
!3416 = !DILocation(line: 263, column: 1, scope: !3396)
!3417 = distinct !DISubprogram(name: "busy_loop", scope: !3, file: !3, line: 233, type: !2562, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3418 = !DILocalVariable(name: "m", arg: 1, scope: !3419, file: !3420, line: 363, type: !3423)
!3419 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !3420, file: !3420, line: 363, type: !3421, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3420 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!202, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3424 = !DILocation(line: 363, column: 74, scope: !3419, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 235, column: 32, scope: !3417)
!3426 = !DILocalVariable(name: "scu", arg: 1, scope: !3417, file: !3, line: 233, type: !84)
!3427 = !DILocation(line: 233, column: 55, scope: !3417)
!3428 = !DILocalVariable(name: "end", scope: !3417, file: !3, line: 235, type: !202)
!3429 = !DILocation(line: 235, column: 16, scope: !3417)
!3430 = !DILocation(line: 235, column: 22, scope: !3417)
!3431 = !DILocation(line: 365, column: 27, scope: !3432, inlinedAt: !3425)
!3432 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 365, column: 6)
!3433 = !DILocation(line: 365, column: 6, scope: !3432, inlinedAt: !3425)
!3434 = !DILocation(line: 365, column: 6, scope: !3419, inlinedAt: !3425)
!3435 = !DILocation(line: 366, column: 12, scope: !3436, inlinedAt: !3425)
!3436 = distinct !DILexicalBlock(scope: !3437, file: !3420, line: 366, column: 7)
!3437 = distinct !DILexicalBlock(scope: !3432, file: !3420, line: 365, column: 31)
!3438 = !DILocation(line: 366, column: 14, scope: !3436, inlinedAt: !3425)
!3439 = !DILocation(line: 366, column: 7, scope: !3437, inlinedAt: !3425)
!3440 = !DILocation(line: 367, column: 4, scope: !3436, inlinedAt: !3425)
!3441 = !DILocation(line: 368, column: 28, scope: !3437, inlinedAt: !3425)
!3442 = !DILocation(line: 368, column: 10, scope: !3437, inlinedAt: !3425)
!3443 = !DILocation(line: 368, column: 3, scope: !3437, inlinedAt: !3425)
!3444 = !DILocation(line: 370, column: 29, scope: !3445, inlinedAt: !3425)
!3445 = distinct !DILexicalBlock(scope: !3432, file: !3420, line: 369, column: 9)
!3446 = !DILocation(line: 370, column: 10, scope: !3445, inlinedAt: !3425)
!3447 = !DILocation(line: 370, column: 3, scope: !3445, inlinedAt: !3425)
!3448 = !DILocation(line: 372, column: 1, scope: !3419, inlinedAt: !3425)
!3449 = !DILocation(line: 235, column: 30, scope: !3417)
!3450 = !DILocation(line: 237, column: 2, scope: !3417)
!3451 = !DILocalVariable(name: "status", scope: !3452, file: !3, line: 238, type: !72)
!3452 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 237, column: 5)
!3453 = !DILocation(line: 238, column: 7, scope: !3452)
!3454 = !DILocation(line: 240, column: 28, scope: !3452)
!3455 = !DILocation(line: 240, column: 12, scope: !3452)
!3456 = !DILocation(line: 240, column: 10, scope: !3452)
!3457 = !DILocation(line: 241, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 241, column: 7)
!3459 = !DILocation(line: 241, column: 16, scope: !3458)
!3460 = !DILocation(line: 241, column: 7, scope: !3452)
!3461 = !DILocation(line: 242, column: 12, scope: !3458)
!3462 = !DILocation(line: 242, column: 19, scope: !3458)
!3463 = !DILocation(line: 242, column: 11, scope: !3458)
!3464 = !DILocation(line: 242, column: 4, scope: !3458)
!3465 = !DILocation(line: 244, column: 3, scope: !3452)
!3466 = !DILocation(line: 245, column: 2, scope: !3452)
!3467 = !DILocation(line: 245, column: 11, scope: !3417)
!3468 = distinct !{!3468, !3450, !3469}
!3469 = !DILocation(line: 245, column: 36, scope: !3417)
!3470 = !DILocation(line: 247, column: 2, scope: !3417)
!3471 = !DILocation(line: 248, column: 1, scope: !3417)
!3472 = distinct !DISubprogram(name: "ipc_read_status", scope: !3, file: !3, line: 215, type: !3473, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!558, !84}
!3475 = !DILocalVariable(name: "scu", arg: 1, scope: !3472, file: !3, line: 215, type: !84)
!3476 = !DILocation(line: 215, column: 60, scope: !3472)
!3477 = !DILocation(line: 217, column: 21, scope: !3472)
!3478 = !DILocation(line: 217, column: 26, scope: !3472)
!3479 = !DILocation(line: 217, column: 35, scope: !3472)
!3480 = !DILocation(line: 217, column: 9, scope: !3472)
!3481 = !DILocation(line: 217, column: 2, scope: !3472)
!3482 = distinct !DISubprogram(name: "__readl", scope: !3371, file: !3371, line: 63, type: !3483, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!7, !3374}
!3485 = !DILocalVariable(name: "addr", arg: 1, scope: !3482, file: !3371, line: 63, type: !3374)
!3486 = !DILocation(line: 63, column: 1, scope: !3482)
!3487 = !DILocalVariable(name: "ret", scope: !3482, file: !3371, line: 63, type: !7)
!3488 = !{i32 -2143695312}
!3489 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !3420, file: !3420, line: 308, type: !3421, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3490 = !DILocalVariable(name: "m", arg: 1, scope: !3489, file: !3420, line: 308, type: !3423)
!3491 = !DILocation(line: 308, column: 66, scope: !3489)
!3492 = !DILocation(line: 310, column: 10, scope: !3489)
!3493 = !DILocation(line: 310, column: 12, scope: !3489)
!3494 = !DILocation(line: 310, column: 34, scope: !3489)
!3495 = !DILocation(line: 310, column: 39, scope: !3489)
!3496 = !DILocation(line: 310, column: 2, scope: !3489)
!3497 = distinct !DISubprogram(name: "readl", scope: !3371, file: !3371, line: 59, type: !3483, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3498 = !DILocalVariable(name: "addr", arg: 1, scope: !3497, file: !3371, line: 59, type: !3374)
!3499 = !DILocation(line: 59, column: 1, scope: !3497)
!3500 = !DILocalVariable(name: "ret", scope: !3497, file: !3371, line: 59, type: !7)
!3501 = !{i32 -2143696538}
!3502 = distinct !DISubprogram(name: "get_order", scope: !3503, file: !3503, line: 29, type: !3504, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3503 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!82, !202}
!3506 = !DILocalVariable(name: "x", arg: 1, scope: !3507, file: !3508, line: 366, type: !272)
!3507 = distinct !DISubprogram(name: "fls64", scope: !3508, file: !3508, line: 366, type: !3509, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3508 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!82, !272}
!3511 = !DILocation(line: 366, column: 40, scope: !3507, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 46, column: 9, scope: !3502)
!3513 = !DILocalVariable(name: "bitpos", scope: !3507, file: !3508, line: 368, type: !82)
!3514 = !DILocation(line: 368, column: 6, scope: !3507, inlinedAt: !3512)
!3515 = !DILocalVariable(name: "size", arg: 1, scope: !3502, file: !3503, line: 29, type: !202)
!3516 = !DILocation(line: 29, column: 63, scope: !3502)
!3517 = !DILocation(line: 31, column: 27, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3502, file: !3503, line: 31, column: 6)
!3519 = !DILocation(line: 31, column: 6, scope: !3518)
!3520 = !DILocation(line: 31, column: 6, scope: !3502)
!3521 = !DILocation(line: 32, column: 8, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !3503, line: 32, column: 7)
!3523 = distinct !DILexicalBlock(scope: !3518, file: !3503, line: 31, column: 34)
!3524 = !DILocation(line: 32, column: 7, scope: !3523)
!3525 = !DILocation(line: 33, column: 4, scope: !3522)
!3526 = !DILocation(line: 35, column: 7, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !3503, line: 35, column: 7)
!3528 = !DILocation(line: 35, column: 12, scope: !3527)
!3529 = !DILocation(line: 35, column: 7, scope: !3523)
!3530 = !DILocation(line: 36, column: 4, scope: !3527)
!3531 = !DILocation(line: 38, column: 10, scope: !3523)
!3532 = !DILocation(line: 38, column: 28, scope: !3523)
!3533 = !DILocation(line: 38, column: 41, scope: !3523)
!3534 = !DILocation(line: 38, column: 3, scope: !3523)
!3535 = !DILocation(line: 41, column: 6, scope: !3502)
!3536 = !DILocation(line: 42, column: 7, scope: !3502)
!3537 = !DILocation(line: 46, column: 15, scope: !3502)
!3538 = !DILocation(line: 374, column: 2, scope: !3507, inlinedAt: !3512)
!3539 = !DILocation(line: 376, column: 14, scope: !3507, inlinedAt: !3512)
!3540 = !{i32 260610}
!3541 = !DILocation(line: 377, column: 9, scope: !3507, inlinedAt: !3512)
!3542 = !DILocation(line: 377, column: 16, scope: !3507, inlinedAt: !3512)
!3543 = !DILocation(line: 46, column: 2, scope: !3502)
!3544 = !DILocation(line: 48, column: 1, scope: !3502)
!3545 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3546, file: !3546, line: 30, type: !3547, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3546 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!82, !271}
!3549 = !DILocation(line: 366, column: 40, scope: !3507, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 32, column: 9, scope: !3545)
!3551 = !DILocation(line: 368, column: 6, scope: !3507, inlinedAt: !3550)
!3552 = !DILocalVariable(name: "n", arg: 1, scope: !3545, file: !3546, line: 30, type: !271)
!3553 = !DILocation(line: 30, column: 21, scope: !3545)
!3554 = !DILocation(line: 32, column: 15, scope: !3545)
!3555 = !DILocation(line: 374, column: 2, scope: !3507, inlinedAt: !3550)
!3556 = !DILocation(line: 376, column: 14, scope: !3507, inlinedAt: !3550)
!3557 = !DILocation(line: 377, column: 9, scope: !3507, inlinedAt: !3550)
!3558 = !DILocation(line: 377, column: 16, scope: !3507, inlinedAt: !3550)
!3559 = !DILocation(line: 32, column: 18, scope: !3545)
!3560 = !DILocation(line: 32, column: 2, scope: !3545)
!3561 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3562, file: !3562, line: 137, type: !3563, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!3562 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!83, !1039, !1120, !199, !69}
!3565 = !DILocalVariable(name: "s", arg: 1, scope: !3561, file: !3562, line: 137, type: !1039)
!3566 = !DILocation(line: 137, column: 54, scope: !3561)
!3567 = !DILocalVariable(name: "object", arg: 2, scope: !3561, file: !3562, line: 137, type: !1120)
!3568 = !DILocation(line: 137, column: 69, scope: !3561)
!3569 = !DILocalVariable(name: "size", arg: 3, scope: !3561, file: !3562, line: 138, type: !199)
!3570 = !DILocation(line: 138, column: 12, scope: !3561)
!3571 = !DILocalVariable(name: "flags", arg: 4, scope: !3561, file: !3562, line: 138, type: !69)
!3572 = !DILocation(line: 138, column: 24, scope: !3561)
!3573 = !DILocation(line: 140, column: 17, scope: !3561)
!3574 = !DILocation(line: 140, column: 2, scope: !3561)
