; ModuleID = '../bcout/drivers/base/power/wakeup_stats.llvm.bc'
source_filename = "drivers/base/power/wakeup_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall2.init\22, \22a\22\09"
module asm "__initcall_wakeup_sources_sysfs_init2:\09\09\09"
module asm ".long\09wakeup_sources_sysfs_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
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
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
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
%struct.wake_irq = type { %struct.device*, i32, i32, i8* }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request* }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, %struct.blocking_notifier_head* }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.38, %struct.device* }
%union.anon.38 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, %struct.freq_constraints* }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@__UNIQUE_ID___addressable_wakeup_sources_sysfs_init158 = internal global i8* bitcast (i32 ()* @wakeup_sources_sysfs_init to i8*), section ".discard.addressable", align 8, !dbg !0
@wakeup_class = internal global %struct.class* null, align 8, !dbg !89
@wakeup_source_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @wakeup_source_group, %struct.attribute_group* null], align 16, !dbg !1993
@.str = private unnamed_addr constant [9 x i8] c"wakeup%d\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@wakeup_source_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([11 x %struct.attribute*], [11 x %struct.attribute*]* @wakeup_source_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !1996
@wakeup_source_attrs = internal global [11 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_active_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_event_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_expire_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_active_time_ms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_total_time_ms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_max_time_ms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_last_change_ms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_prevent_suspend_time_ms, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !1998
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @name_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2003
@dev_attr_active_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @active_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2017
@dev_attr_event_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @event_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2019
@dev_attr_wakeup_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2021
@dev_attr_expire_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @expire_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2023
@dev_attr_active_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @active_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2025
@dev_attr_total_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @total_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2027
@dev_attr_max_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @max_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2029
@dev_attr_last_change_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @last_change_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2031
@dev_attr_prevent_suspend_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @prevent_suspend_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2033
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"active_count\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"event_count\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"expire_count\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"active_time_ms\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"total_time_ms\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"max_time_ms\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"last_change_ms\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"prevent_suspend_time_ms\00", align 1
@wakeup_sources_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2035
@.str.16 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_wakeup_sources_sysfs_init158 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @wakeup_source_sysfs_add(%struct.device* %parent, %struct.wakeup_source* %ws) #0 !dbg !2045 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  %ws.addr = alloca %struct.wakeup_source*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2048, metadata !DIExpression()), !dbg !2049
  store %struct.wakeup_source* %ws, %struct.wakeup_source** %ws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws.addr, metadata !2050, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2052, metadata !DIExpression()), !dbg !2053
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2054
  %1 = load %struct.wakeup_source*, %struct.wakeup_source** %ws.addr, align 8, !dbg !2055
  %call = call %struct.device* @wakeup_source_device_create(%struct.device* %0, %struct.wakeup_source* %1) #7, !dbg !2056
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2057
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2058
  %3 = bitcast %struct.device* %2 to i8*, !dbg !2058
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #7, !dbg !2060
  br i1 %call1, label %if.then, label %if.end, !dbg !2061

if.then:                                          ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2062
  %5 = bitcast %struct.device* %4 to i8*, !dbg !2062
  %call2 = call i64 @PTR_ERR(i8* %5) #7, !dbg !2063
  %conv = trunc i64 %call2 to i32, !dbg !2063
  store i32 %conv, i32* %retval, align 4, !dbg !2064
  br label %return, !dbg !2064

if.end:                                           ; preds = %entry
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2065
  %7 = load %struct.wakeup_source*, %struct.wakeup_source** %ws.addr, align 8, !dbg !2066
  %dev3 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %7, i32 0, i32 17, !dbg !2067
  store %struct.device* %6, %struct.device** %dev3, align 8, !dbg !2068
  store i32 0, i32* %retval, align 4, !dbg !2069
  br label %return, !dbg !2069

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2070
  ret i32 %8, !dbg !2070
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @wakeup_source_device_create(%struct.device* %parent, %struct.wakeup_source* %ws) #0 !dbg !2071 {
entry:
  %retval = alloca %struct.device*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %ws.addr = alloca %struct.wakeup_source*, align 8
  %dev = alloca %struct.device*, align 8
  %retval1 = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2074, metadata !DIExpression()), !dbg !2075
  store %struct.wakeup_source* %ws, %struct.wakeup_source** %ws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws.addr, metadata !2076, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2078, metadata !DIExpression()), !dbg !2079
  store %struct.device* null, %struct.device** %dev, align 8, !dbg !2079
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2080, metadata !DIExpression()), !dbg !2081
  store i32 -19, i32* %retval1, align 4, !dbg !2081
  %call = call i8* @kzalloc(i64 696, i32 3264) #7, !dbg !2082
  %0 = bitcast i8* %call to %struct.device*, !dbg !2082
  store %struct.device* %0, %struct.device** %dev, align 8, !dbg !2083
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2084
  %tobool = icmp ne %struct.device* %1, null, !dbg !2084
  br i1 %tobool, label %if.end, label %if.then, !dbg !2086

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval1, align 4, !dbg !2087
  br label %error, !dbg !2089

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2090
  call void @device_initialize(%struct.device* %2) #7, !dbg !2091
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2092
  %devt = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 25, !dbg !2093
  store i32 0, i32* %devt, align 8, !dbg !2094
  %4 = load %struct.class*, %struct.class** @wakeup_class, align 8, !dbg !2095
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2096
  %class = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 29, !dbg !2097
  store %struct.class* %4, %struct.class** %class, align 8, !dbg !2098
  %6 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2099
  %7 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2100
  %parent2 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1, !dbg !2101
  store %struct.device* %6, %struct.device** %parent2, align 8, !dbg !2102
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2103
  %groups = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 30, !dbg !2104
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @wakeup_source_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !2105
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2106
  %release = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 31, !dbg !2107
  store void (%struct.device*)* @device_create_release, void (%struct.device*)** %release, align 8, !dbg !2108
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2109
  %11 = load %struct.wakeup_source*, %struct.wakeup_source** %ws.addr, align 8, !dbg !2110
  %12 = bitcast %struct.wakeup_source* %11 to i8*, !dbg !2110
  call void @dev_set_drvdata(%struct.device* %10, i8* %12) #7, !dbg !2111
  %13 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2112
  call void @device_set_pm_not_required(%struct.device* %13) #7, !dbg !2113
  %14 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2114
  %kobj = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0, !dbg !2115
  %15 = load %struct.wakeup_source*, %struct.wakeup_source** %ws.addr, align 8, !dbg !2116
  %id = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %15, i32 0, i32 1, !dbg !2117
  %16 = load i32, i32* %id, align 8, !dbg !2117
  %call3 = call i32 (%struct.kobject*, i8*, ...) @kobject_set_name(%struct.kobject* %kobj, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16) #7, !dbg !2118
  store i32 %call3, i32* %retval1, align 4, !dbg !2119
  %17 = load i32, i32* %retval1, align 4, !dbg !2120
  %tobool4 = icmp ne i32 %17, 0, !dbg !2120
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2122

if.then5:                                         ; preds = %if.end
  br label %error, !dbg !2123

if.end6:                                          ; preds = %if.end
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2124
  %call7 = call i32 @device_add(%struct.device* %18) #7, !dbg !2125
  store i32 %call7, i32* %retval1, align 4, !dbg !2126
  %19 = load i32, i32* %retval1, align 4, !dbg !2127
  %tobool8 = icmp ne i32 %19, 0, !dbg !2127
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2129

if.then9:                                         ; preds = %if.end6
  br label %error, !dbg !2130

if.end10:                                         ; preds = %if.end6
  %20 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2131
  store %struct.device* %20, %struct.device** %retval, align 8, !dbg !2132
  br label %return, !dbg !2132

error:                                            ; preds = %if.then9, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !2133), !dbg !2134
  %21 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2135
  call void @put_device(%struct.device* %21) #7, !dbg !2136
  %22 = load i32, i32* %retval1, align 4, !dbg !2137
  %conv = sext i32 %22 to i64, !dbg !2137
  %call11 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !2138
  %23 = bitcast i8* %call11 to %struct.device*, !dbg !2138
  store %struct.device* %23, %struct.device** %retval, align 8, !dbg !2139
  br label %return, !dbg !2139

return:                                           ; preds = %error, %if.end10
  %24 = load %struct.device*, %struct.device** %retval, align 8, !dbg !2140
  ret %struct.device* %24, !dbg !2140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2141 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2145, metadata !DIExpression()), !dbg !2146
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2147
  %1 = ptrtoint i8* %0 to i64, !dbg !2147
  %2 = inttoptr i64 %1 to i8*, !dbg !2147
  %3 = ptrtoint i8* %2 to i64, !dbg !2147
  %cmp = icmp uge i64 %3, -4095, !dbg !2147
  %lnot = xor i1 %cmp, true, !dbg !2147
  %lnot1 = xor i1 %lnot, true, !dbg !2147
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2147
  %conv = sext i32 %lnot.ext to i64, !dbg !2147
  %tobool = icmp ne i64 %conv, 0, !dbg !2147
  ret i1 %tobool, !dbg !2148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2149 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2152, metadata !DIExpression()), !dbg !2153
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2154
  %1 = ptrtoint i8* %0 to i64, !dbg !2155
  ret i64 %1, !dbg !2156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_wakeup_source_sysfs_add(%struct.device* %parent) #0 !dbg !2157 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.device*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2158, metadata !DIExpression()), !dbg !2159
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2160
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2162
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 6, !dbg !2163
  %1 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2163
  %tobool = icmp ne %struct.wakeup_source* %1, null, !dbg !2160
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2164

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2165
  %power1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 11, !dbg !2166
  %wakeup2 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2167
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup2, align 8, !dbg !2167
  %dev = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 17, !dbg !2168
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2168
  %tobool3 = icmp ne %struct.device* %4, null, !dbg !2165
  br i1 %tobool3, label %if.then, label %if.end, !dbg !2169

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2171
  %6 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2172
  %power4 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 11, !dbg !2173
  %wakeup5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 6, !dbg !2174
  %7 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup5, align 8, !dbg !2174
  %call = call i32 @wakeup_source_sysfs_add(%struct.device* %5, %struct.wakeup_source* %7) #7, !dbg !2175
  store i32 %call, i32* %retval, align 4, !dbg !2176
  br label %return, !dbg !2176

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !2177
  ret i32 %8, !dbg !2177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @wakeup_source_sysfs_remove(%struct.wakeup_source* %ws) #0 !dbg !2178 {
entry:
  %ws.addr = alloca %struct.wakeup_source*, align 8
  store %struct.wakeup_source* %ws, %struct.wakeup_source** %ws.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws.addr, metadata !2181, metadata !DIExpression()), !dbg !2182
  %0 = load %struct.wakeup_source*, %struct.wakeup_source** %ws.addr, align 8, !dbg !2183
  %dev = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %0, i32 0, i32 17, !dbg !2184
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2184
  call void @device_unregister(%struct.device* %1) #7, !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @wakeup_sources_sysfs_init() #3 section ".init.text" !dbg !2037 {
