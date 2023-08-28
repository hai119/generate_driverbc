; ModuleID = '../bcout/drivers/base/swnode.llvm.bc'
source_filename = "drivers/base/swnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall2.init\22, \22a\22\09"
module asm "__initcall_software_node_init2:\09\09\09"
module asm ".long\09software_node_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, {}*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.software_node = type { i8*, %struct.software_node*, %struct.property_entry* }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.38 }
%union.anon.38 = type { i8* }
%struct.swnode = type { i32, %struct.kobject, %struct.fwnode_handle, %struct.software_node*, %struct.ida, %struct.list_head, %struct.list_head, %struct.swnode*, i8 }
%union.anon.39 = type { [1 x i64] }
%struct.software_node_ref_args = type { %struct.software_node*, i32, [8 x i64] }

@swnode_kset = internal global %struct.kset* null, align 8, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"software_node\00", align 1
@__UNIQUE_ID___addressable_software_node_init185 = internal global i8* bitcast (i32 ()* @software_node_init to i8*), section ".discard.addressable", align 8, !dbg !2058
@swnode_root_ids = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !2071
@__exitcall_software_node_exit = internal global void ()* @software_node_exit, section ".exitcall.exit", align 8, !dbg !2060
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@software_node_ops = internal constant { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* } { %struct.fwnode_handle* (%struct.fwnode_handle*)* @software_node_get, void (%struct.fwnode_handle*)* @software_node_put, i1 (%struct.fwnode_handle*)* null, i8* (%struct.fwnode_handle*, %struct.device*)* null, i1 (%struct.fwnode_handle*, i8*)* @software_node_property_present, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @software_node_read_int_array, i32 (%struct.fwnode_handle*, i8*, i8**, i64)* @software_node_read_string_array, i8* (%struct.fwnode_handle*)* @software_node_get_name, i8* (%struct.fwnode_handle*)* @software_node_get_name_prefix, %struct.fwnode_handle* (%struct.fwnode_handle*)* @software_node_get_parent, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* @software_node_get_next_child, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)* @software_node_get_named_child_node, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)* @software_node_get_reference_args, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*)* null, %struct.fwnode_handle* (%struct.fwnode_handle*)* null, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)* null, i32 (%struct.fwnode_handle*, %struct.device*)* null }, align 8, !dbg !2067
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@software_node_type = internal global %struct.kobj_type { void (%struct.kobject*)* @software_node_release, %struct.sysfs_ops* @kobj_sysfs_ops, %struct.attribute** null, %struct.attribute_group** null, %struct.kobj_ns_type_operations* (%struct.kobject*)* null, i8* (%struct.kobject*)* null, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* null }, align 8, !dbg !2069
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"node%d\00", align 1
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"software_nodes\00", align 1
@kernel_kobj = external dso_local global %struct.kobject*, align 8
@llvm.used = appending global [3 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_software_node_init185 to i8*), i8* bitcast (void ()* @software_node_exit to i8*), i8* bitcast (void ()** @__exitcall_software_node_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @is_software_node(%struct.fwnode_handle* %fwnode) #0 !dbg !2078 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2079, metadata !DIExpression()), !dbg !2080
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2081
  %1 = bitcast %struct.fwnode_handle* %0 to i8*, !dbg !2081
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #8, !dbg !2082
  br i1 %call, label %land.end, label %land.rhs, !dbg !2083

land.rhs:                                         ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2084
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %2, i32 0, i32 1, !dbg !2085
  %3 = load %struct.fwnode_operations*, %struct.fwnode_operations** %ops, align 8, !dbg !2085
  %cmp = icmp eq %struct.fwnode_operations* %3, bitcast ({ %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }* @software_node_ops to %struct.fwnode_operations*), !dbg !2086
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !2087
  ret i1 %4, !dbg !2088
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !2089 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2093, metadata !DIExpression()), !dbg !2094
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2095
  %tobool = icmp ne i8* %0, null, !dbg !2095
  %lnot = xor i1 %tobool, true, !dbg !2095
  %lnot1 = xor i1 %lnot, true, !dbg !2095
  %lnot2 = xor i1 %lnot1, true, !dbg !2095
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2095
  %conv = sext i32 %lnot.ext to i64, !dbg !2095
  %tobool3 = icmp ne i64 %conv, 0, !dbg !2095
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2096

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2097
  %2 = ptrtoint i8* %1 to i64, !dbg !2097
  %3 = inttoptr i64 %2 to i8*, !dbg !2097
  %4 = ptrtoint i8* %3 to i64, !dbg !2097
  %cmp = icmp uge i64 %4, -4095, !dbg !2097
  %lnot5 = xor i1 %cmp, true, !dbg !2097
  %lnot7 = xor i1 %lnot5, true, !dbg !2097
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2097
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2097
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !2096
  br label %lor.end, !dbg !2096

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !2098
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.software_node* @to_software_node(%struct.fwnode_handle* %fwnode) #0 !dbg !2099 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !2102, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !2104, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !2108, metadata !DIExpression()), !dbg !2110
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !2110
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !2110
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !2110
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !2110
  br i1 %call, label %cond.true, label %cond.false, !dbg !2110

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2111, metadata !DIExpression()), !dbg !2113
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !2113
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !2113
  store i8* %3, i8** %__mptr, align 8, !dbg !2113
  br label %do.body, !dbg !2113

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2114

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2113
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !2113
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !2113
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !2114
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !2113
  br label %cond.end, !dbg !2110

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2110

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !2110
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !2110
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !2110
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !2107
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2116
  %tobool = icmp ne %struct.swnode* %8, null, !dbg !2116
  br i1 %tobool, label %cond.true2, label %cond.false3, !dbg !2116

cond.true2:                                       ; preds = %cond.end
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2117
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 3, !dbg !2118
  %10 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !2118
  br label %cond.end4, !dbg !2116

cond.false3:                                      ; preds = %cond.end
  br label %cond.end4, !dbg !2116

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi %struct.software_node* [ %10, %cond.true2 ], [ null, %cond.false3 ], !dbg !2116
  ret %struct.software_node* %cond5, !dbg !2119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* %node) #0 !dbg !2120 {
entry:
  %node.addr = alloca %struct.software_node*, align 8
  %swnode = alloca %struct.swnode*, align 8
  store %struct.software_node* %node, %struct.software_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %node.addr, metadata !2123, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !2125, metadata !DIExpression()), !dbg !2126
  %0 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2127
  %call = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %0) #8, !dbg !2128
  store %struct.swnode* %call, %struct.swnode** %swnode, align 8, !dbg !2126
  %1 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2129
  %tobool = icmp ne %struct.swnode* %1, null, !dbg !2129
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2129

cond.true:                                        ; preds = %entry
  %2 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2130
  %fwnode = getelementptr inbounds %struct.swnode, %struct.swnode* %2, i32 0, i32 2, !dbg !2131
  br label %cond.end, !dbg !2129

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %fwnode, %cond.true ], [ null, %cond.false ], !dbg !2129
  ret %struct.fwnode_handle* %cond, !dbg !2132
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.swnode* @software_node_to_swnode(%struct.software_node* %node) #0 !dbg !2133 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !2136, metadata !DIExpression()), !dbg !2142
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2144, metadata !DIExpression()), !dbg !2146
  %retval = alloca %struct.swnode*, align 8
  %node.addr = alloca %struct.software_node*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %k = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.kobject*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.swnode*, align 8
  %__mptr12 = alloca i8*, align 8
  %tmp17 = alloca %struct.kobject*, align 8
  store %struct.software_node* %node, %struct.software_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %node.addr, metadata !2148, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !2150, metadata !DIExpression()), !dbg !2151
  store %struct.swnode* null, %struct.swnode** %swnode, align 8, !dbg !2151
  call void @llvm.dbg.declare(metadata %struct.kobject** %k, metadata !2152, metadata !DIExpression()), !dbg !2153
  %0 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2154
  %tobool = icmp ne %struct.software_node* %0, null, !dbg !2154
  br i1 %tobool, label %if.end, label %if.then, !dbg !2156

if.then:                                          ; preds = %entry
  store %struct.swnode* null, %struct.swnode** %retval, align 8, !dbg !2157
  br label %return, !dbg !2157

if.end:                                           ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2158
  %list_lock = getelementptr inbounds %struct.kset, %struct.kset* %1, i32 0, i32 1, !dbg !2159
  store %struct.spinlock* %list_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2160, !srcloc !2162
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2163
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !2163
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !2163
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2165, metadata !DIExpression()), !dbg !2168
  %4 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2168
  %list = getelementptr inbounds %struct.kset, %struct.kset* %4, i32 0, i32 0, !dbg !2168
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !2168
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2168
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !2168
  store i8* %6, i8** %__mptr, align 8, !dbg !2168
  br label %do.body, !dbg !2168

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2169

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !2168
  %add.ptr = getelementptr i8, i8* %7, i64 -8, !dbg !2168
  %8 = bitcast i8* %add.ptr to %struct.kobject*, !dbg !2168
  store %struct.kobject* %8, %struct.kobject** %tmp, align 8, !dbg !2169
  %9 = load %struct.kobject*, %struct.kobject** %tmp, align 8, !dbg !2168
  store %struct.kobject* %9, %struct.kobject** %k, align 8, !dbg !2171
  br label %for.cond, !dbg !2171

for.cond:                                         ; preds = %do.end16, %do.end
  %10 = load %struct.kobject*, %struct.kobject** %k, align 8, !dbg !2172
  %entry1 = getelementptr inbounds %struct.kobject, %struct.kobject* %10, i32 0, i32 1, !dbg !2172
  %11 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2172
  %list2 = getelementptr inbounds %struct.kset, %struct.kset* %11, i32 0, i32 0, !dbg !2172
  %cmp = icmp eq %struct.list_head* %entry1, %list2, !dbg !2172
  %lnot = xor i1 %cmp, true, !dbg !2172
  br i1 %lnot, label %for.body, label %for.end, !dbg !2171

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2174, metadata !DIExpression()), !dbg !2177
  %12 = load %struct.kobject*, %struct.kobject** %k, align 8, !dbg !2177
  %13 = bitcast %struct.kobject* %12 to i8*, !dbg !2177
  store i8* %13, i8** %__mptr3, align 8, !dbg !2177
  br label %do.body4, !dbg !2177

do.body4:                                         ; preds = %for.body
  br label %do.end5, !dbg !2178

do.end5:                                          ; preds = %do.body4
  %14 = load i8*, i8** %__mptr3, align 8, !dbg !2177
  %add.ptr7 = getelementptr i8, i8* %14, i64 -8, !dbg !2177
  %15 = bitcast i8* %add.ptr7 to %struct.swnode*, !dbg !2177
  store %struct.swnode* %15, %struct.swnode** %tmp6, align 8, !dbg !2178
  %16 = load %struct.swnode*, %struct.swnode** %tmp6, align 8, !dbg !2177
  store %struct.swnode* %16, %struct.swnode** %swnode, align 8, !dbg !2180
  %17 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2181
  %node8 = getelementptr inbounds %struct.swnode, %struct.swnode* %17, i32 0, i32 3, !dbg !2183
  %18 = load %struct.software_node*, %struct.software_node** %node8, align 8, !dbg !2183
  %19 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2184
  %cmp9 = icmp eq %struct.software_node* %18, %19, !dbg !2185
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2186

if.then10:                                        ; preds = %do.end5
  br label %for.end, !dbg !2187

if.end11:                                         ; preds = %do.end5
  store %struct.swnode* null, %struct.swnode** %swnode, align 8, !dbg !2188
  br label %for.inc, !dbg !2189

for.inc:                                          ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i8** %__mptr12, metadata !2190, metadata !DIExpression()), !dbg !2192
  %20 = load %struct.kobject*, %struct.kobject** %k, align 8, !dbg !2192
  %entry13 = getelementptr inbounds %struct.kobject, %struct.kobject* %20, i32 0, i32 1, !dbg !2192
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry13, i32 0, i32 0, !dbg !2192
  %21 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !2192
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !2192
  store i8* %22, i8** %__mptr12, align 8, !dbg !2192
  br label %do.body15, !dbg !2192

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !2193

do.end16:                                         ; preds = %do.body15
  %23 = load i8*, i8** %__mptr12, align 8, !dbg !2192
  %add.ptr18 = getelementptr i8, i8* %23, i64 -8, !dbg !2192
  %24 = bitcast i8* %add.ptr18 to %struct.kobject*, !dbg !2192
  store %struct.kobject* %24, %struct.kobject** %tmp17, align 8, !dbg !2193
  %25 = load %struct.kobject*, %struct.kobject** %tmp17, align 8, !dbg !2192
  store %struct.kobject* %25, %struct.kobject** %k, align 8, !dbg !2172
  br label %for.cond, !dbg !2172, !llvm.loop !2195

for.end:                                          ; preds = %if.then10, %for.cond
  %26 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2197
  %list_lock19 = getelementptr inbounds %struct.kset, %struct.kset* %26, i32 0, i32 1, !dbg !2198
  store %struct.spinlock* %list_lock19, %struct.spinlock** %lock.addr.i20, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2199, !srcloc !2201
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !2202
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !2202
  %rlock.i21 = bitcast %union.anon* %28 to %struct.raw_spinlock*, !dbg !2202
  %29 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2204
  store %struct.swnode* %29, %struct.swnode** %retval, align 8, !dbg !2205
  br label %return, !dbg !2205

return:                                           ; preds = %for.end, %if.then
  %30 = load %struct.swnode*, %struct.swnode** %retval, align 8, !dbg !2206
  ret %struct.swnode* %30, !dbg !2206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.property_entry* @property_entries_dup(%struct.property_entry* %properties) #0 !dbg !2207 {
entry:
  %retval = alloca %struct.property_entry*, align 8
  %properties.addr = alloca %struct.property_entry*, align 8
  %p = alloca %struct.property_entry*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.property_entry* %properties, %struct.property_entry** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %properties.addr, metadata !2211, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.declare(metadata %struct.property_entry** %p, metadata !2213, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %n, metadata !2217, metadata !DIExpression()), !dbg !2218
  store i32 0, i32* %n, align 4, !dbg !2218
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2219, metadata !DIExpression()), !dbg !2220
  %0 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !2221
  %tobool = icmp ne %struct.property_entry* %0, null, !dbg !2221
  br i1 %tobool, label %if.end, label %if.then, !dbg !2223

if.then:                                          ; preds = %entry
  store %struct.property_entry* null, %struct.property_entry** %retval, align 8, !dbg !2224
  br label %return, !dbg !2224

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2225

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !2226
  %2 = load i32, i32* %n, align 4, !dbg !2227
  %idxprom = sext i32 %2 to i64, !dbg !2226
  %arrayidx = getelementptr %struct.property_entry, %struct.property_entry* %1, i64 %idxprom, !dbg !2226
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %arrayidx, i32 0, i32 0, !dbg !2228
  %3 = load i8*, i8** %name, align 8, !dbg !2228
  %tobool1 = icmp ne i8* %3, null, !dbg !2225
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2225

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %n, align 4, !dbg !2229
  %inc = add i32 %4, 1, !dbg !2229
  store i32 %inc, i32* %n, align 4, !dbg !2229
  br label %while.cond, !dbg !2225, !llvm.loop !2230

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %n, align 4, !dbg !2231
  %add = add i32 %5, 1, !dbg !2232
  %conv = sext i32 %add to i64, !dbg !2231
  %call = call i8* @kcalloc(i64 %conv, i64 32, i32 3264) #8, !dbg !2233
  %6 = bitcast i8* %call to %struct.property_entry*, !dbg !2233
  store %struct.property_entry* %6, %struct.property_entry** %p, align 8, !dbg !2234
  %7 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2235
  %tobool2 = icmp ne %struct.property_entry* %7, null, !dbg !2235
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2237

if.then3:                                         ; preds = %while.end
  %call4 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2238
  %8 = bitcast i8* %call4 to %struct.property_entry*, !dbg !2238
  store %struct.property_entry* %8, %struct.property_entry** %retval, align 8, !dbg !2239
  br label %return, !dbg !2239

if.end5:                                          ; preds = %while.end
  store i32 0, i32* %i, align 4, !dbg !2240
  br label %for.cond, !dbg !2242

for.cond:                                         ; preds = %for.inc, %if.end5
  %9 = load i32, i32* %i, align 4, !dbg !2243
  %10 = load i32, i32* %n, align 4, !dbg !2245
  %cmp = icmp slt i32 %9, %10, !dbg !2246
  br i1 %cmp, label %for.body, label %for.end, !dbg !2247

for.body:                                         ; preds = %for.cond
  %11 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2248
  %12 = load i32, i32* %i, align 4, !dbg !2250
  %idxprom7 = sext i32 %12 to i64, !dbg !2248
  %arrayidx8 = getelementptr %struct.property_entry, %struct.property_entry* %11, i64 %idxprom7, !dbg !2248
  %13 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !2251
  %14 = load i32, i32* %i, align 4, !dbg !2252
  %idxprom9 = sext i32 %14 to i64, !dbg !2251
  %arrayidx10 = getelementptr %struct.property_entry, %struct.property_entry* %13, i64 %idxprom9, !dbg !2251
  %call11 = call i32 @property_entry_copy_data(%struct.property_entry* %arrayidx8, %struct.property_entry* %arrayidx10) #8, !dbg !2253
  store i32 %call11, i32* %ret, align 4, !dbg !2254
  %15 = load i32, i32* %ret, align 4, !dbg !2255
  %tobool12 = icmp ne i32 %15, 0, !dbg !2255
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !2257

if.then13:                                        ; preds = %for.body
  br label %while.cond14, !dbg !2258

while.cond14:                                     ; preds = %while.body17, %if.then13
  %16 = load i32, i32* %i, align 4, !dbg !2260
  %dec = add i32 %16, -1, !dbg !2260
  store i32 %dec, i32* %i, align 4, !dbg !2260
  %cmp15 = icmp sge i32 %dec, 0, !dbg !2261
  br i1 %cmp15, label %while.body17, label %while.end20, !dbg !2258

while.body17:                                     ; preds = %while.cond14
  %17 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2262
  %18 = load i32, i32* %i, align 4, !dbg !2263
  %idxprom18 = sext i32 %18 to i64, !dbg !2262
  %arrayidx19 = getelementptr %struct.property_entry, %struct.property_entry* %17, i64 %idxprom18, !dbg !2262
  call void @property_entry_free_data(%struct.property_entry* %arrayidx19) #8, !dbg !2264
  br label %while.cond14, !dbg !2258, !llvm.loop !2265

while.end20:                                      ; preds = %while.cond14
  %19 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2267
  %20 = bitcast %struct.property_entry* %19 to i8*, !dbg !2267
  call void @kfree(i8* %20) #8, !dbg !2268
  %21 = load i32, i32* %ret, align 4, !dbg !2269
  %conv21 = sext i32 %21 to i64, !dbg !2269
  %call22 = call i8* @ERR_PTR(i64 %conv21) #8, !dbg !2270
  %22 = bitcast i8* %call22 to %struct.property_entry*, !dbg !2270
  store %struct.property_entry* %22, %struct.property_entry** %retval, align 8, !dbg !2271
  br label %return, !dbg !2271

if.end23:                                         ; preds = %for.body
  br label %for.inc, !dbg !2272

for.inc:                                          ; preds = %if.end23
  %23 = load i32, i32* %i, align 4, !dbg !2273
  %inc24 = add i32 %23, 1, !dbg !2273
  store i32 %inc24, i32* %i, align 4, !dbg !2273
  br label %for.cond, !dbg !2274, !llvm.loop !2275

for.end:                                          ; preds = %for.cond
  %24 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2277
  store %struct.property_entry* %24, %struct.property_entry** %retval, align 8, !dbg !2278
  br label %return, !dbg !2278

return:                                           ; preds = %for.end, %while.end20, %if.then3, %if.then
  %25 = load %struct.property_entry*, %struct.property_entry** %retval, align 8, !dbg !2279
  ret %struct.property_entry* %25, !dbg !2279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2280 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2283, metadata !DIExpression()), !dbg !2284
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  %0 = load i64, i64* %n.addr, align 8, !dbg !2289
  %1 = load i64, i64* %size.addr, align 8, !dbg !2290
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2291
  %or = or i32 %2, 256, !dbg !2292
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !2293
  ret i8* %call, !dbg !2294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2295 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  %0 = load i64, i64* %error.addr, align 8, !dbg !2300
  %1 = inttoptr i64 %0 to i8*, !dbg !2301
  ret i8* %1, !dbg !2302
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @property_entry_copy_data(%struct.property_entry* %dst, %struct.property_entry* %src) #0 !dbg !2303 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2306, metadata !DIExpression()), !dbg !2310
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2320, metadata !DIExpression()), !dbg !2321
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2322, metadata !DIExpression()), !dbg !2323
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2324, metadata !DIExpression()), !dbg !2325
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2326, metadata !DIExpression()), !dbg !2330
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2332, metadata !DIExpression()), !dbg !2336
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2338, metadata !DIExpression()), !dbg !2342
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2347, metadata !DIExpression()), !dbg !2348
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2349, metadata !DIExpression()), !dbg !2350
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2351, metadata !DIExpression()), !dbg !2352
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2353, metadata !DIExpression()), !dbg !2354
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2355, metadata !DIExpression()), !dbg !2356
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2357, metadata !DIExpression()), !dbg !2358
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2359, metadata !DIExpression()), !dbg !2360
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2361, metadata !DIExpression()), !dbg !2362
  %retval = alloca i32, align 4
  %dst.addr = alloca %struct.property_entry*, align 8
  %src.addr = alloca %struct.property_entry*, align 8
  %pointer = alloca i8*, align 8
  %dst_ptr = alloca i8*, align 8
  %nval = alloca i64, align 8
  store %struct.property_entry* %dst, %struct.property_entry** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %dst.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  store %struct.property_entry* %src, %struct.property_entry** %src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %src.addr, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.declare(metadata i8** %pointer, metadata !2367, metadata !DIExpression()), !dbg !2368
  %0 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2369
  %call = call i8* @property_get_pointer(%struct.property_entry* %0) #8, !dbg !2370
  store i8* %call, i8** %pointer, align 8, !dbg !2368
  call void @llvm.dbg.declare(metadata i8** %dst_ptr, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.declare(metadata i64* %nval, metadata !2373, metadata !DIExpression()), !dbg !2374
  %1 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2375
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %1, i32 0, i32 2, !dbg !2377
  %2 = load i8, i8* %is_inline, align 8, !dbg !2377
  %tobool = trunc i8 %2 to i1, !dbg !2377
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2378

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2379
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %3, i32 0, i32 1, !dbg !2380
  %4 = load i64, i64* %length, align 8, !dbg !2380
  %tobool1 = icmp ne i64 %4, 0, !dbg !2379
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2381

if.then:                                          ; preds = %land.lhs.true
  store i32 -61, i32* %retval, align 4, !dbg !2382
  br label %return, !dbg !2382

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2383
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %5, i32 0, i32 3, !dbg !2385
  %6 = load i32, i32* %type, align 4, !dbg !2385
  %cmp = icmp eq i32 %6, 5, !dbg !2386
  br i1 %cmp, label %land.lhs.true2, label %if.end6, !dbg !2387

land.lhs.true2:                                   ; preds = %if.end
  %7 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2388
  %is_inline3 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %7, i32 0, i32 2, !dbg !2389
  %8 = load i8, i8* %is_inline3, align 8, !dbg !2389
  %tobool4 = trunc i8 %8 to i1, !dbg !2389
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2390

if.then5:                                         ; preds = %land.lhs.true2
  store i32 -22, i32* %retval, align 4, !dbg !2391
  br label %return, !dbg !2391

if.end6:                                          ; preds = %land.lhs.true2, %if.end
  %9 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2392
  %length7 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %9, i32 0, i32 1, !dbg !2393
  %10 = load i64, i64* %length7, align 8, !dbg !2393
  %cmp8 = icmp ule i64 %10, 8, !dbg !2394
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !2395

if.then9:                                         ; preds = %if.end6
  %11 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2396
  %12 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %11, i32 0, i32 4, !dbg !2398
  %value = bitcast %union.anon.38* %12 to %union.anon.39*, !dbg !2398
  %13 = bitcast %union.anon.39* %value to i8*, !dbg !2399
  store i8* %13, i8** %dst_ptr, align 8, !dbg !2400
  %14 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2401
  %is_inline10 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %14, i32 0, i32 2, !dbg !2402
  store i8 1, i8* %is_inline10, align 8, !dbg !2403
  br label %if.end17, !dbg !2404

if.else:                                          ; preds = %if.end6
  %15 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2405
  %length11 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %15, i32 0, i32 1, !dbg !2406
  %16 = load i64, i64* %length11, align 8, !dbg !2406
  store i64 %16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !2407
  %18 = call i1 @llvm.is.constant.i64(i64 %17) #9, !dbg !2408
  br i1 %18, label %if.then.i, label %if.end9.i, !dbg !2409

if.then.i:                                        ; preds = %if.else
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2410
  %cmp.i = icmp ugt i64 %19, 8192, !dbg !2411
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2412

if.then1.i:                                       ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !2413
  %21 = load i32, i32* %flags.addr.i, align 4, !dbg !2414
  store i64 %20, i64* %size.addr.i.i, align 8
  store i32 %21, i32* %flags.addr.i.i, align 4
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2415
  %call.i.i = call i32 @get_order(i64 %22) #10, !dbg !2416
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2356
  %23 = load i64, i64* %size.addr.i.i, align 8, !dbg !2417
  %24 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2418
  %25 = load i32, i32* %order.i.i, align 4, !dbg !2419
  store i64 %23, i64* %size.addr.i.i.i, align 8
  store i32 %24, i32* %flags.addr.i.i.i, align 4
  store i32 %25, i32* %order.addr.i.i.i, align 4
  %26 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2420
  %27 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2421
  %28 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2422
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %26, i32 %27, i32 %28) #11, !dbg !2423
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2423
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2423
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2423
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2423
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2424
  br label %kmalloc.exit, !dbg !2424

if.end.i:                                         ; preds = %if.then.i
  %29 = load i64, i64* %size.addr.i, align 8, !dbg !2425
  store i64 %29, i64* %size.addr.i11.i, align 8
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2426
  %tobool.i.i = icmp ne i64 %30, 0, !dbg !2426
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2428

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2429
  br label %kmalloc_index.exit.i, !dbg !2429

if.end.i.i:                                       ; preds = %if.end.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2430
  %cmp.i.i = icmp ule i64 %31, 8, !dbg !2432
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2433

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2434
  br label %kmalloc_index.exit.i, !dbg !2434

if.end2.i.i:                                      ; preds = %if.end.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2435
  %cmp3.i.i = icmp ugt i64 %32, 64, !dbg !2437
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2438

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2439
  %cmp4.i.i = icmp ule i64 %33, 96, !dbg !2440
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2441

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2442
  br label %kmalloc_index.exit.i, !dbg !2442

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2443
  %cmp7.i.i = icmp ugt i64 %34, 128, !dbg !2445
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2446

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2447
  %cmp9.i.i = icmp ule i64 %35, 192, !dbg !2448
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2449

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2450
  br label %kmalloc_index.exit.i, !dbg !2450

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2451
  %cmp12.i.i = icmp ule i64 %36, 8, !dbg !2453
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2454

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2455
  br label %kmalloc_index.exit.i, !dbg !2455

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2456
  %cmp15.i.i = icmp ule i64 %37, 16, !dbg !2458
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2459

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2460
  br label %kmalloc_index.exit.i, !dbg !2460

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2461
  %cmp18.i.i = icmp ule i64 %38, 32, !dbg !2463
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2464

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2465
  br label %kmalloc_index.exit.i, !dbg !2465

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2466
  %cmp21.i.i = icmp ule i64 %39, 64, !dbg !2468
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2469

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2470
  br label %kmalloc_index.exit.i, !dbg !2470

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2471
  %cmp24.i.i = icmp ule i64 %40, 128, !dbg !2473
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2474

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2475
  br label %kmalloc_index.exit.i, !dbg !2475

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2476
  %cmp27.i.i = icmp ule i64 %41, 256, !dbg !2478
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2479

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2480
  br label %kmalloc_index.exit.i, !dbg !2480

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2481
  %cmp30.i.i = icmp ule i64 %42, 512, !dbg !2483
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2484

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2485
  br label %kmalloc_index.exit.i, !dbg !2485

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2486
  %cmp33.i.i = icmp ule i64 %43, 1024, !dbg !2488
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2489

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2490
  br label %kmalloc_index.exit.i, !dbg !2490

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2491
  %cmp36.i.i = icmp ule i64 %44, 2048, !dbg !2493
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2494

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2495
  br label %kmalloc_index.exit.i, !dbg !2495

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2496
  %cmp39.i.i = icmp ule i64 %45, 4096, !dbg !2498
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2499

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2500
  br label %kmalloc_index.exit.i, !dbg !2500

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2501
  %cmp42.i.i = icmp ule i64 %46, 8192, !dbg !2503
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2504

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2505
  br label %kmalloc_index.exit.i, !dbg !2505

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2506
  %cmp45.i.i = icmp ule i64 %47, 16384, !dbg !2508
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2509

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2510
  br label %kmalloc_index.exit.i, !dbg !2510

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2511
  %cmp48.i.i = icmp ule i64 %48, 32768, !dbg !2513
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2514

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2515
  br label %kmalloc_index.exit.i, !dbg !2515

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2516
  %cmp51.i.i = icmp ule i64 %49, 65536, !dbg !2518
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2519

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2520
  br label %kmalloc_index.exit.i, !dbg !2520

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2521
  %cmp54.i.i = icmp ule i64 %50, 131072, !dbg !2523
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2524

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2525
  br label %kmalloc_index.exit.i, !dbg !2525

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2526
  %cmp57.i.i = icmp ule i64 %51, 262144, !dbg !2528
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2529

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2530
  br label %kmalloc_index.exit.i, !dbg !2530

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2531
  %cmp60.i.i = icmp ule i64 %52, 524288, !dbg !2533
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2534

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2535
  br label %kmalloc_index.exit.i, !dbg !2535

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2536
  %cmp63.i.i = icmp ule i64 %53, 1048576, !dbg !2538
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2539

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2540
  br label %kmalloc_index.exit.i, !dbg !2540

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2541
  %cmp66.i.i = icmp ule i64 %54, 2097152, !dbg !2543
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2544

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2545
  br label %kmalloc_index.exit.i, !dbg !2545

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2546
  %cmp69.i.i = icmp ule i64 %55, 4194304, !dbg !2548
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2549

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2550
  br label %kmalloc_index.exit.i, !dbg !2550

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2551
  %cmp72.i.i = icmp ule i64 %56, 8388608, !dbg !2553
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2554

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2555
  br label %kmalloc_index.exit.i, !dbg !2555

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2556
  %cmp75.i.i = icmp ule i64 %57, 16777216, !dbg !2558
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2559

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2560
  br label %kmalloc_index.exit.i, !dbg !2560

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2561
  %cmp78.i.i = icmp ule i64 %58, 33554432, !dbg !2563
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2564

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2565
  br label %kmalloc_index.exit.i, !dbg !2565

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2566
  %cmp81.i.i = icmp ule i64 %59, 67108864, !dbg !2568
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2569

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2570
  br label %kmalloc_index.exit.i, !dbg !2570

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2571, !srcloc !2574
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !2575, !srcloc !2578
  unreachable, !dbg !2579

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %60 = load i32, i32* %retval.i.i, align 4, !dbg !2580
  store i32 %60, i32* %index.i, align 4, !dbg !2581
  %61 = load i32, i32* %index.i, align 4, !dbg !2582
  %tobool.i = icmp ne i32 %61, 0, !dbg !2582
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2584

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2585
  br label %kmalloc.exit, !dbg !2585

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !2586
  store i32 %62, i32* %flags.addr.i13.i, align 4
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2587
  %and.i.i = and i32 %63, 17, !dbg !2587
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2587
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2587
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2587
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2587
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2589

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2590
  br label %kmalloc_type.exit.i, !dbg !2590

if.end.i16.i:                                     ; preds = %if.end4.i
  %64 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2591
  %and2.i.i = and i32 %64, 1, !dbg !2592
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2591
  %65 = zext i1 %tobool3.i.i to i64, !dbg !2591
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2591
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2593
  br label %kmalloc_type.exit.i, !dbg !2593

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %66 = load i32, i32* %retval.i12.i, align 4, !dbg !2594
  %idxprom.i = zext i32 %66 to i64, !dbg !2595
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2595
  %67 = load i32, i32* %index.i, align 4, !dbg !2596
  %idxprom6.i = zext i32 %67 to i64, !dbg !2595
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2595
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2595
  %69 = load i32, i32* %flags.addr.i, align 4, !dbg !2597
  %70 = load i64, i64* %size.addr.i, align 8, !dbg !2598
  store %struct.kmem_cache* %68, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %69, i32* %flags.addr.i17.i, align 4
  store i64 %70, i64* %size.addr.i18.i, align 8
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2599
  %72 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2600
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %71, i32 %72) #11, !dbg !2601
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2601
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2601
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2601
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2601
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2325
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2602
  %74 = load i8*, i8** %ret.i.i, align 8, !dbg !2603
  %75 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2604
  %76 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2605
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %73, i8* %74, i64 %75, i32 %76) #11, !dbg !2606
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2607
  %77 = load i8*, i8** %ret.i.i, align 8, !dbg !2608
  store i8* %77, i8** %retval.i, align 8, !dbg !2609
  br label %kmalloc.exit, !dbg !2609

if.end9.i:                                        ; preds = %if.else
  %78 = load i64, i64* %size.addr.i, align 8, !dbg !2610
  %79 = load i32, i32* %flags.addr.i, align 4, !dbg !2611
  %call10.i = call noalias i8* @__kmalloc(i64 %78, i32 %79) #11, !dbg !2612
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2612
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2612
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2612
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2612
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2613
  br label %kmalloc.exit, !dbg !2613

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %80 = load i8*, i8** %retval.i, align 8, !dbg !2614
  store i8* %80, i8** %dst_ptr, align 8, !dbg !2615
  %81 = load i8*, i8** %dst_ptr, align 8, !dbg !2616
  %tobool13 = icmp ne i8* %81, null, !dbg !2616
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2618

if.then14:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !2619
  br label %return, !dbg !2619

if.end15:                                         ; preds = %kmalloc.exit
  %82 = load i8*, i8** %dst_ptr, align 8, !dbg !2620
  %83 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2621
  %84 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %83, i32 0, i32 4, !dbg !2622
  %pointer16 = bitcast %union.anon.38* %84 to i8**, !dbg !2622
  store i8* %82, i8** %pointer16, align 8, !dbg !2623
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then9
  %85 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2624
  %type18 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %85, i32 0, i32 3, !dbg !2626
  %86 = load i32, i32* %type18, align 4, !dbg !2626
  %cmp19 = icmp eq i32 %86, 4, !dbg !2627
  br i1 %cmp19, label %if.then20, label %if.else30, !dbg !2628

if.then20:                                        ; preds = %if.end17
  %87 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2629
  %length21 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %87, i32 0, i32 1, !dbg !2631
  %88 = load i64, i64* %length21, align 8, !dbg !2631
  %div = udiv i64 %88, 8, !dbg !2632
  store i64 %div, i64* %nval, align 8, !dbg !2633
  %89 = load i8*, i8** %dst_ptr, align 8, !dbg !2634
  %90 = bitcast i8* %89 to i8**, !dbg !2634
  %91 = load i8*, i8** %pointer, align 8, !dbg !2636
  %92 = bitcast i8* %91 to i8**, !dbg !2636
  %93 = load i64, i64* %nval, align 8, !dbg !2637
  %call22 = call zeroext i1 @property_copy_string_array(i8** %90, i8** %92, i64 %93) #8, !dbg !2638
  br i1 %call22, label %if.end29, label %if.then23, !dbg !2639

if.then23:                                        ; preds = %if.then20
  %94 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2640
  %is_inline24 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %94, i32 0, i32 2, !dbg !2643
  %95 = load i8, i8* %is_inline24, align 8, !dbg !2643
  %tobool25 = trunc i8 %95 to i1, !dbg !2643
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !2644

if.then26:                                        ; preds = %if.then23
  %96 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2645
  %97 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %96, i32 0, i32 4, !dbg !2646
  %pointer27 = bitcast %union.anon.38* %97 to i8**, !dbg !2646
  %98 = load i8*, i8** %pointer27, align 8, !dbg !2646
  call void @kfree(i8* %98) #8, !dbg !2647
  br label %if.end28, !dbg !2647

if.end28:                                         ; preds = %if.then26, %if.then23
  store i32 -12, i32* %retval, align 4, !dbg !2648
  br label %return, !dbg !2648

if.end29:                                         ; preds = %if.then20
  br label %if.end32, !dbg !2649

if.else30:                                        ; preds = %if.end17
  %99 = load i8*, i8** %dst_ptr, align 8, !dbg !2650
  %100 = load i8*, i8** %pointer, align 8, !dbg !2652
  %101 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2653
  %length31 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %101, i32 0, i32 1, !dbg !2654
  %102 = load i64, i64* %length31, align 8, !dbg !2654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %99, i8* align 1 %100, i64 %102, i1 false), !dbg !2655
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.end29
  %103 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2656
  %length33 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %103, i32 0, i32 1, !dbg !2657
  %104 = load i64, i64* %length33, align 8, !dbg !2657
  %105 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2658
  %length34 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %105, i32 0, i32 1, !dbg !2659
  store i64 %104, i64* %length34, align 8, !dbg !2660
  %106 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2661
  %type35 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %106, i32 0, i32 3, !dbg !2662
  %107 = load i32, i32* %type35, align 4, !dbg !2662
  %108 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2663
  %type36 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %108, i32 0, i32 3, !dbg !2664
  store i32 %107, i32* %type36, align 4, !dbg !2665
  %109 = load %struct.property_entry*, %struct.property_entry** %src.addr, align 8, !dbg !2666
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %109, i32 0, i32 0, !dbg !2667
  %110 = load i8*, i8** %name, align 8, !dbg !2667
  %call37 = call noalias i8* @kstrdup(i8* %110, i32 3264) #8, !dbg !2668
  %111 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2669
  %name38 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %111, i32 0, i32 0, !dbg !2670
  store i8* %call37, i8** %name38, align 8, !dbg !2671
  %112 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2672
  %name39 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %112, i32 0, i32 0, !dbg !2674
  %113 = load i8*, i8** %name39, align 8, !dbg !2674
  %tobool40 = icmp ne i8* %113, null, !dbg !2672
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !2675

if.then41:                                        ; preds = %if.end32
  %114 = load %struct.property_entry*, %struct.property_entry** %dst.addr, align 8, !dbg !2676
  call void @property_entry_free_data(%struct.property_entry* %114) #8, !dbg !2678
  store i32 -12, i32* %retval, align 4, !dbg !2679
  br label %return, !dbg !2679

if.end42:                                         ; preds = %if.end32
  store i32 0, i32* %retval, align 4, !dbg !2680
  br label %return, !dbg !2680

return:                                           ; preds = %if.end42, %if.then41, %if.end28, %if.then14, %if.then5, %if.then
  %115 = load i32, i32* %retval, align 4, !dbg !2681
  ret i32 %115, !dbg !2681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @property_entry_free_data(%struct.property_entry* %p) #0 !dbg !2682 {
entry:
  %p.addr = alloca %struct.property_entry*, align 8
  %src_str = alloca i8**, align 8
  %i = alloca i64, align 8
  %nval = alloca i64, align 8
  store %struct.property_entry* %p, %struct.property_entry** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %p.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.declare(metadata i8*** %src_str, metadata !2687, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.declare(metadata i64* %i, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.declare(metadata i64* %nval, metadata !2693, metadata !DIExpression()), !dbg !2694
  %0 = load %struct.property_entry*, %struct.property_entry** %p.addr, align 8, !dbg !2695
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %0, i32 0, i32 3, !dbg !2697
  %1 = load i32, i32* %type, align 4, !dbg !2697
  %cmp = icmp eq i32 %1, 4, !dbg !2698
  br i1 %cmp, label %if.then, label %if.end, !dbg !2699

if.then:                                          ; preds = %entry
  %2 = load %struct.property_entry*, %struct.property_entry** %p.addr, align 8, !dbg !2700
  %call = call i8* @property_get_pointer(%struct.property_entry* %2) #8, !dbg !2702
  %3 = bitcast i8* %call to i8**, !dbg !2702
  store i8** %3, i8*** %src_str, align 8, !dbg !2703
  %4 = load %struct.property_entry*, %struct.property_entry** %p.addr, align 8, !dbg !2704
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %4, i32 0, i32 1, !dbg !2705
  %5 = load i64, i64* %length, align 8, !dbg !2705
  %div = udiv i64 %5, 8, !dbg !2706
  store i64 %div, i64* %nval, align 8, !dbg !2707
  store i64 0, i64* %i, align 8, !dbg !2708
  br label %for.cond, !dbg !2710

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i64, i64* %i, align 8, !dbg !2711
  %7 = load i64, i64* %nval, align 8, !dbg !2713
  %cmp1 = icmp ult i64 %6, %7, !dbg !2714
  br i1 %cmp1, label %for.body, label %for.end, !dbg !2715

for.body:                                         ; preds = %for.cond
  %8 = load i8**, i8*** %src_str, align 8, !dbg !2716
  %9 = load i64, i64* %i, align 8, !dbg !2717
  %arrayidx = getelementptr i8*, i8** %8, i64 %9, !dbg !2716
  %10 = load i8*, i8** %arrayidx, align 8, !dbg !2716
  call void @kfree(i8* %10) #8, !dbg !2718
  br label %for.inc, !dbg !2718

for.inc:                                          ; preds = %for.body
  %11 = load i64, i64* %i, align 8, !dbg !2719
  %inc = add i64 %11, 1, !dbg !2719
  store i64 %inc, i64* %i, align 8, !dbg !2719
  br label %for.cond, !dbg !2720, !llvm.loop !2721

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2723

if.end:                                           ; preds = %for.end, %entry
  %12 = load %struct.property_entry*, %struct.property_entry** %p.addr, align 8, !dbg !2724
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %12, i32 0, i32 2, !dbg !2726
  %13 = load i8, i8* %is_inline, align 8, !dbg !2726
  %tobool = trunc i8 %13 to i1, !dbg !2726
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2727

if.then2:                                         ; preds = %if.end
  %14 = load %struct.property_entry*, %struct.property_entry** %p.addr, align 8, !dbg !2728
  %15 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %14, i32 0, i32 4, !dbg !2729
  %pointer = bitcast %union.anon.38* %15 to i8**, !dbg !2729
  %16 = load i8*, i8** %pointer, align 8, !dbg !2729
  call void @kfree(i8* %16) #8, !dbg !2730
  br label %if.end3, !dbg !2730

if.end3:                                          ; preds = %if.then2, %if.end
  %17 = load %struct.property_entry*, %struct.property_entry** %p.addr, align 8, !dbg !2731
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %17, i32 0, i32 0, !dbg !2732
  %18 = load i8*, i8** %name, align 8, !dbg !2732
  call void @kfree(i8* %18) #8, !dbg !2733
  ret void, !dbg !2734
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @property_entries_free(%struct.property_entry* %properties) #0 !dbg !2735 {
entry:
  %properties.addr = alloca %struct.property_entry*, align 8
  %p = alloca %struct.property_entry*, align 8
  store %struct.property_entry* %properties, %struct.property_entry** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %properties.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.declare(metadata %struct.property_entry** %p, metadata !2738, metadata !DIExpression()), !dbg !2739
  %0 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !2740
  %tobool = icmp ne %struct.property_entry* %0, null, !dbg !2740
  br i1 %tobool, label %if.end, label %if.then, !dbg !2742

if.then:                                          ; preds = %entry
  br label %return, !dbg !2743

if.end:                                           ; preds = %entry
  %1 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !2744
  store %struct.property_entry* %1, %struct.property_entry** %p, align 8, !dbg !2746
  br label %for.cond, !dbg !2747

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2748
  %name = getelementptr inbounds %struct.property_entry, %struct.property_entry* %2, i32 0, i32 0, !dbg !2750
  %3 = load i8*, i8** %name, align 8, !dbg !2750
  %tobool1 = icmp ne i8* %3, null, !dbg !2751
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2751

for.body:                                         ; preds = %for.cond
  %4 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2752
  call void @property_entry_free_data(%struct.property_entry* %4) #8, !dbg !2753
  br label %for.inc, !dbg !2753

for.inc:                                          ; preds = %for.body
  %5 = load %struct.property_entry*, %struct.property_entry** %p, align 8, !dbg !2754
  %incdec.ptr = getelementptr %struct.property_entry, %struct.property_entry* %5, i32 1, !dbg !2754
  store %struct.property_entry* %incdec.ptr, %struct.property_entry** %p, align 8, !dbg !2754
  br label %for.cond, !dbg !2755, !llvm.loop !2756

for.end:                                          ; preds = %for.cond
  %6 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !2758
  %7 = bitcast %struct.property_entry* %6 to i8*, !dbg !2758
  call void @kfree(i8* %7) #8, !dbg !2759
  br label %return, !dbg !2760

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2760
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.software_node* @software_node_find_by_name(%struct.software_node* %parent, i8* %name) #0 !dbg !2761 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !2136, metadata !DIExpression()), !dbg !2764
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2144, metadata !DIExpression()), !dbg !2766
  %retval = alloca %struct.software_node*, align 8
  %parent.addr = alloca %struct.software_node*, align 8
  %name.addr = alloca i8*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %k = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.kobject*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.swnode*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp25 = alloca %struct.kobject*, align 8
  store %struct.software_node* %parent, %struct.software_node** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %parent.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !2772, metadata !DIExpression()), !dbg !2773
  store %struct.swnode* null, %struct.swnode** %swnode, align 8, !dbg !2773
  call void @llvm.dbg.declare(metadata %struct.kobject** %k, metadata !2774, metadata !DIExpression()), !dbg !2775
  %0 = load i8*, i8** %name.addr, align 8, !dbg !2776
  %tobool = icmp ne i8* %0, null, !dbg !2776
  br i1 %tobool, label %if.end, label %if.then, !dbg !2778

if.then:                                          ; preds = %entry
  store %struct.software_node* null, %struct.software_node** %retval, align 8, !dbg !2779
  br label %return, !dbg !2779

if.end:                                           ; preds = %entry
  %1 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2780
  %list_lock = getelementptr inbounds %struct.kset, %struct.kset* %1, i32 0, i32 1, !dbg !2781
  store %struct.spinlock* %list_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2782, !srcloc !2162
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2783
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !2783
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !2783
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2784, metadata !DIExpression()), !dbg !2787
  %4 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2787
  %list = getelementptr inbounds %struct.kset, %struct.kset* %4, i32 0, i32 0, !dbg !2787
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !2787
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2787
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !2787
  store i8* %6, i8** %__mptr, align 8, !dbg !2787
  br label %do.body, !dbg !2787

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2788

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !2787
  %add.ptr = getelementptr i8, i8* %7, i64 -8, !dbg !2787
  %8 = bitcast i8* %add.ptr to %struct.kobject*, !dbg !2787
  store %struct.kobject* %8, %struct.kobject** %tmp, align 8, !dbg !2788
  %9 = load %struct.kobject*, %struct.kobject** %tmp, align 8, !dbg !2787
  store %struct.kobject* %9, %struct.kobject** %k, align 8, !dbg !2790
  br label %for.cond, !dbg !2790

for.cond:                                         ; preds = %do.end24, %do.end
  %10 = load %struct.kobject*, %struct.kobject** %k, align 8, !dbg !2791
  %entry1 = getelementptr inbounds %struct.kobject, %struct.kobject* %10, i32 0, i32 1, !dbg !2791
  %11 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2791
  %list2 = getelementptr inbounds %struct.kset, %struct.kset* %11, i32 0, i32 0, !dbg !2791
  %cmp = icmp eq %struct.list_head* %entry1, %list2, !dbg !2791
  %lnot = xor i1 %cmp, true, !dbg !2791
  br i1 %lnot, label %for.body, label %for.end, !dbg !2790

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !2793, metadata !DIExpression()), !dbg !2796
  %12 = load %struct.kobject*, %struct.kobject** %k, align 8, !dbg !2796
  %13 = bitcast %struct.kobject* %12 to i8*, !dbg !2796
  store i8* %13, i8** %__mptr3, align 8, !dbg !2796
  br label %do.body4, !dbg !2796

do.body4:                                         ; preds = %for.body
  br label %do.end5, !dbg !2797

do.end5:                                          ; preds = %do.body4
  %14 = load i8*, i8** %__mptr3, align 8, !dbg !2796
  %add.ptr7 = getelementptr i8, i8* %14, i64 -8, !dbg !2796
  %15 = bitcast i8* %add.ptr7 to %struct.swnode*, !dbg !2796
  store %struct.swnode* %15, %struct.swnode** %tmp6, align 8, !dbg !2797
  %16 = load %struct.swnode*, %struct.swnode** %tmp6, align 8, !dbg !2796
  store %struct.swnode* %16, %struct.swnode** %swnode, align 8, !dbg !2799
  %17 = load %struct.software_node*, %struct.software_node** %parent.addr, align 8, !dbg !2800
  %18 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2802
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %18, i32 0, i32 3, !dbg !2803
  %19 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !2803
  %parent8 = getelementptr inbounds %struct.software_node, %struct.software_node* %19, i32 0, i32 1, !dbg !2804
  %20 = load %struct.software_node*, %struct.software_node** %parent8, align 8, !dbg !2804
  %cmp9 = icmp eq %struct.software_node* %17, %20, !dbg !2805
  br i1 %cmp9, label %land.lhs.true, label %if.end19, !dbg !2806

land.lhs.true:                                    ; preds = %do.end5
  %21 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2807
  %node10 = getelementptr inbounds %struct.swnode, %struct.swnode* %21, i32 0, i32 3, !dbg !2808
  %22 = load %struct.software_node*, %struct.software_node** %node10, align 8, !dbg !2808
  %name11 = getelementptr inbounds %struct.software_node, %struct.software_node* %22, i32 0, i32 0, !dbg !2809
  %23 = load i8*, i8** %name11, align 8, !dbg !2809
  %tobool12 = icmp ne i8* %23, null, !dbg !2807
  br i1 %tobool12, label %land.lhs.true13, label %if.end19, !dbg !2810

land.lhs.true13:                                  ; preds = %land.lhs.true
  %24 = load i8*, i8** %name.addr, align 8, !dbg !2811
  %25 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2812
  %node14 = getelementptr inbounds %struct.swnode, %struct.swnode* %25, i32 0, i32 3, !dbg !2813
  %26 = load %struct.software_node*, %struct.software_node** %node14, align 8, !dbg !2813
  %name15 = getelementptr inbounds %struct.software_node, %struct.software_node* %26, i32 0, i32 0, !dbg !2814
  %27 = load i8*, i8** %name15, align 8, !dbg !2814
  %call = call i32 @strcmp(i8* %24, i8* %27) #8, !dbg !2815
  %tobool16 = icmp ne i32 %call, 0, !dbg !2815
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !2816

if.then17:                                        ; preds = %land.lhs.true13
  %28 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2817
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %28, i32 0, i32 1, !dbg !2819
  %call18 = call %struct.kobject* @kobject_get(%struct.kobject* %kobj) #8, !dbg !2820
  br label %for.end, !dbg !2821

if.end19:                                         ; preds = %land.lhs.true13, %land.lhs.true, %do.end5
  store %struct.swnode* null, %struct.swnode** %swnode, align 8, !dbg !2822
  br label %for.inc, !dbg !2823

for.inc:                                          ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !2824, metadata !DIExpression()), !dbg !2826
  %29 = load %struct.kobject*, %struct.kobject** %k, align 8, !dbg !2826
  %entry21 = getelementptr inbounds %struct.kobject, %struct.kobject* %29, i32 0, i32 1, !dbg !2826
  %next22 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry21, i32 0, i32 0, !dbg !2826
  %30 = load %struct.list_head*, %struct.list_head** %next22, align 8, !dbg !2826
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !2826
  store i8* %31, i8** %__mptr20, align 8, !dbg !2826
  br label %do.body23, !dbg !2826

do.body23:                                        ; preds = %for.inc
  br label %do.end24, !dbg !2827

do.end24:                                         ; preds = %do.body23
  %32 = load i8*, i8** %__mptr20, align 8, !dbg !2826
  %add.ptr26 = getelementptr i8, i8* %32, i64 -8, !dbg !2826
  %33 = bitcast i8* %add.ptr26 to %struct.kobject*, !dbg !2826
  store %struct.kobject* %33, %struct.kobject** %tmp25, align 8, !dbg !2827
  %34 = load %struct.kobject*, %struct.kobject** %tmp25, align 8, !dbg !2826
  store %struct.kobject* %34, %struct.kobject** %k, align 8, !dbg !2791
  br label %for.cond, !dbg !2791, !llvm.loop !2829

for.end:                                          ; preds = %if.then17, %for.cond
  %35 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !2831
  %list_lock27 = getelementptr inbounds %struct.kset, %struct.kset* %35, i32 0, i32 1, !dbg !2832
  store %struct.spinlock* %list_lock27, %struct.spinlock** %lock.addr.i30, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !2833, !srcloc !2201
  %36 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !2834
  %37 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %36, i32 0, i32 0, !dbg !2834
  %rlock.i31 = bitcast %union.anon* %37 to %struct.raw_spinlock*, !dbg !2834
  %38 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2835
  %tobool28 = icmp ne %struct.swnode* %38, null, !dbg !2835
  br i1 %tobool28, label %cond.true, label %cond.false, !dbg !2835

cond.true:                                        ; preds = %for.end
  %39 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2836
  %node29 = getelementptr inbounds %struct.swnode, %struct.swnode* %39, i32 0, i32 3, !dbg !2837
  %40 = load %struct.software_node*, %struct.software_node** %node29, align 8, !dbg !2837
  br label %cond.end, !dbg !2835

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !2835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.software_node* [ %40, %cond.true ], [ null, %cond.false ], !dbg !2835
  store %struct.software_node* %cond, %struct.software_node** %retval, align 8, !dbg !2838
  br label %return, !dbg !2838

return:                                           ; preds = %cond.end, %if.then
  %41 = load %struct.software_node*, %struct.software_node** %retval, align 8, !dbg !2839
  ret %struct.software_node* %41, !dbg !2839
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @software_node_register_nodes(%struct.software_node* %nodes) #0 !dbg !2840 {
entry:
  %retval = alloca i32, align 4
  %nodes.addr = alloca %struct.software_node*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.software_node* %nodes, %struct.software_node** %nodes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %nodes.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2847, metadata !DIExpression()), !dbg !2848
  store i32 0, i32* %i, align 4, !dbg !2849
  br label %for.cond, !dbg !2851

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.software_node*, %struct.software_node** %nodes.addr, align 8, !dbg !2852
  %1 = load i32, i32* %i, align 4, !dbg !2854
  %idxprom = sext i32 %1 to i64, !dbg !2852
  %arrayidx = getelementptr %struct.software_node, %struct.software_node* %0, i64 %idxprom, !dbg !2852
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %arrayidx, i32 0, i32 0, !dbg !2855
  %2 = load i8*, i8** %name, align 8, !dbg !2855
  %tobool = icmp ne i8* %2, null, !dbg !2856
  br i1 %tobool, label %for.body, label %for.end, !dbg !2856

for.body:                                         ; preds = %for.cond
  %3 = load %struct.software_node*, %struct.software_node** %nodes.addr, align 8, !dbg !2857
  %4 = load i32, i32* %i, align 4, !dbg !2859
  %idxprom1 = sext i32 %4 to i64, !dbg !2857
  %arrayidx2 = getelementptr %struct.software_node, %struct.software_node* %3, i64 %idxprom1, !dbg !2857
  %call = call i32 @software_node_register(%struct.software_node* %arrayidx2) #8, !dbg !2860
  store i32 %call, i32* %ret, align 4, !dbg !2861
  %5 = load i32, i32* %ret, align 4, !dbg !2862
  %tobool3 = icmp ne i32 %5, 0, !dbg !2862
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2864

if.then:                                          ; preds = %for.body
  %6 = load %struct.software_node*, %struct.software_node** %nodes.addr, align 8, !dbg !2865
  call void @software_node_unregister_nodes(%struct.software_node* %6) #8, !dbg !2867
  %7 = load i32, i32* %ret, align 4, !dbg !2868
  store i32 %7, i32* %retval, align 4, !dbg !2869
  br label %return, !dbg !2869

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2870

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !2871
  %inc = add i32 %8, 1, !dbg !2871
  store i32 %inc, i32* %i, align 4, !dbg !2871
  br label %for.cond, !dbg !2872, !llvm.loop !2873

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2875
  br label %return, !dbg !2875

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2876
  ret i32 %9, !dbg !2876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @software_node_register(%struct.software_node* %node) #0 !dbg !2877 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.software_node*, align 8
  %parent = alloca %struct.swnode*, align 8
  store %struct.software_node* %node, %struct.software_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %node.addr, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata %struct.swnode** %parent, metadata !2880, metadata !DIExpression()), !dbg !2881
  %0 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2882
  %parent1 = getelementptr inbounds %struct.software_node, %struct.software_node* %0, i32 0, i32 1, !dbg !2883
  %1 = load %struct.software_node*, %struct.software_node** %parent1, align 8, !dbg !2883
  %call = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %1) #8, !dbg !2884
  store %struct.swnode* %call, %struct.swnode** %parent, align 8, !dbg !2881
  %2 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2885
  %call2 = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %2) #8, !dbg !2887
  %tobool = icmp ne %struct.swnode* %call2, null, !dbg !2887
  br i1 %tobool, label %if.then, label %if.end, !dbg !2888

if.then:                                          ; preds = %entry
  store i32 -17, i32* %retval, align 4, !dbg !2889
  br label %return, !dbg !2889

if.end:                                           ; preds = %entry
  %3 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2890
  %4 = load %struct.swnode*, %struct.swnode** %parent, align 8, !dbg !2891
  %call3 = call %struct.fwnode_handle* @swnode_register(%struct.software_node* %3, %struct.swnode* %4, i32 0) #8, !dbg !2892
  %5 = bitcast %struct.fwnode_handle* %call3 to i8*, !dbg !2892
  %call4 = call i32 @PTR_ERR_OR_ZERO(i8* %5) #8, !dbg !2893
  store i32 %call4, i32* %retval, align 4, !dbg !2894
  br label %return, !dbg !2894

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2895
  ret i32 %6, !dbg !2895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @software_node_unregister_nodes(%struct.software_node* %nodes) #0 !dbg !2896 {
entry:
  %nodes.addr = alloca %struct.software_node*, align 8
  %i = alloca i32, align 4
  store %struct.software_node* %nodes, %struct.software_node** %nodes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %nodes.addr, metadata !2899, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2901, metadata !DIExpression()), !dbg !2902
  store i32 0, i32* %i, align 4, !dbg !2903
  br label %for.cond, !dbg !2905

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.software_node*, %struct.software_node** %nodes.addr, align 8, !dbg !2906
  %1 = load i32, i32* %i, align 4, !dbg !2908
  %idxprom = sext i32 %1 to i64, !dbg !2906
  %arrayidx = getelementptr %struct.software_node, %struct.software_node* %0, i64 %idxprom, !dbg !2906
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %arrayidx, i32 0, i32 0, !dbg !2909
  %2 = load i8*, i8** %name, align 8, !dbg !2909
  %tobool = icmp ne i8* %2, null, !dbg !2910
  br i1 %tobool, label %for.body, label %for.end, !dbg !2910

for.body:                                         ; preds = %for.cond
  %3 = load %struct.software_node*, %struct.software_node** %nodes.addr, align 8, !dbg !2911
  %4 = load i32, i32* %i, align 4, !dbg !2912
  %idxprom1 = sext i32 %4 to i64, !dbg !2911
  %arrayidx2 = getelementptr %struct.software_node, %struct.software_node* %3, i64 %idxprom1, !dbg !2911
  call void @software_node_unregister(%struct.software_node* %arrayidx2) #8, !dbg !2913
  br label %for.inc, !dbg !2913

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !2914
  %inc = add i32 %5, 1, !dbg !2914
  store i32 %inc, i32* %i, align 4, !dbg !2914
  br label %for.cond, !dbg !2915, !llvm.loop !2916

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @software_node_unregister(%struct.software_node* %node) #0 !dbg !2919 {
entry:
  %node.addr = alloca %struct.software_node*, align 8
  %swnode = alloca %struct.swnode*, align 8
  store %struct.software_node* %node, %struct.software_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %node.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !2922, metadata !DIExpression()), !dbg !2923
  %0 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !2924
  %call = call %struct.swnode* @software_node_to_swnode(%struct.software_node* %0) #8, !dbg !2925
  store %struct.swnode* %call, %struct.swnode** %swnode, align 8, !dbg !2926
  %1 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2927
  %tobool = icmp ne %struct.swnode* %1, null, !dbg !2927
  br i1 %tobool, label %if.then, label %if.end, !dbg !2929

if.then:                                          ; preds = %entry
  %2 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !2930
  %fwnode = getelementptr inbounds %struct.swnode, %struct.swnode* %2, i32 0, i32 2, !dbg !2931
  call void @fwnode_remove_software_node(%struct.fwnode_handle* %fwnode) #8, !dbg !2932
  br label %if.end, !dbg !2932

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2933
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @software_node_register_node_group(%struct.software_node** %node_group) #0 !dbg !2934 {
entry:
  %retval = alloca i32, align 4
  %node_group.addr = alloca %struct.software_node**, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.software_node** %node_group, %struct.software_node*** %node_group.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node*** %node_group.addr, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2940, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2942, metadata !DIExpression()), !dbg !2943
  %0 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2944
  %tobool = icmp ne %struct.software_node** %0, null, !dbg !2944
  br i1 %tobool, label %if.end, label %if.then, !dbg !2946

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2947
  br label %return, !dbg !2947

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2948
  br label %for.cond, !dbg !2950

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2951
  %2 = load i32, i32* %i, align 4, !dbg !2953
  %idxprom = zext i32 %2 to i64, !dbg !2951
  %arrayidx = getelementptr %struct.software_node*, %struct.software_node** %1, i64 %idxprom, !dbg !2951
  %3 = load %struct.software_node*, %struct.software_node** %arrayidx, align 8, !dbg !2951
  %tobool1 = icmp ne %struct.software_node* %3, null, !dbg !2954
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2954

for.body:                                         ; preds = %for.cond
  %4 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2955
  %5 = load i32, i32* %i, align 4, !dbg !2957
  %idxprom2 = zext i32 %5 to i64, !dbg !2955
  %arrayidx3 = getelementptr %struct.software_node*, %struct.software_node** %4, i64 %idxprom2, !dbg !2955
  %6 = load %struct.software_node*, %struct.software_node** %arrayidx3, align 8, !dbg !2955
  %call = call i32 @software_node_register(%struct.software_node* %6) #8, !dbg !2958
  store i32 %call, i32* %ret, align 4, !dbg !2959
  %7 = load i32, i32* %ret, align 4, !dbg !2960
  %tobool4 = icmp ne i32 %7, 0, !dbg !2960
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2962

if.then5:                                         ; preds = %for.body
  %8 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2963
  call void @software_node_unregister_node_group(%struct.software_node** %8) #8, !dbg !2965
  %9 = load i32, i32* %ret, align 4, !dbg !2966
  store i32 %9, i32* %retval, align 4, !dbg !2967
  br label %return, !dbg !2967

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2968

for.inc:                                          ; preds = %if.end6
  %10 = load i32, i32* %i, align 4, !dbg !2969
  %inc = add i32 %10, 1, !dbg !2969
  store i32 %inc, i32* %i, align 4, !dbg !2969
  br label %for.cond, !dbg !2970, !llvm.loop !2971

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !2973
  br label %return, !dbg !2973

return:                                           ; preds = %for.end, %if.then5, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !2974
  ret i32 %11, !dbg !2974
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @software_node_unregister_node_group(%struct.software_node** %node_group) #0 !dbg !2975 {
entry:
  %node_group.addr = alloca %struct.software_node**, align 8
  %i = alloca i32, align 4
  store %struct.software_node** %node_group, %struct.software_node*** %node_group.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node*** %node_group.addr, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2980, metadata !DIExpression()), !dbg !2981
  %0 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2982
  %tobool = icmp ne %struct.software_node** %0, null, !dbg !2982
  br i1 %tobool, label %if.end, label %if.then, !dbg !2984

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !2985

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2986
  br label %for.cond, !dbg !2988

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2989
  %2 = load i32, i32* %i, align 4, !dbg !2991
  %idxprom = zext i32 %2 to i64, !dbg !2989
  %arrayidx = getelementptr %struct.software_node*, %struct.software_node** %1, i64 %idxprom, !dbg !2989
  %3 = load %struct.software_node*, %struct.software_node** %arrayidx, align 8, !dbg !2989
  %tobool1 = icmp ne %struct.software_node* %3, null, !dbg !2992
  br i1 %tobool1, label %for.body, label %for.end, !dbg !2992

for.body:                                         ; preds = %for.cond
  %4 = load %struct.software_node**, %struct.software_node*** %node_group.addr, align 8, !dbg !2993
  %5 = load i32, i32* %i, align 4, !dbg !2994
  %idxprom2 = zext i32 %5 to i64, !dbg !2993
  %arrayidx3 = getelementptr %struct.software_node*, %struct.software_node** %4, i64 %idxprom2, !dbg !2993
  %6 = load %struct.software_node*, %struct.software_node** %arrayidx3, align 8, !dbg !2993
  call void @software_node_unregister(%struct.software_node* %6) #8, !dbg !2995
  br label %for.inc, !dbg !2995

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !2996
  %inc = add i32 %7, 1, !dbg !2996
  store i32 %inc, i32* %i, align 4, !dbg !2996
  br label %for.cond, !dbg !2997, !llvm.loop !2998

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3000
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #0 !dbg !3001 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3006
  %call = call zeroext i1 @IS_ERR(i8* %0) #8, !dbg !3008
  br i1 %call, label %if.then, label %if.else, !dbg !3009

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3010
  %call1 = call i64 @PTR_ERR(i8* %1) #8, !dbg !3011
  %conv = trunc i64 %call1 to i32, !dbg !3011
  store i32 %conv, i32* %retval, align 4, !dbg !3012
  br label %return, !dbg !3012

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3013
  br label %return, !dbg !3013

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3014
  ret i32 %2, !dbg !3014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @swnode_register(%struct.software_node* %node, %struct.swnode* %parent, i32 %allocated) #0 !dbg !3015 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %node.addr = alloca %struct.software_node*, align 8
  %parent.addr = alloca %struct.swnode*, align 8
  %allocated.addr = alloca i32, align 4
  %swnode = alloca %struct.swnode*, align 8
  %ret = alloca i32, align 4
  store %struct.software_node* %node, %struct.software_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %node.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  store %struct.swnode* %parent, %struct.swnode** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.swnode** %parent.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  store i32 %allocated, i32* %allocated.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %allocated.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3026, metadata !DIExpression()), !dbg !3027
  %call = call i8* @kzalloc(i64 168, i32 3264) #8, !dbg !3028
  %0 = bitcast i8* %call to %struct.swnode*, !dbg !3028
  store %struct.swnode* %0, %struct.swnode** %swnode, align 8, !dbg !3029
  %1 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3030
  %tobool = icmp ne %struct.swnode* %1, null, !dbg !3030
  br i1 %tobool, label %if.end, label %if.then, !dbg !3032

if.then:                                          ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !3033
  br label %out_err, !dbg !3035

if.end:                                           ; preds = %entry
  %2 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3036
  %tobool1 = icmp ne %struct.swnode* %2, null, !dbg !3036
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !3036

cond.true:                                        ; preds = %if.end
  %3 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3036
  %child_ids = getelementptr inbounds %struct.swnode, %struct.swnode* %3, i32 0, i32 4, !dbg !3036
  br label %cond.end, !dbg !3036

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3036

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.ida* [ %child_ids, %cond.true ], [ @swnode_root_ids, %cond.false ], !dbg !3036
  %call2 = call i32 @ida_alloc_range(%struct.ida* %cond, i32 0, i32 -1, i32 3264) #8, !dbg !3036
  store i32 %call2, i32* %ret, align 4, !dbg !3037
  %4 = load i32, i32* %ret, align 4, !dbg !3038
  %cmp = icmp slt i32 %4, 0, !dbg !3040
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !3041

if.then3:                                         ; preds = %cond.end
  %5 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3042
  %6 = bitcast %struct.swnode* %5 to i8*, !dbg !3042
  call void @kfree(i8* %6) #8, !dbg !3044
  br label %out_err, !dbg !3045

if.end4:                                          ; preds = %cond.end
  %7 = load i32, i32* %ret, align 4, !dbg !3046
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3047
  %id = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 0, !dbg !3048
  store i32 %7, i32* %id, align 8, !dbg !3049
  %9 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !3050
  %10 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3051
  %node5 = getelementptr inbounds %struct.swnode, %struct.swnode* %10, i32 0, i32 3, !dbg !3052
  store %struct.software_node* %9, %struct.software_node** %node5, align 8, !dbg !3053
  %11 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3054
  %12 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3055
  %parent6 = getelementptr inbounds %struct.swnode, %struct.swnode* %12, i32 0, i32 7, !dbg !3056
  store %struct.swnode* %11, %struct.swnode** %parent6, align 8, !dbg !3057
  %13 = load i32, i32* %allocated.addr, align 4, !dbg !3058
  %14 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3059
  %allocated7 = getelementptr inbounds %struct.swnode, %struct.swnode* %14, i32 0, i32 8, !dbg !3060
  %15 = trunc i32 %13 to i8, !dbg !3061
  %bf.load = load i8, i8* %allocated7, align 8, !dbg !3061
  %bf.value = and i8 %15, 1, !dbg !3061
  %bf.clear = and i8 %bf.load, -2, !dbg !3061
  %bf.set = or i8 %bf.clear, %bf.value, !dbg !3061
  store i8 %bf.set, i8* %allocated7, align 8, !dbg !3061
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !3061
  %16 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !3062
  %17 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3063
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %17, i32 0, i32 1, !dbg !3064
  %kset = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 3, !dbg !3065
  store %struct.kset* %16, %struct.kset** %kset, align 8, !dbg !3066
  %18 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3067
  %fwnode = getelementptr inbounds %struct.swnode, %struct.swnode* %18, i32 0, i32 2, !dbg !3068
  %ops = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %fwnode, i32 0, i32 1, !dbg !3069
  store %struct.fwnode_operations* bitcast ({ %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }* @software_node_ops to %struct.fwnode_operations*), %struct.fwnode_operations** %ops, align 8, !dbg !3070
  %19 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3071
  %child_ids8 = getelementptr inbounds %struct.swnode, %struct.swnode* %19, i32 0, i32 4, !dbg !3072
  call void @ida_init(%struct.ida* %child_ids8) #8, !dbg !3073
  %20 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3074
  %entry9 = getelementptr inbounds %struct.swnode, %struct.swnode* %20, i32 0, i32 5, !dbg !3075
  call void @INIT_LIST_HEAD(%struct.list_head* %entry9) #8, !dbg !3076
  %21 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3077
  %children = getelementptr inbounds %struct.swnode, %struct.swnode* %21, i32 0, i32 6, !dbg !3078
  call void @INIT_LIST_HEAD(%struct.list_head* %children) #8, !dbg !3079
  %22 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !3080
  %name = getelementptr inbounds %struct.software_node, %struct.software_node* %22, i32 0, i32 0, !dbg !3082
  %23 = load i8*, i8** %name, align 8, !dbg !3082
  %tobool10 = icmp ne i8* %23, null, !dbg !3080
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !3083

if.then11:                                        ; preds = %if.end4
  %24 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3084
  %kobj12 = getelementptr inbounds %struct.swnode, %struct.swnode* %24, i32 0, i32 1, !dbg !3085
  %25 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3086
  %tobool13 = icmp ne %struct.swnode* %25, null, !dbg !3086
  br i1 %tobool13, label %cond.true14, label %cond.false16, !dbg !3086

cond.true14:                                      ; preds = %if.then11
  %26 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3087
  %kobj15 = getelementptr inbounds %struct.swnode, %struct.swnode* %26, i32 0, i32 1, !dbg !3088
  br label %cond.end17, !dbg !3086

cond.false16:                                     ; preds = %if.then11
  br label %cond.end17, !dbg !3086

cond.end17:                                       ; preds = %cond.false16, %cond.true14
  %cond18 = phi %struct.kobject* [ %kobj15, %cond.true14 ], [ null, %cond.false16 ], !dbg !3086
  %27 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !3089
  %name19 = getelementptr inbounds %struct.software_node, %struct.software_node* %27, i32 0, i32 0, !dbg !3090
  %28 = load i8*, i8** %name19, align 8, !dbg !3090
  %call20 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj12, %struct.kobj_type* @software_node_type, %struct.kobject* %cond18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %28) #8, !dbg !3091
  store i32 %call20, i32* %ret, align 4, !dbg !3092
  br label %if.end30, !dbg !3093

if.else:                                          ; preds = %if.end4
  %29 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3094
  %kobj21 = getelementptr inbounds %struct.swnode, %struct.swnode* %29, i32 0, i32 1, !dbg !3095
  %30 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3096
  %tobool22 = icmp ne %struct.swnode* %30, null, !dbg !3096
  br i1 %tobool22, label %cond.true23, label %cond.false25, !dbg !3096

cond.true23:                                      ; preds = %if.else
  %31 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3097
  %kobj24 = getelementptr inbounds %struct.swnode, %struct.swnode* %31, i32 0, i32 1, !dbg !3098
  br label %cond.end26, !dbg !3096

cond.false25:                                     ; preds = %if.else
  br label %cond.end26, !dbg !3096

cond.end26:                                       ; preds = %cond.false25, %cond.true23
  %cond27 = phi %struct.kobject* [ %kobj24, %cond.true23 ], [ null, %cond.false25 ], !dbg !3096
  %32 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3099
  %id28 = getelementptr inbounds %struct.swnode, %struct.swnode* %32, i32 0, i32 0, !dbg !3100
  %33 = load i32, i32* %id28, align 8, !dbg !3100
  %call29 = call i32 (%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.kobject* %kobj21, %struct.kobj_type* @software_node_type, %struct.kobject* %cond27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %33) #8, !dbg !3101
  store i32 %call29, i32* %ret, align 4, !dbg !3102
  br label %if.end30

if.end30:                                         ; preds = %cond.end26, %cond.end17
  %34 = load i32, i32* %ret, align 4, !dbg !3103
  %tobool31 = icmp ne i32 %34, 0, !dbg !3103
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !3105

if.then32:                                        ; preds = %if.end30
  %35 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3106
  %kobj33 = getelementptr inbounds %struct.swnode, %struct.swnode* %35, i32 0, i32 1, !dbg !3108
  call void @kobject_put(%struct.kobject* %kobj33) #8, !dbg !3109
  %36 = load i32, i32* %ret, align 4, !dbg !3110
  %conv = sext i32 %36 to i64, !dbg !3110
  %call34 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !3111
  %37 = bitcast i8* %call34 to %struct.fwnode_handle*, !dbg !3111
  store %struct.fwnode_handle* %37, %struct.fwnode_handle** %retval, align 8, !dbg !3112
  br label %return, !dbg !3112

if.end35:                                         ; preds = %if.end30
  %38 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3113
  %tobool36 = icmp ne %struct.swnode* %38, null, !dbg !3113
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !3115

if.then37:                                        ; preds = %if.end35
  %39 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3116
  %entry38 = getelementptr inbounds %struct.swnode, %struct.swnode* %39, i32 0, i32 5, !dbg !3117
  %40 = load %struct.swnode*, %struct.swnode** %parent.addr, align 8, !dbg !3118
  %children39 = getelementptr inbounds %struct.swnode, %struct.swnode* %40, i32 0, i32 6, !dbg !3119
  call void @list_add_tail(%struct.list_head* %entry38, %struct.list_head* %children39) #8, !dbg !3120
  br label %if.end40, !dbg !3120

if.end40:                                         ; preds = %if.then37, %if.end35
  %41 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3121
  %kobj41 = getelementptr inbounds %struct.swnode, %struct.swnode* %41, i32 0, i32 1, !dbg !3122
  %call42 = call i32 @kobject_uevent(%struct.kobject* %kobj41, i32 0) #8, !dbg !3123
  %42 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3124
  %fwnode43 = getelementptr inbounds %struct.swnode, %struct.swnode* %42, i32 0, i32 2, !dbg !3125
  store %struct.fwnode_handle* %fwnode43, %struct.fwnode_handle** %retval, align 8, !dbg !3126
  br label %return, !dbg !3126

out_err:                                          ; preds = %if.then3, %if.then
  call void @llvm.dbg.label(metadata !3127), !dbg !3128
  %43 = load i32, i32* %allocated.addr, align 4, !dbg !3129
  %tobool44 = icmp ne i32 %43, 0, !dbg !3129
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !3131

if.then45:                                        ; preds = %out_err
  %44 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !3132
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %44, i32 0, i32 2, !dbg !3133
  %45 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !3133
  call void @property_entries_free(%struct.property_entry* %45) #8, !dbg !3134
  br label %if.end46, !dbg !3134

if.end46:                                         ; preds = %if.then45, %out_err
  %46 = load i32, i32* %ret, align 4, !dbg !3135
  %conv47 = sext i32 %46 to i64, !dbg !3135
  %call48 = call i8* @ERR_PTR(i64 %conv47) #8, !dbg !3136
  %47 = bitcast i8* %call48 to %struct.fwnode_handle*, !dbg !3136
  store %struct.fwnode_handle* %47, %struct.fwnode_handle** %retval, align 8, !dbg !3137
  br label %return, !dbg !3137

return:                                           ; preds = %if.end46, %if.end40, %if.then32
  %48 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !3138
  ret %struct.fwnode_handle* %48, !dbg !3138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fwnode_remove_software_node(%struct.fwnode_handle* %fwnode) #0 !dbg !3139 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !3144, metadata !DIExpression()), !dbg !3146
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3146
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3146
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3146
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !3146
  br i1 %call, label %cond.true, label %cond.false, !dbg !3146

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3147, metadata !DIExpression()), !dbg !3149
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3149
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3149
  store i8* %3, i8** %__mptr, align 8, !dbg !3149
  br label %do.body, !dbg !3149

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3150

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3149
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !3149
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !3149
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !3150
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !3149
  br label %cond.end, !dbg !3146

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3146

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !3146
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !3146
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !3146
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !3143
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3152
  %tobool = icmp ne %struct.swnode* %8, null, !dbg !3152
  br i1 %tobool, label %if.end, label %if.then, !dbg !3154

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !3155

if.end:                                           ; preds = %cond.end
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3156
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 1, !dbg !3157
  call void @kobject_put(%struct.kobject* %kobj) #8, !dbg !3158
  br label %return, !dbg !3159

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* %properties, %struct.fwnode_handle* %parent) #0 !dbg !3160 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %properties.addr = alloca %struct.property_entry*, align 8
  %parent.addr = alloca %struct.fwnode_handle*, align 8
  %node = alloca %struct.software_node*, align 8
  %p = alloca %struct.swnode*, align 8
  %ret = alloca i32, align 4
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp8 = alloca %struct.swnode*, align 8
  store %struct.property_entry* %properties, %struct.property_entry** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %properties.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  store %struct.fwnode_handle* %parent, %struct.fwnode_handle** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent.addr, metadata !3165, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.declare(metadata %struct.software_node** %node, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.declare(metadata %struct.swnode** %p, metadata !3170, metadata !DIExpression()), !dbg !3171
  store %struct.swnode* null, %struct.swnode** %p, align 8, !dbg !3171
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3172, metadata !DIExpression()), !dbg !3173
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !3174
  %tobool = icmp ne %struct.fwnode_handle* %0, null, !dbg !3174
  br i1 %tobool, label %if.then, label %if.end9, !dbg !3176

if.then:                                          ; preds = %entry
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !3177
  %2 = bitcast %struct.fwnode_handle* %1 to i8*, !dbg !3177
  %call = call zeroext i1 @IS_ERR(i8* %2) #8, !dbg !3180
  br i1 %call, label %if.then1, label %if.end, !dbg !3181

if.then1:                                         ; preds = %if.then
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !3182
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !3182
  %call2 = call i8* @ERR_CAST(i8* %4) #8, !dbg !3183
  %5 = bitcast i8* %call2 to %struct.fwnode_handle*, !dbg !3183
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %retval, align 8, !dbg !3184
  br label %return, !dbg !3184

if.end:                                           ; preds = %if.then
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !3185
  %call3 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %6) #8, !dbg !3187
  br i1 %call3, label %if.end6, label %if.then4, !dbg !3188

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -22) #8, !dbg !3189
  %7 = bitcast i8* %call5 to %struct.fwnode_handle*, !dbg !3189
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %retval, align 8, !dbg !3190
  br label %return, !dbg !3190

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !3191, metadata !DIExpression()), !dbg !3193
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent.addr, align 8, !dbg !3193
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3193
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3193
  %call7 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %9) #8, !dbg !3193
  br i1 %call7, label %cond.true, label %cond.false, !dbg !3193

cond.true:                                        ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3194, metadata !DIExpression()), !dbg !3196
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3196
  %11 = bitcast %struct.fwnode_handle* %10 to i8*, !dbg !3196
  store i8* %11, i8** %__mptr, align 8, !dbg !3196
  br label %do.body, !dbg !3196

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3197

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !3196
  %add.ptr = getelementptr i8, i8* %12, i64 -72, !dbg !3196
  %13 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !3196
  store %struct.swnode* %13, %struct.swnode** %tmp8, align 8, !dbg !3197
  %14 = load %struct.swnode*, %struct.swnode** %tmp8, align 8, !dbg !3196
  br label %cond.end, !dbg !3193

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !3193

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %14, %do.end ], [ null, %cond.false ], !dbg !3193
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !3193
  %15 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !3193
  store %struct.swnode* %15, %struct.swnode** %p, align 8, !dbg !3199
  br label %if.end9, !dbg !3200

if.end9:                                          ; preds = %cond.end, %entry
  %call10 = call i8* @kzalloc(i64 24, i32 3264) #8, !dbg !3201
  %16 = bitcast i8* %call10 to %struct.software_node*, !dbg !3201
  store %struct.software_node* %16, %struct.software_node** %node, align 8, !dbg !3202
  %17 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !3203
  %tobool11 = icmp ne %struct.software_node* %17, null, !dbg !3203
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !3205

if.then12:                                        ; preds = %if.end9
  %call13 = call i8* @ERR_PTR(i64 -12) #8, !dbg !3206
  %18 = bitcast i8* %call13 to %struct.fwnode_handle*, !dbg !3206
  store %struct.fwnode_handle* %18, %struct.fwnode_handle** %retval, align 8, !dbg !3207
  br label %return, !dbg !3207

if.end14:                                         ; preds = %if.end9
  %19 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !3208
  %20 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !3209
  %call15 = call i32 @software_node_register_properties(%struct.software_node* %19, %struct.property_entry* %20) #8, !dbg !3210
  store i32 %call15, i32* %ret, align 4, !dbg !3211
  %21 = load i32, i32* %ret, align 4, !dbg !3212
  %tobool16 = icmp ne i32 %21, 0, !dbg !3212
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !3214

if.then17:                                        ; preds = %if.end14
  %22 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !3215
  %23 = bitcast %struct.software_node* %22 to i8*, !dbg !3215
  call void @kfree(i8* %23) #8, !dbg !3217
  %24 = load i32, i32* %ret, align 4, !dbg !3218
  %conv = sext i32 %24 to i64, !dbg !3218
  %call18 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !3219
  %25 = bitcast i8* %call18 to %struct.fwnode_handle*, !dbg !3219
  store %struct.fwnode_handle* %25, %struct.fwnode_handle** %retval, align 8, !dbg !3220
  br label %return, !dbg !3220

if.end19:                                         ; preds = %if.end14
  %26 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !3221
  %tobool20 = icmp ne %struct.swnode* %26, null, !dbg !3221
  br i1 %tobool20, label %cond.true21, label %cond.false23, !dbg !3221

cond.true21:                                      ; preds = %if.end19
  %27 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !3222
  %node22 = getelementptr inbounds %struct.swnode, %struct.swnode* %27, i32 0, i32 3, !dbg !3223
  %28 = load %struct.software_node*, %struct.software_node** %node22, align 8, !dbg !3223
  br label %cond.end24, !dbg !3221

cond.false23:                                     ; preds = %if.end19
  br label %cond.end24, !dbg !3221

cond.end24:                                       ; preds = %cond.false23, %cond.true21
  %cond25 = phi %struct.software_node* [ %28, %cond.true21 ], [ null, %cond.false23 ], !dbg !3221
  %29 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !3224
  %parent26 = getelementptr inbounds %struct.software_node, %struct.software_node* %29, i32 0, i32 1, !dbg !3225
  store %struct.software_node* %cond25, %struct.software_node** %parent26, align 8, !dbg !3226
  %30 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !3227
  %31 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !3228
  %call27 = call %struct.fwnode_handle* @swnode_register(%struct.software_node* %30, %struct.swnode* %31, i32 1) #8, !dbg !3229
  store %struct.fwnode_handle* %call27, %struct.fwnode_handle** %retval, align 8, !dbg !3230
  br label %return, !dbg !3230

return:                                           ; preds = %cond.end24, %if.then17, %if.then12, %if.then4, %if.then1
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !3231
  ret %struct.fwnode_handle* %32, !dbg !3231
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3232 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3233, metadata !DIExpression()), !dbg !3234
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3235
  %1 = ptrtoint i8* %0 to i64, !dbg !3235
  %2 = inttoptr i64 %1 to i8*, !dbg !3235
  %3 = ptrtoint i8* %2 to i64, !dbg !3235
  %cmp = icmp uge i64 %3, -4095, !dbg !3235
  %lnot = xor i1 %cmp, true, !dbg !3235
  %lnot1 = xor i1 %lnot, true, !dbg !3235
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3235
  %conv = sext i32 %lnot.ext to i64, !dbg !3235
  %tobool = icmp ne i64 %conv, 0, !dbg !3235
  ret i1 %tobool, !dbg !3236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !3237 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3242
  ret i8* %0, !dbg !3243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3244 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2306, metadata !DIExpression()), !dbg !3245
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2320, metadata !DIExpression()), !dbg !3248
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2322, metadata !DIExpression()), !dbg !3249
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2324, metadata !DIExpression()), !dbg !3250
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2326, metadata !DIExpression()), !dbg !3251
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2332, metadata !DIExpression()), !dbg !3253
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2338, metadata !DIExpression()), !dbg !3255
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2347, metadata !DIExpression()), !dbg !3258
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2349, metadata !DIExpression()), !dbg !3259
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2351, metadata !DIExpression()), !dbg !3260
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2353, metadata !DIExpression()), !dbg !3261
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2355, metadata !DIExpression()), !dbg !3262
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2357, metadata !DIExpression()), !dbg !3263
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2359, metadata !DIExpression()), !dbg !3264
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2361, metadata !DIExpression()), !dbg !3265
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3266, metadata !DIExpression()), !dbg !3267
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3268, metadata !DIExpression()), !dbg !3269
  %0 = load i64, i64* %size.addr, align 8, !dbg !3270
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3271
  %or = or i32 %1, 256, !dbg !3272
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3273
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !3274
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3275

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3276
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3277
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3278

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3279
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3280
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3281
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !3282
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3262
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3283
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3284
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3285
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3286
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3287
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3288
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !3289
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3289
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3289
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3289
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3289
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3290
  br label %kmalloc.exit, !dbg !3290

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3291
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3292
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3292
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3293

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3294
  br label %kmalloc_index.exit.i, !dbg !3294

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3295
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3296
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3297

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3298
  br label %kmalloc_index.exit.i, !dbg !3298

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3299
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3300
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3301

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3302
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3303
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3304

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3305
  br label %kmalloc_index.exit.i, !dbg !3305

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3306
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3307
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3308

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3309
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3310
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3311

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3312
  br label %kmalloc_index.exit.i, !dbg !3312

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3313
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3314
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3315

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3316
  br label %kmalloc_index.exit.i, !dbg !3316

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3317
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3318
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3319

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3320
  br label %kmalloc_index.exit.i, !dbg !3320

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3321
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3322
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3323

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3324
  br label %kmalloc_index.exit.i, !dbg !3324

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3325
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3326
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3327

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3328
  br label %kmalloc_index.exit.i, !dbg !3328

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3329
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3330
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3331

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3332
  br label %kmalloc_index.exit.i, !dbg !3332

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3333
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3334
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3335

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3336
  br label %kmalloc_index.exit.i, !dbg !3336

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3337
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3338
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3339

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3340
  br label %kmalloc_index.exit.i, !dbg !3340

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3341
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3342
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3343

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3344
  br label %kmalloc_index.exit.i, !dbg !3344

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3345
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3346
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3347

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3348
  br label %kmalloc_index.exit.i, !dbg !3348

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3349
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3350
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3351

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3352
  br label %kmalloc_index.exit.i, !dbg !3352

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3353
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3354
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3355

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3356
  br label %kmalloc_index.exit.i, !dbg !3356

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3357
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3358
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3359

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3360
  br label %kmalloc_index.exit.i, !dbg !3360

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3361
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3362
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3363

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3364
  br label %kmalloc_index.exit.i, !dbg !3364

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3365
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3366
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3367

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3368
  br label %kmalloc_index.exit.i, !dbg !3368

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3369
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3370
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3371

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3372
  br label %kmalloc_index.exit.i, !dbg !3372

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3373
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3374
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3375

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3376
  br label %kmalloc_index.exit.i, !dbg !3376

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3377
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3378
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3379

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3380
  br label %kmalloc_index.exit.i, !dbg !3380

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3381
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3382
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3383

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3384
  br label %kmalloc_index.exit.i, !dbg !3384

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3385
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3386
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3387

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3388
  br label %kmalloc_index.exit.i, !dbg !3388

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3389
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3390
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3391

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3392
  br label %kmalloc_index.exit.i, !dbg !3392

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3393
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3394
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3395

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3396
  br label %kmalloc_index.exit.i, !dbg !3396

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3397
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3398
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3399

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3400
  br label %kmalloc_index.exit.i, !dbg !3400

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3401
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3402
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3403

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3404
  br label %kmalloc_index.exit.i, !dbg !3404

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3405
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3406
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3407

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3408
  br label %kmalloc_index.exit.i, !dbg !3408

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3409, !srcloc !2574
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !3410, !srcloc !2578
  unreachable, !dbg !3411

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3412
  store i32 %45, i32* %index.i, align 4, !dbg !3413
  %46 = load i32, i32* %index.i, align 4, !dbg !3414
  %tobool.i = icmp ne i32 %46, 0, !dbg !3414
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3415

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3416
  br label %kmalloc.exit, !dbg !3416

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3417
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3418
  %and.i.i = and i32 %48, 17, !dbg !3418
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3418
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3418
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3418
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3418
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3419

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3420
  br label %kmalloc_type.exit.i, !dbg !3420

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3421
  %and2.i.i = and i32 %49, 1, !dbg !3422
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3421
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3421
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3421
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3423
  br label %kmalloc_type.exit.i, !dbg !3423

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3424
  %idxprom.i = zext i32 %51 to i64, !dbg !3425
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3425
  %52 = load i32, i32* %index.i, align 4, !dbg !3426
  %idxprom6.i = zext i32 %52 to i64, !dbg !3425
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3425
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3425
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3427
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3428
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3429
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3430
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3431
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3431
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3431
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3431
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3431
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3250
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3432
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3433
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3434
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3435
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3436
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3437
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3438
  store i8* %62, i8** %retval.i, align 8, !dbg !3439
  br label %kmalloc.exit, !dbg !3439

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3440
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3441
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3442
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3442
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3442
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3442
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3442
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3443
  br label %kmalloc.exit, !dbg !3443

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3444
  ret i8* %65, !dbg !3445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @software_node_register_properties(%struct.software_node* %node, %struct.property_entry* %properties) #0 !dbg !3446 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca %struct.software_node*, align 8
  %properties.addr = alloca %struct.property_entry*, align 8
  %props = alloca %struct.property_entry*, align 8
  store %struct.software_node* %node, %struct.software_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.software_node** %node.addr, metadata !3449, metadata !DIExpression()), !dbg !3450
  store %struct.property_entry* %properties, %struct.property_entry** %properties.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %properties.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.declare(metadata %struct.property_entry** %props, metadata !3453, metadata !DIExpression()), !dbg !3454
  %0 = load %struct.property_entry*, %struct.property_entry** %properties.addr, align 8, !dbg !3455
  %call = call %struct.property_entry* @property_entries_dup(%struct.property_entry* %0) #8, !dbg !3456
  store %struct.property_entry* %call, %struct.property_entry** %props, align 8, !dbg !3457
  %1 = load %struct.property_entry*, %struct.property_entry** %props, align 8, !dbg !3458
  %2 = bitcast %struct.property_entry* %1 to i8*, !dbg !3458
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #8, !dbg !3460
  br i1 %call1, label %if.then, label %if.end, !dbg !3461

if.then:                                          ; preds = %entry
  %3 = load %struct.property_entry*, %struct.property_entry** %props, align 8, !dbg !3462
  %4 = bitcast %struct.property_entry* %3 to i8*, !dbg !3462
  %call2 = call i64 @PTR_ERR(i8* %4) #8, !dbg !3463
  %conv = trunc i64 %call2 to i32, !dbg !3463
  store i32 %conv, i32* %retval, align 4, !dbg !3464
  br label %return, !dbg !3464

if.end:                                           ; preds = %entry
  %5 = load %struct.property_entry*, %struct.property_entry** %props, align 8, !dbg !3465
  %6 = load %struct.software_node*, %struct.software_node** %node.addr, align 8, !dbg !3466
  %properties3 = getelementptr inbounds %struct.software_node, %struct.software_node* %6, i32 0, i32 2, !dbg !3467
  store %struct.property_entry* %5, %struct.property_entry** %properties3, align 8, !dbg !3468
  store i32 0, i32* %retval, align 4, !dbg !3469
  br label %return, !dbg !3469

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3470
  ret i32 %7, !dbg !3470
}

; Function Attrs: noredzone
declare dso_local void @kobject_put(%struct.kobject*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @software_node_notify(%struct.device* %dev, i64 %action) #0 !dbg !3471 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %action.addr = alloca i64, align 8
  %fwnode = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %ret = alloca i32, align 4
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp8 = alloca %struct.swnode*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3474, metadata !DIExpression()), !dbg !3475
  store i64 %action, i64* %action.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %action.addr, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode, metadata !3478, metadata !DIExpression()), !dbg !3479
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3480
  %call = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %0) #8, !dbg !3481
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %fwnode, align 8, !dbg !3479
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !3482, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3484, metadata !DIExpression()), !dbg !3485
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3486
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !3486
  br i1 %tobool, label %if.end, label %if.then, !dbg !3488

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3489
  br label %return, !dbg !3489

if.end:                                           ; preds = %entry
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3490
  %call1 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %2) #8, !dbg !3492
  br i1 %call1, label %if.end3, label %if.then2, !dbg !3493

if.then2:                                         ; preds = %if.end
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3494
  %secondary = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %3, i32 0, i32 0, !dbg !3495
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %secondary, align 8, !dbg !3495
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %fwnode, align 8, !dbg !3496
  br label %if.end3, !dbg !3497

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3498
  %call4 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %5) #8, !dbg !3500
  br i1 %call4, label %if.end6, label %if.then5, !dbg !3501

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !3502
  br label %return, !dbg !3502

if.end6:                                          ; preds = %if.end3
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !3503, metadata !DIExpression()), !dbg !3505
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !3505
  store %struct.fwnode_handle* %6, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3505
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3505
  %call7 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %7) #8, !dbg !3505
  br i1 %call7, label %cond.true, label %cond.false, !dbg !3505

cond.true:                                        ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3506, metadata !DIExpression()), !dbg !3508
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3508
  %9 = bitcast %struct.fwnode_handle* %8 to i8*, !dbg !3508
  store i8* %9, i8** %__mptr, align 8, !dbg !3508
  br label %do.body, !dbg !3508

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3509

do.end:                                           ; preds = %do.body
  %10 = load i8*, i8** %__mptr, align 8, !dbg !3508
  %add.ptr = getelementptr i8, i8* %10, i64 -72, !dbg !3508
  %11 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !3508
  store %struct.swnode* %11, %struct.swnode** %tmp8, align 8, !dbg !3509
  %12 = load %struct.swnode*, %struct.swnode** %tmp8, align 8, !dbg !3508
  br label %cond.end, !dbg !3505

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !3505

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %12, %do.end ], [ null, %cond.false ], !dbg !3505
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !3505
  %13 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !3505
  store %struct.swnode* %13, %struct.swnode** %swnode, align 8, !dbg !3511
  %14 = load i64, i64* %action.addr, align 8, !dbg !3512
  switch i64 %14, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb24
  ], !dbg !3513

sw.bb:                                            ; preds = %cond.end
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3514
  %kobj = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0, !dbg !3516
  %16 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3517
  %kobj9 = getelementptr inbounds %struct.swnode, %struct.swnode* %16, i32 0, i32 1, !dbg !3518
  %call10 = call i32 @sysfs_create_link(%struct.kobject* %kobj, %struct.kobject* %kobj9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3519
  store i32 %call10, i32* %ret, align 4, !dbg !3520
  %17 = load i32, i32* %ret, align 4, !dbg !3521
  %tobool11 = icmp ne i32 %17, 0, !dbg !3521
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3523

if.then12:                                        ; preds = %sw.bb
  br label %sw.epilog, !dbg !3524

if.end13:                                         ; preds = %sw.bb
  %18 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3525
  %kobj14 = getelementptr inbounds %struct.swnode, %struct.swnode* %18, i32 0, i32 1, !dbg !3526
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3527
  %kobj15 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0, !dbg !3528
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3529
  %call16 = call i8* @dev_name(%struct.device* %20) #8, !dbg !3530
  %call17 = call i32 @sysfs_create_link(%struct.kobject* %kobj14, %struct.kobject* %kobj15, i8* %call16) #8, !dbg !3531
  store i32 %call17, i32* %ret, align 4, !dbg !3532
  %21 = load i32, i32* %ret, align 4, !dbg !3533
  %tobool18 = icmp ne i32 %21, 0, !dbg !3533
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !3535

if.then19:                                        ; preds = %if.end13
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3536
  %kobj20 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0, !dbg !3538
  call void @sysfs_remove_link(%struct.kobject* %kobj20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3539
  br label %sw.epilog, !dbg !3540

if.end21:                                         ; preds = %if.end13
  %23 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3541
  %kobj22 = getelementptr inbounds %struct.swnode, %struct.swnode* %23, i32 0, i32 1, !dbg !3542
  %call23 = call %struct.kobject* @kobject_get(%struct.kobject* %kobj22) #8, !dbg !3543
  br label %sw.epilog, !dbg !3544

sw.bb24:                                          ; preds = %cond.end
  %24 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3545
  %kobj25 = getelementptr inbounds %struct.swnode, %struct.swnode* %24, i32 0, i32 1, !dbg !3546
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3547
  %call26 = call i8* @dev_name(%struct.device* %25) #8, !dbg !3548
  call void @sysfs_remove_link(%struct.kobject* %kobj25, i8* %call26) #8, !dbg !3549
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3550
  %kobj27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0, !dbg !3551
  call void @sysfs_remove_link(%struct.kobject* %kobj27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3552
  %27 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3553
  %kobj28 = getelementptr inbounds %struct.swnode, %struct.swnode* %27, i32 0, i32 1, !dbg !3554
  call void @kobject_put(%struct.kobject* %kobj28) #8, !dbg !3555
  br label %sw.epilog, !dbg !3556

sw.default:                                       ; preds = %cond.end
  br label %sw.epilog, !dbg !3557

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %if.end21, %if.then19, %if.then12
  store i32 0, i32* %retval, align 4, !dbg !3558
  br label %return, !dbg !3558

return:                                           ; preds = %sw.epilog, %if.then5, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !3559
  ret i32 %28, !dbg !3559
}

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_link(%struct.kobject*, %struct.kobject*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !3560 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3563, metadata !DIExpression()), !dbg !3564
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3565
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3567
  %1 = load i8*, i8** %init_name, align 8, !dbg !3567
  %tobool = icmp ne i8* %1, null, !dbg !3565
  br i1 %tobool, label %if.then, label %if.end, !dbg !3568

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3569
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3570
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3570
  store i8* %3, i8** %retval, align 8, !dbg !3571
  br label %return, !dbg !3571

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3572
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3573
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !3574
  store i8* %call, i8** %retval, align 8, !dbg !3575
  br label %return, !dbg !3575

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3576
  ret i8* %5, !dbg !3576
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_link(%struct.kobject*, i8*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @software_node_init() #3 section ".init.text" !dbg !3577 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.kobject*, %struct.kobject** @kernel_kobj, align 8, !dbg !3580
  %call = call %struct.kset* @kset_create_and_add(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.kset_uevent_ops* null, %struct.kobject* %0) #8, !dbg !3581
  store %struct.kset* %call, %struct.kset** @swnode_kset, align 8, !dbg !3582
  %1 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !3583
  %tobool = icmp ne %struct.kset* %1, null, !dbg !3583
  br i1 %tobool, label %if.end, label %if.then, !dbg !3585

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3586
  br label %return, !dbg !3586

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3587
  br label %return, !dbg !3587

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3588
  ret i32 %2, !dbg !3588
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @software_node_exit() #3 section ".exit.text" !dbg !3589 {
entry:
  call void @ida_destroy(%struct.ida* @swnode_root_ids) #8, !dbg !3590
  %0 = load %struct.kset*, %struct.kset** @swnode_kset, align 8, !dbg !3591
  call void @kset_unregister(%struct.kset* %0) #8, !dbg !3592
  ret void, !dbg !3593
}

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: noredzone
declare dso_local void @kset_unregister(%struct.kset*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3594 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2306, metadata !DIExpression()), !dbg !3595
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2320, metadata !DIExpression()), !dbg !3599
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2322, metadata !DIExpression()), !dbg !3600
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2324, metadata !DIExpression()), !dbg !3601
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2326, metadata !DIExpression()), !dbg !3602
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2332, metadata !DIExpression()), !dbg !3604
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2338, metadata !DIExpression()), !dbg !3606
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2347, metadata !DIExpression()), !dbg !3609
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2349, metadata !DIExpression()), !dbg !3610
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2351, metadata !DIExpression()), !dbg !3611
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2353, metadata !DIExpression()), !dbg !3612
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2355, metadata !DIExpression()), !dbg !3613
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2357, metadata !DIExpression()), !dbg !3614
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2359, metadata !DIExpression()), !dbg !3615
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2361, metadata !DIExpression()), !dbg !3616
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3617, metadata !DIExpression()), !dbg !3618
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3619, metadata !DIExpression()), !dbg !3620
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3621, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3623, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3625, metadata !DIExpression()), !dbg !3628
  %0 = load i64, i64* %n.addr, align 8, !dbg !3628
  store i64 %0, i64* %__a, align 8, !dbg !3628
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3629, metadata !DIExpression()), !dbg !3628
  %1 = load i64, i64* %size.addr, align 8, !dbg !3628
  store i64 %1, i64* %__b, align 8, !dbg !3628
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3630, metadata !DIExpression()), !dbg !3628
  store i64* %bytes, i64** %__d, align 8, !dbg !3628
  %cmp = icmp eq i64* %__a, %__b, !dbg !3628
  %conv = zext i1 %cmp to i32, !dbg !3628
  %2 = load i64*, i64** %__d, align 8, !dbg !3628
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3628
  %conv2 = zext i1 %cmp1 to i32, !dbg !3628
  %3 = load i64, i64* %__a, align 8, !dbg !3628
  %4 = load i64, i64* %__b, align 8, !dbg !3628
  %5 = load i64*, i64** %__d, align 8, !dbg !3628
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3628
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3628
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3628
  store i64 %8, i64* %5, align 8, !dbg !3628
  %frombool = zext i1 %7 to i8, !dbg !3628
  store i8 %frombool, i8* %tmp, align 1, !dbg !3628
  %9 = load i8, i8* %tmp, align 1, !dbg !3628
  %tobool = trunc i8 %9 to i1, !dbg !3628
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !3632
  %lnot = xor i1 %call, true, !dbg !3632
  %lnot3 = xor i1 %lnot, true, !dbg !3632
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3632
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3632
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3632
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3633

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3634
  br label %return, !dbg !3634

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3635
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3636
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3637

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3638
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3639
  br i1 %13, label %if.then6, label %if.end8, !dbg !3640

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3641
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3642
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3643
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !3644
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3645

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3646
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3647
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3648

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3649
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3650
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3651
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !3652
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3613
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3653
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3654
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3655
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3656
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3657
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3658
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !3659
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3659
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3659
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3659
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3659
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3660
  br label %kmalloc.exit, !dbg !3660

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3661
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3662
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3662
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3663

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3664
  br label %kmalloc_index.exit.i, !dbg !3664

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3665
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3666
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3667

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3668
  br label %kmalloc_index.exit.i, !dbg !3668

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3669
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3670
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3671

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3672
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3673
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3674

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3675
  br label %kmalloc_index.exit.i, !dbg !3675

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3676
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3677
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3678

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3679
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3680
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3681

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3682
  br label %kmalloc_index.exit.i, !dbg !3682

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3683
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3684
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3685

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3686
  br label %kmalloc_index.exit.i, !dbg !3686

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3687
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3688
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3689

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3690
  br label %kmalloc_index.exit.i, !dbg !3690

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3691
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3692
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3693

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3694
  br label %kmalloc_index.exit.i, !dbg !3694

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3695
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3696
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3697

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3698
  br label %kmalloc_index.exit.i, !dbg !3698

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3699
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3700
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3701

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3702
  br label %kmalloc_index.exit.i, !dbg !3702

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3703
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3704
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3705

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3706
  br label %kmalloc_index.exit.i, !dbg !3706

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3707
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3708
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3709

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3710
  br label %kmalloc_index.exit.i, !dbg !3710

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3711
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3712
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3713

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3714
  br label %kmalloc_index.exit.i, !dbg !3714

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3715
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3716
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3717

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3718
  br label %kmalloc_index.exit.i, !dbg !3718

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3719
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3720
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3721

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3722
  br label %kmalloc_index.exit.i, !dbg !3722

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3723
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3724
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3725

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3726
  br label %kmalloc_index.exit.i, !dbg !3726

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3727
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3728
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3729

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3730
  br label %kmalloc_index.exit.i, !dbg !3730

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3731
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3732
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3733

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3734
  br label %kmalloc_index.exit.i, !dbg !3734

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3735
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3736
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3737

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3738
  br label %kmalloc_index.exit.i, !dbg !3738

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3739
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3740
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3741

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3742
  br label %kmalloc_index.exit.i, !dbg !3742

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3743
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3744
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3745

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3746
  br label %kmalloc_index.exit.i, !dbg !3746

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3747
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3748
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3749

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3750
  br label %kmalloc_index.exit.i, !dbg !3750

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3751
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3752
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3753

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3754
  br label %kmalloc_index.exit.i, !dbg !3754

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3755
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3756
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3757

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3758
  br label %kmalloc_index.exit.i, !dbg !3758

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3759
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3760
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3761

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3762
  br label %kmalloc_index.exit.i, !dbg !3762

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3763
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3764
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3765

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3766
  br label %kmalloc_index.exit.i, !dbg !3766

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3767
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3768
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3769

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3770
  br label %kmalloc_index.exit.i, !dbg !3770

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3771
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3772
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3773

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3774
  br label %kmalloc_index.exit.i, !dbg !3774

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3775
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3776
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3777

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3778
  br label %kmalloc_index.exit.i, !dbg !3778

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3779, !srcloc !2574
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !3780, !srcloc !2578
  unreachable, !dbg !3781

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3782
  store i32 %59, i32* %index.i, align 4, !dbg !3783
  %60 = load i32, i32* %index.i, align 4, !dbg !3784
  %tobool.i = icmp ne i32 %60, 0, !dbg !3784
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3785

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3786
  br label %kmalloc.exit, !dbg !3786

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3787
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3788
  %and.i.i = and i32 %62, 17, !dbg !3788
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3788
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3788
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3788
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3788
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3789

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3790
  br label %kmalloc_type.exit.i, !dbg !3790

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3791
  %and2.i.i = and i32 %63, 1, !dbg !3792
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3791
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3791
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3791
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3793
  br label %kmalloc_type.exit.i, !dbg !3793

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3794
  %idxprom.i = zext i32 %65 to i64, !dbg !3795
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3795
  %66 = load i32, i32* %index.i, align 4, !dbg !3796
  %idxprom6.i = zext i32 %66 to i64, !dbg !3795
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3795
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3795
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3797
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3798
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3799
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3800
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !3801
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3801
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3801
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3801
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3801
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3601
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3802
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3803
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3804
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3805
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !3806
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3807
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3808
  store i8* %76, i8** %retval.i, align 8, !dbg !3809
  br label %kmalloc.exit, !dbg !3809

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3810
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3811
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !3812
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3812
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3812
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3812
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3812
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3813
  br label %kmalloc.exit, !dbg !3813

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3814
  store i8* %79, i8** %retval, align 8, !dbg !3815
  br label %return, !dbg !3815

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3816
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3817
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !3818
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3818
  %maskedptr = and i64 %ptrint, 7, !dbg !3818
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3818
  call void @llvm.assume(i1 %maskcond), !dbg !3818
  store i8* %call9, i8** %retval, align 8, !dbg !3819
  br label %return, !dbg !3819

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3820
  ret i8* %82, !dbg !3820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3821 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3825, metadata !DIExpression()), !dbg !3826
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3827
  %tobool = trunc i8 %0 to i1, !dbg !3827
  %lnot = xor i1 %tobool, true, !dbg !3827
  %lnot1 = xor i1 %lnot, true, !dbg !3827
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3827
  %conv = sext i32 %lnot.ext to i64, !dbg !3827
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3827
  ret i1 %tobool2, !dbg !3828
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
define internal i32 @get_order(i64 %size) #6 !dbg !3829 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3833, metadata !DIExpression()), !dbg !3838
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3840, metadata !DIExpression()), !dbg !3841
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  %0 = load i64, i64* %size.addr, align 8, !dbg !3844
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3846
  br i1 %1, label %if.then, label %if.end447, !dbg !3847

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3848
  %tobool = icmp ne i64 %2, 0, !dbg !3848
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3851

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3852
  br label %return, !dbg !3852

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3853
  %cmp = icmp ult i64 %3, 4096, !dbg !3855
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3856

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3857
  br label %return, !dbg !3857

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub = sub i64 %4, 1, !dbg !3858
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3858
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3858

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub4 = sub i64 %6, 1, !dbg !3858
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3858
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3858

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub6 = sub i64 %8, 1, !dbg !3858
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3858
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3858

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3858

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub9 = sub i64 %9, 1, !dbg !3858
  %and = and i64 %sub9, -9223372036854775808, !dbg !3858
  %tobool10 = icmp ne i64 %and, 0, !dbg !3858
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3858

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3858

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub13 = sub i64 %10, 1, !dbg !3858
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3858
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3858
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3858

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3858

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub18 = sub i64 %11, 1, !dbg !3858
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3858
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3858
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3858

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3858

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub23 = sub i64 %12, 1, !dbg !3858
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3858
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3858
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3858

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3858

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub28 = sub i64 %13, 1, !dbg !3858
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3858
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3858
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3858

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3858

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub33 = sub i64 %14, 1, !dbg !3858
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3858
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3858
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3858

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3858

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub38 = sub i64 %15, 1, !dbg !3858
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3858
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3858
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3858

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3858

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub43 = sub i64 %16, 1, !dbg !3858
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3858
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3858
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3858

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3858

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub48 = sub i64 %17, 1, !dbg !3858
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3858
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3858
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3858

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3858

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub53 = sub i64 %18, 1, !dbg !3858
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3858
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3858
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3858

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3858

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub58 = sub i64 %19, 1, !dbg !3858
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3858
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3858
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3858

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3858

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub63 = sub i64 %20, 1, !dbg !3858
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3858
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3858
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3858

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3858

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub68 = sub i64 %21, 1, !dbg !3858
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3858
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3858
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3858

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3858

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub73 = sub i64 %22, 1, !dbg !3858
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3858
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3858
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3858

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3858

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub78 = sub i64 %23, 1, !dbg !3858
  %and79 = and i64 %sub78, 562949953421312, !dbg !3858
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3858
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3858

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3858

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub83 = sub i64 %24, 1, !dbg !3858
  %and84 = and i64 %sub83, 281474976710656, !dbg !3858
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3858
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3858

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3858

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub88 = sub i64 %25, 1, !dbg !3858
  %and89 = and i64 %sub88, 140737488355328, !dbg !3858
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3858
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3858

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3858

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub93 = sub i64 %26, 1, !dbg !3858
  %and94 = and i64 %sub93, 70368744177664, !dbg !3858
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3858
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3858

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3858

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub98 = sub i64 %27, 1, !dbg !3858
  %and99 = and i64 %sub98, 35184372088832, !dbg !3858
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3858
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3858

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3858

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub103 = sub i64 %28, 1, !dbg !3858
  %and104 = and i64 %sub103, 17592186044416, !dbg !3858
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3858
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3858

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3858

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub108 = sub i64 %29, 1, !dbg !3858
  %and109 = and i64 %sub108, 8796093022208, !dbg !3858
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3858
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3858

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3858

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub113 = sub i64 %30, 1, !dbg !3858
  %and114 = and i64 %sub113, 4398046511104, !dbg !3858
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3858
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3858

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3858

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub118 = sub i64 %31, 1, !dbg !3858
  %and119 = and i64 %sub118, 2199023255552, !dbg !3858
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3858
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3858

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3858

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub123 = sub i64 %32, 1, !dbg !3858
  %and124 = and i64 %sub123, 1099511627776, !dbg !3858
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3858
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3858

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3858

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub128 = sub i64 %33, 1, !dbg !3858
  %and129 = and i64 %sub128, 549755813888, !dbg !3858
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3858
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3858

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3858

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub133 = sub i64 %34, 1, !dbg !3858
  %and134 = and i64 %sub133, 274877906944, !dbg !3858
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3858
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3858

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3858

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub138 = sub i64 %35, 1, !dbg !3858
  %and139 = and i64 %sub138, 137438953472, !dbg !3858
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3858
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3858

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3858

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub143 = sub i64 %36, 1, !dbg !3858
  %and144 = and i64 %sub143, 68719476736, !dbg !3858
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3858
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3858

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3858

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub148 = sub i64 %37, 1, !dbg !3858
  %and149 = and i64 %sub148, 34359738368, !dbg !3858
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3858
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3858

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3858

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub153 = sub i64 %38, 1, !dbg !3858
  %and154 = and i64 %sub153, 17179869184, !dbg !3858
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3858
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3858

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3858

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub158 = sub i64 %39, 1, !dbg !3858
  %and159 = and i64 %sub158, 8589934592, !dbg !3858
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3858
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3858

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3858

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub163 = sub i64 %40, 1, !dbg !3858
  %and164 = and i64 %sub163, 4294967296, !dbg !3858
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3858
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3858

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3858

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub168 = sub i64 %41, 1, !dbg !3858
  %and169 = and i64 %sub168, 2147483648, !dbg !3858
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3858
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3858

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3858

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub173 = sub i64 %42, 1, !dbg !3858
  %and174 = and i64 %sub173, 1073741824, !dbg !3858
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3858
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3858

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3858

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub178 = sub i64 %43, 1, !dbg !3858
  %and179 = and i64 %sub178, 536870912, !dbg !3858
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3858
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3858

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3858

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub183 = sub i64 %44, 1, !dbg !3858
  %and184 = and i64 %sub183, 268435456, !dbg !3858
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3858
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3858

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3858

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub188 = sub i64 %45, 1, !dbg !3858
  %and189 = and i64 %sub188, 134217728, !dbg !3858
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3858
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3858

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3858

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub193 = sub i64 %46, 1, !dbg !3858
  %and194 = and i64 %sub193, 67108864, !dbg !3858
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3858
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3858

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3858

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub198 = sub i64 %47, 1, !dbg !3858
  %and199 = and i64 %sub198, 33554432, !dbg !3858
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3858
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3858

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3858

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub203 = sub i64 %48, 1, !dbg !3858
  %and204 = and i64 %sub203, 16777216, !dbg !3858
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3858
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3858

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3858

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub208 = sub i64 %49, 1, !dbg !3858
  %and209 = and i64 %sub208, 8388608, !dbg !3858
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3858
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3858

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3858

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub213 = sub i64 %50, 1, !dbg !3858
  %and214 = and i64 %sub213, 4194304, !dbg !3858
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3858
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3858

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3858

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub218 = sub i64 %51, 1, !dbg !3858
  %and219 = and i64 %sub218, 2097152, !dbg !3858
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3858
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3858

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3858

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub223 = sub i64 %52, 1, !dbg !3858
  %and224 = and i64 %sub223, 1048576, !dbg !3858
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3858
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3858

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3858

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub228 = sub i64 %53, 1, !dbg !3858
  %and229 = and i64 %sub228, 524288, !dbg !3858
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3858
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3858

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3858

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub233 = sub i64 %54, 1, !dbg !3858
  %and234 = and i64 %sub233, 262144, !dbg !3858
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3858
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3858

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3858

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub238 = sub i64 %55, 1, !dbg !3858
  %and239 = and i64 %sub238, 131072, !dbg !3858
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3858
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3858

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3858

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub243 = sub i64 %56, 1, !dbg !3858
  %and244 = and i64 %sub243, 65536, !dbg !3858
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3858
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3858

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3858

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub248 = sub i64 %57, 1, !dbg !3858
  %and249 = and i64 %sub248, 32768, !dbg !3858
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3858
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3858

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3858

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub253 = sub i64 %58, 1, !dbg !3858
  %and254 = and i64 %sub253, 16384, !dbg !3858
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3858
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3858

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3858

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub258 = sub i64 %59, 1, !dbg !3858
  %and259 = and i64 %sub258, 8192, !dbg !3858
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3858
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3858

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3858

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub263 = sub i64 %60, 1, !dbg !3858
  %and264 = and i64 %sub263, 4096, !dbg !3858
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3858
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3858

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3858

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub268 = sub i64 %61, 1, !dbg !3858
  %and269 = and i64 %sub268, 2048, !dbg !3858
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3858
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3858

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3858

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub273 = sub i64 %62, 1, !dbg !3858
  %and274 = and i64 %sub273, 1024, !dbg !3858
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3858
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3858

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3858

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub278 = sub i64 %63, 1, !dbg !3858
  %and279 = and i64 %sub278, 512, !dbg !3858
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3858
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3858

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3858

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub283 = sub i64 %64, 1, !dbg !3858
  %and284 = and i64 %sub283, 256, !dbg !3858
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3858
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3858

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3858

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub288 = sub i64 %65, 1, !dbg !3858
  %and289 = and i64 %sub288, 128, !dbg !3858
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3858
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3858

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3858

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub293 = sub i64 %66, 1, !dbg !3858
  %and294 = and i64 %sub293, 64, !dbg !3858
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3858
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3858

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3858

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub298 = sub i64 %67, 1, !dbg !3858
  %and299 = and i64 %sub298, 32, !dbg !3858
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3858
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3858

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3858

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub303 = sub i64 %68, 1, !dbg !3858
  %and304 = and i64 %sub303, 16, !dbg !3858
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3858
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3858

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3858

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub308 = sub i64 %69, 1, !dbg !3858
  %and309 = and i64 %sub308, 8, !dbg !3858
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3858
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3858

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3858

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub313 = sub i64 %70, 1, !dbg !3858
  %and314 = and i64 %sub313, 4, !dbg !3858
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3858
  %71 = zext i1 %tobool315 to i64, !dbg !3858
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3858
  br label %cond.end, !dbg !3858

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3858
  br label %cond.end317, !dbg !3858

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3858
  br label %cond.end319, !dbg !3858

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3858
  br label %cond.end321, !dbg !3858

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3858
  br label %cond.end323, !dbg !3858

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3858
  br label %cond.end325, !dbg !3858

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3858
  br label %cond.end327, !dbg !3858

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3858
  br label %cond.end329, !dbg !3858

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3858
  br label %cond.end331, !dbg !3858

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3858
  br label %cond.end333, !dbg !3858

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3858
  br label %cond.end335, !dbg !3858

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3858
  br label %cond.end337, !dbg !3858

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3858
  br label %cond.end339, !dbg !3858

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3858
  br label %cond.end341, !dbg !3858

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3858
  br label %cond.end343, !dbg !3858

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3858
  br label %cond.end345, !dbg !3858

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3858
  br label %cond.end347, !dbg !3858

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3858
  br label %cond.end349, !dbg !3858

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3858
  br label %cond.end351, !dbg !3858

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3858
  br label %cond.end353, !dbg !3858

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3858
  br label %cond.end355, !dbg !3858

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3858
  br label %cond.end357, !dbg !3858

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3858
  br label %cond.end359, !dbg !3858

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3858
  br label %cond.end361, !dbg !3858

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3858
  br label %cond.end363, !dbg !3858

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3858
  br label %cond.end365, !dbg !3858

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3858
  br label %cond.end367, !dbg !3858

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3858
  br label %cond.end369, !dbg !3858

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3858
  br label %cond.end371, !dbg !3858

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3858
  br label %cond.end373, !dbg !3858

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3858
  br label %cond.end375, !dbg !3858

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3858
  br label %cond.end377, !dbg !3858

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3858
  br label %cond.end379, !dbg !3858

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3858
  br label %cond.end381, !dbg !3858

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3858
  br label %cond.end383, !dbg !3858

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3858
  br label %cond.end385, !dbg !3858

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3858
  br label %cond.end387, !dbg !3858

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3858
  br label %cond.end389, !dbg !3858

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3858
  br label %cond.end391, !dbg !3858

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3858
  br label %cond.end393, !dbg !3858

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3858
  br label %cond.end395, !dbg !3858

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3858
  br label %cond.end397, !dbg !3858

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3858
  br label %cond.end399, !dbg !3858

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3858
  br label %cond.end401, !dbg !3858

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3858
  br label %cond.end403, !dbg !3858

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3858
  br label %cond.end405, !dbg !3858

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3858
  br label %cond.end407, !dbg !3858

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3858
  br label %cond.end409, !dbg !3858

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3858
  br label %cond.end411, !dbg !3858

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3858
  br label %cond.end413, !dbg !3858

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3858
  br label %cond.end415, !dbg !3858

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3858
  br label %cond.end417, !dbg !3858

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3858
  br label %cond.end419, !dbg !3858

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3858
  br label %cond.end421, !dbg !3858

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3858
  br label %cond.end423, !dbg !3858

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3858
  br label %cond.end425, !dbg !3858

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3858
  br label %cond.end427, !dbg !3858

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3858
  br label %cond.end429, !dbg !3858

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3858
  br label %cond.end431, !dbg !3858

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3858
  br label %cond.end433, !dbg !3858

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3858
  br label %cond.end435, !dbg !3858

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3858
  br label %cond.end437, !dbg !3858

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3858
  br label %cond.end440, !dbg !3858

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3858

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3858
  br label %cond.end444, !dbg !3858

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3858
  %sub443 = sub i64 %72, 1, !dbg !3858
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3858
  br label %cond.end444, !dbg !3858

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3858
  %sub446 = sub i32 %cond445, 12, !dbg !3859
  %add = add i32 %sub446, 1, !dbg !3860
  store i32 %add, i32* %retval, align 4, !dbg !3861
  br label %return, !dbg !3861

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3862
  %dec = add i64 %73, -1, !dbg !3862
  store i64 %dec, i64* %size.addr, align 8, !dbg !3862
  %74 = load i64, i64* %size.addr, align 8, !dbg !3863
  %shr = lshr i64 %74, 12, !dbg !3863
  store i64 %shr, i64* %size.addr, align 8, !dbg !3863
  %75 = load i64, i64* %size.addr, align 8, !dbg !3864
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3841
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3865
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3866
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !3865, !srcloc !3867
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3865
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3868
  %add.i = add i32 %79, 1, !dbg !3869
  store i32 %add.i, i32* %retval, align 4, !dbg !3870
  br label %return, !dbg !3870

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3871
  ret i32 %80, !dbg !3871
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3872 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3833, metadata !DIExpression()), !dbg !3876
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3840, metadata !DIExpression()), !dbg !3878
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3879, metadata !DIExpression()), !dbg !3880
  %0 = load i64, i64* %n.addr, align 8, !dbg !3881
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3878
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3882
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3883
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !3882, !srcloc !3867
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3882
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3884
  %add.i = add i32 %4, 1, !dbg !3885
  %sub = sub i32 %add.i, 1, !dbg !3886
  ret i32 %sub, !dbg !3887
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3888 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3892, metadata !DIExpression()), !dbg !3893
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3894, metadata !DIExpression()), !dbg !3895
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3896, metadata !DIExpression()), !dbg !3897
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3898, metadata !DIExpression()), !dbg !3899
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3900
  ret i8* %0, !dbg !3901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @property_get_pointer(%struct.property_entry* %prop) #0 !dbg !3902 {
entry:
  %retval = alloca i8*, align 8
  %prop.addr = alloca %struct.property_entry*, align 8
  store %struct.property_entry* %prop, %struct.property_entry** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %prop.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  %0 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !3907
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %0, i32 0, i32 1, !dbg !3909
  %1 = load i64, i64* %length, align 8, !dbg !3909
  %tobool = icmp ne i64 %1, 0, !dbg !3907
  br i1 %tobool, label %if.end, label %if.then, !dbg !3910

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3911
  br label %return, !dbg !3911

if.end:                                           ; preds = %entry
  %2 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !3912
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %2, i32 0, i32 2, !dbg !3913
  %3 = load i8, i8* %is_inline, align 8, !dbg !3913
  %tobool1 = trunc i8 %3 to i1, !dbg !3913
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !3912

cond.true:                                        ; preds = %if.end
  %4 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !3914
  %5 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %4, i32 0, i32 4, !dbg !3915
  %value = bitcast %union.anon.38* %5 to %union.anon.39*, !dbg !3915
  %6 = bitcast %union.anon.39* %value to i8*, !dbg !3916
  br label %cond.end, !dbg !3912

cond.false:                                       ; preds = %if.end
  %7 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !3917
  %8 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %7, i32 0, i32 4, !dbg !3918
  %pointer = bitcast %union.anon.38* %8 to i8**, !dbg !3918
  %9 = load i8*, i8** %pointer, align 8, !dbg !3918
  br label %cond.end, !dbg !3912

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ %9, %cond.false ], !dbg !3912
  store i8* %cond, i8** %retval, align 8, !dbg !3919
  br label %return, !dbg !3919

return:                                           ; preds = %cond.end, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !3920
  ret i8* %10, !dbg !3920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @property_copy_string_array(i8** %dst_ptr, i8** %src_ptr, i64 %nval) #0 !dbg !3921 {
entry:
  %retval = alloca i1, align 1
  %dst_ptr.addr = alloca i8**, align 8
  %src_ptr.addr = alloca i8**, align 8
  %nval.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i8** %dst_ptr, i8*** %dst_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dst_ptr.addr, metadata !3924, metadata !DIExpression()), !dbg !3925
  store i8** %src_ptr, i8*** %src_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %src_ptr.addr, metadata !3926, metadata !DIExpression()), !dbg !3927
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3930, metadata !DIExpression()), !dbg !3931
  store i32 0, i32* %i, align 4, !dbg !3932
  br label %for.cond, !dbg !3934

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3935
  %conv = sext i32 %0 to i64, !dbg !3935
  %1 = load i64, i64* %nval.addr, align 8, !dbg !3937
  %cmp = icmp ult i64 %conv, %1, !dbg !3938
  br i1 %cmp, label %for.body, label %for.end, !dbg !3939

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %src_ptr.addr, align 8, !dbg !3940
  %3 = load i32, i32* %i, align 4, !dbg !3942
  %idxprom = sext i32 %3 to i64, !dbg !3940
  %arrayidx = getelementptr i8*, i8** %2, i64 %idxprom, !dbg !3940
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !3940
  %call = call noalias i8* @kstrdup(i8* %4, i32 3264) #8, !dbg !3943
  %5 = load i8**, i8*** %dst_ptr.addr, align 8, !dbg !3944
  %6 = load i32, i32* %i, align 4, !dbg !3945
  %idxprom2 = sext i32 %6 to i64, !dbg !3944
  %arrayidx3 = getelementptr i8*, i8** %5, i64 %idxprom2, !dbg !3944
  store i8* %call, i8** %arrayidx3, align 8, !dbg !3946
  %7 = load i8**, i8*** %dst_ptr.addr, align 8, !dbg !3947
  %8 = load i32, i32* %i, align 4, !dbg !3949
  %idxprom4 = sext i32 %8 to i64, !dbg !3947
  %arrayidx5 = getelementptr i8*, i8** %7, i64 %idxprom4, !dbg !3947
  %9 = load i8*, i8** %arrayidx5, align 8, !dbg !3947
  %tobool = icmp ne i8* %9, null, !dbg !3947
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3950

land.lhs.true:                                    ; preds = %for.body
  %10 = load i8**, i8*** %src_ptr.addr, align 8, !dbg !3951
  %11 = load i32, i32* %i, align 4, !dbg !3952
  %idxprom6 = sext i32 %11 to i64, !dbg !3951
  %arrayidx7 = getelementptr i8*, i8** %10, i64 %idxprom6, !dbg !3951
  %12 = load i8*, i8** %arrayidx7, align 8, !dbg !3951
  %tobool8 = icmp ne i8* %12, null, !dbg !3951
  br i1 %tobool8, label %if.then, label %if.end, !dbg !3953

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond, !dbg !3954

while.cond:                                       ; preds = %while.body, %if.then
  %13 = load i32, i32* %i, align 4, !dbg !3956
  %dec = add i32 %13, -1, !dbg !3956
  store i32 %dec, i32* %i, align 4, !dbg !3956
  %cmp9 = icmp sge i32 %dec, 0, !dbg !3957
  br i1 %cmp9, label %while.body, label %while.end, !dbg !3954

while.body:                                       ; preds = %while.cond
  %14 = load i8**, i8*** %dst_ptr.addr, align 8, !dbg !3958
  %15 = load i32, i32* %i, align 4, !dbg !3959
  %idxprom11 = sext i32 %15 to i64, !dbg !3958
  %arrayidx12 = getelementptr i8*, i8** %14, i64 %idxprom11, !dbg !3958
  %16 = load i8*, i8** %arrayidx12, align 8, !dbg !3958
  call void @kfree(i8* %16) #8, !dbg !3960
  br label %while.cond, !dbg !3954, !llvm.loop !3961

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval, align 1, !dbg !3963
  br label %return, !dbg !3963

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3964

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4, !dbg !3965
  %inc = add i32 %17, 1, !dbg !3965
  store i32 %inc, i32* %i, align 4, !dbg !3965
  br label %for.cond, !dbg !3966, !llvm.loop !3967

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1, !dbg !3969
  br label %return, !dbg !3969

return:                                           ; preds = %for.end, %while.end
  %18 = load i1, i1* %retval, align 1, !dbg !3970
  ret i1 %18, !dbg !3970
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* %fwnode) #0 !dbg !3971 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3972, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !3976, metadata !DIExpression()), !dbg !3978
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3978
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3978
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3978
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !3978
  br i1 %call, label %cond.true, label %cond.false, !dbg !3978

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3979, metadata !DIExpression()), !dbg !3981
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3981
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !3981
  store i8* %3, i8** %__mptr, align 8, !dbg !3981
  br label %do.body, !dbg !3981

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !3982

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3981
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !3981
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !3981
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !3982
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !3981
  br label %cond.end, !dbg !3978

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3978

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !3978
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !3978
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !3978
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !3975
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3984
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 1, !dbg !3985
  %call2 = call %struct.kobject* @kobject_get(%struct.kobject* %kobj) #8, !dbg !3986
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !3987
  %fwnode3 = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 2, !dbg !3988
  ret %struct.fwnode_handle* %fwnode3, !dbg !3989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @software_node_put(%struct.fwnode_handle* %fwnode) #0 !dbg !3990 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !3995, metadata !DIExpression()), !dbg !3997
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !3997
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3997
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !3997
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !3997
  br i1 %call, label %cond.true, label %cond.false, !dbg !3997

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3998, metadata !DIExpression()), !dbg !4000
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4000
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4000
  store i8* %3, i8** %__mptr, align 8, !dbg !4000
  br label %do.body, !dbg !4000

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4001

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4000
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4000
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4000
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4001
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4000
  br label %cond.end, !dbg !3997

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3997

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !3997
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !3997
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !3997
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !3994
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4003
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 1, !dbg !4004
  call void @kobject_put(%struct.kobject* %kobj) #8, !dbg !4005
  ret void, !dbg !4006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @software_node_property_present(%struct.fwnode_handle* %fwnode, i8* %propname) #0 !dbg !4007 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4008, metadata !DIExpression()), !dbg !4009
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4012, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4014, metadata !DIExpression()), !dbg !4016
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4016
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4016
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4016
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4016
  br i1 %call, label %cond.true, label %cond.false, !dbg !4016

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4017, metadata !DIExpression()), !dbg !4019
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4019
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4019
  store i8* %3, i8** %__mptr, align 8, !dbg !4019
  br label %do.body, !dbg !4019

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4020

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4019
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4019
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4019
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4020
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4019
  br label %cond.end, !dbg !4016

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4016

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4016
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4016
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4016
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4013
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4022
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 3, !dbg !4023
  %9 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !4023
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %9, i32 0, i32 2, !dbg !4024
  %10 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !4024
  %11 = load i8*, i8** %propname.addr, align 8, !dbg !4025
  %call2 = call %struct.property_entry* @property_entry_get(%struct.property_entry* %10, i8* %11) #8, !dbg !4026
  %tobool = icmp ne %struct.property_entry* %call2, null, !dbg !4027
  %lnot = xor i1 %tobool, true, !dbg !4027
  %lnot3 = xor i1 %lnot, true, !dbg !4028
  ret i1 %lnot3, !dbg !4029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @software_node_read_int_array(%struct.fwnode_handle* %fwnode, i8* %propname, i32 %elem_size, i8* %val, i64 %nval) #0 !dbg !4030 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4043, metadata !DIExpression()), !dbg !4045
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4045
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4045
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4045
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4045
  br i1 %call, label %cond.true, label %cond.false, !dbg !4045

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4046, metadata !DIExpression()), !dbg !4048
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4048
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4048
  store i8* %3, i8** %__mptr, align 8, !dbg !4048
  br label %do.body, !dbg !4048

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4049

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4048
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4048
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4048
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4049
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4048
  br label %cond.end, !dbg !4045

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4045

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4045
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4045
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4045
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4042
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4051
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 3, !dbg !4052
  %9 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !4052
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %9, i32 0, i32 2, !dbg !4053
  %10 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !4053
  %11 = load i8*, i8** %propname.addr, align 8, !dbg !4054
  %12 = load i32, i32* %elem_size.addr, align 4, !dbg !4055
  %13 = load i8*, i8** %val.addr, align 8, !dbg !4056
  %14 = load i64, i64* %nval.addr, align 8, !dbg !4057
  %call2 = call i32 @property_entry_read_int_array(%struct.property_entry* %10, i8* %11, i32 %12, i8* %13, i64 %14) #8, !dbg !4058
  ret i32 %call2, !dbg !4059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @software_node_read_string_array(%struct.fwnode_handle* %fwnode, i8* %propname, i8** %val, i64 %nval) #0 !dbg !4060 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %val.addr = alloca i8**, align 8
  %nval.addr = alloca i64, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4061, metadata !DIExpression()), !dbg !4062
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4063, metadata !DIExpression()), !dbg !4064
  store i8** %val, i8*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %val.addr, metadata !4065, metadata !DIExpression()), !dbg !4066
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4069, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4071, metadata !DIExpression()), !dbg !4073
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4073
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4073
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4073
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4073
  br i1 %call, label %cond.true, label %cond.false, !dbg !4073

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4074, metadata !DIExpression()), !dbg !4076
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4076
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4076
  store i8* %3, i8** %__mptr, align 8, !dbg !4076
  br label %do.body, !dbg !4076

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4077

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4076
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4076
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4076
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4077
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4076
  br label %cond.end, !dbg !4073

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4073

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4073
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4073
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4073
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4070
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4079
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 3, !dbg !4080
  %9 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !4080
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %9, i32 0, i32 2, !dbg !4081
  %10 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !4081
  %11 = load i8*, i8** %propname.addr, align 8, !dbg !4082
  %12 = load i8**, i8*** %val.addr, align 8, !dbg !4083
  %13 = load i64, i64* %nval.addr, align 8, !dbg !4084
  %call2 = call i32 @property_entry_read_string_array(%struct.property_entry* %10, i8* %11, i8** %12, i64 %13) #8, !dbg !4085
  ret i32 %call2, !dbg !4086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @software_node_get_name(%struct.fwnode_handle* %fwnode) #0 !dbg !4087 {
entry:
  %retval = alloca i8*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4092, metadata !DIExpression()), !dbg !4094
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4094
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4094
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4094
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4094
  br i1 %call, label %cond.true, label %cond.false, !dbg !4094

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4095, metadata !DIExpression()), !dbg !4097
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4097
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4097
  store i8* %3, i8** %__mptr, align 8, !dbg !4097
  br label %do.body, !dbg !4097

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4098

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4097
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4097
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4097
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4098
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4097
  br label %cond.end, !dbg !4094

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4094

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4094
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4094
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4094
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4091
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4100
  %tobool = icmp ne %struct.swnode* %8, null, !dbg !4100
  br i1 %tobool, label %if.end, label %if.then, !dbg !4102

if.then:                                          ; preds = %cond.end
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %retval, align 8, !dbg !4103
  br label %return, !dbg !4103

if.end:                                           ; preds = %cond.end
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4104
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 1, !dbg !4105
  %call2 = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !4106
  store i8* %call2, i8** %retval, align 8, !dbg !4107
  br label %return, !dbg !4107

return:                                           ; preds = %if.end, %if.then
  %10 = load i8*, i8** %retval, align 8, !dbg !4108
  ret i8* %10, !dbg !4108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @software_node_get_name_prefix(%struct.fwnode_handle* %fwnode) #0 !dbg !4109 {
entry:
  %retval = alloca i8*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %parent = alloca %struct.fwnode_handle*, align 8
  %prefix = alloca i8*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4110, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %parent, metadata !4112, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.declare(metadata i8** %prefix, metadata !4114, metadata !DIExpression()), !dbg !4115
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4116
  %call = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %0) #8, !dbg !4117
  store %struct.fwnode_handle* %call, %struct.fwnode_handle** %parent, align 8, !dbg !4118
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4119
  %tobool = icmp ne %struct.fwnode_handle* %1, null, !dbg !4119
  br i1 %tobool, label %if.end, label %if.then, !dbg !4121

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %retval, align 8, !dbg !4122
  br label %return, !dbg !4122

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !4123

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4124
  %call1 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %2) #8, !dbg !4125
  br i1 %call1, label %while.body, label %while.end, !dbg !4123

while.body:                                       ; preds = %while.cond
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4126
  %call2 = call %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle* %3) #8, !dbg !4127
  store %struct.fwnode_handle* %call2, %struct.fwnode_handle** %parent, align 8, !dbg !4128
  br label %while.cond, !dbg !4123, !llvm.loop !4129

while.end:                                        ; preds = %while.cond
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4131
  %call3 = call i8* @fwnode_get_name_prefix(%struct.fwnode_handle* %4) #8, !dbg !4132
  store i8* %call3, i8** %prefix, align 8, !dbg !4133
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %parent, align 8, !dbg !4134
  call void @fwnode_handle_put(%struct.fwnode_handle* %5) #8, !dbg !4135
  %6 = load i8*, i8** %prefix, align 8, !dbg !4136
  %tobool4 = icmp ne i8* %6, null, !dbg !4136
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !4136

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !4136

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !4136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %cond.false ], !dbg !4136
  store i8* %cond, i8** %retval, align 8, !dbg !4137
  br label %return, !dbg !4137

return:                                           ; preds = %cond.end, %if.then
  %7 = load i8*, i8** %retval, align 8, !dbg !4138
  ret i8* %7, !dbg !4138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @software_node_get_parent(%struct.fwnode_handle* %fwnode) #0 !dbg !4139 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4140, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4144, metadata !DIExpression()), !dbg !4146
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4146
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4146
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4146
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4146
  br i1 %call, label %cond.true, label %cond.false, !dbg !4146

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4147, metadata !DIExpression()), !dbg !4149
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4149
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4149
  store i8* %3, i8** %__mptr, align 8, !dbg !4149
  br label %do.body, !dbg !4149

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4150

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4149
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4149
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4149
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4150
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4149
  br label %cond.end, !dbg !4146

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4146

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4146
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4146
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4146
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4143
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4152
  %tobool = icmp ne %struct.swnode* %8, null, !dbg !4152
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4154

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4155
  %parent = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 7, !dbg !4156
  %10 = load %struct.swnode*, %struct.swnode** %parent, align 8, !dbg !4156
  %tobool2 = icmp ne %struct.swnode* %10, null, !dbg !4155
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4157

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4158
  br label %return, !dbg !4158

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4159
  %parent3 = getelementptr inbounds %struct.swnode, %struct.swnode* %11, i32 0, i32 7, !dbg !4160
  %12 = load %struct.swnode*, %struct.swnode** %parent3, align 8, !dbg !4160
  %fwnode4 = getelementptr inbounds %struct.swnode, %struct.swnode* %12, i32 0, i32 2, !dbg !4161
  %call5 = call %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle* %fwnode4) #8, !dbg !4162
  store %struct.fwnode_handle* %call5, %struct.fwnode_handle** %retval, align 8, !dbg !4163
  br label %return, !dbg !4163

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4164
  ret %struct.fwnode_handle* %13, !dbg !4164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @software_node_get_next_child(%struct.fwnode_handle* %fwnode, %struct.fwnode_handle* %child) #0 !dbg !4165 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %child.addr = alloca %struct.fwnode_handle*, align 8
  %p = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  %c = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode2 = alloca %struct.fwnode_handle*, align 8
  %tmp3 = alloca %struct.swnode*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp9 = alloca %struct.swnode*, align 8
  %__mptr24 = alloca i8*, align 8
  %tmp28 = alloca %struct.swnode*, align 8
  %__mptr30 = alloca i8*, align 8
  %tmp35 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  store %struct.fwnode_handle* %child, %struct.fwnode_handle** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %child.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.declare(metadata %struct.swnode** %p, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4172, metadata !DIExpression()), !dbg !4174
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4174
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4174
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4174
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4174
  br i1 %call, label %cond.true, label %cond.false, !dbg !4174

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4175, metadata !DIExpression()), !dbg !4177
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4177
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4177
  store i8* %3, i8** %__mptr, align 8, !dbg !4177
  br label %do.body, !dbg !4177

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4178

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4177
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4177
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4177
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4178
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4177
  br label %cond.end, !dbg !4174

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4174

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4174
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4174
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4174
  store %struct.swnode* %7, %struct.swnode** %p, align 8, !dbg !4171
  call void @llvm.dbg.declare(metadata %struct.swnode** %c, metadata !4180, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode2, metadata !4182, metadata !DIExpression()), !dbg !4184
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %child.addr, align 8, !dbg !4184
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %__to_swnode_fwnode2, align 8, !dbg !4184
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode2, align 8, !dbg !4184
  %call4 = call zeroext i1 @is_software_node(%struct.fwnode_handle* %9) #8, !dbg !4184
  br i1 %call4, label %cond.true5, label %cond.false11, !dbg !4184

cond.true5:                                       ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4185, metadata !DIExpression()), !dbg !4187
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode2, align 8, !dbg !4187
  %11 = bitcast %struct.fwnode_handle* %10 to i8*, !dbg !4187
  store i8* %11, i8** %__mptr6, align 8, !dbg !4187
  br label %do.body7, !dbg !4187

do.body7:                                         ; preds = %cond.true5
  br label %do.end8, !dbg !4188

do.end8:                                          ; preds = %do.body7
  %12 = load i8*, i8** %__mptr6, align 8, !dbg !4187
  %add.ptr10 = getelementptr i8, i8* %12, i64 -72, !dbg !4187
  %13 = bitcast i8* %add.ptr10 to %struct.swnode*, !dbg !4187
  store %struct.swnode* %13, %struct.swnode** %tmp9, align 8, !dbg !4188
  %14 = load %struct.swnode*, %struct.swnode** %tmp9, align 8, !dbg !4187
  br label %cond.end12, !dbg !4184

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12, !dbg !4184

cond.end12:                                       ; preds = %cond.false11, %do.end8
  %cond13 = phi %struct.swnode* [ %14, %do.end8 ], [ null, %cond.false11 ], !dbg !4184
  store %struct.swnode* %cond13, %struct.swnode** %tmp3, align 8, !dbg !4184
  %15 = load %struct.swnode*, %struct.swnode** %tmp3, align 8, !dbg !4184
  store %struct.swnode* %15, %struct.swnode** %c, align 8, !dbg !4181
  %16 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !4190
  %tobool = icmp ne %struct.swnode* %16, null, !dbg !4190
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4192

lor.lhs.false:                                    ; preds = %cond.end12
  %17 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !4193
  %children = getelementptr inbounds %struct.swnode, %struct.swnode* %17, i32 0, i32 6, !dbg !4194
  %call14 = call i32 @list_empty(%struct.list_head* %children) #8, !dbg !4195
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4195
  br i1 %tobool15, label %if.then, label %lor.lhs.false16, !dbg !4196

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %18 = load %struct.swnode*, %struct.swnode** %c, align 8, !dbg !4197
  %tobool17 = icmp ne %struct.swnode* %18, null, !dbg !4197
  br i1 %tobool17, label %land.lhs.true, label %if.end, !dbg !4198

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %19 = load %struct.swnode*, %struct.swnode** %c, align 8, !dbg !4199
  %entry18 = getelementptr inbounds %struct.swnode, %struct.swnode* %19, i32 0, i32 5, !dbg !4200
  %20 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !4201
  %children19 = getelementptr inbounds %struct.swnode, %struct.swnode* %20, i32 0, i32 6, !dbg !4202
  %call20 = call i32 @list_is_last(%struct.list_head* %entry18, %struct.list_head* %children19) #8, !dbg !4203
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4203
  br i1 %tobool21, label %if.then, label %if.end, !dbg !4204

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %cond.end12
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4205
  br label %return, !dbg !4205

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false16
  %21 = load %struct.swnode*, %struct.swnode** %c, align 8, !dbg !4206
  %tobool22 = icmp ne %struct.swnode* %21, null, !dbg !4206
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !4208

if.then23:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr24, metadata !4209, metadata !DIExpression()), !dbg !4211
  %22 = load %struct.swnode*, %struct.swnode** %c, align 8, !dbg !4211
  %entry25 = getelementptr inbounds %struct.swnode, %struct.swnode* %22, i32 0, i32 5, !dbg !4211
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %entry25, i32 0, i32 0, !dbg !4211
  %23 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4211
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !4211
  store i8* %24, i8** %__mptr24, align 8, !dbg !4211
  br label %do.body26, !dbg !4211

do.body26:                                        ; preds = %if.then23
  br label %do.end27, !dbg !4212

do.end27:                                         ; preds = %do.body26
  %25 = load i8*, i8** %__mptr24, align 8, !dbg !4211
  %add.ptr29 = getelementptr i8, i8* %25, i64 -120, !dbg !4211
  %26 = bitcast i8* %add.ptr29 to %struct.swnode*, !dbg !4211
  store %struct.swnode* %26, %struct.swnode** %tmp28, align 8, !dbg !4212
  %27 = load %struct.swnode*, %struct.swnode** %tmp28, align 8, !dbg !4211
  store %struct.swnode* %27, %struct.swnode** %c, align 8, !dbg !4214
  br label %if.end37, !dbg !4215

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr30, metadata !4216, metadata !DIExpression()), !dbg !4218
  %28 = load %struct.swnode*, %struct.swnode** %p, align 8, !dbg !4218
  %children31 = getelementptr inbounds %struct.swnode, %struct.swnode* %28, i32 0, i32 6, !dbg !4218
  %next32 = getelementptr inbounds %struct.list_head, %struct.list_head* %children31, i32 0, i32 0, !dbg !4218
  %29 = load %struct.list_head*, %struct.list_head** %next32, align 8, !dbg !4218
  %30 = bitcast %struct.list_head* %29 to i8*, !dbg !4218
  store i8* %30, i8** %__mptr30, align 8, !dbg !4218
  br label %do.body33, !dbg !4218

do.body33:                                        ; preds = %if.else
  br label %do.end34, !dbg !4219

do.end34:                                         ; preds = %do.body33
  %31 = load i8*, i8** %__mptr30, align 8, !dbg !4218
  %add.ptr36 = getelementptr i8, i8* %31, i64 -120, !dbg !4218
  %32 = bitcast i8* %add.ptr36 to %struct.swnode*, !dbg !4218
  store %struct.swnode* %32, %struct.swnode** %tmp35, align 8, !dbg !4219
  %33 = load %struct.swnode*, %struct.swnode** %tmp35, align 8, !dbg !4218
  store %struct.swnode* %33, %struct.swnode** %c, align 8, !dbg !4221
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %do.end27
  %34 = load %struct.swnode*, %struct.swnode** %c, align 8, !dbg !4222
  %fwnode38 = getelementptr inbounds %struct.swnode, %struct.swnode* %34, i32 0, i32 2, !dbg !4223
  store %struct.fwnode_handle* %fwnode38, %struct.fwnode_handle** %retval, align 8, !dbg !4224
  br label %return, !dbg !4224

return:                                           ; preds = %if.end37, %if.then
  %35 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4225
  ret %struct.fwnode_handle* %35, !dbg !4225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @software_node_get_named_child_node(%struct.fwnode_handle* %fwnode, i8* %childname) #0 !dbg !4226 {
entry:
  %retval = alloca %struct.fwnode_handle*, align 8
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %childname.addr = alloca i8*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  %child = alloca %struct.swnode*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp8 = alloca %struct.swnode*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp25 = alloca %struct.swnode*, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4227, metadata !DIExpression()), !dbg !4228
  store i8* %childname, i8** %childname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %childname.addr, metadata !4229, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4231, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4233, metadata !DIExpression()), !dbg !4235
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4235
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4235
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4235
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4235
  br i1 %call, label %cond.true, label %cond.false, !dbg !4235

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4236, metadata !DIExpression()), !dbg !4238
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4238
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4238
  store i8* %3, i8** %__mptr, align 8, !dbg !4238
  br label %do.body, !dbg !4238

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4239

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4238
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4238
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4238
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4239
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4238
  br label %cond.end, !dbg !4235

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4235

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4235
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4235
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4235
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4232
  call void @llvm.dbg.declare(metadata %struct.swnode** %child, metadata !4241, metadata !DIExpression()), !dbg !4242
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4243
  %tobool = icmp ne %struct.swnode* %8, null, !dbg !4243
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4245

lor.lhs.false:                                    ; preds = %cond.end
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4246
  %children = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 6, !dbg !4247
  %call2 = call i32 @list_empty(%struct.list_head* %children) #8, !dbg !4248
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4248
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4249

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4250
  br label %return, !dbg !4250

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !4251, metadata !DIExpression()), !dbg !4254
  %10 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4254
  %children5 = getelementptr inbounds %struct.swnode, %struct.swnode* %10, i32 0, i32 6, !dbg !4254
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %children5, i32 0, i32 0, !dbg !4254
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4254
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !4254
  store i8* %12, i8** %__mptr4, align 8, !dbg !4254
  br label %do.body6, !dbg !4254

do.body6:                                         ; preds = %if.end
  br label %do.end7, !dbg !4255

do.end7:                                          ; preds = %do.body6
  %13 = load i8*, i8** %__mptr4, align 8, !dbg !4254
  %add.ptr9 = getelementptr i8, i8* %13, i64 -120, !dbg !4254
  %14 = bitcast i8* %add.ptr9 to %struct.swnode*, !dbg !4254
  store %struct.swnode* %14, %struct.swnode** %tmp8, align 8, !dbg !4255
  %15 = load %struct.swnode*, %struct.swnode** %tmp8, align 8, !dbg !4254
  store %struct.swnode* %15, %struct.swnode** %child, align 8, !dbg !4257
  br label %for.cond, !dbg !4257

for.cond:                                         ; preds = %do.end24, %do.end7
  %16 = load %struct.swnode*, %struct.swnode** %child, align 8, !dbg !4258
  %entry10 = getelementptr inbounds %struct.swnode, %struct.swnode* %16, i32 0, i32 5, !dbg !4258
  %17 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4258
  %children11 = getelementptr inbounds %struct.swnode, %struct.swnode* %17, i32 0, i32 6, !dbg !4258
  %cmp = icmp eq %struct.list_head* %entry10, %children11, !dbg !4258
  %lnot = xor i1 %cmp, true, !dbg !4258
  br i1 %lnot, label %for.body, label %for.end, !dbg !4257

for.body:                                         ; preds = %for.cond
  %18 = load i8*, i8** %childname.addr, align 8, !dbg !4260
  %19 = load %struct.swnode*, %struct.swnode** %child, align 8, !dbg !4263
  %kobj = getelementptr inbounds %struct.swnode, %struct.swnode* %19, i32 0, i32 1, !dbg !4264
  %call12 = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !4265
  %call13 = call i32 @strcmp(i8* %18, i8* %call12) #8, !dbg !4266
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4266
  br i1 %tobool14, label %if.end19, label %if.then15, !dbg !4267

if.then15:                                        ; preds = %for.body
  %20 = load %struct.swnode*, %struct.swnode** %child, align 8, !dbg !4268
  %kobj16 = getelementptr inbounds %struct.swnode, %struct.swnode* %20, i32 0, i32 1, !dbg !4270
  %call17 = call %struct.kobject* @kobject_get(%struct.kobject* %kobj16) #8, !dbg !4271
  %21 = load %struct.swnode*, %struct.swnode** %child, align 8, !dbg !4272
  %fwnode18 = getelementptr inbounds %struct.swnode, %struct.swnode* %21, i32 0, i32 2, !dbg !4273
  store %struct.fwnode_handle* %fwnode18, %struct.fwnode_handle** %retval, align 8, !dbg !4274
  br label %return, !dbg !4274

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !4275

for.inc:                                          ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !4276, metadata !DIExpression()), !dbg !4278
  %22 = load %struct.swnode*, %struct.swnode** %child, align 8, !dbg !4278
  %entry21 = getelementptr inbounds %struct.swnode, %struct.swnode* %22, i32 0, i32 5, !dbg !4278
  %next22 = getelementptr inbounds %struct.list_head, %struct.list_head* %entry21, i32 0, i32 0, !dbg !4278
  %23 = load %struct.list_head*, %struct.list_head** %next22, align 8, !dbg !4278
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !4278
  store i8* %24, i8** %__mptr20, align 8, !dbg !4278
  br label %do.body23, !dbg !4278

do.body23:                                        ; preds = %for.inc
  br label %do.end24, !dbg !4279

do.end24:                                         ; preds = %do.body23
  %25 = load i8*, i8** %__mptr20, align 8, !dbg !4278
  %add.ptr26 = getelementptr i8, i8* %25, i64 -120, !dbg !4278
  %26 = bitcast i8* %add.ptr26 to %struct.swnode*, !dbg !4278
  store %struct.swnode* %26, %struct.swnode** %tmp25, align 8, !dbg !4279
  %27 = load %struct.swnode*, %struct.swnode** %tmp25, align 8, !dbg !4278
  store %struct.swnode* %27, %struct.swnode** %child, align 8, !dbg !4258
  br label %for.cond, !dbg !4258, !llvm.loop !4281

for.end:                                          ; preds = %for.cond
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %retval, align 8, !dbg !4283
  br label %return, !dbg !4283

return:                                           ; preds = %for.end, %if.then15, %if.then
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %retval, align 8, !dbg !4284
  ret %struct.fwnode_handle* %28, !dbg !4284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @software_node_get_reference_args(%struct.fwnode_handle* %fwnode, i8* %propname, i8* %nargs_prop, i32 %nargs, i32 %index, %struct.fwnode_reference_args* %args) #0 !dbg !4285 {
entry:
  %retval = alloca i32, align 4
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %propname.addr = alloca i8*, align 8
  %nargs_prop.addr = alloca i8*, align 8
  %nargs.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %args.addr = alloca %struct.fwnode_reference_args*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__to_swnode_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.swnode*, align 8
  %ref_array = alloca %struct.software_node_ref_args*, align 8
  %ref = alloca %struct.software_node_ref_args*, align 8
  %prop = alloca %struct.property_entry*, align 8
  %refnode = alloca %struct.fwnode_handle*, align 8
  %nargs_prop_val = alloca i32, align 4
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4286, metadata !DIExpression()), !dbg !4287
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4288, metadata !DIExpression()), !dbg !4289
  store i8* %nargs_prop, i8** %nargs_prop.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %nargs_prop.addr, metadata !4290, metadata !DIExpression()), !dbg !4291
  store i32 %nargs, i32* %nargs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nargs.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  store %struct.fwnode_reference_args* %args, %struct.fwnode_reference_args** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_reference_args** %args.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_swnode_fwnode, metadata !4300, metadata !DIExpression()), !dbg !4302
  %0 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4302
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4302
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4302
  %call = call zeroext i1 @is_software_node(%struct.fwnode_handle* %1) #8, !dbg !4302
  br i1 %call, label %cond.true, label %cond.false, !dbg !4302

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4303, metadata !DIExpression()), !dbg !4305
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_swnode_fwnode, align 8, !dbg !4305
  %3 = bitcast %struct.fwnode_handle* %2 to i8*, !dbg !4305
  store i8* %3, i8** %__mptr, align 8, !dbg !4305
  br label %do.body, !dbg !4305

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4306

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4305
  %add.ptr = getelementptr i8, i8* %4, i64 -72, !dbg !4305
  %5 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4305
  store %struct.swnode* %5, %struct.swnode** %tmp1, align 8, !dbg !4306
  %6 = load %struct.swnode*, %struct.swnode** %tmp1, align 8, !dbg !4305
  br label %cond.end, !dbg !4302

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4302

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.swnode* [ %6, %do.end ], [ null, %cond.false ], !dbg !4302
  store %struct.swnode* %cond, %struct.swnode** %tmp, align 8, !dbg !4302
  %7 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4302
  store %struct.swnode* %7, %struct.swnode** %swnode, align 8, !dbg !4299
  call void @llvm.dbg.declare(metadata %struct.software_node_ref_args** %ref_array, metadata !4308, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.declare(metadata %struct.software_node_ref_args** %ref, metadata !4317, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.declare(metadata %struct.property_entry** %prop, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %refnode, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.declare(metadata i32* %nargs_prop_val, metadata !4323, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4327, metadata !DIExpression()), !dbg !4328
  %8 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4329
  %tobool = icmp ne %struct.swnode* %8, null, !dbg !4329
  br i1 %tobool, label %if.end, label %if.then, !dbg !4331

if.then:                                          ; preds = %cond.end
  store i32 -2, i32* %retval, align 4, !dbg !4332
  br label %return, !dbg !4332

if.end:                                           ; preds = %cond.end
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4333
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 3, !dbg !4334
  %10 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !4334
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %10, i32 0, i32 2, !dbg !4335
  %11 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !4335
  %12 = load i8*, i8** %propname.addr, align 8, !dbg !4336
  %call2 = call %struct.property_entry* @property_entry_get(%struct.property_entry* %11, i8* %12) #8, !dbg !4337
  store %struct.property_entry* %call2, %struct.property_entry** %prop, align 8, !dbg !4338
  %13 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4339
  %tobool3 = icmp ne %struct.property_entry* %13, null, !dbg !4339
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4341

if.then4:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !4342
  br label %return, !dbg !4342

if.end5:                                          ; preds = %if.end
  %14 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4343
  %type = getelementptr inbounds %struct.property_entry, %struct.property_entry* %14, i32 0, i32 3, !dbg !4345
  %15 = load i32, i32* %type, align 4, !dbg !4345
  %cmp = icmp ne i32 %15, 5, !dbg !4346
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4347

if.then6:                                         ; preds = %if.end5
  store i32 -22, i32* %retval, align 4, !dbg !4348
  br label %return, !dbg !4348

if.end7:                                          ; preds = %if.end5
  %16 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4349
  %is_inline = getelementptr inbounds %struct.property_entry, %struct.property_entry* %16, i32 0, i32 2, !dbg !4351
  %17 = load i8, i8* %is_inline, align 8, !dbg !4351
  %tobool8 = trunc i8 %17 to i1, !dbg !4351
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4352

if.then9:                                         ; preds = %if.end7
  store i32 -22, i32* %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

if.end10:                                         ; preds = %if.end7
  %18 = load i32, i32* %index.addr, align 4, !dbg !4354
  %conv = zext i32 %18 to i64, !dbg !4354
  %mul = mul i64 %conv, 80, !dbg !4356
  %19 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4357
  %length = getelementptr inbounds %struct.property_entry, %struct.property_entry* %19, i32 0, i32 1, !dbg !4358
  %20 = load i64, i64* %length, align 8, !dbg !4358
  %cmp11 = icmp uge i64 %mul, %20, !dbg !4359
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !4360

if.then13:                                        ; preds = %if.end10
  store i32 -2, i32* %retval, align 4, !dbg !4361
  br label %return, !dbg !4361

if.end14:                                         ; preds = %if.end10
  %21 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4362
  %22 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %21, i32 0, i32 4, !dbg !4363
  %pointer = bitcast %union.anon.38* %22 to i8**, !dbg !4363
  %23 = load i8*, i8** %pointer, align 8, !dbg !4363
  %24 = bitcast i8* %23 to %struct.software_node_ref_args*, !dbg !4362
  store %struct.software_node_ref_args* %24, %struct.software_node_ref_args** %ref_array, align 8, !dbg !4364
  %25 = load %struct.software_node_ref_args*, %struct.software_node_ref_args** %ref_array, align 8, !dbg !4365
  %26 = load i32, i32* %index.addr, align 4, !dbg !4366
  %idxprom = zext i32 %26 to i64, !dbg !4365
  %arrayidx = getelementptr %struct.software_node_ref_args, %struct.software_node_ref_args* %25, i64 %idxprom, !dbg !4365
  store %struct.software_node_ref_args* %arrayidx, %struct.software_node_ref_args** %ref, align 8, !dbg !4367
  %27 = load %struct.software_node_ref_args*, %struct.software_node_ref_args** %ref, align 8, !dbg !4368
  %node15 = getelementptr inbounds %struct.software_node_ref_args, %struct.software_node_ref_args* %27, i32 0, i32 0, !dbg !4369
  %28 = load %struct.software_node*, %struct.software_node** %node15, align 8, !dbg !4369
  %call16 = call %struct.fwnode_handle* @software_node_fwnode(%struct.software_node* %28) #8, !dbg !4370
  store %struct.fwnode_handle* %call16, %struct.fwnode_handle** %refnode, align 8, !dbg !4371
  %29 = load %struct.fwnode_handle*, %struct.fwnode_handle** %refnode, align 8, !dbg !4372
  %tobool17 = icmp ne %struct.fwnode_handle* %29, null, !dbg !4372
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4374

if.then18:                                        ; preds = %if.end14
  store i32 -2, i32* %retval, align 4, !dbg !4375
  br label %return, !dbg !4375

if.end19:                                         ; preds = %if.end14
  %30 = load i8*, i8** %nargs_prop.addr, align 8, !dbg !4376
  %tobool20 = icmp ne i8* %30, null, !dbg !4376
  br i1 %tobool20, label %if.then21, label %if.end28, !dbg !4378

if.then21:                                        ; preds = %if.end19
  %31 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4379
  %node22 = getelementptr inbounds %struct.swnode, %struct.swnode* %31, i32 0, i32 3, !dbg !4381
  %32 = load %struct.software_node*, %struct.software_node** %node22, align 8, !dbg !4381
  %properties23 = getelementptr inbounds %struct.software_node, %struct.software_node* %32, i32 0, i32 2, !dbg !4382
  %33 = load %struct.property_entry*, %struct.property_entry** %properties23, align 8, !dbg !4382
  %34 = load i8*, i8** %nargs_prop.addr, align 8, !dbg !4383
  %35 = bitcast i32* %nargs_prop_val to i8*, !dbg !4384
  %call24 = call i32 @property_entry_read_int_array(%struct.property_entry* %33, i8* %34, i32 4, i8* %35, i64 1) #8, !dbg !4385
  store i32 %call24, i32* %error, align 4, !dbg !4386
  %36 = load i32, i32* %error, align 4, !dbg !4387
  %tobool25 = icmp ne i32 %36, 0, !dbg !4387
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4389

if.then26:                                        ; preds = %if.then21
  %37 = load i32, i32* %error, align 4, !dbg !4390
  store i32 %37, i32* %retval, align 4, !dbg !4391
  br label %return, !dbg !4391

if.end27:                                         ; preds = %if.then21
  %38 = load i32, i32* %nargs_prop_val, align 4, !dbg !4392
  store i32 %38, i32* %nargs.addr, align 4, !dbg !4393
  br label %if.end28, !dbg !4394

if.end28:                                         ; preds = %if.end27, %if.end19
  %39 = load i32, i32* %nargs.addr, align 4, !dbg !4395
  %cmp29 = icmp ugt i32 %39, 8, !dbg !4397
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4398

if.then31:                                        ; preds = %if.end28
  store i32 -22, i32* %retval, align 4, !dbg !4399
  br label %return, !dbg !4399

if.end32:                                         ; preds = %if.end28
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %refnode, align 8, !dbg !4400
  %call33 = call %struct.fwnode_handle* @software_node_get(%struct.fwnode_handle* %40) #8, !dbg !4401
  %41 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !4402
  %fwnode34 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %41, i32 0, i32 0, !dbg !4403
  store %struct.fwnode_handle* %call33, %struct.fwnode_handle** %fwnode34, align 8, !dbg !4404
  %42 = load i32, i32* %nargs.addr, align 4, !dbg !4405
  %43 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !4406
  %nargs35 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %43, i32 0, i32 1, !dbg !4407
  store i32 %42, i32* %nargs35, align 8, !dbg !4408
  store i32 0, i32* %i, align 4, !dbg !4409
  br label %for.cond, !dbg !4411

for.cond:                                         ; preds = %for.inc, %if.end32
  %44 = load i32, i32* %i, align 4, !dbg !4412
  %45 = load i32, i32* %nargs.addr, align 4, !dbg !4414
  %cmp36 = icmp ult i32 %44, %45, !dbg !4415
  br i1 %cmp36, label %for.body, label %for.end, !dbg !4416

for.body:                                         ; preds = %for.cond
  %46 = load %struct.software_node_ref_args*, %struct.software_node_ref_args** %ref, align 8, !dbg !4417
  %args38 = getelementptr inbounds %struct.software_node_ref_args, %struct.software_node_ref_args* %46, i32 0, i32 2, !dbg !4418
  %47 = load i32, i32* %i, align 4, !dbg !4419
  %idxprom39 = sext i32 %47 to i64, !dbg !4417
  %arrayidx40 = getelementptr [8 x i64], [8 x i64]* %args38, i64 0, i64 %idxprom39, !dbg !4417
  %48 = load i64, i64* %arrayidx40, align 8, !dbg !4417
  %49 = load %struct.fwnode_reference_args*, %struct.fwnode_reference_args** %args.addr, align 8, !dbg !4420
  %args41 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %49, i32 0, i32 2, !dbg !4421
  %50 = load i32, i32* %i, align 4, !dbg !4422
  %idxprom42 = sext i32 %50 to i64, !dbg !4420
  %arrayidx43 = getelementptr [8 x i64], [8 x i64]* %args41, i64 0, i64 %idxprom42, !dbg !4420
  store i64 %48, i64* %arrayidx43, align 8, !dbg !4423
  br label %for.inc, !dbg !4420

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4, !dbg !4424
  %inc = add i32 %51, 1, !dbg !4424
  store i32 %inc, i32* %i, align 4, !dbg !4424
  br label %for.cond, !dbg !4425, !llvm.loop !4426

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4428
  br label %return, !dbg !4428

return:                                           ; preds = %for.end, %if.then31, %if.then26, %if.then18, %if.then13, %if.then9, %if.then6, %if.then4, %if.then
  %52 = load i32, i32* %retval, align 4, !dbg !4429
  ret i32 %52, !dbg !4429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.property_entry* @property_entry_get(%struct.property_entry* %prop, i8* %name) #0 !dbg !4430 {
entry:
  %retval = alloca %struct.property_entry*, align 8
  %prop.addr = alloca %struct.property_entry*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.property_entry* %prop, %struct.property_entry** %prop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %prop.addr, metadata !4433, metadata !DIExpression()), !dbg !4434
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4435, metadata !DIExpression()), !dbg !4436
  %0 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !4437
  %tobool = icmp ne %struct.property_entry* %0, null, !dbg !4437
  br i1 %tobool, label %if.end, label %if.then, !dbg !4439

if.then:                                          ; preds = %entry
  store %struct.property_entry* null, %struct.property_entry** %retval, align 8, !dbg !4440
  br label %return, !dbg !4440

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !4441

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !4442
  %name1 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %1, i32 0, i32 0, !dbg !4445
  %2 = load i8*, i8** %name1, align 8, !dbg !4445
  %tobool2 = icmp ne i8* %2, null, !dbg !4446
  br i1 %tobool2, label %for.body, label %for.end, !dbg !4446

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4447
  %4 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !4449
  %name3 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %4, i32 0, i32 0, !dbg !4450
  %5 = load i8*, i8** %name3, align 8, !dbg !4450
  %call = call i32 @strcmp(i8* %3, i8* %5) #8, !dbg !4451
  %tobool4 = icmp ne i32 %call, 0, !dbg !4451
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4452

if.then5:                                         ; preds = %for.body
  %6 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !4453
  store %struct.property_entry* %6, %struct.property_entry** %retval, align 8, !dbg !4454
  br label %return, !dbg !4454

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !4455

for.inc:                                          ; preds = %if.end6
  %7 = load %struct.property_entry*, %struct.property_entry** %prop.addr, align 8, !dbg !4456
  %incdec.ptr = getelementptr %struct.property_entry, %struct.property_entry* %7, i32 1, !dbg !4456
  store %struct.property_entry* %incdec.ptr, %struct.property_entry** %prop.addr, align 8, !dbg !4456
  br label %for.cond, !dbg !4457, !llvm.loop !4458

for.end:                                          ; preds = %for.cond
  store %struct.property_entry* null, %struct.property_entry** %retval, align 8, !dbg !4460
  br label %return, !dbg !4460

return:                                           ; preds = %for.end, %if.then5, %if.then
  %8 = load %struct.property_entry*, %struct.property_entry** %retval, align 8, !dbg !4461
  ret %struct.property_entry* %8, !dbg !4461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @property_entry_read_int_array(%struct.property_entry* %props, i8* %name, i32 %elem_size, i8* %val, i64 %nval) #0 !dbg !4462 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca %struct.property_entry*, align 8
  %name.addr = alloca i8*, align 8
  %elem_size.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %nval.addr = alloca i64, align 8
  %pointer = alloca i8*, align 8
  %length = alloca i64, align 8
  store %struct.property_entry* %props, %struct.property_entry** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %props.addr, metadata !4465, metadata !DIExpression()), !dbg !4466
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  store i32 %elem_size, i32* %elem_size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elem_size.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.declare(metadata i8** %pointer, metadata !4475, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.declare(metadata i64* %length, metadata !4477, metadata !DIExpression()), !dbg !4478
  %0 = load i8*, i8** %val.addr, align 8, !dbg !4479
  %tobool = icmp ne i8* %0, null, !dbg !4479
  br i1 %tobool, label %if.end, label %if.then, !dbg !4481

if.then:                                          ; preds = %entry
  %1 = load %struct.property_entry*, %struct.property_entry** %props.addr, align 8, !dbg !4482
  %2 = load i8*, i8** %name.addr, align 8, !dbg !4483
  %3 = load i32, i32* %elem_size.addr, align 4, !dbg !4484
  %conv = zext i32 %3 to i64, !dbg !4484
  %call = call i32 @property_entry_count_elems_of_size(%struct.property_entry* %1, i8* %2, i64 %conv) #8, !dbg !4485
  store i32 %call, i32* %retval, align 4, !dbg !4486
  br label %return, !dbg !4486

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %elem_size.addr, align 4, !dbg !4487
  %conv1 = zext i32 %4 to i64, !dbg !4487
  %call2 = call zeroext i1 @is_power_of_2(i64 %conv1) #10, !dbg !4489
  br i1 %call2, label %lor.lhs.false, label %if.then5, !dbg !4490

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %elem_size.addr, align 4, !dbg !4491
  %conv3 = zext i32 %5 to i64, !dbg !4491
  %cmp = icmp ugt i64 %conv3, 8, !dbg !4492
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !4493

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -6, i32* %retval, align 4, !dbg !4494
  br label %return, !dbg !4494

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load i64, i64* %nval.addr, align 8, !dbg !4495
  %7 = load i32, i32* %elem_size.addr, align 4, !dbg !4496
  %conv7 = zext i32 %7 to i64, !dbg !4496
  %mul = mul i64 %6, %conv7, !dbg !4497
  store i64 %mul, i64* %length, align 8, !dbg !4498
  %8 = load %struct.property_entry*, %struct.property_entry** %props.addr, align 8, !dbg !4499
  %9 = load i8*, i8** %name.addr, align 8, !dbg !4500
  %10 = load i64, i64* %length, align 8, !dbg !4501
  %call8 = call i8* @property_entry_find(%struct.property_entry* %8, i8* %9, i64 %10) #8, !dbg !4502
  store i8* %call8, i8** %pointer, align 8, !dbg !4503
  %11 = load i8*, i8** %pointer, align 8, !dbg !4504
  %call9 = call zeroext i1 @IS_ERR(i8* %11) #8, !dbg !4506
  br i1 %call9, label %if.then10, label %if.end13, !dbg !4507

if.then10:                                        ; preds = %if.end6
  %12 = load i8*, i8** %pointer, align 8, !dbg !4508
  %call11 = call i64 @PTR_ERR(i8* %12) #8, !dbg !4509
  %conv12 = trunc i64 %call11 to i32, !dbg !4509
  store i32 %conv12, i32* %retval, align 4, !dbg !4510
  br label %return, !dbg !4510

if.end13:                                         ; preds = %if.end6
  %13 = load i8*, i8** %val.addr, align 8, !dbg !4511
  %14 = load i8*, i8** %pointer, align 8, !dbg !4512
  %15 = load i64, i64* %length, align 8, !dbg !4513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 %15, i1 false), !dbg !4514
  store i32 0, i32* %retval, align 4, !dbg !4515
  br label %return, !dbg !4515

return:                                           ; preds = %if.end13, %if.then10, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4516
  ret i32 %16, !dbg !4516
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @property_entry_count_elems_of_size(%struct.property_entry* %props, i8* %propname, i64 %length) #0 !dbg !4517 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca %struct.property_entry*, align 8
  %propname.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %prop = alloca %struct.property_entry*, align 8
  store %struct.property_entry* %props, %struct.property_entry** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %props.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.declare(metadata %struct.property_entry** %prop, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.property_entry*, %struct.property_entry** %props.addr, align 8, !dbg !4528
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4529
  %call = call %struct.property_entry* @property_entry_get(%struct.property_entry* %0, i8* %1) #8, !dbg !4530
  store %struct.property_entry* %call, %struct.property_entry** %prop, align 8, !dbg !4531
  %2 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4532
  %tobool = icmp ne %struct.property_entry* %2, null, !dbg !4532
  br i1 %tobool, label %if.end, label %if.then, !dbg !4534

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4535
  br label %return, !dbg !4535

if.end:                                           ; preds = %entry
  %3 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4536
  %length1 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %3, i32 0, i32 1, !dbg !4537
  %4 = load i64, i64* %length1, align 8, !dbg !4537
  %5 = load i64, i64* %length.addr, align 8, !dbg !4538
  %div = udiv i64 %4, %5, !dbg !4539
  %conv = trunc i64 %div to i32, !dbg !4536
  store i32 %conv, i32* %retval, align 4, !dbg !4540
  br label %return, !dbg !4540

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4541
  ret i32 %6, !dbg !4541
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i1 @is_power_of_2(i64 %n) #6 !dbg !4542 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4545, metadata !DIExpression()), !dbg !4546
  %0 = load i64, i64* %n.addr, align 8, !dbg !4547
  %cmp = icmp ne i64 %0, 0, !dbg !4548
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4549

land.rhs:                                         ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !4550
  %2 = load i64, i64* %n.addr, align 8, !dbg !4551
  %sub = sub i64 %2, 1, !dbg !4552
  %and = and i64 %1, %sub, !dbg !4553
  %cmp1 = icmp eq i64 %and, 0, !dbg !4554
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4555
  ret i1 %3, !dbg !4556
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @property_entry_find(%struct.property_entry* %props, i8* %propname, i64 %length) #0 !dbg !4557 {
entry:
  %retval = alloca i8*, align 8
  %props.addr = alloca %struct.property_entry*, align 8
  %propname.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %prop = alloca %struct.property_entry*, align 8
  %pointer = alloca i8*, align 8
  store %struct.property_entry* %props, %struct.property_entry** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %props.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4562, metadata !DIExpression()), !dbg !4563
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.declare(metadata %struct.property_entry** %prop, metadata !4566, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.declare(metadata i8** %pointer, metadata !4568, metadata !DIExpression()), !dbg !4569
  %0 = load %struct.property_entry*, %struct.property_entry** %props.addr, align 8, !dbg !4570
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4571
  %call = call %struct.property_entry* @property_entry_get(%struct.property_entry* %0, i8* %1) #8, !dbg !4572
  store %struct.property_entry* %call, %struct.property_entry** %prop, align 8, !dbg !4573
  %2 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4574
  %tobool = icmp ne %struct.property_entry* %2, null, !dbg !4574
  br i1 %tobool, label %if.end, label %if.then, !dbg !4576

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -22) #8, !dbg !4577
  store i8* %call1, i8** %retval, align 8, !dbg !4578
  br label %return, !dbg !4578

if.end:                                           ; preds = %entry
  %3 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4579
  %call2 = call i8* @property_get_pointer(%struct.property_entry* %3) #8, !dbg !4580
  store i8* %call2, i8** %pointer, align 8, !dbg !4581
  %4 = load i8*, i8** %pointer, align 8, !dbg !4582
  %tobool3 = icmp ne i8* %4, null, !dbg !4582
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4584

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -61) #8, !dbg !4585
  store i8* %call5, i8** %retval, align 8, !dbg !4586
  br label %return, !dbg !4586

if.end6:                                          ; preds = %if.end
  %5 = load i64, i64* %length.addr, align 8, !dbg !4587
  %6 = load %struct.property_entry*, %struct.property_entry** %prop, align 8, !dbg !4589
  %length7 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %6, i32 0, i32 1, !dbg !4590
  %7 = load i64, i64* %length7, align 8, !dbg !4590
  %cmp = icmp ugt i64 %5, %7, !dbg !4591
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !4592

if.then8:                                         ; preds = %if.end6
  %call9 = call i8* @ERR_PTR(i64 -75) #8, !dbg !4593
  store i8* %call9, i8** %retval, align 8, !dbg !4594
  br label %return, !dbg !4594

if.end10:                                         ; preds = %if.end6
  %8 = load i8*, i8** %pointer, align 8, !dbg !4595
  store i8* %8, i8** %retval, align 8, !dbg !4596
  br label %return, !dbg !4596

return:                                           ; preds = %if.end10, %if.then8, %if.then4, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !4597
  ret i8* %9, !dbg !4597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4598 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4601, metadata !DIExpression()), !dbg !4602
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4603
  %1 = ptrtoint i8* %0 to i64, !dbg !4604
  ret i64 %1, !dbg !4605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @property_entry_read_string_array(%struct.property_entry* %props, i8* %propname, i8** %strings, i64 %nval) #0 !dbg !4606 {
entry:
  %retval = alloca i32, align 4
  %props.addr = alloca %struct.property_entry*, align 8
  %propname.addr = alloca i8*, align 8
  %strings.addr = alloca i8**, align 8
  %nval.addr = alloca i64, align 8
  %pointer = alloca i8*, align 8
  %length = alloca i64, align 8
  %array_len = alloca i32, align 4
  %__UNIQUE_ID___x161 = alloca i64, align 8
  %__UNIQUE_ID___y162 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.property_entry* %props, %struct.property_entry** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.property_entry** %props.addr, metadata !4609, metadata !DIExpression()), !dbg !4610
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  store i8** %strings, i8*** %strings.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %strings.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  store i64 %nval, i64* %nval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nval.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata i8** %pointer, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata i64* %length, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i32* %array_len, metadata !4621, metadata !DIExpression()), !dbg !4622
  %0 = load %struct.property_entry*, %struct.property_entry** %props.addr, align 8, !dbg !4623
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4624
  %call = call i32 @property_entry_count_elems_of_size(%struct.property_entry* %0, i8* %1, i64 8) #8, !dbg !4625
  store i32 %call, i32* %array_len, align 4, !dbg !4626
  %2 = load i32, i32* %array_len, align 4, !dbg !4627
  %cmp = icmp slt i32 %2, 0, !dbg !4629
  br i1 %cmp, label %if.then, label %if.end, !dbg !4630

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %array_len, align 4, !dbg !4631
  store i32 %3, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %strings.addr, align 8, !dbg !4633
  %tobool = icmp ne i8** %4, null, !dbg !4633
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4635

if.then1:                                         ; preds = %if.end
  %5 = load i32, i32* %array_len, align 4, !dbg !4636
  store i32 %5, i32* %retval, align 4, !dbg !4637
  br label %return, !dbg !4637

if.end2:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x161, metadata !4638, metadata !DIExpression()), !dbg !4640
  %6 = load i64, i64* %nval.addr, align 8, !dbg !4640
  store i64 %6, i64* %__UNIQUE_ID___x161, align 8, !dbg !4640
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y162, metadata !4641, metadata !DIExpression()), !dbg !4640
  %7 = load i32, i32* %array_len, align 4, !dbg !4640
  %conv = sext i32 %7 to i64, !dbg !4640
  store i64 %conv, i64* %__UNIQUE_ID___y162, align 8, !dbg !4640
  %8 = load i64, i64* %__UNIQUE_ID___x161, align 8, !dbg !4640
  %9 = load i64, i64* %__UNIQUE_ID___y162, align 8, !dbg !4640
  %cmp3 = icmp ult i64 %8, %9, !dbg !4640
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !4640

cond.true:                                        ; preds = %if.end2
  %10 = load i64, i64* %__UNIQUE_ID___x161, align 8, !dbg !4640
  br label %cond.end, !dbg !4640

cond.false:                                       ; preds = %if.end2
  %11 = load i64, i64* %__UNIQUE_ID___y162, align 8, !dbg !4640
  br label %cond.end, !dbg !4640

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !4640
  store i64 %cond, i64* %tmp, align 8, !dbg !4640
  %12 = load i64, i64* %tmp, align 8, !dbg !4640
  %conv5 = trunc i64 %12 to i32, !dbg !4642
  store i32 %conv5, i32* %array_len, align 4, !dbg !4643
  %13 = load i32, i32* %array_len, align 4, !dbg !4644
  %conv6 = sext i32 %13 to i64, !dbg !4644
  %mul = mul i64 %conv6, 8, !dbg !4645
  store i64 %mul, i64* %length, align 8, !dbg !4646
  %14 = load %struct.property_entry*, %struct.property_entry** %props.addr, align 8, !dbg !4647
  %15 = load i8*, i8** %propname.addr, align 8, !dbg !4648
  %16 = load i64, i64* %length, align 8, !dbg !4649
  %call7 = call i8* @property_entry_find(%struct.property_entry* %14, i8* %15, i64 %16) #8, !dbg !4650
  store i8* %call7, i8** %pointer, align 8, !dbg !4651
  %17 = load i8*, i8** %pointer, align 8, !dbg !4652
  %call8 = call zeroext i1 @IS_ERR(i8* %17) #8, !dbg !4654
  br i1 %call8, label %if.then9, label %if.end12, !dbg !4655

if.then9:                                         ; preds = %cond.end
  %18 = load i8*, i8** %pointer, align 8, !dbg !4656
  %call10 = call i64 @PTR_ERR(i8* %18) #8, !dbg !4657
  %conv11 = trunc i64 %call10 to i32, !dbg !4657
  store i32 %conv11, i32* %retval, align 4, !dbg !4658
  br label %return, !dbg !4658

if.end12:                                         ; preds = %cond.end
  %19 = load i8**, i8*** %strings.addr, align 8, !dbg !4659
  %20 = bitcast i8** %19 to i8*, !dbg !4660
  %21 = load i8*, i8** %pointer, align 8, !dbg !4661
  %22 = load i64, i64* %length, align 8, !dbg !4662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 1 %21, i64 %22, i1 false), !dbg !4660
  %23 = load i32, i32* %array_len, align 4, !dbg !4663
  store i32 %23, i32* %retval, align 4, !dbg !4664
  br label %return, !dbg !4664

return:                                           ; preds = %if.end12, %if.then9, %if.then1, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4665
  ret i32 %24, !dbg !4665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4666 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4673
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4674
  %1 = load i8*, i8** %name, align 8, !dbg !4674
  ret i8* %1, !dbg !4675
}

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_get_next_parent(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local i8* @fwnode_get_name_prefix(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local void @fwnode_handle_put(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local %struct.fwnode_handle* @fwnode_handle_get(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4676 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4682, metadata !DIExpression()), !dbg !4683
  br label %do.body, !dbg !4684

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4686

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4684
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4684
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4684
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4686
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4684
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4688
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4689
  %conv = zext i1 %cmp to i32, !dbg !4689
  ret i32 %conv, !dbg !4690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_is_last(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !4691 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4698
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4699
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4699
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4700
  %cmp = icmp eq %struct.list_head* %1, %2, !dbg !4701
  %conv = zext i1 %cmp to i32, !dbg !4701
  ret i32 %conv, !dbg !4702
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ida_init(%struct.ida* %ida) #0 !dbg !4703 {
entry:
  %ida.addr = alloca %struct.ida*, align 8
  store %struct.ida* %ida, %struct.ida** %ida.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ida** %ida.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  %0 = load %struct.ida*, %struct.ida** %ida.addr, align 8, !dbg !4709
  %xa = getelementptr inbounds %struct.ida, %struct.ida* %0, i32 0, i32 0, !dbg !4710
  call void @xa_init_flags(%struct.xarray* %xa, i32 8388613) #8, !dbg !4711
  ret void, !dbg !4712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4713 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4716, metadata !DIExpression()), !dbg !4717
  br label %do.body, !dbg !4718

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4719

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4721

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4719

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4723
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4723
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4723
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4723
  br label %do.end3, !dbg !4723

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4719

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4725
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4726
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4727
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4728
  ret void, !dbg !4729
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_init_and_add(%struct.kobject*, %struct.kobj_type*, %struct.kobject*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4730 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4737
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4738
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4739
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4739
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4740
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !4741
  ret void, !dbg !4742
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xa_init_flags(%struct.xarray* %xa, i32 %flags) #0 !dbg !4743 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4747, metadata !DIExpression()), !dbg !4752
  %xa.addr = alloca %struct.xarray*, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.xarray* %xa, %struct.xarray** %xa.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xarray** %xa.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  br label %do.body, !dbg !4759

do.body:                                          ; preds = %entry
  %0 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !4760
  %xa_lock = getelementptr inbounds %struct.xarray, %struct.xarray* %0, i32 0, i32 0, !dbg !4760
  store %struct.spinlock* %xa_lock, %struct.spinlock** %lock.addr.i, align 8
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4761
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !4762
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !4762
  %3 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !4760
  %xa_lock1 = getelementptr inbounds %struct.xarray, %struct.xarray* %3, i32 0, i32 0, !dbg !4760
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4760
  %rlock = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !4760
  %5 = bitcast %struct.spinlock* %xa_lock1 to i8*, !dbg !4760
  %6 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 1 %6, i64 0, i1 false), !dbg !4760
  br label %do.end, !dbg !4760

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %flags.addr, align 4, !dbg !4763
  %8 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !4764
  %xa_flags = getelementptr inbounds %struct.xarray, %struct.xarray* %8, i32 0, i32 1, !dbg !4765
  store i32 %7, i32* %xa_flags, align 8, !dbg !4766
  %9 = load %struct.xarray*, %struct.xarray** %xa.addr, align 8, !dbg !4767
  %xa_head = getelementptr inbounds %struct.xarray, %struct.xarray* %9, i32 0, i32 2, !dbg !4768
  store i8* null, i8** %xa_head, align 8, !dbg !4769
  ret void, !dbg !4770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @software_node_release(%struct.kobject* %kobj) #0 !dbg !4771 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %swnode = alloca %struct.swnode*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.swnode*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.declare(metadata %struct.swnode** %swnode, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4776, metadata !DIExpression()), !dbg !4778
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4778
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !4778
  store i8* %1, i8** %__mptr, align 8, !dbg !4778
  br label %do.body, !dbg !4778

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4779

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4778
  %add.ptr = getelementptr i8, i8* %2, i64 -8, !dbg !4778
  %3 = bitcast i8* %add.ptr to %struct.swnode*, !dbg !4778
  store %struct.swnode* %3, %struct.swnode** %tmp, align 8, !dbg !4779
  %4 = load %struct.swnode*, %struct.swnode** %tmp, align 8, !dbg !4778
  store %struct.swnode* %4, %struct.swnode** %swnode, align 8, !dbg !4775
  %5 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4781
  %parent = getelementptr inbounds %struct.swnode, %struct.swnode* %5, i32 0, i32 7, !dbg !4783
  %6 = load %struct.swnode*, %struct.swnode** %parent, align 8, !dbg !4783
  %tobool = icmp ne %struct.swnode* %6, null, !dbg !4781
  br i1 %tobool, label %if.then, label %if.else, !dbg !4784

if.then:                                          ; preds = %do.end
  %7 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4785
  %parent1 = getelementptr inbounds %struct.swnode, %struct.swnode* %7, i32 0, i32 7, !dbg !4785
  %8 = load %struct.swnode*, %struct.swnode** %parent1, align 8, !dbg !4785
  %child_ids = getelementptr inbounds %struct.swnode, %struct.swnode* %8, i32 0, i32 4, !dbg !4785
  %9 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4785
  %id = getelementptr inbounds %struct.swnode, %struct.swnode* %9, i32 0, i32 0, !dbg !4785
  %10 = load i32, i32* %id, align 8, !dbg !4785
  call void @ida_free(%struct.ida* %child_ids, i32 %10) #8, !dbg !4785
  %11 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4787
  %entry2 = getelementptr inbounds %struct.swnode, %struct.swnode* %11, i32 0, i32 5, !dbg !4788
  call void @list_del(%struct.list_head* %entry2) #8, !dbg !4789
  br label %if.end, !dbg !4790

if.else:                                          ; preds = %do.end
  %12 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4791
  %id3 = getelementptr inbounds %struct.swnode, %struct.swnode* %12, i32 0, i32 0, !dbg !4791
  %13 = load i32, i32* %id3, align 8, !dbg !4791
  call void @ida_free(%struct.ida* @swnode_root_ids, i32 %13) #8, !dbg !4791
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4793
  %allocated = getelementptr inbounds %struct.swnode, %struct.swnode* %14, i32 0, i32 8, !dbg !4795
  %bf.load = load i8, i8* %allocated, align 8, !dbg !4795
  %bf.clear = and i8 %bf.load, 1, !dbg !4795
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4795
  %tobool4 = icmp ne i32 %bf.cast, 0, !dbg !4793
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !4796

if.then5:                                         ; preds = %if.end
  %15 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4797
  %node = getelementptr inbounds %struct.swnode, %struct.swnode* %15, i32 0, i32 3, !dbg !4799
  %16 = load %struct.software_node*, %struct.software_node** %node, align 8, !dbg !4799
  %properties = getelementptr inbounds %struct.software_node, %struct.software_node* %16, i32 0, i32 2, !dbg !4800
  %17 = load %struct.property_entry*, %struct.property_entry** %properties, align 8, !dbg !4800
  call void @property_entries_free(%struct.property_entry* %17) #8, !dbg !4801
  %18 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4802
  %node6 = getelementptr inbounds %struct.swnode, %struct.swnode* %18, i32 0, i32 3, !dbg !4803
  %19 = load %struct.software_node*, %struct.software_node** %node6, align 8, !dbg !4803
  %20 = bitcast %struct.software_node* %19 to i8*, !dbg !4802
  call void @kfree(i8* %20) #8, !dbg !4804
  br label %if.end7, !dbg !4805

if.end7:                                          ; preds = %if.then5, %if.end
  %21 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4806
  %child_ids8 = getelementptr inbounds %struct.swnode, %struct.swnode* %21, i32 0, i32 4, !dbg !4807
  call void @ida_destroy(%struct.ida* %child_ids8) #8, !dbg !4808
  %22 = load %struct.swnode*, %struct.swnode** %swnode, align 8, !dbg !4809
  %23 = bitcast %struct.swnode* %22 to i8*, !dbg !4809
  call void @kfree(i8* %23) #8, !dbg !4810
  ret void, !dbg !4811
}

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4812 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4815
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4816
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4817
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4818
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4819
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4820
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4821
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4822
  ret void, !dbg !4823
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4824 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4827
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !4829
  br i1 %call, label %if.end, label %if.then, !dbg !4830

if.then:                                          ; preds = %entry
  br label %return, !dbg !4831

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4832
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4833
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4833
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4834
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4835
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4835
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !4836
  br label %return, !dbg !4837

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4837
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4838 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  ret i1 true, !dbg !4843
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4844 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4847, metadata !DIExpression()), !dbg !4848
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4849
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4850
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4851
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4852
  br label %do.body, !dbg !4853

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4854

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4856

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4854

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4858
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4858
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4858
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4858
  br label %do.end5, !dbg !4858

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4854

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4860
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4861 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4870
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4872
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4873
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4874
  br i1 %call, label %if.end, label %if.then, !dbg !4875

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4876

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4877
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4878
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4879
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4880
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4881
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4882
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4883
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4884
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4885
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4886
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4887
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4888
  br label %do.body, !dbg !4889

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4890

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4892

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4890

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4894
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4894
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4894
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4894
  br label %do.end7, !dbg !4894

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4890

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4897 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  ret i1 true, !dbg !4906
}

; Function Attrs: noredzone
declare dso_local %struct.kset* @kset_create_and_add(i8*, %struct.kset_uevent_ops*, %struct.kobject*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2073, !2074, !2075, !2076}
!llvm.ident = !{!2077}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "swnode_kset", scope: !2, file: !3, line: 30, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !87, globals: !2057, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/swnode.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !59, !66, !71, !82}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !51, line: 19, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58}
!53 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !60, line: 305, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 10, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !72, line: 53, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81}
!74 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!78 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!79 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!80 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!81 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xa_lock_type", file: !83, line: 254, baseType: !7, size: 32, elements: !84)
!83 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !86}
!85 = !DIEnumerator(name: "XA_LOCK_IRQ", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "XA_LOCK_BH", value: 2, isUnsigned: true)
!87 = !{!88, !89, !1443, !109, !207, !192, !204, !2052, !7, !2055, !2056}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swnode", file: !3, line: 14, size: 1344, elements: !91)
!91 = !{!92, !94, !1571, !2011, !2044, !2048, !2049, !2050, !2051}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !90, file: !3, line: 15, baseType: !93, size: 32)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !90, file: !3, line: 16, baseType: !95, size: 512, offset: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !72, line: 64, size: 512, elements: !96)
!96 = !{!97, !101, !108, !110, !170, !1408, !1561, !1566, !1567, !1568, !1569, !1570}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !72, line: 65, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !95, file: !72, line: 66, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !104)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !103, line: 179, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !103, line: 179, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !95, file: !72, line: 67, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !95, file: !72, line: 68, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !72, line: 192, size: 704, elements: !113)
!113 = !{!114, !115, !131, !132}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !112, file: !72, line: 193, baseType: !102, size: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !112, file: !72, line: 194, baseType: !116, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !117, line: 83, baseType: !118)
!117 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !117, line: 71, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !117, line: 72, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !117, line: 72, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !121, file: !117, line: 73, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !117, line: 20, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !124, file: !117, line: 21, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !128, line: 25, baseType: !129)
!128 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 25, elements: !130)
!130 = !{}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !112, file: !72, line: 195, baseType: !95, size: 512, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !112, file: !72, line: 196, baseType: !133, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !72, line: 156, size: 192, elements: !136)
!136 = !{!137, !142, !147}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !135, file: !72, line: 157, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!93, !111, !109}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !72, line: 158, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!98, !111, !109}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !135, file: !72, line: 159, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!93, !111, !109, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !72, line: 148, size: 20736, elements: !154)
!154 = !{!155, !160, !164, !165, !169}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !153, file: !72, line: 149, baseType: !156, size: 192)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 192, elements: !158)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!158 = !{!159}
!159 = !DISubrange(count: 3)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !153, file: !72, line: 150, baseType: !161, size: 4096, offset: 192)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 4096, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !153, file: !72, line: 151, baseType: !93, size: 32, offset: 4288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !153, file: !72, line: 152, baseType: !166, size: 16384, offset: 4320)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 16384, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !153, file: !72, line: 153, baseType: !93, size: 32, offset: 20704)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !95, file: !72, line: 69, baseType: !171, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !72, line: 138, size: 448, elements: !173)
!173 = !{!174, !178, !208, !210, !1354, !1387, !1391}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !172, file: !72, line: 139, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !109}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !172, file: !72, line: 140, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !182, line: 230, size: 128, elements: !183)
!182 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184, !200}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !181, file: !182, line: 231, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !109, !193, !157}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !190, line: 73, baseType: !191)
!190 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !190, line: 15, baseType: !192)
!192 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !182, line: 30, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !182, line: 31, baseType: !98, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !194, file: !182, line: 32, baseType: !198, size: 16, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !199)
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !181, file: !182, line: 232, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!188, !109, !193, !98, !204}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !190, line: 72, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !190, line: 16, baseType: !207)
!207 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !172, file: !72, line: 141, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !172, file: !72, line: 142, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !182, line: 84, size: 320, elements: !215)
!215 = !{!216, !217, !221, !1351, !1352}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !182, line: 85, baseType: !98, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !214, file: !182, line: 86, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!198, !109, !193, !93}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !214, file: !182, line: 88, baseType: !222, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!198, !109, !225, !93}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !182, line: 168, size: 448, elements: !227)
!227 = !{!228, !229, !230, !231, !241, !242}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !226, file: !182, line: 169, baseType: !194, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !226, file: !182, line: 170, baseType: !204, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !226, file: !182, line: 171, baseType: !88, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !226, file: !182, line: 172, baseType: !232, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!188, !235, !109, !225, !157, !238, !204}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !237, line: 526, flags: DIFlagFwdDecl)
!237 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !190, line: 88, baseType: !240)
!240 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !226, file: !182, line: 174, baseType: !232, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !226, file: !182, line: 176, baseType: !243, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!93, !235, !109, !225, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !248, line: 305, size: 1472, elements: !249)
!248 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !251, !252, !253, !254, !262, !263, !1325, !1331, !1332, !1337, !1338, !1341, !1345, !1346, !1347, !1348, !1349}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !247, file: !248, line: 308, baseType: !207, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !247, file: !248, line: 309, baseType: !207, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !247, file: !248, line: 313, baseType: !246, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !247, file: !248, line: 313, baseType: !246, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !247, file: !248, line: 315, baseType: !255, size: 192, align: 64, offset: 256)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !256, line: 24, size: 192, align: 64, elements: !257)
!256 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!257 = !{!258, !259, !261}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !255, file: !256, line: 25, baseType: !207, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !255, file: !256, line: 26, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !255, file: !256, line: 27, baseType: !260, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !247, file: !248, line: 323, baseType: !207, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !247, file: !248, line: 327, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !248, line: 388, size: 7296, elements: !266)
!266 = !{!267, !1321}
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !248, line: 389, baseType: !268, size: 7296)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !265, file: !248, line: 389, size: 7296, elements: !269)
!269 = !{!270, !271, !275, !281, !285, !286, !287, !288, !289, !297, !302, !303, !304, !305, !314, !315, !316, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !351, !359, !362, !394, !395, !1291, !1292, !1295, !1299, !1300, !1303, !1304, !1305, !1308, !1320}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !268, file: !248, line: 390, baseType: !246, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !268, file: !248, line: 391, baseType: !272, size: 64, offset: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !256, line: 31, size: 64, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !272, file: !256, line: 32, baseType: !260, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !268, file: !248, line: 392, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !277, line: 23, baseType: !278)
!277 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !279, line: 31, baseType: !280)
!279 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!280 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !268, file: !248, line: 394, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!207, !235, !207, !207, !207, !207}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !268, file: !248, line: 398, baseType: !207, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !268, file: !248, line: 399, baseType: !207, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !268, file: !248, line: 405, baseType: !207, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !268, file: !248, line: 406, baseType: !207, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !268, file: !248, line: 407, baseType: !290, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !237, line: 286, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 286, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !292, file: !237, line: 286, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !296, line: 18, baseType: !207)
!296 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !268, file: !248, line: 416, baseType: !298, size: 32, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !299, file: !103, line: 167, baseType: !93, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !268, file: !248, line: 428, baseType: !298, size: 32, offset: 608)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !268, file: !248, line: 437, baseType: !298, size: 32, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !268, file: !248, line: 447, baseType: !298, size: 32, offset: 672)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !268, file: !248, line: 450, baseType: !306, size: 64, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !307, line: 13, baseType: !308)
!307 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !309, file: !103, line: 174, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !277, line: 22, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !279, line: 30, baseType: !240)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !268, file: !248, line: 452, baseType: !93, size: 32, offset: 768)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !268, file: !248, line: 454, baseType: !116, offset: 800)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !268, file: !248, line: 457, baseType: !317, size: 256, offset: 832)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !318, line: 35, size: 256, elements: !319)
!318 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !321, !322, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 36, baseType: !306, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !317, file: !318, line: 42, baseType: !306, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !317, file: !318, line: 46, baseType: !323, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !117, line: 29, baseType: !124)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !317, file: !318, line: 47, baseType: !102, size: 128, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !268, file: !248, line: 459, baseType: !102, size: 128, offset: 1088)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !268, file: !248, line: 466, baseType: !207, size: 64, offset: 1216)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !268, file: !248, line: 467, baseType: !207, size: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !268, file: !248, line: 469, baseType: !207, size: 64, offset: 1344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !268, file: !248, line: 470, baseType: !207, size: 64, offset: 1408)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !268, file: !248, line: 471, baseType: !308, size: 64, offset: 1472)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !268, file: !248, line: 472, baseType: !207, size: 64, offset: 1536)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !268, file: !248, line: 473, baseType: !207, size: 64, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !268, file: !248, line: 474, baseType: !207, size: 64, offset: 1664)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !268, file: !248, line: 475, baseType: !207, size: 64, offset: 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !268, file: !248, line: 477, baseType: !116, offset: 1792)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !268, file: !248, line: 478, baseType: !207, size: 64, offset: 1792)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !268, file: !248, line: 478, baseType: !207, size: 64, offset: 1856)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !268, file: !248, line: 478, baseType: !207, size: 64, offset: 1920)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !268, file: !248, line: 478, baseType: !207, size: 64, offset: 1984)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !268, file: !248, line: 479, baseType: !207, size: 64, offset: 2048)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !268, file: !248, line: 479, baseType: !207, size: 64, offset: 2112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !268, file: !248, line: 479, baseType: !207, size: 64, offset: 2176)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !268, file: !248, line: 480, baseType: !207, size: 64, offset: 2240)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !268, file: !248, line: 480, baseType: !207, size: 64, offset: 2304)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !268, file: !248, line: 480, baseType: !207, size: 64, offset: 2368)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !268, file: !248, line: 480, baseType: !207, size: 64, offset: 2432)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !268, file: !248, line: 482, baseType: !348, size: 2816, offset: 2496)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2816, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 44)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !268, file: !248, line: 488, baseType: !352, size: 256, offset: 5312)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !353, line: 60, size: 256, elements: !354)
!353 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !352, file: !353, line: 61, baseType: !356, size: 256)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 4)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !268, file: !248, line: 490, baseType: !360, size: 64, offset: 5568)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !248, line: 490, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !268, file: !248, line: 493, baseType: !363, size: 896, offset: 5632)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !364, line: 53, baseType: !365)
!364 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 13, size: 896, elements: !366)
!366 = !{!367, !368, !369, !370, !373, !374, !381, !382, !386, !387, !390}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !365, file: !364, line: 18, baseType: !276, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !365, file: !364, line: 28, baseType: !308, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !365, file: !364, line: 31, baseType: !317, size: 256, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !365, file: !364, line: 32, baseType: !371, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !364, line: 32, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !365, file: !364, line: 37, baseType: !199, size: 16, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !365, file: !364, line: 40, baseType: !375, size: 192, offset: 512)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !376, line: 53, size: 192, elements: !377)
!376 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !375, file: !376, line: 54, baseType: !306, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !375, file: !376, line: 55, baseType: !116, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !375, file: !376, line: 59, baseType: !102, size: 128, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !365, file: !364, line: 41, baseType: !88, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !365, file: !364, line: 42, baseType: !383, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !364, line: 42, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !365, file: !364, line: 44, baseType: !298, size: 32, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !365, file: !364, line: 50, baseType: !388, size: 16, offset: 864)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !277, line: 19, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !279, line: 24, baseType: !199)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !365, file: !364, line: 51, baseType: !391, size: 16, offset: 880)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !277, line: 18, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !279, line: 23, baseType: !393)
!393 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !248, line: 495, baseType: !207, size: 64, offset: 6528)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !268, file: !248, line: 497, baseType: !396, size: 64, offset: 6592)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !248, line: 381, size: 384, elements: !398)
!398 = !{!399, !400, !1290}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !397, file: !248, line: 382, baseType: !298, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !397, file: !248, line: 383, baseType: !401, size: 128, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !248, line: 376, size: 128, elements: !402)
!402 = !{!403, !1288}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !401, file: !248, line: 377, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !406, line: 640, size: 48640, elements: !407)
!406 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !416, !418, !419, !425, !426, !427, !428, !429, !430, !431, !432, !436, !454, !465, !560, !561, !562, !573, !574, !576, !577, !578, !579, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !658, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !714, !716, !717, !718, !730, !732, !733, !734, !735, !736, !742, !743, !744, !745, !746, !747, !748, !760, !765, !769, !770, !771, !774, !778, !781, !784, !787, !790, !793, !796, !799, !805, !806, !807, !813, !814, !815, !816, !817, !826, !827, !828, !829, !830, !835, !836, !837, !840, !841, !844, !847, !850, !853, !856, !859, !860, !940, !943, !946, !947, !950, !951, !952, !958, !959, !960, !973, !974, !975, !987, !992, !995, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !405, file: !406, line: 646, baseType: !409, size: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !410, line: 56, size: 128, elements: !411)
!410 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !410, line: 57, baseType: !207, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !409, file: !410, line: 58, baseType: !414, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !277, line: 21, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !279, line: 27, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !406, line: 649, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !405, file: !406, line: 657, baseType: !88, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !405, file: !406, line: 658, baseType: !420, size: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !421, line: 113, baseType: !422)
!421 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !421, line: 111, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !422, file: !421, line: 112, baseType: !298, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !406, line: 660, baseType: !7, size: 32, offset: 288)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !405, file: !406, line: 661, baseType: !7, size: 32, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !405, file: !406, line: 684, baseType: !93, size: 32, offset: 352)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !405, file: !406, line: 686, baseType: !93, size: 32, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !405, file: !406, line: 687, baseType: !93, size: 32, offset: 416)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !405, file: !406, line: 688, baseType: !93, size: 32, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !405, file: !406, line: 689, baseType: !7, size: 32, offset: 480)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !405, file: !406, line: 691, baseType: !433, size: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !406, line: 691, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !405, file: !406, line: 692, baseType: !437, size: 832, offset: 576)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !406, line: 451, size: 832, elements: !438)
!438 = !{!439, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !437, file: !406, line: 453, baseType: !440, size: 128)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !406, line: 325, size: 128, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !440, file: !406, line: 326, baseType: !207, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !440, file: !406, line: 327, baseType: !414, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !437, file: !406, line: 454, baseType: !255, size: 192, align: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !437, file: !406, line: 455, baseType: !102, size: 128, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !437, file: !406, line: 456, baseType: !7, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !437, file: !406, line: 458, baseType: !276, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !437, file: !406, line: 459, baseType: !276, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !437, file: !406, line: 460, baseType: !276, size: 64, offset: 640)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !437, file: !406, line: 461, baseType: !276, size: 64, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !437, file: !406, line: 463, baseType: !276, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !437, file: !406, line: 465, baseType: !453, offset: 832)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !406, line: 415, elements: !130)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !405, file: !406, line: 693, baseType: !455, size: 384, offset: 1408)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !406, line: 489, size: 384, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !455, file: !406, line: 490, baseType: !102, size: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !455, file: !406, line: 491, baseType: !207, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !455, file: !406, line: 492, baseType: !207, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !455, file: !406, line: 493, baseType: !7, size: 32, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !406, line: 494, baseType: !199, size: 16, offset: 288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !455, file: !406, line: 495, baseType: !199, size: 16, offset: 304)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !455, file: !406, line: 497, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !405, file: !406, line: 697, baseType: !466, size: 1792, offset: 1792)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !406, line: 507, size: 1792, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !557, !558}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !466, file: !406, line: 508, baseType: !255, size: 192, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !466, file: !406, line: 515, baseType: !276, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !466, file: !406, line: 516, baseType: !276, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !466, file: !406, line: 517, baseType: !276, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !466, file: !406, line: 518, baseType: !276, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !466, file: !406, line: 519, baseType: !276, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !466, file: !406, line: 526, baseType: !312, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !466, file: !406, line: 527, baseType: !276, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !406, line: 528, baseType: !7, size: 32, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !466, file: !406, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !466, file: !406, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !466, file: !406, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !466, file: !406, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !466, file: !406, line: 563, baseType: !482, size: 512, offset: 704)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !483)
!483 = !{!484, !492, !493, !498, !550, !554, !555, !556}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !6, line: 119, baseType: !485, size: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !486, line: 9, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !486, line: 10, baseType: !255, size: 192, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !485, file: !486, line: 11, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !491, line: 29, baseType: !312)
!491 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !482, file: !6, line: 120, baseType: !490, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !482, file: !6, line: 121, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!5, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !482, file: !6, line: 122, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !501)
!501 = !{!502, !522, !523, !526, !536, !537, !545, !549}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !500, file: !6, line: 160, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !504, file: !6, line: 215, baseType: !323)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !504, file: !6, line: 216, baseType: !7, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !504, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !504, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !504, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !504, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !504, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !504, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !504, file: !6, line: 233, baseType: !490, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !504, file: !6, line: 234, baseType: !497, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !504, file: !6, line: 235, baseType: !490, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !504, file: !6, line: 236, baseType: !497, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !504, file: !6, line: 237, baseType: !519, size: 4096, offset: 512)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 4096, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 8)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !500, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !500, file: !6, line: 162, baseType: !524, size: 32, offset: 96)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !190, line: 96, baseType: !93)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !500, file: !6, line: 163, baseType: !527, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !528, line: 276, baseType: !529)
!528 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !528, line: 276, size: 32, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !529, file: !528, line: 276, baseType: !532, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !528, line: 70, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !528, line: 65, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !533, file: !528, line: 66, baseType: !7, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !500, file: !6, line: 164, baseType: !497, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !500, file: !6, line: 165, baseType: !538, size: 128, offset: 256)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !486, line: 14, size: 128, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !538, file: !486, line: 15, baseType: !541, size: 128)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !256, line: 125, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !541, file: !256, line: 126, baseType: !272, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !541, file: !256, line: 127, baseType: !260, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !500, file: !6, line: 166, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!490}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !500, file: !6, line: 167, baseType: !490, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !482, file: !6, line: 123, baseType: !551, size: 8, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !277, line: 17, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !279, line: 21, baseType: !553)
!553 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !482, file: !6, line: 124, baseType: !551, size: 8, offset: 456)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !482, file: !6, line: 125, baseType: !551, size: 8, offset: 464)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !482, file: !6, line: 126, baseType: !551, size: 8, offset: 472)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !466, file: !406, line: 572, baseType: !482, size: 512, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !466, file: !406, line: 580, baseType: !559, size: 64, offset: 1728)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !405, file: !406, line: 721, baseType: !7, size: 32, offset: 3584)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !405, file: !406, line: 722, baseType: !93, size: 32, offset: 3616)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !405, file: !406, line: 723, baseType: !563, size: 64, offset: 3648)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !566, line: 17, baseType: !567)
!566 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !566, line: 17, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !567, file: !566, line: 17, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 1)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !405, file: !406, line: 724, baseType: !565, size: 64, offset: 3712)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !405, file: !406, line: 749, baseType: !575, offset: 3776)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !406, line: 290, elements: !130)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !405, file: !406, line: 751, baseType: !102, size: 128, offset: 3776)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !405, file: !406, line: 757, baseType: !264, size: 64, offset: 3904)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !405, file: !406, line: 758, baseType: !264, size: 64, offset: 3968)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !405, file: !406, line: 761, baseType: !580, size: 320, offset: 4032)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !353, line: 34, size: 320, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !580, file: !353, line: 35, baseType: !276, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !580, file: !353, line: 36, baseType: !584, size: 256, offset: 64)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !357)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !405, file: !406, line: 766, baseType: !93, size: 32, offset: 4352)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !405, file: !406, line: 767, baseType: !93, size: 32, offset: 4384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !405, file: !406, line: 768, baseType: !93, size: 32, offset: 4416)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !405, file: !406, line: 770, baseType: !93, size: 32, offset: 4448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !405, file: !406, line: 772, baseType: !207, size: 64, offset: 4480)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !405, file: !406, line: 775, baseType: !7, size: 32, offset: 4544)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !405, file: !406, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !405, file: !406, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !405, file: !406, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !405, file: !406, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !405, file: !406, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !405, file: !406, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !405, file: !406, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !405, file: !406, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !405, file: !406, line: 831, baseType: !207, size: 64, offset: 4672)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !405, file: !406, line: 833, baseType: !601, size: 384, offset: 4736)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !602)
!602 = !{!603, !608}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !601, file: !12, line: 26, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!192, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !12, line: 27, baseType: !609, size: 320, offset: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !12, line: 27, size: 320, elements: !610)
!610 = !{!611, !621, !648}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !609, file: !12, line: 36, baseType: !612, size: 320)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !12, line: 29, size: 320, elements: !613)
!613 = !{!614, !616, !617, !618, !619, !620}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !612, file: !12, line: 30, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !612, file: !12, line: 31, baseType: !414, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !12, line: 32, baseType: !414, size: 32, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !612, file: !12, line: 33, baseType: !414, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !612, file: !12, line: 34, baseType: !276, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !612, file: !12, line: 35, baseType: !615, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !609, file: !12, line: 46, baseType: !622, size: 192)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !12, line: 38, size: 192, elements: !623)
!623 = !{!624, !625, !626, !647}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !622, file: !12, line: 39, baseType: !524, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !622, file: !12, line: 41, baseType: !627, size: 64, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !12, line: 41, size: 64, elements: !628)
!628 = !{!629, !637}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !627, file: !12, line: 42, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !632, line: 7, size: 128, elements: !633)
!632 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !636}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !631, file: !632, line: 8, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !190, line: 93, baseType: !240)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !631, file: !632, line: 9, baseType: !240, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !627, file: !12, line: 43, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !640, line: 7, size: 64, elements: !641)
!640 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!641 = !{!642, !646}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !639, file: !640, line: 8, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !640, line: 5, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !277, line: 20, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !279, line: 26, baseType: !93)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !639, file: !640, line: 9, baseType: !644, size: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !622, file: !12, line: 45, baseType: !276, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !609, file: !12, line: 54, baseType: !649, size: 256)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !12, line: 48, size: 256, elements: !650)
!650 = !{!651, !654, !655, !656, !657}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !649, file: !12, line: 49, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !649, file: !12, line: 50, baseType: !93, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !649, file: !12, line: 51, baseType: !93, size: 32, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !649, file: !12, line: 52, baseType: !207, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !649, file: !12, line: 53, baseType: !207, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !405, file: !406, line: 835, baseType: !659, size: 32, offset: 5120)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !190, line: 28, baseType: !93)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !405, file: !406, line: 836, baseType: !659, size: 32, offset: 5152)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !405, file: !406, line: 840, baseType: !207, size: 64, offset: 5184)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !405, file: !406, line: 849, baseType: !404, size: 64, offset: 5248)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !406, line: 852, baseType: !404, size: 64, offset: 5312)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !405, file: !406, line: 857, baseType: !102, size: 128, offset: 5376)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !405, file: !406, line: 858, baseType: !102, size: 128, offset: 5504)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !405, file: !406, line: 859, baseType: !404, size: 64, offset: 5632)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !405, file: !406, line: 867, baseType: !102, size: 128, offset: 5696)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !405, file: !406, line: 868, baseType: !102, size: 128, offset: 5824)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !405, file: !406, line: 871, baseType: !671, size: 64, offset: 5952)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !673, line: 59, size: 768, elements: !674)
!673 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!674 = !{!675, !676, !677, !678, !689, !690, !697, !706}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !672, file: !673, line: 61, baseType: !420, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !672, file: !673, line: 62, baseType: !7, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !673, line: 63, baseType: !116, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !672, file: !673, line: 65, baseType: !679, size: 256, offset: 64)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !357)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !680, file: !103, line: 183, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !684, file: !103, line: 187, baseType: !683, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !684, file: !103, line: 187, baseType: !688, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !672, file: !673, line: 66, baseType: !680, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !672, file: !673, line: 68, baseType: !691, size: 128, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !692, line: 40, baseType: !693)
!692 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !692, line: 36, size: 128, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !693, file: !692, line: 37, baseType: !116)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !693, file: !692, line: 38, baseType: !102, size: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !672, file: !673, line: 69, baseType: !698, size: 128, align: 64, offset: 512)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !699)
!699 = !{!700, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !103, line: 217, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !698, file: !103, line: 218, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !701}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !672, file: !673, line: 70, baseType: !707, size: 128, offset: 640)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 128, elements: !571)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !673, line: 54, size: 128, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !708, file: !673, line: 55, baseType: !93, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !708, file: !673, line: 56, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !673, line: 56, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !405, file: !406, line: 872, baseType: !715, size: 512, offset: 6016)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 512, elements: !357)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !405, file: !406, line: 873, baseType: !102, size: 128, offset: 6528)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !405, file: !406, line: 874, baseType: !102, size: 128, offset: 6656)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !405, file: !406, line: 876, baseType: !719, size: 64, offset: 6784)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !721, line: 26, size: 192, elements: !722)
!721 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !720, file: !721, line: 27, baseType: !7, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !720, file: !721, line: 28, baseType: !725, size: 128, offset: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !726, line: 43, size: 128, elements: !727)
!726 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !725, file: !726, line: 44, baseType: !323)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !725, file: !726, line: 45, baseType: !102, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !405, file: !406, line: 879, baseType: !731, size: 64, offset: 6848)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !405, file: !406, line: 882, baseType: !731, size: 64, offset: 6912)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !405, file: !406, line: 884, baseType: !276, size: 64, offset: 6976)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !405, file: !406, line: 885, baseType: !276, size: 64, offset: 7040)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !405, file: !406, line: 890, baseType: !276, size: 64, offset: 7104)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !405, file: !406, line: 891, baseType: !737, size: 128, offset: 7168)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !406, line: 242, size: 128, elements: !738)
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !737, file: !406, line: 244, baseType: !276, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !737, file: !406, line: 245, baseType: !276, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !737, file: !406, line: 246, baseType: !323, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !405, file: !406, line: 900, baseType: !207, size: 64, offset: 7296)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !405, file: !406, line: 901, baseType: !207, size: 64, offset: 7360)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !405, file: !406, line: 904, baseType: !276, size: 64, offset: 7424)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !405, file: !406, line: 907, baseType: !276, size: 64, offset: 7488)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !405, file: !406, line: 910, baseType: !207, size: 64, offset: 7552)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !405, file: !406, line: 911, baseType: !207, size: 64, offset: 7616)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !405, file: !406, line: 914, baseType: !749, size: 640, offset: 7680)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !750, line: 123, size: 640, elements: !751)
!750 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !758, !759}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !749, file: !750, line: 124, baseType: !753, size: 576)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 576, elements: !158)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !750, line: 108, size: 192, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !754, file: !750, line: 109, baseType: !276, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !754, file: !750, line: 110, baseType: !538, size: 128, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !749, file: !750, line: 125, baseType: !7, size: 32, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !749, file: !750, line: 126, baseType: !7, size: 32, offset: 608)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !405, file: !406, line: 917, baseType: !761, size: 192, offset: 8320)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !750, line: 134, size: 192, elements: !762)
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !761, file: !750, line: 135, baseType: !698, size: 128, align: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !761, file: !750, line: 136, baseType: !7, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !405, file: !406, line: 923, baseType: !766, size: 64, offset: 8512)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !406, line: 923, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !405, file: !406, line: 926, baseType: !766, size: 64, offset: 8576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !405, file: !406, line: 929, baseType: !766, size: 64, offset: 8640)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !405, file: !406, line: 933, baseType: !772, size: 64, offset: 8704)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !406, line: 933, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !405, file: !406, line: 943, baseType: !775, size: 128, offset: 8768)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 16)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !405, file: !406, line: 945, baseType: !779, size: 64, offset: 8896)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !406, line: 49, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !405, file: !406, line: 956, baseType: !782, size: 64, offset: 8960)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !406, line: 45, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !405, file: !406, line: 959, baseType: !785, size: 64, offset: 9024)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !406, line: 959, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !405, file: !406, line: 962, baseType: !788, size: 64, offset: 9088)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !406, line: 66, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !405, file: !406, line: 966, baseType: !791, size: 64, offset: 9152)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !406, line: 50, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !405, file: !406, line: 969, baseType: !794, size: 64, offset: 9216)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !750, line: 223, flags: DIFlagFwdDecl)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !405, file: !406, line: 970, baseType: !797, size: 64, offset: 9280)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !406, line: 62, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !405, file: !406, line: 971, baseType: !800, size: 64, offset: 9344)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !801, line: 25, baseType: !802)
!801 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !801, line: 23, size: 64, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !802, file: !801, line: 24, baseType: !570, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !405, file: !406, line: 972, baseType: !800, size: 64, offset: 9408)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !405, file: !406, line: 974, baseType: !800, size: 64, offset: 9472)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !405, file: !406, line: 975, baseType: !808, size: 192, offset: 9536)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !809, line: 30, size: 192, elements: !810)
!809 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !808, file: !809, line: 31, baseType: !102, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !808, file: !809, line: 32, baseType: !800, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !405, file: !406, line: 976, baseType: !207, size: 64, offset: 9728)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !405, file: !406, line: 977, baseType: !204, size: 64, offset: 9792)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !405, file: !406, line: 978, baseType: !7, size: 32, offset: 9856)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !405, file: !406, line: 980, baseType: !701, size: 64, offset: 9920)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !405, file: !406, line: 989, baseType: !818, size: 128, offset: 9984)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !819, line: 35, size: 128, elements: !820)
!819 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !818, file: !819, line: 36, baseType: !93, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !818, file: !819, line: 37, baseType: !298, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !818, file: !819, line: 38, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !819, line: 23, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !405, file: !406, line: 992, baseType: !276, size: 64, offset: 10112)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !405, file: !406, line: 993, baseType: !276, size: 64, offset: 10176)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !405, file: !406, line: 996, baseType: !116, offset: 10240)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !405, file: !406, line: 999, baseType: !323, offset: 10240)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !405, file: !406, line: 1001, baseType: !831, size: 64, offset: 10240)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !406, line: 636, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !406, line: 637, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !405, file: !406, line: 1005, baseType: !541, size: 128, offset: 10304)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !405, file: !406, line: 1007, baseType: !404, size: 64, offset: 10432)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !405, file: !406, line: 1009, baseType: !838, size: 64, offset: 10496)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !406, line: 1009, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !405, file: !406, line: 1043, baseType: !88, size: 64, offset: 10560)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !405, file: !406, line: 1046, baseType: !842, size: 64, offset: 10624)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !406, line: 41, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !405, file: !406, line: 1050, baseType: !845, size: 64, offset: 10688)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !406, line: 42, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !405, file: !406, line: 1054, baseType: !848, size: 64, offset: 10752)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !406, line: 55, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !405, file: !406, line: 1056, baseType: !851, size: 64, offset: 10816)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !406, line: 40, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !405, file: !406, line: 1058, baseType: !854, size: 64, offset: 10880)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !406, line: 47, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !405, file: !406, line: 1061, baseType: !857, size: 64, offset: 10944)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !406, line: 43, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !405, file: !406, line: 1064, baseType: !207, size: 64, offset: 11008)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !405, file: !406, line: 1065, baseType: !861, size: 64, offset: 11072)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !809, line: 14, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !809, line: 12, size: 384, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !809, line: 13, baseType: !866, size: 384)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !863, file: !809, line: 13, size: 384, elements: !867)
!867 = !{!868, !869, !870, !871}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !866, file: !809, line: 13, baseType: !93, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !866, file: !809, line: 13, baseType: !93, size: 32, offset: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !866, file: !809, line: 13, baseType: !93, size: 32, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !866, file: !809, line: 13, baseType: !872, size: 256, offset: 128)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !873, line: 32, size: 256, elements: !874)
!873 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !881, !894, !900, !909, !929, !934}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !872, file: !873, line: 37, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 34, size: 64, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !876, file: !873, line: 35, baseType: !660, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !876, file: !873, line: 36, baseType: !880, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !190, line: 49, baseType: !7)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !872, file: !873, line: 45, baseType: !882, size: 192)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 40, size: 192, elements: !883)
!883 = !{!884, !886, !887, !893}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !882, file: !873, line: 41, baseType: !885, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !190, line: 95, baseType: !93)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !882, file: !873, line: 42, baseType: !93, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !882, file: !873, line: 43, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !873, line: 11, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !873, line: 8, size: 64, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !889, file: !873, line: 9, baseType: !93, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !889, file: !873, line: 10, baseType: !88, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !882, file: !873, line: 44, baseType: !93, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !872, file: !873, line: 52, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 48, size: 128, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !895, file: !873, line: 49, baseType: !660, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !895, file: !873, line: 50, baseType: !880, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !895, file: !873, line: 51, baseType: !888, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !872, file: !873, line: 61, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 55, size: 256, elements: !902)
!902 = !{!903, !904, !905, !906, !908}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !901, file: !873, line: 56, baseType: !660, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !901, file: !873, line: 57, baseType: !880, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !901, file: !873, line: 58, baseType: !93, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !901, file: !873, line: 59, baseType: !907, size: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !190, line: 94, baseType: !191)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !901, file: !873, line: 60, baseType: !907, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !872, file: !873, line: 95, baseType: !910, size: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 64, size: 256, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !910, file: !873, line: 65, baseType: !88, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !873, line: 77, baseType: !914, size: 192, offset: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !873, line: 77, size: 192, elements: !915)
!915 = !{!916, !917, !924}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !914, file: !873, line: 82, baseType: !393, size: 16)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !914, file: !873, line: 88, baseType: !918, size: 192)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !873, line: 84, size: 192, elements: !919)
!919 = !{!920, !922, !923}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !918, file: !873, line: 85, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !520)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !918, file: !873, line: 86, baseType: !88, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !918, file: !873, line: 87, baseType: !88, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !914, file: !873, line: 93, baseType: !925, size: 96)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !873, line: 90, size: 96, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !925, file: !873, line: 91, baseType: !921, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !925, file: !873, line: 92, baseType: !415, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !872, file: !873, line: 101, baseType: !930, size: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 98, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !930, file: !873, line: 99, baseType: !192, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !930, file: !873, line: 100, baseType: !93, size: 32, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !872, file: !873, line: 108, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !872, file: !873, line: 104, size: 128, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !935, file: !873, line: 105, baseType: !88, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !935, file: !873, line: 106, baseType: !93, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !935, file: !873, line: 107, baseType: !7, size: 32, offset: 96)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !405, file: !406, line: 1067, baseType: !941, offset: 11136)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !942, line: 12, elements: !130)
!942 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!943 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !405, file: !406, line: 1099, baseType: !944, size: 64, offset: 11136)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !406, line: 56, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !405, file: !406, line: 1103, baseType: !102, size: 128, offset: 11200)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !405, file: !406, line: 1104, baseType: !948, size: 64, offset: 11328)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !406, line: 46, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !405, file: !406, line: 1105, baseType: !375, size: 192, offset: 11392)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !405, file: !406, line: 1106, baseType: !7, size: 32, offset: 11584)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !405, file: !406, line: 1109, baseType: !953, size: 128, offset: 11648)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 128, elements: !956)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !406, line: 51, flags: DIFlagFwdDecl)
!956 = !{!957}
!957 = !DISubrange(count: 2)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !405, file: !406, line: 1110, baseType: !375, size: 192, offset: 11776)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !405, file: !406, line: 1111, baseType: !102, size: 128, offset: 11968)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !405, file: !406, line: 1173, baseType: !961, size: 64, offset: 12096)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !963, line: 62, size: 256, align: 256, elements: !964)
!963 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!964 = !{!965, !966, !967, !972}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !962, file: !963, line: 75, baseType: !415, size: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !962, file: !963, line: 90, baseType: !415, size: 32, offset: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !962, file: !963, line: 124, baseType: !968, size: 64, offset: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !963, line: 109, size: 64, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !968, file: !963, line: 110, baseType: !278, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !968, file: !963, line: 112, baseType: !278, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !963, line: 144, baseType: !415, size: 32, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !405, file: !406, line: 1174, baseType: !414, size: 32, offset: 12160)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !405, file: !406, line: 1179, baseType: !207, size: 64, offset: 12224)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !405, file: !406, line: 1182, baseType: !976, size: 128, offset: 12288)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !353, line: 76, size: 128, elements: !977)
!977 = !{!978, !983, !986}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !976, file: !353, line: 85, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !980, line: 7, size: 64, elements: !981)
!980 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !979, file: !980, line: 12, baseType: !567, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !976, file: !353, line: 88, baseType: !984, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !985)
!985 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !976, file: !353, line: 95, baseType: !984, size: 8, offset: 72)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !406, line: 1184, baseType: !988, size: 128, offset: 12416)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !406, line: 1184, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !988, file: !406, line: 1185, baseType: !420, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !988, file: !406, line: 1186, baseType: !698, size: 128, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !405, file: !406, line: 1190, baseType: !993, size: 64, offset: 12544)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !406, line: 53, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !405, file: !406, line: 1192, baseType: !996, size: 128, offset: 12608)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !353, line: 64, size: 128, elements: !997)
!997 = !{!998, !1091, !1092}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !996, file: !353, line: 65, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !248, line: 68, size: 512, align: 128, elements: !1001)
!1001 = !{!1002, !1003, !1083, !1090}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !248, line: 69, baseType: !207, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !248, line: 77, baseType: !1004, size: 320, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !248, line: 77, size: 320, elements: !1005)
!1005 = !{!1006, !1015, !1020, !1048, !1056, !1062, !1075, !1082}
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 78, baseType: !1007, size: 320)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 78, size: 320, elements: !1008)
!1008 = !{!1009, !1010, !1013, !1014}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1007, file: !248, line: 84, baseType: !102, size: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1007, file: !248, line: 86, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !248, line: 26, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1007, file: !248, line: 87, baseType: !207, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1007, file: !248, line: 94, baseType: !207, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 96, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 96, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1016, file: !248, line: 101, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !276)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 103, baseType: !1021, size: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 103, size: 320, elements: !1022)
!1022 = !{!1023, !1033, !1036, !1037}
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !248, line: 104, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !248, line: 104, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1024, file: !248, line: 105, baseType: !102, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !248, line: 106, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1024, file: !248, line: 106, size: 128, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1028, file: !248, line: 107, baseType: !999, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1028, file: !248, line: 109, baseType: !93, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1028, file: !248, line: 110, baseType: !93, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1021, file: !248, line: 117, baseType: !1034, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !248, line: 117, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1021, file: !248, line: 119, baseType: !88, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !248, line: 120, baseType: !1038, size: 64, offset: 256)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !248, line: 120, size: 64, elements: !1039)
!1039 = !{!1040, !1041, !1042}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1038, file: !248, line: 121, baseType: !88, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1038, file: !248, line: 122, baseType: !207, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !248, line: 123, baseType: !1043, size: 32)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1038, file: !248, line: 123, size: 32, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1043, file: !248, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1043, file: !248, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1043, file: !248, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 130, baseType: !1049, size: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 130, size: 192, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1049, file: !248, line: 131, baseType: !207, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1049, file: !248, line: 134, baseType: !553, size: 8, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1049, file: !248, line: 135, baseType: !553, size: 8, offset: 72)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1049, file: !248, line: 136, baseType: !298, size: 32, offset: 96)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1049, file: !248, line: 137, baseType: !7, size: 32, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 139, baseType: !1057, size: 256)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 139, size: 256, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1057, file: !248, line: 140, baseType: !207, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1057, file: !248, line: 141, baseType: !298, size: 32, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1057, file: !248, line: 143, baseType: !102, size: 128, offset: 128)
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 145, baseType: !1063, size: 256)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 145, size: 256, elements: !1064)
!1064 = !{!1065, !1066, !1068, !1069, !1074}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1063, file: !248, line: 146, baseType: !207, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1063, file: !248, line: 147, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !237, line: 509, baseType: !999)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1063, file: !248, line: 148, baseType: !207, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !248, line: 149, baseType: !1070, size: 64, offset: 192)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1063, file: !248, line: 149, size: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1070, file: !248, line: 150, baseType: !264, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1070, file: !248, line: 151, baseType: !298, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1063, file: !248, line: 156, baseType: !116, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !248, line: 159, baseType: !1076, size: 128)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1004, file: !248, line: 159, size: 128, elements: !1077)
!1077 = !{!1078, !1081}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1076, file: !248, line: 161, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !248, line: 161, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1076, file: !248, line: 162, baseType: !88, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1004, file: !248, line: 176, baseType: !698, size: 128, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !248, line: 179, baseType: !1084, size: 32, offset: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !248, line: 179, size: 32, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1084, file: !248, line: 184, baseType: !298, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1084, file: !248, line: 192, baseType: !7, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1084, file: !248, line: 194, baseType: !7, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1084, file: !248, line: 195, baseType: !93, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1000, file: !248, line: 199, baseType: !298, size: 32, offset: 416)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !996, file: !353, line: 67, baseType: !415, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !996, file: !353, line: 68, baseType: !415, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !405, file: !406, line: 1206, baseType: !93, size: 32, offset: 12736)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !405, file: !406, line: 1207, baseType: !93, size: 32, offset: 12768)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !405, file: !406, line: 1209, baseType: !207, size: 64, offset: 12800)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !405, file: !406, line: 1219, baseType: !276, size: 64, offset: 12864)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !405, file: !406, line: 1220, baseType: !276, size: 64, offset: 12928)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !405, file: !406, line: 1317, baseType: !93, size: 32, offset: 12992)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !405, file: !406, line: 1319, baseType: !404, size: 64, offset: 13056)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !405, file: !406, line: 1322, baseType: !1101, size: 64, offset: 13120)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !406, line: 1322, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !405, file: !406, line: 1326, baseType: !420, size: 32, offset: 13184)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !405, file: !406, line: 1342, baseType: !88, size: 64, offset: 13248)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !405, file: !406, line: 1343, baseType: !278, size: 64, offset: 13312)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !405, file: !406, line: 1344, baseType: !276, size: 64, offset: 13376)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !405, file: !406, line: 1345, baseType: !278, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !405, file: !406, line: 1346, baseType: !278, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !405, file: !406, line: 1347, baseType: !278, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !405, file: !406, line: 1348, baseType: !698, size: 128, align: 64, offset: 13504)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !405, file: !406, line: 1358, baseType: !1112, size: 34816, offset: 13824)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1113, line: 485, size: 34816, elements: !1114)
!1113 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !{!1115, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1144, !1145, !1146, !1147, !1148, !1149, !1152, !1153, !1154}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1112, file: !1113, line: 487, baseType: !1116, size: 192)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 192, elements: !158)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1118, line: 16, size: 64, elements: !1119)
!1118 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1117, file: !1118, line: 17, baseType: !388, size: 16)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1117, file: !1118, line: 18, baseType: !388, size: 16, offset: 16)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1117, file: !1118, line: 19, baseType: !388, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1117, file: !1118, line: 19, baseType: !388, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1117, file: !1118, line: 19, baseType: !388, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1117, file: !1118, line: 19, baseType: !388, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1117, file: !1118, line: 19, baseType: !388, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1117, file: !1118, line: 20, baseType: !388, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1117, file: !1118, line: 20, baseType: !388, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1117, file: !1118, line: 20, baseType: !388, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1117, file: !1118, line: 20, baseType: !388, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1117, file: !1118, line: 20, baseType: !388, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1117, file: !1118, line: 20, baseType: !388, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1112, file: !1113, line: 491, baseType: !207, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1112, file: !1113, line: 495, baseType: !199, size: 16, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1112, file: !1113, line: 496, baseType: !199, size: 16, offset: 272)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1112, file: !1113, line: 497, baseType: !199, size: 16, offset: 288)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1112, file: !1113, line: 498, baseType: !199, size: 16, offset: 304)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1112, file: !1113, line: 502, baseType: !207, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1112, file: !1113, line: 503, baseType: !207, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1112, file: !1113, line: 514, baseType: !1141, size: 256, offset: 448)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1142, size: 256, elements: !357)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1113, line: 483, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1112, file: !1113, line: 516, baseType: !207, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1112, file: !1113, line: 518, baseType: !207, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1112, file: !1113, line: 520, baseType: !207, size: 64, offset: 832)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1112, file: !1113, line: 521, baseType: !207, size: 64, offset: 896)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1112, file: !1113, line: 522, baseType: !207, size: 64, offset: 960)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1112, file: !1113, line: 528, baseType: !1150, size: 64, offset: 1024)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1113, line: 10, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1112, file: !1113, line: 535, baseType: !207, size: 64, offset: 1088)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1112, file: !1113, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1112, file: !1113, line: 540, baseType: !1155, size: 33280, offset: 1536)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1156, line: 317, size: 33280, elements: !1157)
!1156 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1155, file: !1156, line: 330, baseType: !7, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1155, file: !1156, line: 337, baseType: !207, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1155, file: !1156, line: 348, baseType: !1161, size: 32768, offset: 512)
!1161 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1156, line: 304, size: 32768, elements: !1162)
!1162 = !{!1163, !1178, !1217, !1267, !1284}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1161, file: !1156, line: 305, baseType: !1164, size: 896)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1156, line: 12, size: 896, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1177}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1164, file: !1156, line: 13, baseType: !414, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1164, file: !1156, line: 14, baseType: !414, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1164, file: !1156, line: 15, baseType: !414, size: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1164, file: !1156, line: 16, baseType: !414, size: 32, offset: 96)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1164, file: !1156, line: 17, baseType: !414, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1164, file: !1156, line: 18, baseType: !414, size: 32, offset: 160)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1164, file: !1156, line: 19, baseType: !414, size: 32, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1164, file: !1156, line: 22, baseType: !1174, size: 640, offset: 224)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 640, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 20)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1164, file: !1156, line: 25, baseType: !414, size: 32, offset: 864)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1161, file: !1156, line: 306, baseType: !1179, size: 4096, align: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1156, line: 34, size: 4096, align: 128, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1200, !1201, !1202, !1206, !1208, !1212}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1179, file: !1156, line: 35, baseType: !388, size: 16)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1179, file: !1156, line: 36, baseType: !388, size: 16, offset: 16)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1179, file: !1156, line: 37, baseType: !388, size: 16, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1179, file: !1156, line: 38, baseType: !388, size: 16, offset: 48)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1156, line: 39, baseType: !1186, size: 128, offset: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1156, line: 39, size: 128, elements: !1187)
!1187 = !{!1188, !1193}
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1156, line: 40, baseType: !1189, size: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !1156, line: 40, size: 128, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1189, file: !1156, line: 41, baseType: !276, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1189, file: !1156, line: 42, baseType: !276, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1156, line: 44, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !1156, line: 44, size: 128, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1194, file: !1156, line: 45, baseType: !414, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1194, file: !1156, line: 46, baseType: !414, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1194, file: !1156, line: 47, baseType: !414, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1194, file: !1156, line: 48, baseType: !414, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1179, file: !1156, line: 51, baseType: !414, size: 32, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1179, file: !1156, line: 52, baseType: !414, size: 32, offset: 224)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1179, file: !1156, line: 55, baseType: !1203, size: 1024, offset: 256)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !1204)
!1204 = !{!1205}
!1205 = !DISubrange(count: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1179, file: !1156, line: 58, baseType: !1207, size: 2048, offset: 1280)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, elements: !162)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1179, file: !1156, line: 60, baseType: !1209, size: 384, offset: 3328)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 12)
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !1156, line: 62, baseType: !1213, size: 384, offset: 3712)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1179, file: !1156, line: 62, size: 384, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1213, file: !1156, line: 63, baseType: !1209, size: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1213, file: !1156, line: 64, baseType: !1209, size: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1161, file: !1156, line: 307, baseType: !1218, size: 1088)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1156, line: 79, size: 1088, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1266}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1218, file: !1156, line: 80, baseType: !414, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1218, file: !1156, line: 81, baseType: !414, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1218, file: !1156, line: 82, baseType: !414, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1218, file: !1156, line: 83, baseType: !414, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1218, file: !1156, line: 84, baseType: !414, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1218, file: !1156, line: 85, baseType: !414, size: 32, offset: 160)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1218, file: !1156, line: 86, baseType: !414, size: 32, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1218, file: !1156, line: 88, baseType: !1174, size: 640, offset: 224)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1218, file: !1156, line: 89, baseType: !551, size: 8, offset: 864)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1218, file: !1156, line: 90, baseType: !551, size: 8, offset: 872)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1218, file: !1156, line: 91, baseType: !551, size: 8, offset: 880)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1218, file: !1156, line: 92, baseType: !551, size: 8, offset: 888)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1218, file: !1156, line: 93, baseType: !551, size: 8, offset: 896)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1218, file: !1156, line: 94, baseType: !551, size: 8, offset: 904)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1218, file: !1156, line: 95, baseType: !1235, size: 64, offset: 960)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1237, line: 11, size: 128, elements: !1238)
!1237 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !{!1239, !1240}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1236, file: !1237, line: 12, baseType: !192, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1236, file: !1237, line: 13, baseType: !1241, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1243, line: 56, size: 1344, elements: !1244)
!1243 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1242, file: !1243, line: 61, baseType: !207, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1242, file: !1243, line: 62, baseType: !207, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1242, file: !1243, line: 63, baseType: !207, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1242, file: !1243, line: 64, baseType: !207, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1242, file: !1243, line: 65, baseType: !207, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1242, file: !1243, line: 66, baseType: !207, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1242, file: !1243, line: 68, baseType: !207, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1242, file: !1243, line: 69, baseType: !207, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1242, file: !1243, line: 70, baseType: !207, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1242, file: !1243, line: 71, baseType: !207, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1242, file: !1243, line: 72, baseType: !207, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1242, file: !1243, line: 73, baseType: !207, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1242, file: !1243, line: 74, baseType: !207, size: 64, offset: 768)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1242, file: !1243, line: 75, baseType: !207, size: 64, offset: 832)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1242, file: !1243, line: 76, baseType: !207, size: 64, offset: 896)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1242, file: !1243, line: 81, baseType: !207, size: 64, offset: 960)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1242, file: !1243, line: 83, baseType: !207, size: 64, offset: 1024)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1242, file: !1243, line: 84, baseType: !207, size: 64, offset: 1088)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1242, file: !1243, line: 85, baseType: !207, size: 64, offset: 1152)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1242, file: !1243, line: 86, baseType: !207, size: 64, offset: 1216)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1242, file: !1243, line: 87, baseType: !207, size: 64, offset: 1280)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1218, file: !1156, line: 96, baseType: !414, size: 32, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1161, file: !1156, line: 308, baseType: !1268, size: 4608, align: 512)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1156, line: 289, size: 4608, align: 512, elements: !1269)
!1269 = !{!1270, !1271, !1280}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1268, file: !1156, line: 290, baseType: !1179, size: 4096, align: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1268, file: !1156, line: 291, baseType: !1272, size: 512, offset: 4096)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1156, line: 268, size: 512, elements: !1273)
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1272, file: !1156, line: 269, baseType: !276, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1272, file: !1156, line: 270, baseType: !276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1272, file: !1156, line: 271, baseType: !1277, size: 384, offset: 128)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 384, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 6)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1268, file: !1156, line: 292, baseType: !1281, offset: 4608)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1161, file: !1156, line: 309, baseType: !1285, size: 32768)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 32768, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 4096)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !248, line: 378, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !397, file: !248, line: 384, baseType: !720, size: 192, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !268, file: !248, line: 500, baseType: !116, offset: 6656)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !268, file: !248, line: 501, baseType: !1293, size: 64, offset: 6656)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !248, line: 387, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !268, file: !248, line: 516, baseType: !1296, size: 64, offset: 6720)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1298, line: 18, flags: DIFlagFwdDecl)
!1298 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !268, file: !248, line: 519, baseType: !235, size: 64, offset: 6784)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !268, file: !248, line: 521, baseType: !1301, size: 64, offset: 6848)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !248, line: 521, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !268, file: !248, line: 545, baseType: !298, size: 32, offset: 6912)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !268, file: !248, line: 548, baseType: !984, size: 8, offset: 6944)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !268, file: !248, line: 550, baseType: !1306, offset: 6952)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1307, line: 142, elements: !130)
!1307 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !268, file: !248, line: 554, baseType: !1309, size: 256, offset: 6976)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1310, line: 102, size: 256, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1313, !1314}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1309, file: !1310, line: 103, baseType: !306, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1309, file: !1310, line: 104, baseType: !102, size: 128, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1309, file: !1310, line: 105, baseType: !1315, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1310, line: 21, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !268, file: !248, line: 557, baseType: !414, size: 32, offset: 7232)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !265, file: !248, line: 565, baseType: !1322, offset: 7296)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: -1)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !247, file: !248, line: 333, baseType: !1326, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !237, line: 284, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !237, line: 284, size: 64, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1327, file: !237, line: 284, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !296, line: 19, baseType: !207)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !247, file: !248, line: 334, baseType: !207, size: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !247, file: !248, line: 343, baseType: !1333, size: 256, offset: 704)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !248, line: 340, size: 256, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1333, file: !248, line: 341, baseType: !255, size: 192, align: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1333, file: !248, line: 342, baseType: !207, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !247, file: !248, line: 351, baseType: !102, size: 128, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !247, file: !248, line: 353, baseType: !1339, size: 64, offset: 1088)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !248, line: 353, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !247, file: !248, line: 356, baseType: !1342, size: 64, offset: 1152)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !248, line: 356, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !247, file: !248, line: 359, baseType: !207, size: 64, offset: 1216)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !247, file: !248, line: 361, baseType: !235, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !247, file: !248, line: 362, baseType: !88, size: 64, offset: 1344)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !247, file: !248, line: 365, baseType: !306, size: 64, offset: 1408)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !247, file: !248, line: 373, baseType: !1350, offset: 1472)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !248, line: 296, elements: !130)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !214, file: !182, line: 90, baseType: !209, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !214, file: !182, line: 91, baseType: !1353, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !172, file: !72, line: 143, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1358, !109}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1361)
!1361 = !{!1362, !1363, !1367, !1371, !1379, !1383}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1360, file: !18, line: 40, baseType: !17, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1360, file: !18, line: 41, baseType: !1364, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!984}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1360, file: !18, line: 42, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!88}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1360, file: !18, line: 43, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!1375, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1360, file: !18, line: 44, baseType: !1380, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!1375}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1360, file: !18, line: 45, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !88}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !172, file: !72, line: 144, baseType: !1388, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!1375, !109}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !172, file: !72, line: 145, baseType: !1392, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !109, !1395, !1401}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1298, line: 23, baseType: !1397)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1298, line: 21, size: 32, elements: !1398)
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1397, file: !1298, line: 22, baseType: !1400, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !880)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1298, line: 28, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1298, line: 26, size: 32, elements: !1404)
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1403, file: !1298, line: 27, baseType: !1406, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !190, line: 50, baseType: !7)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !95, file: !72, line: 70, baseType: !1409, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1411, line: 123, size: 1024, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1554, !1555, !1556, !1557, !1558}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1410, file: !1411, line: 124, baseType: !298, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1410, file: !1411, line: 125, baseType: !298, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1410, file: !1411, line: 135, baseType: !1409, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1410, file: !1411, line: 136, baseType: !98, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1410, file: !1411, line: 138, baseType: !255, size: 192, align: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1410, file: !1411, line: 140, baseType: !1375, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1410, file: !1411, line: 141, baseType: !7, size: 32, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 142, baseType: !1421, size: 256, offset: 512)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 142, size: 256, elements: !1422)
!1422 = !{!1423, !1477, !1481}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1421, file: !1411, line: 143, baseType: !1424, size: 192)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1411, line: 91, size: 192, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1424, file: !1411, line: 92, baseType: !207, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1424, file: !1411, line: 94, baseType: !272, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1424, file: !1411, line: 100, baseType: !1429, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1411, line: 180, size: 704, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1447, !1448, !1449, !1475, !1476}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1430, file: !1411, line: 182, baseType: !1409, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1411, line: 183, baseType: !7, size: 32, offset: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1430, file: !1411, line: 186, baseType: !1435, size: 192, offset: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1436, line: 19, size: 192, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1445, !1446}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1435, file: !1436, line: 20, baseType: !1439, size: 128)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !83, line: 292, size: 128, elements: !1440)
!1440 = !{!1441, !1442, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1439, file: !83, line: 293, baseType: !116)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1439, file: !83, line: 295, baseType: !1443, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !7)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1439, file: !83, line: 296, baseType: !88, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1435, file: !1436, line: 21, baseType: !7, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1435, file: !1436, line: 22, baseType: !7, size: 32, offset: 160)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1430, file: !1411, line: 187, baseType: !414, size: 32, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1430, file: !1411, line: 188, baseType: !414, size: 32, offset: 352)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1430, file: !1411, line: 189, baseType: !1450, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1411, line: 168, size: 320, elements: !1452)
!1452 = !{!1453, !1459, !1463, !1467, !1471}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1451, file: !1411, line: 169, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!93, !1457, !1429}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !237, line: 539, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1451, file: !1411, line: 171, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!93, !1409, !98, !198}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1451, file: !1411, line: 173, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!93, !1409}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1451, file: !1411, line: 174, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!93, !1409, !1409, !98}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1451, file: !1411, line: 176, baseType: !1472, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!93, !1457, !1409, !1429}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1430, file: !1411, line: 192, baseType: !102, size: 128, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1430, file: !1411, line: 194, baseType: !691, size: 128, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1421, file: !1411, line: 144, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1411, line: 103, size: 64, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1478, file: !1411, line: 104, baseType: !1409, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1421, file: !1411, line: 145, baseType: !1482, size: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1411, line: 107, size: 256, elements: !1483)
!1483 = !{!1484, !1549, !1552, !1553}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1482, file: !1411, line: 108, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1411, line: 217, size: 768, elements: !1488)
!1488 = !{!1489, !1509, !1513, !1517, !1522, !1526, !1530, !1534, !1535, !1536, !1537, !1545}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1487, file: !1411, line: 222, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!93, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1411, line: 197, size: 1088, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1494, file: !1411, line: 199, baseType: !1409, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1494, file: !1411, line: 200, baseType: !235, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1494, file: !1411, line: 201, baseType: !1457, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1494, file: !1411, line: 202, baseType: !88, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1494, file: !1411, line: 205, baseType: !375, size: 192, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1494, file: !1411, line: 206, baseType: !375, size: 192, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1494, file: !1411, line: 207, baseType: !93, size: 32, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1494, file: !1411, line: 208, baseType: !102, size: 128, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1494, file: !1411, line: 209, baseType: !157, size: 64, offset: 832)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1494, file: !1411, line: 211, baseType: !204, size: 64, offset: 896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1494, file: !1411, line: 212, baseType: !984, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1494, file: !1411, line: 213, baseType: !984, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1494, file: !1411, line: 214, baseType: !1342, size: 64, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1487, file: !1411, line: 223, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1493}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1487, file: !1411, line: 236, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!93, !1457, !88}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1487, file: !1411, line: 238, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!88, !1457, !1521}
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1487, file: !1411, line: 239, baseType: !1523, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!88, !1457, !88, !1521}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1487, file: !1411, line: 240, baseType: !1527, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1457, !88}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1487, file: !1411, line: 242, baseType: !1531, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!188, !1493, !157, !204, !238}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1487, file: !1411, line: 252, baseType: !204, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1487, file: !1411, line: 259, baseType: !984, size: 8, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1487, file: !1411, line: 260, baseType: !1531, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1487, file: !1411, line: 263, baseType: !1538, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1541, !1493, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1542, line: 52, baseType: !7)
!1542 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1411, line: 27, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1487, file: !1411, line: 266, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!93, !1493, !246}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1482, file: !1411, line: 109, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1411, line: 31, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1482, file: !1411, line: 110, baseType: !238, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1482, file: !1411, line: 111, baseType: !1409, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1410, file: !1411, line: 148, baseType: !88, size: 64, offset: 768)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1410, file: !1411, line: 154, baseType: !276, size: 64, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !1411, line: 156, baseType: !199, size: 16, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1410, file: !1411, line: 157, baseType: !198, size: 16, offset: 912)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1410, file: !1411, line: 158, baseType: !1559, size: 64, offset: 960)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1411, line: 32, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !95, file: !72, line: 71, baseType: !1562, size: 32, offset: 448)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1563, line: 19, size: 32, elements: !1564)
!1563 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1562, file: !1563, line: 20, baseType: !420, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !95, file: !72, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !95, file: !72, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !95, file: !72, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !95, file: !72, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !95, file: !72, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !90, file: !3, line: 17, baseType: !1572, size: 192, offset: 576)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1573, line: 17, size: 192, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1577, !2010}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1572, file: !1573, line: 18, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1572, file: !1573, line: 19, baseType: !1578, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1573, line: 110, size: 1152, elements: !1581)
!1581 = !{!1582, !1586, !1590, !1596, !1952, !1956, !1960, !1965, !1969, !1970, !1974, !1978, !1982, !1993, !1994, !1995, !1996, !2006}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1580, file: !1573, line: 111, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1576, !1576}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1580, file: !1573, line: 112, baseType: !1587, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1576}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1580, file: !1573, line: 113, baseType: !1591, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!984, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1580, file: !1573, line: 114, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!1375, !1594, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1603)
!1603 = !{!1604, !1605, !1607, !1610, !1611, !1662, !1740, !1741, !1742, !1743, !1744, !1753, !1858, !1871, !1874, !1875, !1879, !1881, !1882, !1883, !1887, !1893, !1894, !1897, !1901, !1902, !1905, !1906, !1907, !1908, !1940, !1941, !1942, !1945, !1948, !1949, !1950, !1951}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1602, file: !30, line: 462, baseType: !95, size: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1602, file: !30, line: 463, baseType: !1606, size: 64, offset: 512)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1602, file: !30, line: 465, baseType: !1608, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1602, file: !30, line: 467, baseType: !98, size: 64, offset: 640)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1602, file: !30, line: 468, baseType: !1612, size: 64, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1622, !1627, !1631}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1614, file: !30, line: 88, baseType: !98, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1614, file: !30, line: 89, baseType: !211, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1614, file: !30, line: 90, baseType: !1619, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!93, !1606, !152}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1614, file: !30, line: 91, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!157, !1606, !1626, !1395, !1401}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1614, file: !30, line: 93, baseType: !1628, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1606}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1614, file: !30, line: 95, baseType: !1632, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1635)
!1635 = !{!1636, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1634, file: !37, line: 279, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!93, !1606}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1634, file: !37, line: 280, baseType: !1628, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1634, file: !37, line: 281, baseType: !1637, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1634, file: !37, line: 282, baseType: !1637, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1634, file: !37, line: 283, baseType: !1637, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1634, file: !37, line: 284, baseType: !1637, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1634, file: !37, line: 285, baseType: !1637, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1634, file: !37, line: 286, baseType: !1637, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1634, file: !37, line: 287, baseType: !1637, size: 64, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1634, file: !37, line: 288, baseType: !1637, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1634, file: !37, line: 289, baseType: !1637, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1634, file: !37, line: 290, baseType: !1637, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1634, file: !37, line: 291, baseType: !1637, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1634, file: !37, line: 292, baseType: !1637, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1634, file: !37, line: 293, baseType: !1637, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1634, file: !37, line: 294, baseType: !1637, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1634, file: !37, line: 295, baseType: !1637, size: 64, offset: 1024)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1634, file: !37, line: 296, baseType: !1637, size: 64, offset: 1088)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1634, file: !37, line: 297, baseType: !1637, size: 64, offset: 1152)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1634, file: !37, line: 298, baseType: !1637, size: 64, offset: 1216)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1634, file: !37, line: 299, baseType: !1637, size: 64, offset: 1280)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1634, file: !37, line: 300, baseType: !1637, size: 64, offset: 1344)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1634, file: !37, line: 301, baseType: !1637, size: 64, offset: 1408)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1602, file: !30, line: 470, baseType: !1663, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1665, line: 82, size: 1408, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1733, !1736, !1739}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1664, file: !1665, line: 83, baseType: !98, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1664, file: !1665, line: 84, baseType: !98, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1664, file: !1665, line: 85, baseType: !1606, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1664, file: !1665, line: 86, baseType: !211, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1664, file: !1665, line: 87, baseType: !211, size: 64, offset: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1664, file: !1665, line: 88, baseType: !211, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1664, file: !1665, line: 90, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!93, !1606, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1679)
!1679 = !{!1680, !1681, !1682, !1686, !1687, !1688, !1689, !1693, !1697, !1698, !1699, !1700, !1701, !1709, !1710, !1711, !1712, !1713, !1714}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1678, file: !24, line: 96, baseType: !98, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1678, file: !24, line: 97, baseType: !1663, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1678, file: !24, line: 99, baseType: !1683, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1685, line: 76, flags: DIFlagFwdDecl)
!1685 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1678, file: !24, line: 100, baseType: !98, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1678, file: !24, line: 102, baseType: !984, size: 8, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1678, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1678, file: !24, line: 105, baseType: !1690, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1692)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1678, file: !24, line: 106, baseType: !1694, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1678, file: !24, line: 108, baseType: !1637, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1678, file: !24, line: 109, baseType: !1628, size: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1678, file: !24, line: 110, baseType: !1637, size: 64, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1678, file: !24, line: 111, baseType: !1628, size: 64, offset: 640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1678, file: !24, line: 112, baseType: !1702, size: 64, offset: 704)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!93, !1606, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1706, file: !37, line: 51, baseType: !93, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1678, file: !24, line: 113, baseType: !1637, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1678, file: !24, line: 114, baseType: !211, size: 64, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1678, file: !24, line: 115, baseType: !211, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1678, file: !24, line: 117, baseType: !1632, size: 64, offset: 960)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1678, file: !24, line: 118, baseType: !1628, size: 64, offset: 1024)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1678, file: !24, line: 120, baseType: !1715, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1664, file: !1665, line: 91, baseType: !1619, size: 64, offset: 448)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1664, file: !1665, line: 92, baseType: !1637, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1664, file: !1665, line: 93, baseType: !1628, size: 64, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1664, file: !1665, line: 94, baseType: !1637, size: 64, offset: 640)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1664, file: !1665, line: 95, baseType: !1628, size: 64, offset: 704)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1664, file: !1665, line: 97, baseType: !1637, size: 64, offset: 768)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1664, file: !1665, line: 98, baseType: !1637, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1664, file: !1665, line: 100, baseType: !1702, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1664, file: !1665, line: 101, baseType: !1637, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1664, file: !1665, line: 103, baseType: !1637, size: 64, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1664, file: !1665, line: 105, baseType: !1637, size: 64, offset: 1088)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1664, file: !1665, line: 107, baseType: !1632, size: 64, offset: 1152)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1664, file: !1665, line: 109, baseType: !1730, size: 64, offset: 1216)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1665, line: 109, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1664, file: !1665, line: 111, baseType: !1734, size: 64, offset: 1280)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1665, line: 111, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1664, file: !1665, line: 112, baseType: !1737, offset: 1344)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1738, line: 187, elements: !130)
!1738 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1664, file: !1665, line: 114, baseType: !984, size: 8, offset: 1344)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1602, file: !30, line: 471, baseType: !1677, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1602, file: !30, line: 473, baseType: !88, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1602, file: !30, line: 475, baseType: !88, size: 64, offset: 960)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1602, file: !30, line: 480, baseType: !375, size: 192, offset: 1024)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1602, file: !30, line: 484, baseType: !1745, size: 576, offset: 1216)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1745, file: !30, line: 362, baseType: !102, size: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1745, file: !30, line: 363, baseType: !102, size: 128, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1745, file: !30, line: 364, baseType: !102, size: 128, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1745, file: !30, line: 365, baseType: !102, size: 128, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1745, file: !30, line: 366, baseType: !984, size: 8, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1745, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1602, file: !30, line: 485, baseType: !1754, size: 2304, offset: 1792)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1851, !1855}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1754, file: !37, line: 566, baseType: !1705, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1754, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1754, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1754, file: !37, line: 569, baseType: !984, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1754, file: !37, line: 570, baseType: !984, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1754, file: !37, line: 571, baseType: !984, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1754, file: !37, line: 572, baseType: !984, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1754, file: !37, line: 573, baseType: !984, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1754, file: !37, line: 574, baseType: !984, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1754, file: !37, line: 575, baseType: !984, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1754, file: !37, line: 576, baseType: !984, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1754, file: !37, line: 577, baseType: !414, size: 32, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1754, file: !37, line: 578, baseType: !116, offset: 96)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1754, file: !37, line: 580, baseType: !102, size: 128, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1754, file: !37, line: 581, baseType: !720, size: 192, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1754, file: !37, line: 582, baseType: !1772, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1774, line: 43, size: 1472, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1783, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1773, file: !1774, line: 44, baseType: !98, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1773, file: !1774, line: 45, baseType: !93, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1773, file: !1774, line: 46, baseType: !102, size: 128, offset: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1773, file: !1774, line: 47, baseType: !116, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1773, file: !1774, line: 48, baseType: !1781, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1773, file: !1774, line: 49, baseType: !1784, size: 320, offset: 320)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1785, line: 11, size: 320, elements: !1786)
!1785 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !{!1787, !1788, !1789, !1794}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1784, file: !1785, line: 16, baseType: !684, size: 128)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1784, file: !1785, line: 17, baseType: !207, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1784, file: !1785, line: 18, baseType: !1790, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !1785, line: 19, baseType: !414, size: 32, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1773, file: !1774, line: 50, baseType: !207, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1773, file: !1774, line: 51, baseType: !490, size: 64, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1773, file: !1774, line: 52, baseType: !490, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1773, file: !1774, line: 53, baseType: !490, size: 64, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1773, file: !1774, line: 54, baseType: !490, size: 64, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1773, file: !1774, line: 55, baseType: !490, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1773, file: !1774, line: 56, baseType: !207, size: 64, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1773, file: !1774, line: 57, baseType: !207, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1773, file: !1774, line: 58, baseType: !207, size: 64, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1773, file: !1774, line: 59, baseType: !207, size: 64, offset: 1216)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1773, file: !1774, line: 60, baseType: !207, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1773, file: !1774, line: 61, baseType: !1606, size: 64, offset: 1344)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1773, file: !1774, line: 62, baseType: !984, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1773, file: !1774, line: 63, baseType: !984, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1754, file: !37, line: 583, baseType: !984, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1754, file: !37, line: 584, baseType: !984, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1754, file: !37, line: 585, baseType: !984, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1754, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1754, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1754, file: !37, line: 592, baseType: !482, size: 512, offset: 576)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1754, file: !37, line: 593, baseType: !276, size: 64, offset: 1088)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1754, file: !37, line: 594, baseType: !1309, size: 256, offset: 1152)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1754, file: !37, line: 595, baseType: !691, size: 128, offset: 1408)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1754, file: !37, line: 596, baseType: !1781, size: 64, offset: 1536)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1754, file: !37, line: 597, baseType: !298, size: 32, offset: 1600)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1754, file: !37, line: 598, baseType: !298, size: 32, offset: 1632)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1754, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1754, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1754, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1754, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1754, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1754, file: !37, line: 604, baseType: !984, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1754, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1754, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1754, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1754, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1754, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1754, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1754, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1754, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1754, file: !37, line: 613, baseType: !93, size: 32, offset: 1792)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1754, file: !37, line: 614, baseType: !93, size: 32, offset: 1824)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1754, file: !37, line: 615, baseType: !276, size: 64, offset: 1856)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1754, file: !37, line: 616, baseType: !276, size: 64, offset: 1920)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1754, file: !37, line: 617, baseType: !276, size: 64, offset: 1984)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1754, file: !37, line: 618, baseType: !276, size: 64, offset: 2048)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1754, file: !37, line: 620, baseType: !1842, size: 64, offset: 2112)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1843, file: !37, line: 537, baseType: !116)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1843, file: !37, line: 538, baseType: !7, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1843, file: !37, line: 540, baseType: !102, size: 128, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1843, file: !37, line: 543, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1754, file: !37, line: 621, baseType: !1852, size: 64, offset: 2176)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1606, !644}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1754, file: !37, line: 622, baseType: !1856, size: 64, offset: 2240)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1602, file: !30, line: 486, baseType: !1859, size: 64, offset: 4096)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1868, !1869, !1870}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1860, file: !37, line: 643, baseType: !1634, size: 1472)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1860, file: !37, line: 644, baseType: !1637, size: 64, offset: 1472)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1860, file: !37, line: 645, baseType: !1865, size: 64, offset: 1536)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1606, !984}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1860, file: !37, line: 646, baseType: !1637, size: 64, offset: 1600)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1860, file: !37, line: 647, baseType: !1628, size: 64, offset: 1664)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1860, file: !37, line: 648, baseType: !1628, size: 64, offset: 1728)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1602, file: !30, line: 493, baseType: !1872, size: 64, offset: 4160)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1602, file: !30, line: 499, baseType: !102, size: 128, offset: 4224)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1602, file: !30, line: 502, baseType: !1876, size: 64, offset: 4352)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1602, file: !30, line: 504, baseType: !1880, size: 64, offset: 4416)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1602, file: !30, line: 505, baseType: !276, size: 64, offset: 4480)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1602, file: !30, line: 510, baseType: !276, size: 64, offset: 4544)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1602, file: !30, line: 511, baseType: !1884, size: 64, offset: 4608)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1602, file: !30, line: 513, baseType: !1888, size: 64, offset: 4672)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1889, file: !30, line: 293, baseType: !7, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1889, file: !30, line: 294, baseType: !207, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1602, file: !30, line: 515, baseType: !102, size: 128, offset: 4736)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1602, file: !30, line: 526, baseType: !1895, offset: 4864)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1896, line: 5, elements: !130)
!1896 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1602, file: !30, line: 528, baseType: !1898, size: 64, offset: 4864)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1900, line: 14, flags: DIFlagFwdDecl)
!1900 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1602, file: !30, line: 529, baseType: !1576, size: 64, offset: 4928)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1602, file: !30, line: 534, baseType: !1903, size: 32, offset: 4992)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !1904)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !414)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1602, file: !30, line: 535, baseType: !414, size: 32, offset: 5024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1602, file: !30, line: 537, baseType: !116, offset: 5056)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1602, file: !30, line: 538, baseType: !102, size: 128, offset: 5056)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1602, file: !30, line: 540, baseType: !1909, size: 64, offset: 5184)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1911, line: 54, size: 960, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1923, !1927, !1928, !1929, !1930, !1934, !1938, !1939}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1910, file: !1911, line: 55, baseType: !98, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1910, file: !1911, line: 56, baseType: !1683, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1910, file: !1911, line: 58, baseType: !211, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1910, file: !1911, line: 59, baseType: !211, size: 64, offset: 192)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1910, file: !1911, line: 60, baseType: !109, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1910, file: !1911, line: 62, baseType: !1619, size: 64, offset: 320)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1910, file: !1911, line: 63, baseType: !1920, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!157, !1606, !1626}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1910, file: !1911, line: 65, baseType: !1924, size: 64, offset: 448)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !1909}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1910, file: !1911, line: 66, baseType: !1628, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1910, file: !1911, line: 68, baseType: !1637, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1910, file: !1911, line: 70, baseType: !1358, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1910, file: !1911, line: 71, baseType: !1931, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1375, !1606}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1910, file: !1911, line: 73, baseType: !1935, size: 64, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1606, !1395, !1401}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1910, file: !1911, line: 75, baseType: !1632, size: 64, offset: 832)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1910, file: !1911, line: 77, baseType: !1734, size: 64, offset: 896)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1602, file: !30, line: 541, baseType: !211, size: 64, offset: 5248)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1602, file: !30, line: 543, baseType: !1628, size: 64, offset: 5312)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1602, file: !30, line: 544, baseType: !1943, size: 64, offset: 5376)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1602, file: !30, line: 545, baseType: !1946, size: 64, offset: 5440)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1602, file: !30, line: 547, baseType: !984, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1602, file: !30, line: 548, baseType: !984, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1602, file: !30, line: 549, baseType: !984, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1602, file: !30, line: 550, baseType: !984, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1580, file: !1573, line: 116, baseType: !1953, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!984, !1594, !98}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1580, file: !1573, line: 118, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!93, !1594, !98, !7, !88, !204}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1580, file: !1573, line: 123, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!93, !1594, !98, !1964, !204}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1580, file: !1573, line: 126, baseType: !1966, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!98, !1594}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1580, file: !1573, line: 127, baseType: !1966, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1580, file: !1573, line: 128, baseType: !1971, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1576, !1594}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1580, file: !1573, line: 130, baseType: !1975, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!1576, !1594, !1576}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1580, file: !1573, line: 133, baseType: !1979, size: 64, offset: 704)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1576, !1594, !98}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1580, file: !1573, line: 135, baseType: !1983, size: 64, offset: 768)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!93, !1594, !98, !98, !7, !7, !1986}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1573, line: 43, size: 640, elements: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1987, file: !1573, line: 44, baseType: !1576, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1987, file: !1573, line: 45, baseType: !7, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1987, file: !1573, line: 46, baseType: !1992, size: 512, offset: 128)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 512, elements: !520)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1580, file: !1573, line: 140, baseType: !1975, size: 64, offset: 832)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1580, file: !1573, line: 143, baseType: !1971, size: 64, offset: 896)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1580, file: !1573, line: 145, baseType: !1583, size: 64, offset: 960)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1580, file: !1573, line: 146, baseType: !1997, size: 64, offset: 1024)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!93, !1594, !2000}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1573, line: 29, size: 128, elements: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2001, file: !1573, line: 30, baseType: !7, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2001, file: !1573, line: 31, baseType: !7, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2001, file: !1573, line: 32, baseType: !1594, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1580, file: !1573, line: 148, baseType: !2007, size: 64, offset: 1088)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!93, !1594, !1606}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1572, file: !1573, line: 20, baseType: !1606, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !3, line: 18, baseType: !2012, size: 64, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "software_node", file: !51, line: 457, size: 192, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2014, file: !51, line: 458, baseType: !98, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2014, file: !51, line: 459, baseType: !2012, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2014, file: !51, line: 460, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !51, line: 263, size: 256, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026, !2027}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2021, file: !51, line: 264, baseType: !98, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2021, file: !51, line: 265, baseType: !204, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2021, file: !51, line: 266, baseType: !984, size: 8, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2021, file: !51, line: 267, baseType: !50, size: 32, offset: 160)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !51, line: 268, baseType: !2028, size: 64, offset: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !51, line: 268, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2028, file: !51, line: 269, baseType: !1375, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2028, file: !51, line: 276, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !51, line: 270, size: 64, elements: !2033)
!2033 = !{!2034, !2036, !2038, !2040, !2042}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2032, file: !51, line: 271, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 64, elements: !520)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2032, file: !51, line: 272, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 64, elements: !357)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2032, file: !51, line: 273, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 64, elements: !956)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2032, file: !51, line: 274, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 64, elements: !571)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2032, file: !51, line: 275, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !571)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "child_ids", scope: !90, file: !3, line: 21, baseType: !2045, size: 128, offset: 832)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1436, line: 244, size: 128, elements: !2046)
!2046 = !{!2047}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2045, file: !1436, line: 245, baseType: !1439, size: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !90, file: !3, line: 22, baseType: !102, size: 128, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !90, file: !3, line: 23, baseType: !102, size: 128, offset: 1088)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !3, line: 24, baseType: !89, size: 64, offset: 1216)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !90, file: !3, line: 26, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !83, line: 246, baseType: !7)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2057 = !{!2058, !2060, !0, !2067, !2069, !2071}
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_software_node_init185", scope: !2, file: !3, line: 896, type: !88, isLocal: true, isDefinition: true)
!2060 = !DIGlobalVariableExpression(var: !2061, expr: !DIExpression())
!2061 = distinct !DIGlobalVariable(name: "__exitcall_software_node_exit", scope: !2, file: !3, line: 903, type: !2062, isLocal: true, isDefinition: true)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2063, line: 117, baseType: !2064)
!2063 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null}
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "software_node_ops", scope: !2, file: !3, line: 539, type: !1579, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(name: "software_node_type", scope: !2, file: !3, line: 626, type: !172, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "swnode_root_ids", scope: !2, file: !3, line: 29, type: !2045, isLocal: true, isDefinition: true)
!2073 = !{i32 7, !"Dwarf Version", i32 4}
!2074 = !{i32 2, !"Debug Info Version", i32 3}
!2075 = !{i32 1, !"wchar_size", i32 2}
!2076 = !{i32 1, !"Code Model", i32 2}
!2077 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2078 = distinct !DISubprogram(name: "is_software_node", scope: !3, file: !3, line: 36, type: !1592, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2079 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2078, file: !3, line: 36, type: !1594)
!2080 = !DILocation(line: 36, column: 51, scope: !2078)
!2081 = !DILocation(line: 38, column: 25, scope: !2078)
!2082 = !DILocation(line: 38, column: 10, scope: !2078)
!2083 = !DILocation(line: 38, column: 33, scope: !2078)
!2084 = !DILocation(line: 38, column: 36, scope: !2078)
!2085 = !DILocation(line: 38, column: 44, scope: !2078)
!2086 = !DILocation(line: 38, column: 48, scope: !2078)
!2087 = !DILocation(line: 0, scope: !2078)
!2088 = !DILocation(line: 38, column: 2, scope: !2078)
!2089 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2090, file: !2090, line: 39, type: !2091, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2090 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!984, !1375}
!2093 = !DILocalVariable(name: "ptr", arg: 1, scope: !2089, file: !2090, line: 39, type: !1375)
!2094 = !DILocation(line: 39, column: 68, scope: !2089)
!2095 = !DILocation(line: 41, column: 9, scope: !2089)
!2096 = !DILocation(line: 41, column: 24, scope: !2089)
!2097 = !DILocation(line: 41, column: 27, scope: !2089)
!2098 = !DILocation(line: 41, column: 2, scope: !2089)
!2099 = distinct !DISubprogram(name: "to_software_node", scope: !3, file: !3, line: 74, type: !2100, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2012, !1594}
!2102 = !DILocalVariable(name: "fwnode", arg: 1, scope: !2099, file: !3, line: 74, type: !1594)
!2103 = !DILocation(line: 74, column: 74, scope: !2099)
!2104 = !DILocalVariable(name: "swnode", scope: !2099, file: !3, line: 76, type: !2105)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!2107 = !DILocation(line: 76, column: 23, scope: !2099)
!2108 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !2109, file: !3, line: 76, type: !1594)
!2109 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 76, column: 32)
!2110 = !DILocation(line: 76, column: 32, scope: !2109)
!2111 = !DILocalVariable(name: "__mptr", scope: !2112, file: !3, line: 76, type: !88)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 76, column: 32)
!2113 = !DILocation(line: 76, column: 32, scope: !2112)
!2114 = !DILocation(line: 76, column: 32, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 76, column: 32)
!2116 = !DILocation(line: 78, column: 9, scope: !2099)
!2117 = !DILocation(line: 78, column: 18, scope: !2099)
!2118 = !DILocation(line: 78, column: 26, scope: !2099)
!2119 = !DILocation(line: 78, column: 2, scope: !2099)
!2120 = distinct !DISubprogram(name: "software_node_fwnode", scope: !3, file: !3, line: 82, type: !2121, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!1576, !2012}
!2123 = !DILocalVariable(name: "node", arg: 1, scope: !2120, file: !3, line: 82, type: !2012)
!2124 = !DILocation(line: 82, column: 72, scope: !2120)
!2125 = !DILocalVariable(name: "swnode", scope: !2120, file: !3, line: 84, type: !89)
!2126 = !DILocation(line: 84, column: 17, scope: !2120)
!2127 = !DILocation(line: 84, column: 50, scope: !2120)
!2128 = !DILocation(line: 84, column: 26, scope: !2120)
!2129 = !DILocation(line: 86, column: 9, scope: !2120)
!2130 = !DILocation(line: 86, column: 19, scope: !2120)
!2131 = !DILocation(line: 86, column: 27, scope: !2120)
!2132 = !DILocation(line: 86, column: 2, scope: !2120)
!2133 = distinct !DISubprogram(name: "software_node_to_swnode", scope: !3, file: !3, line: 52, type: !2134, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!89, !2012}
!2136 = !DILocalVariable(name: "lock", arg: 1, scope: !2137, file: !2138, line: 392, type: !2141)
!2137 = distinct !DISubprogram(name: "spin_unlock", scope: !2138, file: !2138, line: 392, type: !2139, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2138 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !DISubroutineType(types: !2140)
!2140 = !{null, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2142 = !DILocation(line: 392, column: 53, scope: !2137, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 69, column: 2, scope: !2133)
!2144 = !DILocalVariable(name: "lock", arg: 1, scope: !2145, file: !2138, line: 352, type: !2141)
!2145 = distinct !DISubprogram(name: "spin_lock", scope: !2138, file: !2138, line: 352, type: !2139, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2146 = !DILocation(line: 352, column: 51, scope: !2145, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 60, column: 2, scope: !2133)
!2148 = !DILocalVariable(name: "node", arg: 1, scope: !2133, file: !3, line: 52, type: !2012)
!2149 = !DILocation(line: 52, column: 53, scope: !2133)
!2150 = !DILocalVariable(name: "swnode", scope: !2133, file: !3, line: 54, type: !89)
!2151 = !DILocation(line: 54, column: 17, scope: !2133)
!2152 = !DILocalVariable(name: "k", scope: !2133, file: !3, line: 55, type: !109)
!2153 = !DILocation(line: 55, column: 18, scope: !2133)
!2154 = !DILocation(line: 57, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 57, column: 6)
!2156 = !DILocation(line: 57, column: 6, scope: !2133)
!2157 = !DILocation(line: 58, column: 3, scope: !2155)
!2158 = !DILocation(line: 60, column: 13, scope: !2133)
!2159 = !DILocation(line: 60, column: 26, scope: !2133)
!2160 = !DILocation(line: 354, column: 2, scope: !2161, inlinedAt: !2147)
!2161 = distinct !DILexicalBlock(scope: !2145, file: !2138, line: 354, column: 2)
!2162 = !{i32 -2145282079}
!2163 = !DILocation(line: 354, column: 2, scope: !2164, inlinedAt: !2147)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !2138, line: 354, column: 2)
!2165 = !DILocalVariable(name: "__mptr", scope: !2166, file: !3, line: 62, type: !88)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 62, column: 2)
!2167 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 62, column: 2)
!2168 = !DILocation(line: 62, column: 2, scope: !2166)
!2169 = !DILocation(line: 62, column: 2, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 62, column: 2)
!2171 = !DILocation(line: 62, column: 2, scope: !2167)
!2172 = !DILocation(line: 62, column: 2, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 62, column: 2)
!2174 = !DILocalVariable(name: "__mptr", scope: !2175, file: !3, line: 63, type: !88)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 63, column: 12)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 62, column: 52)
!2177 = !DILocation(line: 63, column: 12, scope: !2175)
!2178 = !DILocation(line: 63, column: 12, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 63, column: 12)
!2180 = !DILocation(line: 63, column: 10, scope: !2176)
!2181 = !DILocation(line: 64, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 64, column: 7)
!2183 = !DILocation(line: 64, column: 15, scope: !2182)
!2184 = !DILocation(line: 64, column: 23, scope: !2182)
!2185 = !DILocation(line: 64, column: 20, scope: !2182)
!2186 = !DILocation(line: 64, column: 7, scope: !2176)
!2187 = !DILocation(line: 65, column: 4, scope: !2182)
!2188 = !DILocation(line: 66, column: 10, scope: !2176)
!2189 = !DILocation(line: 67, column: 2, scope: !2176)
!2190 = !DILocalVariable(name: "__mptr", scope: !2191, file: !3, line: 62, type: !88)
!2191 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 62, column: 2)
!2192 = !DILocation(line: 62, column: 2, scope: !2191)
!2193 = !DILocation(line: 62, column: 2, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 62, column: 2)
!2195 = distinct !{!2195, !2171, !2196}
!2196 = !DILocation(line: 67, column: 2, scope: !2167)
!2197 = !DILocation(line: 69, column: 15, scope: !2133)
!2198 = !DILocation(line: 69, column: 28, scope: !2133)
!2199 = !DILocation(line: 394, column: 2, scope: !2200, inlinedAt: !2143)
!2200 = distinct !DILexicalBlock(scope: !2137, file: !2138, line: 394, column: 2)
!2201 = !{i32 -2145279718}
!2202 = !DILocation(line: 394, column: 2, scope: !2203, inlinedAt: !2143)
!2203 = distinct !DILexicalBlock(scope: !2200, file: !2138, line: 394, column: 2)
!2204 = !DILocation(line: 71, column: 9, scope: !2133)
!2205 = !DILocation(line: 71, column: 2, scope: !2133)
!2206 = !DILocation(line: 72, column: 1, scope: !2133)
!2207 = distinct !DISubprogram(name: "property_entries_dup", scope: !3, file: !3, line: 296, type: !2208, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!2210, !2019}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2211 = !DILocalVariable(name: "properties", arg: 1, scope: !2207, file: !3, line: 296, type: !2019)
!2212 = !DILocation(line: 296, column: 51, scope: !2207)
!2213 = !DILocalVariable(name: "p", scope: !2207, file: !3, line: 298, type: !2210)
!2214 = !DILocation(line: 298, column: 25, scope: !2207)
!2215 = !DILocalVariable(name: "i", scope: !2207, file: !3, line: 299, type: !93)
!2216 = !DILocation(line: 299, column: 6, scope: !2207)
!2217 = !DILocalVariable(name: "n", scope: !2207, file: !3, line: 299, type: !93)
!2218 = !DILocation(line: 299, column: 9, scope: !2207)
!2219 = !DILocalVariable(name: "ret", scope: !2207, file: !3, line: 300, type: !93)
!2220 = !DILocation(line: 300, column: 6, scope: !2207)
!2221 = !DILocation(line: 302, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 302, column: 6)
!2223 = !DILocation(line: 302, column: 6, scope: !2207)
!2224 = !DILocation(line: 303, column: 3, scope: !2222)
!2225 = !DILocation(line: 305, column: 2, scope: !2207)
!2226 = !DILocation(line: 305, column: 9, scope: !2207)
!2227 = !DILocation(line: 305, column: 20, scope: !2207)
!2228 = !DILocation(line: 305, column: 23, scope: !2207)
!2229 = !DILocation(line: 306, column: 4, scope: !2207)
!2230 = distinct !{!2230, !2225, !2229}
!2231 = !DILocation(line: 308, column: 14, scope: !2207)
!2232 = !DILocation(line: 308, column: 16, scope: !2207)
!2233 = !DILocation(line: 308, column: 6, scope: !2207)
!2234 = !DILocation(line: 308, column: 4, scope: !2207)
!2235 = !DILocation(line: 309, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 309, column: 6)
!2237 = !DILocation(line: 309, column: 6, scope: !2207)
!2238 = !DILocation(line: 310, column: 10, scope: !2236)
!2239 = !DILocation(line: 310, column: 3, scope: !2236)
!2240 = !DILocation(line: 312, column: 9, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 312, column: 2)
!2242 = !DILocation(line: 312, column: 7, scope: !2241)
!2243 = !DILocation(line: 312, column: 14, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 312, column: 2)
!2245 = !DILocation(line: 312, column: 18, scope: !2244)
!2246 = !DILocation(line: 312, column: 16, scope: !2244)
!2247 = !DILocation(line: 312, column: 2, scope: !2241)
!2248 = !DILocation(line: 313, column: 35, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 312, column: 26)
!2250 = !DILocation(line: 313, column: 37, scope: !2249)
!2251 = !DILocation(line: 313, column: 42, scope: !2249)
!2252 = !DILocation(line: 313, column: 53, scope: !2249)
!2253 = !DILocation(line: 313, column: 9, scope: !2249)
!2254 = !DILocation(line: 313, column: 7, scope: !2249)
!2255 = !DILocation(line: 314, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 314, column: 7)
!2257 = !DILocation(line: 314, column: 7, scope: !2249)
!2258 = !DILocation(line: 315, column: 4, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 314, column: 12)
!2260 = !DILocation(line: 315, column: 11, scope: !2259)
!2261 = !DILocation(line: 315, column: 15, scope: !2259)
!2262 = !DILocation(line: 316, column: 31, scope: !2259)
!2263 = !DILocation(line: 316, column: 33, scope: !2259)
!2264 = !DILocation(line: 316, column: 5, scope: !2259)
!2265 = distinct !{!2265, !2258, !2266}
!2266 = !DILocation(line: 316, column: 35, scope: !2259)
!2267 = !DILocation(line: 317, column: 10, scope: !2259)
!2268 = !DILocation(line: 317, column: 4, scope: !2259)
!2269 = !DILocation(line: 318, column: 19, scope: !2259)
!2270 = !DILocation(line: 318, column: 11, scope: !2259)
!2271 = !DILocation(line: 318, column: 4, scope: !2259)
!2272 = !DILocation(line: 320, column: 2, scope: !2249)
!2273 = !DILocation(line: 312, column: 22, scope: !2244)
!2274 = !DILocation(line: 312, column: 2, scope: !2244)
!2275 = distinct !{!2275, !2247, !2276}
!2276 = !DILocation(line: 320, column: 2, scope: !2241)
!2277 = !DILocation(line: 322, column: 9, scope: !2207)
!2278 = !DILocation(line: 322, column: 2, scope: !2207)
!2279 = !DILocation(line: 323, column: 1, scope: !2207)
!2280 = distinct !DISubprogram(name: "kcalloc", scope: !60, file: !60, line: 601, type: !2281, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!88, !204, !204, !1443}
!2283 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !60, line: 601, type: !204)
!2284 = !DILocation(line: 601, column: 36, scope: !2280)
!2285 = !DILocalVariable(name: "size", arg: 2, scope: !2280, file: !60, line: 601, type: !204)
!2286 = !DILocation(line: 601, column: 46, scope: !2280)
!2287 = !DILocalVariable(name: "flags", arg: 3, scope: !2280, file: !60, line: 601, type: !1443)
!2288 = !DILocation(line: 601, column: 58, scope: !2280)
!2289 = !DILocation(line: 603, column: 23, scope: !2280)
!2290 = !DILocation(line: 603, column: 26, scope: !2280)
!2291 = !DILocation(line: 603, column: 32, scope: !2280)
!2292 = !DILocation(line: 603, column: 38, scope: !2280)
!2293 = !DILocation(line: 603, column: 9, scope: !2280)
!2294 = !DILocation(line: 603, column: 2, scope: !2280)
!2295 = distinct !DISubprogram(name: "ERR_PTR", scope: !2090, file: !2090, line: 24, type: !2296, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!88, !192}
!2298 = !DILocalVariable(name: "error", arg: 1, scope: !2295, file: !2090, line: 24, type: !192)
!2299 = !DILocation(line: 24, column: 48, scope: !2295)
!2300 = !DILocation(line: 26, column: 18, scope: !2295)
!2301 = !DILocation(line: 26, column: 9, scope: !2295)
!2302 = !DILocation(line: 26, column: 2, scope: !2295)
!2303 = distinct !DISubprogram(name: "property_entry_copy_data", scope: !3, file: !3, line: 235, type: !2304, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!93, !2210, !2019}
!2306 = !DILocalVariable(name: "s", arg: 1, scope: !2307, file: !60, line: 445, type: !1034)
!2307 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !60, file: !60, line: 445, type: !2308, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!88, !1034, !1443, !204}
!2310 = !DILocation(line: 445, column: 72, scope: !2307, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 552, column: 10, scope: !2312, inlinedAt: !2317)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !60, line: 540, column: 34)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !60, line: 540, column: 6)
!2314 = distinct !DISubprogram(name: "kmalloc", scope: !60, file: !60, line: 538, type: !2315, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!88, !204, !1443}
!2317 = distinct !DILocation(line: 260, column: 13, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 259, column: 9)
!2319 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 256, column: 6)
!2320 = !DILocalVariable(name: "flags", arg: 2, scope: !2307, file: !60, line: 446, type: !1443)
!2321 = !DILocation(line: 446, column: 9, scope: !2307, inlinedAt: !2311)
!2322 = !DILocalVariable(name: "size", arg: 3, scope: !2307, file: !60, line: 446, type: !204)
!2323 = !DILocation(line: 446, column: 23, scope: !2307, inlinedAt: !2311)
!2324 = !DILocalVariable(name: "ret", scope: !2307, file: !60, line: 448, type: !88)
!2325 = !DILocation(line: 448, column: 8, scope: !2307, inlinedAt: !2311)
!2326 = !DILocalVariable(name: "flags", arg: 1, scope: !2327, file: !60, line: 318, type: !1443)
!2327 = distinct !DISubprogram(name: "kmalloc_type", scope: !60, file: !60, line: 318, type: !2328, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!59, !1443}
!2330 = !DILocation(line: 318, column: 67, scope: !2327, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 553, column: 20, scope: !2312, inlinedAt: !2317)
!2332 = !DILocalVariable(name: "size", arg: 1, scope: !2333, file: !60, line: 346, type: !204)
!2333 = distinct !DISubprogram(name: "kmalloc_index", scope: !60, file: !60, line: 346, type: !2334, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!7, !204}
!2336 = !DILocation(line: 346, column: 58, scope: !2333, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 547, column: 11, scope: !2312, inlinedAt: !2317)
!2338 = !DILocalVariable(name: "size", arg: 1, scope: !2339, file: !60, line: 472, type: !204)
!2339 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !60, file: !60, line: 472, type: !2340, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!88, !204, !1443, !7}
!2342 = !DILocation(line: 472, column: 28, scope: !2339, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 481, column: 9, scope: !2344, inlinedAt: !2345)
!2344 = distinct !DISubprogram(name: "kmalloc_large", scope: !60, file: !60, line: 478, type: !2315, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2345 = distinct !DILocation(line: 545, column: 11, scope: !2346, inlinedAt: !2317)
!2346 = distinct !DILexicalBlock(scope: !2312, file: !60, line: 544, column: 7)
!2347 = !DILocalVariable(name: "flags", arg: 2, scope: !2339, file: !60, line: 472, type: !1443)
!2348 = !DILocation(line: 472, column: 40, scope: !2339, inlinedAt: !2343)
!2349 = !DILocalVariable(name: "order", arg: 3, scope: !2339, file: !60, line: 472, type: !7)
!2350 = !DILocation(line: 472, column: 60, scope: !2339, inlinedAt: !2343)
!2351 = !DILocalVariable(name: "size", arg: 1, scope: !2344, file: !60, line: 478, type: !204)
!2352 = !DILocation(line: 478, column: 51, scope: !2344, inlinedAt: !2345)
!2353 = !DILocalVariable(name: "flags", arg: 2, scope: !2344, file: !60, line: 478, type: !1443)
!2354 = !DILocation(line: 478, column: 63, scope: !2344, inlinedAt: !2345)
!2355 = !DILocalVariable(name: "order", scope: !2344, file: !60, line: 480, type: !7)
!2356 = !DILocation(line: 480, column: 15, scope: !2344, inlinedAt: !2345)
!2357 = !DILocalVariable(name: "size", arg: 1, scope: !2314, file: !60, line: 538, type: !204)
!2358 = !DILocation(line: 538, column: 45, scope: !2314, inlinedAt: !2317)
!2359 = !DILocalVariable(name: "flags", arg: 2, scope: !2314, file: !60, line: 538, type: !1443)
!2360 = !DILocation(line: 538, column: 57, scope: !2314, inlinedAt: !2317)
!2361 = !DILocalVariable(name: "index", scope: !2312, file: !60, line: 542, type: !7)
!2362 = !DILocation(line: 542, column: 16, scope: !2312, inlinedAt: !2317)
!2363 = !DILocalVariable(name: "dst", arg: 1, scope: !2303, file: !3, line: 235, type: !2210)
!2364 = !DILocation(line: 235, column: 60, scope: !2303)
!2365 = !DILocalVariable(name: "src", arg: 2, scope: !2303, file: !3, line: 236, type: !2019)
!2366 = !DILocation(line: 236, column: 38, scope: !2303)
!2367 = !DILocalVariable(name: "pointer", scope: !2303, file: !3, line: 238, type: !1375)
!2368 = !DILocation(line: 238, column: 14, scope: !2303)
!2369 = !DILocation(line: 238, column: 45, scope: !2303)
!2370 = !DILocation(line: 238, column: 24, scope: !2303)
!2371 = !DILocalVariable(name: "dst_ptr", scope: !2303, file: !3, line: 239, type: !88)
!2372 = !DILocation(line: 239, column: 8, scope: !2303)
!2373 = !DILocalVariable(name: "nval", scope: !2303, file: !3, line: 240, type: !204)
!2374 = !DILocation(line: 240, column: 9, scope: !2303)
!2375 = !DILocation(line: 246, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 246, column: 6)
!2377 = !DILocation(line: 246, column: 12, scope: !2376)
!2378 = !DILocation(line: 246, column: 22, scope: !2376)
!2379 = !DILocation(line: 246, column: 26, scope: !2376)
!2380 = !DILocation(line: 246, column: 31, scope: !2376)
!2381 = !DILocation(line: 246, column: 6, scope: !2303)
!2382 = !DILocation(line: 247, column: 3, scope: !2376)
!2383 = !DILocation(line: 253, column: 6, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 253, column: 6)
!2385 = !DILocation(line: 253, column: 11, scope: !2384)
!2386 = !DILocation(line: 253, column: 16, scope: !2384)
!2387 = !DILocation(line: 253, column: 32, scope: !2384)
!2388 = !DILocation(line: 253, column: 35, scope: !2384)
!2389 = !DILocation(line: 253, column: 40, scope: !2384)
!2390 = !DILocation(line: 253, column: 6, scope: !2303)
!2391 = !DILocation(line: 254, column: 3, scope: !2384)
!2392 = !DILocation(line: 256, column: 6, scope: !2319)
!2393 = !DILocation(line: 256, column: 11, scope: !2319)
!2394 = !DILocation(line: 256, column: 18, scope: !2319)
!2395 = !DILocation(line: 256, column: 6, scope: !2303)
!2396 = !DILocation(line: 257, column: 14, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 256, column: 41)
!2398 = !DILocation(line: 257, column: 19, scope: !2397)
!2399 = !DILocation(line: 257, column: 13, scope: !2397)
!2400 = !DILocation(line: 257, column: 11, scope: !2397)
!2401 = !DILocation(line: 258, column: 3, scope: !2397)
!2402 = !DILocation(line: 258, column: 8, scope: !2397)
!2403 = !DILocation(line: 258, column: 18, scope: !2397)
!2404 = !DILocation(line: 259, column: 2, scope: !2397)
!2405 = !DILocation(line: 260, column: 21, scope: !2318)
!2406 = !DILocation(line: 260, column: 26, scope: !2318)
!2407 = !DILocation(line: 540, column: 27, scope: !2313, inlinedAt: !2317)
!2408 = !DILocation(line: 540, column: 6, scope: !2313, inlinedAt: !2317)
!2409 = !DILocation(line: 540, column: 6, scope: !2314, inlinedAt: !2317)
!2410 = !DILocation(line: 544, column: 7, scope: !2346, inlinedAt: !2317)
!2411 = !DILocation(line: 544, column: 12, scope: !2346, inlinedAt: !2317)
!2412 = !DILocation(line: 544, column: 7, scope: !2312, inlinedAt: !2317)
!2413 = !DILocation(line: 545, column: 25, scope: !2346, inlinedAt: !2317)
!2414 = !DILocation(line: 545, column: 31, scope: !2346, inlinedAt: !2317)
!2415 = !DILocation(line: 480, column: 33, scope: !2344, inlinedAt: !2345)
!2416 = !DILocation(line: 480, column: 23, scope: !2344, inlinedAt: !2345)
!2417 = !DILocation(line: 481, column: 29, scope: !2344, inlinedAt: !2345)
!2418 = !DILocation(line: 481, column: 35, scope: !2344, inlinedAt: !2345)
!2419 = !DILocation(line: 481, column: 42, scope: !2344, inlinedAt: !2345)
!2420 = !DILocation(line: 474, column: 23, scope: !2339, inlinedAt: !2343)
!2421 = !DILocation(line: 474, column: 29, scope: !2339, inlinedAt: !2343)
!2422 = !DILocation(line: 474, column: 36, scope: !2339, inlinedAt: !2343)
!2423 = !DILocation(line: 474, column: 9, scope: !2339, inlinedAt: !2343)
!2424 = !DILocation(line: 545, column: 4, scope: !2346, inlinedAt: !2317)
!2425 = !DILocation(line: 547, column: 25, scope: !2312, inlinedAt: !2317)
!2426 = !DILocation(line: 348, column: 7, scope: !2427, inlinedAt: !2337)
!2427 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 348, column: 6)
!2428 = !DILocation(line: 348, column: 6, scope: !2333, inlinedAt: !2337)
!2429 = !DILocation(line: 349, column: 3, scope: !2427, inlinedAt: !2337)
!2430 = !DILocation(line: 351, column: 6, scope: !2431, inlinedAt: !2337)
!2431 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 351, column: 6)
!2432 = !DILocation(line: 351, column: 11, scope: !2431, inlinedAt: !2337)
!2433 = !DILocation(line: 351, column: 6, scope: !2333, inlinedAt: !2337)
!2434 = !DILocation(line: 352, column: 3, scope: !2431, inlinedAt: !2337)
!2435 = !DILocation(line: 354, column: 32, scope: !2436, inlinedAt: !2337)
!2436 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 354, column: 6)
!2437 = !DILocation(line: 354, column: 37, scope: !2436, inlinedAt: !2337)
!2438 = !DILocation(line: 354, column: 42, scope: !2436, inlinedAt: !2337)
!2439 = !DILocation(line: 354, column: 45, scope: !2436, inlinedAt: !2337)
!2440 = !DILocation(line: 354, column: 50, scope: !2436, inlinedAt: !2337)
!2441 = !DILocation(line: 354, column: 6, scope: !2333, inlinedAt: !2337)
!2442 = !DILocation(line: 355, column: 3, scope: !2436, inlinedAt: !2337)
!2443 = !DILocation(line: 356, column: 32, scope: !2444, inlinedAt: !2337)
!2444 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 356, column: 6)
!2445 = !DILocation(line: 356, column: 37, scope: !2444, inlinedAt: !2337)
!2446 = !DILocation(line: 356, column: 43, scope: !2444, inlinedAt: !2337)
!2447 = !DILocation(line: 356, column: 46, scope: !2444, inlinedAt: !2337)
!2448 = !DILocation(line: 356, column: 51, scope: !2444, inlinedAt: !2337)
!2449 = !DILocation(line: 356, column: 6, scope: !2333, inlinedAt: !2337)
!2450 = !DILocation(line: 357, column: 3, scope: !2444, inlinedAt: !2337)
!2451 = !DILocation(line: 358, column: 6, scope: !2452, inlinedAt: !2337)
!2452 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 358, column: 6)
!2453 = !DILocation(line: 358, column: 11, scope: !2452, inlinedAt: !2337)
!2454 = !DILocation(line: 358, column: 6, scope: !2333, inlinedAt: !2337)
!2455 = !DILocation(line: 358, column: 26, scope: !2452, inlinedAt: !2337)
!2456 = !DILocation(line: 359, column: 6, scope: !2457, inlinedAt: !2337)
!2457 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 359, column: 6)
!2458 = !DILocation(line: 359, column: 11, scope: !2457, inlinedAt: !2337)
!2459 = !DILocation(line: 359, column: 6, scope: !2333, inlinedAt: !2337)
!2460 = !DILocation(line: 359, column: 26, scope: !2457, inlinedAt: !2337)
!2461 = !DILocation(line: 360, column: 6, scope: !2462, inlinedAt: !2337)
!2462 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 360, column: 6)
!2463 = !DILocation(line: 360, column: 11, scope: !2462, inlinedAt: !2337)
!2464 = !DILocation(line: 360, column: 6, scope: !2333, inlinedAt: !2337)
!2465 = !DILocation(line: 360, column: 26, scope: !2462, inlinedAt: !2337)
!2466 = !DILocation(line: 361, column: 6, scope: !2467, inlinedAt: !2337)
!2467 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 361, column: 6)
!2468 = !DILocation(line: 361, column: 11, scope: !2467, inlinedAt: !2337)
!2469 = !DILocation(line: 361, column: 6, scope: !2333, inlinedAt: !2337)
!2470 = !DILocation(line: 361, column: 26, scope: !2467, inlinedAt: !2337)
!2471 = !DILocation(line: 362, column: 6, scope: !2472, inlinedAt: !2337)
!2472 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 362, column: 6)
!2473 = !DILocation(line: 362, column: 11, scope: !2472, inlinedAt: !2337)
!2474 = !DILocation(line: 362, column: 6, scope: !2333, inlinedAt: !2337)
!2475 = !DILocation(line: 362, column: 26, scope: !2472, inlinedAt: !2337)
!2476 = !DILocation(line: 363, column: 6, scope: !2477, inlinedAt: !2337)
!2477 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 363, column: 6)
!2478 = !DILocation(line: 363, column: 11, scope: !2477, inlinedAt: !2337)
!2479 = !DILocation(line: 363, column: 6, scope: !2333, inlinedAt: !2337)
!2480 = !DILocation(line: 363, column: 26, scope: !2477, inlinedAt: !2337)
!2481 = !DILocation(line: 364, column: 6, scope: !2482, inlinedAt: !2337)
!2482 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 364, column: 6)
!2483 = !DILocation(line: 364, column: 11, scope: !2482, inlinedAt: !2337)
!2484 = !DILocation(line: 364, column: 6, scope: !2333, inlinedAt: !2337)
!2485 = !DILocation(line: 364, column: 26, scope: !2482, inlinedAt: !2337)
!2486 = !DILocation(line: 365, column: 6, scope: !2487, inlinedAt: !2337)
!2487 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 365, column: 6)
!2488 = !DILocation(line: 365, column: 11, scope: !2487, inlinedAt: !2337)
!2489 = !DILocation(line: 365, column: 6, scope: !2333, inlinedAt: !2337)
!2490 = !DILocation(line: 365, column: 26, scope: !2487, inlinedAt: !2337)
!2491 = !DILocation(line: 366, column: 6, scope: !2492, inlinedAt: !2337)
!2492 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 366, column: 6)
!2493 = !DILocation(line: 366, column: 11, scope: !2492, inlinedAt: !2337)
!2494 = !DILocation(line: 366, column: 6, scope: !2333, inlinedAt: !2337)
!2495 = !DILocation(line: 366, column: 26, scope: !2492, inlinedAt: !2337)
!2496 = !DILocation(line: 367, column: 6, scope: !2497, inlinedAt: !2337)
!2497 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 367, column: 6)
!2498 = !DILocation(line: 367, column: 11, scope: !2497, inlinedAt: !2337)
!2499 = !DILocation(line: 367, column: 6, scope: !2333, inlinedAt: !2337)
!2500 = !DILocation(line: 367, column: 26, scope: !2497, inlinedAt: !2337)
!2501 = !DILocation(line: 368, column: 6, scope: !2502, inlinedAt: !2337)
!2502 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 368, column: 6)
!2503 = !DILocation(line: 368, column: 11, scope: !2502, inlinedAt: !2337)
!2504 = !DILocation(line: 368, column: 6, scope: !2333, inlinedAt: !2337)
!2505 = !DILocation(line: 368, column: 26, scope: !2502, inlinedAt: !2337)
!2506 = !DILocation(line: 369, column: 6, scope: !2507, inlinedAt: !2337)
!2507 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 369, column: 6)
!2508 = !DILocation(line: 369, column: 11, scope: !2507, inlinedAt: !2337)
!2509 = !DILocation(line: 369, column: 6, scope: !2333, inlinedAt: !2337)
!2510 = !DILocation(line: 369, column: 26, scope: !2507, inlinedAt: !2337)
!2511 = !DILocation(line: 370, column: 6, scope: !2512, inlinedAt: !2337)
!2512 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 370, column: 6)
!2513 = !DILocation(line: 370, column: 11, scope: !2512, inlinedAt: !2337)
!2514 = !DILocation(line: 370, column: 6, scope: !2333, inlinedAt: !2337)
!2515 = !DILocation(line: 370, column: 26, scope: !2512, inlinedAt: !2337)
!2516 = !DILocation(line: 371, column: 6, scope: !2517, inlinedAt: !2337)
!2517 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 371, column: 6)
!2518 = !DILocation(line: 371, column: 11, scope: !2517, inlinedAt: !2337)
!2519 = !DILocation(line: 371, column: 6, scope: !2333, inlinedAt: !2337)
!2520 = !DILocation(line: 371, column: 26, scope: !2517, inlinedAt: !2337)
!2521 = !DILocation(line: 372, column: 6, scope: !2522, inlinedAt: !2337)
!2522 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 372, column: 6)
!2523 = !DILocation(line: 372, column: 11, scope: !2522, inlinedAt: !2337)
!2524 = !DILocation(line: 372, column: 6, scope: !2333, inlinedAt: !2337)
!2525 = !DILocation(line: 372, column: 26, scope: !2522, inlinedAt: !2337)
!2526 = !DILocation(line: 373, column: 6, scope: !2527, inlinedAt: !2337)
!2527 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 373, column: 6)
!2528 = !DILocation(line: 373, column: 11, scope: !2527, inlinedAt: !2337)
!2529 = !DILocation(line: 373, column: 6, scope: !2333, inlinedAt: !2337)
!2530 = !DILocation(line: 373, column: 26, scope: !2527, inlinedAt: !2337)
!2531 = !DILocation(line: 374, column: 6, scope: !2532, inlinedAt: !2337)
!2532 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 374, column: 6)
!2533 = !DILocation(line: 374, column: 11, scope: !2532, inlinedAt: !2337)
!2534 = !DILocation(line: 374, column: 6, scope: !2333, inlinedAt: !2337)
!2535 = !DILocation(line: 374, column: 26, scope: !2532, inlinedAt: !2337)
!2536 = !DILocation(line: 375, column: 6, scope: !2537, inlinedAt: !2337)
!2537 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 375, column: 6)
!2538 = !DILocation(line: 375, column: 11, scope: !2537, inlinedAt: !2337)
!2539 = !DILocation(line: 375, column: 6, scope: !2333, inlinedAt: !2337)
!2540 = !DILocation(line: 375, column: 27, scope: !2537, inlinedAt: !2337)
!2541 = !DILocation(line: 376, column: 6, scope: !2542, inlinedAt: !2337)
!2542 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 376, column: 6)
!2543 = !DILocation(line: 376, column: 11, scope: !2542, inlinedAt: !2337)
!2544 = !DILocation(line: 376, column: 6, scope: !2333, inlinedAt: !2337)
!2545 = !DILocation(line: 376, column: 32, scope: !2542, inlinedAt: !2337)
!2546 = !DILocation(line: 377, column: 6, scope: !2547, inlinedAt: !2337)
!2547 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 377, column: 6)
!2548 = !DILocation(line: 377, column: 11, scope: !2547, inlinedAt: !2337)
!2549 = !DILocation(line: 377, column: 6, scope: !2333, inlinedAt: !2337)
!2550 = !DILocation(line: 377, column: 32, scope: !2547, inlinedAt: !2337)
!2551 = !DILocation(line: 378, column: 6, scope: !2552, inlinedAt: !2337)
!2552 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 378, column: 6)
!2553 = !DILocation(line: 378, column: 11, scope: !2552, inlinedAt: !2337)
!2554 = !DILocation(line: 378, column: 6, scope: !2333, inlinedAt: !2337)
!2555 = !DILocation(line: 378, column: 32, scope: !2552, inlinedAt: !2337)
!2556 = !DILocation(line: 379, column: 6, scope: !2557, inlinedAt: !2337)
!2557 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 379, column: 6)
!2558 = !DILocation(line: 379, column: 11, scope: !2557, inlinedAt: !2337)
!2559 = !DILocation(line: 379, column: 6, scope: !2333, inlinedAt: !2337)
!2560 = !DILocation(line: 379, column: 33, scope: !2557, inlinedAt: !2337)
!2561 = !DILocation(line: 380, column: 6, scope: !2562, inlinedAt: !2337)
!2562 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 380, column: 6)
!2563 = !DILocation(line: 380, column: 11, scope: !2562, inlinedAt: !2337)
!2564 = !DILocation(line: 380, column: 6, scope: !2333, inlinedAt: !2337)
!2565 = !DILocation(line: 380, column: 33, scope: !2562, inlinedAt: !2337)
!2566 = !DILocation(line: 381, column: 6, scope: !2567, inlinedAt: !2337)
!2567 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 381, column: 6)
!2568 = !DILocation(line: 381, column: 11, scope: !2567, inlinedAt: !2337)
!2569 = !DILocation(line: 381, column: 6, scope: !2333, inlinedAt: !2337)
!2570 = !DILocation(line: 381, column: 33, scope: !2567, inlinedAt: !2337)
!2571 = !DILocation(line: 382, column: 2, scope: !2572, inlinedAt: !2337)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !60, line: 382, column: 2)
!2573 = distinct !DILexicalBlock(scope: !2333, file: !60, line: 382, column: 2)
!2574 = !{i32 -2143689650, i32 -2143689621, i32 -2143689575, i32 -2143689517, i32 -2143689463, i32 -2143689409, i32 -2143689354, i32 -2143689323}
!2575 = !DILocation(line: 382, column: 2, scope: !2576, inlinedAt: !2337)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !60, line: 382, column: 2)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !60, line: 382, column: 2)
!2578 = !{i32 -2143688880, i32 -2143688873, i32 -2143688819, i32 -2143688788, i32 -2143688758}
!2579 = !DILocation(line: 382, column: 2, scope: !2577, inlinedAt: !2337)
!2580 = !DILocation(line: 386, column: 1, scope: !2333, inlinedAt: !2337)
!2581 = !DILocation(line: 547, column: 9, scope: !2312, inlinedAt: !2317)
!2582 = !DILocation(line: 549, column: 8, scope: !2583, inlinedAt: !2317)
!2583 = distinct !DILexicalBlock(scope: !2312, file: !60, line: 549, column: 7)
!2584 = !DILocation(line: 549, column: 7, scope: !2312, inlinedAt: !2317)
!2585 = !DILocation(line: 550, column: 4, scope: !2583, inlinedAt: !2317)
!2586 = !DILocation(line: 553, column: 33, scope: !2312, inlinedAt: !2317)
!2587 = !DILocation(line: 325, column: 6, scope: !2588, inlinedAt: !2331)
!2588 = distinct !DILexicalBlock(scope: !2327, file: !60, line: 325, column: 6)
!2589 = !DILocation(line: 325, column: 6, scope: !2327, inlinedAt: !2331)
!2590 = !DILocation(line: 326, column: 3, scope: !2588, inlinedAt: !2331)
!2591 = !DILocation(line: 332, column: 9, scope: !2327, inlinedAt: !2331)
!2592 = !DILocation(line: 332, column: 15, scope: !2327, inlinedAt: !2331)
!2593 = !DILocation(line: 332, column: 2, scope: !2327, inlinedAt: !2331)
!2594 = !DILocation(line: 336, column: 1, scope: !2327, inlinedAt: !2331)
!2595 = !DILocation(line: 553, column: 5, scope: !2312, inlinedAt: !2317)
!2596 = !DILocation(line: 553, column: 41, scope: !2312, inlinedAt: !2317)
!2597 = !DILocation(line: 554, column: 5, scope: !2312, inlinedAt: !2317)
!2598 = !DILocation(line: 554, column: 12, scope: !2312, inlinedAt: !2317)
!2599 = !DILocation(line: 448, column: 31, scope: !2307, inlinedAt: !2311)
!2600 = !DILocation(line: 448, column: 34, scope: !2307, inlinedAt: !2311)
!2601 = !DILocation(line: 448, column: 14, scope: !2307, inlinedAt: !2311)
!2602 = !DILocation(line: 450, column: 22, scope: !2307, inlinedAt: !2311)
!2603 = !DILocation(line: 450, column: 25, scope: !2307, inlinedAt: !2311)
!2604 = !DILocation(line: 450, column: 30, scope: !2307, inlinedAt: !2311)
!2605 = !DILocation(line: 450, column: 36, scope: !2307, inlinedAt: !2311)
!2606 = !DILocation(line: 450, column: 8, scope: !2307, inlinedAt: !2311)
!2607 = !DILocation(line: 450, column: 6, scope: !2307, inlinedAt: !2311)
!2608 = !DILocation(line: 451, column: 9, scope: !2307, inlinedAt: !2311)
!2609 = !DILocation(line: 552, column: 3, scope: !2312, inlinedAt: !2317)
!2610 = !DILocation(line: 557, column: 19, scope: !2314, inlinedAt: !2317)
!2611 = !DILocation(line: 557, column: 25, scope: !2314, inlinedAt: !2317)
!2612 = !DILocation(line: 557, column: 9, scope: !2314, inlinedAt: !2317)
!2613 = !DILocation(line: 557, column: 2, scope: !2314, inlinedAt: !2317)
!2614 = !DILocation(line: 558, column: 1, scope: !2314, inlinedAt: !2317)
!2615 = !DILocation(line: 260, column: 11, scope: !2318)
!2616 = !DILocation(line: 261, column: 8, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 261, column: 7)
!2618 = !DILocation(line: 261, column: 7, scope: !2318)
!2619 = !DILocation(line: 262, column: 4, scope: !2617)
!2620 = !DILocation(line: 263, column: 18, scope: !2318)
!2621 = !DILocation(line: 263, column: 3, scope: !2318)
!2622 = !DILocation(line: 263, column: 8, scope: !2318)
!2623 = !DILocation(line: 263, column: 16, scope: !2318)
!2624 = !DILocation(line: 266, column: 6, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 266, column: 6)
!2626 = !DILocation(line: 266, column: 11, scope: !2625)
!2627 = !DILocation(line: 266, column: 16, scope: !2625)
!2628 = !DILocation(line: 266, column: 6, scope: !2303)
!2629 = !DILocation(line: 267, column: 10, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 266, column: 36)
!2631 = !DILocation(line: 267, column: 15, scope: !2630)
!2632 = !DILocation(line: 267, column: 22, scope: !2630)
!2633 = !DILocation(line: 267, column: 8, scope: !2630)
!2634 = !DILocation(line: 268, column: 35, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 268, column: 7)
!2636 = !DILocation(line: 268, column: 44, scope: !2635)
!2637 = !DILocation(line: 268, column: 53, scope: !2635)
!2638 = !DILocation(line: 268, column: 8, scope: !2635)
!2639 = !DILocation(line: 268, column: 7, scope: !2630)
!2640 = !DILocation(line: 269, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 269, column: 8)
!2642 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 268, column: 60)
!2643 = !DILocation(line: 269, column: 14, scope: !2641)
!2644 = !DILocation(line: 269, column: 8, scope: !2642)
!2645 = !DILocation(line: 270, column: 11, scope: !2641)
!2646 = !DILocation(line: 270, column: 16, scope: !2641)
!2647 = !DILocation(line: 270, column: 5, scope: !2641)
!2648 = !DILocation(line: 271, column: 4, scope: !2642)
!2649 = !DILocation(line: 273, column: 2, scope: !2630)
!2650 = !DILocation(line: 274, column: 10, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 273, column: 9)
!2652 = !DILocation(line: 274, column: 19, scope: !2651)
!2653 = !DILocation(line: 274, column: 28, scope: !2651)
!2654 = !DILocation(line: 274, column: 33, scope: !2651)
!2655 = !DILocation(line: 274, column: 3, scope: !2651)
!2656 = !DILocation(line: 277, column: 16, scope: !2303)
!2657 = !DILocation(line: 277, column: 21, scope: !2303)
!2658 = !DILocation(line: 277, column: 2, scope: !2303)
!2659 = !DILocation(line: 277, column: 7, scope: !2303)
!2660 = !DILocation(line: 277, column: 14, scope: !2303)
!2661 = !DILocation(line: 278, column: 14, scope: !2303)
!2662 = !DILocation(line: 278, column: 19, scope: !2303)
!2663 = !DILocation(line: 278, column: 2, scope: !2303)
!2664 = !DILocation(line: 278, column: 7, scope: !2303)
!2665 = !DILocation(line: 278, column: 12, scope: !2303)
!2666 = !DILocation(line: 279, column: 22, scope: !2303)
!2667 = !DILocation(line: 279, column: 27, scope: !2303)
!2668 = !DILocation(line: 279, column: 14, scope: !2303)
!2669 = !DILocation(line: 279, column: 2, scope: !2303)
!2670 = !DILocation(line: 279, column: 7, scope: !2303)
!2671 = !DILocation(line: 279, column: 12, scope: !2303)
!2672 = !DILocation(line: 280, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 280, column: 6)
!2674 = !DILocation(line: 280, column: 12, scope: !2673)
!2675 = !DILocation(line: 280, column: 6, scope: !2303)
!2676 = !DILocation(line: 281, column: 28, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 280, column: 18)
!2678 = !DILocation(line: 281, column: 3, scope: !2677)
!2679 = !DILocation(line: 282, column: 3, scope: !2677)
!2680 = !DILocation(line: 285, column: 2, scope: !2303)
!2681 = !DILocation(line: 286, column: 1, scope: !2303)
!2682 = distinct !DISubprogram(name: "property_entry_free_data", scope: !3, file: !3, line: 199, type: !2683, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !2019}
!2685 = !DILocalVariable(name: "p", arg: 1, scope: !2682, file: !3, line: 199, type: !2019)
!2686 = !DILocation(line: 199, column: 67, scope: !2682)
!2687 = !DILocalVariable(name: "src_str", scope: !2682, file: !3, line: 201, type: !2688)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2690 = !DILocation(line: 201, column: 22, scope: !2682)
!2691 = !DILocalVariable(name: "i", scope: !2682, file: !3, line: 202, type: !204)
!2692 = !DILocation(line: 202, column: 9, scope: !2682)
!2693 = !DILocalVariable(name: "nval", scope: !2682, file: !3, line: 202, type: !204)
!2694 = !DILocation(line: 202, column: 12, scope: !2682)
!2695 = !DILocation(line: 204, column: 6, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 204, column: 6)
!2697 = !DILocation(line: 204, column: 9, scope: !2696)
!2698 = !DILocation(line: 204, column: 14, scope: !2696)
!2699 = !DILocation(line: 204, column: 6, scope: !2682)
!2700 = !DILocation(line: 205, column: 34, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 204, column: 34)
!2702 = !DILocation(line: 205, column: 13, scope: !2701)
!2703 = !DILocation(line: 205, column: 11, scope: !2701)
!2704 = !DILocation(line: 206, column: 10, scope: !2701)
!2705 = !DILocation(line: 206, column: 13, scope: !2701)
!2706 = !DILocation(line: 206, column: 20, scope: !2701)
!2707 = !DILocation(line: 206, column: 8, scope: !2701)
!2708 = !DILocation(line: 207, column: 10, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 207, column: 3)
!2710 = !DILocation(line: 207, column: 8, scope: !2709)
!2711 = !DILocation(line: 207, column: 15, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 207, column: 3)
!2713 = !DILocation(line: 207, column: 19, scope: !2712)
!2714 = !DILocation(line: 207, column: 17, scope: !2712)
!2715 = !DILocation(line: 207, column: 3, scope: !2709)
!2716 = !DILocation(line: 208, column: 10, scope: !2712)
!2717 = !DILocation(line: 208, column: 18, scope: !2712)
!2718 = !DILocation(line: 208, column: 4, scope: !2712)
!2719 = !DILocation(line: 207, column: 26, scope: !2712)
!2720 = !DILocation(line: 207, column: 3, scope: !2712)
!2721 = distinct !{!2721, !2715, !2722}
!2722 = !DILocation(line: 208, column: 20, scope: !2709)
!2723 = !DILocation(line: 209, column: 2, scope: !2701)
!2724 = !DILocation(line: 211, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 211, column: 6)
!2726 = !DILocation(line: 211, column: 10, scope: !2725)
!2727 = !DILocation(line: 211, column: 6, scope: !2682)
!2728 = !DILocation(line: 212, column: 9, scope: !2725)
!2729 = !DILocation(line: 212, column: 12, scope: !2725)
!2730 = !DILocation(line: 212, column: 3, scope: !2725)
!2731 = !DILocation(line: 214, column: 8, scope: !2682)
!2732 = !DILocation(line: 214, column: 11, scope: !2682)
!2733 = !DILocation(line: 214, column: 2, scope: !2682)
!2734 = !DILocation(line: 215, column: 1, scope: !2682)
!2735 = distinct !DISubprogram(name: "property_entries_free", scope: !3, file: !3, line: 333, type: !2683, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2736 = !DILocalVariable(name: "properties", arg: 1, scope: !2735, file: !3, line: 333, type: !2019)
!2737 = !DILocation(line: 333, column: 57, scope: !2735)
!2738 = !DILocalVariable(name: "p", scope: !2735, file: !3, line: 335, type: !2019)
!2739 = !DILocation(line: 335, column: 31, scope: !2735)
!2740 = !DILocation(line: 337, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 337, column: 6)
!2742 = !DILocation(line: 337, column: 6, scope: !2735)
!2743 = !DILocation(line: 338, column: 3, scope: !2741)
!2744 = !DILocation(line: 340, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 340, column: 2)
!2746 = !DILocation(line: 340, column: 9, scope: !2745)
!2747 = !DILocation(line: 340, column: 7, scope: !2745)
!2748 = !DILocation(line: 340, column: 23, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 340, column: 2)
!2750 = !DILocation(line: 340, column: 26, scope: !2749)
!2751 = !DILocation(line: 340, column: 2, scope: !2745)
!2752 = !DILocation(line: 341, column: 28, scope: !2749)
!2753 = !DILocation(line: 341, column: 3, scope: !2749)
!2754 = !DILocation(line: 340, column: 33, scope: !2749)
!2755 = !DILocation(line: 340, column: 2, scope: !2749)
!2756 = distinct !{!2756, !2751, !2757}
!2757 = !DILocation(line: 341, column: 29, scope: !2745)
!2758 = !DILocation(line: 343, column: 8, scope: !2735)
!2759 = !DILocation(line: 343, column: 2, scope: !2735)
!2760 = !DILocation(line: 344, column: 1, scope: !2735)
!2761 = distinct !DISubprogram(name: "software_node_find_by_name", scope: !3, file: !3, line: 566, type: !2762, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!2012, !2012, !98}
!2764 = !DILocation(line: 392, column: 53, scope: !2137, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 586, column: 2, scope: !2761)
!2766 = !DILocation(line: 352, column: 51, scope: !2145, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 574, column: 2, scope: !2761)
!2768 = !DILocalVariable(name: "parent", arg: 1, scope: !2761, file: !3, line: 566, type: !2012)
!2769 = !DILocation(line: 566, column: 56, scope: !2761)
!2770 = !DILocalVariable(name: "name", arg: 2, scope: !2761, file: !3, line: 566, type: !98)
!2771 = !DILocation(line: 566, column: 76, scope: !2761)
!2772 = !DILocalVariable(name: "swnode", scope: !2761, file: !3, line: 568, type: !89)
!2773 = !DILocation(line: 568, column: 17, scope: !2761)
!2774 = !DILocalVariable(name: "k", scope: !2761, file: !3, line: 569, type: !109)
!2775 = !DILocation(line: 569, column: 18, scope: !2761)
!2776 = !DILocation(line: 571, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 571, column: 6)
!2778 = !DILocation(line: 571, column: 6, scope: !2761)
!2779 = !DILocation(line: 572, column: 3, scope: !2777)
!2780 = !DILocation(line: 574, column: 13, scope: !2761)
!2781 = !DILocation(line: 574, column: 26, scope: !2761)
!2782 = !DILocation(line: 354, column: 2, scope: !2161, inlinedAt: !2767)
!2783 = !DILocation(line: 354, column: 2, scope: !2164, inlinedAt: !2767)
!2784 = !DILocalVariable(name: "__mptr", scope: !2785, file: !3, line: 576, type: !88)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 576, column: 2)
!2786 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 576, column: 2)
!2787 = !DILocation(line: 576, column: 2, scope: !2785)
!2788 = !DILocation(line: 576, column: 2, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 576, column: 2)
!2790 = !DILocation(line: 576, column: 2, scope: !2786)
!2791 = !DILocation(line: 576, column: 2, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 576, column: 2)
!2793 = !DILocalVariable(name: "__mptr", scope: !2794, file: !3, line: 577, type: !88)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 577, column: 12)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 576, column: 52)
!2796 = !DILocation(line: 577, column: 12, scope: !2794)
!2797 = !DILocation(line: 577, column: 12, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 577, column: 12)
!2799 = !DILocation(line: 577, column: 10, scope: !2795)
!2800 = !DILocation(line: 578, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2795, file: !3, line: 578, column: 7)
!2802 = !DILocation(line: 578, column: 17, scope: !2801)
!2803 = !DILocation(line: 578, column: 25, scope: !2801)
!2804 = !DILocation(line: 578, column: 31, scope: !2801)
!2805 = !DILocation(line: 578, column: 14, scope: !2801)
!2806 = !DILocation(line: 578, column: 38, scope: !2801)
!2807 = !DILocation(line: 578, column: 41, scope: !2801)
!2808 = !DILocation(line: 578, column: 49, scope: !2801)
!2809 = !DILocation(line: 578, column: 55, scope: !2801)
!2810 = !DILocation(line: 578, column: 60, scope: !2801)
!2811 = !DILocation(line: 579, column: 15, scope: !2801)
!2812 = !DILocation(line: 579, column: 21, scope: !2801)
!2813 = !DILocation(line: 579, column: 29, scope: !2801)
!2814 = !DILocation(line: 579, column: 35, scope: !2801)
!2815 = !DILocation(line: 579, column: 8, scope: !2801)
!2816 = !DILocation(line: 578, column: 7, scope: !2795)
!2817 = !DILocation(line: 580, column: 17, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 579, column: 42)
!2819 = !DILocation(line: 580, column: 25, scope: !2818)
!2820 = !DILocation(line: 580, column: 4, scope: !2818)
!2821 = !DILocation(line: 581, column: 4, scope: !2818)
!2822 = !DILocation(line: 583, column: 10, scope: !2795)
!2823 = !DILocation(line: 584, column: 2, scope: !2795)
!2824 = !DILocalVariable(name: "__mptr", scope: !2825, file: !3, line: 576, type: !88)
!2825 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 576, column: 2)
!2826 = !DILocation(line: 576, column: 2, scope: !2825)
!2827 = !DILocation(line: 576, column: 2, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 576, column: 2)
!2829 = distinct !{!2829, !2790, !2830}
!2830 = !DILocation(line: 584, column: 2, scope: !2786)
!2831 = !DILocation(line: 586, column: 15, scope: !2761)
!2832 = !DILocation(line: 586, column: 28, scope: !2761)
!2833 = !DILocation(line: 394, column: 2, scope: !2200, inlinedAt: !2765)
!2834 = !DILocation(line: 394, column: 2, scope: !2203, inlinedAt: !2765)
!2835 = !DILocation(line: 588, column: 9, scope: !2761)
!2836 = !DILocation(line: 588, column: 18, scope: !2761)
!2837 = !DILocation(line: 588, column: 26, scope: !2761)
!2838 = !DILocation(line: 588, column: 2, scope: !2761)
!2839 = !DILocation(line: 589, column: 1, scope: !2761)
!2840 = distinct !DISubprogram(name: "software_node_register_nodes", scope: !3, file: !3, line: 693, type: !2841, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!93, !2012}
!2843 = !DILocalVariable(name: "nodes", arg: 1, scope: !2840, file: !3, line: 693, type: !2012)
!2844 = !DILocation(line: 693, column: 62, scope: !2840)
!2845 = !DILocalVariable(name: "ret", scope: !2840, file: !3, line: 695, type: !93)
!2846 = !DILocation(line: 695, column: 6, scope: !2840)
!2847 = !DILocalVariable(name: "i", scope: !2840, file: !3, line: 696, type: !93)
!2848 = !DILocation(line: 696, column: 6, scope: !2840)
!2849 = !DILocation(line: 698, column: 9, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 698, column: 2)
!2851 = !DILocation(line: 698, column: 7, scope: !2850)
!2852 = !DILocation(line: 698, column: 14, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 698, column: 2)
!2854 = !DILocation(line: 698, column: 20, scope: !2853)
!2855 = !DILocation(line: 698, column: 23, scope: !2853)
!2856 = !DILocation(line: 698, column: 2, scope: !2850)
!2857 = !DILocation(line: 699, column: 33, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 698, column: 34)
!2859 = !DILocation(line: 699, column: 39, scope: !2858)
!2860 = !DILocation(line: 699, column: 9, scope: !2858)
!2861 = !DILocation(line: 699, column: 7, scope: !2858)
!2862 = !DILocation(line: 700, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 700, column: 7)
!2864 = !DILocation(line: 700, column: 7, scope: !2858)
!2865 = !DILocation(line: 701, column: 35, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 700, column: 12)
!2867 = !DILocation(line: 701, column: 4, scope: !2866)
!2868 = !DILocation(line: 702, column: 11, scope: !2866)
!2869 = !DILocation(line: 702, column: 4, scope: !2866)
!2870 = !DILocation(line: 704, column: 2, scope: !2858)
!2871 = !DILocation(line: 698, column: 30, scope: !2853)
!2872 = !DILocation(line: 698, column: 2, scope: !2853)
!2873 = distinct !{!2873, !2856, !2874}
!2874 = !DILocation(line: 704, column: 2, scope: !2850)
!2875 = !DILocation(line: 706, column: 2, scope: !2840)
!2876 = !DILocation(line: 707, column: 1, scope: !2840)
!2877 = distinct !DISubprogram(name: "software_node_register", scope: !3, file: !3, line: 778, type: !2841, scopeLine: 779, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2878 = !DILocalVariable(name: "node", arg: 1, scope: !2877, file: !3, line: 778, type: !2012)
!2879 = !DILocation(line: 778, column: 56, scope: !2877)
!2880 = !DILocalVariable(name: "parent", scope: !2877, file: !3, line: 780, type: !89)
!2881 = !DILocation(line: 780, column: 17, scope: !2877)
!2882 = !DILocation(line: 780, column: 50, scope: !2877)
!2883 = !DILocation(line: 780, column: 56, scope: !2877)
!2884 = !DILocation(line: 780, column: 26, scope: !2877)
!2885 = !DILocation(line: 782, column: 30, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 782, column: 6)
!2887 = !DILocation(line: 782, column: 6, scope: !2886)
!2888 = !DILocation(line: 782, column: 6, scope: !2877)
!2889 = !DILocation(line: 783, column: 3, scope: !2886)
!2890 = !DILocation(line: 785, column: 41, scope: !2877)
!2891 = !DILocation(line: 785, column: 47, scope: !2877)
!2892 = !DILocation(line: 785, column: 25, scope: !2877)
!2893 = !DILocation(line: 785, column: 9, scope: !2877)
!2894 = !DILocation(line: 785, column: 2, scope: !2877)
!2895 = !DILocation(line: 786, column: 1, scope: !2877)
!2896 = distinct !DISubprogram(name: "software_node_unregister_nodes", scope: !3, file: !3, line: 721, type: !2897, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2012}
!2899 = !DILocalVariable(name: "nodes", arg: 1, scope: !2896, file: !3, line: 721, type: !2012)
!2900 = !DILocation(line: 721, column: 65, scope: !2896)
!2901 = !DILocalVariable(name: "i", scope: !2896, file: !3, line: 723, type: !93)
!2902 = !DILocation(line: 723, column: 6, scope: !2896)
!2903 = !DILocation(line: 725, column: 9, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 725, column: 2)
!2905 = !DILocation(line: 725, column: 7, scope: !2904)
!2906 = !DILocation(line: 725, column: 14, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 725, column: 2)
!2908 = !DILocation(line: 725, column: 20, scope: !2907)
!2909 = !DILocation(line: 725, column: 23, scope: !2907)
!2910 = !DILocation(line: 725, column: 2, scope: !2904)
!2911 = !DILocation(line: 726, column: 29, scope: !2907)
!2912 = !DILocation(line: 726, column: 35, scope: !2907)
!2913 = !DILocation(line: 726, column: 3, scope: !2907)
!2914 = !DILocation(line: 725, column: 30, scope: !2907)
!2915 = !DILocation(line: 725, column: 2, scope: !2907)
!2916 = distinct !{!2916, !2910, !2917}
!2917 = !DILocation(line: 726, column: 37, scope: !2904)
!2918 = !DILocation(line: 727, column: 1, scope: !2896)
!2919 = distinct !DISubprogram(name: "software_node_unregister", scope: !3, file: !3, line: 793, type: !2897, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2920 = !DILocalVariable(name: "node", arg: 1, scope: !2919, file: !3, line: 793, type: !2012)
!2921 = !DILocation(line: 793, column: 59, scope: !2919)
!2922 = !DILocalVariable(name: "swnode", scope: !2919, file: !3, line: 795, type: !89)
!2923 = !DILocation(line: 795, column: 17, scope: !2919)
!2924 = !DILocation(line: 797, column: 35, scope: !2919)
!2925 = !DILocation(line: 797, column: 11, scope: !2919)
!2926 = !DILocation(line: 797, column: 9, scope: !2919)
!2927 = !DILocation(line: 798, column: 6, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 798, column: 6)
!2929 = !DILocation(line: 798, column: 6, scope: !2919)
!2930 = !DILocation(line: 799, column: 32, scope: !2928)
!2931 = !DILocation(line: 799, column: 40, scope: !2928)
!2932 = !DILocation(line: 799, column: 3, scope: !2928)
!2933 = !DILocation(line: 800, column: 1, scope: !2919)
!2934 = distinct !DISubprogram(name: "software_node_register_node_group", scope: !3, file: !3, line: 736, type: !2935, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!93, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2938 = !DILocalVariable(name: "node_group", arg: 1, scope: !2934, file: !3, line: 736, type: !2937)
!2939 = !DILocation(line: 736, column: 68, scope: !2934)
!2940 = !DILocalVariable(name: "i", scope: !2934, file: !3, line: 738, type: !7)
!2941 = !DILocation(line: 738, column: 15, scope: !2934)
!2942 = !DILocalVariable(name: "ret", scope: !2934, file: !3, line: 739, type: !93)
!2943 = !DILocation(line: 739, column: 6, scope: !2934)
!2944 = !DILocation(line: 741, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 741, column: 6)
!2946 = !DILocation(line: 741, column: 6, scope: !2934)
!2947 = !DILocation(line: 742, column: 3, scope: !2945)
!2948 = !DILocation(line: 744, column: 9, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 744, column: 2)
!2950 = !DILocation(line: 744, column: 7, scope: !2949)
!2951 = !DILocation(line: 744, column: 14, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 744, column: 2)
!2953 = !DILocation(line: 744, column: 25, scope: !2952)
!2954 = !DILocation(line: 744, column: 2, scope: !2949)
!2955 = !DILocation(line: 745, column: 32, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 744, column: 34)
!2957 = !DILocation(line: 745, column: 43, scope: !2956)
!2958 = !DILocation(line: 745, column: 9, scope: !2956)
!2959 = !DILocation(line: 745, column: 7, scope: !2956)
!2960 = !DILocation(line: 746, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 746, column: 7)
!2962 = !DILocation(line: 746, column: 7, scope: !2956)
!2963 = !DILocation(line: 747, column: 40, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 746, column: 12)
!2965 = !DILocation(line: 747, column: 4, scope: !2964)
!2966 = !DILocation(line: 748, column: 11, scope: !2964)
!2967 = !DILocation(line: 748, column: 4, scope: !2964)
!2968 = !DILocation(line: 750, column: 2, scope: !2956)
!2969 = !DILocation(line: 744, column: 30, scope: !2952)
!2970 = !DILocation(line: 744, column: 2, scope: !2952)
!2971 = distinct !{!2971, !2954, !2972}
!2972 = !DILocation(line: 750, column: 2, scope: !2949)
!2973 = !DILocation(line: 752, column: 2, scope: !2934)
!2974 = !DILocation(line: 753, column: 1, scope: !2934)
!2975 = distinct !DISubprogram(name: "software_node_unregister_node_group", scope: !3, file: !3, line: 762, type: !2976, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !2937}
!2978 = !DILocalVariable(name: "node_group", arg: 1, scope: !2975, file: !3, line: 762, type: !2937)
!2979 = !DILocation(line: 762, column: 71, scope: !2975)
!2980 = !DILocalVariable(name: "i", scope: !2975, file: !3, line: 764, type: !7)
!2981 = !DILocation(line: 764, column: 15, scope: !2975)
!2982 = !DILocation(line: 766, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 766, column: 6)
!2984 = !DILocation(line: 766, column: 6, scope: !2975)
!2985 = !DILocation(line: 767, column: 3, scope: !2983)
!2986 = !DILocation(line: 769, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 769, column: 2)
!2988 = !DILocation(line: 769, column: 7, scope: !2987)
!2989 = !DILocation(line: 769, column: 14, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 769, column: 2)
!2991 = !DILocation(line: 769, column: 25, scope: !2990)
!2992 = !DILocation(line: 769, column: 2, scope: !2987)
!2993 = !DILocation(line: 770, column: 28, scope: !2990)
!2994 = !DILocation(line: 770, column: 39, scope: !2990)
!2995 = !DILocation(line: 770, column: 3, scope: !2990)
!2996 = !DILocation(line: 769, column: 30, scope: !2990)
!2997 = !DILocation(line: 769, column: 2, scope: !2990)
!2998 = distinct !{!2998, !2992, !2999}
!2999 = !DILocation(line: 770, column: 41, scope: !2987)
!3000 = !DILocation(line: 771, column: 1, scope: !2975)
!3001 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !2090, file: !2090, line: 57, type: !3002, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!93, !1375}
!3004 = !DILocalVariable(name: "ptr", arg: 1, scope: !3001, file: !2090, line: 57, type: !1375)
!3005 = !DILocation(line: 57, column: 68, scope: !3001)
!3006 = !DILocation(line: 59, column: 13, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3001, file: !2090, line: 59, column: 6)
!3008 = !DILocation(line: 59, column: 6, scope: !3007)
!3009 = !DILocation(line: 59, column: 6, scope: !3001)
!3010 = !DILocation(line: 60, column: 18, scope: !3007)
!3011 = !DILocation(line: 60, column: 10, scope: !3007)
!3012 = !DILocation(line: 60, column: 3, scope: !3007)
!3013 = !DILocation(line: 62, column: 3, scope: !3007)
!3014 = !DILocation(line: 63, column: 1, scope: !3001)
!3015 = distinct !DISubprogram(name: "swnode_register", scope: !3, file: !3, line: 632, type: !3016, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!1576, !2012, !89, !7}
!3018 = !DILocalVariable(name: "node", arg: 1, scope: !3015, file: !3, line: 632, type: !2012)
!3019 = !DILocation(line: 632, column: 45, scope: !3015)
!3020 = !DILocalVariable(name: "parent", arg: 2, scope: !3015, file: !3, line: 632, type: !89)
!3021 = !DILocation(line: 632, column: 66, scope: !3015)
!3022 = !DILocalVariable(name: "allocated", arg: 3, scope: !3015, file: !3, line: 633, type: !7)
!3023 = !DILocation(line: 633, column: 16, scope: !3015)
!3024 = !DILocalVariable(name: "swnode", scope: !3015, file: !3, line: 635, type: !89)
!3025 = !DILocation(line: 635, column: 17, scope: !3015)
!3026 = !DILocalVariable(name: "ret", scope: !3015, file: !3, line: 636, type: !93)
!3027 = !DILocation(line: 636, column: 6, scope: !3015)
!3028 = !DILocation(line: 638, column: 11, scope: !3015)
!3029 = !DILocation(line: 638, column: 9, scope: !3015)
!3030 = !DILocation(line: 639, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 639, column: 6)
!3032 = !DILocation(line: 639, column: 6, scope: !3015)
!3033 = !DILocation(line: 640, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 639, column: 15)
!3035 = !DILocation(line: 641, column: 3, scope: !3034)
!3036 = !DILocation(line: 644, column: 8, scope: !3015)
!3037 = !DILocation(line: 644, column: 6, scope: !3015)
!3038 = !DILocation(line: 646, column: 6, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 646, column: 6)
!3040 = !DILocation(line: 646, column: 10, scope: !3039)
!3041 = !DILocation(line: 646, column: 6, scope: !3015)
!3042 = !DILocation(line: 647, column: 9, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 646, column: 15)
!3044 = !DILocation(line: 647, column: 3, scope: !3043)
!3045 = !DILocation(line: 648, column: 3, scope: !3043)
!3046 = !DILocation(line: 651, column: 15, scope: !3015)
!3047 = !DILocation(line: 651, column: 2, scope: !3015)
!3048 = !DILocation(line: 651, column: 10, scope: !3015)
!3049 = !DILocation(line: 651, column: 13, scope: !3015)
!3050 = !DILocation(line: 652, column: 17, scope: !3015)
!3051 = !DILocation(line: 652, column: 2, scope: !3015)
!3052 = !DILocation(line: 652, column: 10, scope: !3015)
!3053 = !DILocation(line: 652, column: 15, scope: !3015)
!3054 = !DILocation(line: 653, column: 19, scope: !3015)
!3055 = !DILocation(line: 653, column: 2, scope: !3015)
!3056 = !DILocation(line: 653, column: 10, scope: !3015)
!3057 = !DILocation(line: 653, column: 17, scope: !3015)
!3058 = !DILocation(line: 654, column: 22, scope: !3015)
!3059 = !DILocation(line: 654, column: 2, scope: !3015)
!3060 = !DILocation(line: 654, column: 10, scope: !3015)
!3061 = !DILocation(line: 654, column: 20, scope: !3015)
!3062 = !DILocation(line: 655, column: 22, scope: !3015)
!3063 = !DILocation(line: 655, column: 2, scope: !3015)
!3064 = !DILocation(line: 655, column: 10, scope: !3015)
!3065 = !DILocation(line: 655, column: 15, scope: !3015)
!3066 = !DILocation(line: 655, column: 20, scope: !3015)
!3067 = !DILocation(line: 656, column: 2, scope: !3015)
!3068 = !DILocation(line: 656, column: 10, scope: !3015)
!3069 = !DILocation(line: 656, column: 17, scope: !3015)
!3070 = !DILocation(line: 656, column: 21, scope: !3015)
!3071 = !DILocation(line: 658, column: 12, scope: !3015)
!3072 = !DILocation(line: 658, column: 20, scope: !3015)
!3073 = !DILocation(line: 658, column: 2, scope: !3015)
!3074 = !DILocation(line: 659, column: 18, scope: !3015)
!3075 = !DILocation(line: 659, column: 26, scope: !3015)
!3076 = !DILocation(line: 659, column: 2, scope: !3015)
!3077 = !DILocation(line: 660, column: 18, scope: !3015)
!3078 = !DILocation(line: 660, column: 26, scope: !3015)
!3079 = !DILocation(line: 660, column: 2, scope: !3015)
!3080 = !DILocation(line: 662, column: 6, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 662, column: 6)
!3082 = !DILocation(line: 662, column: 12, scope: !3081)
!3083 = !DILocation(line: 662, column: 6, scope: !3015)
!3084 = !DILocation(line: 663, column: 31, scope: !3081)
!3085 = !DILocation(line: 663, column: 39, scope: !3081)
!3086 = !DILocation(line: 664, column: 9, scope: !3081)
!3087 = !DILocation(line: 664, column: 19, scope: !3081)
!3088 = !DILocation(line: 664, column: 27, scope: !3081)
!3089 = !DILocation(line: 665, column: 15, scope: !3081)
!3090 = !DILocation(line: 665, column: 21, scope: !3081)
!3091 = !DILocation(line: 663, column: 9, scope: !3081)
!3092 = !DILocation(line: 663, column: 7, scope: !3081)
!3093 = !DILocation(line: 663, column: 3, scope: !3081)
!3094 = !DILocation(line: 667, column: 31, scope: !3081)
!3095 = !DILocation(line: 667, column: 39, scope: !3081)
!3096 = !DILocation(line: 668, column: 9, scope: !3081)
!3097 = !DILocation(line: 668, column: 19, scope: !3081)
!3098 = !DILocation(line: 668, column: 27, scope: !3081)
!3099 = !DILocation(line: 669, column: 19, scope: !3081)
!3100 = !DILocation(line: 669, column: 27, scope: !3081)
!3101 = !DILocation(line: 667, column: 9, scope: !3081)
!3102 = !DILocation(line: 667, column: 7, scope: !3081)
!3103 = !DILocation(line: 670, column: 6, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 670, column: 6)
!3105 = !DILocation(line: 670, column: 6, scope: !3015)
!3106 = !DILocation(line: 671, column: 16, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 670, column: 11)
!3108 = !DILocation(line: 671, column: 24, scope: !3107)
!3109 = !DILocation(line: 671, column: 3, scope: !3107)
!3110 = !DILocation(line: 672, column: 18, scope: !3107)
!3111 = !DILocation(line: 672, column: 10, scope: !3107)
!3112 = !DILocation(line: 672, column: 3, scope: !3107)
!3113 = !DILocation(line: 675, column: 6, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 675, column: 6)
!3115 = !DILocation(line: 675, column: 6, scope: !3015)
!3116 = !DILocation(line: 676, column: 18, scope: !3114)
!3117 = !DILocation(line: 676, column: 26, scope: !3114)
!3118 = !DILocation(line: 676, column: 34, scope: !3114)
!3119 = !DILocation(line: 676, column: 42, scope: !3114)
!3120 = !DILocation(line: 676, column: 3, scope: !3114)
!3121 = !DILocation(line: 678, column: 18, scope: !3015)
!3122 = !DILocation(line: 678, column: 26, scope: !3015)
!3123 = !DILocation(line: 678, column: 2, scope: !3015)
!3124 = !DILocation(line: 679, column: 10, scope: !3015)
!3125 = !DILocation(line: 679, column: 18, scope: !3015)
!3126 = !DILocation(line: 679, column: 2, scope: !3015)
!3127 = !DILabel(scope: !3015, name: "out_err", file: !3, line: 681)
!3128 = !DILocation(line: 681, column: 1, scope: !3015)
!3129 = !DILocation(line: 682, column: 6, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 682, column: 6)
!3131 = !DILocation(line: 682, column: 6, scope: !3015)
!3132 = !DILocation(line: 683, column: 25, scope: !3130)
!3133 = !DILocation(line: 683, column: 31, scope: !3130)
!3134 = !DILocation(line: 683, column: 3, scope: !3130)
!3135 = !DILocation(line: 684, column: 17, scope: !3015)
!3136 = !DILocation(line: 684, column: 9, scope: !3015)
!3137 = !DILocation(line: 684, column: 2, scope: !3015)
!3138 = !DILocation(line: 685, column: 1, scope: !3015)
!3139 = distinct !DISubprogram(name: "fwnode_remove_software_node", scope: !3, file: !3, line: 835, type: !1588, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3140 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3139, file: !3, line: 835, type: !1576)
!3141 = !DILocation(line: 835, column: 56, scope: !3139)
!3142 = !DILocalVariable(name: "swnode", scope: !3139, file: !3, line: 837, type: !89)
!3143 = !DILocation(line: 837, column: 17, scope: !3139)
!3144 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3145, file: !3, line: 837, type: !1576)
!3145 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 837, column: 26)
!3146 = !DILocation(line: 837, column: 26, scope: !3145)
!3147 = !DILocalVariable(name: "__mptr", scope: !3148, file: !3, line: 837, type: !88)
!3148 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 837, column: 26)
!3149 = !DILocation(line: 837, column: 26, scope: !3148)
!3150 = !DILocation(line: 837, column: 26, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 837, column: 26)
!3152 = !DILocation(line: 839, column: 7, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 839, column: 6)
!3154 = !DILocation(line: 839, column: 6, scope: !3139)
!3155 = !DILocation(line: 840, column: 3, scope: !3153)
!3156 = !DILocation(line: 842, column: 15, scope: !3139)
!3157 = !DILocation(line: 842, column: 23, scope: !3139)
!3158 = !DILocation(line: 842, column: 2, scope: !3139)
!3159 = !DILocation(line: 843, column: 1, scope: !3139)
!3160 = distinct !DISubprogram(name: "fwnode_create_software_node", scope: !3, file: !3, line: 804, type: !3161, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!1576, !2019, !1594}
!3163 = !DILocalVariable(name: "properties", arg: 1, scope: !3160, file: !3, line: 804, type: !2019)
!3164 = !DILocation(line: 804, column: 58, scope: !3160)
!3165 = !DILocalVariable(name: "parent", arg: 2, scope: !3160, file: !3, line: 805, type: !1594)
!3166 = !DILocation(line: 805, column: 36, scope: !3160)
!3167 = !DILocalVariable(name: "node", scope: !3160, file: !3, line: 807, type: !3168)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!3169 = !DILocation(line: 807, column: 24, scope: !3160)
!3170 = !DILocalVariable(name: "p", scope: !3160, file: !3, line: 808, type: !89)
!3171 = !DILocation(line: 808, column: 17, scope: !3160)
!3172 = !DILocalVariable(name: "ret", scope: !3160, file: !3, line: 809, type: !93)
!3173 = !DILocation(line: 809, column: 6, scope: !3160)
!3174 = !DILocation(line: 811, column: 6, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 811, column: 6)
!3176 = !DILocation(line: 811, column: 6, scope: !3160)
!3177 = !DILocation(line: 812, column: 14, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 812, column: 7)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 811, column: 14)
!3180 = !DILocation(line: 812, column: 7, scope: !3178)
!3181 = !DILocation(line: 812, column: 7, scope: !3179)
!3182 = !DILocation(line: 813, column: 20, scope: !3178)
!3183 = !DILocation(line: 813, column: 11, scope: !3178)
!3184 = !DILocation(line: 813, column: 4, scope: !3178)
!3185 = !DILocation(line: 814, column: 25, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 814, column: 7)
!3187 = !DILocation(line: 814, column: 8, scope: !3186)
!3188 = !DILocation(line: 814, column: 7, scope: !3179)
!3189 = !DILocation(line: 815, column: 11, scope: !3186)
!3190 = !DILocation(line: 815, column: 4, scope: !3186)
!3191 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3192, file: !3, line: 816, type: !1594)
!3192 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 816, column: 7)
!3193 = !DILocation(line: 816, column: 7, scope: !3192)
!3194 = !DILocalVariable(name: "__mptr", scope: !3195, file: !3, line: 816, type: !88)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 816, column: 7)
!3196 = !DILocation(line: 816, column: 7, scope: !3195)
!3197 = !DILocation(line: 816, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 816, column: 7)
!3199 = !DILocation(line: 816, column: 5, scope: !3179)
!3200 = !DILocation(line: 817, column: 2, scope: !3179)
!3201 = !DILocation(line: 819, column: 9, scope: !3160)
!3202 = !DILocation(line: 819, column: 7, scope: !3160)
!3203 = !DILocation(line: 820, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 820, column: 6)
!3205 = !DILocation(line: 820, column: 6, scope: !3160)
!3206 = !DILocation(line: 821, column: 10, scope: !3204)
!3207 = !DILocation(line: 821, column: 3, scope: !3204)
!3208 = !DILocation(line: 823, column: 42, scope: !3160)
!3209 = !DILocation(line: 823, column: 48, scope: !3160)
!3210 = !DILocation(line: 823, column: 8, scope: !3160)
!3211 = !DILocation(line: 823, column: 6, scope: !3160)
!3212 = !DILocation(line: 824, column: 6, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 824, column: 6)
!3214 = !DILocation(line: 824, column: 6, scope: !3160)
!3215 = !DILocation(line: 825, column: 9, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 824, column: 11)
!3217 = !DILocation(line: 825, column: 3, scope: !3216)
!3218 = !DILocation(line: 826, column: 18, scope: !3216)
!3219 = !DILocation(line: 826, column: 10, scope: !3216)
!3220 = !DILocation(line: 826, column: 3, scope: !3216)
!3221 = !DILocation(line: 829, column: 17, scope: !3160)
!3222 = !DILocation(line: 829, column: 21, scope: !3160)
!3223 = !DILocation(line: 829, column: 24, scope: !3160)
!3224 = !DILocation(line: 829, column: 2, scope: !3160)
!3225 = !DILocation(line: 829, column: 8, scope: !3160)
!3226 = !DILocation(line: 829, column: 15, scope: !3160)
!3227 = !DILocation(line: 831, column: 25, scope: !3160)
!3228 = !DILocation(line: 831, column: 31, scope: !3160)
!3229 = !DILocation(line: 831, column: 9, scope: !3160)
!3230 = !DILocation(line: 831, column: 2, scope: !3160)
!3231 = !DILocation(line: 832, column: 1, scope: !3160)
!3232 = distinct !DISubprogram(name: "IS_ERR", scope: !2090, file: !2090, line: 34, type: !2091, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3233 = !DILocalVariable(name: "ptr", arg: 1, scope: !3232, file: !2090, line: 34, type: !1375)
!3234 = !DILocation(line: 34, column: 60, scope: !3232)
!3235 = !DILocation(line: 36, column: 9, scope: !3232)
!3236 = !DILocation(line: 36, column: 2, scope: !3232)
!3237 = distinct !DISubprogram(name: "ERR_CAST", scope: !2090, file: !2090, line: 51, type: !3238, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!88, !1375}
!3240 = !DILocalVariable(name: "ptr", arg: 1, scope: !3237, file: !2090, line: 51, type: !1375)
!3241 = !DILocation(line: 51, column: 64, scope: !3237)
!3242 = !DILocation(line: 54, column: 18, scope: !3237)
!3243 = !DILocation(line: 54, column: 2, scope: !3237)
!3244 = distinct !DISubprogram(name: "kzalloc", scope: !60, file: !60, line: 662, type: !2315, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3245 = !DILocation(line: 445, column: 72, scope: !2307, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 552, column: 10, scope: !2312, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 664, column: 9, scope: !3244)
!3248 = !DILocation(line: 446, column: 9, scope: !2307, inlinedAt: !3246)
!3249 = !DILocation(line: 446, column: 23, scope: !2307, inlinedAt: !3246)
!3250 = !DILocation(line: 448, column: 8, scope: !2307, inlinedAt: !3246)
!3251 = !DILocation(line: 318, column: 67, scope: !2327, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 553, column: 20, scope: !2312, inlinedAt: !3247)
!3253 = !DILocation(line: 346, column: 58, scope: !2333, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 547, column: 11, scope: !2312, inlinedAt: !3247)
!3255 = !DILocation(line: 472, column: 28, scope: !2339, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 481, column: 9, scope: !2344, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 545, column: 11, scope: !2346, inlinedAt: !3247)
!3258 = !DILocation(line: 472, column: 40, scope: !2339, inlinedAt: !3256)
!3259 = !DILocation(line: 472, column: 60, scope: !2339, inlinedAt: !3256)
!3260 = !DILocation(line: 478, column: 51, scope: !2344, inlinedAt: !3257)
!3261 = !DILocation(line: 478, column: 63, scope: !2344, inlinedAt: !3257)
!3262 = !DILocation(line: 480, column: 15, scope: !2344, inlinedAt: !3257)
!3263 = !DILocation(line: 538, column: 45, scope: !2314, inlinedAt: !3247)
!3264 = !DILocation(line: 538, column: 57, scope: !2314, inlinedAt: !3247)
!3265 = !DILocation(line: 542, column: 16, scope: !2312, inlinedAt: !3247)
!3266 = !DILocalVariable(name: "size", arg: 1, scope: !3244, file: !60, line: 662, type: !204)
!3267 = !DILocation(line: 662, column: 36, scope: !3244)
!3268 = !DILocalVariable(name: "flags", arg: 2, scope: !3244, file: !60, line: 662, type: !1443)
!3269 = !DILocation(line: 662, column: 48, scope: !3244)
!3270 = !DILocation(line: 664, column: 17, scope: !3244)
!3271 = !DILocation(line: 664, column: 23, scope: !3244)
!3272 = !DILocation(line: 664, column: 29, scope: !3244)
!3273 = !DILocation(line: 540, column: 27, scope: !2313, inlinedAt: !3247)
!3274 = !DILocation(line: 540, column: 6, scope: !2313, inlinedAt: !3247)
!3275 = !DILocation(line: 540, column: 6, scope: !2314, inlinedAt: !3247)
!3276 = !DILocation(line: 544, column: 7, scope: !2346, inlinedAt: !3247)
!3277 = !DILocation(line: 544, column: 12, scope: !2346, inlinedAt: !3247)
!3278 = !DILocation(line: 544, column: 7, scope: !2312, inlinedAt: !3247)
!3279 = !DILocation(line: 545, column: 25, scope: !2346, inlinedAt: !3247)
!3280 = !DILocation(line: 545, column: 31, scope: !2346, inlinedAt: !3247)
!3281 = !DILocation(line: 480, column: 33, scope: !2344, inlinedAt: !3257)
!3282 = !DILocation(line: 480, column: 23, scope: !2344, inlinedAt: !3257)
!3283 = !DILocation(line: 481, column: 29, scope: !2344, inlinedAt: !3257)
!3284 = !DILocation(line: 481, column: 35, scope: !2344, inlinedAt: !3257)
!3285 = !DILocation(line: 481, column: 42, scope: !2344, inlinedAt: !3257)
!3286 = !DILocation(line: 474, column: 23, scope: !2339, inlinedAt: !3256)
!3287 = !DILocation(line: 474, column: 29, scope: !2339, inlinedAt: !3256)
!3288 = !DILocation(line: 474, column: 36, scope: !2339, inlinedAt: !3256)
!3289 = !DILocation(line: 474, column: 9, scope: !2339, inlinedAt: !3256)
!3290 = !DILocation(line: 545, column: 4, scope: !2346, inlinedAt: !3247)
!3291 = !DILocation(line: 547, column: 25, scope: !2312, inlinedAt: !3247)
!3292 = !DILocation(line: 348, column: 7, scope: !2427, inlinedAt: !3254)
!3293 = !DILocation(line: 348, column: 6, scope: !2333, inlinedAt: !3254)
!3294 = !DILocation(line: 349, column: 3, scope: !2427, inlinedAt: !3254)
!3295 = !DILocation(line: 351, column: 6, scope: !2431, inlinedAt: !3254)
!3296 = !DILocation(line: 351, column: 11, scope: !2431, inlinedAt: !3254)
!3297 = !DILocation(line: 351, column: 6, scope: !2333, inlinedAt: !3254)
!3298 = !DILocation(line: 352, column: 3, scope: !2431, inlinedAt: !3254)
!3299 = !DILocation(line: 354, column: 32, scope: !2436, inlinedAt: !3254)
!3300 = !DILocation(line: 354, column: 37, scope: !2436, inlinedAt: !3254)
!3301 = !DILocation(line: 354, column: 42, scope: !2436, inlinedAt: !3254)
!3302 = !DILocation(line: 354, column: 45, scope: !2436, inlinedAt: !3254)
!3303 = !DILocation(line: 354, column: 50, scope: !2436, inlinedAt: !3254)
!3304 = !DILocation(line: 354, column: 6, scope: !2333, inlinedAt: !3254)
!3305 = !DILocation(line: 355, column: 3, scope: !2436, inlinedAt: !3254)
!3306 = !DILocation(line: 356, column: 32, scope: !2444, inlinedAt: !3254)
!3307 = !DILocation(line: 356, column: 37, scope: !2444, inlinedAt: !3254)
!3308 = !DILocation(line: 356, column: 43, scope: !2444, inlinedAt: !3254)
!3309 = !DILocation(line: 356, column: 46, scope: !2444, inlinedAt: !3254)
!3310 = !DILocation(line: 356, column: 51, scope: !2444, inlinedAt: !3254)
!3311 = !DILocation(line: 356, column: 6, scope: !2333, inlinedAt: !3254)
!3312 = !DILocation(line: 357, column: 3, scope: !2444, inlinedAt: !3254)
!3313 = !DILocation(line: 358, column: 6, scope: !2452, inlinedAt: !3254)
!3314 = !DILocation(line: 358, column: 11, scope: !2452, inlinedAt: !3254)
!3315 = !DILocation(line: 358, column: 6, scope: !2333, inlinedAt: !3254)
!3316 = !DILocation(line: 358, column: 26, scope: !2452, inlinedAt: !3254)
!3317 = !DILocation(line: 359, column: 6, scope: !2457, inlinedAt: !3254)
!3318 = !DILocation(line: 359, column: 11, scope: !2457, inlinedAt: !3254)
!3319 = !DILocation(line: 359, column: 6, scope: !2333, inlinedAt: !3254)
!3320 = !DILocation(line: 359, column: 26, scope: !2457, inlinedAt: !3254)
!3321 = !DILocation(line: 360, column: 6, scope: !2462, inlinedAt: !3254)
!3322 = !DILocation(line: 360, column: 11, scope: !2462, inlinedAt: !3254)
!3323 = !DILocation(line: 360, column: 6, scope: !2333, inlinedAt: !3254)
!3324 = !DILocation(line: 360, column: 26, scope: !2462, inlinedAt: !3254)
!3325 = !DILocation(line: 361, column: 6, scope: !2467, inlinedAt: !3254)
!3326 = !DILocation(line: 361, column: 11, scope: !2467, inlinedAt: !3254)
!3327 = !DILocation(line: 361, column: 6, scope: !2333, inlinedAt: !3254)
!3328 = !DILocation(line: 361, column: 26, scope: !2467, inlinedAt: !3254)
!3329 = !DILocation(line: 362, column: 6, scope: !2472, inlinedAt: !3254)
!3330 = !DILocation(line: 362, column: 11, scope: !2472, inlinedAt: !3254)
!3331 = !DILocation(line: 362, column: 6, scope: !2333, inlinedAt: !3254)
!3332 = !DILocation(line: 362, column: 26, scope: !2472, inlinedAt: !3254)
!3333 = !DILocation(line: 363, column: 6, scope: !2477, inlinedAt: !3254)
!3334 = !DILocation(line: 363, column: 11, scope: !2477, inlinedAt: !3254)
!3335 = !DILocation(line: 363, column: 6, scope: !2333, inlinedAt: !3254)
!3336 = !DILocation(line: 363, column: 26, scope: !2477, inlinedAt: !3254)
!3337 = !DILocation(line: 364, column: 6, scope: !2482, inlinedAt: !3254)
!3338 = !DILocation(line: 364, column: 11, scope: !2482, inlinedAt: !3254)
!3339 = !DILocation(line: 364, column: 6, scope: !2333, inlinedAt: !3254)
!3340 = !DILocation(line: 364, column: 26, scope: !2482, inlinedAt: !3254)
!3341 = !DILocation(line: 365, column: 6, scope: !2487, inlinedAt: !3254)
!3342 = !DILocation(line: 365, column: 11, scope: !2487, inlinedAt: !3254)
!3343 = !DILocation(line: 365, column: 6, scope: !2333, inlinedAt: !3254)
!3344 = !DILocation(line: 365, column: 26, scope: !2487, inlinedAt: !3254)
!3345 = !DILocation(line: 366, column: 6, scope: !2492, inlinedAt: !3254)
!3346 = !DILocation(line: 366, column: 11, scope: !2492, inlinedAt: !3254)
!3347 = !DILocation(line: 366, column: 6, scope: !2333, inlinedAt: !3254)
!3348 = !DILocation(line: 366, column: 26, scope: !2492, inlinedAt: !3254)
!3349 = !DILocation(line: 367, column: 6, scope: !2497, inlinedAt: !3254)
!3350 = !DILocation(line: 367, column: 11, scope: !2497, inlinedAt: !3254)
!3351 = !DILocation(line: 367, column: 6, scope: !2333, inlinedAt: !3254)
!3352 = !DILocation(line: 367, column: 26, scope: !2497, inlinedAt: !3254)
!3353 = !DILocation(line: 368, column: 6, scope: !2502, inlinedAt: !3254)
!3354 = !DILocation(line: 368, column: 11, scope: !2502, inlinedAt: !3254)
!3355 = !DILocation(line: 368, column: 6, scope: !2333, inlinedAt: !3254)
!3356 = !DILocation(line: 368, column: 26, scope: !2502, inlinedAt: !3254)
!3357 = !DILocation(line: 369, column: 6, scope: !2507, inlinedAt: !3254)
!3358 = !DILocation(line: 369, column: 11, scope: !2507, inlinedAt: !3254)
!3359 = !DILocation(line: 369, column: 6, scope: !2333, inlinedAt: !3254)
!3360 = !DILocation(line: 369, column: 26, scope: !2507, inlinedAt: !3254)
!3361 = !DILocation(line: 370, column: 6, scope: !2512, inlinedAt: !3254)
!3362 = !DILocation(line: 370, column: 11, scope: !2512, inlinedAt: !3254)
!3363 = !DILocation(line: 370, column: 6, scope: !2333, inlinedAt: !3254)
!3364 = !DILocation(line: 370, column: 26, scope: !2512, inlinedAt: !3254)
!3365 = !DILocation(line: 371, column: 6, scope: !2517, inlinedAt: !3254)
!3366 = !DILocation(line: 371, column: 11, scope: !2517, inlinedAt: !3254)
!3367 = !DILocation(line: 371, column: 6, scope: !2333, inlinedAt: !3254)
!3368 = !DILocation(line: 371, column: 26, scope: !2517, inlinedAt: !3254)
!3369 = !DILocation(line: 372, column: 6, scope: !2522, inlinedAt: !3254)
!3370 = !DILocation(line: 372, column: 11, scope: !2522, inlinedAt: !3254)
!3371 = !DILocation(line: 372, column: 6, scope: !2333, inlinedAt: !3254)
!3372 = !DILocation(line: 372, column: 26, scope: !2522, inlinedAt: !3254)
!3373 = !DILocation(line: 373, column: 6, scope: !2527, inlinedAt: !3254)
!3374 = !DILocation(line: 373, column: 11, scope: !2527, inlinedAt: !3254)
!3375 = !DILocation(line: 373, column: 6, scope: !2333, inlinedAt: !3254)
!3376 = !DILocation(line: 373, column: 26, scope: !2527, inlinedAt: !3254)
!3377 = !DILocation(line: 374, column: 6, scope: !2532, inlinedAt: !3254)
!3378 = !DILocation(line: 374, column: 11, scope: !2532, inlinedAt: !3254)
!3379 = !DILocation(line: 374, column: 6, scope: !2333, inlinedAt: !3254)
!3380 = !DILocation(line: 374, column: 26, scope: !2532, inlinedAt: !3254)
!3381 = !DILocation(line: 375, column: 6, scope: !2537, inlinedAt: !3254)
!3382 = !DILocation(line: 375, column: 11, scope: !2537, inlinedAt: !3254)
!3383 = !DILocation(line: 375, column: 6, scope: !2333, inlinedAt: !3254)
!3384 = !DILocation(line: 375, column: 27, scope: !2537, inlinedAt: !3254)
!3385 = !DILocation(line: 376, column: 6, scope: !2542, inlinedAt: !3254)
!3386 = !DILocation(line: 376, column: 11, scope: !2542, inlinedAt: !3254)
!3387 = !DILocation(line: 376, column: 6, scope: !2333, inlinedAt: !3254)
!3388 = !DILocation(line: 376, column: 32, scope: !2542, inlinedAt: !3254)
!3389 = !DILocation(line: 377, column: 6, scope: !2547, inlinedAt: !3254)
!3390 = !DILocation(line: 377, column: 11, scope: !2547, inlinedAt: !3254)
!3391 = !DILocation(line: 377, column: 6, scope: !2333, inlinedAt: !3254)
!3392 = !DILocation(line: 377, column: 32, scope: !2547, inlinedAt: !3254)
!3393 = !DILocation(line: 378, column: 6, scope: !2552, inlinedAt: !3254)
!3394 = !DILocation(line: 378, column: 11, scope: !2552, inlinedAt: !3254)
!3395 = !DILocation(line: 378, column: 6, scope: !2333, inlinedAt: !3254)
!3396 = !DILocation(line: 378, column: 32, scope: !2552, inlinedAt: !3254)
!3397 = !DILocation(line: 379, column: 6, scope: !2557, inlinedAt: !3254)
!3398 = !DILocation(line: 379, column: 11, scope: !2557, inlinedAt: !3254)
!3399 = !DILocation(line: 379, column: 6, scope: !2333, inlinedAt: !3254)
!3400 = !DILocation(line: 379, column: 33, scope: !2557, inlinedAt: !3254)
!3401 = !DILocation(line: 380, column: 6, scope: !2562, inlinedAt: !3254)
!3402 = !DILocation(line: 380, column: 11, scope: !2562, inlinedAt: !3254)
!3403 = !DILocation(line: 380, column: 6, scope: !2333, inlinedAt: !3254)
!3404 = !DILocation(line: 380, column: 33, scope: !2562, inlinedAt: !3254)
!3405 = !DILocation(line: 381, column: 6, scope: !2567, inlinedAt: !3254)
!3406 = !DILocation(line: 381, column: 11, scope: !2567, inlinedAt: !3254)
!3407 = !DILocation(line: 381, column: 6, scope: !2333, inlinedAt: !3254)
!3408 = !DILocation(line: 381, column: 33, scope: !2567, inlinedAt: !3254)
!3409 = !DILocation(line: 382, column: 2, scope: !2572, inlinedAt: !3254)
!3410 = !DILocation(line: 382, column: 2, scope: !2576, inlinedAt: !3254)
!3411 = !DILocation(line: 382, column: 2, scope: !2577, inlinedAt: !3254)
!3412 = !DILocation(line: 386, column: 1, scope: !2333, inlinedAt: !3254)
!3413 = !DILocation(line: 547, column: 9, scope: !2312, inlinedAt: !3247)
!3414 = !DILocation(line: 549, column: 8, scope: !2583, inlinedAt: !3247)
!3415 = !DILocation(line: 549, column: 7, scope: !2312, inlinedAt: !3247)
!3416 = !DILocation(line: 550, column: 4, scope: !2583, inlinedAt: !3247)
!3417 = !DILocation(line: 553, column: 33, scope: !2312, inlinedAt: !3247)
!3418 = !DILocation(line: 325, column: 6, scope: !2588, inlinedAt: !3252)
!3419 = !DILocation(line: 325, column: 6, scope: !2327, inlinedAt: !3252)
!3420 = !DILocation(line: 326, column: 3, scope: !2588, inlinedAt: !3252)
!3421 = !DILocation(line: 332, column: 9, scope: !2327, inlinedAt: !3252)
!3422 = !DILocation(line: 332, column: 15, scope: !2327, inlinedAt: !3252)
!3423 = !DILocation(line: 332, column: 2, scope: !2327, inlinedAt: !3252)
!3424 = !DILocation(line: 336, column: 1, scope: !2327, inlinedAt: !3252)
!3425 = !DILocation(line: 553, column: 5, scope: !2312, inlinedAt: !3247)
!3426 = !DILocation(line: 553, column: 41, scope: !2312, inlinedAt: !3247)
!3427 = !DILocation(line: 554, column: 5, scope: !2312, inlinedAt: !3247)
!3428 = !DILocation(line: 554, column: 12, scope: !2312, inlinedAt: !3247)
!3429 = !DILocation(line: 448, column: 31, scope: !2307, inlinedAt: !3246)
!3430 = !DILocation(line: 448, column: 34, scope: !2307, inlinedAt: !3246)
!3431 = !DILocation(line: 448, column: 14, scope: !2307, inlinedAt: !3246)
!3432 = !DILocation(line: 450, column: 22, scope: !2307, inlinedAt: !3246)
!3433 = !DILocation(line: 450, column: 25, scope: !2307, inlinedAt: !3246)
!3434 = !DILocation(line: 450, column: 30, scope: !2307, inlinedAt: !3246)
!3435 = !DILocation(line: 450, column: 36, scope: !2307, inlinedAt: !3246)
!3436 = !DILocation(line: 450, column: 8, scope: !2307, inlinedAt: !3246)
!3437 = !DILocation(line: 450, column: 6, scope: !2307, inlinedAt: !3246)
!3438 = !DILocation(line: 451, column: 9, scope: !2307, inlinedAt: !3246)
!3439 = !DILocation(line: 552, column: 3, scope: !2312, inlinedAt: !3247)
!3440 = !DILocation(line: 557, column: 19, scope: !2314, inlinedAt: !3247)
!3441 = !DILocation(line: 557, column: 25, scope: !2314, inlinedAt: !3247)
!3442 = !DILocation(line: 557, column: 9, scope: !2314, inlinedAt: !3247)
!3443 = !DILocation(line: 557, column: 2, scope: !2314, inlinedAt: !3247)
!3444 = !DILocation(line: 558, column: 1, scope: !2314, inlinedAt: !3247)
!3445 = !DILocation(line: 664, column: 2, scope: !3244)
!3446 = distinct !DISubprogram(name: "software_node_register_properties", scope: !3, file: !3, line: 593, type: !3447, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!93, !3168, !2019}
!3449 = !DILocalVariable(name: "node", arg: 1, scope: !3446, file: !3, line: 593, type: !3168)
!3450 = !DILocation(line: 593, column: 57, scope: !3446)
!3451 = !DILocalVariable(name: "properties", arg: 2, scope: !3446, file: !3, line: 594, type: !2019)
!3452 = !DILocation(line: 594, column: 36, scope: !3446)
!3453 = !DILocalVariable(name: "props", scope: !3446, file: !3, line: 596, type: !2210)
!3454 = !DILocation(line: 596, column: 25, scope: !3446)
!3455 = !DILocation(line: 598, column: 31, scope: !3446)
!3456 = !DILocation(line: 598, column: 10, scope: !3446)
!3457 = !DILocation(line: 598, column: 8, scope: !3446)
!3458 = !DILocation(line: 599, column: 13, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 599, column: 6)
!3460 = !DILocation(line: 599, column: 6, scope: !3459)
!3461 = !DILocation(line: 599, column: 6, scope: !3446)
!3462 = !DILocation(line: 600, column: 18, scope: !3459)
!3463 = !DILocation(line: 600, column: 10, scope: !3459)
!3464 = !DILocation(line: 600, column: 3, scope: !3459)
!3465 = !DILocation(line: 602, column: 21, scope: !3446)
!3466 = !DILocation(line: 602, column: 2, scope: !3446)
!3467 = !DILocation(line: 602, column: 8, scope: !3446)
!3468 = !DILocation(line: 602, column: 19, scope: !3446)
!3469 = !DILocation(line: 604, column: 2, scope: !3446)
!3470 = !DILocation(line: 605, column: 1, scope: !3446)
!3471 = distinct !DISubprogram(name: "software_node_notify", scope: !3, file: !3, line: 846, type: !3472, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!93, !1606, !207}
!3474 = !DILocalVariable(name: "dev", arg: 1, scope: !3471, file: !3, line: 846, type: !1606)
!3475 = !DILocation(line: 846, column: 41, scope: !3471)
!3476 = !DILocalVariable(name: "action", arg: 2, scope: !3471, file: !3, line: 846, type: !207)
!3477 = !DILocation(line: 846, column: 60, scope: !3471)
!3478 = !DILocalVariable(name: "fwnode", scope: !3471, file: !3, line: 848, type: !1576)
!3479 = !DILocation(line: 848, column: 24, scope: !3471)
!3480 = !DILocation(line: 848, column: 44, scope: !3471)
!3481 = !DILocation(line: 848, column: 33, scope: !3471)
!3482 = !DILocalVariable(name: "swnode", scope: !3471, file: !3, line: 849, type: !89)
!3483 = !DILocation(line: 849, column: 17, scope: !3471)
!3484 = !DILocalVariable(name: "ret", scope: !3471, file: !3, line: 850, type: !93)
!3485 = !DILocation(line: 850, column: 6, scope: !3471)
!3486 = !DILocation(line: 852, column: 7, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 852, column: 6)
!3488 = !DILocation(line: 852, column: 6, scope: !3471)
!3489 = !DILocation(line: 853, column: 3, scope: !3487)
!3490 = !DILocation(line: 855, column: 24, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 855, column: 6)
!3492 = !DILocation(line: 855, column: 7, scope: !3491)
!3493 = !DILocation(line: 855, column: 6, scope: !3471)
!3494 = !DILocation(line: 856, column: 12, scope: !3491)
!3495 = !DILocation(line: 856, column: 20, scope: !3491)
!3496 = !DILocation(line: 856, column: 10, scope: !3491)
!3497 = !DILocation(line: 856, column: 3, scope: !3491)
!3498 = !DILocation(line: 857, column: 24, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 857, column: 6)
!3500 = !DILocation(line: 857, column: 7, scope: !3499)
!3501 = !DILocation(line: 857, column: 6, scope: !3471)
!3502 = !DILocation(line: 858, column: 3, scope: !3499)
!3503 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3504, file: !3, line: 860, type: !1576)
!3504 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 860, column: 11)
!3505 = !DILocation(line: 860, column: 11, scope: !3504)
!3506 = !DILocalVariable(name: "__mptr", scope: !3507, file: !3, line: 860, type: !88)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 860, column: 11)
!3508 = !DILocation(line: 860, column: 11, scope: !3507)
!3509 = !DILocation(line: 860, column: 11, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 860, column: 11)
!3511 = !DILocation(line: 860, column: 9, scope: !3471)
!3512 = !DILocation(line: 862, column: 10, scope: !3471)
!3513 = !DILocation(line: 862, column: 2, scope: !3471)
!3514 = !DILocation(line: 864, column: 28, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 862, column: 18)
!3516 = !DILocation(line: 864, column: 33, scope: !3515)
!3517 = !DILocation(line: 864, column: 40, scope: !3515)
!3518 = !DILocation(line: 864, column: 48, scope: !3515)
!3519 = !DILocation(line: 864, column: 9, scope: !3515)
!3520 = !DILocation(line: 864, column: 7, scope: !3515)
!3521 = !DILocation(line: 866, column: 7, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 866, column: 7)
!3523 = !DILocation(line: 866, column: 7, scope: !3515)
!3524 = !DILocation(line: 867, column: 4, scope: !3522)
!3525 = !DILocation(line: 869, column: 28, scope: !3515)
!3526 = !DILocation(line: 869, column: 36, scope: !3515)
!3527 = !DILocation(line: 869, column: 43, scope: !3515)
!3528 = !DILocation(line: 869, column: 48, scope: !3515)
!3529 = !DILocation(line: 870, column: 15, scope: !3515)
!3530 = !DILocation(line: 870, column: 6, scope: !3515)
!3531 = !DILocation(line: 869, column: 9, scope: !3515)
!3532 = !DILocation(line: 869, column: 7, scope: !3515)
!3533 = !DILocation(line: 871, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 871, column: 7)
!3535 = !DILocation(line: 871, column: 7, scope: !3515)
!3536 = !DILocation(line: 872, column: 23, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 871, column: 12)
!3538 = !DILocation(line: 872, column: 28, scope: !3537)
!3539 = !DILocation(line: 872, column: 4, scope: !3537)
!3540 = !DILocation(line: 873, column: 4, scope: !3537)
!3541 = !DILocation(line: 875, column: 16, scope: !3515)
!3542 = !DILocation(line: 875, column: 24, scope: !3515)
!3543 = !DILocation(line: 875, column: 3, scope: !3515)
!3544 = !DILocation(line: 876, column: 3, scope: !3515)
!3545 = !DILocation(line: 878, column: 22, scope: !3515)
!3546 = !DILocation(line: 878, column: 30, scope: !3515)
!3547 = !DILocation(line: 878, column: 45, scope: !3515)
!3548 = !DILocation(line: 878, column: 36, scope: !3515)
!3549 = !DILocation(line: 878, column: 3, scope: !3515)
!3550 = !DILocation(line: 879, column: 22, scope: !3515)
!3551 = !DILocation(line: 879, column: 27, scope: !3515)
!3552 = !DILocation(line: 879, column: 3, scope: !3515)
!3553 = !DILocation(line: 880, column: 16, scope: !3515)
!3554 = !DILocation(line: 880, column: 24, scope: !3515)
!3555 = !DILocation(line: 880, column: 3, scope: !3515)
!3556 = !DILocation(line: 881, column: 3, scope: !3515)
!3557 = !DILocation(line: 883, column: 3, scope: !3515)
!3558 = !DILocation(line: 886, column: 2, scope: !3471)
!3559 = !DILocation(line: 887, column: 1, scope: !3471)
!3560 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !3561, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!98, !1600}
!3563 = !DILocalVariable(name: "dev", arg: 1, scope: !3560, file: !30, line: 609, type: !1600)
!3564 = !DILocation(line: 609, column: 57, scope: !3560)
!3565 = !DILocation(line: 612, column: 6, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3560, file: !30, line: 612, column: 6)
!3567 = !DILocation(line: 612, column: 11, scope: !3566)
!3568 = !DILocation(line: 612, column: 6, scope: !3560)
!3569 = !DILocation(line: 613, column: 10, scope: !3566)
!3570 = !DILocation(line: 613, column: 15, scope: !3566)
!3571 = !DILocation(line: 613, column: 3, scope: !3566)
!3572 = !DILocation(line: 615, column: 23, scope: !3560)
!3573 = !DILocation(line: 615, column: 28, scope: !3560)
!3574 = !DILocation(line: 615, column: 9, scope: !3560)
!3575 = !DILocation(line: 615, column: 2, scope: !3560)
!3576 = !DILocation(line: 616, column: 1, scope: !3560)
!3577 = distinct !DISubprogram(name: "software_node_init", scope: !3, file: !3, line: 889, type: !3578, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!93}
!3580 = !DILocation(line: 891, column: 60, scope: !3577)
!3581 = !DILocation(line: 891, column: 16, scope: !3577)
!3582 = !DILocation(line: 891, column: 14, scope: !3577)
!3583 = !DILocation(line: 892, column: 7, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 892, column: 6)
!3585 = !DILocation(line: 892, column: 6, scope: !3577)
!3586 = !DILocation(line: 893, column: 3, scope: !3584)
!3587 = !DILocation(line: 894, column: 2, scope: !3577)
!3588 = !DILocation(line: 895, column: 1, scope: !3577)
!3589 = distinct !DISubprogram(name: "software_node_exit", scope: !3, file: !3, line: 898, type: !2065, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3590 = !DILocation(line: 900, column: 2, scope: !3589)
!3591 = !DILocation(line: 901, column: 18, scope: !3589)
!3592 = !DILocation(line: 901, column: 2, scope: !3589)
!3593 = !DILocation(line: 902, column: 1, scope: !3589)
!3594 = distinct !DISubprogram(name: "kmalloc_array", scope: !60, file: !60, line: 584, type: !2281, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3595 = !DILocation(line: 445, column: 72, scope: !2307, inlinedAt: !3596)
!3596 = distinct !DILocation(line: 552, column: 10, scope: !2312, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 591, column: 10, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3594, file: !60, line: 590, column: 6)
!3599 = !DILocation(line: 446, column: 9, scope: !2307, inlinedAt: !3596)
!3600 = !DILocation(line: 446, column: 23, scope: !2307, inlinedAt: !3596)
!3601 = !DILocation(line: 448, column: 8, scope: !2307, inlinedAt: !3596)
!3602 = !DILocation(line: 318, column: 67, scope: !2327, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 553, column: 20, scope: !2312, inlinedAt: !3597)
!3604 = !DILocation(line: 346, column: 58, scope: !2333, inlinedAt: !3605)
!3605 = distinct !DILocation(line: 547, column: 11, scope: !2312, inlinedAt: !3597)
!3606 = !DILocation(line: 472, column: 28, scope: !2339, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 481, column: 9, scope: !2344, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 545, column: 11, scope: !2346, inlinedAt: !3597)
!3609 = !DILocation(line: 472, column: 40, scope: !2339, inlinedAt: !3607)
!3610 = !DILocation(line: 472, column: 60, scope: !2339, inlinedAt: !3607)
!3611 = !DILocation(line: 478, column: 51, scope: !2344, inlinedAt: !3608)
!3612 = !DILocation(line: 478, column: 63, scope: !2344, inlinedAt: !3608)
!3613 = !DILocation(line: 480, column: 15, scope: !2344, inlinedAt: !3608)
!3614 = !DILocation(line: 538, column: 45, scope: !2314, inlinedAt: !3597)
!3615 = !DILocation(line: 538, column: 57, scope: !2314, inlinedAt: !3597)
!3616 = !DILocation(line: 542, column: 16, scope: !2312, inlinedAt: !3597)
!3617 = !DILocalVariable(name: "n", arg: 1, scope: !3594, file: !60, line: 584, type: !204)
!3618 = !DILocation(line: 584, column: 42, scope: !3594)
!3619 = !DILocalVariable(name: "size", arg: 2, scope: !3594, file: !60, line: 584, type: !204)
!3620 = !DILocation(line: 584, column: 52, scope: !3594)
!3621 = !DILocalVariable(name: "flags", arg: 3, scope: !3594, file: !60, line: 584, type: !1443)
!3622 = !DILocation(line: 584, column: 64, scope: !3594)
!3623 = !DILocalVariable(name: "bytes", scope: !3594, file: !60, line: 586, type: !204)
!3624 = !DILocation(line: 586, column: 9, scope: !3594)
!3625 = !DILocalVariable(name: "__a", scope: !3626, file: !60, line: 588, type: !204)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !60, line: 588, column: 6)
!3627 = distinct !DILexicalBlock(scope: !3594, file: !60, line: 588, column: 6)
!3628 = !DILocation(line: 588, column: 6, scope: !3626)
!3629 = !DILocalVariable(name: "__b", scope: !3626, file: !60, line: 588, type: !204)
!3630 = !DILocalVariable(name: "__d", scope: !3626, file: !60, line: 588, type: !3631)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!3632 = !DILocation(line: 588, column: 6, scope: !3627)
!3633 = !DILocation(line: 588, column: 6, scope: !3594)
!3634 = !DILocation(line: 589, column: 3, scope: !3627)
!3635 = !DILocation(line: 590, column: 27, scope: !3598)
!3636 = !DILocation(line: 590, column: 6, scope: !3598)
!3637 = !DILocation(line: 590, column: 30, scope: !3598)
!3638 = !DILocation(line: 590, column: 54, scope: !3598)
!3639 = !DILocation(line: 590, column: 33, scope: !3598)
!3640 = !DILocation(line: 590, column: 6, scope: !3594)
!3641 = !DILocation(line: 591, column: 18, scope: !3598)
!3642 = !DILocation(line: 591, column: 25, scope: !3598)
!3643 = !DILocation(line: 540, column: 27, scope: !2313, inlinedAt: !3597)
!3644 = !DILocation(line: 540, column: 6, scope: !2313, inlinedAt: !3597)
!3645 = !DILocation(line: 540, column: 6, scope: !2314, inlinedAt: !3597)
!3646 = !DILocation(line: 544, column: 7, scope: !2346, inlinedAt: !3597)
!3647 = !DILocation(line: 544, column: 12, scope: !2346, inlinedAt: !3597)
!3648 = !DILocation(line: 544, column: 7, scope: !2312, inlinedAt: !3597)
!3649 = !DILocation(line: 545, column: 25, scope: !2346, inlinedAt: !3597)
!3650 = !DILocation(line: 545, column: 31, scope: !2346, inlinedAt: !3597)
!3651 = !DILocation(line: 480, column: 33, scope: !2344, inlinedAt: !3608)
!3652 = !DILocation(line: 480, column: 23, scope: !2344, inlinedAt: !3608)
!3653 = !DILocation(line: 481, column: 29, scope: !2344, inlinedAt: !3608)
!3654 = !DILocation(line: 481, column: 35, scope: !2344, inlinedAt: !3608)
!3655 = !DILocation(line: 481, column: 42, scope: !2344, inlinedAt: !3608)
!3656 = !DILocation(line: 474, column: 23, scope: !2339, inlinedAt: !3607)
!3657 = !DILocation(line: 474, column: 29, scope: !2339, inlinedAt: !3607)
!3658 = !DILocation(line: 474, column: 36, scope: !2339, inlinedAt: !3607)
!3659 = !DILocation(line: 474, column: 9, scope: !2339, inlinedAt: !3607)
!3660 = !DILocation(line: 545, column: 4, scope: !2346, inlinedAt: !3597)
!3661 = !DILocation(line: 547, column: 25, scope: !2312, inlinedAt: !3597)
!3662 = !DILocation(line: 348, column: 7, scope: !2427, inlinedAt: !3605)
!3663 = !DILocation(line: 348, column: 6, scope: !2333, inlinedAt: !3605)
!3664 = !DILocation(line: 349, column: 3, scope: !2427, inlinedAt: !3605)
!3665 = !DILocation(line: 351, column: 6, scope: !2431, inlinedAt: !3605)
!3666 = !DILocation(line: 351, column: 11, scope: !2431, inlinedAt: !3605)
!3667 = !DILocation(line: 351, column: 6, scope: !2333, inlinedAt: !3605)
!3668 = !DILocation(line: 352, column: 3, scope: !2431, inlinedAt: !3605)
!3669 = !DILocation(line: 354, column: 32, scope: !2436, inlinedAt: !3605)
!3670 = !DILocation(line: 354, column: 37, scope: !2436, inlinedAt: !3605)
!3671 = !DILocation(line: 354, column: 42, scope: !2436, inlinedAt: !3605)
!3672 = !DILocation(line: 354, column: 45, scope: !2436, inlinedAt: !3605)
!3673 = !DILocation(line: 354, column: 50, scope: !2436, inlinedAt: !3605)
!3674 = !DILocation(line: 354, column: 6, scope: !2333, inlinedAt: !3605)
!3675 = !DILocation(line: 355, column: 3, scope: !2436, inlinedAt: !3605)
!3676 = !DILocation(line: 356, column: 32, scope: !2444, inlinedAt: !3605)
!3677 = !DILocation(line: 356, column: 37, scope: !2444, inlinedAt: !3605)
!3678 = !DILocation(line: 356, column: 43, scope: !2444, inlinedAt: !3605)
!3679 = !DILocation(line: 356, column: 46, scope: !2444, inlinedAt: !3605)
!3680 = !DILocation(line: 356, column: 51, scope: !2444, inlinedAt: !3605)
!3681 = !DILocation(line: 356, column: 6, scope: !2333, inlinedAt: !3605)
!3682 = !DILocation(line: 357, column: 3, scope: !2444, inlinedAt: !3605)
!3683 = !DILocation(line: 358, column: 6, scope: !2452, inlinedAt: !3605)
!3684 = !DILocation(line: 358, column: 11, scope: !2452, inlinedAt: !3605)
!3685 = !DILocation(line: 358, column: 6, scope: !2333, inlinedAt: !3605)
!3686 = !DILocation(line: 358, column: 26, scope: !2452, inlinedAt: !3605)
!3687 = !DILocation(line: 359, column: 6, scope: !2457, inlinedAt: !3605)
!3688 = !DILocation(line: 359, column: 11, scope: !2457, inlinedAt: !3605)
!3689 = !DILocation(line: 359, column: 6, scope: !2333, inlinedAt: !3605)
!3690 = !DILocation(line: 359, column: 26, scope: !2457, inlinedAt: !3605)
!3691 = !DILocation(line: 360, column: 6, scope: !2462, inlinedAt: !3605)
!3692 = !DILocation(line: 360, column: 11, scope: !2462, inlinedAt: !3605)
!3693 = !DILocation(line: 360, column: 6, scope: !2333, inlinedAt: !3605)
!3694 = !DILocation(line: 360, column: 26, scope: !2462, inlinedAt: !3605)
!3695 = !DILocation(line: 361, column: 6, scope: !2467, inlinedAt: !3605)
!3696 = !DILocation(line: 361, column: 11, scope: !2467, inlinedAt: !3605)
!3697 = !DILocation(line: 361, column: 6, scope: !2333, inlinedAt: !3605)
!3698 = !DILocation(line: 361, column: 26, scope: !2467, inlinedAt: !3605)
!3699 = !DILocation(line: 362, column: 6, scope: !2472, inlinedAt: !3605)
!3700 = !DILocation(line: 362, column: 11, scope: !2472, inlinedAt: !3605)
!3701 = !DILocation(line: 362, column: 6, scope: !2333, inlinedAt: !3605)
!3702 = !DILocation(line: 362, column: 26, scope: !2472, inlinedAt: !3605)
!3703 = !DILocation(line: 363, column: 6, scope: !2477, inlinedAt: !3605)
!3704 = !DILocation(line: 363, column: 11, scope: !2477, inlinedAt: !3605)
!3705 = !DILocation(line: 363, column: 6, scope: !2333, inlinedAt: !3605)
!3706 = !DILocation(line: 363, column: 26, scope: !2477, inlinedAt: !3605)
!3707 = !DILocation(line: 364, column: 6, scope: !2482, inlinedAt: !3605)
!3708 = !DILocation(line: 364, column: 11, scope: !2482, inlinedAt: !3605)
!3709 = !DILocation(line: 364, column: 6, scope: !2333, inlinedAt: !3605)
!3710 = !DILocation(line: 364, column: 26, scope: !2482, inlinedAt: !3605)
!3711 = !DILocation(line: 365, column: 6, scope: !2487, inlinedAt: !3605)
!3712 = !DILocation(line: 365, column: 11, scope: !2487, inlinedAt: !3605)
!3713 = !DILocation(line: 365, column: 6, scope: !2333, inlinedAt: !3605)
!3714 = !DILocation(line: 365, column: 26, scope: !2487, inlinedAt: !3605)
!3715 = !DILocation(line: 366, column: 6, scope: !2492, inlinedAt: !3605)
!3716 = !DILocation(line: 366, column: 11, scope: !2492, inlinedAt: !3605)
!3717 = !DILocation(line: 366, column: 6, scope: !2333, inlinedAt: !3605)
!3718 = !DILocation(line: 366, column: 26, scope: !2492, inlinedAt: !3605)
!3719 = !DILocation(line: 367, column: 6, scope: !2497, inlinedAt: !3605)
!3720 = !DILocation(line: 367, column: 11, scope: !2497, inlinedAt: !3605)
!3721 = !DILocation(line: 367, column: 6, scope: !2333, inlinedAt: !3605)
!3722 = !DILocation(line: 367, column: 26, scope: !2497, inlinedAt: !3605)
!3723 = !DILocation(line: 368, column: 6, scope: !2502, inlinedAt: !3605)
!3724 = !DILocation(line: 368, column: 11, scope: !2502, inlinedAt: !3605)
!3725 = !DILocation(line: 368, column: 6, scope: !2333, inlinedAt: !3605)
!3726 = !DILocation(line: 368, column: 26, scope: !2502, inlinedAt: !3605)
!3727 = !DILocation(line: 369, column: 6, scope: !2507, inlinedAt: !3605)
!3728 = !DILocation(line: 369, column: 11, scope: !2507, inlinedAt: !3605)
!3729 = !DILocation(line: 369, column: 6, scope: !2333, inlinedAt: !3605)
!3730 = !DILocation(line: 369, column: 26, scope: !2507, inlinedAt: !3605)
!3731 = !DILocation(line: 370, column: 6, scope: !2512, inlinedAt: !3605)
!3732 = !DILocation(line: 370, column: 11, scope: !2512, inlinedAt: !3605)
!3733 = !DILocation(line: 370, column: 6, scope: !2333, inlinedAt: !3605)
!3734 = !DILocation(line: 370, column: 26, scope: !2512, inlinedAt: !3605)
!3735 = !DILocation(line: 371, column: 6, scope: !2517, inlinedAt: !3605)
!3736 = !DILocation(line: 371, column: 11, scope: !2517, inlinedAt: !3605)
!3737 = !DILocation(line: 371, column: 6, scope: !2333, inlinedAt: !3605)
!3738 = !DILocation(line: 371, column: 26, scope: !2517, inlinedAt: !3605)
!3739 = !DILocation(line: 372, column: 6, scope: !2522, inlinedAt: !3605)
!3740 = !DILocation(line: 372, column: 11, scope: !2522, inlinedAt: !3605)
!3741 = !DILocation(line: 372, column: 6, scope: !2333, inlinedAt: !3605)
!3742 = !DILocation(line: 372, column: 26, scope: !2522, inlinedAt: !3605)
!3743 = !DILocation(line: 373, column: 6, scope: !2527, inlinedAt: !3605)
!3744 = !DILocation(line: 373, column: 11, scope: !2527, inlinedAt: !3605)
!3745 = !DILocation(line: 373, column: 6, scope: !2333, inlinedAt: !3605)
!3746 = !DILocation(line: 373, column: 26, scope: !2527, inlinedAt: !3605)
!3747 = !DILocation(line: 374, column: 6, scope: !2532, inlinedAt: !3605)
!3748 = !DILocation(line: 374, column: 11, scope: !2532, inlinedAt: !3605)
!3749 = !DILocation(line: 374, column: 6, scope: !2333, inlinedAt: !3605)
!3750 = !DILocation(line: 374, column: 26, scope: !2532, inlinedAt: !3605)
!3751 = !DILocation(line: 375, column: 6, scope: !2537, inlinedAt: !3605)
!3752 = !DILocation(line: 375, column: 11, scope: !2537, inlinedAt: !3605)
!3753 = !DILocation(line: 375, column: 6, scope: !2333, inlinedAt: !3605)
!3754 = !DILocation(line: 375, column: 27, scope: !2537, inlinedAt: !3605)
!3755 = !DILocation(line: 376, column: 6, scope: !2542, inlinedAt: !3605)
!3756 = !DILocation(line: 376, column: 11, scope: !2542, inlinedAt: !3605)
!3757 = !DILocation(line: 376, column: 6, scope: !2333, inlinedAt: !3605)
!3758 = !DILocation(line: 376, column: 32, scope: !2542, inlinedAt: !3605)
!3759 = !DILocation(line: 377, column: 6, scope: !2547, inlinedAt: !3605)
!3760 = !DILocation(line: 377, column: 11, scope: !2547, inlinedAt: !3605)
!3761 = !DILocation(line: 377, column: 6, scope: !2333, inlinedAt: !3605)
!3762 = !DILocation(line: 377, column: 32, scope: !2547, inlinedAt: !3605)
!3763 = !DILocation(line: 378, column: 6, scope: !2552, inlinedAt: !3605)
!3764 = !DILocation(line: 378, column: 11, scope: !2552, inlinedAt: !3605)
!3765 = !DILocation(line: 378, column: 6, scope: !2333, inlinedAt: !3605)
!3766 = !DILocation(line: 378, column: 32, scope: !2552, inlinedAt: !3605)
!3767 = !DILocation(line: 379, column: 6, scope: !2557, inlinedAt: !3605)
!3768 = !DILocation(line: 379, column: 11, scope: !2557, inlinedAt: !3605)
!3769 = !DILocation(line: 379, column: 6, scope: !2333, inlinedAt: !3605)
!3770 = !DILocation(line: 379, column: 33, scope: !2557, inlinedAt: !3605)
!3771 = !DILocation(line: 380, column: 6, scope: !2562, inlinedAt: !3605)
!3772 = !DILocation(line: 380, column: 11, scope: !2562, inlinedAt: !3605)
!3773 = !DILocation(line: 380, column: 6, scope: !2333, inlinedAt: !3605)
!3774 = !DILocation(line: 380, column: 33, scope: !2562, inlinedAt: !3605)
!3775 = !DILocation(line: 381, column: 6, scope: !2567, inlinedAt: !3605)
!3776 = !DILocation(line: 381, column: 11, scope: !2567, inlinedAt: !3605)
!3777 = !DILocation(line: 381, column: 6, scope: !2333, inlinedAt: !3605)
!3778 = !DILocation(line: 381, column: 33, scope: !2567, inlinedAt: !3605)
!3779 = !DILocation(line: 382, column: 2, scope: !2572, inlinedAt: !3605)
!3780 = !DILocation(line: 382, column: 2, scope: !2576, inlinedAt: !3605)
!3781 = !DILocation(line: 382, column: 2, scope: !2577, inlinedAt: !3605)
!3782 = !DILocation(line: 386, column: 1, scope: !2333, inlinedAt: !3605)
!3783 = !DILocation(line: 547, column: 9, scope: !2312, inlinedAt: !3597)
!3784 = !DILocation(line: 549, column: 8, scope: !2583, inlinedAt: !3597)
!3785 = !DILocation(line: 549, column: 7, scope: !2312, inlinedAt: !3597)
!3786 = !DILocation(line: 550, column: 4, scope: !2583, inlinedAt: !3597)
!3787 = !DILocation(line: 553, column: 33, scope: !2312, inlinedAt: !3597)
!3788 = !DILocation(line: 325, column: 6, scope: !2588, inlinedAt: !3603)
!3789 = !DILocation(line: 325, column: 6, scope: !2327, inlinedAt: !3603)
!3790 = !DILocation(line: 326, column: 3, scope: !2588, inlinedAt: !3603)
!3791 = !DILocation(line: 332, column: 9, scope: !2327, inlinedAt: !3603)
!3792 = !DILocation(line: 332, column: 15, scope: !2327, inlinedAt: !3603)
!3793 = !DILocation(line: 332, column: 2, scope: !2327, inlinedAt: !3603)
!3794 = !DILocation(line: 336, column: 1, scope: !2327, inlinedAt: !3603)
!3795 = !DILocation(line: 553, column: 5, scope: !2312, inlinedAt: !3597)
!3796 = !DILocation(line: 553, column: 41, scope: !2312, inlinedAt: !3597)
!3797 = !DILocation(line: 554, column: 5, scope: !2312, inlinedAt: !3597)
!3798 = !DILocation(line: 554, column: 12, scope: !2312, inlinedAt: !3597)
!3799 = !DILocation(line: 448, column: 31, scope: !2307, inlinedAt: !3596)
!3800 = !DILocation(line: 448, column: 34, scope: !2307, inlinedAt: !3596)
!3801 = !DILocation(line: 448, column: 14, scope: !2307, inlinedAt: !3596)
!3802 = !DILocation(line: 450, column: 22, scope: !2307, inlinedAt: !3596)
!3803 = !DILocation(line: 450, column: 25, scope: !2307, inlinedAt: !3596)
!3804 = !DILocation(line: 450, column: 30, scope: !2307, inlinedAt: !3596)
!3805 = !DILocation(line: 450, column: 36, scope: !2307, inlinedAt: !3596)
!3806 = !DILocation(line: 450, column: 8, scope: !2307, inlinedAt: !3596)
!3807 = !DILocation(line: 450, column: 6, scope: !2307, inlinedAt: !3596)
!3808 = !DILocation(line: 451, column: 9, scope: !2307, inlinedAt: !3596)
!3809 = !DILocation(line: 552, column: 3, scope: !2312, inlinedAt: !3597)
!3810 = !DILocation(line: 557, column: 19, scope: !2314, inlinedAt: !3597)
!3811 = !DILocation(line: 557, column: 25, scope: !2314, inlinedAt: !3597)
!3812 = !DILocation(line: 557, column: 9, scope: !2314, inlinedAt: !3597)
!3813 = !DILocation(line: 557, column: 2, scope: !2314, inlinedAt: !3597)
!3814 = !DILocation(line: 558, column: 1, scope: !2314, inlinedAt: !3597)
!3815 = !DILocation(line: 591, column: 3, scope: !3598)
!3816 = !DILocation(line: 592, column: 19, scope: !3594)
!3817 = !DILocation(line: 592, column: 26, scope: !3594)
!3818 = !DILocation(line: 592, column: 9, scope: !3594)
!3819 = !DILocation(line: 592, column: 2, scope: !3594)
!3820 = !DILocation(line: 593, column: 1, scope: !3594)
!3821 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3822, file: !3822, line: 52, type: !3823, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3822 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!984, !984}
!3825 = !DILocalVariable(name: "overflow", arg: 1, scope: !3821, file: !3822, line: 52, type: !984)
!3826 = !DILocation(line: 52, column: 60, scope: !3821)
!3827 = !DILocation(line: 54, column: 9, scope: !3821)
!3828 = !DILocation(line: 54, column: 2, scope: !3821)
!3829 = distinct !DISubprogram(name: "get_order", scope: !3830, file: !3830, line: 29, type: !3831, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3830 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!93, !207}
!3833 = !DILocalVariable(name: "x", arg: 1, scope: !3834, file: !3835, line: 366, type: !278)
!3834 = distinct !DISubprogram(name: "fls64", scope: !3835, file: !3835, line: 366, type: !3836, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3835 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!93, !278}
!3838 = !DILocation(line: 366, column: 40, scope: !3834, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 46, column: 9, scope: !3829)
!3840 = !DILocalVariable(name: "bitpos", scope: !3834, file: !3835, line: 368, type: !93)
!3841 = !DILocation(line: 368, column: 6, scope: !3834, inlinedAt: !3839)
!3842 = !DILocalVariable(name: "size", arg: 1, scope: !3829, file: !3830, line: 29, type: !207)
!3843 = !DILocation(line: 29, column: 63, scope: !3829)
!3844 = !DILocation(line: 31, column: 27, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3829, file: !3830, line: 31, column: 6)
!3846 = !DILocation(line: 31, column: 6, scope: !3845)
!3847 = !DILocation(line: 31, column: 6, scope: !3829)
!3848 = !DILocation(line: 32, column: 8, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3850, file: !3830, line: 32, column: 7)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !3830, line: 31, column: 34)
!3851 = !DILocation(line: 32, column: 7, scope: !3850)
!3852 = !DILocation(line: 33, column: 4, scope: !3849)
!3853 = !DILocation(line: 35, column: 7, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3850, file: !3830, line: 35, column: 7)
!3855 = !DILocation(line: 35, column: 12, scope: !3854)
!3856 = !DILocation(line: 35, column: 7, scope: !3850)
!3857 = !DILocation(line: 36, column: 4, scope: !3854)
!3858 = !DILocation(line: 38, column: 10, scope: !3850)
!3859 = !DILocation(line: 38, column: 28, scope: !3850)
!3860 = !DILocation(line: 38, column: 41, scope: !3850)
!3861 = !DILocation(line: 38, column: 3, scope: !3850)
!3862 = !DILocation(line: 41, column: 6, scope: !3829)
!3863 = !DILocation(line: 42, column: 7, scope: !3829)
!3864 = !DILocation(line: 46, column: 15, scope: !3829)
!3865 = !DILocation(line: 374, column: 2, scope: !3834, inlinedAt: !3839)
!3866 = !DILocation(line: 376, column: 14, scope: !3834, inlinedAt: !3839)
!3867 = !{i32 396213}
!3868 = !DILocation(line: 377, column: 9, scope: !3834, inlinedAt: !3839)
!3869 = !DILocation(line: 377, column: 16, scope: !3834, inlinedAt: !3839)
!3870 = !DILocation(line: 46, column: 2, scope: !3829)
!3871 = !DILocation(line: 48, column: 1, scope: !3829)
!3872 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3873, file: !3873, line: 30, type: !3874, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3873 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!93, !276}
!3876 = !DILocation(line: 366, column: 40, scope: !3834, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 32, column: 9, scope: !3872)
!3878 = !DILocation(line: 368, column: 6, scope: !3834, inlinedAt: !3877)
!3879 = !DILocalVariable(name: "n", arg: 1, scope: !3872, file: !3873, line: 30, type: !276)
!3880 = !DILocation(line: 30, column: 21, scope: !3872)
!3881 = !DILocation(line: 32, column: 15, scope: !3872)
!3882 = !DILocation(line: 374, column: 2, scope: !3834, inlinedAt: !3877)
!3883 = !DILocation(line: 376, column: 14, scope: !3834, inlinedAt: !3877)
!3884 = !DILocation(line: 377, column: 9, scope: !3834, inlinedAt: !3877)
!3885 = !DILocation(line: 377, column: 16, scope: !3834, inlinedAt: !3877)
!3886 = !DILocation(line: 32, column: 18, scope: !3872)
!3887 = !DILocation(line: 32, column: 2, scope: !3872)
!3888 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3889, file: !3889, line: 137, type: !3890, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3889 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!88, !1034, !1375, !204, !1443}
!3892 = !DILocalVariable(name: "s", arg: 1, scope: !3888, file: !3889, line: 137, type: !1034)
!3893 = !DILocation(line: 137, column: 54, scope: !3888)
!3894 = !DILocalVariable(name: "object", arg: 2, scope: !3888, file: !3889, line: 137, type: !1375)
!3895 = !DILocation(line: 137, column: 69, scope: !3888)
!3896 = !DILocalVariable(name: "size", arg: 3, scope: !3888, file: !3889, line: 138, type: !204)
!3897 = !DILocation(line: 138, column: 12, scope: !3888)
!3898 = !DILocalVariable(name: "flags", arg: 4, scope: !3888, file: !3889, line: 138, type: !1443)
!3899 = !DILocation(line: 138, column: 24, scope: !3888)
!3900 = !DILocation(line: 140, column: 17, scope: !3888)
!3901 = !DILocation(line: 140, column: 2, scope: !3888)
!3902 = distinct !DISubprogram(name: "property_get_pointer", scope: !3, file: !3, line: 106, type: !3903, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!1375, !2019}
!3905 = !DILocalVariable(name: "prop", arg: 1, scope: !3902, file: !3, line: 106, type: !2019)
!3906 = !DILocation(line: 106, column: 70, scope: !3902)
!3907 = !DILocation(line: 108, column: 7, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3902, file: !3, line: 108, column: 6)
!3909 = !DILocation(line: 108, column: 13, scope: !3908)
!3910 = !DILocation(line: 108, column: 6, scope: !3902)
!3911 = !DILocation(line: 109, column: 3, scope: !3908)
!3912 = !DILocation(line: 111, column: 9, scope: !3902)
!3913 = !DILocation(line: 111, column: 15, scope: !3902)
!3914 = !DILocation(line: 111, column: 28, scope: !3902)
!3915 = !DILocation(line: 111, column: 34, scope: !3902)
!3916 = !DILocation(line: 111, column: 27, scope: !3902)
!3917 = !DILocation(line: 111, column: 42, scope: !3902)
!3918 = !DILocation(line: 111, column: 48, scope: !3902)
!3919 = !DILocation(line: 111, column: 2, scope: !3902)
!3920 = !DILocation(line: 112, column: 1, scope: !3902)
!3921 = distinct !DISubprogram(name: "property_copy_string_array", scope: !3, file: !3, line: 217, type: !3922, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!984, !1964, !2688, !204}
!3924 = !DILocalVariable(name: "dst_ptr", arg: 1, scope: !3921, file: !3, line: 217, type: !1964)
!3925 = !DILocation(line: 217, column: 53, scope: !3921)
!3926 = !DILocalVariable(name: "src_ptr", arg: 2, scope: !3921, file: !3, line: 218, type: !2688)
!3927 = !DILocation(line: 218, column: 32, scope: !3921)
!3928 = !DILocalVariable(name: "nval", arg: 3, scope: !3921, file: !3, line: 219, type: !204)
!3929 = !DILocation(line: 219, column: 19, scope: !3921)
!3930 = !DILocalVariable(name: "i", scope: !3921, file: !3, line: 221, type: !93)
!3931 = !DILocation(line: 221, column: 6, scope: !3921)
!3932 = !DILocation(line: 223, column: 9, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3921, file: !3, line: 223, column: 2)
!3934 = !DILocation(line: 223, column: 7, scope: !3933)
!3935 = !DILocation(line: 223, column: 14, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3933, file: !3, line: 223, column: 2)
!3937 = !DILocation(line: 223, column: 18, scope: !3936)
!3938 = !DILocation(line: 223, column: 16, scope: !3936)
!3939 = !DILocation(line: 223, column: 2, scope: !3933)
!3940 = !DILocation(line: 224, column: 24, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 223, column: 29)
!3942 = !DILocation(line: 224, column: 32, scope: !3941)
!3943 = !DILocation(line: 224, column: 16, scope: !3941)
!3944 = !DILocation(line: 224, column: 3, scope: !3941)
!3945 = !DILocation(line: 224, column: 11, scope: !3941)
!3946 = !DILocation(line: 224, column: 14, scope: !3941)
!3947 = !DILocation(line: 225, column: 8, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 225, column: 7)
!3949 = !DILocation(line: 225, column: 16, scope: !3948)
!3950 = !DILocation(line: 225, column: 19, scope: !3948)
!3951 = !DILocation(line: 225, column: 22, scope: !3948)
!3952 = !DILocation(line: 225, column: 30, scope: !3948)
!3953 = !DILocation(line: 225, column: 7, scope: !3941)
!3954 = !DILocation(line: 226, column: 4, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3948, file: !3, line: 225, column: 34)
!3956 = !DILocation(line: 226, column: 11, scope: !3955)
!3957 = !DILocation(line: 226, column: 15, scope: !3955)
!3958 = !DILocation(line: 227, column: 11, scope: !3955)
!3959 = !DILocation(line: 227, column: 19, scope: !3955)
!3960 = !DILocation(line: 227, column: 5, scope: !3955)
!3961 = distinct !{!3961, !3954, !3962}
!3962 = !DILocation(line: 227, column: 21, scope: !3955)
!3963 = !DILocation(line: 228, column: 4, scope: !3955)
!3964 = !DILocation(line: 230, column: 2, scope: !3941)
!3965 = !DILocation(line: 223, column: 25, scope: !3936)
!3966 = !DILocation(line: 223, column: 2, scope: !3936)
!3967 = distinct !{!3967, !3939, !3968}
!3968 = !DILocation(line: 230, column: 2, scope: !3933)
!3969 = !DILocation(line: 232, column: 2, scope: !3921)
!3970 = !DILocation(line: 233, column: 1, scope: !3921)
!3971 = distinct !DISubprogram(name: "software_node_get", scope: !3, file: !3, line: 350, type: !1584, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3972 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3971, file: !3, line: 350, type: !1576)
!3973 = !DILocation(line: 350, column: 70, scope: !3971)
!3974 = !DILocalVariable(name: "swnode", scope: !3971, file: !3, line: 352, type: !89)
!3975 = !DILocation(line: 352, column: 17, scope: !3971)
!3976 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3977, file: !3, line: 352, type: !1576)
!3977 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 352, column: 26)
!3978 = !DILocation(line: 352, column: 26, scope: !3977)
!3979 = !DILocalVariable(name: "__mptr", scope: !3980, file: !3, line: 352, type: !88)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 352, column: 26)
!3981 = !DILocation(line: 352, column: 26, scope: !3980)
!3982 = !DILocation(line: 352, column: 26, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 352, column: 26)
!3984 = !DILocation(line: 354, column: 15, scope: !3971)
!3985 = !DILocation(line: 354, column: 23, scope: !3971)
!3986 = !DILocation(line: 354, column: 2, scope: !3971)
!3987 = !DILocation(line: 356, column: 10, scope: !3971)
!3988 = !DILocation(line: 356, column: 18, scope: !3971)
!3989 = !DILocation(line: 356, column: 2, scope: !3971)
!3990 = distinct !DISubprogram(name: "software_node_put", scope: !3, file: !3, line: 359, type: !1588, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!3991 = !DILocalVariable(name: "fwnode", arg: 1, scope: !3990, file: !3, line: 359, type: !1576)
!3992 = !DILocation(line: 359, column: 53, scope: !3990)
!3993 = !DILocalVariable(name: "swnode", scope: !3990, file: !3, line: 361, type: !89)
!3994 = !DILocation(line: 361, column: 17, scope: !3990)
!3995 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !3996, file: !3, line: 361, type: !1576)
!3996 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 361, column: 26)
!3997 = !DILocation(line: 361, column: 26, scope: !3996)
!3998 = !DILocalVariable(name: "__mptr", scope: !3999, file: !3, line: 361, type: !88)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 361, column: 26)
!4000 = !DILocation(line: 361, column: 26, scope: !3999)
!4001 = !DILocation(line: 361, column: 26, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 361, column: 26)
!4003 = !DILocation(line: 363, column: 15, scope: !3990)
!4004 = !DILocation(line: 363, column: 23, scope: !3990)
!4005 = !DILocation(line: 363, column: 2, scope: !3990)
!4006 = !DILocation(line: 364, column: 1, scope: !3990)
!4007 = distinct !DISubprogram(name: "software_node_property_present", scope: !3, file: !3, line: 366, type: !1954, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4008 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4007, file: !3, line: 366, type: !1594)
!4009 = !DILocation(line: 366, column: 72, scope: !4007)
!4010 = !DILocalVariable(name: "propname", arg: 2, scope: !4007, file: !3, line: 367, type: !98)
!4011 = !DILocation(line: 367, column: 21, scope: !4007)
!4012 = !DILocalVariable(name: "swnode", scope: !4007, file: !3, line: 369, type: !89)
!4013 = !DILocation(line: 369, column: 17, scope: !4007)
!4014 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4015, file: !3, line: 369, type: !1594)
!4015 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 369, column: 26)
!4016 = !DILocation(line: 369, column: 26, scope: !4015)
!4017 = !DILocalVariable(name: "__mptr", scope: !4018, file: !3, line: 369, type: !88)
!4018 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 369, column: 26)
!4019 = !DILocation(line: 369, column: 26, scope: !4018)
!4020 = !DILocation(line: 369, column: 26, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 369, column: 26)
!4022 = !DILocation(line: 371, column: 30, scope: !4007)
!4023 = !DILocation(line: 371, column: 38, scope: !4007)
!4024 = !DILocation(line: 371, column: 44, scope: !4007)
!4025 = !DILocation(line: 371, column: 56, scope: !4007)
!4026 = !DILocation(line: 371, column: 11, scope: !4007)
!4027 = !DILocation(line: 371, column: 10, scope: !4007)
!4028 = !DILocation(line: 371, column: 9, scope: !4007)
!4029 = !DILocation(line: 371, column: 2, scope: !4007)
!4030 = distinct !DISubprogram(name: "software_node_read_int_array", scope: !3, file: !3, line: 374, type: !1958, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4031 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4030, file: !3, line: 374, type: !1594)
!4032 = !DILocation(line: 374, column: 69, scope: !4030)
!4033 = !DILocalVariable(name: "propname", arg: 2, scope: !4030, file: !3, line: 375, type: !98)
!4034 = !DILocation(line: 375, column: 18, scope: !4030)
!4035 = !DILocalVariable(name: "elem_size", arg: 3, scope: !4030, file: !3, line: 376, type: !7)
!4036 = !DILocation(line: 376, column: 19, scope: !4030)
!4037 = !DILocalVariable(name: "val", arg: 4, scope: !4030, file: !3, line: 376, type: !88)
!4038 = !DILocation(line: 376, column: 36, scope: !4030)
!4039 = !DILocalVariable(name: "nval", arg: 5, scope: !4030, file: !3, line: 377, type: !204)
!4040 = !DILocation(line: 377, column: 13, scope: !4030)
!4041 = !DILocalVariable(name: "swnode", scope: !4030, file: !3, line: 379, type: !89)
!4042 = !DILocation(line: 379, column: 17, scope: !4030)
!4043 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4044, file: !3, line: 379, type: !1594)
!4044 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 379, column: 26)
!4045 = !DILocation(line: 379, column: 26, scope: !4044)
!4046 = !DILocalVariable(name: "__mptr", scope: !4047, file: !3, line: 379, type: !88)
!4047 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 379, column: 26)
!4048 = !DILocation(line: 379, column: 26, scope: !4047)
!4049 = !DILocation(line: 379, column: 26, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 379, column: 26)
!4051 = !DILocation(line: 381, column: 39, scope: !4030)
!4052 = !DILocation(line: 381, column: 47, scope: !4030)
!4053 = !DILocation(line: 381, column: 53, scope: !4030)
!4054 = !DILocation(line: 381, column: 65, scope: !4030)
!4055 = !DILocation(line: 382, column: 11, scope: !4030)
!4056 = !DILocation(line: 382, column: 22, scope: !4030)
!4057 = !DILocation(line: 382, column: 27, scope: !4030)
!4058 = !DILocation(line: 381, column: 9, scope: !4030)
!4059 = !DILocation(line: 381, column: 2, scope: !4030)
!4060 = distinct !DISubprogram(name: "software_node_read_string_array", scope: !3, file: !3, line: 385, type: !1962, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4061 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4060, file: !3, line: 385, type: !1594)
!4062 = !DILocation(line: 385, column: 72, scope: !4060)
!4063 = !DILocalVariable(name: "propname", arg: 2, scope: !4060, file: !3, line: 386, type: !98)
!4064 = !DILocation(line: 386, column: 21, scope: !4060)
!4065 = !DILocalVariable(name: "val", arg: 3, scope: !4060, file: !3, line: 387, type: !1964)
!4066 = !DILocation(line: 387, column: 22, scope: !4060)
!4067 = !DILocalVariable(name: "nval", arg: 4, scope: !4060, file: !3, line: 387, type: !204)
!4068 = !DILocation(line: 387, column: 34, scope: !4060)
!4069 = !DILocalVariable(name: "swnode", scope: !4060, file: !3, line: 389, type: !89)
!4070 = !DILocation(line: 389, column: 17, scope: !4060)
!4071 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4072, file: !3, line: 389, type: !1594)
!4072 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 389, column: 26)
!4073 = !DILocation(line: 389, column: 26, scope: !4072)
!4074 = !DILocalVariable(name: "__mptr", scope: !4075, file: !3, line: 389, type: !88)
!4075 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 389, column: 26)
!4076 = !DILocation(line: 389, column: 26, scope: !4075)
!4077 = !DILocation(line: 389, column: 26, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 389, column: 26)
!4079 = !DILocation(line: 391, column: 42, scope: !4060)
!4080 = !DILocation(line: 391, column: 50, scope: !4060)
!4081 = !DILocation(line: 391, column: 56, scope: !4060)
!4082 = !DILocation(line: 392, column: 7, scope: !4060)
!4083 = !DILocation(line: 392, column: 17, scope: !4060)
!4084 = !DILocation(line: 392, column: 22, scope: !4060)
!4085 = !DILocation(line: 391, column: 9, scope: !4060)
!4086 = !DILocation(line: 391, column: 2, scope: !4060)
!4087 = distinct !DISubprogram(name: "software_node_get_name", scope: !3, file: !3, line: 396, type: !1967, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4088 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4087, file: !3, line: 396, type: !1594)
!4089 = !DILocation(line: 396, column: 52, scope: !4087)
!4090 = !DILocalVariable(name: "swnode", scope: !4087, file: !3, line: 398, type: !2105)
!4091 = !DILocation(line: 398, column: 23, scope: !4087)
!4092 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4093, file: !3, line: 398, type: !1594)
!4093 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 398, column: 32)
!4094 = !DILocation(line: 398, column: 32, scope: !4093)
!4095 = !DILocalVariable(name: "__mptr", scope: !4096, file: !3, line: 398, type: !88)
!4096 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 398, column: 32)
!4097 = !DILocation(line: 398, column: 32, scope: !4096)
!4098 = !DILocation(line: 398, column: 32, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 398, column: 32)
!4100 = !DILocation(line: 400, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 400, column: 6)
!4102 = !DILocation(line: 400, column: 6, scope: !4087)
!4103 = !DILocation(line: 401, column: 3, scope: !4101)
!4104 = !DILocation(line: 403, column: 23, scope: !4087)
!4105 = !DILocation(line: 403, column: 31, scope: !4087)
!4106 = !DILocation(line: 403, column: 9, scope: !4087)
!4107 = !DILocation(line: 403, column: 2, scope: !4087)
!4108 = !DILocation(line: 404, column: 1, scope: !4087)
!4109 = distinct !DISubprogram(name: "software_node_get_name_prefix", scope: !3, file: !3, line: 407, type: !1967, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4110 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4109, file: !3, line: 407, type: !1594)
!4111 = !DILocation(line: 407, column: 59, scope: !4109)
!4112 = !DILocalVariable(name: "parent", scope: !4109, file: !3, line: 409, type: !1576)
!4113 = !DILocation(line: 409, column: 24, scope: !4109)
!4114 = !DILocalVariable(name: "prefix", scope: !4109, file: !3, line: 410, type: !98)
!4115 = !DILocation(line: 410, column: 14, scope: !4109)
!4116 = !DILocation(line: 412, column: 29, scope: !4109)
!4117 = !DILocation(line: 412, column: 11, scope: !4109)
!4118 = !DILocation(line: 412, column: 9, scope: !4109)
!4119 = !DILocation(line: 413, column: 7, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 413, column: 6)
!4121 = !DILocation(line: 413, column: 6, scope: !4109)
!4122 = !DILocation(line: 414, column: 3, scope: !4120)
!4123 = !DILocation(line: 417, column: 2, scope: !4109)
!4124 = !DILocation(line: 417, column: 26, scope: !4109)
!4125 = !DILocation(line: 417, column: 9, scope: !4109)
!4126 = !DILocation(line: 418, column: 35, scope: !4109)
!4127 = !DILocation(line: 418, column: 12, scope: !4109)
!4128 = !DILocation(line: 418, column: 10, scope: !4109)
!4129 = distinct !{!4129, !4123, !4130}
!4130 = !DILocation(line: 418, column: 41, scope: !4109)
!4131 = !DILocation(line: 420, column: 34, scope: !4109)
!4132 = !DILocation(line: 420, column: 11, scope: !4109)
!4133 = !DILocation(line: 420, column: 9, scope: !4109)
!4134 = !DILocation(line: 421, column: 20, scope: !4109)
!4135 = !DILocation(line: 421, column: 2, scope: !4109)
!4136 = !DILocation(line: 424, column: 9, scope: !4109)
!4137 = !DILocation(line: 424, column: 2, scope: !4109)
!4138 = !DILocation(line: 425, column: 1, scope: !4109)
!4139 = distinct !DISubprogram(name: "software_node_get_parent", scope: !3, file: !3, line: 428, type: !1972, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4140 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4139, file: !3, line: 428, type: !1594)
!4141 = !DILocation(line: 428, column: 54, scope: !4139)
!4142 = !DILocalVariable(name: "swnode", scope: !4139, file: !3, line: 430, type: !89)
!4143 = !DILocation(line: 430, column: 17, scope: !4139)
!4144 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4145, file: !3, line: 430, type: !1594)
!4145 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 430, column: 26)
!4146 = !DILocation(line: 430, column: 26, scope: !4145)
!4147 = !DILocalVariable(name: "__mptr", scope: !4148, file: !3, line: 430, type: !88)
!4148 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 430, column: 26)
!4149 = !DILocation(line: 430, column: 26, scope: !4148)
!4150 = !DILocation(line: 430, column: 26, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 430, column: 26)
!4152 = !DILocation(line: 432, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 432, column: 6)
!4154 = !DILocation(line: 432, column: 14, scope: !4153)
!4155 = !DILocation(line: 432, column: 18, scope: !4153)
!4156 = !DILocation(line: 432, column: 26, scope: !4153)
!4157 = !DILocation(line: 432, column: 6, scope: !4139)
!4158 = !DILocation(line: 433, column: 3, scope: !4153)
!4159 = !DILocation(line: 435, column: 28, scope: !4139)
!4160 = !DILocation(line: 435, column: 36, scope: !4139)
!4161 = !DILocation(line: 435, column: 44, scope: !4139)
!4162 = !DILocation(line: 435, column: 9, scope: !4139)
!4163 = !DILocation(line: 435, column: 2, scope: !4139)
!4164 = !DILocation(line: 436, column: 1, scope: !4139)
!4165 = distinct !DISubprogram(name: "software_node_get_next_child", scope: !3, file: !3, line: 439, type: !1976, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4166 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4165, file: !3, line: 439, type: !1594)
!4167 = !DILocation(line: 439, column: 58, scope: !4165)
!4168 = !DILocalVariable(name: "child", arg: 2, scope: !4165, file: !3, line: 440, type: !1576)
!4169 = !DILocation(line: 440, column: 31, scope: !4165)
!4170 = !DILocalVariable(name: "p", scope: !4165, file: !3, line: 442, type: !89)
!4171 = !DILocation(line: 442, column: 17, scope: !4165)
!4172 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4173, file: !3, line: 442, type: !1594)
!4173 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 442, column: 21)
!4174 = !DILocation(line: 442, column: 21, scope: !4173)
!4175 = !DILocalVariable(name: "__mptr", scope: !4176, file: !3, line: 442, type: !88)
!4176 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 442, column: 21)
!4177 = !DILocation(line: 442, column: 21, scope: !4176)
!4178 = !DILocation(line: 442, column: 21, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 442, column: 21)
!4180 = !DILocalVariable(name: "c", scope: !4165, file: !3, line: 443, type: !89)
!4181 = !DILocation(line: 443, column: 17, scope: !4165)
!4182 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4183, file: !3, line: 443, type: !1576)
!4183 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 443, column: 21)
!4184 = !DILocation(line: 443, column: 21, scope: !4183)
!4185 = !DILocalVariable(name: "__mptr", scope: !4186, file: !3, line: 443, type: !88)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 443, column: 21)
!4187 = !DILocation(line: 443, column: 21, scope: !4186)
!4188 = !DILocation(line: 443, column: 21, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 443, column: 21)
!4190 = !DILocation(line: 445, column: 7, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 445, column: 6)
!4192 = !DILocation(line: 445, column: 9, scope: !4191)
!4193 = !DILocation(line: 445, column: 24, scope: !4191)
!4194 = !DILocation(line: 445, column: 27, scope: !4191)
!4195 = !DILocation(line: 445, column: 12, scope: !4191)
!4196 = !DILocation(line: 445, column: 37, scope: !4191)
!4197 = !DILocation(line: 446, column: 7, scope: !4191)
!4198 = !DILocation(line: 446, column: 9, scope: !4191)
!4199 = !DILocation(line: 446, column: 26, scope: !4191)
!4200 = !DILocation(line: 446, column: 29, scope: !4191)
!4201 = !DILocation(line: 446, column: 37, scope: !4191)
!4202 = !DILocation(line: 446, column: 40, scope: !4191)
!4203 = !DILocation(line: 446, column: 12, scope: !4191)
!4204 = !DILocation(line: 445, column: 6, scope: !4165)
!4205 = !DILocation(line: 447, column: 3, scope: !4191)
!4206 = !DILocation(line: 449, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 449, column: 6)
!4208 = !DILocation(line: 449, column: 6, scope: !4165)
!4209 = !DILocalVariable(name: "__mptr", scope: !4210, file: !3, line: 450, type: !88)
!4210 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 450, column: 7)
!4211 = !DILocation(line: 450, column: 7, scope: !4210)
!4212 = !DILocation(line: 450, column: 7, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 450, column: 7)
!4214 = !DILocation(line: 450, column: 5, scope: !4207)
!4215 = !DILocation(line: 450, column: 3, scope: !4207)
!4216 = !DILocalVariable(name: "__mptr", scope: !4217, file: !3, line: 452, type: !88)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 452, column: 7)
!4218 = !DILocation(line: 452, column: 7, scope: !4217)
!4219 = !DILocation(line: 452, column: 7, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 452, column: 7)
!4221 = !DILocation(line: 452, column: 5, scope: !4207)
!4222 = !DILocation(line: 453, column: 10, scope: !4165)
!4223 = !DILocation(line: 453, column: 13, scope: !4165)
!4224 = !DILocation(line: 453, column: 2, scope: !4165)
!4225 = !DILocation(line: 454, column: 1, scope: !4165)
!4226 = distinct !DISubprogram(name: "software_node_get_named_child_node", scope: !3, file: !3, line: 457, type: !1980, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4227 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4226, file: !3, line: 457, type: !1594)
!4228 = !DILocation(line: 457, column: 64, scope: !4226)
!4229 = !DILocalVariable(name: "childname", arg: 2, scope: !4226, file: !3, line: 458, type: !98)
!4230 = !DILocation(line: 458, column: 20, scope: !4226)
!4231 = !DILocalVariable(name: "swnode", scope: !4226, file: !3, line: 460, type: !89)
!4232 = !DILocation(line: 460, column: 17, scope: !4226)
!4233 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4234, file: !3, line: 460, type: !1594)
!4234 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 460, column: 26)
!4235 = !DILocation(line: 460, column: 26, scope: !4234)
!4236 = !DILocalVariable(name: "__mptr", scope: !4237, file: !3, line: 460, type: !88)
!4237 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 460, column: 26)
!4238 = !DILocation(line: 460, column: 26, scope: !4237)
!4239 = !DILocation(line: 460, column: 26, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 460, column: 26)
!4241 = !DILocalVariable(name: "child", scope: !4226, file: !3, line: 461, type: !89)
!4242 = !DILocation(line: 461, column: 17, scope: !4226)
!4243 = !DILocation(line: 463, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 463, column: 6)
!4245 = !DILocation(line: 463, column: 14, scope: !4244)
!4246 = !DILocation(line: 463, column: 29, scope: !4244)
!4247 = !DILocation(line: 463, column: 37, scope: !4244)
!4248 = !DILocation(line: 463, column: 17, scope: !4244)
!4249 = !DILocation(line: 463, column: 6, scope: !4226)
!4250 = !DILocation(line: 464, column: 3, scope: !4244)
!4251 = !DILocalVariable(name: "__mptr", scope: !4252, file: !3, line: 466, type: !88)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 466, column: 2)
!4253 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 466, column: 2)
!4254 = !DILocation(line: 466, column: 2, scope: !4252)
!4255 = !DILocation(line: 466, column: 2, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 466, column: 2)
!4257 = !DILocation(line: 466, column: 2, scope: !4253)
!4258 = !DILocation(line: 466, column: 2, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 466, column: 2)
!4260 = !DILocation(line: 467, column: 15, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 467, column: 7)
!4262 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 466, column: 55)
!4263 = !DILocation(line: 467, column: 40, scope: !4261)
!4264 = !DILocation(line: 467, column: 47, scope: !4261)
!4265 = !DILocation(line: 467, column: 26, scope: !4261)
!4266 = !DILocation(line: 467, column: 8, scope: !4261)
!4267 = !DILocation(line: 467, column: 7, scope: !4262)
!4268 = !DILocation(line: 468, column: 17, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 467, column: 55)
!4270 = !DILocation(line: 468, column: 24, scope: !4269)
!4271 = !DILocation(line: 468, column: 4, scope: !4269)
!4272 = !DILocation(line: 469, column: 12, scope: !4269)
!4273 = !DILocation(line: 469, column: 19, scope: !4269)
!4274 = !DILocation(line: 469, column: 4, scope: !4269)
!4275 = !DILocation(line: 471, column: 2, scope: !4262)
!4276 = !DILocalVariable(name: "__mptr", scope: !4277, file: !3, line: 466, type: !88)
!4277 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 466, column: 2)
!4278 = !DILocation(line: 466, column: 2, scope: !4277)
!4279 = !DILocation(line: 466, column: 2, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 466, column: 2)
!4281 = distinct !{!4281, !4257, !4282}
!4282 = !DILocation(line: 471, column: 2, scope: !4253)
!4283 = !DILocation(line: 472, column: 2, scope: !4226)
!4284 = !DILocation(line: 473, column: 1, scope: !4226)
!4285 = distinct !DISubprogram(name: "software_node_get_reference_args", scope: !3, file: !3, line: 476, type: !1984, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4286 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4285, file: !3, line: 476, type: !1594)
!4287 = !DILocation(line: 476, column: 62, scope: !4285)
!4288 = !DILocalVariable(name: "propname", arg: 2, scope: !4285, file: !3, line: 477, type: !98)
!4289 = !DILocation(line: 477, column: 18, scope: !4285)
!4290 = !DILocalVariable(name: "nargs_prop", arg: 3, scope: !4285, file: !3, line: 477, type: !98)
!4291 = !DILocation(line: 477, column: 40, scope: !4285)
!4292 = !DILocalVariable(name: "nargs", arg: 4, scope: !4285, file: !3, line: 478, type: !7)
!4293 = !DILocation(line: 478, column: 19, scope: !4285)
!4294 = !DILocalVariable(name: "index", arg: 5, scope: !4285, file: !3, line: 478, type: !7)
!4295 = !DILocation(line: 478, column: 39, scope: !4285)
!4296 = !DILocalVariable(name: "args", arg: 6, scope: !4285, file: !3, line: 479, type: !1986)
!4297 = !DILocation(line: 479, column: 36, scope: !4285)
!4298 = !DILocalVariable(name: "swnode", scope: !4285, file: !3, line: 481, type: !89)
!4299 = !DILocation(line: 481, column: 17, scope: !4285)
!4300 = !DILocalVariable(name: "__to_swnode_fwnode", scope: !4301, file: !3, line: 481, type: !1594)
!4301 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 481, column: 26)
!4302 = !DILocation(line: 481, column: 26, scope: !4301)
!4303 = !DILocalVariable(name: "__mptr", scope: !4304, file: !3, line: 481, type: !88)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 481, column: 26)
!4305 = !DILocation(line: 481, column: 26, scope: !4304)
!4306 = !DILocation(line: 481, column: 26, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 481, column: 26)
!4308 = !DILocalVariable(name: "ref_array", scope: !4285, file: !3, line: 482, type: !4309)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "software_node_ref_args", file: !51, line: 248, size: 640, elements: !4312)
!4312 = !{!4313, !4314, !4315}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4311, file: !51, line: 249, baseType: !2012, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4311, file: !51, line: 250, baseType: !7, size: 32, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4311, file: !51, line: 251, baseType: !1992, size: 512, offset: 128)
!4316 = !DILocation(line: 482, column: 39, scope: !4285)
!4317 = !DILocalVariable(name: "ref", scope: !4285, file: !3, line: 483, type: !4309)
!4318 = !DILocation(line: 483, column: 39, scope: !4285)
!4319 = !DILocalVariable(name: "prop", scope: !4285, file: !3, line: 484, type: !2019)
!4320 = !DILocation(line: 484, column: 31, scope: !4285)
!4321 = !DILocalVariable(name: "refnode", scope: !4285, file: !3, line: 485, type: !1576)
!4322 = !DILocation(line: 485, column: 24, scope: !4285)
!4323 = !DILocalVariable(name: "nargs_prop_val", scope: !4285, file: !3, line: 486, type: !414)
!4324 = !DILocation(line: 486, column: 6, scope: !4285)
!4325 = !DILocalVariable(name: "error", scope: !4285, file: !3, line: 487, type: !93)
!4326 = !DILocation(line: 487, column: 6, scope: !4285)
!4327 = !DILocalVariable(name: "i", scope: !4285, file: !3, line: 488, type: !93)
!4328 = !DILocation(line: 488, column: 6, scope: !4285)
!4329 = !DILocation(line: 490, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 490, column: 6)
!4331 = !DILocation(line: 490, column: 6, scope: !4285)
!4332 = !DILocation(line: 491, column: 3, scope: !4330)
!4333 = !DILocation(line: 493, column: 28, scope: !4285)
!4334 = !DILocation(line: 493, column: 36, scope: !4285)
!4335 = !DILocation(line: 493, column: 42, scope: !4285)
!4336 = !DILocation(line: 493, column: 54, scope: !4285)
!4337 = !DILocation(line: 493, column: 9, scope: !4285)
!4338 = !DILocation(line: 493, column: 7, scope: !4285)
!4339 = !DILocation(line: 494, column: 7, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 494, column: 6)
!4341 = !DILocation(line: 494, column: 6, scope: !4285)
!4342 = !DILocation(line: 495, column: 3, scope: !4340)
!4343 = !DILocation(line: 497, column: 6, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 497, column: 6)
!4345 = !DILocation(line: 497, column: 12, scope: !4344)
!4346 = !DILocation(line: 497, column: 17, scope: !4344)
!4347 = !DILocation(line: 497, column: 6, scope: !4285)
!4348 = !DILocation(line: 498, column: 3, scope: !4344)
!4349 = !DILocation(line: 504, column: 6, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 504, column: 6)
!4351 = !DILocation(line: 504, column: 12, scope: !4350)
!4352 = !DILocation(line: 504, column: 6, scope: !4285)
!4353 = !DILocation(line: 505, column: 3, scope: !4350)
!4354 = !DILocation(line: 507, column: 6, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 507, column: 6)
!4356 = !DILocation(line: 507, column: 12, scope: !4355)
!4357 = !DILocation(line: 507, column: 30, scope: !4355)
!4358 = !DILocation(line: 507, column: 36, scope: !4355)
!4359 = !DILocation(line: 507, column: 27, scope: !4355)
!4360 = !DILocation(line: 507, column: 6, scope: !4285)
!4361 = !DILocation(line: 508, column: 3, scope: !4355)
!4362 = !DILocation(line: 510, column: 14, scope: !4285)
!4363 = !DILocation(line: 510, column: 20, scope: !4285)
!4364 = !DILocation(line: 510, column: 12, scope: !4285)
!4365 = !DILocation(line: 511, column: 9, scope: !4285)
!4366 = !DILocation(line: 511, column: 19, scope: !4285)
!4367 = !DILocation(line: 511, column: 6, scope: !4285)
!4368 = !DILocation(line: 513, column: 33, scope: !4285)
!4369 = !DILocation(line: 513, column: 38, scope: !4285)
!4370 = !DILocation(line: 513, column: 12, scope: !4285)
!4371 = !DILocation(line: 513, column: 10, scope: !4285)
!4372 = !DILocation(line: 514, column: 7, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 514, column: 6)
!4374 = !DILocation(line: 514, column: 6, scope: !4285)
!4375 = !DILocation(line: 515, column: 3, scope: !4373)
!4376 = !DILocation(line: 517, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 517, column: 6)
!4378 = !DILocation(line: 517, column: 6, scope: !4285)
!4379 = !DILocation(line: 518, column: 41, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 517, column: 18)
!4381 = !DILocation(line: 518, column: 49, scope: !4380)
!4382 = !DILocation(line: 518, column: 55, scope: !4380)
!4383 = !DILocation(line: 519, column: 13, scope: !4380)
!4384 = !DILocation(line: 520, column: 13, scope: !4380)
!4385 = !DILocation(line: 518, column: 11, scope: !4380)
!4386 = !DILocation(line: 518, column: 9, scope: !4380)
!4387 = !DILocation(line: 521, column: 7, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 521, column: 7)
!4389 = !DILocation(line: 521, column: 7, scope: !4380)
!4390 = !DILocation(line: 522, column: 11, scope: !4388)
!4391 = !DILocation(line: 522, column: 4, scope: !4388)
!4392 = !DILocation(line: 524, column: 11, scope: !4380)
!4393 = !DILocation(line: 524, column: 9, scope: !4380)
!4394 = !DILocation(line: 525, column: 2, scope: !4380)
!4395 = !DILocation(line: 527, column: 6, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 527, column: 6)
!4397 = !DILocation(line: 527, column: 12, scope: !4396)
!4398 = !DILocation(line: 527, column: 6, scope: !4285)
!4399 = !DILocation(line: 528, column: 3, scope: !4396)
!4400 = !DILocation(line: 530, column: 35, scope: !4285)
!4401 = !DILocation(line: 530, column: 17, scope: !4285)
!4402 = !DILocation(line: 530, column: 2, scope: !4285)
!4403 = !DILocation(line: 530, column: 8, scope: !4285)
!4404 = !DILocation(line: 530, column: 15, scope: !4285)
!4405 = !DILocation(line: 531, column: 16, scope: !4285)
!4406 = !DILocation(line: 531, column: 2, scope: !4285)
!4407 = !DILocation(line: 531, column: 8, scope: !4285)
!4408 = !DILocation(line: 531, column: 14, scope: !4285)
!4409 = !DILocation(line: 533, column: 9, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 533, column: 2)
!4411 = !DILocation(line: 533, column: 7, scope: !4410)
!4412 = !DILocation(line: 533, column: 14, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 533, column: 2)
!4414 = !DILocation(line: 533, column: 18, scope: !4413)
!4415 = !DILocation(line: 533, column: 16, scope: !4413)
!4416 = !DILocation(line: 533, column: 2, scope: !4410)
!4417 = !DILocation(line: 534, column: 19, scope: !4413)
!4418 = !DILocation(line: 534, column: 24, scope: !4413)
!4419 = !DILocation(line: 534, column: 29, scope: !4413)
!4420 = !DILocation(line: 534, column: 3, scope: !4413)
!4421 = !DILocation(line: 534, column: 9, scope: !4413)
!4422 = !DILocation(line: 534, column: 14, scope: !4413)
!4423 = !DILocation(line: 534, column: 17, scope: !4413)
!4424 = !DILocation(line: 533, column: 26, scope: !4413)
!4425 = !DILocation(line: 533, column: 2, scope: !4413)
!4426 = distinct !{!4426, !4416, !4427}
!4427 = !DILocation(line: 534, column: 30, scope: !4410)
!4428 = !DILocation(line: 536, column: 2, scope: !4285)
!4429 = !DILocation(line: 537, column: 1, scope: !4285)
!4430 = distinct !DISubprogram(name: "property_entry_get", scope: !3, file: !3, line: 94, type: !4431, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!2019, !2019, !98}
!4433 = !DILocalVariable(name: "prop", arg: 1, scope: !4430, file: !3, line: 94, type: !2019)
!4434 = !DILocation(line: 94, column: 49, scope: !4430)
!4435 = !DILocalVariable(name: "name", arg: 2, scope: !4430, file: !3, line: 94, type: !98)
!4436 = !DILocation(line: 94, column: 67, scope: !4430)
!4437 = !DILocation(line: 96, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 96, column: 6)
!4439 = !DILocation(line: 96, column: 6, scope: !4430)
!4440 = !DILocation(line: 97, column: 3, scope: !4438)
!4441 = !DILocation(line: 99, column: 2, scope: !4430)
!4442 = !DILocation(line: 99, column: 9, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 99, column: 2)
!4444 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 99, column: 2)
!4445 = !DILocation(line: 99, column: 15, scope: !4443)
!4446 = !DILocation(line: 99, column: 2, scope: !4444)
!4447 = !DILocation(line: 100, column: 15, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 100, column: 7)
!4449 = !DILocation(line: 100, column: 21, scope: !4448)
!4450 = !DILocation(line: 100, column: 27, scope: !4448)
!4451 = !DILocation(line: 100, column: 8, scope: !4448)
!4452 = !DILocation(line: 100, column: 7, scope: !4443)
!4453 = !DILocation(line: 101, column: 11, scope: !4448)
!4454 = !DILocation(line: 101, column: 4, scope: !4448)
!4455 = !DILocation(line: 100, column: 31, scope: !4448)
!4456 = !DILocation(line: 99, column: 25, scope: !4443)
!4457 = !DILocation(line: 99, column: 2, scope: !4443)
!4458 = distinct !{!4458, !4446, !4459}
!4459 = !DILocation(line: 101, column: 11, scope: !4444)
!4460 = !DILocation(line: 103, column: 2, scope: !4430)
!4461 = !DILocation(line: 104, column: 1, scope: !4430)
!4462 = distinct !DISubprogram(name: "property_entry_read_int_array", scope: !3, file: !3, line: 144, type: !4463, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!93, !2019, !98, !7, !88, !204}
!4465 = !DILocalVariable(name: "props", arg: 1, scope: !4462, file: !3, line: 144, type: !2019)
!4466 = !DILocation(line: 144, column: 71, scope: !4462)
!4467 = !DILocalVariable(name: "name", arg: 2, scope: !4462, file: !3, line: 145, type: !98)
!4468 = !DILocation(line: 145, column: 19, scope: !4462)
!4469 = !DILocalVariable(name: "elem_size", arg: 3, scope: !4462, file: !3, line: 146, type: !7)
!4470 = !DILocation(line: 146, column: 20, scope: !4462)
!4471 = !DILocalVariable(name: "val", arg: 4, scope: !4462, file: !3, line: 146, type: !88)
!4472 = !DILocation(line: 146, column: 37, scope: !4462)
!4473 = !DILocalVariable(name: "nval", arg: 5, scope: !4462, file: !3, line: 147, type: !204)
!4474 = !DILocation(line: 147, column: 14, scope: !4462)
!4475 = !DILocalVariable(name: "pointer", scope: !4462, file: !3, line: 149, type: !1375)
!4476 = !DILocation(line: 149, column: 14, scope: !4462)
!4477 = !DILocalVariable(name: "length", scope: !4462, file: !3, line: 150, type: !204)
!4478 = !DILocation(line: 150, column: 9, scope: !4462)
!4479 = !DILocation(line: 152, column: 7, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 152, column: 6)
!4481 = !DILocation(line: 152, column: 6, scope: !4462)
!4482 = !DILocation(line: 153, column: 45, scope: !4480)
!4483 = !DILocation(line: 153, column: 52, scope: !4480)
!4484 = !DILocation(line: 154, column: 10, scope: !4480)
!4485 = !DILocation(line: 153, column: 10, scope: !4480)
!4486 = !DILocation(line: 153, column: 3, scope: !4480)
!4487 = !DILocation(line: 156, column: 21, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 156, column: 6)
!4489 = !DILocation(line: 156, column: 7, scope: !4488)
!4490 = !DILocation(line: 156, column: 32, scope: !4488)
!4491 = !DILocation(line: 156, column: 35, scope: !4488)
!4492 = !DILocation(line: 156, column: 45, scope: !4488)
!4493 = !DILocation(line: 156, column: 6, scope: !4462)
!4494 = !DILocation(line: 157, column: 3, scope: !4488)
!4495 = !DILocation(line: 159, column: 11, scope: !4462)
!4496 = !DILocation(line: 159, column: 18, scope: !4462)
!4497 = !DILocation(line: 159, column: 16, scope: !4462)
!4498 = !DILocation(line: 159, column: 9, scope: !4462)
!4499 = !DILocation(line: 161, column: 32, scope: !4462)
!4500 = !DILocation(line: 161, column: 39, scope: !4462)
!4501 = !DILocation(line: 161, column: 45, scope: !4462)
!4502 = !DILocation(line: 161, column: 12, scope: !4462)
!4503 = !DILocation(line: 161, column: 10, scope: !4462)
!4504 = !DILocation(line: 162, column: 13, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 162, column: 6)
!4506 = !DILocation(line: 162, column: 6, scope: !4505)
!4507 = !DILocation(line: 162, column: 6, scope: !4462)
!4508 = !DILocation(line: 163, column: 18, scope: !4505)
!4509 = !DILocation(line: 163, column: 10, scope: !4505)
!4510 = !DILocation(line: 163, column: 3, scope: !4505)
!4511 = !DILocation(line: 165, column: 9, scope: !4462)
!4512 = !DILocation(line: 165, column: 14, scope: !4462)
!4513 = !DILocation(line: 165, column: 23, scope: !4462)
!4514 = !DILocation(line: 165, column: 2, scope: !4462)
!4515 = !DILocation(line: 166, column: 2, scope: !4462)
!4516 = !DILocation(line: 167, column: 1, scope: !4462)
!4517 = distinct !DISubprogram(name: "property_entry_count_elems_of_size", scope: !3, file: !3, line: 132, type: !4518, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!93, !2019, !98, !204}
!4520 = !DILocalVariable(name: "props", arg: 1, scope: !4517, file: !3, line: 132, type: !2019)
!4521 = !DILocation(line: 132, column: 65, scope: !4517)
!4522 = !DILocalVariable(name: "propname", arg: 2, scope: !4517, file: !3, line: 133, type: !98)
!4523 = !DILocation(line: 133, column: 20, scope: !4517)
!4524 = !DILocalVariable(name: "length", arg: 3, scope: !4517, file: !3, line: 133, type: !204)
!4525 = !DILocation(line: 133, column: 37, scope: !4517)
!4526 = !DILocalVariable(name: "prop", scope: !4517, file: !3, line: 135, type: !2019)
!4527 = !DILocation(line: 135, column: 31, scope: !4517)
!4528 = !DILocation(line: 137, column: 28, scope: !4517)
!4529 = !DILocation(line: 137, column: 35, scope: !4517)
!4530 = !DILocation(line: 137, column: 9, scope: !4517)
!4531 = !DILocation(line: 137, column: 7, scope: !4517)
!4532 = !DILocation(line: 138, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 138, column: 6)
!4534 = !DILocation(line: 138, column: 6, scope: !4517)
!4535 = !DILocation(line: 139, column: 3, scope: !4533)
!4536 = !DILocation(line: 141, column: 9, scope: !4517)
!4537 = !DILocation(line: 141, column: 15, scope: !4517)
!4538 = !DILocation(line: 141, column: 24, scope: !4517)
!4539 = !DILocation(line: 141, column: 22, scope: !4517)
!4540 = !DILocation(line: 141, column: 2, scope: !4517)
!4541 = !DILocation(line: 142, column: 1, scope: !4517)
!4542 = distinct !DISubprogram(name: "is_power_of_2", scope: !3873, file: !3873, line: 45, type: !4543, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!984, !207}
!4545 = !DILocalVariable(name: "n", arg: 1, scope: !4542, file: !3873, line: 45, type: !207)
!4546 = !DILocation(line: 45, column: 34, scope: !4542)
!4547 = !DILocation(line: 47, column: 10, scope: !4542)
!4548 = !DILocation(line: 47, column: 12, scope: !4542)
!4549 = !DILocation(line: 47, column: 17, scope: !4542)
!4550 = !DILocation(line: 47, column: 22, scope: !4542)
!4551 = !DILocation(line: 47, column: 27, scope: !4542)
!4552 = !DILocation(line: 47, column: 29, scope: !4542)
!4553 = !DILocation(line: 47, column: 24, scope: !4542)
!4554 = !DILocation(line: 47, column: 35, scope: !4542)
!4555 = !DILocation(line: 0, scope: !4542)
!4556 = !DILocation(line: 47, column: 2, scope: !4542)
!4557 = distinct !DISubprogram(name: "property_entry_find", scope: !3, file: !3, line: 114, type: !4558, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!1375, !2019, !98, !204}
!4560 = !DILocalVariable(name: "props", arg: 1, scope: !4557, file: !3, line: 114, type: !2019)
!4561 = !DILocation(line: 114, column: 69, scope: !4557)
!4562 = !DILocalVariable(name: "propname", arg: 2, scope: !4557, file: !3, line: 115, type: !98)
!4563 = !DILocation(line: 115, column: 24, scope: !4557)
!4564 = !DILocalVariable(name: "length", arg: 3, scope: !4557, file: !3, line: 115, type: !204)
!4565 = !DILocation(line: 115, column: 41, scope: !4557)
!4566 = !DILocalVariable(name: "prop", scope: !4557, file: !3, line: 117, type: !2019)
!4567 = !DILocation(line: 117, column: 31, scope: !4557)
!4568 = !DILocalVariable(name: "pointer", scope: !4557, file: !3, line: 118, type: !1375)
!4569 = !DILocation(line: 118, column: 14, scope: !4557)
!4570 = !DILocation(line: 120, column: 28, scope: !4557)
!4571 = !DILocation(line: 120, column: 35, scope: !4557)
!4572 = !DILocation(line: 120, column: 9, scope: !4557)
!4573 = !DILocation(line: 120, column: 7, scope: !4557)
!4574 = !DILocation(line: 121, column: 7, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 121, column: 6)
!4576 = !DILocation(line: 121, column: 6, scope: !4557)
!4577 = !DILocation(line: 122, column: 10, scope: !4575)
!4578 = !DILocation(line: 122, column: 3, scope: !4575)
!4579 = !DILocation(line: 123, column: 33, scope: !4557)
!4580 = !DILocation(line: 123, column: 12, scope: !4557)
!4581 = !DILocation(line: 123, column: 10, scope: !4557)
!4582 = !DILocation(line: 124, column: 7, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 124, column: 6)
!4584 = !DILocation(line: 124, column: 6, scope: !4557)
!4585 = !DILocation(line: 125, column: 10, scope: !4583)
!4586 = !DILocation(line: 125, column: 3, scope: !4583)
!4587 = !DILocation(line: 126, column: 6, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 126, column: 6)
!4589 = !DILocation(line: 126, column: 15, scope: !4588)
!4590 = !DILocation(line: 126, column: 21, scope: !4588)
!4591 = !DILocation(line: 126, column: 13, scope: !4588)
!4592 = !DILocation(line: 126, column: 6, scope: !4557)
!4593 = !DILocation(line: 127, column: 10, scope: !4588)
!4594 = !DILocation(line: 127, column: 3, scope: !4588)
!4595 = !DILocation(line: 128, column: 9, scope: !4557)
!4596 = !DILocation(line: 128, column: 2, scope: !4557)
!4597 = !DILocation(line: 129, column: 1, scope: !4557)
!4598 = distinct !DISubprogram(name: "PTR_ERR", scope: !2090, file: !2090, line: 29, type: !4599, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!192, !1375}
!4601 = !DILocalVariable(name: "ptr", arg: 1, scope: !4598, file: !2090, line: 29, type: !1375)
!4602 = !DILocation(line: 29, column: 61, scope: !4598)
!4603 = !DILocation(line: 31, column: 16, scope: !4598)
!4604 = !DILocation(line: 31, column: 9, scope: !4598)
!4605 = !DILocation(line: 31, column: 2, scope: !4598)
!4606 = distinct !DISubprogram(name: "property_entry_read_string_array", scope: !3, file: !3, line: 169, type: !4607, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!93, !2019, !98, !1964, !204}
!4609 = !DILocalVariable(name: "props", arg: 1, scope: !4606, file: !3, line: 169, type: !2019)
!4610 = !DILocation(line: 169, column: 74, scope: !4606)
!4611 = !DILocalVariable(name: "propname", arg: 2, scope: !4606, file: !3, line: 170, type: !98)
!4612 = !DILocation(line: 170, column: 22, scope: !4606)
!4613 = !DILocalVariable(name: "strings", arg: 3, scope: !4606, file: !3, line: 171, type: !1964)
!4614 = !DILocation(line: 171, column: 23, scope: !4606)
!4615 = !DILocalVariable(name: "nval", arg: 4, scope: !4606, file: !3, line: 171, type: !204)
!4616 = !DILocation(line: 171, column: 39, scope: !4606)
!4617 = !DILocalVariable(name: "pointer", scope: !4606, file: !3, line: 173, type: !1375)
!4618 = !DILocation(line: 173, column: 14, scope: !4606)
!4619 = !DILocalVariable(name: "length", scope: !4606, file: !3, line: 174, type: !204)
!4620 = !DILocation(line: 174, column: 9, scope: !4606)
!4621 = !DILocalVariable(name: "array_len", scope: !4606, file: !3, line: 175, type: !93)
!4622 = !DILocation(line: 175, column: 6, scope: !4606)
!4623 = !DILocation(line: 178, column: 49, scope: !4606)
!4624 = !DILocation(line: 178, column: 56, scope: !4606)
!4625 = !DILocation(line: 178, column: 14, scope: !4606)
!4626 = !DILocation(line: 178, column: 12, scope: !4606)
!4627 = !DILocation(line: 180, column: 6, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 180, column: 6)
!4629 = !DILocation(line: 180, column: 16, scope: !4628)
!4630 = !DILocation(line: 180, column: 6, scope: !4606)
!4631 = !DILocation(line: 181, column: 10, scope: !4628)
!4632 = !DILocation(line: 181, column: 3, scope: !4628)
!4633 = !DILocation(line: 184, column: 7, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 184, column: 6)
!4635 = !DILocation(line: 184, column: 6, scope: !4606)
!4636 = !DILocation(line: 185, column: 10, scope: !4634)
!4637 = !DILocation(line: 185, column: 3, scope: !4634)
!4638 = !DILocalVariable(name: "__UNIQUE_ID___x161", scope: !4639, file: !3, line: 187, type: !204)
!4639 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 187, column: 14)
!4640 = !DILocation(line: 187, column: 14, scope: !4639)
!4641 = !DILocalVariable(name: "__UNIQUE_ID___y162", scope: !4639, file: !3, line: 187, type: !204)
!4642 = !DILocation(line: 187, column: 14, scope: !4606)
!4643 = !DILocation(line: 187, column: 12, scope: !4606)
!4644 = !DILocation(line: 188, column: 11, scope: !4606)
!4645 = !DILocation(line: 188, column: 21, scope: !4606)
!4646 = !DILocation(line: 188, column: 9, scope: !4606)
!4647 = !DILocation(line: 190, column: 32, scope: !4606)
!4648 = !DILocation(line: 190, column: 39, scope: !4606)
!4649 = !DILocation(line: 190, column: 49, scope: !4606)
!4650 = !DILocation(line: 190, column: 12, scope: !4606)
!4651 = !DILocation(line: 190, column: 10, scope: !4606)
!4652 = !DILocation(line: 191, column: 13, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 191, column: 6)
!4654 = !DILocation(line: 191, column: 6, scope: !4653)
!4655 = !DILocation(line: 191, column: 6, scope: !4606)
!4656 = !DILocation(line: 192, column: 18, scope: !4653)
!4657 = !DILocation(line: 192, column: 10, scope: !4653)
!4658 = !DILocation(line: 192, column: 3, scope: !4653)
!4659 = !DILocation(line: 194, column: 9, scope: !4606)
!4660 = !DILocation(line: 194, column: 2, scope: !4606)
!4661 = !DILocation(line: 194, column: 18, scope: !4606)
!4662 = !DILocation(line: 194, column: 27, scope: !4606)
!4663 = !DILocation(line: 196, column: 9, scope: !4606)
!4664 = !DILocation(line: 196, column: 2, scope: !4606)
!4665 = !DILocation(line: 197, column: 1, scope: !4606)
!4666 = distinct !DISubprogram(name: "kobject_name", scope: !72, file: !72, line: 88, type: !4667, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!98, !4669}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!4671 = !DILocalVariable(name: "kobj", arg: 1, scope: !4666, file: !72, line: 88, type: !4669)
!4672 = !DILocation(line: 88, column: 62, scope: !4666)
!4673 = !DILocation(line: 90, column: 9, scope: !4666)
!4674 = !DILocation(line: 90, column: 15, scope: !4666)
!4675 = !DILocation(line: 90, column: 2, scope: !4666)
!4676 = distinct !DISubprogram(name: "list_empty", scope: !4677, file: !4677, line: 280, type: !4678, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4677 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!93, !4680}
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4682 = !DILocalVariable(name: "head", arg: 1, scope: !4676, file: !4677, line: 280, type: !4680)
!4683 = !DILocation(line: 280, column: 54, scope: !4676)
!4684 = !DILocation(line: 282, column: 9, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4676, file: !4677, line: 282, column: 9)
!4686 = !DILocation(line: 282, column: 9, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4685, file: !4677, line: 282, column: 9)
!4688 = !DILocation(line: 282, column: 34, scope: !4676)
!4689 = !DILocation(line: 282, column: 31, scope: !4676)
!4690 = !DILocation(line: 282, column: 2, scope: !4676)
!4691 = distinct !DISubprogram(name: "list_is_last", scope: !4677, file: !4677, line: 270, type: !4692, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!93, !4680, !4680}
!4694 = !DILocalVariable(name: "list", arg: 1, scope: !4691, file: !4677, line: 270, type: !4680)
!4695 = !DILocation(line: 270, column: 56, scope: !4691)
!4696 = !DILocalVariable(name: "head", arg: 2, scope: !4691, file: !4677, line: 271, type: !4680)
!4697 = !DILocation(line: 271, column: 29, scope: !4691)
!4698 = !DILocation(line: 273, column: 9, scope: !4691)
!4699 = !DILocation(line: 273, column: 15, scope: !4691)
!4700 = !DILocation(line: 273, column: 23, scope: !4691)
!4701 = !DILocation(line: 273, column: 20, scope: !4691)
!4702 = !DILocation(line: 273, column: 2, scope: !4691)
!4703 = distinct !DISubprogram(name: "ida_init", scope: !1436, file: !1436, line: 312, type: !4704, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{null, !4706}
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!4707 = !DILocalVariable(name: "ida", arg: 1, scope: !4703, file: !1436, line: 312, type: !4706)
!4708 = !DILocation(line: 312, column: 41, scope: !4703)
!4709 = !DILocation(line: 314, column: 17, scope: !4703)
!4710 = !DILocation(line: 314, column: 22, scope: !4703)
!4711 = !DILocation(line: 314, column: 2, scope: !4703)
!4712 = !DILocation(line: 315, column: 1, scope: !4703)
!4713 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4677, file: !4677, line: 33, type: !4714, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !106}
!4716 = !DILocalVariable(name: "list", arg: 1, scope: !4713, file: !4677, line: 33, type: !106)
!4717 = !DILocation(line: 33, column: 53, scope: !4713)
!4718 = !DILocation(line: 35, column: 2, scope: !4713)
!4719 = !DILocation(line: 35, column: 2, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4713, file: !4677, line: 35, column: 2)
!4721 = !DILocation(line: 35, column: 2, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4720, file: !4677, line: 35, column: 2)
!4723 = !DILocation(line: 35, column: 2, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4720, file: !4677, line: 35, column: 2)
!4725 = !DILocation(line: 36, column: 15, scope: !4713)
!4726 = !DILocation(line: 36, column: 2, scope: !4713)
!4727 = !DILocation(line: 36, column: 8, scope: !4713)
!4728 = !DILocation(line: 36, column: 13, scope: !4713)
!4729 = !DILocation(line: 37, column: 1, scope: !4713)
!4730 = distinct !DISubprogram(name: "list_add_tail", scope: !4677, file: !4677, line: 98, type: !4731, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !106, !106}
!4733 = !DILocalVariable(name: "new", arg: 1, scope: !4730, file: !4677, line: 98, type: !106)
!4734 = !DILocation(line: 98, column: 52, scope: !4730)
!4735 = !DILocalVariable(name: "head", arg: 2, scope: !4730, file: !4677, line: 98, type: !106)
!4736 = !DILocation(line: 98, column: 75, scope: !4730)
!4737 = !DILocation(line: 100, column: 13, scope: !4730)
!4738 = !DILocation(line: 100, column: 18, scope: !4730)
!4739 = !DILocation(line: 100, column: 24, scope: !4730)
!4740 = !DILocation(line: 100, column: 30, scope: !4730)
!4741 = !DILocation(line: 100, column: 2, scope: !4730)
!4742 = !DILocation(line: 101, column: 1, scope: !4730)
!4743 = distinct !DISubprogram(name: "xa_init_flags", scope: !83, file: !83, line: 374, type: !4744, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{null, !4746, !1443}
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!4747 = !DILocalVariable(name: "lock", arg: 1, scope: !4748, file: !2138, line: 327, type: !2141)
!4748 = distinct !DISubprogram(name: "spinlock_check", scope: !2138, file: !2138, line: 327, type: !4749, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!4751, !2141}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4752 = !DILocation(line: 327, column: 67, scope: !4748, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 376, column: 2, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4743, file: !83, line: 376, column: 2)
!4755 = !DILocalVariable(name: "xa", arg: 1, scope: !4743, file: !83, line: 374, type: !4746)
!4756 = !DILocation(line: 374, column: 49, scope: !4743)
!4757 = !DILocalVariable(name: "flags", arg: 2, scope: !4743, file: !83, line: 374, type: !1443)
!4758 = !DILocation(line: 374, column: 59, scope: !4743)
!4759 = !DILocation(line: 376, column: 2, scope: !4743)
!4760 = !DILocation(line: 376, column: 2, scope: !4754)
!4761 = !DILocation(line: 329, column: 10, scope: !4748, inlinedAt: !4753)
!4762 = !DILocation(line: 329, column: 16, scope: !4748, inlinedAt: !4753)
!4763 = !DILocation(line: 377, column: 17, scope: !4743)
!4764 = !DILocation(line: 377, column: 2, scope: !4743)
!4765 = !DILocation(line: 377, column: 6, scope: !4743)
!4766 = !DILocation(line: 377, column: 15, scope: !4743)
!4767 = !DILocation(line: 378, column: 2, scope: !4743)
!4768 = !DILocation(line: 378, column: 6, scope: !4743)
!4769 = !DILocation(line: 378, column: 14, scope: !4743)
!4770 = !DILocation(line: 379, column: 1, scope: !4743)
!4771 = distinct !DISubprogram(name: "software_node_release", scope: !3, file: !3, line: 607, type: !176, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4772 = !DILocalVariable(name: "kobj", arg: 1, scope: !4771, file: !3, line: 607, type: !109)
!4773 = !DILocation(line: 607, column: 51, scope: !4771)
!4774 = !DILocalVariable(name: "swnode", scope: !4771, file: !3, line: 609, type: !89)
!4775 = !DILocation(line: 609, column: 17, scope: !4771)
!4776 = !DILocalVariable(name: "__mptr", scope: !4777, file: !3, line: 609, type: !88)
!4777 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 609, column: 26)
!4778 = !DILocation(line: 609, column: 26, scope: !4777)
!4779 = !DILocation(line: 609, column: 26, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !3, line: 609, column: 26)
!4781 = !DILocation(line: 611, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 611, column: 6)
!4783 = !DILocation(line: 611, column: 14, scope: !4782)
!4784 = !DILocation(line: 611, column: 6, scope: !4771)
!4785 = !DILocation(line: 612, column: 3, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 611, column: 22)
!4787 = !DILocation(line: 613, column: 13, scope: !4786)
!4788 = !DILocation(line: 613, column: 21, scope: !4786)
!4789 = !DILocation(line: 613, column: 3, scope: !4786)
!4790 = !DILocation(line: 614, column: 2, scope: !4786)
!4791 = !DILocation(line: 615, column: 3, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 614, column: 9)
!4793 = !DILocation(line: 618, column: 6, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 618, column: 6)
!4795 = !DILocation(line: 618, column: 14, scope: !4794)
!4796 = !DILocation(line: 618, column: 6, scope: !4771)
!4797 = !DILocation(line: 619, column: 25, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 618, column: 25)
!4799 = !DILocation(line: 619, column: 33, scope: !4798)
!4800 = !DILocation(line: 619, column: 39, scope: !4798)
!4801 = !DILocation(line: 619, column: 3, scope: !4798)
!4802 = !DILocation(line: 620, column: 9, scope: !4798)
!4803 = !DILocation(line: 620, column: 17, scope: !4798)
!4804 = !DILocation(line: 620, column: 3, scope: !4798)
!4805 = !DILocation(line: 621, column: 2, scope: !4798)
!4806 = !DILocation(line: 622, column: 15, scope: !4771)
!4807 = !DILocation(line: 622, column: 23, scope: !4771)
!4808 = !DILocation(line: 622, column: 2, scope: !4771)
!4809 = !DILocation(line: 623, column: 8, scope: !4771)
!4810 = !DILocation(line: 623, column: 2, scope: !4771)
!4811 = !DILocation(line: 624, column: 1, scope: !4771)
!4812 = distinct !DISubprogram(name: "list_del", scope: !4677, file: !4677, line: 144, type: !4714, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4813 = !DILocalVariable(name: "entry", arg: 1, scope: !4812, file: !4677, line: 144, type: !106)
!4814 = !DILocation(line: 144, column: 47, scope: !4812)
!4815 = !DILocation(line: 146, column: 19, scope: !4812)
!4816 = !DILocation(line: 146, column: 2, scope: !4812)
!4817 = !DILocation(line: 147, column: 2, scope: !4812)
!4818 = !DILocation(line: 147, column: 9, scope: !4812)
!4819 = !DILocation(line: 147, column: 14, scope: !4812)
!4820 = !DILocation(line: 148, column: 2, scope: !4812)
!4821 = !DILocation(line: 148, column: 9, scope: !4812)
!4822 = !DILocation(line: 148, column: 14, scope: !4812)
!4823 = !DILocation(line: 149, column: 1, scope: !4812)
!4824 = distinct !DISubprogram(name: "__list_del_entry", scope: !4677, file: !4677, line: 130, type: !4714, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4825 = !DILocalVariable(name: "entry", arg: 1, scope: !4824, file: !4677, line: 130, type: !106)
!4826 = !DILocation(line: 130, column: 55, scope: !4824)
!4827 = !DILocation(line: 132, column: 30, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !4677, line: 132, column: 6)
!4829 = !DILocation(line: 132, column: 7, scope: !4828)
!4830 = !DILocation(line: 132, column: 6, scope: !4824)
!4831 = !DILocation(line: 133, column: 3, scope: !4828)
!4832 = !DILocation(line: 135, column: 13, scope: !4824)
!4833 = !DILocation(line: 135, column: 20, scope: !4824)
!4834 = !DILocation(line: 135, column: 26, scope: !4824)
!4835 = !DILocation(line: 135, column: 33, scope: !4824)
!4836 = !DILocation(line: 135, column: 2, scope: !4824)
!4837 = !DILocation(line: 136, column: 1, scope: !4824)
!4838 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4677, file: !4677, line: 51, type: !4839, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!984, !106}
!4841 = !DILocalVariable(name: "entry", arg: 1, scope: !4838, file: !4677, line: 51, type: !106)
!4842 = !DILocation(line: 51, column: 61, scope: !4838)
!4843 = !DILocation(line: 53, column: 2, scope: !4838)
!4844 = distinct !DISubprogram(name: "__list_del", scope: !4677, file: !4677, line: 110, type: !4731, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4845 = !DILocalVariable(name: "prev", arg: 1, scope: !4844, file: !4677, line: 110, type: !106)
!4846 = !DILocation(line: 110, column: 50, scope: !4844)
!4847 = !DILocalVariable(name: "next", arg: 2, scope: !4844, file: !4677, line: 110, type: !106)
!4848 = !DILocation(line: 110, column: 75, scope: !4844)
!4849 = !DILocation(line: 112, column: 15, scope: !4844)
!4850 = !DILocation(line: 112, column: 2, scope: !4844)
!4851 = !DILocation(line: 112, column: 8, scope: !4844)
!4852 = !DILocation(line: 112, column: 13, scope: !4844)
!4853 = !DILocation(line: 113, column: 2, scope: !4844)
!4854 = !DILocation(line: 113, column: 2, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4844, file: !4677, line: 113, column: 2)
!4856 = !DILocation(line: 113, column: 2, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4855, file: !4677, line: 113, column: 2)
!4858 = !DILocation(line: 113, column: 2, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !4677, line: 113, column: 2)
!4860 = !DILocation(line: 114, column: 1, scope: !4844)
!4861 = distinct !DISubprogram(name: "__list_add", scope: !4677, file: !4677, line: 63, type: !4862, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !106, !106, !106}
!4864 = !DILocalVariable(name: "new", arg: 1, scope: !4861, file: !4677, line: 63, type: !106)
!4865 = !DILocation(line: 63, column: 49, scope: !4861)
!4866 = !DILocalVariable(name: "prev", arg: 2, scope: !4861, file: !4677, line: 64, type: !106)
!4867 = !DILocation(line: 64, column: 28, scope: !4861)
!4868 = !DILocalVariable(name: "next", arg: 3, scope: !4861, file: !4677, line: 65, type: !106)
!4869 = !DILocation(line: 65, column: 28, scope: !4861)
!4870 = !DILocation(line: 67, column: 24, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4861, file: !4677, line: 67, column: 6)
!4872 = !DILocation(line: 67, column: 29, scope: !4871)
!4873 = !DILocation(line: 67, column: 35, scope: !4871)
!4874 = !DILocation(line: 67, column: 7, scope: !4871)
!4875 = !DILocation(line: 67, column: 6, scope: !4861)
!4876 = !DILocation(line: 68, column: 3, scope: !4871)
!4877 = !DILocation(line: 70, column: 15, scope: !4861)
!4878 = !DILocation(line: 70, column: 2, scope: !4861)
!4879 = !DILocation(line: 70, column: 8, scope: !4861)
!4880 = !DILocation(line: 70, column: 13, scope: !4861)
!4881 = !DILocation(line: 71, column: 14, scope: !4861)
!4882 = !DILocation(line: 71, column: 2, scope: !4861)
!4883 = !DILocation(line: 71, column: 7, scope: !4861)
!4884 = !DILocation(line: 71, column: 12, scope: !4861)
!4885 = !DILocation(line: 72, column: 14, scope: !4861)
!4886 = !DILocation(line: 72, column: 2, scope: !4861)
!4887 = !DILocation(line: 72, column: 7, scope: !4861)
!4888 = !DILocation(line: 72, column: 12, scope: !4861)
!4889 = !DILocation(line: 73, column: 2, scope: !4861)
!4890 = !DILocation(line: 73, column: 2, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4861, file: !4677, line: 73, column: 2)
!4892 = !DILocation(line: 73, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !4677, line: 73, column: 2)
!4894 = !DILocation(line: 73, column: 2, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !4677, line: 73, column: 2)
!4896 = !DILocation(line: 74, column: 1, scope: !4861)
!4897 = distinct !DISubprogram(name: "__list_add_valid", scope: !4677, file: !4677, line: 45, type: !4898, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !130)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!984, !106, !106, !106}
!4900 = !DILocalVariable(name: "new", arg: 1, scope: !4897, file: !4677, line: 45, type: !106)
!4901 = !DILocation(line: 45, column: 55, scope: !4897)
!4902 = !DILocalVariable(name: "prev", arg: 2, scope: !4897, file: !4677, line: 46, type: !106)
!4903 = !DILocation(line: 46, column: 23, scope: !4897)
!4904 = !DILocalVariable(name: "next", arg: 3, scope: !4897, file: !4677, line: 47, type: !106)
!4905 = !DILocation(line: 47, column: 23, scope: !4897)
!4906 = !DILocation(line: 49, column: 2, scope: !4897)