entry:
  %tmp = alloca %struct.class*, align 8
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %struct.lock_class_key* @wakeup_sources_sysfs_init.__key) #7, !dbg !2187
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !2187
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !2187
  store %struct.class* %0, %struct.class** @wakeup_class, align 8, !dbg !2189
  %1 = load %struct.class*, %struct.class** @wakeup_class, align 8, !dbg !2190
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2190
  %call1 = call i32 @PTR_ERR_OR_ZERO(i8* %2) #7, !dbg !2191
  ret i32 %call1, !dbg !2192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2193 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2196, metadata !DIExpression()), !dbg !2200
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2206, metadata !DIExpression()), !dbg !2207
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2208, metadata !DIExpression()), !dbg !2209
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2210, metadata !DIExpression()), !dbg !2211
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2212, metadata !DIExpression()), !dbg !2216
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2218, metadata !DIExpression()), !dbg !2222
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2224, metadata !DIExpression()), !dbg !2228
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2233, metadata !DIExpression()), !dbg !2234
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2235, metadata !DIExpression()), !dbg !2236
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2237, metadata !DIExpression()), !dbg !2238
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2239, metadata !DIExpression()), !dbg !2240
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2241, metadata !DIExpression()), !dbg !2242
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2243, metadata !DIExpression()), !dbg !2244
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2245, metadata !DIExpression()), !dbg !2246
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2247, metadata !DIExpression()), !dbg !2248
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2251, metadata !DIExpression()), !dbg !2252
  %0 = load i64, i64* %size.addr, align 8, !dbg !2253
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2254
  %or = or i32 %1, 256, !dbg !2255
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2256
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2257
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2258

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2259
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2260
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2261

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2262
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2263
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2264
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2265
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2242
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2266
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2267
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2268
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2269
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2270
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2271
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2272
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2272
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2272
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2272
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2272
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2273
  br label %kmalloc.exit, !dbg !2273

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2274
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2275
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2275
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2277

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2278
  br label %kmalloc_index.exit.i, !dbg !2278

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2279
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2281
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2282

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2283
  br label %kmalloc_index.exit.i, !dbg !2283

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2284
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2286
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2287

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2288
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2289
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2290

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2291
  br label %kmalloc_index.exit.i, !dbg !2291

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2292
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2294
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2295

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2296
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2297
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2298

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2299
  br label %kmalloc_index.exit.i, !dbg !2299

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2300
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2302
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2303

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2304
  br label %kmalloc_index.exit.i, !dbg !2304

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2305
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2307
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2308

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2309
  br label %kmalloc_index.exit.i, !dbg !2309

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2310
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2312
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2313

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2314
  br label %kmalloc_index.exit.i, !dbg !2314

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2315
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2317
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2318

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2319
  br label %kmalloc_index.exit.i, !dbg !2319

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2320
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2322
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2323

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2324
  br label %kmalloc_index.exit.i, !dbg !2324

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2325
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2327
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2328

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2329
  br label %kmalloc_index.exit.i, !dbg !2329

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2330
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2332
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2333

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2334
  br label %kmalloc_index.exit.i, !dbg !2334

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2335
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2337
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2338

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2339
  br label %kmalloc_index.exit.i, !dbg !2339

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2340
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2342
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2343

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2344
  br label %kmalloc_index.exit.i, !dbg !2344

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2345
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2347
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2348

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2349
  br label %kmalloc_index.exit.i, !dbg !2349

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2350
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2352
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2353

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2354
  br label %kmalloc_index.exit.i, !dbg !2354

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2355
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2357
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2358

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2359
  br label %kmalloc_index.exit.i, !dbg !2359

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2360
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2362
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2363

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2364
  br label %kmalloc_index.exit.i, !dbg !2364

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2365
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2367
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2368

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2369
  br label %kmalloc_index.exit.i, !dbg !2369

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2370
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2372
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2373

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2374
  br label %kmalloc_index.exit.i, !dbg !2374

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2375
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2377
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2378

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2379
  br label %kmalloc_index.exit.i, !dbg !2379

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2380
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2382
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2383

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2384
  br label %kmalloc_index.exit.i, !dbg !2384

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2385
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2387
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2388

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2389
  br label %kmalloc_index.exit.i, !dbg !2389

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2390
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2392
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2393

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2394
  br label %kmalloc_index.exit.i, !dbg !2394

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2395
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2397
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2398

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2399
  br label %kmalloc_index.exit.i, !dbg !2399

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2400
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2402
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2403

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2404
  br label %kmalloc_index.exit.i, !dbg !2404

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2405
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2407
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2408

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2409
  br label %kmalloc_index.exit.i, !dbg !2409

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2410
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2412
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2413

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2414
  br label %kmalloc_index.exit.i, !dbg !2414

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2415
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2417
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2418

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2419
  br label %kmalloc_index.exit.i, !dbg !2419

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2420, !srcloc !2423
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !2424, !srcloc !2427
  unreachable, !dbg !2428

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2429
  store i32 %45, i32* %index.i, align 4, !dbg !2430
  %46 = load i32, i32* %index.i, align 4, !dbg !2431
  %tobool.i = icmp ne i32 %46, 0, !dbg !2431
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2433

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2434
  br label %kmalloc.exit, !dbg !2434

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2435
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2436
  %and.i.i = and i32 %48, 17, !dbg !2436
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2436
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2436
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2436
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2436
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2438

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2439
  br label %kmalloc_type.exit.i, !dbg !2439

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2440
  %and2.i.i = and i32 %49, 1, !dbg !2441
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2440
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2440
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2440
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2442
  br label %kmalloc_type.exit.i, !dbg !2442

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2443
  %idxprom.i = zext i32 %51 to i64, !dbg !2444
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2444
  %52 = load i32, i32* %index.i, align 4, !dbg !2445
  %idxprom6.i = zext i32 %52 to i64, !dbg !2444
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2444
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2444
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2446
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2447
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2448
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2449
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2450
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2450
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2450
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2450
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2450
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2211
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2451
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2452
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2453
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2454
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2455
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2456
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2457
  store i8* %62, i8** %retval.i, align 8, !dbg !2458
  br label %kmalloc.exit, !dbg !2458

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2459
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2460
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2461
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2461
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2461
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2461
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2461
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2462
  br label %kmalloc.exit, !dbg !2462

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2463
  ret i8* %65, !dbg !2464
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_create_release(%struct.device* %dev) #0 !dbg !2465 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2466, metadata !DIExpression()), !dbg !2467
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2468
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2468
  call void @kfree(i8* %1) #7, !dbg !2469
  ret void, !dbg !2470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !2471 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2476, metadata !DIExpression()), !dbg !2477
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2478
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2479
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2480
  store i8* %0, i8** %driver_data, align 8, !dbg !2481
  ret void, !dbg !2482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_set_pm_not_required(%struct.device* %dev) #0 !dbg !2483 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2486
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2487
  %no_pm = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2488
  %bf.load = load i16, i16* %no_pm, align 4, !dbg !2489
  %bf.clear = and i16 %bf.load, -129, !dbg !2489
  %bf.set = or i16 %bf.clear, 128, !dbg !2489
  store i16 %bf.set, i16* %no_pm, align 4, !dbg !2489
  ret void, !dbg !2490
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_set_name(%struct.kobject*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2491 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2494, metadata !DIExpression()), !dbg !2495
  %0 = load i64, i64* %error.addr, align 8, !dbg !2496
  %1 = inttoptr i64 %0 to i8*, !dbg !2497
  ret i8* %1, !dbg !2498
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2499 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2503, metadata !DIExpression()), !dbg !2508
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2510, metadata !DIExpression()), !dbg !2511
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2512, metadata !DIExpression()), !dbg !2513
  %0 = load i64, i64* %size.addr, align 8, !dbg !2514
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2516
  br i1 %1, label %if.then, label %if.end447, !dbg !2517

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2518
  %tobool = icmp ne i64 %2, 0, !dbg !2518
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2521

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2522
  br label %return, !dbg !2522

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2523
  %cmp = icmp ult i64 %3, 4096, !dbg !2525
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2526

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2527
  br label %return, !dbg !2527

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub = sub i64 %4, 1, !dbg !2528
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2528
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2528

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub4 = sub i64 %6, 1, !dbg !2528
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2528
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2528

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub6 = sub i64 %8, 1, !dbg !2528
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2528
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2528

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2528

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub9 = sub i64 %9, 1, !dbg !2528
  %and = and i64 %sub9, -9223372036854775808, !dbg !2528
  %tobool10 = icmp ne i64 %and, 0, !dbg !2528
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2528

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2528

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub13 = sub i64 %10, 1, !dbg !2528
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2528
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2528
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2528

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2528

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub18 = sub i64 %11, 1, !dbg !2528
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2528
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2528
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2528

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2528

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub23 = sub i64 %12, 1, !dbg !2528
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2528
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2528
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2528

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2528

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub28 = sub i64 %13, 1, !dbg !2528
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2528
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2528
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2528

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2528

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub33 = sub i64 %14, 1, !dbg !2528
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2528
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2528
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2528

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2528

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub38 = sub i64 %15, 1, !dbg !2528
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2528
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2528
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2528

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2528

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub43 = sub i64 %16, 1, !dbg !2528
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2528
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2528
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2528

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2528

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub48 = sub i64 %17, 1, !dbg !2528
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2528
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2528
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2528

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2528

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub53 = sub i64 %18, 1, !dbg !2528
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2528
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2528
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2528

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2528

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub58 = sub i64 %19, 1, !dbg !2528
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2528
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2528
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2528

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2528

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub63 = sub i64 %20, 1, !dbg !2528
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2528
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2528
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2528

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2528

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub68 = sub i64 %21, 1, !dbg !2528
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2528
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2528
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2528

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2528

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub73 = sub i64 %22, 1, !dbg !2528
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2528
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2528
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2528

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2528

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub78 = sub i64 %23, 1, !dbg !2528
  %and79 = and i64 %sub78, 562949953421312, !dbg !2528
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2528
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2528

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2528

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub83 = sub i64 %24, 1, !dbg !2528
  %and84 = and i64 %sub83, 281474976710656, !dbg !2528
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2528
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2528

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2528

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub88 = sub i64 %25, 1, !dbg !2528
  %and89 = and i64 %sub88, 140737488355328, !dbg !2528
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2528
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2528

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2528

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub93 = sub i64 %26, 1, !dbg !2528
  %and94 = and i64 %sub93, 70368744177664, !dbg !2528
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2528
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2528

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2528

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub98 = sub i64 %27, 1, !dbg !2528
  %and99 = and i64 %sub98, 35184372088832, !dbg !2528
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2528
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2528

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2528

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub103 = sub i64 %28, 1, !dbg !2528
  %and104 = and i64 %sub103, 17592186044416, !dbg !2528
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2528
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2528

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2528

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub108 = sub i64 %29, 1, !dbg !2528
  %and109 = and i64 %sub108, 8796093022208, !dbg !2528
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2528
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2528

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2528

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub113 = sub i64 %30, 1, !dbg !2528
  %and114 = and i64 %sub113, 4398046511104, !dbg !2528
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2528
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2528

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2528

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub118 = sub i64 %31, 1, !dbg !2528
  %and119 = and i64 %sub118, 2199023255552, !dbg !2528
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2528
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2528

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2528

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub123 = sub i64 %32, 1, !dbg !2528
  %and124 = and i64 %sub123, 1099511627776, !dbg !2528
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2528
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2528

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2528

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub128 = sub i64 %33, 1, !dbg !2528
  %and129 = and i64 %sub128, 549755813888, !dbg !2528
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2528
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2528

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2528

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub133 = sub i64 %34, 1, !dbg !2528
  %and134 = and i64 %sub133, 274877906944, !dbg !2528
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2528
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2528

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2528

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub138 = sub i64 %35, 1, !dbg !2528
  %and139 = and i64 %sub138, 137438953472, !dbg !2528
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2528
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2528

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2528

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub143 = sub i64 %36, 1, !dbg !2528
  %and144 = and i64 %sub143, 68719476736, !dbg !2528
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2528
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2528

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2528

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub148 = sub i64 %37, 1, !dbg !2528
  %and149 = and i64 %sub148, 34359738368, !dbg !2528
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2528
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2528

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2528

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub153 = sub i64 %38, 1, !dbg !2528
  %and154 = and i64 %sub153, 17179869184, !dbg !2528
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2528
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2528

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2528

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub158 = sub i64 %39, 1, !dbg !2528
  %and159 = and i64 %sub158, 8589934592, !dbg !2528
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2528
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2528

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2528

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub163 = sub i64 %40, 1, !dbg !2528
  %and164 = and i64 %sub163, 4294967296, !dbg !2528
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2528
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2528

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2528

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub168 = sub i64 %41, 1, !dbg !2528
  %and169 = and i64 %sub168, 2147483648, !dbg !2528
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2528
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2528

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2528

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub173 = sub i64 %42, 1, !dbg !2528
  %and174 = and i64 %sub173, 1073741824, !dbg !2528
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2528
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2528

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2528

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub178 = sub i64 %43, 1, !dbg !2528
  %and179 = and i64 %sub178, 536870912, !dbg !2528
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2528
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2528

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2528

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub183 = sub i64 %44, 1, !dbg !2528
  %and184 = and i64 %sub183, 268435456, !dbg !2528
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2528
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2528

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2528

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub188 = sub i64 %45, 1, !dbg !2528
  %and189 = and i64 %sub188, 134217728, !dbg !2528
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2528
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2528

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2528

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub193 = sub i64 %46, 1, !dbg !2528
  %and194 = and i64 %sub193, 67108864, !dbg !2528
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2528
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2528

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2528

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub198 = sub i64 %47, 1, !dbg !2528
  %and199 = and i64 %sub198, 33554432, !dbg !2528
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2528
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2528

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2528

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub203 = sub i64 %48, 1, !dbg !2528
  %and204 = and i64 %sub203, 16777216, !dbg !2528
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2528
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2528

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2528

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub208 = sub i64 %49, 1, !dbg !2528
  %and209 = and i64 %sub208, 8388608, !dbg !2528
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2528
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2528

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2528

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub213 = sub i64 %50, 1, !dbg !2528
  %and214 = and i64 %sub213, 4194304, !dbg !2528
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2528
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2528

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2528

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub218 = sub i64 %51, 1, !dbg !2528
  %and219 = and i64 %sub218, 2097152, !dbg !2528
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2528
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2528

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2528

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub223 = sub i64 %52, 1, !dbg !2528
  %and224 = and i64 %sub223, 1048576, !dbg !2528
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2528
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2528

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2528

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub228 = sub i64 %53, 1, !dbg !2528
  %and229 = and i64 %sub228, 524288, !dbg !2528
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2528
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2528

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2528

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub233 = sub i64 %54, 1, !dbg !2528
  %and234 = and i64 %sub233, 262144, !dbg !2528
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2528
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2528

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2528

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub238 = sub i64 %55, 1, !dbg !2528
  %and239 = and i64 %sub238, 131072, !dbg !2528
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2528
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2528

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2528

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub243 = sub i64 %56, 1, !dbg !2528
  %and244 = and i64 %sub243, 65536, !dbg !2528
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2528
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2528

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2528

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub248 = sub i64 %57, 1, !dbg !2528
  %and249 = and i64 %sub248, 32768, !dbg !2528
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2528
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2528

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2528

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub253 = sub i64 %58, 1, !dbg !2528
  %and254 = and i64 %sub253, 16384, !dbg !2528
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2528
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2528

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2528

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub258 = sub i64 %59, 1, !dbg !2528
  %and259 = and i64 %sub258, 8192, !dbg !2528
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2528
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2528

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2528

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub263 = sub i64 %60, 1, !dbg !2528
  %and264 = and i64 %sub263, 4096, !dbg !2528
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2528
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2528

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2528

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub268 = sub i64 %61, 1, !dbg !2528
  %and269 = and i64 %sub268, 2048, !dbg !2528
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2528
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2528

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2528

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub273 = sub i64 %62, 1, !dbg !2528
  %and274 = and i64 %sub273, 1024, !dbg !2528
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2528
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2528

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2528

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub278 = sub i64 %63, 1, !dbg !2528
  %and279 = and i64 %sub278, 512, !dbg !2528
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2528
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2528

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2528

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub283 = sub i64 %64, 1, !dbg !2528
  %and284 = and i64 %sub283, 256, !dbg !2528
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2528
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2528

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2528

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub288 = sub i64 %65, 1, !dbg !2528
  %and289 = and i64 %sub288, 128, !dbg !2528
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2528
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2528

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2528

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub293 = sub i64 %66, 1, !dbg !2528
  %and294 = and i64 %sub293, 64, !dbg !2528
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2528
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2528

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2528

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub298 = sub i64 %67, 1, !dbg !2528
  %and299 = and i64 %sub298, 32, !dbg !2528
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2528
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2528

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2528

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub303 = sub i64 %68, 1, !dbg !2528
  %and304 = and i64 %sub303, 16, !dbg !2528
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2528
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2528

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2528

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub308 = sub i64 %69, 1, !dbg !2528
  %and309 = and i64 %sub308, 8, !dbg !2528
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2528
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2528

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2528

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub313 = sub i64 %70, 1, !dbg !2528
  %and314 = and i64 %sub313, 4, !dbg !2528
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2528
  %71 = zext i1 %tobool315 to i64, !dbg !2528
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2528
  br label %cond.end, !dbg !2528

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2528
  br label %cond.end317, !dbg !2528

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2528
  br label %cond.end319, !dbg !2528

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2528
  br label %cond.end321, !dbg !2528

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2528
  br label %cond.end323, !dbg !2528

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2528
  br label %cond.end325, !dbg !2528

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2528
  br label %cond.end327, !dbg !2528

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2528
  br label %cond.end329, !dbg !2528

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2528
  br label %cond.end331, !dbg !2528

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2528
  br label %cond.end333, !dbg !2528

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2528
  br label %cond.end335, !dbg !2528

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2528
  br label %cond.end337, !dbg !2528

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2528
  br label %cond.end339, !dbg !2528

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2528
  br label %cond.end341, !dbg !2528

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2528
  br label %cond.end343, !dbg !2528

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2528
  br label %cond.end345, !dbg !2528

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2528
  br label %cond.end347, !dbg !2528

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2528
  br label %cond.end349, !dbg !2528

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2528
  br label %cond.end351, !dbg !2528

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2528
  br label %cond.end353, !dbg !2528

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2528
  br label %cond.end355, !dbg !2528

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2528
  br label %cond.end357, !dbg !2528

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2528
  br label %cond.end359, !dbg !2528

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2528
  br label %cond.end361, !dbg !2528

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2528
  br label %cond.end363, !dbg !2528

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2528
  br label %cond.end365, !dbg !2528

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2528
  br label %cond.end367, !dbg !2528

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2528
  br label %cond.end369, !dbg !2528

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2528
  br label %cond.end371, !dbg !2528

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2528
  br label %cond.end373, !dbg !2528

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2528
  br label %cond.end375, !dbg !2528

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2528
  br label %cond.end377, !dbg !2528

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2528
  br label %cond.end379, !dbg !2528

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2528
  br label %cond.end381, !dbg !2528

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2528
  br label %cond.end383, !dbg !2528

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2528
  br label %cond.end385, !dbg !2528

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2528
  br label %cond.end387, !dbg !2528

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2528
  br label %cond.end389, !dbg !2528

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2528
  br label %cond.end391, !dbg !2528

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2528
  br label %cond.end393, !dbg !2528

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2528
  br label %cond.end395, !dbg !2528

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2528
  br label %cond.end397, !dbg !2528

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2528
  br label %cond.end399, !dbg !2528

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2528
  br label %cond.end401, !dbg !2528

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2528
  br label %cond.end403, !dbg !2528

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2528
  br label %cond.end405, !dbg !2528

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2528
  br label %cond.end407, !dbg !2528

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2528
  br label %cond.end409, !dbg !2528

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2528
  br label %cond.end411, !dbg !2528

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2528
  br label %cond.end413, !dbg !2528

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2528
  br label %cond.end415, !dbg !2528

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2528
  br label %cond.end417, !dbg !2528

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2528
  br label %cond.end419, !dbg !2528

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2528
  br label %cond.end421, !dbg !2528

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2528
  br label %cond.end423, !dbg !2528

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2528
  br label %cond.end425, !dbg !2528

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2528
  br label %cond.end427, !dbg !2528

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2528
  br label %cond.end429, !dbg !2528

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2528
  br label %cond.end431, !dbg !2528

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2528
  br label %cond.end433, !dbg !2528

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2528
  br label %cond.end435, !dbg !2528

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2528
  br label %cond.end437, !dbg !2528

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2528
  br label %cond.end440, !dbg !2528

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2528

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2528
  br label %cond.end444, !dbg !2528

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2528
  %sub443 = sub i64 %72, 1, !dbg !2528
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2528
  br label %cond.end444, !dbg !2528

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2528
  %sub446 = sub i32 %cond445, 12, !dbg !2529
  %add = add i32 %sub446, 1, !dbg !2530
  store i32 %add, i32* %retval, align 4, !dbg !2531
  br label %return, !dbg !2531

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2532
  %dec = add i64 %73, -1, !dbg !2532
  store i64 %dec, i64* %size.addr, align 8, !dbg !2532
  %74 = load i64, i64* %size.addr, align 8, !dbg !2533
  %shr = lshr i64 %74, 12, !dbg !2533
  store i64 %shr, i64* %size.addr, align 8, !dbg !2533
  %75 = load i64, i64* %size.addr, align 8, !dbg !2534
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2511
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2535
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2536
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !2535, !srcloc !2537
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2535
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2538
  %add.i = add i32 %79, 1, !dbg !2539
  store i32 %add.i, i32* %retval, align 4, !dbg !2540
  br label %return, !dbg !2540

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2541
  ret i32 %80, !dbg !2541
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2542 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2503, metadata !DIExpression()), !dbg !2546
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2510, metadata !DIExpression()), !dbg !2548
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2549, metadata !DIExpression()), !dbg !2550
  %0 = load i64, i64* %n.addr, align 8, !dbg !2551
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2548
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2552
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2553
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !2552, !srcloc !2537
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2552
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2554
  %add.i = add i32 %4, 1, !dbg !2555
  %sub = sub i32 %add.i, 1, !dbg !2556
  ret i32 %sub, !dbg !2557
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2558 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2566, metadata !DIExpression()), !dbg !2567
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2568, metadata !DIExpression()), !dbg !2569
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2570
  ret i8* %0, !dbg !2571
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @name_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2572 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2573, metadata !DIExpression()), !dbg !2574
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2575, metadata !DIExpression()), !dbg !2576
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2577, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2579, metadata !DIExpression()), !dbg !2580
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2581
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2582
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2582
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2580
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2583
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2584
  %name = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 0, !dbg !2585
  %4 = load i8*, i8** %name, align 8, !dbg !2585
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %4) #7, !dbg !2586
  %conv = sext i32 %call1 to i64, !dbg !2586
  ret i64 %conv, !dbg !2587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2588 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2595
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2596
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2596
  ret i8* %1, !dbg !2597
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @active_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2598 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2599, metadata !DIExpression()), !dbg !2600
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2601, metadata !DIExpression()), !dbg !2600
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2602, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2603, metadata !DIExpression()), !dbg !2600
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2600
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2600
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2600
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2600
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2600
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2600
  %active_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 13, !dbg !2600
  %4 = load i64, i64* %active_count, align 8, !dbg !2600
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %4) #7, !dbg !2600
  %conv = sext i32 %call1 to i64, !dbg !2600
  ret i64 %conv, !dbg !2600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @event_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2604 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2605, metadata !DIExpression()), !dbg !2606
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2607, metadata !DIExpression()), !dbg !2606
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2608, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2609, metadata !DIExpression()), !dbg !2606
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2606
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2606
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2606
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2606
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2606
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2606
  %event_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 12, !dbg !2606
  %4 = load i64, i64* %event_count, align 8, !dbg !2606
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %4) #7, !dbg !2606
  %conv = sext i32 %call1 to i64, !dbg !2606
  ret i64 %conv, !dbg !2606
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2610 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2613, metadata !DIExpression()), !dbg !2612
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2614, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2615, metadata !DIExpression()), !dbg !2612
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2612
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2612
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2612
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2612
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2612
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2612
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 16, !dbg !2612
  %4 = load i64, i64* %wakeup_count, align 8, !dbg !2612
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %4) #7, !dbg !2612
  %conv = sext i32 %call1 to i64, !dbg !2612
  ret i64 %conv, !dbg !2612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @expire_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2616 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2619, metadata !DIExpression()), !dbg !2618
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2620, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2621, metadata !DIExpression()), !dbg !2618
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2618
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2618
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2618
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2618
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2618
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2618
  %expire_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 15, !dbg !2618
  %4 = load i64, i64* %expire_count, align 8, !dbg !2618
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %4) #7, !dbg !2618
  %conv = sext i32 %call1 to i64, !dbg !2618
  ret i64 %conv, !dbg !2618
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @active_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2622 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  %active_time = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2623, metadata !DIExpression()), !dbg !2624
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2629, metadata !DIExpression()), !dbg !2630
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2631
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2632
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2632
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2630
  call void @llvm.dbg.declare(metadata i64* %active_time, metadata !2633, metadata !DIExpression()), !dbg !2634
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2635
  %active = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %2, i32 0, i32 18, !dbg !2636
  %bf.load = load i8, i8* %active, align 8, !dbg !2636
  %bf.clear = and i8 %bf.load, 1, !dbg !2636
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2636
  br i1 %bf.cast, label %cond.true, label %cond.false, !dbg !2635

cond.true:                                        ; preds = %entry
  %call1 = call i64 @ktime_get() #7, !dbg !2637
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2637
  %last_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 9, !dbg !2637
  %4 = load i64, i64* %last_time, align 8, !dbg !2637
  %sub = sub i64 %call1, %4, !dbg !2637
  br label %cond.end, !dbg !2635

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2635

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !2635
  store i64 %cond, i64* %active_time, align 8, !dbg !2634
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !2638
  %6 = load i64, i64* %active_time, align 8, !dbg !2639
  %call2 = call i64 @ktime_to_ms(i64 %6) #7, !dbg !2640
  %call3 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %call2) #7, !dbg !2641
  %conv = sext i32 %call3 to i64, !dbg !2641
  ret i64 %conv, !dbg !2642
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ms(i64 %kt) #0 !dbg !2643 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2647, metadata !DIExpression()), !dbg !2648
  %0 = load i64, i64* %kt.addr, align 8, !dbg !2649
  %call = call i64 @ktime_divns(i64 %0, i64 1000000) #7, !dbg !2650
  ret i64 %call, !dbg !2651
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !2652 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !2655, metadata !DIExpression()), !dbg !2656
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2659, metadata !DIExpression()), !dbg !2661
  %0 = load i64, i64* %div.addr, align 8, !dbg !2661
  %cmp = icmp slt i64 %0, 0, !dbg !2661
  %lnot = xor i1 %cmp, true, !dbg !2661
  %lnot1 = xor i1 %lnot, true, !dbg !2661
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2661
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2661
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2662
  %tobool = icmp ne i32 %1, 0, !dbg !2662
  %lnot2 = xor i1 %tobool, true, !dbg !2662
  %lnot4 = xor i1 %lnot2, true, !dbg !2662
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2662
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2662
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2662
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2661

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2662

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !2664

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2666

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !2664

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 154, i32 2305, i64 12) #8, !dbg !2668, !srcloc !2670
  br label %do.end9, !dbg !2668

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 93) #8, !dbg !2671, !srcloc !2673
  br label %do.body10, !dbg !2664

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2674

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !2664

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !2664

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2661
  %tobool13 = icmp ne i32 %2, 0, !dbg !2661
  %lnot14 = xor i1 %tobool13, true, !dbg !2661
  %lnot16 = xor i1 %lnot14, true, !dbg !2661
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !2661
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !2661
  store i64 %conv18, i64* %tmp, align 8, !dbg !2662
  %3 = load i64, i64* %tmp, align 8, !dbg !2661
  %4 = load i64, i64* %kt.addr, align 8, !dbg !2676
  %5 = load i64, i64* %div.addr, align 8, !dbg !2677
  %div19 = sdiv i64 %4, %5, !dbg !2678
  ret i64 %div19, !dbg !2679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @total_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2680 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  %active_time = alloca i64, align 8
  %total_time = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2687, metadata !DIExpression()), !dbg !2688
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2689
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2690
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2690
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2688
  call void @llvm.dbg.declare(metadata i64* %active_time, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.declare(metadata i64* %total_time, metadata !2693, metadata !DIExpression()), !dbg !2694
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2695
  %total_time1 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %2, i32 0, i32 7, !dbg !2696
  %3 = load i64, i64* %total_time1, align 8, !dbg !2696
  store i64 %3, i64* %total_time, align 8, !dbg !2694
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2697
  %active = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %4, i32 0, i32 18, !dbg !2699
  %bf.load = load i8, i8* %active, align 8, !dbg !2699
  %bf.clear = and i8 %bf.load, 1, !dbg !2699
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2699
  br i1 %bf.cast, label %if.then, label %if.end, !dbg !2700

if.then:                                          ; preds = %entry
  %call2 = call i64 @ktime_get() #7, !dbg !2701
  %5 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2701
  %last_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %5, i32 0, i32 9, !dbg !2701
  %6 = load i64, i64* %last_time, align 8, !dbg !2701
  %sub = sub i64 %call2, %6, !dbg !2701
  store i64 %sub, i64* %active_time, align 8, !dbg !2703
  %7 = load i64, i64* %total_time, align 8, !dbg !2704
  %8 = load i64, i64* %active_time, align 8, !dbg !2704
  %add = add i64 %7, %8, !dbg !2704
  store i64 %add, i64* %total_time, align 8, !dbg !2705
  br label %if.end, !dbg !2706

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !2707
  %10 = load i64, i64* %total_time, align 8, !dbg !2708
  %call3 = call i64 @ktime_to_ms(i64 %10) #7, !dbg !2709
  %call4 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %call3) #7, !dbg !2710
  %conv = sext i32 %call4 to i64, !dbg !2710
  ret i64 %conv, !dbg !2711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @max_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2712 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  %active_time = alloca i64, align 8
  %max_time = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2719, metadata !DIExpression()), !dbg !2720
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2721
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2722
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2722
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2720
  call void @llvm.dbg.declare(metadata i64* %active_time, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.declare(metadata i64* %max_time, metadata !2725, metadata !DIExpression()), !dbg !2726
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2727
  %max_time1 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %2, i32 0, i32 8, !dbg !2728
  %3 = load i64, i64* %max_time1, align 8, !dbg !2728
  store i64 %3, i64* %max_time, align 8, !dbg !2726
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2729
  %active = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %4, i32 0, i32 18, !dbg !2731
  %bf.load = load i8, i8* %active, align 8, !dbg !2731
  %bf.clear = and i8 %bf.load, 1, !dbg !2731
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2731
  br i1 %bf.cast, label %if.then, label %if.end4, !dbg !2732

if.then:                                          ; preds = %entry
  %call2 = call i64 @ktime_get() #7, !dbg !2733
  %5 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2733
  %last_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %5, i32 0, i32 9, !dbg !2733
  %6 = load i64, i64* %last_time, align 8, !dbg !2733
  %sub = sub i64 %call2, %6, !dbg !2733
  store i64 %sub, i64* %active_time, align 8, !dbg !2735
  %7 = load i64, i64* %active_time, align 8, !dbg !2736
  %8 = load i64, i64* %max_time, align 8, !dbg !2738
  %cmp = icmp sgt i64 %7, %8, !dbg !2739
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2740

if.then3:                                         ; preds = %if.then
  %9 = load i64, i64* %active_time, align 8, !dbg !2741
  store i64 %9, i64* %max_time, align 8, !dbg !2742
  br label %if.end, !dbg !2743

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4, !dbg !2744

if.end4:                                          ; preds = %if.end, %entry
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !2745
  %11 = load i64, i64* %max_time, align 8, !dbg !2746
  %call5 = call i64 @ktime_to_ms(i64 %11) #7, !dbg !2747
  %call6 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %call5) #7, !dbg !2748
  %conv = sext i32 %call6 to i64, !dbg !2748
  ret i64 %conv, !dbg !2749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @last_change_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2750 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2757, metadata !DIExpression()), !dbg !2758
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2759
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2760
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2760
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2758
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !2761
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2762
  %last_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 9, !dbg !2763
  %4 = load i64, i64* %last_time, align 8, !dbg !2763
  %call1 = call i64 @ktime_to_ms(i64 %4) #7, !dbg !2764
  %call2 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %call1) #7, !dbg !2765
  %conv = sext i32 %call2 to i64, !dbg !2765
  ret i64 %conv, !dbg !2766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @prevent_suspend_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2767 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ws = alloca %struct.wakeup_source*, align 8
  %prevent_sleep_time = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2768, metadata !DIExpression()), !dbg !2769
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata %struct.wakeup_source** %ws, metadata !2774, metadata !DIExpression()), !dbg !2775
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2776
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !2777
  %1 = bitcast i8* %call to %struct.wakeup_source*, !dbg !2777
  store %struct.wakeup_source* %1, %struct.wakeup_source** %ws, align 8, !dbg !2775
  call void @llvm.dbg.declare(metadata i64* %prevent_sleep_time, metadata !2778, metadata !DIExpression()), !dbg !2779
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2780
  %prevent_sleep_time1 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %2, i32 0, i32 11, !dbg !2781
  %3 = load i64, i64* %prevent_sleep_time1, align 8, !dbg !2781
  store i64 %3, i64* %prevent_sleep_time, align 8, !dbg !2779
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2782
  %active = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %4, i32 0, i32 18, !dbg !2784
  %bf.load = load i8, i8* %active, align 8, !dbg !2784
  %bf.clear = and i8 %bf.load, 1, !dbg !2784
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2784
  br i1 %bf.cast, label %land.lhs.true, label %if.end, !dbg !2785

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2786
  %autosleep_enabled = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %5, i32 0, i32 18, !dbg !2787
  %bf.load2 = load i8, i8* %autosleep_enabled, align 8, !dbg !2787
  %bf.lshr = lshr i8 %bf.load2, 1, !dbg !2787
  %bf.clear3 = and i8 %bf.lshr, 1, !dbg !2787
  %bf.cast4 = trunc i8 %bf.clear3 to i1, !dbg !2787
  br i1 %bf.cast4, label %if.then, label %if.end, !dbg !2788

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* %prevent_sleep_time, align 8, !dbg !2789
  %call5 = call i64 @ktime_get() #7, !dbg !2789
  %7 = load %struct.wakeup_source*, %struct.wakeup_source** %ws, align 8, !dbg !2789
  %start_prevent_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %7, i32 0, i32 10, !dbg !2789
  %8 = load i64, i64* %start_prevent_time, align 8, !dbg !2789
  %sub = sub i64 %call5, %8, !dbg !2789
  %add = add i64 %6, %sub, !dbg !2789
  store i64 %add, i64* %prevent_sleep_time, align 8, !dbg !2791
  br label %if.end, !dbg !2792

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !2793
  %10 = load i64, i64* %prevent_sleep_time, align 8, !dbg !2794
  %call6 = call i64 @ktime_to_ms(i64 %10) #7, !dbg !2795
  %call7 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %call6) #7, !dbg !2796
  %conv = sext i32 %call7 to i64, !dbg !2796
  ret i64 %conv, !dbg !2797
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #0 !dbg !2798 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2803
  %call = call zeroext i1 @IS_ERR(i8* %0) #7, !dbg !2805
  br i1 %call, label %if.then, label %if.else, !dbg !2806

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !2807
  %call1 = call i64 @PTR_ERR(i8* %1) #7, !dbg !2808
  %conv = trunc i64 %call1 to i32, !dbg !2808
  store i32 %conv, i32* %retval, align 4, !dbg !2809
  br label %return, !dbg !2809

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2810
  br label %return, !dbg !2810

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2811
  ret i32 %2, !dbg !2811
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2040, !2041, !2042, !2043}
!llvm.ident = !{!2044}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wakeup_sources_sysfs_init158", scope: !2, file: !3, line: 217, type: !82, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !79, globals: !88, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/wakeup_stats.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !74}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !51, line: 41, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PM_QOS_MAX", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PM_QOS_MIN", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !51, line: 99, baseType: !7, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4, isUnsigned: true)
!62 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !51, line: 80, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2, isUnsigned: true)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !68, line: 305, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 10, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!79 = !{!80, !82, !83, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 148, baseType: !7)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !87, line: 76, flags: DIFlagFwdDecl)
!87 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!0, !89, !1993, !1996, !1998, !2003, !2017, !2019, !2021, !2023, !2025, !2027, !2029, !2031, !2033, !2035}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "wakeup_class", scope: !2, file: !3, line: 21, type: !91, isLocal: true, isDefinition: true)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !93, line: 54, size: 960, elements: !94)
!93 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !99, !100, !1573, !1574, !1575, !1972, !1976, !1980, !1981, !1982, !1983, !1987, !1991, !1992}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !93, line: 55, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !92, file: !93, line: 56, baseType: !85, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !92, file: !93, line: 58, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !105, line: 84, size: 320, elements: !106)
!105 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108, !1551, !1570, !1571}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !105, line: 85, baseType: !96, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !104, file: !105, line: 86, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !114, !208, !158}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 19, baseType: !113)
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !116, line: 64, size: 512, elements: !117)
!116 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !119, !125, !126, !187, !281, !1541, !1546, !1547, !1548, !1549, !1550}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !116, line: 65, baseType: !96, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !115, file: !116, line: 66, baseType: !120, size: 128, offset: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 178, size: 128, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !81, line: 179, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !120, file: !81, line: 179, baseType: !123, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !115, file: !116, line: 67, baseType: !114, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !115, file: !116, line: 68, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !116, line: 192, size: 704, elements: !129)
!129 = !{!130, !131, !147, !148}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !128, file: !116, line: 193, baseType: !120, size: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !128, file: !116, line: 194, baseType: !132, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !133, line: 83, baseType: !134)
!133 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !133, line: 71, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !133, line: 72, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !133, line: 72, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !137, file: !133, line: 73, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !133, line: 20, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !140, file: !133, line: 21, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !144, line: 25, baseType: !145)
!144 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 25, elements: !146)
!146 = !{}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !116, line: 195, baseType: !115, size: 512, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !128, file: !116, line: 196, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !116, line: 156, size: 192, elements: !152)
!152 = !{!153, !159, !164}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !151, file: !116, line: 157, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !127, !114}
!158 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !116, line: 158, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!96, !127, !114}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !151, file: !116, line: 159, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!158, !127, !114, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !116, line: 148, size: 20736, elements: !171)
!171 = !{!172, !177, !181, !182, !186}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !170, file: !116, line: 149, baseType: !173, size: 192)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 192, elements: !175)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!175 = !{!176}
!176 = !DISubrange(count: 3)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !170, file: !116, line: 150, baseType: !178, size: 4096, offset: 192)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 4096, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !170, file: !116, line: 151, baseType: !158, size: 32, offset: 4288)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !170, file: !116, line: 152, baseType: !183, size: 16384, offset: 4320)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16384, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2048)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !170, file: !116, line: 153, baseType: !158, size: 32, offset: 20704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !115, file: !116, line: 69, baseType: !188, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !116, line: 138, size: 448, elements: !190)
!190 = !{!191, !195, !220, !222, !223, !258, !262}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !189, file: !116, line: 139, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !114}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !189, file: !116, line: 140, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !105, line: 230, size: 128, elements: !199)
!199 = !{!200, !213}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !198, file: !105, line: 231, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !114, !208, !174}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 60, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !206, line: 73, baseType: !207)
!206 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !206, line: 15, baseType: !84)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !105, line: 30, size: 128, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !105, line: 31, baseType: !96, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !209, file: !105, line: 32, baseType: !112, size: 16, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !198, file: !105, line: 232, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!204, !114, !208, !96, !217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 55, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !206, line: 72, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !206, line: 16, baseType: !83)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !189, file: !116, line: 141, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !189, file: !116, line: 142, baseType: !101, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !189, file: !116, line: 143, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !114}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !230)
!230 = !{!231, !232, !238, !242, !250, !254}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !18, line: 40, baseType: !17, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !229, file: !18, line: 41, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 30, baseType: !237)
!237 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !229, file: !18, line: 42, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!82}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !229, file: !18, line: 43, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !229, file: !18, line: 44, baseType: !251, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!246}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !229, file: !18, line: 45, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !82}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !189, file: !116, line: 144, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!246, !114}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !189, file: !116, line: 145, baseType: !263, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !114, !266, !274}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !268, line: 23, baseType: !269)
!268 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 21, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !269, file: !268, line: 22, baseType: !272, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 32, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !206, line: 49, baseType: !7)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !268, line: 28, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 26, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !268, line: 27, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 33, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !206, line: 50, baseType: !7)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !115, file: !116, line: 70, baseType: !282, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !284, line: 123, size: 1024, elements: !285)
!284 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !291, !292, !293, !294, !302, !303, !304, !1534, !1535, !1536, !1537, !1538}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !283, file: !284, line: 124, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 168, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 166, size: 32, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !81, line: 167, baseType: !158, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !283, file: !284, line: 125, baseType: !287, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !284, line: 135, baseType: !282, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !284, line: 136, baseType: !96, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !283, file: !284, line: 138, baseType: !295, size: 192, align: 64, offset: 192)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !296, line: 24, size: 192, align: 64, elements: !297)
!296 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!297 = !{!298, !299, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !295, file: !296, line: 25, baseType: !83, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !295, file: !296, line: 26, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !295, file: !296, line: 27, baseType: !300, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !283, file: !284, line: 140, baseType: !246, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !283, file: !284, line: 141, baseType: !7, size: 32, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !283, file: !284, line: 142, baseType: !305, size: 256, offset: 512)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !284, line: 142, size: 256, elements: !306)
!306 = !{!307, !375, !379}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !305, file: !284, line: 143, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !284, line: 91, size: 192, elements: !309)
!309 = !{!310, !311, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !308, file: !284, line: 92, baseType: !83, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !308, file: !284, line: 94, baseType: !312, size: 64, offset: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !296, line: 31, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !312, file: !296, line: 32, baseType: !300, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !308, file: !284, line: 100, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !284, line: 180, size: 704, elements: !318)
!318 = !{!319, !320, !321, !334, !339, !340, !367, !368}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !317, file: !284, line: 182, baseType: !282, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !284, line: 183, baseType: !7, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !317, file: !284, line: 186, baseType: !322, size: 192, offset: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !323, line: 19, size: 192, elements: !324)
!323 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !332, !333}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !322, file: !323, line: 20, baseType: !326, size: 128)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !327, line: 292, size: 128, elements: !328)
!327 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !330, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !326, file: !327, line: 293, baseType: !132)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !326, file: !327, line: 295, baseType: !80, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !326, file: !327, line: 296, baseType: !82, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !322, file: !323, line: 21, baseType: !7, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !322, file: !323, line: 22, baseType: !7, size: 32, offset: 160)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !317, file: !284, line: 187, baseType: !335, size: 32, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !336, line: 21, baseType: !337)
!336 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !338, line: 27, baseType: !7)
!338 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !317, file: !284, line: 188, baseType: !335, size: 32, offset: 352)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !317, file: !284, line: 189, baseType: !341, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !284, line: 168, size: 320, elements: !343)
!343 = !{!344, !351, !355, !359, !363}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !342, file: !284, line: 169, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!158, !348, !316}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !350, line: 539, flags: DIFlagFwdDecl)
!350 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !342, file: !284, line: 171, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!158, !282, !96, !112}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !342, file: !284, line: 173, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!158, !282}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !342, file: !284, line: 174, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!158, !282, !282, !96}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !342, file: !284, line: 176, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!158, !348, !282, !316}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !317, file: !284, line: 192, baseType: !120, size: 128, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !317, file: !284, line: 194, baseType: !369, size: 128, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !370, line: 40, baseType: !371)
!370 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !370, line: 36, size: 128, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !371, file: !370, line: 37, baseType: !132)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !371, file: !370, line: 38, baseType: !120, size: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !305, file: !284, line: 144, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !284, line: 103, size: 64, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !376, file: !284, line: 104, baseType: !282, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !305, file: !284, line: 145, baseType: !380, size: 256)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !284, line: 107, size: 256, elements: !381)
!381 = !{!382, !1529, !1532, !1533}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !380, file: !284, line: 108, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !284, line: 217, size: 768, elements: !386)
!386 = !{!387, !428, !432, !436, !443, !447, !451, !455, !456, !457, !458, !466}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !385, file: !284, line: 222, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!158, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !284, line: 197, size: 1088, elements: !393)
!393 = !{!394, !395, !398, !399, !400, !416, !417, !418, !419, !420, !421, !422, !423}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !392, file: !284, line: 199, baseType: !282, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !392, file: !284, line: 200, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !350, line: 526, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !392, file: !284, line: 201, baseType: !348, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !392, file: !284, line: 202, baseType: !82, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !392, file: !284, line: 205, baseType: !401, size: 192, offset: 256)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !402, line: 53, size: 192, elements: !403)
!402 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !414, !415}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !401, file: !402, line: 54, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !406, line: 13, baseType: !407)
!406 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 175, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 173, size: 64, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !408, file: !81, line: 174, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !336, line: 22, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !338, line: 30, baseType: !413)
!413 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !401, file: !402, line: 55, baseType: !132, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !401, file: !402, line: 59, baseType: !120, size: 128, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !392, file: !284, line: 206, baseType: !401, size: 192, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !392, file: !284, line: 207, baseType: !158, size: 32, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !392, file: !284, line: 208, baseType: !120, size: 128, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !392, file: !284, line: 209, baseType: !174, size: 64, offset: 832)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !392, file: !284, line: 211, baseType: !217, size: 64, offset: 896)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !392, file: !284, line: 212, baseType: !236, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !392, file: !284, line: 213, baseType: !236, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !392, file: !284, line: 214, baseType: !424, size: 64, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !427, line: 356, flags: DIFlagFwdDecl)
!427 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !385, file: !284, line: 223, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !391}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !385, file: !284, line: 236, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!158, !348, !82}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !385, file: !284, line: 238, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!82, !348, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 46, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !206, line: 88, baseType: !413)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !385, file: !284, line: 239, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!82, !348, !82, !440}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !385, file: !284, line: 240, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !348, !82}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !385, file: !284, line: 242, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!204, !391, !174, !217, !441}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !385, file: !284, line: 252, baseType: !217, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !385, file: !284, line: 259, baseType: !236, size: 8, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !385, file: !284, line: 260, baseType: !452, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !385, file: !284, line: 263, baseType: !459, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !391, !464}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !463, line: 52, baseType: !7)
!463 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !284, line: 27, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !385, file: !284, line: 266, baseType: !467, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!158, !391, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !427, line: 305, size: 1472, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !1506, !1512, !1513, !1518, !1519, !1522, !1523, !1524, !1525, !1526, !1527}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !471, file: !427, line: 308, baseType: !83, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !471, file: !427, line: 309, baseType: !83, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !471, file: !427, line: 313, baseType: !470, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !471, file: !427, line: 313, baseType: !470, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !471, file: !427, line: 315, baseType: !295, size: 192, align: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !471, file: !427, line: 323, baseType: !83, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !471, file: !427, line: 327, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !427, line: 388, size: 7296, elements: !482)
!482 = !{!483, !1502}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !427, line: 389, baseType: !484, size: 7296)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !427, line: 389, size: 7296, elements: !485)
!485 = !{!486, !487, !488, !492, !496, !497, !498, !499, !500, !508, !509, !510, !511, !512, !513, !514, !515, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !550, !558, !561, !587, !588, !1473, !1474, !1477, !1480, !1481, !1484, !1485, !1486, !1489, !1501}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !484, file: !427, line: 390, baseType: !470, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !484, file: !427, line: 391, baseType: !312, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !484, file: !427, line: 392, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !336, line: 23, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !338, line: 31, baseType: !491)
!491 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !484, file: !427, line: 394, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!83, !396, !83, !83, !83, !83}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !484, file: !427, line: 398, baseType: !83, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !484, file: !427, line: 399, baseType: !83, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !484, file: !427, line: 405, baseType: !83, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !484, file: !427, line: 406, baseType: !83, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !484, file: !427, line: 407, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !350, line: 286, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 286, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !503, file: !350, line: 286, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !507, line: 18, baseType: !83)
!507 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !484, file: !427, line: 416, baseType: !287, size: 32, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !484, file: !427, line: 428, baseType: !287, size: 32, offset: 608)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !484, file: !427, line: 437, baseType: !287, size: 32, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !484, file: !427, line: 447, baseType: !287, size: 32, offset: 672)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !484, file: !427, line: 450, baseType: !405, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !484, file: !427, line: 452, baseType: !158, size: 32, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !484, file: !427, line: 454, baseType: !132, offset: 800)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !484, file: !427, line: 457, baseType: !516, size: 256, offset: 832)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !517, line: 35, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !520, !521, !523}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !516, file: !517, line: 36, baseType: !405, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !516, file: !517, line: 42, baseType: !405, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !516, file: !517, line: 46, baseType: !522, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !133, line: 29, baseType: !140)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !516, file: !517, line: 47, baseType: !120, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !484, file: !427, line: 459, baseType: !120, size: 128, offset: 1088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !484, file: !427, line: 466, baseType: !83, size: 64, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !484, file: !427, line: 467, baseType: !83, size: 64, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !484, file: !427, line: 469, baseType: !83, size: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !484, file: !427, line: 470, baseType: !83, size: 64, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !484, file: !427, line: 471, baseType: !407, size: 64, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !484, file: !427, line: 472, baseType: !83, size: 64, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !484, file: !427, line: 473, baseType: !83, size: 64, offset: 1600)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !484, file: !427, line: 474, baseType: !83, size: 64, offset: 1664)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !484, file: !427, line: 475, baseType: !83, size: 64, offset: 1728)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !484, file: !427, line: 477, baseType: !132, offset: 1792)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !484, file: !427, line: 478, baseType: !83, size: 64, offset: 1792)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !484, file: !427, line: 478, baseType: !83, size: 64, offset: 1856)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !484, file: !427, line: 478, baseType: !83, size: 64, offset: 1920)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !484, file: !427, line: 478, baseType: !83, size: 64, offset: 1984)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !484, file: !427, line: 479, baseType: !83, size: 64, offset: 2048)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !484, file: !427, line: 479, baseType: !83, size: 64, offset: 2112)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !484, file: !427, line: 479, baseType: !83, size: 64, offset: 2176)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !484, file: !427, line: 480, baseType: !83, size: 64, offset: 2240)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !484, file: !427, line: 480, baseType: !83, size: 64, offset: 2304)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !484, file: !427, line: 480, baseType: !83, size: 64, offset: 2368)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !484, file: !427, line: 480, baseType: !83, size: 64, offset: 2432)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !484, file: !427, line: 482, baseType: !547, size: 2816, offset: 2496)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 2816, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 44)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !484, file: !427, line: 488, baseType: !551, size: 256, offset: 5312)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !552, line: 60, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !551, file: !552, line: 61, baseType: !555, size: 256)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 256, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 4)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !484, file: !427, line: 490, baseType: !559, size: 64, offset: 5568)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !427, line: 490, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !484, file: !427, line: 493, baseType: !562, size: 896, offset: 5632)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !563, line: 53, baseType: !564)
!563 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !563, line: 13, size: 896, elements: !565)
!565 = !{!566, !567, !568, !569, !572, !573, !574, !575, !579, !580, !583}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !564, file: !563, line: 18, baseType: !489, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !564, file: !563, line: 28, baseType: !407, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !564, file: !563, line: 31, baseType: !516, size: 256, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !564, file: !563, line: 32, baseType: !570, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !563, line: 32, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !564, file: !563, line: 37, baseType: !113, size: 16, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !563, line: 40, baseType: !401, size: 192, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !564, file: !563, line: 41, baseType: !82, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !564, file: !563, line: 42, baseType: !576, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !563, line: 42, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !564, file: !563, line: 44, baseType: !287, size: 32, offset: 832)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !564, file: !563, line: 50, baseType: !581, size: 16, offset: 864)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !336, line: 19, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !338, line: 24, baseType: !113)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !564, file: !563, line: 51, baseType: !584, size: 16, offset: 880)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !336, line: 18, baseType: !585)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !338, line: 23, baseType: !586)
!586 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !427, line: 495, baseType: !83, size: 64, offset: 6528)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !484, file: !427, line: 497, baseType: !589, size: 64, offset: 6592)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !427, line: 381, size: 384, elements: !591)
!591 = !{!592, !593, !1472}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !590, file: !427, line: 382, baseType: !287, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !590, file: !427, line: 383, baseType: !594, size: 128, offset: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !427, line: 376, size: 128, elements: !595)
!595 = !{!596, !1470}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !594, file: !427, line: 377, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !599, line: 640, size: 48640, elements: !600)
!599 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!600 = !{!601, !607, !609, !610, !616, !617, !618, !619, !620, !621, !622, !623, !627, !645, !656, !751, !752, !753, !764, !765, !767, !768, !769, !770, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !849, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !899, !901, !902, !903, !915, !917, !918, !919, !920, !921, !927, !928, !929, !930, !931, !932, !933, !945, !950, !954, !955, !956, !959, !963, !966, !969, !972, !975, !978, !981, !984, !990, !991, !992, !998, !999, !1000, !1001, !1002, !1011, !1012, !1013, !1014, !1015, !1020, !1021, !1022, !1025, !1026, !1029, !1032, !1035, !1038, !1041, !1044, !1045, !1124, !1127, !1130, !1131, !1134, !1135, !1136, !1142, !1143, !1144, !1157, !1158, !1159, !1169, !1174, !1177, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !598, file: !599, line: 646, baseType: !602, size: 128)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !603, line: 56, size: 128, elements: !604)
!603 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !603, line: 57, baseType: !83, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !602, file: !603, line: 58, baseType: !335, size: 32, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !598, file: !599, line: 649, baseType: !608, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !598, file: !599, line: 657, baseType: !82, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !598, file: !599, line: 658, baseType: !611, size: 32, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !612, line: 113, baseType: !613)
!612 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !612, line: 111, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !613, file: !612, line: 112, baseType: !287, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !599, line: 660, baseType: !7, size: 32, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !598, file: !599, line: 661, baseType: !7, size: 32, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !598, file: !599, line: 684, baseType: !158, size: 32, offset: 352)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !598, file: !599, line: 686, baseType: !158, size: 32, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !598, file: !599, line: 687, baseType: !158, size: 32, offset: 416)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !598, file: !599, line: 688, baseType: !158, size: 32, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !598, file: !599, line: 689, baseType: !7, size: 32, offset: 480)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !598, file: !599, line: 691, baseType: !624, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !599, line: 691, flags: DIFlagFwdDecl)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !598, file: !599, line: 692, baseType: !628, size: 832, offset: 576)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !599, line: 451, size: 832, elements: !629)
!629 = !{!630, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !628, file: !599, line: 453, baseType: !631, size: 128)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !599, line: 325, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !631, file: !599, line: 326, baseType: !83, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !631, file: !599, line: 327, baseType: !335, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !628, file: !599, line: 454, baseType: !295, size: 192, align: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !628, file: !599, line: 455, baseType: !120, size: 128, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !628, file: !599, line: 456, baseType: !7, size: 32, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !628, file: !599, line: 458, baseType: !489, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !628, file: !599, line: 459, baseType: !489, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !628, file: !599, line: 460, baseType: !489, size: 64, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !628, file: !599, line: 461, baseType: !489, size: 64, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !628, file: !599, line: 463, baseType: !489, size: 64, offset: 768)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !628, file: !599, line: 465, baseType: !644, offset: 832)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !599, line: 415, elements: !146)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !598, file: !599, line: 693, baseType: !646, size: 384, offset: 1408)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !599, line: 489, size: 384, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !646, file: !599, line: 490, baseType: !120, size: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !646, file: !599, line: 491, baseType: !83, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !646, file: !599, line: 492, baseType: !83, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !646, file: !599, line: 493, baseType: !7, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !646, file: !599, line: 494, baseType: !113, size: 16, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !646, file: !599, line: 495, baseType: !113, size: 16, offset: 304)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !646, file: !599, line: 497, baseType: !655, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !598, file: !599, line: 697, baseType: !657, size: 1792, offset: 1792)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !599, line: 507, size: 1792, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !748, !749}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !657, file: !599, line: 508, baseType: !295, size: 192, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !657, file: !599, line: 515, baseType: !489, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !657, file: !599, line: 516, baseType: !489, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !657, file: !599, line: 517, baseType: !489, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !657, file: !599, line: 518, baseType: !489, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !657, file: !599, line: 519, baseType: !489, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !657, file: !599, line: 526, baseType: !411, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !657, file: !599, line: 527, baseType: !489, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !599, line: 528, baseType: !7, size: 32, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !657, file: !599, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !657, file: !599, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !657, file: !599, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !657, file: !599, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !657, file: !599, line: 563, baseType: !673, size: 512, offset: 704)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !674)
!674 = !{!675, !683, !684, !689, !741, !745, !746, !747}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !6, line: 119, baseType: !676, size: 256)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !677, line: 9, size: 256, elements: !678)
!677 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !677, line: 10, baseType: !295, size: 192, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !676, file: !677, line: 11, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !682, line: 29, baseType: !411)
!682 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !673, file: !6, line: 120, baseType: !681, size: 64, offset: 256)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !673, file: !6, line: 121, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!5, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !673, file: !6, line: 122, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !692)
!692 = !{!693, !713, !714, !717, !727, !728, !736, !740}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !691, file: !6, line: 160, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !695, file: !6, line: 215, baseType: !522)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !695, file: !6, line: 216, baseType: !7, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !695, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !695, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !695, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !695, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !695, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !695, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !695, file: !6, line: 233, baseType: !681, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !695, file: !6, line: 234, baseType: !688, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !695, file: !6, line: 235, baseType: !681, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !695, file: !6, line: 236, baseType: !688, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !695, file: !6, line: 237, baseType: !710, size: 4096, offset: 512)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 4096, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 8)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !691, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !691, file: !6, line: 162, baseType: !715, size: 32, offset: 96)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 27, baseType: !716)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !206, line: 96, baseType: !158)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !691, file: !6, line: 163, baseType: !718, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !719, line: 276, baseType: !720)
!719 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !719, line: 276, size: 32, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !720, file: !719, line: 276, baseType: !723, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !719, line: 70, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !719, line: 65, size: 32, elements: !725)
!725 = !{!726}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !724, file: !719, line: 66, baseType: !7, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !691, file: !6, line: 164, baseType: !688, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !691, file: !6, line: 165, baseType: !729, size: 128, offset: 256)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !677, line: 14, size: 128, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !729, file: !677, line: 15, baseType: !732, size: 128)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !296, line: 125, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !732, file: !296, line: 126, baseType: !312, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !732, file: !296, line: 127, baseType: !300, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !691, file: !6, line: 166, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!681}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !691, file: !6, line: 167, baseType: !681, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !673, file: !6, line: 123, baseType: !742, size: 8, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !336, line: 17, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !338, line: 21, baseType: !744)
!744 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !673, file: !6, line: 124, baseType: !742, size: 8, offset: 456)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !673, file: !6, line: 125, baseType: !742, size: 8, offset: 464)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !673, file: !6, line: 126, baseType: !742, size: 8, offset: 472)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !657, file: !599, line: 572, baseType: !673, size: 512, offset: 1216)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !657, file: !599, line: 580, baseType: !750, size: 64, offset: 1728)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !598, file: !599, line: 721, baseType: !7, size: 32, offset: 3584)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !598, file: !599, line: 722, baseType: !158, size: 32, offset: 3616)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !598, file: !599, line: 723, baseType: !754, size: 64, offset: 3648)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !757, line: 17, baseType: !758)
!757 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !757, line: 17, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !758, file: !757, line: 17, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 1)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !598, file: !599, line: 724, baseType: !756, size: 64, offset: 3712)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !598, file: !599, line: 749, baseType: !766, offset: 3776)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !599, line: 290, elements: !146)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !598, file: !599, line: 751, baseType: !120, size: 128, offset: 3776)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !598, file: !599, line: 757, baseType: !480, size: 64, offset: 3904)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !598, file: !599, line: 758, baseType: !480, size: 64, offset: 3968)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !598, file: !599, line: 761, baseType: !771, size: 320, offset: 4032)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !552, line: 34, size: 320, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !771, file: !552, line: 35, baseType: !489, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !771, file: !552, line: 36, baseType: !775, size: 256, offset: 64)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !556)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !598, file: !599, line: 766, baseType: !158, size: 32, offset: 4352)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !598, file: !599, line: 767, baseType: !158, size: 32, offset: 4384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !598, file: !599, line: 768, baseType: !158, size: 32, offset: 4416)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !598, file: !599, line: 770, baseType: !158, size: 32, offset: 4448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !598, file: !599, line: 772, baseType: !83, size: 64, offset: 4480)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !598, file: !599, line: 775, baseType: !7, size: 32, offset: 4544)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !598, file: !599, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !598, file: !599, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !598, file: !599, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !598, file: !599, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !598, file: !599, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !598, file: !599, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !598, file: !599, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !598, file: !599, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !598, file: !599, line: 831, baseType: !83, size: 64, offset: 4672)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !598, file: !599, line: 833, baseType: !792, size: 384, offset: 4736)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !793)
!793 = !{!794, !799}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !792, file: !12, line: 26, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!84, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !12, line: 27, baseType: !800, size: 320, offset: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !12, line: 27, size: 320, elements: !801)
!801 = !{!802, !812, !839}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !800, file: !12, line: 36, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !12, line: 29, size: 320, elements: !804)
!804 = !{!805, !807, !808, !809, !810, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !803, file: !12, line: 30, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !803, file: !12, line: 31, baseType: !335, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !12, line: 32, baseType: !335, size: 32, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !803, file: !12, line: 33, baseType: !335, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !803, file: !12, line: 34, baseType: !489, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !803, file: !12, line: 35, baseType: !806, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !800, file: !12, line: 46, baseType: !813, size: 192)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !12, line: 38, size: 192, elements: !814)
!814 = !{!815, !816, !817, !838}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !813, file: !12, line: 39, baseType: !715, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !813, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !12, line: 41, baseType: !818, size: 64, offset: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !12, line: 41, size: 64, elements: !819)
!819 = !{!820, !828}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !818, file: !12, line: 42, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !823, line: 7, size: 128, elements: !824)
!823 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !822, file: !823, line: 8, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !206, line: 93, baseType: !413)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !822, file: !823, line: 9, baseType: !413, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !818, file: !12, line: 43, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !831, line: 7, size: 64, elements: !832)
!831 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!832 = !{!833, !837}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !830, file: !831, line: 8, baseType: !834, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !831, line: 5, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !336, line: 20, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !338, line: 26, baseType: !158)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !830, file: !831, line: 9, baseType: !835, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !813, file: !12, line: 45, baseType: !489, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !800, file: !12, line: 54, baseType: !840, size: 256)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !12, line: 48, size: 256, elements: !841)
!841 = !{!842, !845, !846, !847, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !840, file: !12, line: 49, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !840, file: !12, line: 50, baseType: !158, size: 32, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !840, file: !12, line: 51, baseType: !158, size: 32, offset: 96)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !840, file: !12, line: 52, baseType: !83, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !840, file: !12, line: 53, baseType: !83, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !598, file: !599, line: 835, baseType: !850, size: 32, offset: 5120)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !81, line: 22, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !206, line: 28, baseType: !158)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !598, file: !599, line: 836, baseType: !850, size: 32, offset: 5152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !598, file: !599, line: 840, baseType: !83, size: 64, offset: 5184)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !598, file: !599, line: 849, baseType: !597, size: 64, offset: 5248)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !598, file: !599, line: 852, baseType: !597, size: 64, offset: 5312)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !598, file: !599, line: 857, baseType: !120, size: 128, offset: 5376)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !598, file: !599, line: 858, baseType: !120, size: 128, offset: 5504)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !598, file: !599, line: 859, baseType: !597, size: 64, offset: 5632)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !598, file: !599, line: 867, baseType: !120, size: 128, offset: 5696)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !598, file: !599, line: 868, baseType: !120, size: 128, offset: 5824)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !598, file: !599, line: 871, baseType: !862, size: 64, offset: 5952)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !864, line: 59, size: 768, elements: !865)
!864 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!865 = !{!866, !867, !868, !869, !880, !881, !882, !891}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !863, file: !864, line: 61, baseType: !611, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !863, file: !864, line: 62, baseType: !7, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !863, file: !864, line: 63, baseType: !132, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !863, file: !864, line: 65, baseType: !870, size: 256, offset: 64)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 256, elements: !556)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !81, line: 182, size: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !871, file: !81, line: 183, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 186, size: 128, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !875, file: !81, line: 187, baseType: !874, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !875, file: !81, line: 187, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !863, file: !864, line: 66, baseType: !871, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !863, file: !864, line: 68, baseType: !369, size: 128, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !863, file: !864, line: 69, baseType: !883, size: 128, align: 64, offset: 512)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 216, size: 128, align: 64, elements: !884)
!884 = !{!885, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !883, file: !81, line: 217, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !883, file: !81, line: 218, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !886}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !863, file: !864, line: 70, baseType: !892, size: 128, offset: 640)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 128, elements: !762)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !864, line: 54, size: 128, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !893, file: !864, line: 55, baseType: !158, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !893, file: !864, line: 56, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !864, line: 56, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !598, file: !599, line: 872, baseType: !900, size: 512, offset: 6016)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 512, elements: !556)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !598, file: !599, line: 873, baseType: !120, size: 128, offset: 6528)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !598, file: !599, line: 874, baseType: !120, size: 128, offset: 6656)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !598, file: !599, line: 876, baseType: !904, size: 64, offset: 6784)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !906, line: 26, size: 192, elements: !907)
!906 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !905, file: !906, line: 27, baseType: !7, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !905, file: !906, line: 28, baseType: !910, size: 128, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !911, line: 43, size: 128, elements: !912)
!911 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !910, file: !911, line: 44, baseType: !522)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !910, file: !911, line: 45, baseType: !120, size: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !598, file: !599, line: 879, baseType: !916, size: 64, offset: 6848)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !598, file: !599, line: 882, baseType: !916, size: 64, offset: 6912)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !598, file: !599, line: 884, baseType: !489, size: 64, offset: 6976)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !598, file: !599, line: 885, baseType: !489, size: 64, offset: 7040)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !598, file: !599, line: 890, baseType: !489, size: 64, offset: 7104)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !598, file: !599, line: 891, baseType: !922, size: 128, offset: 7168)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !599, line: 242, size: 128, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !922, file: !599, line: 244, baseType: !489, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !922, file: !599, line: 245, baseType: !489, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !922, file: !599, line: 246, baseType: !522, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !598, file: !599, line: 900, baseType: !83, size: 64, offset: 7296)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !598, file: !599, line: 901, baseType: !83, size: 64, offset: 7360)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !598, file: !599, line: 904, baseType: !489, size: 64, offset: 7424)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !598, file: !599, line: 907, baseType: !489, size: 64, offset: 7488)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !598, file: !599, line: 910, baseType: !83, size: 64, offset: 7552)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !598, file: !599, line: 911, baseType: !83, size: 64, offset: 7616)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !598, file: !599, line: 914, baseType: !934, size: 640, offset: 7680)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !935, line: 123, size: 640, elements: !936)
!935 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!936 = !{!937, !943, !944}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !934, file: !935, line: 124, baseType: !938, size: 576)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 576, elements: !175)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !935, line: 108, size: 192, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !939, file: !935, line: 109, baseType: !489, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !939, file: !935, line: 110, baseType: !729, size: 128, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !934, file: !935, line: 125, baseType: !7, size: 32, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !934, file: !935, line: 126, baseType: !7, size: 32, offset: 608)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !598, file: !599, line: 917, baseType: !946, size: 192, offset: 8320)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !935, line: 134, size: 192, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !946, file: !935, line: 135, baseType: !883, size: 128, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !946, file: !935, line: 136, baseType: !7, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !598, file: !599, line: 923, baseType: !951, size: 64, offset: 8512)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !599, line: 923, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !598, file: !599, line: 926, baseType: !951, size: 64, offset: 8576)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !598, file: !599, line: 929, baseType: !951, size: 64, offset: 8640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !598, file: !599, line: 933, baseType: !957, size: 64, offset: 8704)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !599, line: 933, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !598, file: !599, line: 943, baseType: !960, size: 128, offset: 8768)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 128, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 16)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !598, file: !599, line: 945, baseType: !964, size: 64, offset: 8896)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !599, line: 49, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !598, file: !599, line: 956, baseType: !967, size: 64, offset: 8960)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !599, line: 45, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !598, file: !599, line: 959, baseType: !970, size: 64, offset: 9024)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !599, line: 959, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !598, file: !599, line: 962, baseType: !973, size: 64, offset: 9088)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !599, line: 66, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !598, file: !599, line: 966, baseType: !976, size: 64, offset: 9152)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !599, line: 50, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !598, file: !599, line: 969, baseType: !979, size: 64, offset: 9216)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !935, line: 223, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !598, file: !599, line: 970, baseType: !982, size: 64, offset: 9280)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !599, line: 62, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !598, file: !599, line: 971, baseType: !985, size: 64, offset: 9344)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !986, line: 25, baseType: !987)
!986 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !986, line: 23, size: 64, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !987, file: !986, line: 24, baseType: !761, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !598, file: !599, line: 972, baseType: !985, size: 64, offset: 9408)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !598, file: !599, line: 974, baseType: !985, size: 64, offset: 9472)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !598, file: !599, line: 975, baseType: !993, size: 192, offset: 9536)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !994, line: 30, size: 192, elements: !995)
!994 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !993, file: !994, line: 31, baseType: !120, size: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !993, file: !994, line: 32, baseType: !985, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !598, file: !599, line: 976, baseType: !83, size: 64, offset: 9728)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !598, file: !599, line: 977, baseType: !217, size: 64, offset: 9792)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !598, file: !599, line: 978, baseType: !7, size: 32, offset: 9856)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !598, file: !599, line: 980, baseType: !886, size: 64, offset: 9920)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !598, file: !599, line: 989, baseType: !1003, size: 128, offset: 9984)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1004, line: 35, size: 128, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1003, file: !1004, line: 36, baseType: !158, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1003, file: !1004, line: 37, baseType: !287, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1003, file: !1004, line: 38, baseType: !1009, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1004, line: 23, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !598, file: !599, line: 992, baseType: !489, size: 64, offset: 10112)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !598, file: !599, line: 993, baseType: !489, size: 64, offset: 10176)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !598, file: !599, line: 996, baseType: !132, offset: 10240)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !598, file: !599, line: 999, baseType: !522, offset: 10240)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !598, file: !599, line: 1001, baseType: !1016, size: 64, offset: 10240)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !599, line: 636, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1016, file: !599, line: 637, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !598, file: !599, line: 1005, baseType: !732, size: 128, offset: 10304)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !598, file: !599, line: 1007, baseType: !597, size: 64, offset: 10432)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !598, file: !599, line: 1009, baseType: !1023, size: 64, offset: 10496)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !599, line: 1009, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !598, file: !599, line: 1043, baseType: !82, size: 64, offset: 10560)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !598, file: !599, line: 1046, baseType: !1027, size: 64, offset: 10624)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !599, line: 41, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !598, file: !599, line: 1050, baseType: !1030, size: 64, offset: 10688)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !599, line: 42, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !598, file: !599, line: 1054, baseType: !1033, size: 64, offset: 10752)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !599, line: 55, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !598, file: !599, line: 1056, baseType: !1036, size: 64, offset: 10816)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !599, line: 40, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !598, file: !599, line: 1058, baseType: !1039, size: 64, offset: 10880)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !599, line: 47, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !598, file: !599, line: 1061, baseType: !1042, size: 64, offset: 10944)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !599, line: 43, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !598, file: !599, line: 1064, baseType: !83, size: 64, offset: 11008)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !598, file: !599, line: 1065, baseType: !1046, size: 64, offset: 11072)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !994, line: 14, baseType: !1048)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !994, line: 12, size: 384, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !994, line: 13, baseType: !1051, size: 384)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !994, line: 13, size: 384, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1051, file: !994, line: 13, baseType: !158, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1051, file: !994, line: 13, baseType: !158, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1051, file: !994, line: 13, baseType: !158, size: 32, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1051, file: !994, line: 13, baseType: !1057, size: 256, offset: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1058, line: 32, size: 256, elements: !1059)
!1058 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1059 = !{!1060, !1065, !1078, !1084, !1093, !1113, !1118}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1057, file: !1058, line: 37, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 34, size: 64, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1061, file: !1058, line: 35, baseType: !851, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1061, file: !1058, line: 36, baseType: !273, size: 32, offset: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1057, file: !1058, line: 45, baseType: !1066, size: 192)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 40, size: 192, elements: !1067)
!1067 = !{!1068, !1070, !1071, !1077}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1066, file: !1058, line: 41, baseType: !1069, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !206, line: 95, baseType: !158)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1066, file: !1058, line: 42, baseType: !158, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1066, file: !1058, line: 43, baseType: !1072, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1058, line: 11, baseType: !1073)
!1073 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1058, line: 8, size: 64, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1073, file: !1058, line: 9, baseType: !158, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1073, file: !1058, line: 10, baseType: !82, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1066, file: !1058, line: 44, baseType: !158, size: 32, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1057, file: !1058, line: 52, baseType: !1079, size: 128)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 48, size: 128, elements: !1080)
!1080 = !{!1081, !1082, !1083}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1079, file: !1058, line: 49, baseType: !851, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1079, file: !1058, line: 50, baseType: !273, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1079, file: !1058, line: 51, baseType: !1072, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1057, file: !1058, line: 61, baseType: !1085, size: 256)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 55, size: 256, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1092}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1085, file: !1058, line: 56, baseType: !851, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1085, file: !1058, line: 57, baseType: !273, size: 32, offset: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1085, file: !1058, line: 58, baseType: !158, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1085, file: !1058, line: 59, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !206, line: 94, baseType: !207)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1085, file: !1058, line: 60, baseType: !1091, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1057, file: !1058, line: 95, baseType: !1094, size: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 64, size: 256, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1094, file: !1058, line: 65, baseType: !82, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !1058, line: 77, baseType: !1098, size: 192, offset: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !1058, line: 77, size: 192, elements: !1099)
!1099 = !{!1100, !1101, !1108}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1098, file: !1058, line: 82, baseType: !586, size: 16)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1098, file: !1058, line: 88, baseType: !1102, size: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !1058, line: 84, size: 192, elements: !1103)
!1103 = !{!1104, !1106, !1107}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1102, file: !1058, line: 85, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !711)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1102, file: !1058, line: 86, baseType: !82, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1102, file: !1058, line: 87, baseType: !82, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1098, file: !1058, line: 93, baseType: !1109, size: 96)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1098, file: !1058, line: 90, size: 96, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1109, file: !1058, line: 91, baseType: !1105, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1109, file: !1058, line: 92, baseType: !337, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1057, file: !1058, line: 101, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 98, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1114, file: !1058, line: 99, baseType: !84, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1114, file: !1058, line: 100, baseType: !158, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1057, file: !1058, line: 108, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1058, line: 104, size: 128, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1119, file: !1058, line: 105, baseType: !82, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1119, file: !1058, line: 106, baseType: !158, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1119, file: !1058, line: 107, baseType: !7, size: 32, offset: 96)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !598, file: !599, line: 1067, baseType: !1125, offset: 11136)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1126, line: 12, elements: !146)
!1126 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !598, file: !599, line: 1099, baseType: !1128, size: 64, offset: 11136)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !599, line: 56, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !598, file: !599, line: 1103, baseType: !120, size: 128, offset: 11200)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !598, file: !599, line: 1104, baseType: !1132, size: 64, offset: 11328)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !599, line: 46, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !598, file: !599, line: 1105, baseType: !401, size: 192, offset: 11392)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !598, file: !599, line: 1106, baseType: !7, size: 32, offset: 11584)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !598, file: !599, line: 1109, baseType: !1137, size: 128, offset: 11648)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 128, elements: !1140)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !599, line: 51, flags: DIFlagFwdDecl)
!1140 = !{!1141}
!1141 = !DISubrange(count: 2)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !598, file: !599, line: 1110, baseType: !401, size: 192, offset: 11776)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !598, file: !599, line: 1111, baseType: !120, size: 128, offset: 11968)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !598, file: !599, line: 1173, baseType: !1145, size: 64, offset: 12096)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1147, line: 62, size: 256, align: 256, elements: !1148)
!1147 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1150, !1151, !1156}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1146, file: !1147, line: 75, baseType: !337, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1146, file: !1147, line: 90, baseType: !337, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1146, file: !1147, line: 124, baseType: !1152, size: 64, offset: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1147, line: 109, size: 64, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1152, file: !1147, line: 110, baseType: !490, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1152, file: !1147, line: 112, baseType: !490, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !1147, line: 144, baseType: !337, size: 32, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !598, file: !599, line: 1174, baseType: !335, size: 32, offset: 12160)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !598, file: !599, line: 1179, baseType: !83, size: 64, offset: 12224)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !598, file: !599, line: 1182, baseType: !1160, size: 128, offset: 12288)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !552, line: 76, size: 128, elements: !1161)
!1161 = !{!1162, !1167, !1168}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1160, file: !552, line: 85, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1164, line: 7, size: 64, elements: !1165)
!1164 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1163, file: !1164, line: 12, baseType: !758, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1160, file: !552, line: 88, baseType: !236, size: 8, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1160, file: !552, line: 95, baseType: !236, size: 8, offset: 72)
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !598, file: !599, line: 1184, baseType: !1170, size: 128, offset: 12416)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !599, line: 1184, size: 128, elements: !1171)
!1171 = !{!1172, !1173}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1170, file: !599, line: 1185, baseType: !611, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1170, file: !599, line: 1186, baseType: !883, size: 128, align: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !598, file: !599, line: 1190, baseType: !1175, size: 64, offset: 12544)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !599, line: 53, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !598, file: !599, line: 1192, baseType: !1178, size: 128, offset: 12608)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !552, line: 64, size: 128, elements: !1179)
!1179 = !{!1180, !1273, !1274}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1178, file: !552, line: 65, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !427, line: 68, size: 512, align: 128, elements: !1183)
!1183 = !{!1184, !1185, !1265, !1272}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !427, line: 69, baseType: !83, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !427, line: 77, baseType: !1186, size: 320, offset: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !427, line: 77, size: 320, elements: !1187)
!1187 = !{!1188, !1197, !1202, !1230, !1238, !1244, !1257, !1264}
!1188 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 78, baseType: !1189, size: 320)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 78, size: 320, elements: !1190)
!1190 = !{!1191, !1192, !1195, !1196}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1189, file: !427, line: 84, baseType: !120, size: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1189, file: !427, line: 86, baseType: !1193, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !427, line: 26, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1189, file: !427, line: 87, baseType: !83, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1189, file: !427, line: 94, baseType: !83, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 96, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 96, size: 64, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1198, file: !427, line: 101, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !81, line: 143, baseType: !489)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 103, baseType: !1203, size: 320)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 103, size: 320, elements: !1204)
!1204 = !{!1205, !1215, !1218, !1219}
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !427, line: 104, baseType: !1206, size: 128)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !427, line: 104, size: 128, elements: !1207)
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1206, file: !427, line: 105, baseType: !120, size: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1206, file: !427, line: 106, baseType: !1210, size: 128)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1206, file: !427, line: 106, size: 128, elements: !1211)
!1211 = !{!1212, !1213, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1210, file: !427, line: 107, baseType: !1181, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1210, file: !427, line: 109, baseType: !158, size: 32, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1210, file: !427, line: 110, baseType: !158, size: 32, offset: 96)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1203, file: !427, line: 117, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !427, line: 117, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1203, file: !427, line: 119, baseType: !82, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1203, file: !427, line: 120, baseType: !1220, size: 64, offset: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1203, file: !427, line: 120, size: 64, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1220, file: !427, line: 121, baseType: !82, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1220, file: !427, line: 122, baseType: !83, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !427, line: 123, baseType: !1225, size: 32)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !427, line: 123, size: 32, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1225, file: !427, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1225, file: !427, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1225, file: !427, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 130, baseType: !1231, size: 192)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 130, size: 192, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1231, file: !427, line: 131, baseType: !83, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1231, file: !427, line: 134, baseType: !744, size: 8, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1231, file: !427, line: 135, baseType: !744, size: 8, offset: 72)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1231, file: !427, line: 136, baseType: !287, size: 32, offset: 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1231, file: !427, line: 137, baseType: !7, size: 32, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 139, baseType: !1239, size: 256)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 139, size: 256, elements: !1240)
!1240 = !{!1241, !1242, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1239, file: !427, line: 140, baseType: !83, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1239, file: !427, line: 141, baseType: !287, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1239, file: !427, line: 143, baseType: !120, size: 128, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 145, baseType: !1245, size: 256)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 145, size: 256, elements: !1246)
!1246 = !{!1247, !1248, !1250, !1251, !1256}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1245, file: !427, line: 146, baseType: !83, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1245, file: !427, line: 147, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !350, line: 509, baseType: !1181)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1245, file: !427, line: 148, baseType: !83, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !427, line: 149, baseType: !1252, size: 64, offset: 192)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !427, line: 149, size: 64, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1252, file: !427, line: 150, baseType: !480, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1252, file: !427, line: 151, baseType: !287, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1245, file: !427, line: 156, baseType: !132, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !427, line: 159, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !427, line: 159, size: 128, elements: !1259)
!1259 = !{!1260, !1263}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1258, file: !427, line: 161, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !427, line: 161, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1258, file: !427, line: 162, baseType: !82, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1186, file: !427, line: 176, baseType: !883, size: 128, align: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !427, line: 179, baseType: !1266, size: 32, offset: 384)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !427, line: 179, size: 32, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1266, file: !427, line: 184, baseType: !287, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1266, file: !427, line: 192, baseType: !7, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1266, file: !427, line: 194, baseType: !7, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1266, file: !427, line: 195, baseType: !158, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1182, file: !427, line: 199, baseType: !287, size: 32, offset: 416)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1178, file: !552, line: 67, baseType: !337, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1178, file: !552, line: 68, baseType: !337, size: 32, offset: 96)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !598, file: !599, line: 1206, baseType: !158, size: 32, offset: 12736)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !598, file: !599, line: 1207, baseType: !158, size: 32, offset: 12768)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !598, file: !599, line: 1209, baseType: !83, size: 64, offset: 12800)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !598, file: !599, line: 1219, baseType: !489, size: 64, offset: 12864)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !598, file: !599, line: 1220, baseType: !489, size: 64, offset: 12928)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !598, file: !599, line: 1317, baseType: !158, size: 32, offset: 12992)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !598, file: !599, line: 1319, baseType: !597, size: 64, offset: 13056)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !598, file: !599, line: 1322, baseType: !1283, size: 64, offset: 13120)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !599, line: 1322, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !598, file: !599, line: 1326, baseType: !611, size: 32, offset: 13184)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !598, file: !599, line: 1342, baseType: !82, size: 64, offset: 13248)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !598, file: !599, line: 1343, baseType: !490, size: 64, offset: 13312)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !598, file: !599, line: 1344, baseType: !489, size: 64, offset: 13376)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !598, file: !599, line: 1345, baseType: !490, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !598, file: !599, line: 1346, baseType: !490, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !598, file: !599, line: 1347, baseType: !490, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !598, file: !599, line: 1348, baseType: !883, size: 128, align: 64, offset: 13504)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !598, file: !599, line: 1358, baseType: !1294, size: 34816, offset: 13824)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1295, line: 485, size: 34816, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1326, !1327, !1328, !1329, !1330, !1331, !1334, !1335, !1336}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1294, file: !1295, line: 487, baseType: !1298, size: 192)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 192, elements: !175)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1300, line: 16, size: 64, elements: !1301)
!1300 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1299, file: !1300, line: 17, baseType: !581, size: 16)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1299, file: !1300, line: 18, baseType: !581, size: 16, offset: 16)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1299, file: !1300, line: 19, baseType: !581, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1299, file: !1300, line: 19, baseType: !581, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1299, file: !1300, line: 19, baseType: !581, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1299, file: !1300, line: 19, baseType: !581, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1299, file: !1300, line: 19, baseType: !581, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1299, file: !1300, line: 20, baseType: !581, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1299, file: !1300, line: 20, baseType: !581, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1299, file: !1300, line: 20, baseType: !581, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1299, file: !1300, line: 20, baseType: !581, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1299, file: !1300, line: 20, baseType: !581, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1299, file: !1300, line: 20, baseType: !581, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1294, file: !1295, line: 491, baseType: !83, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1294, file: !1295, line: 495, baseType: !113, size: 16, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1294, file: !1295, line: 496, baseType: !113, size: 16, offset: 272)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1294, file: !1295, line: 497, baseType: !113, size: 16, offset: 288)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1294, file: !1295, line: 498, baseType: !113, size: 16, offset: 304)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1294, file: !1295, line: 502, baseType: !83, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1294, file: !1295, line: 503, baseType: !83, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1294, file: !1295, line: 514, baseType: !1323, size: 256, offset: 448)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 256, elements: !556)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1295, line: 483, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1294, file: !1295, line: 516, baseType: !83, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1294, file: !1295, line: 518, baseType: !83, size: 64, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1294, file: !1295, line: 520, baseType: !83, size: 64, offset: 832)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1294, file: !1295, line: 521, baseType: !83, size: 64, offset: 896)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1294, file: !1295, line: 522, baseType: !83, size: 64, offset: 960)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1294, file: !1295, line: 528, baseType: !1332, size: 64, offset: 1024)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1295, line: 10, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1294, file: !1295, line: 535, baseType: !83, size: 64, offset: 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1294, file: !1295, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1294, file: !1295, line: 540, baseType: !1337, size: 33280, offset: 1536)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1338, line: 317, size: 33280, elements: !1339)
!1338 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1337, file: !1338, line: 330, baseType: !7, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1337, file: !1338, line: 337, baseType: !83, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1337, file: !1338, line: 348, baseType: !1343, size: 32768, offset: 512)
!1343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1338, line: 304, size: 32768, elements: !1344)
!1344 = !{!1345, !1360, !1399, !1449, !1466}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1343, file: !1338, line: 305, baseType: !1346, size: 896)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1338, line: 12, size: 896, elements: !1347)
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1359}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1346, file: !1338, line: 13, baseType: !335, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1346, file: !1338, line: 14, baseType: !335, size: 32, offset: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1346, file: !1338, line: 15, baseType: !335, size: 32, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1346, file: !1338, line: 16, baseType: !335, size: 32, offset: 96)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1346, file: !1338, line: 17, baseType: !335, size: 32, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1346, file: !1338, line: 18, baseType: !335, size: 32, offset: 160)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1346, file: !1338, line: 19, baseType: !335, size: 32, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1346, file: !1338, line: 22, baseType: !1356, size: 640, offset: 224)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 640, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 20)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1346, file: !1338, line: 25, baseType: !335, size: 32, offset: 864)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1343, file: !1338, line: 306, baseType: !1361, size: 4096, align: 128)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1338, line: 34, size: 4096, align: 128, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1382, !1383, !1384, !1388, !1390, !1394}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1361, file: !1338, line: 35, baseType: !581, size: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1361, file: !1338, line: 36, baseType: !581, size: 16, offset: 16)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1361, file: !1338, line: 37, baseType: !581, size: 16, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1361, file: !1338, line: 38, baseType: !581, size: 16, offset: 48)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1338, line: 39, baseType: !1368, size: 128, offset: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1338, line: 39, size: 128, elements: !1369)
!1369 = !{!1370, !1375}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1338, line: 40, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1338, line: 40, size: 128, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1371, file: !1338, line: 41, baseType: !489, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1371, file: !1338, line: 42, baseType: !489, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1338, line: 44, baseType: !1376, size: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1338, line: 44, size: 128, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1376, file: !1338, line: 45, baseType: !335, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1376, file: !1338, line: 46, baseType: !335, size: 32, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1376, file: !1338, line: 47, baseType: !335, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1376, file: !1338, line: 48, baseType: !335, size: 32, offset: 96)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1361, file: !1338, line: 51, baseType: !335, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1361, file: !1338, line: 52, baseType: !335, size: 32, offset: 224)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1361, file: !1338, line: 55, baseType: !1385, size: 1024, offset: 256)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 1024, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1361, file: !1338, line: 58, baseType: !1389, size: 2048, offset: 1280)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 2048, elements: !179)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1361, file: !1338, line: 60, baseType: !1391, size: 384, offset: 3328)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 12)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1361, file: !1338, line: 62, baseType: !1395, size: 384, offset: 3712)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1361, file: !1338, line: 62, size: 384, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1395, file: !1338, line: 63, baseType: !1391, size: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1395, file: !1338, line: 64, baseType: !1391, size: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1343, file: !1338, line: 307, baseType: !1400, size: 1088)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1338, line: 79, size: 1088, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1448}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1400, file: !1338, line: 80, baseType: !335, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1400, file: !1338, line: 81, baseType: !335, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1400, file: !1338, line: 82, baseType: !335, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1400, file: !1338, line: 83, baseType: !335, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1400, file: !1338, line: 84, baseType: !335, size: 32, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1400, file: !1338, line: 85, baseType: !335, size: 32, offset: 160)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1400, file: !1338, line: 86, baseType: !335, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1400, file: !1338, line: 88, baseType: !1356, size: 640, offset: 224)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1400, file: !1338, line: 89, baseType: !742, size: 8, offset: 864)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1400, file: !1338, line: 90, baseType: !742, size: 8, offset: 872)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1400, file: !1338, line: 91, baseType: !742, size: 8, offset: 880)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1400, file: !1338, line: 92, baseType: !742, size: 8, offset: 888)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1400, file: !1338, line: 93, baseType: !742, size: 8, offset: 896)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1400, file: !1338, line: 94, baseType: !742, size: 8, offset: 904)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1400, file: !1338, line: 95, baseType: !1417, size: 64, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1419, line: 11, size: 128, elements: !1420)
!1419 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1418, file: !1419, line: 12, baseType: !84, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1418, file: !1419, line: 13, baseType: !1423, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1425, line: 56, size: 1344, elements: !1426)
!1425 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1424, file: !1425, line: 61, baseType: !83, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1424, file: !1425, line: 62, baseType: !83, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1424, file: !1425, line: 63, baseType: !83, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1424, file: !1425, line: 64, baseType: !83, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1424, file: !1425, line: 65, baseType: !83, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1424, file: !1425, line: 66, baseType: !83, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1424, file: !1425, line: 68, baseType: !83, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1424, file: !1425, line: 69, baseType: !83, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1424, file: !1425, line: 70, baseType: !83, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1424, file: !1425, line: 71, baseType: !83, size: 64, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1424, file: !1425, line: 72, baseType: !83, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1424, file: !1425, line: 73, baseType: !83, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1424, file: !1425, line: 74, baseType: !83, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1424, file: !1425, line: 75, baseType: !83, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1424, file: !1425, line: 76, baseType: !83, size: 64, offset: 896)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1424, file: !1425, line: 81, baseType: !83, size: 64, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1424, file: !1425, line: 83, baseType: !83, size: 64, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1424, file: !1425, line: 84, baseType: !83, size: 64, offset: 1088)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1425, line: 85, baseType: !83, size: 64, offset: 1152)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1424, file: !1425, line: 86, baseType: !83, size: 64, offset: 1216)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1424, file: !1425, line: 87, baseType: !83, size: 64, offset: 1280)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1400, file: !1338, line: 96, baseType: !335, size: 32, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1343, file: !1338, line: 308, baseType: !1450, size: 4608, align: 512)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1338, line: 289, size: 4608, align: 512, elements: !1451)
!1451 = !{!1452, !1453, !1462}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1450, file: !1338, line: 290, baseType: !1361, size: 4096, align: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1450, file: !1338, line: 291, baseType: !1454, size: 512, offset: 4096)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1338, line: 268, size: 512, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1454, file: !1338, line: 269, baseType: !489, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1454, file: !1338, line: 270, baseType: !489, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1454, file: !1338, line: 271, baseType: !1459, size: 384, offset: 128)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 384, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 6)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1450, file: !1338, line: 292, baseType: !1463, offset: 4608)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, elements: !1464)
!1464 = !{!1465}
!1465 = !DISubrange(count: 0)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1343, file: !1338, line: 309, baseType: !1467, size: 32768)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 32768, elements: !1468)
!1468 = !{!1469}
!1469 = !DISubrange(count: 4096)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !427, line: 378, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !590, file: !427, line: 384, baseType: !905, size: 192, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !484, file: !427, line: 500, baseType: !132, offset: 6656)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !484, file: !427, line: 501, baseType: !1475, size: 64, offset: 6656)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !427, line: 387, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !484, file: !427, line: 516, baseType: !1478, size: 64, offset: 6720)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !268, line: 18, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !484, file: !427, line: 519, baseType: !396, size: 64, offset: 6784)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !484, file: !427, line: 521, baseType: !1482, size: 64, offset: 6848)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !427, line: 521, flags: DIFlagFwdDecl)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !484, file: !427, line: 545, baseType: !287, size: 32, offset: 6912)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !484, file: !427, line: 548, baseType: !236, size: 8, offset: 6944)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !484, file: !427, line: 550, baseType: !1487, offset: 6952)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1488, line: 142, elements: !146)
!1488 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !484, file: !427, line: 554, baseType: !1490, size: 256, offset: 6976)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1491, line: 102, size: 256, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1490, file: !1491, line: 103, baseType: !405, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1490, file: !1491, line: 104, baseType: !120, size: 128, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1490, file: !1491, line: 105, baseType: !1496, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1491, line: 21, baseType: !1497)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !484, file: !427, line: 557, baseType: !335, size: 32, offset: 7232)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !481, file: !427, line: 565, baseType: !1503, offset: 7296)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: -1)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !471, file: !427, line: 333, baseType: !1507, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !350, line: 284, baseType: !1508)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !350, line: 284, size: 64, elements: !1509)
!1509 = !{!1510}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1508, file: !350, line: 284, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !507, line: 19, baseType: !83)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !471, file: !427, line: 334, baseType: !83, size: 64, offset: 640)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !471, file: !427, line: 343, baseType: !1514, size: 256, offset: 704)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !427, line: 340, size: 256, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1514, file: !427, line: 341, baseType: !295, size: 192, align: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1514, file: !427, line: 342, baseType: !83, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !471, file: !427, line: 351, baseType: !120, size: 128, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !471, file: !427, line: 353, baseType: !1520, size: 64, offset: 1088)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !427, line: 353, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !471, file: !427, line: 356, baseType: !424, size: 64, offset: 1152)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !471, file: !427, line: 359, baseType: !83, size: 64, offset: 1216)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !471, file: !427, line: 361, baseType: !396, size: 64, offset: 1280)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !471, file: !427, line: 362, baseType: !82, size: 64, offset: 1344)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !471, file: !427, line: 365, baseType: !405, size: 64, offset: 1408)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !471, file: !427, line: 373, baseType: !1528, offset: 1472)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !427, line: 296, elements: !146)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !380, file: !284, line: 109, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !284, line: 31, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !284, line: 110, baseType: !441, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !380, file: !284, line: 111, baseType: !282, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !283, file: !284, line: 148, baseType: !82, size: 64, offset: 768)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !283, file: !284, line: 154, baseType: !489, size: 64, offset: 832)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !284, line: 156, baseType: !113, size: 16, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !283, file: !284, line: 157, baseType: !112, size: 16, offset: 912)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !283, file: !284, line: 158, baseType: !1539, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !284, line: 32, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !115, file: !116, line: 71, baseType: !1542, size: 32, offset: 448)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1543, line: 19, size: 32, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1542, file: !1543, line: 20, baseType: !611, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !115, file: !116, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !115, file: !116, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !115, file: !116, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !115, file: !116, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !115, file: !116, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !104, file: !105, line: 88, baseType: !1552, size: 64, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!112, !114, !1555, !158}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !105, line: 168, size: 448, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1565, !1566}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1556, file: !105, line: 169, baseType: !209, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1556, file: !105, line: 170, baseType: !217, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1556, file: !105, line: 171, baseType: !82, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1556, file: !105, line: 172, baseType: !1562, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!204, !396, !114, !1555, !174, !441, !217}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1556, file: !105, line: 174, baseType: !1562, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1556, file: !105, line: 176, baseType: !1567, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!158, !396, !114, !1555, !470}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !104, file: !105, line: 90, baseType: !221, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !104, file: !105, line: 91, baseType: !1572, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !92, file: !93, line: 59, baseType: !101, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !92, file: !93, line: 60, baseType: !114, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !92, file: !93, line: 62, baseType: !1576, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!158, !1579, !169}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1587, !1588, !1636, !1711, !1712, !1713, !1714, !1715, !1724, !1907, !1920, !1923, !1924, !1928, !1930, !1931, !1932, !1936, !1942, !1943, !1946, !1950, !1953, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1965, !1968, !1969, !1970, !1971}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1580, file: !30, line: 462, baseType: !115, size: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1580, file: !30, line: 463, baseType: !1579, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1580, file: !30, line: 465, baseType: !1585, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1580, file: !30, line: 467, baseType: !96, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1580, file: !30, line: 468, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1601, !1605}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1591, file: !30, line: 88, baseType: !96, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1591, file: !30, line: 89, baseType: !101, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1591, file: !30, line: 90, baseType: !1576, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1591, file: !30, line: 91, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!174, !1579, !1600, !266, !274}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1591, file: !30, line: 93, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{null, !1579}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1591, file: !30, line: 95, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1609)
!1609 = !{!1610, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1608, file: !37, line: 279, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!158, !1579}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1608, file: !37, line: 280, baseType: !1602, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1608, file: !37, line: 281, baseType: !1611, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1608, file: !37, line: 282, baseType: !1611, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1608, file: !37, line: 283, baseType: !1611, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1608, file: !37, line: 284, baseType: !1611, size: 64, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1608, file: !37, line: 285, baseType: !1611, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1608, file: !37, line: 286, baseType: !1611, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1608, file: !37, line: 287, baseType: !1611, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1608, file: !37, line: 288, baseType: !1611, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1608, file: !37, line: 289, baseType: !1611, size: 64, offset: 640)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1608, file: !37, line: 290, baseType: !1611, size: 64, offset: 704)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1608, file: !37, line: 291, baseType: !1611, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1608, file: !37, line: 292, baseType: !1611, size: 64, offset: 832)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1608, file: !37, line: 293, baseType: !1611, size: 64, offset: 896)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1608, file: !37, line: 294, baseType: !1611, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1608, file: !37, line: 295, baseType: !1611, size: 64, offset: 1024)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1608, file: !37, line: 296, baseType: !1611, size: 64, offset: 1088)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1608, file: !37, line: 297, baseType: !1611, size: 64, offset: 1152)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1608, file: !37, line: 298, baseType: !1611, size: 64, offset: 1216)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1608, file: !37, line: 299, baseType: !1611, size: 64, offset: 1280)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1608, file: !37, line: 300, baseType: !1611, size: 64, offset: 1344)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1608, file: !37, line: 301, baseType: !1611, size: 64, offset: 1408)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1580, file: !30, line: 470, baseType: !1637, size: 64, offset: 768)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1639, line: 82, size: 1408, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1704, !1707, !1710}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !1639, line: 83, baseType: !96, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1638, file: !1639, line: 84, baseType: !96, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1638, file: !1639, line: 85, baseType: !1579, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1638, file: !1639, line: 86, baseType: !101, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1638, file: !1639, line: 87, baseType: !101, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1638, file: !1639, line: 88, baseType: !101, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1638, file: !1639, line: 90, baseType: !1648, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!158, !1579, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1659, !1660, !1664, !1668, !1669, !1670, !1671, !1672, !1680, !1681, !1682, !1683, !1684, !1685}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1652, file: !24, line: 96, baseType: !96, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1652, file: !24, line: 97, baseType: !1637, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1652, file: !24, line: 99, baseType: !85, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1652, file: !24, line: 100, baseType: !96, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1652, file: !24, line: 102, baseType: !236, size: 8, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1652, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1652, file: !24, line: 105, baseType: !1661, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1652, file: !24, line: 106, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1652, file: !24, line: 108, baseType: !1611, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1652, file: !24, line: 109, baseType: !1602, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1652, file: !24, line: 110, baseType: !1611, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1652, file: !24, line: 111, baseType: !1602, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1652, file: !24, line: 112, baseType: !1673, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!158, !1579, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1677, file: !37, line: 51, baseType: !158, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1652, file: !24, line: 113, baseType: !1611, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1652, file: !24, line: 114, baseType: !101, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1652, file: !24, line: 115, baseType: !101, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1652, file: !24, line: 117, baseType: !1606, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1652, file: !24, line: 118, baseType: !1602, size: 64, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1652, file: !24, line: 120, baseType: !1686, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1638, file: !1639, line: 91, baseType: !1576, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1638, file: !1639, line: 92, baseType: !1611, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1638, file: !1639, line: 93, baseType: !1602, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1638, file: !1639, line: 94, baseType: !1611, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1638, file: !1639, line: 95, baseType: !1602, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1638, file: !1639, line: 97, baseType: !1611, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1638, file: !1639, line: 98, baseType: !1611, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1638, file: !1639, line: 100, baseType: !1673, size: 64, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1638, file: !1639, line: 101, baseType: !1611, size: 64, offset: 960)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1638, file: !1639, line: 103, baseType: !1611, size: 64, offset: 1024)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1638, file: !1639, line: 105, baseType: !1611, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1638, file: !1639, line: 107, baseType: !1606, size: 64, offset: 1152)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1638, file: !1639, line: 109, baseType: !1701, size: 64, offset: 1216)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1639, line: 109, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1638, file: !1639, line: 111, baseType: !1705, size: 64, offset: 1280)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1639, line: 111, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1638, file: !1639, line: 112, baseType: !1708, offset: 1344)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1709, line: 187, elements: !146)
!1709 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1638, file: !1639, line: 114, baseType: !236, size: 8, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1580, file: !30, line: 471, baseType: !1651, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1580, file: !30, line: 473, baseType: !82, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1580, file: !30, line: 475, baseType: !82, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1580, file: !30, line: 480, baseType: !401, size: 192, offset: 1024)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1580, file: !30, line: 484, baseType: !1716, size: 576, offset: 1216)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1716, file: !30, line: 362, baseType: !120, size: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1716, file: !30, line: 363, baseType: !120, size: 128, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1716, file: !30, line: 364, baseType: !120, size: 128, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1716, file: !30, line: 365, baseType: !120, size: 128, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1716, file: !30, line: 366, baseType: !236, size: 8, offset: 512)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1716, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1580, file: !30, line: 485, baseType: !1725, size: 2304, offset: 1792)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1828, !1832}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1725, file: !37, line: 566, baseType: !1676, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1725, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1725, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1725, file: !37, line: 569, baseType: !236, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1725, file: !37, line: 570, baseType: !236, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1725, file: !37, line: 571, baseType: !236, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1725, file: !37, line: 572, baseType: !236, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1725, file: !37, line: 573, baseType: !236, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1725, file: !37, line: 574, baseType: !236, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1725, file: !37, line: 575, baseType: !236, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1725, file: !37, line: 576, baseType: !236, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1725, file: !37, line: 577, baseType: !335, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1725, file: !37, line: 578, baseType: !132, offset: 96)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1725, file: !37, line: 580, baseType: !120, size: 128, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1725, file: !37, line: 581, baseType: !905, size: 192, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1725, file: !37, line: 582, baseType: !1743, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1745, line: 43, size: 1472, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1760, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1744, file: !1745, line: 44, baseType: !96, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1744, file: !1745, line: 45, baseType: !158, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1744, file: !1745, line: 46, baseType: !120, size: 128, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1744, file: !1745, line: 47, baseType: !132, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1744, file: !1745, line: 48, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1754, line: 31, size: 192, elements: !1755)
!1754 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !{!1756, !1757, !1758, !1759}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1753, file: !1754, line: 32, baseType: !1579, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1753, file: !1754, line: 33, baseType: !7, size: 32, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1753, file: !1754, line: 34, baseType: !158, size: 32, offset: 96)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1753, file: !1754, line: 35, baseType: !96, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1744, file: !1745, line: 49, baseType: !1761, size: 320, offset: 320)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1762, line: 11, size: 320, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1771}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1761, file: !1762, line: 16, baseType: !875, size: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1761, file: !1762, line: 17, baseType: !83, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1761, file: !1762, line: 18, baseType: !1767, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 19, baseType: !335, size: 32, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1744, file: !1745, line: 50, baseType: !83, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1744, file: !1745, line: 51, baseType: !681, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1744, file: !1745, line: 52, baseType: !681, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1744, file: !1745, line: 53, baseType: !681, size: 64, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1744, file: !1745, line: 54, baseType: !681, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1744, file: !1745, line: 55, baseType: !681, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1744, file: !1745, line: 56, baseType: !83, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1744, file: !1745, line: 57, baseType: !83, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1744, file: !1745, line: 58, baseType: !83, size: 64, offset: 1152)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1744, file: !1745, line: 59, baseType: !83, size: 64, offset: 1216)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1744, file: !1745, line: 60, baseType: !83, size: 64, offset: 1280)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1744, file: !1745, line: 61, baseType: !1579, size: 64, offset: 1344)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1744, file: !1745, line: 62, baseType: !236, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1744, file: !1745, line: 63, baseType: !236, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1725, file: !37, line: 583, baseType: !236, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1725, file: !37, line: 584, baseType: !236, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1725, file: !37, line: 585, baseType: !236, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1725, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1725, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1725, file: !37, line: 592, baseType: !673, size: 512, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1725, file: !37, line: 593, baseType: !489, size: 64, offset: 1088)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1725, file: !37, line: 594, baseType: !1490, size: 256, offset: 1152)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1725, file: !37, line: 595, baseType: !369, size: 128, offset: 1408)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1725, file: !37, line: 596, baseType: !1752, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1725, file: !37, line: 597, baseType: !287, size: 32, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1725, file: !37, line: 598, baseType: !287, size: 32, offset: 1632)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1725, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1725, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1725, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1725, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1725, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1725, file: !37, line: 604, baseType: !236, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1725, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1725, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1725, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1725, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1725, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1725, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1725, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1725, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1725, file: !37, line: 613, baseType: !158, size: 32, offset: 1792)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1725, file: !37, line: 614, baseType: !158, size: 32, offset: 1824)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1725, file: !37, line: 615, baseType: !489, size: 64, offset: 1856)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1725, file: !37, line: 616, baseType: !489, size: 64, offset: 1920)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1725, file: !37, line: 617, baseType: !489, size: 64, offset: 1984)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1725, file: !37, line: 618, baseType: !489, size: 64, offset: 2048)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1725, file: !37, line: 620, baseType: !1819, size: 64, offset: 2112)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1820, file: !37, line: 537, baseType: !132)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1820, file: !37, line: 538, baseType: !7, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1820, file: !37, line: 540, baseType: !120, size: 128, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1820, file: !37, line: 543, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1725, file: !37, line: 621, baseType: !1829, size: 64, offset: 2176)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1579, !835}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1725, file: !37, line: 622, baseType: !1833, size: 64, offset: 2240)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !1835)
!1835 = !{!1836, !1865, !1866, !1873, !1878, !1905, !1906}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1834, file: !51, line: 118, baseType: !1837, size: 320)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !1838)
!1838 = !{!1839, !1844, !1845, !1846, !1847, !1848}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1837, file: !51, line: 53, baseType: !1840, size: 128)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1841, line: 79, size: 128, elements: !1842)
!1841 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1840, file: !1841, line: 80, baseType: !120, size: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1837, file: !51, line: 54, baseType: !835, size: 32, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1837, file: !51, line: 55, baseType: !835, size: 32, offset: 160)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1837, file: !51, line: 56, baseType: !835, size: 32, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1837, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1837, file: !51, line: 58, baseType: !1849, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1851, line: 65, size: 320, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1850, file: !1851, line: 66, baseType: !516, size: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1850, file: !1851, line: 67, baseType: !1855, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1851, line: 54, size: 192, elements: !1857)
!1857 = !{!1858, !1863, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1856, file: !1851, line: 55, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1851, line: 51, baseType: !1860)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!158, !1855, !83, !82}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1856, file: !1851, line: 56, baseType: !1855, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1856, file: !1851, line: 57, baseType: !158, size: 32, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1834, file: !51, line: 119, baseType: !1837, size: 320, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1834, file: !51, line: 120, baseType: !1867, size: 1280, offset: 640)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1867, file: !51, line: 86, baseType: !1837, size: 320)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1867, file: !51, line: 87, baseType: !1850, size: 320, offset: 320)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1867, file: !51, line: 88, baseType: !1837, size: 320, offset: 640)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1867, file: !51, line: 89, baseType: !1850, size: 320, offset: 960)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1834, file: !51, line: 121, baseType: !1874, size: 192, offset: 1920)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1874, file: !51, line: 72, baseType: !120, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1874, file: !51, line: 73, baseType: !835, size: 32, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1834, file: !51, line: 122, baseType: !1879, size: 64, offset: 2112)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !1881)
!1881 = !{!1882, !1883, !1904}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1880, file: !51, line: 108, baseType: !56, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1880, file: !51, line: 113, baseType: !1884, size: 448, offset: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !51, line: 109, size: 448, elements: !1885)
!1885 = !{!1886, !1892, !1897}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1884, file: !51, line: 110, baseType: !1887, size: 320)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1841, line: 83, size: 320, elements: !1888)
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1887, file: !1841, line: 84, baseType: !158, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1887, file: !1841, line: 85, baseType: !120, size: 128, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1887, file: !1841, line: 86, baseType: !120, size: 128, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1884, file: !51, line: 111, baseType: !1893, size: 192)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1893, file: !51, line: 67, baseType: !120, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1893, file: !51, line: 68, baseType: !835, size: 32, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1884, file: !51, line: 112, baseType: !1898, size: 448)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1898, file: !51, line: 93, baseType: !63, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1898, file: !51, line: 94, baseType: !1887, size: 320, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1898, file: !51, line: 95, baseType: !1903, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1880, file: !51, line: 114, baseType: !1579, size: 64, offset: 512)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1834, file: !51, line: 123, baseType: !1879, size: 64, offset: 2176)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1834, file: !51, line: 124, baseType: !1879, size: 64, offset: 2240)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1580, file: !30, line: 486, baseType: !1908, size: 64, offset: 4096)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1917, !1918, !1919}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1909, file: !37, line: 643, baseType: !1608, size: 1472)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1909, file: !37, line: 644, baseType: !1611, size: 64, offset: 1472)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1909, file: !37, line: 645, baseType: !1914, size: 64, offset: 1536)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{null, !1579, !236}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1909, file: !37, line: 646, baseType: !1611, size: 64, offset: 1600)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1909, file: !37, line: 647, baseType: !1602, size: 64, offset: 1664)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1909, file: !37, line: 648, baseType: !1602, size: 64, offset: 1728)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1580, file: !30, line: 493, baseType: !1921, size: 64, offset: 4160)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1580, file: !30, line: 499, baseType: !120, size: 128, offset: 4224)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1580, file: !30, line: 502, baseType: !1925, size: 64, offset: 4352)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1580, file: !30, line: 504, baseType: !1929, size: 64, offset: 4416)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1580, file: !30, line: 505, baseType: !489, size: 64, offset: 4480)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1580, file: !30, line: 510, baseType: !489, size: 64, offset: 4544)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1580, file: !30, line: 511, baseType: !1933, size: 64, offset: 4608)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1580, file: !30, line: 513, baseType: !1937, size: 64, offset: 4672)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1939)
!1939 = !{!1940, !1941}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1938, file: !30, line: 293, baseType: !7, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1938, file: !30, line: 294, baseType: !83, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1580, file: !30, line: 515, baseType: !120, size: 128, offset: 4736)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1580, file: !30, line: 526, baseType: !1944, offset: 4864)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1945, line: 5, elements: !146)
!1945 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1580, file: !30, line: 528, baseType: !1947, size: 64, offset: 4864)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1949, line: 14, flags: DIFlagFwdDecl)
!1949 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1580, file: !30, line: 529, baseType: !1951, size: 64, offset: 4928)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1639, line: 22, flags: DIFlagFwdDecl)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1580, file: !30, line: 534, baseType: !1954, size: 32, offset: 4992)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 16, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !81, line: 13, baseType: !335)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1580, file: !30, line: 535, baseType: !335, size: 32, offset: 5024)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1580, file: !30, line: 537, baseType: !132, offset: 5056)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1580, file: !30, line: 538, baseType: !120, size: 128, offset: 5056)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1580, file: !30, line: 540, baseType: !91, size: 64, offset: 5184)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1580, file: !30, line: 541, baseType: !101, size: 64, offset: 5248)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1580, file: !30, line: 543, baseType: !1602, size: 64, offset: 5312)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1580, file: !30, line: 544, baseType: !1963, size: 64, offset: 5376)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1580, file: !30, line: 545, baseType: !1966, size: 64, offset: 5440)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1580, file: !30, line: 547, baseType: !236, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1580, file: !30, line: 548, baseType: !236, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1580, file: !30, line: 549, baseType: !236, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1580, file: !30, line: 550, baseType: !236, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !92, file: !93, line: 63, baseType: !1973, size: 64, offset: 384)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!174, !1579, !1600}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !92, file: !93, line: 65, baseType: !1977, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !91}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !92, file: !93, line: 66, baseType: !1602, size: 64, offset: 512)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !92, file: !93, line: 68, baseType: !1611, size: 64, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !92, file: !93, line: 70, baseType: !227, size: 64, offset: 640)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !92, file: !93, line: 71, baseType: !1984, size: 64, offset: 704)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!246, !1579}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !92, file: !93, line: 73, baseType: !1988, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1579, !266, !274}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !92, file: !93, line: 75, baseType: !1606, size: 64, offset: 832)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !92, file: !93, line: 77, baseType: !1705, size: 64, offset: 896)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(name: "wakeup_source_groups", scope: !2, file: !3, line: 129, type: !1995, isLocal: true, isDefinition: true)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !1140)
!1996 = !DIGlobalVariableExpression(var: !1997, expr: !DIExpression())
!1997 = distinct !DIGlobalVariable(name: "wakeup_source_group", scope: !2, file: !3, line: 129, type: !103, isLocal: true, isDefinition: true)
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(name: "wakeup_source_attrs", scope: !2, file: !3, line: 116, type: !2000, isLocal: true, isDefinition: true)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 704, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 11)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 98, type: !2005, isLocal: true, isDefinition: true)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2006)
!2006 = !{!2007, !2008, !2013}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2005, file: !30, line: 100, baseType: !209, size: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2005, file: !30, line: 101, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!204, !1579, !2012, !174}
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2005, file: !30, line: 103, baseType: !2014, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!204, !1579, !2012, !96, !217}
!2017 = !DIGlobalVariableExpression(var: !2018, expr: !DIExpression())
!2018 = distinct !DIGlobalVariable(name: "dev_attr_active_count", scope: !2, file: !3, line: 33, type: !2005, isLocal: true, isDefinition: true)
!2019 = !DIGlobalVariableExpression(var: !2020, expr: !DIExpression())
!2020 = distinct !DIGlobalVariable(name: "dev_attr_event_count", scope: !2, file: !3, line: 34, type: !2005, isLocal: true, isDefinition: true)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_count", scope: !2, file: !3, line: 35, type: !2005, isLocal: true, isDefinition: true)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(name: "dev_attr_expire_count", scope: !2, file: !3, line: 36, type: !2005, isLocal: true, isDefinition: true)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "dev_attr_active_time_ms", scope: !2, file: !3, line: 47, type: !2005, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "dev_attr_total_time_ms", scope: !2, file: !3, line: 63, type: !2005, isLocal: true, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "dev_attr_max_time_ms", scope: !2, file: !3, line: 80, type: !2005, isLocal: true, isDefinition: true)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(name: "dev_attr_last_change_ms", scope: !2, file: !3, line: 89, type: !2005, isLocal: true, isDefinition: true)
!2033 = !DIGlobalVariableExpression(var: !2034, expr: !DIExpression())
!2034 = distinct !DIGlobalVariable(name: "dev_attr_prevent_suspend_time_ms", scope: !2, file: !3, line: 114, type: !2005, isLocal: true, isDefinition: true)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(name: "__key", scope: !2037, file: !3, line: 213, type: !1708, isLocal: true, isDefinition: true)
!2037 = distinct !DISubprogram(name: "wakeup_sources_sysfs_init", scope: !3, file: !3, line: 211, type: !2038, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!158}
!2040 = !{i32 7, !"Dwarf Version", i32 4}
!2041 = !{i32 2, !"Debug Info Version", i32 3}
!2042 = !{i32 1, !"wchar_size", i32 2}
!2043 = !{i32 1, !"Code Model", i32 2}
!2044 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2045 = distinct !DISubprogram(name: "wakeup_source_sysfs_add", scope: !3, file: !3, line: 177, type: !2046, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!158, !1579, !1743}
!2048 = !DILocalVariable(name: "parent", arg: 1, scope: !2045, file: !3, line: 177, type: !1579)
!2049 = !DILocation(line: 177, column: 44, scope: !2045)
!2050 = !DILocalVariable(name: "ws", arg: 2, scope: !2045, file: !3, line: 177, type: !1743)
!2051 = !DILocation(line: 177, column: 74, scope: !2045)
!2052 = !DILocalVariable(name: "dev", scope: !2045, file: !3, line: 179, type: !1579)
!2053 = !DILocation(line: 179, column: 17, scope: !2045)
!2054 = !DILocation(line: 181, column: 36, scope: !2045)
!2055 = !DILocation(line: 181, column: 44, scope: !2045)
!2056 = !DILocation(line: 181, column: 8, scope: !2045)
!2057 = !DILocation(line: 181, column: 6, scope: !2045)
!2058 = !DILocation(line: 182, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 182, column: 6)
!2060 = !DILocation(line: 182, column: 6, scope: !2059)
!2061 = !DILocation(line: 182, column: 6, scope: !2045)
!2062 = !DILocation(line: 183, column: 18, scope: !2059)
!2063 = !DILocation(line: 183, column: 10, scope: !2059)
!2064 = !DILocation(line: 183, column: 3, scope: !2059)
!2065 = !DILocation(line: 184, column: 12, scope: !2045)
!2066 = !DILocation(line: 184, column: 2, scope: !2045)
!2067 = !DILocation(line: 184, column: 6, scope: !2045)
!2068 = !DILocation(line: 184, column: 10, scope: !2045)
!2069 = !DILocation(line: 186, column: 2, scope: !2045)
!2070 = !DILocation(line: 187, column: 1, scope: !2045)
!2071 = distinct !DISubprogram(name: "wakeup_source_device_create", scope: !3, file: !3, line: 136, type: !2072, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!1579, !1579, !1743}
!2074 = !DILocalVariable(name: "parent", arg: 1, scope: !2071, file: !3, line: 136, type: !1579)
!2075 = !DILocation(line: 136, column: 66, scope: !2071)
!2076 = !DILocalVariable(name: "ws", arg: 2, scope: !2071, file: !3, line: 137, type: !1743)
!2077 = !DILocation(line: 137, column: 31, scope: !2071)
!2078 = !DILocalVariable(name: "dev", scope: !2071, file: !3, line: 139, type: !1579)
!2079 = !DILocation(line: 139, column: 17, scope: !2071)
!2080 = !DILocalVariable(name: "retval", scope: !2071, file: !3, line: 140, type: !158)
!2081 = !DILocation(line: 140, column: 6, scope: !2071)
!2082 = !DILocation(line: 142, column: 8, scope: !2071)
!2083 = !DILocation(line: 142, column: 6, scope: !2071)
!2084 = !DILocation(line: 143, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 143, column: 6)
!2086 = !DILocation(line: 143, column: 6, scope: !2071)
!2087 = !DILocation(line: 144, column: 10, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 143, column: 12)
!2089 = !DILocation(line: 145, column: 3, scope: !2088)
!2090 = !DILocation(line: 148, column: 20, scope: !2071)
!2091 = !DILocation(line: 148, column: 2, scope: !2071)
!2092 = !DILocation(line: 149, column: 2, scope: !2071)
!2093 = !DILocation(line: 149, column: 7, scope: !2071)
!2094 = !DILocation(line: 149, column: 12, scope: !2071)
!2095 = !DILocation(line: 150, column: 15, scope: !2071)
!2096 = !DILocation(line: 150, column: 2, scope: !2071)
!2097 = !DILocation(line: 150, column: 7, scope: !2071)
!2098 = !DILocation(line: 150, column: 13, scope: !2071)
!2099 = !DILocation(line: 151, column: 16, scope: !2071)
!2100 = !DILocation(line: 151, column: 2, scope: !2071)
!2101 = !DILocation(line: 151, column: 7, scope: !2071)
!2102 = !DILocation(line: 151, column: 14, scope: !2071)
!2103 = !DILocation(line: 152, column: 2, scope: !2071)
!2104 = !DILocation(line: 152, column: 7, scope: !2071)
!2105 = !DILocation(line: 152, column: 14, scope: !2071)
!2106 = !DILocation(line: 153, column: 2, scope: !2071)
!2107 = !DILocation(line: 153, column: 7, scope: !2071)
!2108 = !DILocation(line: 153, column: 15, scope: !2071)
!2109 = !DILocation(line: 154, column: 18, scope: !2071)
!2110 = !DILocation(line: 154, column: 23, scope: !2071)
!2111 = !DILocation(line: 154, column: 2, scope: !2071)
!2112 = !DILocation(line: 155, column: 29, scope: !2071)
!2113 = !DILocation(line: 155, column: 2, scope: !2071)
!2114 = !DILocation(line: 157, column: 29, scope: !2071)
!2115 = !DILocation(line: 157, column: 34, scope: !2071)
!2116 = !DILocation(line: 157, column: 52, scope: !2071)
!2117 = !DILocation(line: 157, column: 56, scope: !2071)
!2118 = !DILocation(line: 157, column: 11, scope: !2071)
!2119 = !DILocation(line: 157, column: 9, scope: !2071)
!2120 = !DILocation(line: 158, column: 6, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 158, column: 6)
!2122 = !DILocation(line: 158, column: 6, scope: !2071)
!2123 = !DILocation(line: 159, column: 3, scope: !2121)
!2124 = !DILocation(line: 161, column: 22, scope: !2071)
!2125 = !DILocation(line: 161, column: 11, scope: !2071)
!2126 = !DILocation(line: 161, column: 9, scope: !2071)
!2127 = !DILocation(line: 162, column: 6, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 162, column: 6)
!2129 = !DILocation(line: 162, column: 6, scope: !2071)
!2130 = !DILocation(line: 163, column: 3, scope: !2128)
!2131 = !DILocation(line: 165, column: 9, scope: !2071)
!2132 = !DILocation(line: 165, column: 2, scope: !2071)
!2133 = !DILabel(scope: !2071, name: "error", file: !3, line: 167)
!2134 = !DILocation(line: 167, column: 1, scope: !2071)
!2135 = !DILocation(line: 168, column: 13, scope: !2071)
!2136 = !DILocation(line: 168, column: 2, scope: !2071)
!2137 = !DILocation(line: 169, column: 17, scope: !2071)
!2138 = !DILocation(line: 169, column: 9, scope: !2071)
!2139 = !DILocation(line: 169, column: 2, scope: !2071)
!2140 = !DILocation(line: 170, column: 1, scope: !2071)
!2141 = distinct !DISubprogram(name: "IS_ERR", scope: !2142, file: !2142, line: 34, type: !2143, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2142 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!236, !246}
!2145 = !DILocalVariable(name: "ptr", arg: 1, scope: !2141, file: !2142, line: 34, type: !246)
!2146 = !DILocation(line: 34, column: 60, scope: !2141)
!2147 = !DILocation(line: 36, column: 9, scope: !2141)
!2148 = !DILocation(line: 36, column: 2, scope: !2141)
!2149 = distinct !DISubprogram(name: "PTR_ERR", scope: !2142, file: !2142, line: 29, type: !2150, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!84, !246}
!2152 = !DILocalVariable(name: "ptr", arg: 1, scope: !2149, file: !2142, line: 29, type: !246)
!2153 = !DILocation(line: 29, column: 61, scope: !2149)
!2154 = !DILocation(line: 31, column: 16, scope: !2149)
!2155 = !DILocation(line: 31, column: 9, scope: !2149)
!2156 = !DILocation(line: 31, column: 2, scope: !2149)
!2157 = distinct !DISubprogram(name: "pm_wakeup_source_sysfs_add", scope: !3, file: !3, line: 194, type: !1612, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2158 = !DILocalVariable(name: "parent", arg: 1, scope: !2157, file: !3, line: 194, type: !1579)
!2159 = !DILocation(line: 194, column: 47, scope: !2157)
!2160 = !DILocation(line: 196, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 196, column: 6)
!2162 = !DILocation(line: 196, column: 15, scope: !2161)
!2163 = !DILocation(line: 196, column: 21, scope: !2161)
!2164 = !DILocation(line: 196, column: 28, scope: !2161)
!2165 = !DILocation(line: 196, column: 31, scope: !2161)
!2166 = !DILocation(line: 196, column: 39, scope: !2161)
!2167 = !DILocation(line: 196, column: 45, scope: !2161)
!2168 = !DILocation(line: 196, column: 53, scope: !2161)
!2169 = !DILocation(line: 196, column: 6, scope: !2157)
!2170 = !DILocation(line: 197, column: 3, scope: !2161)
!2171 = !DILocation(line: 199, column: 33, scope: !2157)
!2172 = !DILocation(line: 199, column: 41, scope: !2157)
!2173 = !DILocation(line: 199, column: 49, scope: !2157)
!2174 = !DILocation(line: 199, column: 55, scope: !2157)
!2175 = !DILocation(line: 199, column: 9, scope: !2157)
!2176 = !DILocation(line: 199, column: 2, scope: !2157)
!2177 = !DILocation(line: 200, column: 1, scope: !2157)
!2178 = distinct !DISubprogram(name: "wakeup_source_sysfs_remove", scope: !3, file: !3, line: 206, type: !2179, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !1743}
!2181 = !DILocalVariable(name: "ws", arg: 1, scope: !2178, file: !3, line: 206, type: !1743)
!2182 = !DILocation(line: 206, column: 55, scope: !2178)
!2183 = !DILocation(line: 208, column: 20, scope: !2178)
!2184 = !DILocation(line: 208, column: 24, scope: !2178)
!2185 = !DILocation(line: 208, column: 2, scope: !2178)
!2186 = !DILocation(line: 209, column: 1, scope: !2178)
!2187 = !DILocation(line: 213, column: 17, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 213, column: 17)
!2189 = !DILocation(line: 213, column: 15, scope: !2037)
!2190 = !DILocation(line: 215, column: 25, scope: !2037)
!2191 = !DILocation(line: 215, column: 9, scope: !2037)
!2192 = !DILocation(line: 215, column: 2, scope: !2037)
!2193 = distinct !DISubprogram(name: "kzalloc", scope: !68, file: !68, line: 662, type: !2194, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!82, !217, !80}
!2196 = !DILocalVariable(name: "s", arg: 1, scope: !2197, file: !68, line: 445, type: !1216)
!2197 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !68, file: !68, line: 445, type: !2198, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!82, !1216, !80, !217}
!2200 = !DILocation(line: 445, column: 72, scope: !2197, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 552, column: 10, scope: !2202, inlinedAt: !2205)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !68, line: 540, column: 34)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !68, line: 540, column: 6)
!2204 = distinct !DISubprogram(name: "kmalloc", scope: !68, file: !68, line: 538, type: !2194, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2205 = distinct !DILocation(line: 664, column: 9, scope: !2193)
!2206 = !DILocalVariable(name: "flags", arg: 2, scope: !2197, file: !68, line: 446, type: !80)
!2207 = !DILocation(line: 446, column: 9, scope: !2197, inlinedAt: !2201)
!2208 = !DILocalVariable(name: "size", arg: 3, scope: !2197, file: !68, line: 446, type: !217)
!2209 = !DILocation(line: 446, column: 23, scope: !2197, inlinedAt: !2201)
!2210 = !DILocalVariable(name: "ret", scope: !2197, file: !68, line: 448, type: !82)
!2211 = !DILocation(line: 448, column: 8, scope: !2197, inlinedAt: !2201)
!2212 = !DILocalVariable(name: "flags", arg: 1, scope: !2213, file: !68, line: 318, type: !80)
!2213 = distinct !DISubprogram(name: "kmalloc_type", scope: !68, file: !68, line: 318, type: !2214, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!67, !80}
!2216 = !DILocation(line: 318, column: 67, scope: !2213, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 553, column: 20, scope: !2202, inlinedAt: !2205)
!2218 = !DILocalVariable(name: "size", arg: 1, scope: !2219, file: !68, line: 346, type: !217)
!2219 = distinct !DISubprogram(name: "kmalloc_index", scope: !68, file: !68, line: 346, type: !2220, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!7, !217}
!2222 = !DILocation(line: 346, column: 58, scope: !2219, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 547, column: 11, scope: !2202, inlinedAt: !2205)
!2224 = !DILocalVariable(name: "size", arg: 1, scope: !2225, file: !68, line: 472, type: !217)
!2225 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !68, file: !68, line: 472, type: !2226, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!82, !217, !80, !7}
!2228 = !DILocation(line: 472, column: 28, scope: !2225, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 481, column: 9, scope: !2230, inlinedAt: !2231)
!2230 = distinct !DISubprogram(name: "kmalloc_large", scope: !68, file: !68, line: 478, type: !2194, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2231 = distinct !DILocation(line: 545, column: 11, scope: !2232, inlinedAt: !2205)
!2232 = distinct !DILexicalBlock(scope: !2202, file: !68, line: 544, column: 7)
!2233 = !DILocalVariable(name: "flags", arg: 2, scope: !2225, file: !68, line: 472, type: !80)
!2234 = !DILocation(line: 472, column: 40, scope: !2225, inlinedAt: !2229)
!2235 = !DILocalVariable(name: "order", arg: 3, scope: !2225, file: !68, line: 472, type: !7)
!2236 = !DILocation(line: 472, column: 60, scope: !2225, inlinedAt: !2229)
!2237 = !DILocalVariable(name: "size", arg: 1, scope: !2230, file: !68, line: 478, type: !217)
!2238 = !DILocation(line: 478, column: 51, scope: !2230, inlinedAt: !2231)
!2239 = !DILocalVariable(name: "flags", arg: 2, scope: !2230, file: !68, line: 478, type: !80)
!2240 = !DILocation(line: 478, column: 63, scope: !2230, inlinedAt: !2231)
!2241 = !DILocalVariable(name: "order", scope: !2230, file: !68, line: 480, type: !7)
!2242 = !DILocation(line: 480, column: 15, scope: !2230, inlinedAt: !2231)
!2243 = !DILocalVariable(name: "size", arg: 1, scope: !2204, file: !68, line: 538, type: !217)
!2244 = !DILocation(line: 538, column: 45, scope: !2204, inlinedAt: !2205)
!2245 = !DILocalVariable(name: "flags", arg: 2, scope: !2204, file: !68, line: 538, type: !80)
!2246 = !DILocation(line: 538, column: 57, scope: !2204, inlinedAt: !2205)
!2247 = !DILocalVariable(name: "index", scope: !2202, file: !68, line: 542, type: !7)
!2248 = !DILocation(line: 542, column: 16, scope: !2202, inlinedAt: !2205)
!2249 = !DILocalVariable(name: "size", arg: 1, scope: !2193, file: !68, line: 662, type: !217)
!2250 = !DILocation(line: 662, column: 36, scope: !2193)
!2251 = !DILocalVariable(name: "flags", arg: 2, scope: !2193, file: !68, line: 662, type: !80)
!2252 = !DILocation(line: 662, column: 48, scope: !2193)
!2253 = !DILocation(line: 664, column: 17, scope: !2193)
!2254 = !DILocation(line: 664, column: 23, scope: !2193)
!2255 = !DILocation(line: 664, column: 29, scope: !2193)
!2256 = !DILocation(line: 540, column: 27, scope: !2203, inlinedAt: !2205)
!2257 = !DILocation(line: 540, column: 6, scope: !2203, inlinedAt: !2205)
!2258 = !DILocation(line: 540, column: 6, scope: !2204, inlinedAt: !2205)
!2259 = !DILocation(line: 544, column: 7, scope: !2232, inlinedAt: !2205)
!2260 = !DILocation(line: 544, column: 12, scope: !2232, inlinedAt: !2205)
!2261 = !DILocation(line: 544, column: 7, scope: !2202, inlinedAt: !2205)
!2262 = !DILocation(line: 545, column: 25, scope: !2232, inlinedAt: !2205)
!2263 = !DILocation(line: 545, column: 31, scope: !2232, inlinedAt: !2205)
!2264 = !DILocation(line: 480, column: 33, scope: !2230, inlinedAt: !2231)
!2265 = !DILocation(line: 480, column: 23, scope: !2230, inlinedAt: !2231)
!2266 = !DILocation(line: 481, column: 29, scope: !2230, inlinedAt: !2231)
!2267 = !DILocation(line: 481, column: 35, scope: !2230, inlinedAt: !2231)
!2268 = !DILocation(line: 481, column: 42, scope: !2230, inlinedAt: !2231)
!2269 = !DILocation(line: 474, column: 23, scope: !2225, inlinedAt: !2229)
!2270 = !DILocation(line: 474, column: 29, scope: !2225, inlinedAt: !2229)
!2271 = !DILocation(line: 474, column: 36, scope: !2225, inlinedAt: !2229)
!2272 = !DILocation(line: 474, column: 9, scope: !2225, inlinedAt: !2229)
!2273 = !DILocation(line: 545, column: 4, scope: !2232, inlinedAt: !2205)
!2274 = !DILocation(line: 547, column: 25, scope: !2202, inlinedAt: !2205)
!2275 = !DILocation(line: 348, column: 7, scope: !2276, inlinedAt: !2223)
!2276 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 348, column: 6)
!2277 = !DILocation(line: 348, column: 6, scope: !2219, inlinedAt: !2223)
!2278 = !DILocation(line: 349, column: 3, scope: !2276, inlinedAt: !2223)
!2279 = !DILocation(line: 351, column: 6, scope: !2280, inlinedAt: !2223)
!2280 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 351, column: 6)
!2281 = !DILocation(line: 351, column: 11, scope: !2280, inlinedAt: !2223)
!2282 = !DILocation(line: 351, column: 6, scope: !2219, inlinedAt: !2223)
!2283 = !DILocation(line: 352, column: 3, scope: !2280, inlinedAt: !2223)
!2284 = !DILocation(line: 354, column: 32, scope: !2285, inlinedAt: !2223)
!2285 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 354, column: 6)
!2286 = !DILocation(line: 354, column: 37, scope: !2285, inlinedAt: !2223)
!2287 = !DILocation(line: 354, column: 42, scope: !2285, inlinedAt: !2223)
!2288 = !DILocation(line: 354, column: 45, scope: !2285, inlinedAt: !2223)
!2289 = !DILocation(line: 354, column: 50, scope: !2285, inlinedAt: !2223)
!2290 = !DILocation(line: 354, column: 6, scope: !2219, inlinedAt: !2223)
!2291 = !DILocation(line: 355, column: 3, scope: !2285, inlinedAt: !2223)
!2292 = !DILocation(line: 356, column: 32, scope: !2293, inlinedAt: !2223)
!2293 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 356, column: 6)
!2294 = !DILocation(line: 356, column: 37, scope: !2293, inlinedAt: !2223)
!2295 = !DILocation(line: 356, column: 43, scope: !2293, inlinedAt: !2223)
!2296 = !DILocation(line: 356, column: 46, scope: !2293, inlinedAt: !2223)
!2297 = !DILocation(line: 356, column: 51, scope: !2293, inlinedAt: !2223)
!2298 = !DILocation(line: 356, column: 6, scope: !2219, inlinedAt: !2223)
!2299 = !DILocation(line: 357, column: 3, scope: !2293, inlinedAt: !2223)
!2300 = !DILocation(line: 358, column: 6, scope: !2301, inlinedAt: !2223)
!2301 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 358, column: 6)
!2302 = !DILocation(line: 358, column: 11, scope: !2301, inlinedAt: !2223)
!2303 = !DILocation(line: 358, column: 6, scope: !2219, inlinedAt: !2223)
!2304 = !DILocation(line: 358, column: 26, scope: !2301, inlinedAt: !2223)
!2305 = !DILocation(line: 359, column: 6, scope: !2306, inlinedAt: !2223)
!2306 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 359, column: 6)
!2307 = !DILocation(line: 359, column: 11, scope: !2306, inlinedAt: !2223)
!2308 = !DILocation(line: 359, column: 6, scope: !2219, inlinedAt: !2223)
!2309 = !DILocation(line: 359, column: 26, scope: !2306, inlinedAt: !2223)
!2310 = !DILocation(line: 360, column: 6, scope: !2311, inlinedAt: !2223)
!2311 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 360, column: 6)
!2312 = !DILocation(line: 360, column: 11, scope: !2311, inlinedAt: !2223)
!2313 = !DILocation(line: 360, column: 6, scope: !2219, inlinedAt: !2223)
!2314 = !DILocation(line: 360, column: 26, scope: !2311, inlinedAt: !2223)
!2315 = !DILocation(line: 361, column: 6, scope: !2316, inlinedAt: !2223)
!2316 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 361, column: 6)
!2317 = !DILocation(line: 361, column: 11, scope: !2316, inlinedAt: !2223)
!2318 = !DILocation(line: 361, column: 6, scope: !2219, inlinedAt: !2223)
!2319 = !DILocation(line: 361, column: 26, scope: !2316, inlinedAt: !2223)
!2320 = !DILocation(line: 362, column: 6, scope: !2321, inlinedAt: !2223)
!2321 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 362, column: 6)
!2322 = !DILocation(line: 362, column: 11, scope: !2321, inlinedAt: !2223)
!2323 = !DILocation(line: 362, column: 6, scope: !2219, inlinedAt: !2223)
!2324 = !DILocation(line: 362, column: 26, scope: !2321, inlinedAt: !2223)
!2325 = !DILocation(line: 363, column: 6, scope: !2326, inlinedAt: !2223)
!2326 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 363, column: 6)
!2327 = !DILocation(line: 363, column: 11, scope: !2326, inlinedAt: !2223)
!2328 = !DILocation(line: 363, column: 6, scope: !2219, inlinedAt: !2223)
!2329 = !DILocation(line: 363, column: 26, scope: !2326, inlinedAt: !2223)
!2330 = !DILocation(line: 364, column: 6, scope: !2331, inlinedAt: !2223)
!2331 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 364, column: 6)
!2332 = !DILocation(line: 364, column: 11, scope: !2331, inlinedAt: !2223)
!2333 = !DILocation(line: 364, column: 6, scope: !2219, inlinedAt: !2223)
!2334 = !DILocation(line: 364, column: 26, scope: !2331, inlinedAt: !2223)
!2335 = !DILocation(line: 365, column: 6, scope: !2336, inlinedAt: !2223)
!2336 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 365, column: 6)
!2337 = !DILocation(line: 365, column: 11, scope: !2336, inlinedAt: !2223)
!2338 = !DILocation(line: 365, column: 6, scope: !2219, inlinedAt: !2223)
!2339 = !DILocation(line: 365, column: 26, scope: !2336, inlinedAt: !2223)
!2340 = !DILocation(line: 366, column: 6, scope: !2341, inlinedAt: !2223)
!2341 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 366, column: 6)
!2342 = !DILocation(line: 366, column: 11, scope: !2341, inlinedAt: !2223)
!2343 = !DILocation(line: 366, column: 6, scope: !2219, inlinedAt: !2223)
!2344 = !DILocation(line: 366, column: 26, scope: !2341, inlinedAt: !2223)
!2345 = !DILocation(line: 367, column: 6, scope: !2346, inlinedAt: !2223)
!2346 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 367, column: 6)
!2347 = !DILocation(line: 367, column: 11, scope: !2346, inlinedAt: !2223)
!2348 = !DILocation(line: 367, column: 6, scope: !2219, inlinedAt: !2223)
!2349 = !DILocation(line: 367, column: 26, scope: !2346, inlinedAt: !2223)
!2350 = !DILocation(line: 368, column: 6, scope: !2351, inlinedAt: !2223)
!2351 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 368, column: 6)
!2352 = !DILocation(line: 368, column: 11, scope: !2351, inlinedAt: !2223)
!2353 = !DILocation(line: 368, column: 6, scope: !2219, inlinedAt: !2223)
!2354 = !DILocation(line: 368, column: 26, scope: !2351, inlinedAt: !2223)
!2355 = !DILocation(line: 369, column: 6, scope: !2356, inlinedAt: !2223)
!2356 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 369, column: 6)
!2357 = !DILocation(line: 369, column: 11, scope: !2356, inlinedAt: !2223)
!2358 = !DILocation(line: 369, column: 6, scope: !2219, inlinedAt: !2223)
!2359 = !DILocation(line: 369, column: 26, scope: !2356, inlinedAt: !2223)
!2360 = !DILocation(line: 370, column: 6, scope: !2361, inlinedAt: !2223)
!2361 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 370, column: 6)
!2362 = !DILocation(line: 370, column: 11, scope: !2361, inlinedAt: !2223)
!2363 = !DILocation(line: 370, column: 6, scope: !2219, inlinedAt: !2223)
!2364 = !DILocation(line: 370, column: 26, scope: !2361, inlinedAt: !2223)
!2365 = !DILocation(line: 371, column: 6, scope: !2366, inlinedAt: !2223)
!2366 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 371, column: 6)
!2367 = !DILocation(line: 371, column: 11, scope: !2366, inlinedAt: !2223)
!2368 = !DILocation(line: 371, column: 6, scope: !2219, inlinedAt: !2223)
!2369 = !DILocation(line: 371, column: 26, scope: !2366, inlinedAt: !2223)
!2370 = !DILocation(line: 372, column: 6, scope: !2371, inlinedAt: !2223)
!2371 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 372, column: 6)
!2372 = !DILocation(line: 372, column: 11, scope: !2371, inlinedAt: !2223)
!2373 = !DILocation(line: 372, column: 6, scope: !2219, inlinedAt: !2223)
!2374 = !DILocation(line: 372, column: 26, scope: !2371, inlinedAt: !2223)
!2375 = !DILocation(line: 373, column: 6, scope: !2376, inlinedAt: !2223)
!2376 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 373, column: 6)
!2377 = !DILocation(line: 373, column: 11, scope: !2376, inlinedAt: !2223)
!2378 = !DILocation(line: 373, column: 6, scope: !2219, inlinedAt: !2223)
!2379 = !DILocation(line: 373, column: 26, scope: !2376, inlinedAt: !2223)
!2380 = !DILocation(line: 374, column: 6, scope: !2381, inlinedAt: !2223)
!2381 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 374, column: 6)
!2382 = !DILocation(line: 374, column: 11, scope: !2381, inlinedAt: !2223)
!2383 = !DILocation(line: 374, column: 6, scope: !2219, inlinedAt: !2223)
!2384 = !DILocation(line: 374, column: 26, scope: !2381, inlinedAt: !2223)
!2385 = !DILocation(line: 375, column: 6, scope: !2386, inlinedAt: !2223)
!2386 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 375, column: 6)
!2387 = !DILocation(line: 375, column: 11, scope: !2386, inlinedAt: !2223)
!2388 = !DILocation(line: 375, column: 6, scope: !2219, inlinedAt: !2223)
!2389 = !DILocation(line: 375, column: 27, scope: !2386, inlinedAt: !2223)
!2390 = !DILocation(line: 376, column: 6, scope: !2391, inlinedAt: !2223)
!2391 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 376, column: 6)
!2392 = !DILocation(line: 376, column: 11, scope: !2391, inlinedAt: !2223)
!2393 = !DILocation(line: 376, column: 6, scope: !2219, inlinedAt: !2223)
!2394 = !DILocation(line: 376, column: 32, scope: !2391, inlinedAt: !2223)
!2395 = !DILocation(line: 377, column: 6, scope: !2396, inlinedAt: !2223)
!2396 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 377, column: 6)
!2397 = !DILocation(line: 377, column: 11, scope: !2396, inlinedAt: !2223)
!2398 = !DILocation(line: 377, column: 6, scope: !2219, inlinedAt: !2223)
!2399 = !DILocation(line: 377, column: 32, scope: !2396, inlinedAt: !2223)
!2400 = !DILocation(line: 378, column: 6, scope: !2401, inlinedAt: !2223)
!2401 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 378, column: 6)
!2402 = !DILocation(line: 378, column: 11, scope: !2401, inlinedAt: !2223)
!2403 = !DILocation(line: 378, column: 6, scope: !2219, inlinedAt: !2223)
!2404 = !DILocation(line: 378, column: 32, scope: !2401, inlinedAt: !2223)
!2405 = !DILocation(line: 379, column: 6, scope: !2406, inlinedAt: !2223)
!2406 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 379, column: 6)
!2407 = !DILocation(line: 379, column: 11, scope: !2406, inlinedAt: !2223)
!2408 = !DILocation(line: 379, column: 6, scope: !2219, inlinedAt: !2223)
!2409 = !DILocation(line: 379, column: 33, scope: !2406, inlinedAt: !2223)
!2410 = !DILocation(line: 380, column: 6, scope: !2411, inlinedAt: !2223)
!2411 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 380, column: 6)
!2412 = !DILocation(line: 380, column: 11, scope: !2411, inlinedAt: !2223)
!2413 = !DILocation(line: 380, column: 6, scope: !2219, inlinedAt: !2223)
!2414 = !DILocation(line: 380, column: 33, scope: !2411, inlinedAt: !2223)
!2415 = !DILocation(line: 381, column: 6, scope: !2416, inlinedAt: !2223)
!2416 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 381, column: 6)
!2417 = !DILocation(line: 381, column: 11, scope: !2416, inlinedAt: !2223)
!2418 = !DILocation(line: 381, column: 6, scope: !2219, inlinedAt: !2223)
!2419 = !DILocation(line: 381, column: 33, scope: !2416, inlinedAt: !2223)
!2420 = !DILocation(line: 382, column: 2, scope: !2421, inlinedAt: !2223)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !68, line: 382, column: 2)
!2422 = distinct !DILexicalBlock(scope: !2219, file: !68, line: 382, column: 2)
!2423 = !{i32 -2143728483, i32 -2143728454, i32 -2143728408, i32 -2143728350, i32 -2143728296, i32 -2143728242, i32 -2143728187, i32 -2143728156}
!2424 = !DILocation(line: 382, column: 2, scope: !2425, inlinedAt: !2223)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !68, line: 382, column: 2)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !68, line: 382, column: 2)
!2427 = !{i32 -2143727713, i32 -2143727706, i32 -2143727652, i32 -2143727621, i32 -2143727591}
!2428 = !DILocation(line: 382, column: 2, scope: !2426, inlinedAt: !2223)
!2429 = !DILocation(line: 386, column: 1, scope: !2219, inlinedAt: !2223)
!2430 = !DILocation(line: 547, column: 9, scope: !2202, inlinedAt: !2205)
!2431 = !DILocation(line: 549, column: 8, scope: !2432, inlinedAt: !2205)
!2432 = distinct !DILexicalBlock(scope: !2202, file: !68, line: 549, column: 7)
!2433 = !DILocation(line: 549, column: 7, scope: !2202, inlinedAt: !2205)
!2434 = !DILocation(line: 550, column: 4, scope: !2432, inlinedAt: !2205)
!2435 = !DILocation(line: 553, column: 33, scope: !2202, inlinedAt: !2205)
!2436 = !DILocation(line: 325, column: 6, scope: !2437, inlinedAt: !2217)
!2437 = distinct !DILexicalBlock(scope: !2213, file: !68, line: 325, column: 6)
!2438 = !DILocation(line: 325, column: 6, scope: !2213, inlinedAt: !2217)
!2439 = !DILocation(line: 326, column: 3, scope: !2437, inlinedAt: !2217)
!2440 = !DILocation(line: 332, column: 9, scope: !2213, inlinedAt: !2217)
!2441 = !DILocation(line: 332, column: 15, scope: !2213, inlinedAt: !2217)
!2442 = !DILocation(line: 332, column: 2, scope: !2213, inlinedAt: !2217)
!2443 = !DILocation(line: 336, column: 1, scope: !2213, inlinedAt: !2217)
!2444 = !DILocation(line: 553, column: 5, scope: !2202, inlinedAt: !2205)
!2445 = !DILocation(line: 553, column: 41, scope: !2202, inlinedAt: !2205)
!2446 = !DILocation(line: 554, column: 5, scope: !2202, inlinedAt: !2205)
!2447 = !DILocation(line: 554, column: 12, scope: !2202, inlinedAt: !2205)
!2448 = !DILocation(line: 448, column: 31, scope: !2197, inlinedAt: !2201)
!2449 = !DILocation(line: 448, column: 34, scope: !2197, inlinedAt: !2201)
!2450 = !DILocation(line: 448, column: 14, scope: !2197, inlinedAt: !2201)
!2451 = !DILocation(line: 450, column: 22, scope: !2197, inlinedAt: !2201)
!2452 = !DILocation(line: 450, column: 25, scope: !2197, inlinedAt: !2201)
!2453 = !DILocation(line: 450, column: 30, scope: !2197, inlinedAt: !2201)
!2454 = !DILocation(line: 450, column: 36, scope: !2197, inlinedAt: !2201)
!2455 = !DILocation(line: 450, column: 8, scope: !2197, inlinedAt: !2201)
!2456 = !DILocation(line: 450, column: 6, scope: !2197, inlinedAt: !2201)
!2457 = !DILocation(line: 451, column: 9, scope: !2197, inlinedAt: !2201)
!2458 = !DILocation(line: 552, column: 3, scope: !2202, inlinedAt: !2205)
!2459 = !DILocation(line: 557, column: 19, scope: !2204, inlinedAt: !2205)
!2460 = !DILocation(line: 557, column: 25, scope: !2204, inlinedAt: !2205)
!2461 = !DILocation(line: 557, column: 9, scope: !2204, inlinedAt: !2205)
!2462 = !DILocation(line: 557, column: 2, scope: !2204, inlinedAt: !2205)
!2463 = !DILocation(line: 558, column: 1, scope: !2204, inlinedAt: !2205)
!2464 = !DILocation(line: 664, column: 2, scope: !2193)
!2465 = distinct !DISubprogram(name: "device_create_release", scope: !3, file: !3, line: 131, type: !1603, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2466 = !DILocalVariable(name: "dev", arg: 1, scope: !2465, file: !3, line: 131, type: !1579)
!2467 = !DILocation(line: 131, column: 50, scope: !2465)
!2468 = !DILocation(line: 133, column: 8, scope: !2465)
!2469 = !DILocation(line: 133, column: 2, scope: !2465)
!2470 = !DILocation(line: 134, column: 1, scope: !2465)
!2471 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2472, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !1579, !82}
!2474 = !DILocalVariable(name: "dev", arg: 1, scope: !2471, file: !30, line: 660, type: !1579)
!2475 = !DILocation(line: 660, column: 51, scope: !2471)
!2476 = !DILocalVariable(name: "data", arg: 2, scope: !2471, file: !30, line: 660, type: !82)
!2477 = !DILocation(line: 660, column: 62, scope: !2471)
!2478 = !DILocation(line: 662, column: 21, scope: !2471)
!2479 = !DILocation(line: 662, column: 2, scope: !2471)
!2480 = !DILocation(line: 662, column: 7, scope: !2471)
!2481 = !DILocation(line: 662, column: 19, scope: !2471)
!2482 = !DILocation(line: 663, column: 1, scope: !2471)
!2483 = distinct !DISubprogram(name: "device_set_pm_not_required", scope: !30, file: !30, line: 707, type: !1603, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2484 = !DILocalVariable(name: "dev", arg: 1, scope: !2483, file: !30, line: 707, type: !1579)
!2485 = !DILocation(line: 707, column: 62, scope: !2483)
!2486 = !DILocation(line: 709, column: 2, scope: !2483)
!2487 = !DILocation(line: 709, column: 7, scope: !2483)
!2488 = !DILocation(line: 709, column: 13, scope: !2483)
!2489 = !DILocation(line: 709, column: 19, scope: !2483)
!2490 = !DILocation(line: 710, column: 1, scope: !2483)
!2491 = distinct !DISubprogram(name: "ERR_PTR", scope: !2142, file: !2142, line: 24, type: !2492, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!82, !84}
!2494 = !DILocalVariable(name: "error", arg: 1, scope: !2491, file: !2142, line: 24, type: !84)
!2495 = !DILocation(line: 24, column: 48, scope: !2491)
!2496 = !DILocation(line: 26, column: 18, scope: !2491)
!2497 = !DILocation(line: 26, column: 9, scope: !2491)
!2498 = !DILocation(line: 26, column: 2, scope: !2491)
!2499 = distinct !DISubprogram(name: "get_order", scope: !2500, file: !2500, line: 29, type: !2501, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2500 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!158, !83}
!2503 = !DILocalVariable(name: "x", arg: 1, scope: !2504, file: !2505, line: 366, type: !490)
!2504 = distinct !DISubprogram(name: "fls64", scope: !2505, file: !2505, line: 366, type: !2506, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2505 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!158, !490}
!2508 = !DILocation(line: 366, column: 40, scope: !2504, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 46, column: 9, scope: !2499)
!2510 = !DILocalVariable(name: "bitpos", scope: !2504, file: !2505, line: 368, type: !158)
!2511 = !DILocation(line: 368, column: 6, scope: !2504, inlinedAt: !2509)
!2512 = !DILocalVariable(name: "size", arg: 1, scope: !2499, file: !2500, line: 29, type: !83)
!2513 = !DILocation(line: 29, column: 63, scope: !2499)
!2514 = !DILocation(line: 31, column: 27, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2499, file: !2500, line: 31, column: 6)
!2516 = !DILocation(line: 31, column: 6, scope: !2515)
!2517 = !DILocation(line: 31, column: 6, scope: !2499)
!2518 = !DILocation(line: 32, column: 8, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !2500, line: 32, column: 7)
!2520 = distinct !DILexicalBlock(scope: !2515, file: !2500, line: 31, column: 34)
!2521 = !DILocation(line: 32, column: 7, scope: !2520)
!2522 = !DILocation(line: 33, column: 4, scope: !2519)
!2523 = !DILocation(line: 35, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !2500, line: 35, column: 7)
!2525 = !DILocation(line: 35, column: 12, scope: !2524)
!2526 = !DILocation(line: 35, column: 7, scope: !2520)
!2527 = !DILocation(line: 36, column: 4, scope: !2524)
!2528 = !DILocation(line: 38, column: 10, scope: !2520)
!2529 = !DILocation(line: 38, column: 28, scope: !2520)
!2530 = !DILocation(line: 38, column: 41, scope: !2520)
!2531 = !DILocation(line: 38, column: 3, scope: !2520)
!2532 = !DILocation(line: 41, column: 6, scope: !2499)
!2533 = !DILocation(line: 42, column: 7, scope: !2499)
!2534 = !DILocation(line: 46, column: 15, scope: !2499)
!2535 = !DILocation(line: 374, column: 2, scope: !2504, inlinedAt: !2509)
!2536 = !DILocation(line: 376, column: 14, scope: !2504, inlinedAt: !2509)
!2537 = !{i32 380746}
!2538 = !DILocation(line: 377, column: 9, scope: !2504, inlinedAt: !2509)
!2539 = !DILocation(line: 377, column: 16, scope: !2504, inlinedAt: !2509)
!2540 = !DILocation(line: 46, column: 2, scope: !2499)
!2541 = !DILocation(line: 48, column: 1, scope: !2499)
!2542 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2543, file: !2543, line: 30, type: !2544, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2543 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!158, !489}
!2546 = !DILocation(line: 366, column: 40, scope: !2504, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 32, column: 9, scope: !2542)
!2548 = !DILocation(line: 368, column: 6, scope: !2504, inlinedAt: !2547)
!2549 = !DILocalVariable(name: "n", arg: 1, scope: !2542, file: !2543, line: 30, type: !489)
!2550 = !DILocation(line: 30, column: 21, scope: !2542)
!2551 = !DILocation(line: 32, column: 15, scope: !2542)
!2552 = !DILocation(line: 374, column: 2, scope: !2504, inlinedAt: !2547)
!2553 = !DILocation(line: 376, column: 14, scope: !2504, inlinedAt: !2547)
!2554 = !DILocation(line: 377, column: 9, scope: !2504, inlinedAt: !2547)
!2555 = !DILocation(line: 377, column: 16, scope: !2504, inlinedAt: !2547)
!2556 = !DILocation(line: 32, column: 18, scope: !2542)
!2557 = !DILocation(line: 32, column: 2, scope: !2542)
!2558 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2559, file: !2559, line: 137, type: !2560, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2559 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!82, !1216, !246, !217, !80}
!2562 = !DILocalVariable(name: "s", arg: 1, scope: !2558, file: !2559, line: 137, type: !1216)
!2563 = !DILocation(line: 137, column: 54, scope: !2558)
!2564 = !DILocalVariable(name: "object", arg: 2, scope: !2558, file: !2559, line: 137, type: !246)
!2565 = !DILocation(line: 137, column: 69, scope: !2558)
!2566 = !DILocalVariable(name: "size", arg: 3, scope: !2558, file: !2559, line: 138, type: !217)
!2567 = !DILocation(line: 138, column: 12, scope: !2558)
!2568 = !DILocalVariable(name: "flags", arg: 4, scope: !2558, file: !2559, line: 138, type: !80)
!2569 = !DILocation(line: 138, column: 24, scope: !2558)
!2570 = !DILocation(line: 140, column: 17, scope: !2558)
!2571 = !DILocation(line: 140, column: 2, scope: !2558)
!2572 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 91, type: !2010, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2573 = !DILocalVariable(name: "dev", arg: 1, scope: !2572, file: !3, line: 91, type: !1579)
!2574 = !DILocation(line: 91, column: 41, scope: !2572)
!2575 = !DILocalVariable(name: "attr", arg: 2, scope: !2572, file: !3, line: 91, type: !2012)
!2576 = !DILocation(line: 91, column: 71, scope: !2572)
!2577 = !DILocalVariable(name: "buf", arg: 3, scope: !2572, file: !3, line: 92, type: !174)
!2578 = !DILocation(line: 92, column: 11, scope: !2572)
!2579 = !DILocalVariable(name: "ws", scope: !2572, file: !3, line: 94, type: !1743)
!2580 = !DILocation(line: 94, column: 24, scope: !2572)
!2581 = !DILocation(line: 94, column: 45, scope: !2572)
!2582 = !DILocation(line: 94, column: 29, scope: !2572)
!2583 = !DILocation(line: 96, column: 20, scope: !2572)
!2584 = !DILocation(line: 96, column: 33, scope: !2572)
!2585 = !DILocation(line: 96, column: 37, scope: !2572)
!2586 = !DILocation(line: 96, column: 9, scope: !2572)
!2587 = !DILocation(line: 96, column: 2, scope: !2572)
!2588 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2589, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!82, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1580)
!2593 = !DILocalVariable(name: "dev", arg: 1, scope: !2588, file: !30, line: 655, type: !2591)
!2594 = !DILocation(line: 655, column: 58, scope: !2588)
!2595 = !DILocation(line: 657, column: 9, scope: !2588)
!2596 = !DILocation(line: 657, column: 14, scope: !2588)
!2597 = !DILocation(line: 657, column: 2, scope: !2588)
!2598 = distinct !DISubprogram(name: "active_count_show", scope: !3, file: !3, line: 33, type: !2010, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2599 = !DILocalVariable(name: "dev", arg: 1, scope: !2598, file: !3, line: 33, type: !1579)
!2600 = !DILocation(line: 33, column: 1, scope: !2598)
!2601 = !DILocalVariable(name: "attr", arg: 2, scope: !2598, file: !3, line: 33, type: !2012)
!2602 = !DILocalVariable(name: "buf", arg: 3, scope: !2598, file: !3, line: 33, type: !174)
!2603 = !DILocalVariable(name: "ws", scope: !2598, file: !3, line: 33, type: !1743)
!2604 = distinct !DISubprogram(name: "event_count_show", scope: !3, file: !3, line: 34, type: !2010, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2605 = !DILocalVariable(name: "dev", arg: 1, scope: !2604, file: !3, line: 34, type: !1579)
!2606 = !DILocation(line: 34, column: 1, scope: !2604)
!2607 = !DILocalVariable(name: "attr", arg: 2, scope: !2604, file: !3, line: 34, type: !2012)
!2608 = !DILocalVariable(name: "buf", arg: 3, scope: !2604, file: !3, line: 34, type: !174)
!2609 = !DILocalVariable(name: "ws", scope: !2604, file: !3, line: 34, type: !1743)
!2610 = distinct !DISubprogram(name: "wakeup_count_show", scope: !3, file: !3, line: 35, type: !2010, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2611 = !DILocalVariable(name: "dev", arg: 1, scope: !2610, file: !3, line: 35, type: !1579)
!2612 = !DILocation(line: 35, column: 1, scope: !2610)
!2613 = !DILocalVariable(name: "attr", arg: 2, scope: !2610, file: !3, line: 35, type: !2012)
!2614 = !DILocalVariable(name: "buf", arg: 3, scope: !2610, file: !3, line: 35, type: !174)
!2615 = !DILocalVariable(name: "ws", scope: !2610, file: !3, line: 35, type: !1743)
!2616 = distinct !DISubprogram(name: "expire_count_show", scope: !3, file: !3, line: 36, type: !2010, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2617 = !DILocalVariable(name: "dev", arg: 1, scope: !2616, file: !3, line: 36, type: !1579)
!2618 = !DILocation(line: 36, column: 1, scope: !2616)
!2619 = !DILocalVariable(name: "attr", arg: 2, scope: !2616, file: !3, line: 36, type: !2012)
!2620 = !DILocalVariable(name: "buf", arg: 3, scope: !2616, file: !3, line: 36, type: !174)
!2621 = !DILocalVariable(name: "ws", scope: !2616, file: !3, line: 36, type: !1743)
!2622 = distinct !DISubprogram(name: "active_time_ms_show", scope: !3, file: !3, line: 38, type: !2010, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2623 = !DILocalVariable(name: "dev", arg: 1, scope: !2622, file: !3, line: 38, type: !1579)
!2624 = !DILocation(line: 38, column: 51, scope: !2622)
!2625 = !DILocalVariable(name: "attr", arg: 2, scope: !2622, file: !3, line: 39, type: !2012)
!2626 = !DILocation(line: 39, column: 33, scope: !2622)
!2627 = !DILocalVariable(name: "buf", arg: 3, scope: !2622, file: !3, line: 39, type: !174)
!2628 = !DILocation(line: 39, column: 45, scope: !2622)
!2629 = !DILocalVariable(name: "ws", scope: !2622, file: !3, line: 41, type: !1743)
!2630 = !DILocation(line: 41, column: 24, scope: !2622)
!2631 = !DILocation(line: 41, column: 45, scope: !2622)
!2632 = !DILocation(line: 41, column: 29, scope: !2622)
!2633 = !DILocalVariable(name: "active_time", scope: !2622, file: !3, line: 42, type: !681)
!2634 = !DILocation(line: 42, column: 10, scope: !2622)
!2635 = !DILocation(line: 43, column: 3, scope: !2622)
!2636 = !DILocation(line: 43, column: 7, scope: !2622)
!2637 = !DILocation(line: 43, column: 16, scope: !2622)
!2638 = !DILocation(line: 45, column: 20, scope: !2622)
!2639 = !DILocation(line: 45, column: 47, scope: !2622)
!2640 = !DILocation(line: 45, column: 35, scope: !2622)
!2641 = !DILocation(line: 45, column: 9, scope: !2622)
!2642 = !DILocation(line: 45, column: 2, scope: !2622)
!2643 = distinct !DISubprogram(name: "ktime_to_ms", scope: !682, file: !682, line: 164, type: !2644, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!411, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!2647 = !DILocalVariable(name: "kt", arg: 1, scope: !2643, file: !682, line: 164, type: !2646)
!2648 = !DILocation(line: 164, column: 45, scope: !2643)
!2649 = !DILocation(line: 166, column: 21, scope: !2643)
!2650 = !DILocation(line: 166, column: 9, scope: !2643)
!2651 = !DILocation(line: 166, column: 2, scope: !2643)
!2652 = distinct !DISubprogram(name: "ktime_divns", scope: !682, file: !682, line: 148, type: !2653, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!411, !2646, !411}
!2655 = !DILocalVariable(name: "kt", arg: 1, scope: !2652, file: !682, line: 148, type: !2646)
!2656 = !DILocation(line: 148, column: 45, scope: !2652)
!2657 = !DILocalVariable(name: "div", arg: 2, scope: !2652, file: !682, line: 148, type: !411)
!2658 = !DILocation(line: 148, column: 53, scope: !2652)
!2659 = !DILocalVariable(name: "__ret_warn_on", scope: !2660, file: !682, line: 154, type: !158)
!2660 = distinct !DILexicalBlock(scope: !2652, file: !682, line: 154, column: 2)
!2661 = !DILocation(line: 154, column: 2, scope: !2660)
!2662 = !DILocation(line: 154, column: 2, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2660, file: !682, line: 154, column: 2)
!2664 = !DILocation(line: 154, column: 2, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2663, file: !682, line: 154, column: 2)
!2666 = !DILocation(line: 154, column: 2, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2665, file: !682, line: 154, column: 2)
!2668 = !DILocation(line: 154, column: 2, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2665, file: !682, line: 154, column: 2)
!2670 = !{i32 -2145154546, i32 -2145154517, i32 -2145154471, i32 -2145154413, i32 -2145154359, i32 -2145154305, i32 -2145154250, i32 -2145154219}
!2671 = !DILocation(line: 154, column: 2, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2665, file: !682, line: 154, column: 2)
!2673 = !{i32 -2145153816, i32 -2145153809, i32 -2145153757, i32 -2145153726, i32 -2145153696}
!2674 = !DILocation(line: 154, column: 2, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2665, file: !682, line: 154, column: 2)
!2676 = !DILocation(line: 155, column: 9, scope: !2652)
!2677 = !DILocation(line: 155, column: 14, scope: !2652)
!2678 = !DILocation(line: 155, column: 12, scope: !2652)
!2679 = !DILocation(line: 155, column: 2, scope: !2652)
!2680 = distinct !DISubprogram(name: "total_time_ms_show", scope: !3, file: !3, line: 49, type: !2010, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2681 = !DILocalVariable(name: "dev", arg: 1, scope: !2680, file: !3, line: 49, type: !1579)
!2682 = !DILocation(line: 49, column: 50, scope: !2680)
!2683 = !DILocalVariable(name: "attr", arg: 2, scope: !2680, file: !3, line: 50, type: !2012)
!2684 = !DILocation(line: 50, column: 32, scope: !2680)
!2685 = !DILocalVariable(name: "buf", arg: 3, scope: !2680, file: !3, line: 50, type: !174)
!2686 = !DILocation(line: 50, column: 44, scope: !2680)
!2687 = !DILocalVariable(name: "ws", scope: !2680, file: !3, line: 52, type: !1743)
!2688 = !DILocation(line: 52, column: 24, scope: !2680)
!2689 = !DILocation(line: 52, column: 45, scope: !2680)
!2690 = !DILocation(line: 52, column: 29, scope: !2680)
!2691 = !DILocalVariable(name: "active_time", scope: !2680, file: !3, line: 53, type: !681)
!2692 = !DILocation(line: 53, column: 10, scope: !2680)
!2693 = !DILocalVariable(name: "total_time", scope: !2680, file: !3, line: 54, type: !681)
!2694 = !DILocation(line: 54, column: 10, scope: !2680)
!2695 = !DILocation(line: 54, column: 23, scope: !2680)
!2696 = !DILocation(line: 54, column: 27, scope: !2680)
!2697 = !DILocation(line: 56, column: 6, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 56, column: 6)
!2699 = !DILocation(line: 56, column: 10, scope: !2698)
!2700 = !DILocation(line: 56, column: 6, scope: !2680)
!2701 = !DILocation(line: 57, column: 17, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 56, column: 18)
!2703 = !DILocation(line: 57, column: 15, scope: !2702)
!2704 = !DILocation(line: 58, column: 16, scope: !2702)
!2705 = !DILocation(line: 58, column: 14, scope: !2702)
!2706 = !DILocation(line: 59, column: 2, scope: !2702)
!2707 = !DILocation(line: 61, column: 20, scope: !2680)
!2708 = !DILocation(line: 61, column: 47, scope: !2680)
!2709 = !DILocation(line: 61, column: 35, scope: !2680)
!2710 = !DILocation(line: 61, column: 9, scope: !2680)
!2711 = !DILocation(line: 61, column: 2, scope: !2680)
!2712 = distinct !DISubprogram(name: "max_time_ms_show", scope: !3, file: !3, line: 65, type: !2010, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2713 = !DILocalVariable(name: "dev", arg: 1, scope: !2712, file: !3, line: 65, type: !1579)
!2714 = !DILocation(line: 65, column: 48, scope: !2712)
!2715 = !DILocalVariable(name: "attr", arg: 2, scope: !2712, file: !3, line: 66, type: !2012)
!2716 = !DILocation(line: 66, column: 30, scope: !2712)
!2717 = !DILocalVariable(name: "buf", arg: 3, scope: !2712, file: !3, line: 66, type: !174)
!2718 = !DILocation(line: 66, column: 42, scope: !2712)
!2719 = !DILocalVariable(name: "ws", scope: !2712, file: !3, line: 68, type: !1743)
!2720 = !DILocation(line: 68, column: 24, scope: !2712)
!2721 = !DILocation(line: 68, column: 45, scope: !2712)
!2722 = !DILocation(line: 68, column: 29, scope: !2712)
!2723 = !DILocalVariable(name: "active_time", scope: !2712, file: !3, line: 69, type: !681)
!2724 = !DILocation(line: 69, column: 10, scope: !2712)
!2725 = !DILocalVariable(name: "max_time", scope: !2712, file: !3, line: 70, type: !681)
!2726 = !DILocation(line: 70, column: 10, scope: !2712)
!2727 = !DILocation(line: 70, column: 21, scope: !2712)
!2728 = !DILocation(line: 70, column: 25, scope: !2712)
!2729 = !DILocation(line: 72, column: 6, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 72, column: 6)
!2731 = !DILocation(line: 72, column: 10, scope: !2730)
!2732 = !DILocation(line: 72, column: 6, scope: !2712)
!2733 = !DILocation(line: 73, column: 17, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 72, column: 18)
!2735 = !DILocation(line: 73, column: 15, scope: !2734)
!2736 = !DILocation(line: 74, column: 7, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 74, column: 7)
!2738 = !DILocation(line: 74, column: 21, scope: !2737)
!2739 = !DILocation(line: 74, column: 19, scope: !2737)
!2740 = !DILocation(line: 74, column: 7, scope: !2734)
!2741 = !DILocation(line: 75, column: 15, scope: !2737)
!2742 = !DILocation(line: 75, column: 13, scope: !2737)
!2743 = !DILocation(line: 75, column: 4, scope: !2737)
!2744 = !DILocation(line: 76, column: 2, scope: !2734)
!2745 = !DILocation(line: 78, column: 20, scope: !2712)
!2746 = !DILocation(line: 78, column: 47, scope: !2712)
!2747 = !DILocation(line: 78, column: 35, scope: !2712)
!2748 = !DILocation(line: 78, column: 9, scope: !2712)
!2749 = !DILocation(line: 78, column: 2, scope: !2712)
!2750 = distinct !DISubprogram(name: "last_change_ms_show", scope: !3, file: !3, line: 82, type: !2010, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2751 = !DILocalVariable(name: "dev", arg: 1, scope: !2750, file: !3, line: 82, type: !1579)
!2752 = !DILocation(line: 82, column: 51, scope: !2750)
!2753 = !DILocalVariable(name: "attr", arg: 2, scope: !2750, file: !3, line: 83, type: !2012)
!2754 = !DILocation(line: 83, column: 33, scope: !2750)
!2755 = !DILocalVariable(name: "buf", arg: 3, scope: !2750, file: !3, line: 83, type: !174)
!2756 = !DILocation(line: 83, column: 45, scope: !2750)
!2757 = !DILocalVariable(name: "ws", scope: !2750, file: !3, line: 85, type: !1743)
!2758 = !DILocation(line: 85, column: 24, scope: !2750)
!2759 = !DILocation(line: 85, column: 45, scope: !2750)
!2760 = !DILocation(line: 85, column: 29, scope: !2750)
!2761 = !DILocation(line: 87, column: 20, scope: !2750)
!2762 = !DILocation(line: 87, column: 47, scope: !2750)
!2763 = !DILocation(line: 87, column: 51, scope: !2750)
!2764 = !DILocation(line: 87, column: 35, scope: !2750)
!2765 = !DILocation(line: 87, column: 9, scope: !2750)
!2766 = !DILocation(line: 87, column: 2, scope: !2750)
!2767 = distinct !DISubprogram(name: "prevent_suspend_time_ms_show", scope: !3, file: !3, line: 100, type: !2010, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2768 = !DILocalVariable(name: "dev", arg: 1, scope: !2767, file: !3, line: 100, type: !1579)
!2769 = !DILocation(line: 100, column: 60, scope: !2767)
!2770 = !DILocalVariable(name: "attr", arg: 2, scope: !2767, file: !3, line: 101, type: !2012)
!2771 = !DILocation(line: 101, column: 35, scope: !2767)
!2772 = !DILocalVariable(name: "buf", arg: 3, scope: !2767, file: !3, line: 102, type: !174)
!2773 = !DILocation(line: 102, column: 16, scope: !2767)
!2774 = !DILocalVariable(name: "ws", scope: !2767, file: !3, line: 104, type: !1743)
!2775 = !DILocation(line: 104, column: 24, scope: !2767)
!2776 = !DILocation(line: 104, column: 45, scope: !2767)
!2777 = !DILocation(line: 104, column: 29, scope: !2767)
!2778 = !DILocalVariable(name: "prevent_sleep_time", scope: !2767, file: !3, line: 105, type: !681)
!2779 = !DILocation(line: 105, column: 10, scope: !2767)
!2780 = !DILocation(line: 105, column: 31, scope: !2767)
!2781 = !DILocation(line: 105, column: 35, scope: !2767)
!2782 = !DILocation(line: 107, column: 6, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 107, column: 6)
!2784 = !DILocation(line: 107, column: 10, scope: !2783)
!2785 = !DILocation(line: 107, column: 17, scope: !2783)
!2786 = !DILocation(line: 107, column: 20, scope: !2783)
!2787 = !DILocation(line: 107, column: 24, scope: !2783)
!2788 = !DILocation(line: 107, column: 6, scope: !2767)
!2789 = !DILocation(line: 108, column: 24, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 107, column: 43)
!2791 = !DILocation(line: 108, column: 22, scope: !2790)
!2792 = !DILocation(line: 110, column: 2, scope: !2790)
!2793 = !DILocation(line: 112, column: 20, scope: !2767)
!2794 = !DILocation(line: 112, column: 47, scope: !2767)
!2795 = !DILocation(line: 112, column: 35, scope: !2767)
!2796 = !DILocation(line: 112, column: 9, scope: !2767)
!2797 = !DILocation(line: 112, column: 2, scope: !2767)
!2798 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !2142, file: !2142, line: 57, type: !2799, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!158, !246}
!2801 = !DILocalVariable(name: "ptr", arg: 1, scope: !2798, file: !2142, line: 57, type: !246)
!2802 = !DILocation(line: 57, column: 68, scope: !2798)
!2803 = !DILocation(line: 59, column: 13, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2798, file: !2142, line: 59, column: 6)
!2805 = !DILocation(line: 59, column: 6, scope: !2804)
!2806 = !DILocation(line: 59, column: 6, scope: !2798)
!2807 = !DILocation(line: 60, column: 18, scope: !2804)
!2808 = !DILocation(line: 60, column: 10, scope: !2804)
!2809 = !DILocation(line: 60, column: 3, scope: !2804)
!2810 = !DILocation(line: 62, column: 3, scope: !2804)
!2811 = !DILocation(line: 63, column: 1, scope: !2798)
