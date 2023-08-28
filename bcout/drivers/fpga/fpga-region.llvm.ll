; ModuleID = '../bcout/drivers/fpga/fpga-region.llvm.bc'
source_filename = "drivers/fpga/fpga-region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_fpga_region_init4:\09\09\09"
module asm ".long\09fpga_region_init - .\09\09\09"
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.fpga_region = type { %struct.device, %struct.mutex, %struct.list_head, %struct.fpga_manager*, %struct.fpga_image_info*, %struct.fpga_compat_id*, i8*, i32 (%struct.fpga_region*)* }
%struct.fpga_manager = type { i8*, %struct.device, %struct.mutex, i32, %struct.fpga_compat_id*, %struct.fpga_manager_ops*, i8* }
%struct.fpga_manager_ops = type { i64, i32 (%struct.fpga_manager*)*, i64 (%struct.fpga_manager*)*, i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)*, i32 (%struct.fpga_manager*, i8*, i64)*, i32 (%struct.fpga_manager*, %struct.sg_table*)*, i32 (%struct.fpga_manager*, %struct.fpga_image_info*)*, void (%struct.fpga_manager*)*, %struct.attribute_group** }
%struct.sg_table = type opaque
%struct.fpga_image_info = type { i32, i32, i32, i32, i8*, %struct.sg_table*, i8*, i64, i32, %struct.device*, %struct.device_node* }
%struct.fpga_compat_id = type { i64, i64 }

@fpga_region_class = internal global %struct.class* null, align 8, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"failed to get FPGA region\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"FPGA manager is busy\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to get fpga region bridges\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to disable bridges\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to load FPGA image\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to enable region bridges\0A\00", align 1
@fpga_region_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !2045
@fpga_region_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2011
@.str.6 = private unnamed_addr constant [15 x i8] c"&region->mutex\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"region%d\00", align 1
@__UNIQUE_ID___addressable_fpga_region_init163 = internal global i8* bitcast (i32 ()* @fpga_region_init to i8*), section ".discard.addressable", align 8, !dbg !2016
@__exitcall_fpga_region_exit = internal global void ()* @fpga_region_exit, section ".exitcall.exit", align 8, !dbg !2018
@__UNIQUE_ID_description164 = internal constant [36 x i8] c"fpga_region.description=FPGA Region\00", section ".modinfo", align 1, !dbg !2025
@__UNIQUE_ID_author165 = internal constant [48 x i8] c"fpga_region.author=Alan Tull <atull@kernel.org>\00", section ".modinfo", align 1, !dbg !2030
@__UNIQUE_ID_file166 = internal constant [42 x i8] c"fpga_region.file=drivers/fpga/fpga-region\00", section ".modinfo", align 1, !dbg !2035
@__UNIQUE_ID_license167 = internal constant [27 x i8] c"fpga_region.license=GPL v2\00", section ".modinfo", align 1, !dbg !2040
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@fpga_region_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2050
@.str.9 = private unnamed_addr constant [12 x i8] c"fpga_region\00", align 1
@fpga_region_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @fpga_region_group, %struct.attribute_group* null], align 16, !dbg !2055
@fpga_region_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @fpga_region_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2058
@fpga_region_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_compat_id, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2060
@dev_attr_compat_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @compat_id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2063
@.str.10 = private unnamed_addr constant [10 x i8] c"compat_id\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%016llx%016llx\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (void ()* @fpga_region_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_fpga_region_init163 to i8*), i8* bitcast (void ()** @__exitcall_fpga_region_exit to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_description164, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author165, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file166, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license167, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_region* @fpga_region_class_find(%struct.device* %start, i8* %data, i32 (%struct.device*, i8*)* %match) #0 !dbg !2082 {
entry:
  %retval = alloca %struct.fpga_region*, align 8
  %start.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %match.addr = alloca i32 (%struct.device*, i8*)*, align 8
  %dev = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_region*, align 8
  store %struct.device* %start, %struct.device** %start.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %start.addr, metadata !2088, metadata !DIExpression()), !dbg !2089
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2090, metadata !DIExpression()), !dbg !2091
  store i32 (%struct.device*, i8*)* %match, i32 (%struct.device*, i8*)** %match.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.device*, i8*)** %match.addr, metadata !2092, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2094, metadata !DIExpression()), !dbg !2095
  %0 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2096
  %1 = load %struct.device*, %struct.device** %start.addr, align 8, !dbg !2097
  %2 = load i8*, i8** %data.addr, align 8, !dbg !2098
  %3 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %match.addr, align 8, !dbg !2099
  %call = call %struct.device* @class_find_device(%struct.class* %0, %struct.device* %1, i8* %2, i32 (%struct.device*, i8*)* %3) #8, !dbg !2100
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !2101
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2102
  %tobool = icmp ne %struct.device* %4, null, !dbg !2102
  br i1 %tobool, label %if.end, label %if.then, !dbg !2104

if.then:                                          ; preds = %entry
  store %struct.fpga_region* null, %struct.fpga_region** %retval, align 8, !dbg !2105
  br label %return, !dbg !2105

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2106, metadata !DIExpression()), !dbg !2108
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2108
  %6 = bitcast %struct.device* %5 to i8*, !dbg !2108
  store i8* %6, i8** %__mptr, align 8, !dbg !2108
  br label %do.body, !dbg !2108

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2109

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !2108
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !2108
  %8 = bitcast i8* %add.ptr to %struct.fpga_region*, !dbg !2108
  store %struct.fpga_region* %8, %struct.fpga_region** %tmp, align 8, !dbg !2109
  %9 = load %struct.fpga_region*, %struct.fpga_region** %tmp, align 8, !dbg !2108
  store %struct.fpga_region* %9, %struct.fpga_region** %retval, align 8, !dbg !2111
  br label %return, !dbg !2111

return:                                           ; preds = %do.end, %if.then
  %10 = load %struct.fpga_region*, %struct.fpga_region** %retval, align 8, !dbg !2112
  ret %struct.fpga_region* %10, !dbg !2112
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @class_find_device(%struct.class*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_region_program_fpga(%struct.fpga_region* %region) #0 !dbg !2113 {
entry:
  %retval = alloca i32, align 4
  %region.addr = alloca %struct.fpga_region*, align 8
  %dev = alloca %struct.device*, align 8
  %info = alloca %struct.fpga_image_info*, align 8
  %ret = alloca i32, align 4
  store %struct.fpga_region* %region, %struct.fpga_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region.addr, metadata !2114, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2116, metadata !DIExpression()), !dbg !2117
  %0 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2118
  %dev1 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %0, i32 0, i32 0, !dbg !2119
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2117
  call void @llvm.dbg.declare(metadata %struct.fpga_image_info** %info, metadata !2120, metadata !DIExpression()), !dbg !2121
  %1 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2122
  %info2 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %1, i32 0, i32 4, !dbg !2123
  %2 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info2, align 8, !dbg !2123
  store %struct.fpga_image_info* %2, %struct.fpga_image_info** %info, align 8, !dbg !2121
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2124, metadata !DIExpression()), !dbg !2125
  %3 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2126
  %call = call %struct.fpga_region* @fpga_region_get(%struct.fpga_region* %3) #8, !dbg !2127
  store %struct.fpga_region* %call, %struct.fpga_region** %region.addr, align 8, !dbg !2128
  %4 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2129
  %5 = bitcast %struct.fpga_region* %4 to i8*, !dbg !2129
  %call3 = call zeroext i1 @IS_ERR(i8* %5) #8, !dbg !2131
  br i1 %call3, label %if.then, label %if.end, !dbg !2132

if.then:                                          ; preds = %entry
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2133
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2133
  %7 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2135
  %8 = bitcast %struct.fpga_region* %7 to i8*, !dbg !2135
  %call4 = call i64 @PTR_ERR(i8* %8) #8, !dbg !2136
  %conv = trunc i64 %call4 to i32, !dbg !2136
  store i32 %conv, i32* %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end:                                           ; preds = %entry
  %9 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2138
  %mgr = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %9, i32 0, i32 3, !dbg !2139
  %10 = load %struct.fpga_manager*, %struct.fpga_manager** %mgr, align 8, !dbg !2139
  %call5 = call i32 @fpga_mgr_lock(%struct.fpga_manager* %10) #8, !dbg !2140
  store i32 %call5, i32* %ret, align 4, !dbg !2141
  %11 = load i32, i32* %ret, align 4, !dbg !2142
  %tobool = icmp ne i32 %11, 0, !dbg !2142
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !2144

if.then6:                                         ; preds = %if.end
  %12 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2145
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2145
  br label %err_put_region, !dbg !2147

if.end7:                                          ; preds = %if.end
  %13 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2148
  %get_bridges = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %13, i32 0, i32 7, !dbg !2150
  %14 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %get_bridges, align 8, !dbg !2150
  %tobool8 = icmp ne i32 (%struct.fpga_region*)* %14, null, !dbg !2148
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !2151

if.then9:                                         ; preds = %if.end7
  %15 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2152
  %get_bridges10 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %15, i32 0, i32 7, !dbg !2154
  %16 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %get_bridges10, align 8, !dbg !2154
  %17 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2155
  %call11 = call i32 %16(%struct.fpga_region* %17) #8, !dbg !2152
  store i32 %call11, i32* %ret, align 4, !dbg !2156
  %18 = load i32, i32* %ret, align 4, !dbg !2157
  %tobool12 = icmp ne i32 %18, 0, !dbg !2157
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2159

if.then13:                                        ; preds = %if.then9
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2160
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2160
  br label %err_unlock_mgr, !dbg !2162

if.end14:                                         ; preds = %if.then9
  br label %if.end15, !dbg !2163

if.end15:                                         ; preds = %if.end14, %if.end7
  %20 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2164
  %bridge_list = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %20, i32 0, i32 2, !dbg !2165
  %call16 = call i32 @fpga_bridges_disable(%struct.list_head* %bridge_list) #8, !dbg !2166
  store i32 %call16, i32* %ret, align 4, !dbg !2167
  %21 = load i32, i32* %ret, align 4, !dbg !2168
  %tobool17 = icmp ne i32 %21, 0, !dbg !2168
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !2170

if.then18:                                        ; preds = %if.end15
  %22 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2171
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2171
  br label %err_put_br, !dbg !2173

if.end19:                                         ; preds = %if.end15
  %23 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2174
  %mgr20 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %23, i32 0, i32 3, !dbg !2175
  %24 = load %struct.fpga_manager*, %struct.fpga_manager** %mgr20, align 8, !dbg !2175
  %25 = load %struct.fpga_image_info*, %struct.fpga_image_info** %info, align 8, !dbg !2176
  %call21 = call i32 @fpga_mgr_load(%struct.fpga_manager* %24, %struct.fpga_image_info* %25) #8, !dbg !2177
  store i32 %call21, i32* %ret, align 4, !dbg !2178
  %26 = load i32, i32* %ret, align 4, !dbg !2179
  %tobool22 = icmp ne i32 %26, 0, !dbg !2179
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2181

if.then23:                                        ; preds = %if.end19
  %27 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2182
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !2182
  br label %err_put_br, !dbg !2184

if.end24:                                         ; preds = %if.end19
  %28 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2185
  %bridge_list25 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %28, i32 0, i32 2, !dbg !2186
  %call26 = call i32 @fpga_bridges_enable(%struct.list_head* %bridge_list25) #8, !dbg !2187
  store i32 %call26, i32* %ret, align 4, !dbg !2188
  %29 = load i32, i32* %ret, align 4, !dbg !2189
  %tobool27 = icmp ne i32 %29, 0, !dbg !2189
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !2191

if.then28:                                        ; preds = %if.end24
  %30 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2192
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !2192
  br label %err_put_br, !dbg !2194

if.end29:                                         ; preds = %if.end24
  %31 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2195
  %mgr30 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %31, i32 0, i32 3, !dbg !2196
  %32 = load %struct.fpga_manager*, %struct.fpga_manager** %mgr30, align 8, !dbg !2196
  call void @fpga_mgr_unlock(%struct.fpga_manager* %32) #8, !dbg !2197
  %33 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2198
  call void @fpga_region_put(%struct.fpga_region* %33) #8, !dbg !2199
  store i32 0, i32* %retval, align 4, !dbg !2200
  br label %return, !dbg !2200

err_put_br:                                       ; preds = %if.then28, %if.then23, %if.then18
  call void @llvm.dbg.label(metadata !2201), !dbg !2202
  %34 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2203
  %get_bridges31 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %34, i32 0, i32 7, !dbg !2205
  %35 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %get_bridges31, align 8, !dbg !2205
  %tobool32 = icmp ne i32 (%struct.fpga_region*)* %35, null, !dbg !2203
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2206

if.then33:                                        ; preds = %err_put_br
  %36 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2207
  %bridge_list34 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %36, i32 0, i32 2, !dbg !2208
  call void @fpga_bridges_put(%struct.list_head* %bridge_list34) #8, !dbg !2209
  br label %if.end35, !dbg !2209

if.end35:                                         ; preds = %if.then33, %err_put_br
  br label %err_unlock_mgr, !dbg !2205

err_unlock_mgr:                                   ; preds = %if.end35, %if.then13
  call void @llvm.dbg.label(metadata !2210), !dbg !2211
  %37 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2212
  %mgr36 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %37, i32 0, i32 3, !dbg !2213
  %38 = load %struct.fpga_manager*, %struct.fpga_manager** %mgr36, align 8, !dbg !2213
  call void @fpga_mgr_unlock(%struct.fpga_manager* %38) #8, !dbg !2214
  br label %err_put_region, !dbg !2214

err_put_region:                                   ; preds = %err_unlock_mgr, %if.then6
  call void @llvm.dbg.label(metadata !2215), !dbg !2216
  %39 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2217
  call void @fpga_region_put(%struct.fpga_region* %39) #8, !dbg !2218
  %40 = load i32, i32* %ret, align 4, !dbg !2219
  store i32 %40, i32* %retval, align 4, !dbg !2220
  br label %return, !dbg !2220

return:                                           ; preds = %err_put_region, %if.end29, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !2221
  ret i32 %41, !dbg !2221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fpga_region* @fpga_region_get(%struct.fpga_region* %region) #0 !dbg !2222 {
entry:
  %retval = alloca %struct.fpga_region*, align 8
  %region.addr = alloca %struct.fpga_region*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.fpga_region* %region, %struct.fpga_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2227, metadata !DIExpression()), !dbg !2228
  %0 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2229
  %dev1 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %0, i32 0, i32 0, !dbg !2230
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2228
  %1 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2231
  %mutex = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %1, i32 0, i32 1, !dbg !2233
  %call = call i32 @mutex_trylock(%struct.mutex* %mutex) #8, !dbg !2234
  %tobool = icmp ne i32 %call, 0, !dbg !2234
  br i1 %tobool, label %if.end, label %if.then, !dbg !2235

if.then:                                          ; preds = %entry
  %call2 = call i8* @ERR_PTR(i64 -16) #8, !dbg !2236
  %2 = bitcast i8* %call2 to %struct.fpga_region*, !dbg !2236
  store %struct.fpga_region* %2, %struct.fpga_region** %retval, align 8, !dbg !2238
  br label %return, !dbg !2238

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2239
  %call3 = call %struct.device* @get_device(%struct.device* %3) #8, !dbg !2240
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2241
  %parent = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 1, !dbg !2243
  %5 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2243
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !2244
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2244
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %6, i32 0, i32 2, !dbg !2245
  %7 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2245
  %call4 = call zeroext i1 @try_module_get(%struct.module* %7) #8, !dbg !2246
  br i1 %call4, label %if.end8, label %if.then5, !dbg !2247

if.then5:                                         ; preds = %if.end
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2248
  call void @put_device(%struct.device* %8) #8, !dbg !2250
  %9 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2251
  %mutex6 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %9, i32 0, i32 1, !dbg !2252
  call void @mutex_unlock(%struct.mutex* %mutex6) #8, !dbg !2253
  %call7 = call i8* @ERR_PTR(i64 -19) #8, !dbg !2254
  %10 = bitcast i8* %call7 to %struct.fpga_region*, !dbg !2254
  store %struct.fpga_region* %10, %struct.fpga_region** %retval, align 8, !dbg !2255
  br label %return, !dbg !2255

if.end8:                                          ; preds = %if.end
  %11 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2256
  store %struct.fpga_region* %11, %struct.fpga_region** %retval, align 8, !dbg !2257
  br label %return, !dbg !2257

return:                                           ; preds = %if.end8, %if.then5, %if.then
  %12 = load %struct.fpga_region*, %struct.fpga_region** %retval, align 8, !dbg !2258
  ret %struct.fpga_region* %12, !dbg !2258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2259 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2263, metadata !DIExpression()), !dbg !2264
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2265
  %1 = ptrtoint i8* %0 to i64, !dbg !2265
  %2 = inttoptr i64 %1 to i8*, !dbg !2265
  %3 = ptrtoint i8* %2 to i64, !dbg !2265
  %cmp = icmp uge i64 %3, -4095, !dbg !2265
  %lnot = xor i1 %cmp, true, !dbg !2265
  %lnot1 = xor i1 %lnot, true, !dbg !2265
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2265
  %conv = sext i32 %lnot.ext to i64, !dbg !2265
  %tobool = icmp ne i64 %conv, 0, !dbg !2265
  ret i1 %tobool, !dbg !2266
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2267 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2270, metadata !DIExpression()), !dbg !2271
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2272
  %1 = ptrtoint i8* %0 to i64, !dbg !2273
  ret i64 %1, !dbg !2274
}

; Function Attrs: noredzone
declare dso_local i32 @fpga_mgr_lock(%struct.fpga_manager*) #2

; Function Attrs: noredzone
declare dso_local i32 @fpga_bridges_disable(%struct.list_head*) #2

; Function Attrs: noredzone
declare dso_local i32 @fpga_mgr_load(%struct.fpga_manager*, %struct.fpga_image_info*) #2

; Function Attrs: noredzone
declare dso_local i32 @fpga_bridges_enable(%struct.list_head*) #2

; Function Attrs: noredzone
declare dso_local void @fpga_mgr_unlock(%struct.fpga_manager*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fpga_region_put(%struct.fpga_region* %region) #0 !dbg !2275 {
entry:
  %region.addr = alloca %struct.fpga_region*, align 8
  %dev = alloca %struct.device*, align 8
  store %struct.fpga_region* %region, %struct.fpga_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region.addr, metadata !2278, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !2280, metadata !DIExpression()), !dbg !2281
  %0 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2282
  %dev1 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %0, i32 0, i32 0, !dbg !2283
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !2281
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2284
  %parent = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 1, !dbg !2285
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2285
  %driver = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !2286
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2286
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 2, !dbg !2287
  %4 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2287
  call void @module_put(%struct.module* %4) #8, !dbg !2288
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !2289
  call void @put_device(%struct.device* %5) #8, !dbg !2290
  %6 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2291
  %mutex = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %6, i32 0, i32 1, !dbg !2292
  call void @mutex_unlock(%struct.mutex* %mutex) #8, !dbg !2293
  ret void, !dbg !2294
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @fpga_bridges_put(%struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_region* @fpga_region_create(%struct.device* %dev, %struct.fpga_manager* %mgr, i32 (%struct.fpga_region*)* %get_bridges) #0 !dbg !2013 {
entry:
  %retval = alloca %struct.fpga_region*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %mgr.addr = alloca %struct.fpga_manager*, align 8
  %get_bridges.addr = alloca i32 (%struct.fpga_region*)*, align 8
  %region = alloca %struct.fpga_region*, align 8
  %id = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2295, metadata !DIExpression()), !dbg !2296
  store %struct.fpga_manager* %mgr, %struct.fpga_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_manager** %mgr.addr, metadata !2297, metadata !DIExpression()), !dbg !2298
  store i32 (%struct.fpga_region*)* %get_bridges, i32 (%struct.fpga_region*)** %get_bridges.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.fpga_region*)** %get_bridges.addr, metadata !2299, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region, metadata !2301, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.declare(metadata i32* %id, metadata !2303, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2305, metadata !DIExpression()), !dbg !2306
  store i32 0, i32* %ret, align 4, !dbg !2306
  %call = call i8* @kzalloc(i64 776, i32 3264) #8, !dbg !2307
  %0 = bitcast i8* %call to %struct.fpga_region*, !dbg !2307
  store %struct.fpga_region* %0, %struct.fpga_region** %region, align 8, !dbg !2308
  %1 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2309
  %tobool = icmp ne %struct.fpga_region* %1, null, !dbg !2309
  br i1 %tobool, label %if.end, label %if.then, !dbg !2311

if.then:                                          ; preds = %entry
  store %struct.fpga_region* null, %struct.fpga_region** %retval, align 8, !dbg !2312
  br label %return, !dbg !2312

if.end:                                           ; preds = %entry
  %call1 = call i32 @ida_alloc_range(%struct.ida* @fpga_region_ida, i32 0, i32 -1, i32 3264) #8, !dbg !2313
  store i32 %call1, i32* %id, align 4, !dbg !2314
  %2 = load i32, i32* %id, align 4, !dbg !2315
  %cmp = icmp slt i32 %2, 0, !dbg !2317
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2318

if.then2:                                         ; preds = %if.end
  br label %err_free, !dbg !2319

if.end3:                                          ; preds = %if.end
  %3 = load %struct.fpga_manager*, %struct.fpga_manager** %mgr.addr, align 8, !dbg !2320
  %4 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2321
  %mgr4 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %4, i32 0, i32 3, !dbg !2322
  store %struct.fpga_manager* %3, %struct.fpga_manager** %mgr4, align 8, !dbg !2323
  %5 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %get_bridges.addr, align 8, !dbg !2324
  %6 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2325
  %get_bridges5 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %6, i32 0, i32 7, !dbg !2326
  store i32 (%struct.fpga_region*)* %5, i32 (%struct.fpga_region*)** %get_bridges5, align 8, !dbg !2327
  br label %do.body, !dbg !2328

do.body:                                          ; preds = %if.end3
  %7 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2329
  %mutex = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %7, i32 0, i32 1, !dbg !2329
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @fpga_region_create.__key) #8, !dbg !2329
  br label %do.end, !dbg !2329

do.end:                                           ; preds = %do.body
  %8 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2331
  %bridge_list = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %8, i32 0, i32 2, !dbg !2332
  call void @INIT_LIST_HEAD(%struct.list_head* %bridge_list) #8, !dbg !2333
  %9 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2334
  %dev6 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %9, i32 0, i32 0, !dbg !2335
  call void @device_initialize(%struct.device* %dev6) #8, !dbg !2336
  %10 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2337
  %11 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2338
  %dev7 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %11, i32 0, i32 0, !dbg !2339
  %class = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 29, !dbg !2340
  store %struct.class* %10, %struct.class** %class, align 8, !dbg !2341
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2342
  %13 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2343
  %dev8 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %13, i32 0, i32 0, !dbg !2344
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev8, i32 0, i32 1, !dbg !2345
  store %struct.device* %12, %struct.device** %parent, align 8, !dbg !2346
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2347
  %of_node = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 23, !dbg !2348
  %15 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2348
  %16 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2349
  %dev9 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %16, i32 0, i32 0, !dbg !2350
  %of_node10 = getelementptr inbounds %struct.device, %struct.device* %dev9, i32 0, i32 23, !dbg !2351
  store %struct.device_node* %15, %struct.device_node** %of_node10, align 8, !dbg !2352
  %17 = load i32, i32* %id, align 4, !dbg !2353
  %18 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2354
  %dev11 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %18, i32 0, i32 0, !dbg !2355
  %id12 = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 26, !dbg !2356
  store i32 %17, i32* %id12, align 4, !dbg !2357
  %19 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2358
  %dev13 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %19, i32 0, i32 0, !dbg !2359
  %20 = load i32, i32* %id, align 4, !dbg !2360
  %call14 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %20) #8, !dbg !2361
  store i32 %call14, i32* %ret, align 4, !dbg !2362
  %21 = load i32, i32* %ret, align 4, !dbg !2363
  %tobool15 = icmp ne i32 %21, 0, !dbg !2363
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !2365

if.then16:                                        ; preds = %do.end
  br label %err_remove, !dbg !2366

if.end17:                                         ; preds = %do.end
  %22 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2367
  store %struct.fpga_region* %22, %struct.fpga_region** %retval, align 8, !dbg !2368
  br label %return, !dbg !2368

err_remove:                                       ; preds = %if.then16
  call void @llvm.dbg.label(metadata !2369), !dbg !2370
  %23 = load i32, i32* %id, align 4, !dbg !2371
  call void @ida_free(%struct.ida* @fpga_region_ida, i32 %23) #8, !dbg !2371
  br label %err_free, !dbg !2371

err_free:                                         ; preds = %err_remove, %if.then2
  call void @llvm.dbg.label(metadata !2372), !dbg !2373
  %24 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2374
  %25 = bitcast %struct.fpga_region* %24 to i8*, !dbg !2374
  call void @kfree(i8* %25) #8, !dbg !2375
  store %struct.fpga_region* null, %struct.fpga_region** %retval, align 8, !dbg !2376
  br label %return, !dbg !2376

return:                                           ; preds = %err_free, %if.end17, %if.then
  %26 = load %struct.fpga_region*, %struct.fpga_region** %retval, align 8, !dbg !2377
  ret %struct.fpga_region* %26, !dbg !2377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2378 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2381, metadata !DIExpression()), !dbg !2385
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2391, metadata !DIExpression()), !dbg !2392
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2393, metadata !DIExpression()), !dbg !2394
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2395, metadata !DIExpression()), !dbg !2396
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2397, metadata !DIExpression()), !dbg !2401
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2403, metadata !DIExpression()), !dbg !2407
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2409, metadata !DIExpression()), !dbg !2413
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2418, metadata !DIExpression()), !dbg !2419
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2420, metadata !DIExpression()), !dbg !2421
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2422, metadata !DIExpression()), !dbg !2423
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2424, metadata !DIExpression()), !dbg !2425
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2426, metadata !DIExpression()), !dbg !2427
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2428, metadata !DIExpression()), !dbg !2429
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2430, metadata !DIExpression()), !dbg !2431
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2432, metadata !DIExpression()), !dbg !2433
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  %0 = load i64, i64* %size.addr, align 8, !dbg !2438
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2439
  %or = or i32 %1, 256, !dbg !2440
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2441
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !2442
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2443

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2444
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2445
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2446

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2447
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2448
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2449
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !2450
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2427
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2451
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2452
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2453
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2454
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2455
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2456
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !2457
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2457
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2457
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2457
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2457
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2458
  br label %kmalloc.exit, !dbg !2458

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2459
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2460
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2460
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2462

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2463
  br label %kmalloc_index.exit.i, !dbg !2463

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2464
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2466
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2467

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2468
  br label %kmalloc_index.exit.i, !dbg !2468

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2469
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2471
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2472

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2473
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2474
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2475

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2476
  br label %kmalloc_index.exit.i, !dbg !2476

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2477
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2479
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2480

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2481
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2482
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2483

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2484
  br label %kmalloc_index.exit.i, !dbg !2484

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2485
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2487
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2488

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2489
  br label %kmalloc_index.exit.i, !dbg !2489

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2490
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2492
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2493

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2494
  br label %kmalloc_index.exit.i, !dbg !2494

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2495
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2497
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2498

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2499
  br label %kmalloc_index.exit.i, !dbg !2499

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2500
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2502
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2503

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2504
  br label %kmalloc_index.exit.i, !dbg !2504

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2505
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2507
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2508

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2509
  br label %kmalloc_index.exit.i, !dbg !2509

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2510
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2512
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2513

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2514
  br label %kmalloc_index.exit.i, !dbg !2514

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2515
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2517
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2518

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2519
  br label %kmalloc_index.exit.i, !dbg !2519

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2520
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2522
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2523

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2524
  br label %kmalloc_index.exit.i, !dbg !2524

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2525
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2527
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2528

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2529
  br label %kmalloc_index.exit.i, !dbg !2529

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2530
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2532
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2533

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2534
  br label %kmalloc_index.exit.i, !dbg !2534

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2535
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2537
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2538

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2539
  br label %kmalloc_index.exit.i, !dbg !2539

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2540
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2542
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2543

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2544
  br label %kmalloc_index.exit.i, !dbg !2544

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2545
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2547
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2548

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2549
  br label %kmalloc_index.exit.i, !dbg !2549

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2550
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2552
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2553

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2554
  br label %kmalloc_index.exit.i, !dbg !2554

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2555
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2557
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2558

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2559
  br label %kmalloc_index.exit.i, !dbg !2559

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2560
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2562
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2563

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2564
  br label %kmalloc_index.exit.i, !dbg !2564

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2565
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2567
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2568

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2569
  br label %kmalloc_index.exit.i, !dbg !2569

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2570
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2572
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2573

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2574
  br label %kmalloc_index.exit.i, !dbg !2574

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2575
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2577
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2578

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2579
  br label %kmalloc_index.exit.i, !dbg !2579

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2580
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2582
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2583

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2584
  br label %kmalloc_index.exit.i, !dbg !2584

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2585
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2587
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2588

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2589
  br label %kmalloc_index.exit.i, !dbg !2589

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2590
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2592
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2593

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2594
  br label %kmalloc_index.exit.i, !dbg !2594

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2595
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2597
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2598

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2599
  br label %kmalloc_index.exit.i, !dbg !2599

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2600
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2602
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2603

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2604
  br label %kmalloc_index.exit.i, !dbg !2604

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2605, !srcloc !2608
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !2609, !srcloc !2612
  unreachable, !dbg !2613

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2614
  store i32 %45, i32* %index.i, align 4, !dbg !2615
  %46 = load i32, i32* %index.i, align 4, !dbg !2616
  %tobool.i = icmp ne i32 %46, 0, !dbg !2616
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2618

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2619
  br label %kmalloc.exit, !dbg !2619

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2620
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2621
  %and.i.i = and i32 %48, 17, !dbg !2621
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2621
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2621
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2621
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2621
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2623

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2624
  br label %kmalloc_type.exit.i, !dbg !2624

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2625
  %and2.i.i = and i32 %49, 1, !dbg !2626
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2625
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2625
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2625
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2627
  br label %kmalloc_type.exit.i, !dbg !2627

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2628
  %idxprom.i = zext i32 %51 to i64, !dbg !2629
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2629
  %52 = load i32, i32* %index.i, align 4, !dbg !2630
  %idxprom6.i = zext i32 %52 to i64, !dbg !2629
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2629
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2629
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2631
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2632
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2633
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2634
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !2635
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2635
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2635
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2635
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !2635
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2396
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2636
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2637
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2638
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2639
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !2640
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2641
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2642
  store i8* %62, i8** %retval.i, align 8, !dbg !2643
  br label %kmalloc.exit, !dbg !2643

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2644
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2645
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !2646
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2646
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2646
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2646
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !2646
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2647
  br label %kmalloc.exit, !dbg !2647

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2648
  ret i8* %65, !dbg !2649
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !2650 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !2654, metadata !DIExpression()), !dbg !2655
  br label %do.body, !dbg !2656

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2657

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2659

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2657

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2661
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2661
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2661
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !2661
  br label %do.end3, !dbg !2661

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2657

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2663
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !2664
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !2665
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !2666
  ret void, !dbg !2667
}

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fpga_region_free(%struct.fpga_region* %region) #0 !dbg !2668 {
entry:
  %region.addr = alloca %struct.fpga_region*, align 8
  store %struct.fpga_region* %region, %struct.fpga_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region.addr, metadata !2669, metadata !DIExpression()), !dbg !2670
  %0 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2671
  %dev = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %0, i32 0, i32 0, !dbg !2671
  %id = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 26, !dbg !2671
  %1 = load i32, i32* %id, align 4, !dbg !2671
  call void @ida_free(%struct.ida* @fpga_region_ida, i32 %1) #8, !dbg !2671
  %2 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2672
  %3 = bitcast %struct.fpga_region* %2 to i8*, !dbg !2672
  call void @kfree(i8* %3) #8, !dbg !2673
  ret void, !dbg !2674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.fpga_region* @devm_fpga_region_create(%struct.device* %dev, %struct.fpga_manager* %mgr, i32 (%struct.fpga_region*)* %get_bridges) #0 !dbg !2675 {
entry:
  %retval = alloca %struct.fpga_region*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %mgr.addr = alloca %struct.fpga_manager*, align 8
  %get_bridges.addr = alloca i32 (%struct.fpga_region*)*, align 8
  %ptr = alloca %struct.fpga_region**, align 8
  %region = alloca %struct.fpga_region*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  store %struct.fpga_manager* %mgr, %struct.fpga_manager** %mgr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_manager** %mgr.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i32 (%struct.fpga_region*)* %get_bridges, i32 (%struct.fpga_region*)** %get_bridges.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.fpga_region*)** %get_bridges.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata %struct.fpga_region*** %ptr, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region, metadata !2684, metadata !DIExpression()), !dbg !2685
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_fpga_region_release, i64 8, i32 3264) #8, !dbg !2686
  %0 = bitcast i8* %call to %struct.fpga_region**, !dbg !2686
  store %struct.fpga_region** %0, %struct.fpga_region*** %ptr, align 8, !dbg !2687
  %1 = load %struct.fpga_region**, %struct.fpga_region*** %ptr, align 8, !dbg !2688
  %tobool = icmp ne %struct.fpga_region** %1, null, !dbg !2688
  br i1 %tobool, label %if.end, label %if.then, !dbg !2690

if.then:                                          ; preds = %entry
  store %struct.fpga_region* null, %struct.fpga_region** %retval, align 8, !dbg !2691
  br label %return, !dbg !2691

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2692
  %3 = load %struct.fpga_manager*, %struct.fpga_manager** %mgr.addr, align 8, !dbg !2693
  %4 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %get_bridges.addr, align 8, !dbg !2694
  %call1 = call %struct.fpga_region* @fpga_region_create(%struct.device* %2, %struct.fpga_manager* %3, i32 (%struct.fpga_region*)* %4) #8, !dbg !2695
  store %struct.fpga_region* %call1, %struct.fpga_region** %region, align 8, !dbg !2696
  %5 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2697
  %tobool2 = icmp ne %struct.fpga_region* %5, null, !dbg !2697
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2699

if.then3:                                         ; preds = %if.end
  %6 = load %struct.fpga_region**, %struct.fpga_region*** %ptr, align 8, !dbg !2700
  %7 = bitcast %struct.fpga_region** %6 to i8*, !dbg !2700
  call void @devres_free(i8* %7) #8, !dbg !2702
  br label %if.end4, !dbg !2703

if.else:                                          ; preds = %if.end
  %8 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2704
  %9 = load %struct.fpga_region**, %struct.fpga_region*** %ptr, align 8, !dbg !2706
  store %struct.fpga_region* %8, %struct.fpga_region** %9, align 8, !dbg !2707
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2708
  %11 = load %struct.fpga_region**, %struct.fpga_region*** %ptr, align 8, !dbg !2709
  %12 = bitcast %struct.fpga_region** %11 to i8*, !dbg !2709
  call void @devres_add(%struct.device* %10, i8* %12) #8, !dbg !2710
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %13 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2711
  store %struct.fpga_region* %13, %struct.fpga_region** %retval, align 8, !dbg !2712
  br label %return, !dbg !2712

return:                                           ; preds = %if.end4, %if.then
  %14 = load %struct.fpga_region*, %struct.fpga_region** %retval, align 8, !dbg !2713
  ret %struct.fpga_region* %14, !dbg !2713
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2714 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2721, metadata !DIExpression()), !dbg !2722
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2723, metadata !DIExpression()), !dbg !2724
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2727
  %1 = load i64, i64* %size.addr, align 8, !dbg !2728
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2729
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #8, !dbg !2730
  ret i8* %call, !dbg !2731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_fpga_region_release(%struct.device* %dev, i8* %res) #0 !dbg !2732 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %region = alloca %struct.fpga_region*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2733, metadata !DIExpression()), !dbg !2734
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region, metadata !2737, metadata !DIExpression()), !dbg !2738
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2739
  %1 = bitcast i8* %0 to %struct.fpga_region**, !dbg !2740
  %2 = load %struct.fpga_region*, %struct.fpga_region** %1, align 8, !dbg !2741
  store %struct.fpga_region* %2, %struct.fpga_region** %region, align 8, !dbg !2738
  %3 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2742
  call void @fpga_region_free(%struct.fpga_region* %3) #8, !dbg !2743
  ret void, !dbg !2744
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @fpga_region_register(%struct.fpga_region* %region) #0 !dbg !2745 {
entry:
  %region.addr = alloca %struct.fpga_region*, align 8
  store %struct.fpga_region* %region, %struct.fpga_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region.addr, metadata !2746, metadata !DIExpression()), !dbg !2747
  %0 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2748
  %dev = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %0, i32 0, i32 0, !dbg !2749
  %call = call i32 @device_add(%struct.device* %dev) #8, !dbg !2750
  ret i32 %call, !dbg !2751
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @fpga_region_unregister(%struct.fpga_region* %region) #0 !dbg !2752 {
entry:
  %region.addr = alloca %struct.fpga_region*, align 8
  store %struct.fpga_region* %region, %struct.fpga_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load %struct.fpga_region*, %struct.fpga_region** %region.addr, align 8, !dbg !2755
  %dev = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %0, i32 0, i32 0, !dbg !2756
  call void @device_unregister(%struct.device* %dev) #8, !dbg !2757
  ret void, !dbg !2758
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @fpga_region_exit() #4 section ".exit.text" !dbg !2759 {
entry:
  %0 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2760
  call void @class_destroy(%struct.class* %0) #8, !dbg !2761
  call void @ida_destroy(%struct.ida* @fpga_region_ida) #8, !dbg !2762
  ret void, !dbg !2763
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @fpga_region_init() #4 section ".init.text" !dbg !2052 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  %call = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.lock_class_key* @fpga_region_init.__key) #8, !dbg !2764
  store %struct.class* %call, %struct.class** %tmp, align 8, !dbg !2764
  %0 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !2764
  store %struct.class* %0, %struct.class** @fpga_region_class, align 8, !dbg !2766
  %1 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2767
  %2 = bitcast %struct.class* %1 to i8*, !dbg !2767
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #8, !dbg !2769
  br i1 %call1, label %if.then, label %if.end, !dbg !2770

if.then:                                          ; preds = %entry
  %3 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2771
  %4 = bitcast %struct.class* %3 to i8*, !dbg !2771
  %call2 = call i64 @PTR_ERR(i8* %4) #8, !dbg !2772
  %conv = trunc i64 %call2 to i32, !dbg !2772
  store i32 %conv, i32* %retval, align 4, !dbg !2773
  br label %return, !dbg !2773

if.end:                                           ; preds = %entry
  %5 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2774
  %dev_groups = getelementptr inbounds %struct.class, %struct.class* %5, i32 0, i32 3, !dbg !2775
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @fpga_region_groups, i64 0, i64 0), %struct.attribute_group*** %dev_groups, align 8, !dbg !2776
  %6 = load %struct.class*, %struct.class** @fpga_region_class, align 8, !dbg !2777
  %dev_release = getelementptr inbounds %struct.class, %struct.class* %6, i32 0, i32 8, !dbg !2778
  store void (%struct.device*)* @fpga_region_dev_release, void (%struct.device*)** %dev_release, align 8, !dbg !2779
  store i32 0, i32* %retval, align 4, !dbg !2780
  br label %return, !dbg !2780

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2781
  ret i32 %7, !dbg !2781
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_trylock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2782 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2785, metadata !DIExpression()), !dbg !2786
  %0 = load i64, i64* %error.addr, align 8, !dbg !2787
  %1 = inttoptr i64 %0 to i8*, !dbg !2788
  ret i8* %1, !dbg !2789
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !2790 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2794, metadata !DIExpression()), !dbg !2795
  ret i1 true, !dbg !2796
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !2797 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !2803 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2807, metadata !DIExpression()), !dbg !2812
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2814, metadata !DIExpression()), !dbg !2815
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2816, metadata !DIExpression()), !dbg !2817
  %0 = load i64, i64* %size.addr, align 8, !dbg !2818
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2820
  br i1 %1, label %if.then, label %if.end447, !dbg !2821

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2822
  %tobool = icmp ne i64 %2, 0, !dbg !2822
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2825

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2826
  br label %return, !dbg !2826

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2827
  %cmp = icmp ult i64 %3, 4096, !dbg !2829
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2830

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2831
  br label %return, !dbg !2831

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub = sub i64 %4, 1, !dbg !2832
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2832
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2832

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub4 = sub i64 %6, 1, !dbg !2832
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2832
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2832

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub6 = sub i64 %8, 1, !dbg !2832
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2832
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2832

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2832

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub9 = sub i64 %9, 1, !dbg !2832
  %and = and i64 %sub9, -9223372036854775808, !dbg !2832
  %tobool10 = icmp ne i64 %and, 0, !dbg !2832
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2832

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2832

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub13 = sub i64 %10, 1, !dbg !2832
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2832
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2832
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2832

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2832

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub18 = sub i64 %11, 1, !dbg !2832
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2832
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2832
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2832

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2832

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub23 = sub i64 %12, 1, !dbg !2832
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2832
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2832
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2832

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2832

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub28 = sub i64 %13, 1, !dbg !2832
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2832
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2832
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2832

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2832

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub33 = sub i64 %14, 1, !dbg !2832
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2832
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2832
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2832

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2832

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub38 = sub i64 %15, 1, !dbg !2832
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2832
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2832
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2832

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2832

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub43 = sub i64 %16, 1, !dbg !2832
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2832
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2832
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2832

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2832

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub48 = sub i64 %17, 1, !dbg !2832
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2832
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2832
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2832

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2832

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub53 = sub i64 %18, 1, !dbg !2832
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2832
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2832
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2832

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2832

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub58 = sub i64 %19, 1, !dbg !2832
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2832
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2832
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2832

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2832

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub63 = sub i64 %20, 1, !dbg !2832
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2832
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2832
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2832

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2832

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub68 = sub i64 %21, 1, !dbg !2832
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2832
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2832
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2832

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2832

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub73 = sub i64 %22, 1, !dbg !2832
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2832
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2832
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2832

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2832

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub78 = sub i64 %23, 1, !dbg !2832
  %and79 = and i64 %sub78, 562949953421312, !dbg !2832
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2832
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2832

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2832

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub83 = sub i64 %24, 1, !dbg !2832
  %and84 = and i64 %sub83, 281474976710656, !dbg !2832
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2832
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2832

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2832

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub88 = sub i64 %25, 1, !dbg !2832
  %and89 = and i64 %sub88, 140737488355328, !dbg !2832
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2832
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2832

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2832

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub93 = sub i64 %26, 1, !dbg !2832
  %and94 = and i64 %sub93, 70368744177664, !dbg !2832
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2832
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2832

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2832

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub98 = sub i64 %27, 1, !dbg !2832
  %and99 = and i64 %sub98, 35184372088832, !dbg !2832
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2832
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2832

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2832

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub103 = sub i64 %28, 1, !dbg !2832
  %and104 = and i64 %sub103, 17592186044416, !dbg !2832
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2832
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2832

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2832

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub108 = sub i64 %29, 1, !dbg !2832
  %and109 = and i64 %sub108, 8796093022208, !dbg !2832
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2832
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2832

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2832

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub113 = sub i64 %30, 1, !dbg !2832
  %and114 = and i64 %sub113, 4398046511104, !dbg !2832
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2832
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2832

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2832

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub118 = sub i64 %31, 1, !dbg !2832
  %and119 = and i64 %sub118, 2199023255552, !dbg !2832
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2832
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2832

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2832

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub123 = sub i64 %32, 1, !dbg !2832
  %and124 = and i64 %sub123, 1099511627776, !dbg !2832
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2832
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2832

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2832

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub128 = sub i64 %33, 1, !dbg !2832
  %and129 = and i64 %sub128, 549755813888, !dbg !2832
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2832
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2832

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2832

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub133 = sub i64 %34, 1, !dbg !2832
  %and134 = and i64 %sub133, 274877906944, !dbg !2832
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2832
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2832

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2832

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub138 = sub i64 %35, 1, !dbg !2832
  %and139 = and i64 %sub138, 137438953472, !dbg !2832
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2832
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2832

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2832

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub143 = sub i64 %36, 1, !dbg !2832
  %and144 = and i64 %sub143, 68719476736, !dbg !2832
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2832
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2832

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2832

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub148 = sub i64 %37, 1, !dbg !2832
  %and149 = and i64 %sub148, 34359738368, !dbg !2832
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2832
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2832

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2832

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub153 = sub i64 %38, 1, !dbg !2832
  %and154 = and i64 %sub153, 17179869184, !dbg !2832
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2832
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2832

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2832

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub158 = sub i64 %39, 1, !dbg !2832
  %and159 = and i64 %sub158, 8589934592, !dbg !2832
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2832
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2832

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2832

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub163 = sub i64 %40, 1, !dbg !2832
  %and164 = and i64 %sub163, 4294967296, !dbg !2832
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2832
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2832

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2832

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub168 = sub i64 %41, 1, !dbg !2832
  %and169 = and i64 %sub168, 2147483648, !dbg !2832
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2832
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2832

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2832

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub173 = sub i64 %42, 1, !dbg !2832
  %and174 = and i64 %sub173, 1073741824, !dbg !2832
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2832
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2832

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2832

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub178 = sub i64 %43, 1, !dbg !2832
  %and179 = and i64 %sub178, 536870912, !dbg !2832
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2832
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2832

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2832

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub183 = sub i64 %44, 1, !dbg !2832
  %and184 = and i64 %sub183, 268435456, !dbg !2832
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2832
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2832

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2832

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub188 = sub i64 %45, 1, !dbg !2832
  %and189 = and i64 %sub188, 134217728, !dbg !2832
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2832
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2832

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2832

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub193 = sub i64 %46, 1, !dbg !2832
  %and194 = and i64 %sub193, 67108864, !dbg !2832
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2832
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2832

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2832

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub198 = sub i64 %47, 1, !dbg !2832
  %and199 = and i64 %sub198, 33554432, !dbg !2832
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2832
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2832

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2832

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub203 = sub i64 %48, 1, !dbg !2832
  %and204 = and i64 %sub203, 16777216, !dbg !2832
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2832
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2832

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2832

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub208 = sub i64 %49, 1, !dbg !2832
  %and209 = and i64 %sub208, 8388608, !dbg !2832
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2832
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2832

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2832

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub213 = sub i64 %50, 1, !dbg !2832
  %and214 = and i64 %sub213, 4194304, !dbg !2832
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2832
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2832

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2832

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub218 = sub i64 %51, 1, !dbg !2832
  %and219 = and i64 %sub218, 2097152, !dbg !2832
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2832
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2832

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2832

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub223 = sub i64 %52, 1, !dbg !2832
  %and224 = and i64 %sub223, 1048576, !dbg !2832
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2832
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2832

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2832

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub228 = sub i64 %53, 1, !dbg !2832
  %and229 = and i64 %sub228, 524288, !dbg !2832
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2832
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2832

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2832

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub233 = sub i64 %54, 1, !dbg !2832
  %and234 = and i64 %sub233, 262144, !dbg !2832
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2832
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2832

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2832

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub238 = sub i64 %55, 1, !dbg !2832
  %and239 = and i64 %sub238, 131072, !dbg !2832
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2832
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2832

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2832

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub243 = sub i64 %56, 1, !dbg !2832
  %and244 = and i64 %sub243, 65536, !dbg !2832
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2832
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2832

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2832

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub248 = sub i64 %57, 1, !dbg !2832
  %and249 = and i64 %sub248, 32768, !dbg !2832
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2832
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2832

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2832

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub253 = sub i64 %58, 1, !dbg !2832
  %and254 = and i64 %sub253, 16384, !dbg !2832
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2832
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2832

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2832

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub258 = sub i64 %59, 1, !dbg !2832
  %and259 = and i64 %sub258, 8192, !dbg !2832
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2832
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2832

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2832

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub263 = sub i64 %60, 1, !dbg !2832
  %and264 = and i64 %sub263, 4096, !dbg !2832
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2832
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2832

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2832

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub268 = sub i64 %61, 1, !dbg !2832
  %and269 = and i64 %sub268, 2048, !dbg !2832
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2832
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2832

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2832

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub273 = sub i64 %62, 1, !dbg !2832
  %and274 = and i64 %sub273, 1024, !dbg !2832
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2832
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2832

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2832

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub278 = sub i64 %63, 1, !dbg !2832
  %and279 = and i64 %sub278, 512, !dbg !2832
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2832
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2832

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2832

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub283 = sub i64 %64, 1, !dbg !2832
  %and284 = and i64 %sub283, 256, !dbg !2832
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2832
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2832

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2832

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub288 = sub i64 %65, 1, !dbg !2832
  %and289 = and i64 %sub288, 128, !dbg !2832
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2832
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2832

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2832

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub293 = sub i64 %66, 1, !dbg !2832
  %and294 = and i64 %sub293, 64, !dbg !2832
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2832
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2832

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2832

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub298 = sub i64 %67, 1, !dbg !2832
  %and299 = and i64 %sub298, 32, !dbg !2832
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2832
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2832

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2832

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub303 = sub i64 %68, 1, !dbg !2832
  %and304 = and i64 %sub303, 16, !dbg !2832
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2832
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2832

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2832

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub308 = sub i64 %69, 1, !dbg !2832
  %and309 = and i64 %sub308, 8, !dbg !2832
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2832
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2832

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2832

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub313 = sub i64 %70, 1, !dbg !2832
  %and314 = and i64 %sub313, 4, !dbg !2832
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2832
  %71 = zext i1 %tobool315 to i64, !dbg !2832
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2832
  br label %cond.end, !dbg !2832

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2832
  br label %cond.end317, !dbg !2832

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2832
  br label %cond.end319, !dbg !2832

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2832
  br label %cond.end321, !dbg !2832

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2832
  br label %cond.end323, !dbg !2832

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2832
  br label %cond.end325, !dbg !2832

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2832
  br label %cond.end327, !dbg !2832

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2832
  br label %cond.end329, !dbg !2832

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2832
  br label %cond.end331, !dbg !2832

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2832
  br label %cond.end333, !dbg !2832

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2832
  br label %cond.end335, !dbg !2832

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2832
  br label %cond.end337, !dbg !2832

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2832
  br label %cond.end339, !dbg !2832

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2832
  br label %cond.end341, !dbg !2832

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2832
  br label %cond.end343, !dbg !2832

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2832
  br label %cond.end345, !dbg !2832

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2832
  br label %cond.end347, !dbg !2832

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2832
  br label %cond.end349, !dbg !2832

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2832
  br label %cond.end351, !dbg !2832

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2832
  br label %cond.end353, !dbg !2832

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2832
  br label %cond.end355, !dbg !2832

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2832
  br label %cond.end357, !dbg !2832

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2832
  br label %cond.end359, !dbg !2832

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2832
  br label %cond.end361, !dbg !2832

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2832
  br label %cond.end363, !dbg !2832

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2832
  br label %cond.end365, !dbg !2832

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2832
  br label %cond.end367, !dbg !2832

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2832
  br label %cond.end369, !dbg !2832

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2832
  br label %cond.end371, !dbg !2832

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2832
  br label %cond.end373, !dbg !2832

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2832
  br label %cond.end375, !dbg !2832

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2832
  br label %cond.end377, !dbg !2832

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2832
  br label %cond.end379, !dbg !2832

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2832
  br label %cond.end381, !dbg !2832

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2832
  br label %cond.end383, !dbg !2832

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2832
  br label %cond.end385, !dbg !2832

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2832
  br label %cond.end387, !dbg !2832

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2832
  br label %cond.end389, !dbg !2832

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2832
  br label %cond.end391, !dbg !2832

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2832
  br label %cond.end393, !dbg !2832

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2832
  br label %cond.end395, !dbg !2832

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2832
  br label %cond.end397, !dbg !2832

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2832
  br label %cond.end399, !dbg !2832

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2832
  br label %cond.end401, !dbg !2832

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2832
  br label %cond.end403, !dbg !2832

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2832
  br label %cond.end405, !dbg !2832

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2832
  br label %cond.end407, !dbg !2832

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2832
  br label %cond.end409, !dbg !2832

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2832
  br label %cond.end411, !dbg !2832

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2832
  br label %cond.end413, !dbg !2832

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2832
  br label %cond.end415, !dbg !2832

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2832
  br label %cond.end417, !dbg !2832

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2832
  br label %cond.end419, !dbg !2832

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2832
  br label %cond.end421, !dbg !2832

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2832
  br label %cond.end423, !dbg !2832

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2832
  br label %cond.end425, !dbg !2832

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2832
  br label %cond.end427, !dbg !2832

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2832
  br label %cond.end429, !dbg !2832

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2832
  br label %cond.end431, !dbg !2832

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2832
  br label %cond.end433, !dbg !2832

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2832
  br label %cond.end435, !dbg !2832

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2832
  br label %cond.end437, !dbg !2832

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2832
  br label %cond.end440, !dbg !2832

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2832

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2832
  br label %cond.end444, !dbg !2832

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2832
  %sub443 = sub i64 %72, 1, !dbg !2832
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !2832
  br label %cond.end444, !dbg !2832

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2832
  %sub446 = sub i32 %cond445, 12, !dbg !2833
  %add = add i32 %sub446, 1, !dbg !2834
  store i32 %add, i32* %retval, align 4, !dbg !2835
  br label %return, !dbg !2835

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2836
  %dec = add i64 %73, -1, !dbg !2836
  store i64 %dec, i64* %size.addr, align 8, !dbg !2836
  %74 = load i64, i64* %size.addr, align 8, !dbg !2837
  %shr = lshr i64 %74, 12, !dbg !2837
  store i64 %shr, i64* %size.addr, align 8, !dbg !2837
  %75 = load i64, i64* %size.addr, align 8, !dbg !2838
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2815
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2839
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2840
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !2839, !srcloc !2841
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2839
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2842
  %add.i = add i32 %79, 1, !dbg !2843
  store i32 %add.i, i32* %retval, align 4, !dbg !2844
  br label %return, !dbg !2844

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2845
  ret i32 %80, !dbg !2845
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !2846 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2807, metadata !DIExpression()), !dbg !2850
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2814, metadata !DIExpression()), !dbg !2852
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2853, metadata !DIExpression()), !dbg !2854
  %0 = load i64, i64* %n.addr, align 8, !dbg !2855
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2852
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2856
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2857
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !2856, !srcloc !2841
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2856
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2858
  %add.i = add i32 %4, 1, !dbg !2859
  %sub = sub i32 %add.i, 1, !dbg !2860
  ret i32 %sub, !dbg !2861
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2862 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2866, metadata !DIExpression()), !dbg !2867
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2868, metadata !DIExpression()), !dbg !2869
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2874
  ret i8* %0, !dbg !2875
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @fpga_region_dev_release(%struct.device* %dev) #0 !dbg !2876 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2877, metadata !DIExpression()), !dbg !2878
  ret void, !dbg !2879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @compat_id_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2880 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %region = alloca %struct.fpga_region*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.fpga_region*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2883, metadata !DIExpression()), !dbg !2884
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.declare(metadata %struct.fpga_region** %region, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2889, metadata !DIExpression()), !dbg !2891
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2891
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2891
  store i8* %1, i8** %__mptr, align 8, !dbg !2891
  br label %do.body, !dbg !2891

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2892

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2891
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2891
  %3 = bitcast i8* %add.ptr to %struct.fpga_region*, !dbg !2891
  store %struct.fpga_region* %3, %struct.fpga_region** %tmp, align 8, !dbg !2892
  %4 = load %struct.fpga_region*, %struct.fpga_region** %tmp, align 8, !dbg !2891
  store %struct.fpga_region* %4, %struct.fpga_region** %region, align 8, !dbg !2888
  %5 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2894
  %compat_id = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %5, i32 0, i32 5, !dbg !2896
  %6 = load %struct.fpga_compat_id*, %struct.fpga_compat_id** %compat_id, align 8, !dbg !2896
  %tobool = icmp ne %struct.fpga_compat_id* %6, null, !dbg !2894
  br i1 %tobool, label %if.end, label %if.then, !dbg !2897

if.then:                                          ; preds = %do.end
  store i64 -2, i64* %retval, align 8, !dbg !2898
  br label %return, !dbg !2898

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !2899
  %8 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2900
  %compat_id1 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %8, i32 0, i32 5, !dbg !2901
  %9 = load %struct.fpga_compat_id*, %struct.fpga_compat_id** %compat_id1, align 8, !dbg !2901
  %id_h = getelementptr inbounds %struct.fpga_compat_id, %struct.fpga_compat_id* %9, i32 0, i32 0, !dbg !2902
  %10 = load i64, i64* %id_h, align 8, !dbg !2902
  %11 = load %struct.fpga_region*, %struct.fpga_region** %region, align 8, !dbg !2903
  %compat_id2 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %11, i32 0, i32 5, !dbg !2904
  %12 = load %struct.fpga_compat_id*, %struct.fpga_compat_id** %compat_id2, align 8, !dbg !2904
  %id_l = getelementptr inbounds %struct.fpga_compat_id, %struct.fpga_compat_id* %12, i32 0, i32 1, !dbg !2905
  %13 = load i64, i64* %id_l, align 8, !dbg !2905
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 %10, i64 %13) #8, !dbg !2906
  %conv = sext i32 %call to i64, !dbg !2906
  store i64 %conv, i64* %retval, align 8, !dbg !2907
  br label %return, !dbg !2907

return:                                           ; preds = %if.end, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !2908
  ret i64 %14, !dbg !2908
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2077, !2078, !2079, !2080}
!llvm.ident = !{!2081}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fpga_region_class", scope: !2, file: !3, line: 19, type: !1889, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !78, globals: !2010, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/fpga/fpga-region.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !66, !71}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fpga_mgr_states", file: !51, line: 33, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/fpga/fpga-mgr.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!53 = !DIEnumerator(name: "FPGA_MGR_STATE_UNKNOWN", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "FPGA_MGR_STATE_POWER_OFF", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "FPGA_MGR_STATE_POWER_UP", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "FPGA_MGR_STATE_RESET", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FPGA_MGR_STATE_FIRMWARE_REQ", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "FPGA_MGR_STATE_FIRMWARE_REQ_ERR", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "FPGA_MGR_STATE_WRITE_INIT", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "FPGA_MGR_STATE_WRITE_INIT_ERR", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "FPGA_MGR_STATE_WRITE", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "FPGA_MGR_STATE_WRITE_ERR", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "FPGA_MGR_STATE_WRITE_COMPLETE", value: 10, isUnsigned: true)
!64 = !DIEnumerator(name: "FPGA_MGR_STATE_WRITE_COMPLETE_ERR", value: 11, isUnsigned: true)
!65 = !DIEnumerator(name: "FPGA_MGR_STATE_OPERATING", value: 12, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 10, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !72, line: 305, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!78 = !{!79, !80, !1455, !202, !187, !2007, !2009, !1661, !275}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_region", file: !82, line: 21, size: 6208, elements: !83)
!82 = !DIFile(filename: "./include/linux/fpga/fpga-region.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !1932, !1933, !1934, !2000, !2001, !2002, !2003}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !81, file: !82, line: 22, baseType: !85, size: 5568)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !86)
!86 = !{!87, !1583, !1585, !1588, !1589, !1640, !1718, !1719, !1720, !1721, !1722, !1731, !1836, !1849, !1852, !1853, !1857, !1859, !1860, !1861, !1865, !1871, !1872, !1875, !1879, !1882, !1885, !1886, !1887, !1888, !1920, !1921, !1922, !1925, !1928, !1929, !1930, !1931}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !85, file: !30, line: 462, baseType: !88, size: 512)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !89, line: 64, size: 512, elements: !90)
!89 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!90 = !{!91, !95, !102, !104, !165, !1419, !1573, !1578, !1579, !1580, !1581, !1582}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !89, line: 65, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !88, file: !89, line: 66, baseType: !96, size: 128, offset: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !97, line: 178, size: 128, elements: !98)
!97 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !97, line: 179, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !96, file: !97, line: 179, baseType: !100, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !88, file: !89, line: 67, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !88, file: !89, line: 68, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !89, line: 192, size: 704, elements: !107)
!107 = !{!108, !109, !125, !126}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !106, file: !89, line: 193, baseType: !96, size: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !106, file: !89, line: 194, baseType: !110, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !111, line: 83, baseType: !112)
!111 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !111, line: 71, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !111, line: 72, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !111, line: 72, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !115, file: !111, line: 73, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !111, line: 20, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !118, file: !111, line: 21, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !122, line: 25, baseType: !123)
!122 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 25, elements: !124)
!124 = !{}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !106, file: !89, line: 195, baseType: !88, size: 512, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !106, file: !89, line: 196, baseType: !127, size: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !89, line: 156, size: 192, elements: !130)
!130 = !{!131, !137, !142}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !129, file: !89, line: 157, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !105, !103}
!136 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !89, line: 158, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!92, !105, !103}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !129, file: !89, line: 159, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!136, !105, !103, !147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !89, line: 148, size: 20736, elements: !149)
!149 = !{!150, !155, !159, !160, !164}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !148, file: !89, line: 149, baseType: !151, size: 192)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 192, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!153 = !{!154}
!154 = !DISubrange(count: 3)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !148, file: !89, line: 150, baseType: !156, size: 4096, offset: 192)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 4096, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !148, file: !89, line: 151, baseType: !136, size: 32, offset: 4288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !148, file: !89, line: 152, baseType: !161, size: 16384, offset: 4320)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16384, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 2048)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !148, file: !89, line: 153, baseType: !136, size: 32, offset: 20704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !88, file: !89, line: 69, baseType: !166, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !89, line: 138, size: 448, elements: !168)
!168 = !{!169, !173, !203, !205, !1365, !1398, !1402}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !167, file: !89, line: 139, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !103}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !167, file: !89, line: 140, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !177, line: 230, size: 128, elements: !178)
!177 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !195}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !176, file: !177, line: 231, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !103, !188, !152}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !97, line: 60, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !185, line: 73, baseType: !186)
!185 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !185, line: 15, baseType: !187)
!187 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !177, line: 30, size: 128, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !177, line: 31, baseType: !92, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !189, file: !177, line: 32, baseType: !193, size: 16, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !97, line: 19, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !176, file: !177, line: 232, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!183, !103, !188, !92, !199}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 55, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !185, line: 72, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !185, line: 16, baseType: !202)
!202 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !167, file: !89, line: 141, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !167, file: !89, line: 142, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !177, line: 84, size: 320, elements: !210)
!210 = !{!211, !212, !216, !1362, !1363}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !177, line: 85, baseType: !92, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !209, file: !177, line: 86, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!193, !103, !188, !136}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !209, file: !177, line: 88, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!193, !103, !220, !136}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !177, line: 168, size: 448, elements: !222)
!222 = !{!223, !224, !225, !226, !236, !237}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !221, file: !177, line: 169, baseType: !189, size: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !177, line: 170, baseType: !199, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !221, file: !177, line: 171, baseType: !79, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !221, file: !177, line: 172, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!183, !230, !103, !220, !152, !233, !199}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !232, line: 526, flags: DIFlagFwdDecl)
!232 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !97, line: 46, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !185, line: 88, baseType: !235)
!235 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !221, file: !177, line: 174, baseType: !227, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !221, file: !177, line: 176, baseType: !238, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!136, !230, !103, !220, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !243, line: 305, size: 1472, elements: !244)
!243 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245, !246, !247, !248, !249, !257, !258, !1336, !1342, !1343, !1348, !1349, !1352, !1356, !1357, !1358, !1359, !1360}
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
!261 = !{!262, !1332}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !243, line: 389, baseType: !263, size: 7296)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !260, file: !243, line: 389, size: 7296, elements: !264)
!264 = !{!265, !266, !270, !276, !280, !281, !282, !283, !284, !292, !297, !298, !299, !300, !309, !310, !311, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !346, !354, !357, !405, !406, !1302, !1303, !1306, !1310, !1311, !1314, !1315, !1316, !1319, !1331}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !263, file: !243, line: 390, baseType: !241, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !263, file: !243, line: 391, baseType: !267, size: 64, offset: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !251, line: 31, size: 64, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !267, file: !251, line: 32, baseType: !255, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !263, file: !243, line: 392, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !272, line: 23, baseType: !273)
!272 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !274, line: 31, baseType: !275)
!274 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!275 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !263, file: !243, line: 394, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!202, !230, !202, !202, !202, !202}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !263, file: !243, line: 398, baseType: !202, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !263, file: !243, line: 399, baseType: !202, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !263, file: !243, line: 405, baseType: !202, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !263, file: !243, line: 406, baseType: !202, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !263, file: !243, line: 407, baseType: !285, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !232, line: 286, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 286, size: 64, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !287, file: !232, line: 286, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !291, line: 18, baseType: !202)
!291 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!292 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !263, file: !243, line: 416, baseType: !293, size: 32, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !97, line: 168, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 166, size: 32, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !294, file: !97, line: 167, baseType: !136, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !263, file: !243, line: 428, baseType: !293, size: 32, offset: 608)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !263, file: !243, line: 437, baseType: !293, size: 32, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !263, file: !243, line: 447, baseType: !293, size: 32, offset: 672)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !263, file: !243, line: 450, baseType: !301, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !302, line: 13, baseType: !303)
!302 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !97, line: 175, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 173, size: 64, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !304, file: !97, line: 174, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !272, line: 22, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !274, line: 30, baseType: !235)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !263, file: !243, line: 452, baseType: !136, size: 32, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !263, file: !243, line: 454, baseType: !110, offset: 800)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !263, file: !243, line: 457, baseType: !312, size: 256, offset: 832)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !313, line: 35, size: 256, elements: !314)
!313 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!314 = !{!315, !316, !317, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !312, file: !313, line: 36, baseType: !301, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !312, file: !313, line: 42, baseType: !301, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !312, file: !313, line: 46, baseType: !318, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !111, line: 29, baseType: !118)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !312, file: !313, line: 47, baseType: !96, size: 128, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !263, file: !243, line: 459, baseType: !96, size: 128, offset: 1088)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !263, file: !243, line: 466, baseType: !202, size: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !263, file: !243, line: 467, baseType: !202, size: 64, offset: 1280)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !263, file: !243, line: 469, baseType: !202, size: 64, offset: 1344)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !263, file: !243, line: 470, baseType: !202, size: 64, offset: 1408)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !263, file: !243, line: 471, baseType: !303, size: 64, offset: 1472)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !263, file: !243, line: 472, baseType: !202, size: 64, offset: 1536)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !263, file: !243, line: 473, baseType: !202, size: 64, offset: 1600)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !263, file: !243, line: 474, baseType: !202, size: 64, offset: 1664)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !263, file: !243, line: 475, baseType: !202, size: 64, offset: 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !263, file: !243, line: 477, baseType: !110, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1792)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1856)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1920)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !263, file: !243, line: 478, baseType: !202, size: 64, offset: 1984)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !263, file: !243, line: 479, baseType: !202, size: 64, offset: 2048)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !263, file: !243, line: 479, baseType: !202, size: 64, offset: 2112)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !263, file: !243, line: 479, baseType: !202, size: 64, offset: 2176)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2240)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !263, file: !243, line: 480, baseType: !202, size: 64, offset: 2432)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !263, file: !243, line: 482, baseType: !343, size: 2816, offset: 2496)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2816, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 44)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !263, file: !243, line: 488, baseType: !347, size: 256, offset: 5312)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !348, line: 60, size: 256, elements: !349)
!348 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !347, file: !348, line: 61, baseType: !351, size: 256)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !263, file: !243, line: 490, baseType: !355, size: 64, offset: 5568)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !243, line: 490, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !263, file: !243, line: 493, baseType: !358, size: 896, offset: 5632)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !359, line: 53, baseType: !360)
!359 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 13, size: 896, elements: !361)
!361 = !{!362, !363, !364, !365, !368, !369, !376, !377, !397, !398, !401}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !360, file: !359, line: 18, baseType: !271, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !360, file: !359, line: 28, baseType: !303, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !360, file: !359, line: 31, baseType: !312, size: 256, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !360, file: !359, line: 32, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !359, line: 32, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !360, file: !359, line: 37, baseType: !194, size: 16, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !360, file: !359, line: 40, baseType: !370, size: 192, offset: 512)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !371, line: 53, size: 192, elements: !372)
!371 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !370, file: !371, line: 54, baseType: !301, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !370, file: !371, line: 55, baseType: !110, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !370, file: !371, line: 59, baseType: !96, size: 128, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !360, file: !359, line: 41, baseType: !79, size: 64, offset: 704)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !360, file: !359, line: 42, baseType: !378, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !381, line: 13, size: 896, elements: !382)
!381 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !380, file: !381, line: 14, baseType: !79, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !381, line: 15, baseType: !202, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !380, file: !381, line: 17, baseType: !202, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !380, file: !381, line: 17, baseType: !202, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !380, file: !381, line: 19, baseType: !187, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !380, file: !381, line: 21, baseType: !187, size: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !380, file: !381, line: 22, baseType: !187, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !380, file: !381, line: 23, baseType: !187, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !380, file: !381, line: 24, baseType: !187, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !380, file: !381, line: 25, baseType: !187, size: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !380, file: !381, line: 26, baseType: !187, size: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !380, file: !381, line: 27, baseType: !187, size: 64, offset: 704)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !380, file: !381, line: 28, baseType: !187, size: 64, offset: 768)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !380, file: !381, line: 29, baseType: !187, size: 64, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !360, file: !359, line: 44, baseType: !293, size: 32, offset: 832)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !360, file: !359, line: 50, baseType: !399, size: 16, offset: 864)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !272, line: 19, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !274, line: 24, baseType: !194)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !360, file: !359, line: 51, baseType: !402, size: 16, offset: 880)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !272, line: 18, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !274, line: 23, baseType: !404)
!404 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !243, line: 495, baseType: !202, size: 64, offset: 6528)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !263, file: !243, line: 497, baseType: !407, size: 64, offset: 6592)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !243, line: 381, size: 384, elements: !409)
!409 = !{!410, !411, !1301}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !408, file: !243, line: 382, baseType: !293, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !408, file: !243, line: 383, baseType: !412, size: 128, offset: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !243, line: 376, size: 128, elements: !413)
!413 = !{!414, !1299}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !412, file: !243, line: 377, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !417, line: 640, size: 48640, elements: !418)
!417 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!418 = !{!419, !427, !429, !430, !436, !437, !438, !439, !440, !441, !442, !443, !447, !465, !476, !571, !572, !573, !584, !585, !587, !588, !589, !590, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !669, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !725, !727, !728, !729, !741, !743, !744, !745, !746, !747, !753, !754, !755, !756, !757, !758, !759, !771, !776, !780, !781, !782, !785, !789, !792, !795, !798, !801, !804, !807, !810, !816, !817, !818, !824, !825, !826, !827, !828, !837, !838, !839, !840, !841, !846, !847, !848, !851, !852, !855, !858, !861, !864, !867, !870, !871, !951, !954, !957, !958, !961, !962, !963, !969, !970, !971, !984, !985, !986, !998, !1003, !1006, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !416, file: !417, line: 646, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !421, line: 56, size: 128, elements: !422)
!421 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !421, line: 57, baseType: !202, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !420, file: !421, line: 58, baseType: !425, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !272, line: 21, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !274, line: 27, baseType: !7)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !416, file: !417, line: 649, baseType: !428, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !416, file: !417, line: 657, baseType: !79, size: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !416, file: !417, line: 658, baseType: !431, size: 32, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !432, line: 113, baseType: !433)
!432 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !432, line: 111, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !433, file: !432, line: 112, baseType: !293, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !417, line: 660, baseType: !7, size: 32, offset: 288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !416, file: !417, line: 661, baseType: !7, size: 32, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !416, file: !417, line: 684, baseType: !136, size: 32, offset: 352)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !416, file: !417, line: 686, baseType: !136, size: 32, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !416, file: !417, line: 687, baseType: !136, size: 32, offset: 416)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !416, file: !417, line: 688, baseType: !136, size: 32, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !416, file: !417, line: 689, baseType: !7, size: 32, offset: 480)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !416, file: !417, line: 691, baseType: !444, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !417, line: 691, flags: DIFlagFwdDecl)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !416, file: !417, line: 692, baseType: !448, size: 832, offset: 576)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !417, line: 451, size: 832, elements: !449)
!449 = !{!450, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !448, file: !417, line: 453, baseType: !451, size: 128)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !417, line: 325, size: 128, elements: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !451, file: !417, line: 326, baseType: !202, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !451, file: !417, line: 327, baseType: !425, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !448, file: !417, line: 454, baseType: !250, size: 192, align: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !448, file: !417, line: 455, baseType: !96, size: 128, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !448, file: !417, line: 456, baseType: !7, size: 32, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !448, file: !417, line: 458, baseType: !271, size: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !448, file: !417, line: 459, baseType: !271, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !448, file: !417, line: 460, baseType: !271, size: 64, offset: 640)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !448, file: !417, line: 461, baseType: !271, size: 64, offset: 704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !448, file: !417, line: 463, baseType: !271, size: 64, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !448, file: !417, line: 465, baseType: !464, offset: 832)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !417, line: 415, elements: !124)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !416, file: !417, line: 693, baseType: !466, size: 384, offset: 1408)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !417, line: 489, size: 384, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !466, file: !417, line: 490, baseType: !96, size: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !466, file: !417, line: 491, baseType: !202, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !466, file: !417, line: 492, baseType: !202, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !466, file: !417, line: 493, baseType: !7, size: 32, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !466, file: !417, line: 494, baseType: !194, size: 16, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !466, file: !417, line: 495, baseType: !194, size: 16, offset: 304)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !466, file: !417, line: 497, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !416, file: !417, line: 697, baseType: !477, size: 1792, offset: 1792)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !417, line: 507, size: 1792, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !568, !569}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !477, file: !417, line: 508, baseType: !250, size: 192, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !477, file: !417, line: 515, baseType: !271, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !477, file: !417, line: 516, baseType: !271, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !477, file: !417, line: 517, baseType: !271, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !477, file: !417, line: 518, baseType: !271, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !477, file: !417, line: 519, baseType: !271, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !477, file: !417, line: 526, baseType: !307, size: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !477, file: !417, line: 527, baseType: !271, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !417, line: 528, baseType: !7, size: 32, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !477, file: !417, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !477, file: !417, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !477, file: !417, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !477, file: !417, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !477, file: !417, line: 563, baseType: !493, size: 512, offset: 704)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !494)
!494 = !{!495, !503, !504, !509, !561, !565, !566, !567}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !493, file: !6, line: 119, baseType: !496, size: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !497, line: 9, size: 256, elements: !498)
!497 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !497, line: 10, baseType: !250, size: 192, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !496, file: !497, line: 11, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !502, line: 29, baseType: !307)
!502 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !493, file: !6, line: 120, baseType: !501, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !493, file: !6, line: 121, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!5, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !493, file: !6, line: 122, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !512)
!512 = !{!513, !533, !534, !537, !547, !548, !556, !560}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !511, file: !6, line: 160, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !515, file: !6, line: 215, baseType: !318)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !515, file: !6, line: 216, baseType: !7, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !515, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !515, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !515, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !515, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !515, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !515, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !515, file: !6, line: 233, baseType: !501, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !515, file: !6, line: 234, baseType: !508, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !515, file: !6, line: 235, baseType: !501, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !515, file: !6, line: 236, baseType: !508, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !515, file: !6, line: 237, baseType: !530, size: 4096, offset: 512)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 4096, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 8)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !511, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !511, file: !6, line: 162, baseType: !535, size: 32, offset: 96)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !97, line: 27, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !185, line: 96, baseType: !136)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !511, file: !6, line: 163, baseType: !538, size: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !539, line: 276, baseType: !540)
!539 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !539, line: 276, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !540, file: !539, line: 276, baseType: !543, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !539, line: 70, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !539, line: 65, size: 32, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !544, file: !539, line: 66, baseType: !7, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !511, file: !6, line: 164, baseType: !508, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !511, file: !6, line: 165, baseType: !549, size: 128, offset: 256)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !497, line: 14, size: 128, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !549, file: !497, line: 15, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !251, line: 125, size: 128, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !552, file: !251, line: 126, baseType: !267, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !552, file: !251, line: 127, baseType: !255, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !511, file: !6, line: 166, baseType: !557, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!501}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !511, file: !6, line: 167, baseType: !501, size: 64, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !493, file: !6, line: 123, baseType: !562, size: 8, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !272, line: 17, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !274, line: 21, baseType: !564)
!564 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !493, file: !6, line: 124, baseType: !562, size: 8, offset: 456)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !493, file: !6, line: 125, baseType: !562, size: 8, offset: 464)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !493, file: !6, line: 126, baseType: !562, size: 8, offset: 472)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !477, file: !417, line: 572, baseType: !493, size: 512, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !477, file: !417, line: 580, baseType: !570, size: 64, offset: 1728)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !416, file: !417, line: 721, baseType: !7, size: 32, offset: 3584)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !416, file: !417, line: 722, baseType: !136, size: 32, offset: 3616)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !416, file: !417, line: 723, baseType: !574, size: 64, offset: 3648)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !577, line: 17, baseType: !578)
!577 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !577, line: 17, size: 64, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !578, file: !577, line: 17, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 1)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !416, file: !417, line: 724, baseType: !576, size: 64, offset: 3712)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !416, file: !417, line: 749, baseType: !586, offset: 3776)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !417, line: 290, elements: !124)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !416, file: !417, line: 751, baseType: !96, size: 128, offset: 3776)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !416, file: !417, line: 757, baseType: !259, size: 64, offset: 3904)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !416, file: !417, line: 758, baseType: !259, size: 64, offset: 3968)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !416, file: !417, line: 761, baseType: !591, size: 320, offset: 4032)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !348, line: 34, size: 320, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !591, file: !348, line: 35, baseType: !271, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !591, file: !348, line: 36, baseType: !595, size: 256, offset: 64)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !416, file: !417, line: 766, baseType: !136, size: 32, offset: 4352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !416, file: !417, line: 767, baseType: !136, size: 32, offset: 4384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !416, file: !417, line: 768, baseType: !136, size: 32, offset: 4416)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !416, file: !417, line: 770, baseType: !136, size: 32, offset: 4448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !416, file: !417, line: 772, baseType: !202, size: 64, offset: 4480)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !416, file: !417, line: 775, baseType: !7, size: 32, offset: 4544)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !416, file: !417, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !416, file: !417, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !416, file: !417, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !416, file: !417, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !416, file: !417, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !416, file: !417, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !416, file: !417, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !416, file: !417, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !416, file: !417, line: 831, baseType: !202, size: 64, offset: 4672)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !416, file: !417, line: 833, baseType: !612, size: 384, offset: 4736)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !613)
!613 = !{!614, !619}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !612, file: !12, line: 26, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!187, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, scope: !612, file: !12, line: 27, baseType: !620, size: 320, offset: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !612, file: !12, line: 27, size: 320, elements: !621)
!621 = !{!622, !632, !659}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !620, file: !12, line: 36, baseType: !623, size: 320)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !12, line: 29, size: 320, elements: !624)
!624 = !{!625, !627, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !623, file: !12, line: 30, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !623, file: !12, line: 31, baseType: !425, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !12, line: 32, baseType: !425, size: 32, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !623, file: !12, line: 33, baseType: !425, size: 32, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !623, file: !12, line: 34, baseType: !271, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !623, file: !12, line: 35, baseType: !626, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !620, file: !12, line: 46, baseType: !633, size: 192)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !12, line: 38, size: 192, elements: !634)
!634 = !{!635, !636, !637, !658}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !633, file: !12, line: 39, baseType: !535, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !12, line: 41, baseType: !638, size: 64, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !12, line: 41, size: 64, elements: !639)
!639 = !{!640, !648}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !638, file: !12, line: 42, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !643, line: 7, size: 128, elements: !644)
!643 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!644 = !{!645, !647}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !642, file: !643, line: 8, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !185, line: 93, baseType: !235)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !642, file: !643, line: 9, baseType: !235, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !638, file: !12, line: 43, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !651, line: 7, size: 64, elements: !652)
!651 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!652 = !{!653, !657}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !650, file: !651, line: 8, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !651, line: 5, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !272, line: 20, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !274, line: 26, baseType: !136)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !650, file: !651, line: 9, baseType: !655, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !633, file: !12, line: 45, baseType: !271, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !620, file: !12, line: 54, baseType: !660, size: 256)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !620, file: !12, line: 48, size: 256, elements: !661)
!661 = !{!662, !665, !666, !667, !668}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !660, file: !12, line: 49, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !660, file: !12, line: 50, baseType: !136, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !660, file: !12, line: 51, baseType: !136, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !660, file: !12, line: 52, baseType: !202, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !660, file: !12, line: 53, baseType: !202, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !416, file: !417, line: 835, baseType: !670, size: 32, offset: 5120)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !97, line: 22, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !185, line: 28, baseType: !136)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !416, file: !417, line: 836, baseType: !670, size: 32, offset: 5152)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !416, file: !417, line: 840, baseType: !202, size: 64, offset: 5184)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !416, file: !417, line: 849, baseType: !415, size: 64, offset: 5248)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !416, file: !417, line: 852, baseType: !415, size: 64, offset: 5312)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !416, file: !417, line: 857, baseType: !96, size: 128, offset: 5376)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !416, file: !417, line: 858, baseType: !96, size: 128, offset: 5504)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !416, file: !417, line: 859, baseType: !415, size: 64, offset: 5632)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !416, file: !417, line: 867, baseType: !96, size: 128, offset: 5696)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !416, file: !417, line: 868, baseType: !96, size: 128, offset: 5824)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !416, file: !417, line: 871, baseType: !682, size: 64, offset: 5952)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !684, line: 59, size: 768, elements: !685)
!684 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!685 = !{!686, !687, !688, !689, !700, !701, !708, !717}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !683, file: !684, line: 61, baseType: !431, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !683, file: !684, line: 62, baseType: !7, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !683, file: !684, line: 63, baseType: !110, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !683, file: !684, line: 65, baseType: !690, size: 256, offset: 64)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 256, elements: !352)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !97, line: 182, size: 64, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !691, file: !97, line: 183, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !97, line: 186, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !97, line: 187, baseType: !694, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !695, file: !97, line: 187, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !683, file: !684, line: 66, baseType: !691, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !683, file: !684, line: 68, baseType: !702, size: 128, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !703, line: 40, baseType: !704)
!703 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !703, line: 36, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !704, file: !703, line: 37, baseType: !110)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !704, file: !703, line: 38, baseType: !96, size: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !683, file: !684, line: 69, baseType: !709, size: 128, align: 64, offset: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !97, line: 216, size: 128, align: 64, elements: !710)
!710 = !{!711, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !97, line: 217, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !709, file: !97, line: 218, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !712}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !683, file: !684, line: 70, baseType: !718, size: 128, offset: 640)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 128, elements: !582)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !684, line: 54, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !719, file: !684, line: 55, baseType: !136, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !719, file: !684, line: 56, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !684, line: 56, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !416, file: !417, line: 872, baseType: !726, size: 512, offset: 6016)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 512, elements: !352)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !416, file: !417, line: 873, baseType: !96, size: 128, offset: 6528)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !416, file: !417, line: 874, baseType: !96, size: 128, offset: 6656)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !416, file: !417, line: 876, baseType: !730, size: 64, offset: 6784)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !732, line: 26, size: 192, elements: !733)
!732 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !731, file: !732, line: 27, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !731, file: !732, line: 28, baseType: !736, size: 128, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !737, line: 43, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !736, file: !737, line: 44, baseType: !318)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !736, file: !737, line: 45, baseType: !96, size: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !416, file: !417, line: 879, baseType: !742, size: 64, offset: 6848)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !416, file: !417, line: 882, baseType: !742, size: 64, offset: 6912)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !416, file: !417, line: 884, baseType: !271, size: 64, offset: 6976)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !416, file: !417, line: 885, baseType: !271, size: 64, offset: 7040)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !416, file: !417, line: 890, baseType: !271, size: 64, offset: 7104)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !416, file: !417, line: 891, baseType: !748, size: 128, offset: 7168)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !417, line: 242, size: 128, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !748, file: !417, line: 244, baseType: !271, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !748, file: !417, line: 245, baseType: !271, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !417, line: 246, baseType: !318, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !416, file: !417, line: 900, baseType: !202, size: 64, offset: 7296)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !416, file: !417, line: 901, baseType: !202, size: 64, offset: 7360)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !416, file: !417, line: 904, baseType: !271, size: 64, offset: 7424)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !416, file: !417, line: 907, baseType: !271, size: 64, offset: 7488)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !416, file: !417, line: 910, baseType: !202, size: 64, offset: 7552)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !416, file: !417, line: 911, baseType: !202, size: 64, offset: 7616)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !416, file: !417, line: 914, baseType: !760, size: 640, offset: 7680)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !761, line: 123, size: 640, elements: !762)
!761 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !769, !770}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !760, file: !761, line: 124, baseType: !764, size: 576)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 576, elements: !153)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !761, line: 108, size: 192, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !765, file: !761, line: 109, baseType: !271, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !765, file: !761, line: 110, baseType: !549, size: 128, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !760, file: !761, line: 125, baseType: !7, size: 32, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !760, file: !761, line: 126, baseType: !7, size: 32, offset: 608)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !416, file: !417, line: 917, baseType: !772, size: 192, offset: 8320)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !761, line: 134, size: 192, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !772, file: !761, line: 135, baseType: !709, size: 128, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !772, file: !761, line: 136, baseType: !7, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !416, file: !417, line: 923, baseType: !777, size: 64, offset: 8512)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !417, line: 923, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !416, file: !417, line: 926, baseType: !777, size: 64, offset: 8576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !416, file: !417, line: 929, baseType: !777, size: 64, offset: 8640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !416, file: !417, line: 933, baseType: !783, size: 64, offset: 8704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !417, line: 933, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !416, file: !417, line: 943, baseType: !786, size: 128, offset: 8768)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 16)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !416, file: !417, line: 945, baseType: !790, size: 64, offset: 8896)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !417, line: 49, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !416, file: !417, line: 956, baseType: !793, size: 64, offset: 8960)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !417, line: 45, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !416, file: !417, line: 959, baseType: !796, size: 64, offset: 9024)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !417, line: 959, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !416, file: !417, line: 962, baseType: !799, size: 64, offset: 9088)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !417, line: 66, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !416, file: !417, line: 966, baseType: !802, size: 64, offset: 9152)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !417, line: 50, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !416, file: !417, line: 969, baseType: !805, size: 64, offset: 9216)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !761, line: 223, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !416, file: !417, line: 970, baseType: !808, size: 64, offset: 9280)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !417, line: 62, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !416, file: !417, line: 971, baseType: !811, size: 64, offset: 9344)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !812, line: 25, baseType: !813)
!812 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !812, line: 23, size: 64, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !813, file: !812, line: 24, baseType: !581, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !416, file: !417, line: 972, baseType: !811, size: 64, offset: 9408)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !416, file: !417, line: 974, baseType: !811, size: 64, offset: 9472)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !416, file: !417, line: 975, baseType: !819, size: 192, offset: 9536)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !820, line: 30, size: 192, elements: !821)
!820 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !819, file: !820, line: 31, baseType: !96, size: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !819, file: !820, line: 32, baseType: !811, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !416, file: !417, line: 976, baseType: !202, size: 64, offset: 9728)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !416, file: !417, line: 977, baseType: !199, size: 64, offset: 9792)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !416, file: !417, line: 978, baseType: !7, size: 32, offset: 9856)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !416, file: !417, line: 980, baseType: !712, size: 64, offset: 9920)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !416, file: !417, line: 989, baseType: !829, size: 128, offset: 9984)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !830, line: 35, size: 128, elements: !831)
!830 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832, !833, !834}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !829, file: !830, line: 36, baseType: !136, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !829, file: !830, line: 37, baseType: !293, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !829, file: !830, line: 38, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !830, line: 23, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !416, file: !417, line: 992, baseType: !271, size: 64, offset: 10112)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !416, file: !417, line: 993, baseType: !271, size: 64, offset: 10176)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !416, file: !417, line: 996, baseType: !110, offset: 10240)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !416, file: !417, line: 999, baseType: !318, offset: 10240)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !416, file: !417, line: 1001, baseType: !842, size: 64, offset: 10240)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !417, line: 636, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !417, line: 637, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !416, file: !417, line: 1005, baseType: !552, size: 128, offset: 10304)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !416, file: !417, line: 1007, baseType: !415, size: 64, offset: 10432)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !416, file: !417, line: 1009, baseType: !849, size: 64, offset: 10496)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !417, line: 1009, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !416, file: !417, line: 1043, baseType: !79, size: 64, offset: 10560)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !416, file: !417, line: 1046, baseType: !853, size: 64, offset: 10624)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !417, line: 41, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !416, file: !417, line: 1050, baseType: !856, size: 64, offset: 10688)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !417, line: 42, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !416, file: !417, line: 1054, baseType: !859, size: 64, offset: 10752)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !417, line: 55, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !416, file: !417, line: 1056, baseType: !862, size: 64, offset: 10816)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !417, line: 40, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !416, file: !417, line: 1058, baseType: !865, size: 64, offset: 10880)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !417, line: 47, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !416, file: !417, line: 1061, baseType: !868, size: 64, offset: 10944)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !417, line: 43, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !416, file: !417, line: 1064, baseType: !202, size: 64, offset: 11008)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !416, file: !417, line: 1065, baseType: !872, size: 64, offset: 11072)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !820, line: 14, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !820, line: 12, size: 384, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !820, line: 13, baseType: !877, size: 384)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !820, line: 13, size: 384, elements: !878)
!878 = !{!879, !880, !881, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !877, file: !820, line: 13, baseType: !136, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !877, file: !820, line: 13, baseType: !136, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !877, file: !820, line: 13, baseType: !136, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !877, file: !820, line: 13, baseType: !883, size: 256, offset: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !884, line: 32, size: 256, elements: !885)
!884 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886, !892, !905, !911, !920, !940, !945}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !883, file: !884, line: 37, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 34, size: 64, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !887, file: !884, line: 35, baseType: !671, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !887, file: !884, line: 36, baseType: !891, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !185, line: 49, baseType: !7)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !883, file: !884, line: 45, baseType: !893, size: 192)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 40, size: 192, elements: !894)
!894 = !{!895, !897, !898, !904}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !893, file: !884, line: 41, baseType: !896, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !185, line: 95, baseType: !136)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !893, file: !884, line: 42, baseType: !136, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !893, file: !884, line: 43, baseType: !899, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !884, line: 11, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !884, line: 8, size: 64, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !900, file: !884, line: 9, baseType: !136, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !900, file: !884, line: 10, baseType: !79, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !893, file: !884, line: 44, baseType: !136, size: 32, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !883, file: !884, line: 52, baseType: !906, size: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 48, size: 128, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !906, file: !884, line: 49, baseType: !671, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !906, file: !884, line: 50, baseType: !891, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !906, file: !884, line: 51, baseType: !899, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !883, file: !884, line: 61, baseType: !912, size: 256)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 55, size: 256, elements: !913)
!913 = !{!914, !915, !916, !917, !919}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !912, file: !884, line: 56, baseType: !671, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !912, file: !884, line: 57, baseType: !891, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !912, file: !884, line: 58, baseType: !136, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !912, file: !884, line: 59, baseType: !918, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !185, line: 94, baseType: !186)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !912, file: !884, line: 60, baseType: !918, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !883, file: !884, line: 95, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 64, size: 256, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !921, file: !884, line: 65, baseType: !79, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !884, line: 77, baseType: !925, size: 192, offset: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !921, file: !884, line: 77, size: 192, elements: !926)
!926 = !{!927, !928, !935}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !925, file: !884, line: 82, baseType: !404, size: 16)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !925, file: !884, line: 88, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !884, line: 84, size: 192, elements: !930)
!930 = !{!931, !933, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !929, file: !884, line: 85, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !531)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !929, file: !884, line: 86, baseType: !79, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !929, file: !884, line: 87, baseType: !79, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !925, file: !884, line: 93, baseType: !936, size: 96)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !925, file: !884, line: 90, size: 96, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !936, file: !884, line: 91, baseType: !932, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !936, file: !884, line: 92, baseType: !426, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !883, file: !884, line: 101, baseType: !941, size: 128)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 98, size: 128, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !941, file: !884, line: 99, baseType: !187, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !941, file: !884, line: 100, baseType: !136, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !883, file: !884, line: 108, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !884, line: 104, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !946, file: !884, line: 105, baseType: !79, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !946, file: !884, line: 106, baseType: !136, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !946, file: !884, line: 107, baseType: !7, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !416, file: !417, line: 1067, baseType: !952, offset: 11136)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !953, line: 12, elements: !124)
!953 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!954 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !416, file: !417, line: 1099, baseType: !955, size: 64, offset: 11136)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !417, line: 56, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !416, file: !417, line: 1103, baseType: !96, size: 128, offset: 11200)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !416, file: !417, line: 1104, baseType: !959, size: 64, offset: 11328)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !417, line: 46, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !416, file: !417, line: 1105, baseType: !370, size: 192, offset: 11392)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !416, file: !417, line: 1106, baseType: !7, size: 32, offset: 11584)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !416, file: !417, line: 1109, baseType: !964, size: 128, offset: 11648)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 128, elements: !967)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !417, line: 51, flags: DIFlagFwdDecl)
!967 = !{!968}
!968 = !DISubrange(count: 2)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !416, file: !417, line: 1110, baseType: !370, size: 192, offset: 11776)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !416, file: !417, line: 1111, baseType: !96, size: 128, offset: 11968)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !416, file: !417, line: 1173, baseType: !972, size: 64, offset: 12096)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !974, line: 62, size: 256, align: 256, elements: !975)
!974 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976, !977, !978, !983}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !973, file: !974, line: 75, baseType: !426, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !973, file: !974, line: 90, baseType: !426, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !973, file: !974, line: 124, baseType: !979, size: 64, offset: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !974, line: 109, size: 64, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !979, file: !974, line: 110, baseType: !273, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !979, file: !974, line: 112, baseType: !273, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !974, line: 144, baseType: !426, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !416, file: !417, line: 1174, baseType: !425, size: 32, offset: 12160)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !416, file: !417, line: 1179, baseType: !202, size: 64, offset: 12224)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !416, file: !417, line: 1182, baseType: !987, size: 128, offset: 12288)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !348, line: 76, size: 128, elements: !988)
!988 = !{!989, !994, !997}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !987, file: !348, line: 85, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !991, line: 7, size: 64, elements: !992)
!991 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !990, file: !991, line: 12, baseType: !578, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !987, file: !348, line: 88, baseType: !995, size: 8, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !97, line: 30, baseType: !996)
!996 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !987, file: !348, line: 95, baseType: !995, size: 8, offset: 72)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !417, line: 1184, baseType: !999, size: 128, offset: 12416)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !417, line: 1184, size: 128, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !999, file: !417, line: 1185, baseType: !431, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !999, file: !417, line: 1186, baseType: !709, size: 128, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !416, file: !417, line: 1190, baseType: !1004, size: 64, offset: 12544)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !417, line: 53, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !416, file: !417, line: 1192, baseType: !1007, size: 128, offset: 12608)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !348, line: 64, size: 128, elements: !1008)
!1008 = !{!1009, !1102, !1103}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1007, file: !348, line: 65, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !243, line: 68, size: 512, align: 128, elements: !1012)
!1012 = !{!1013, !1014, !1094, !1101}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !243, line: 69, baseType: !202, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !243, line: 77, baseType: !1015, size: 320, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !243, line: 77, size: 320, elements: !1016)
!1016 = !{!1017, !1026, !1031, !1059, !1067, !1073, !1086, !1093}
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 78, baseType: !1018, size: 320)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 78, size: 320, elements: !1019)
!1019 = !{!1020, !1021, !1024, !1025}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1018, file: !243, line: 84, baseType: !96, size: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1018, file: !243, line: 86, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !243, line: 26, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1018, file: !243, line: 87, baseType: !202, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1018, file: !243, line: 94, baseType: !202, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 96, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 96, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1027, file: !243, line: 101, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !97, line: 143, baseType: !271)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 103, baseType: !1032, size: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 103, size: 320, elements: !1033)
!1033 = !{!1034, !1044, !1047, !1048}
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !243, line: 104, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !243, line: 104, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1035, file: !243, line: 105, baseType: !96, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !243, line: 106, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !243, line: 106, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1039, file: !243, line: 107, baseType: !1010, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1039, file: !243, line: 109, baseType: !136, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1039, file: !243, line: 110, baseType: !136, size: 32, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1032, file: !243, line: 117, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !243, line: 117, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1032, file: !243, line: 119, baseType: !79, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !243, line: 120, baseType: !1049, size: 64, offset: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !243, line: 120, size: 64, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1049, file: !243, line: 121, baseType: !79, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1049, file: !243, line: 122, baseType: !202, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !243, line: 123, baseType: !1054, size: 32)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !243, line: 123, size: 32, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1054, file: !243, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1054, file: !243, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1054, file: !243, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 130, baseType: !1060, size: 192)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 130, size: 192, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1060, file: !243, line: 131, baseType: !202, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1060, file: !243, line: 134, baseType: !564, size: 8, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1060, file: !243, line: 135, baseType: !564, size: 8, offset: 72)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1060, file: !243, line: 136, baseType: !293, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1060, file: !243, line: 137, baseType: !7, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 139, baseType: !1068, size: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 139, size: 256, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1068, file: !243, line: 140, baseType: !202, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1068, file: !243, line: 141, baseType: !293, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1068, file: !243, line: 143, baseType: !96, size: 128, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 145, baseType: !1074, size: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 145, size: 256, elements: !1075)
!1075 = !{!1076, !1077, !1079, !1080, !1085}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1074, file: !243, line: 146, baseType: !202, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1074, file: !243, line: 147, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !232, line: 509, baseType: !1010)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1074, file: !243, line: 148, baseType: !202, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !243, line: 149, baseType: !1081, size: 64, offset: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !243, line: 149, size: 64, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1081, file: !243, line: 150, baseType: !259, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1081, file: !243, line: 151, baseType: !293, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1074, file: !243, line: 156, baseType: !110, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !243, line: 159, baseType: !1087, size: 128)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !243, line: 159, size: 128, elements: !1088)
!1088 = !{!1089, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1087, file: !243, line: 161, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !243, line: 161, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1087, file: !243, line: 162, baseType: !79, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1015, file: !243, line: 176, baseType: !709, size: 128, align: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !243, line: 179, baseType: !1095, size: 32, offset: 384)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !243, line: 179, size: 32, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1095, file: !243, line: 184, baseType: !293, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1095, file: !243, line: 192, baseType: !7, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1095, file: !243, line: 194, baseType: !7, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1095, file: !243, line: 195, baseType: !136, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1011, file: !243, line: 199, baseType: !293, size: 32, offset: 416)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1007, file: !348, line: 67, baseType: !426, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1007, file: !348, line: 68, baseType: !426, size: 32, offset: 96)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !416, file: !417, line: 1206, baseType: !136, size: 32, offset: 12736)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !416, file: !417, line: 1207, baseType: !136, size: 32, offset: 12768)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !416, file: !417, line: 1209, baseType: !202, size: 64, offset: 12800)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !416, file: !417, line: 1219, baseType: !271, size: 64, offset: 12864)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !416, file: !417, line: 1220, baseType: !271, size: 64, offset: 12928)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !416, file: !417, line: 1317, baseType: !136, size: 32, offset: 12992)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !416, file: !417, line: 1319, baseType: !415, size: 64, offset: 13056)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !416, file: !417, line: 1322, baseType: !1112, size: 64, offset: 13120)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !417, line: 1322, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !416, file: !417, line: 1326, baseType: !431, size: 32, offset: 13184)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !416, file: !417, line: 1342, baseType: !79, size: 64, offset: 13248)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !416, file: !417, line: 1343, baseType: !273, size: 64, offset: 13312)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !416, file: !417, line: 1344, baseType: !271, size: 64, offset: 13376)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !416, file: !417, line: 1345, baseType: !273, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !416, file: !417, line: 1346, baseType: !273, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !416, file: !417, line: 1347, baseType: !273, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !416, file: !417, line: 1348, baseType: !709, size: 128, align: 64, offset: 13504)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !416, file: !417, line: 1358, baseType: !1123, size: 34816, offset: 13824)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1124, line: 485, size: 34816, elements: !1125)
!1124 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1155, !1156, !1157, !1158, !1159, !1160, !1163, !1164, !1165}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1123, file: !1124, line: 487, baseType: !1127, size: 192)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 192, elements: !153)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1129, line: 16, size: 64, elements: !1130)
!1129 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1128, file: !1129, line: 17, baseType: !399, size: 16)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1128, file: !1129, line: 18, baseType: !399, size: 16, offset: 16)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1128, file: !1129, line: 19, baseType: !399, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1128, file: !1129, line: 19, baseType: !399, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1128, file: !1129, line: 19, baseType: !399, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1128, file: !1129, line: 19, baseType: !399, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1128, file: !1129, line: 19, baseType: !399, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1128, file: !1129, line: 20, baseType: !399, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1128, file: !1129, line: 20, baseType: !399, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1128, file: !1129, line: 20, baseType: !399, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1123, file: !1124, line: 491, baseType: !202, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1123, file: !1124, line: 495, baseType: !194, size: 16, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1123, file: !1124, line: 496, baseType: !194, size: 16, offset: 272)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1123, file: !1124, line: 497, baseType: !194, size: 16, offset: 288)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1123, file: !1124, line: 498, baseType: !194, size: 16, offset: 304)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1123, file: !1124, line: 502, baseType: !202, size: 64, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1123, file: !1124, line: 503, baseType: !202, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1123, file: !1124, line: 514, baseType: !1152, size: 256, offset: 448)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !352)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1124, line: 483, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1123, file: !1124, line: 516, baseType: !202, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1123, file: !1124, line: 518, baseType: !202, size: 64, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1123, file: !1124, line: 520, baseType: !202, size: 64, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1123, file: !1124, line: 521, baseType: !202, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1123, file: !1124, line: 522, baseType: !202, size: 64, offset: 960)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1123, file: !1124, line: 528, baseType: !1161, size: 64, offset: 1024)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1124, line: 10, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1123, file: !1124, line: 535, baseType: !202, size: 64, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1123, file: !1124, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1123, file: !1124, line: 540, baseType: !1166, size: 33280, offset: 1536)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1167, line: 317, size: 33280, elements: !1168)
!1167 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1166, file: !1167, line: 330, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1166, file: !1167, line: 337, baseType: !202, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1166, file: !1167, line: 348, baseType: !1172, size: 32768, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1167, line: 304, size: 32768, elements: !1173)
!1173 = !{!1174, !1189, !1228, !1278, !1295}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1172, file: !1167, line: 305, baseType: !1175, size: 896)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1167, line: 12, size: 896, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1175, file: !1167, line: 13, baseType: !425, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1175, file: !1167, line: 14, baseType: !425, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1175, file: !1167, line: 15, baseType: !425, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1175, file: !1167, line: 16, baseType: !425, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1175, file: !1167, line: 17, baseType: !425, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1175, file: !1167, line: 18, baseType: !425, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1175, file: !1167, line: 19, baseType: !425, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1175, file: !1167, line: 22, baseType: !1185, size: 640, offset: 224)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 640, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 20)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1175, file: !1167, line: 25, baseType: !425, size: 32, offset: 864)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1172, file: !1167, line: 306, baseType: !1190, size: 4096, align: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1167, line: 34, size: 4096, align: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1211, !1212, !1213, !1217, !1219, !1223}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1190, file: !1167, line: 35, baseType: !399, size: 16)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1190, file: !1167, line: 36, baseType: !399, size: 16, offset: 16)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1190, file: !1167, line: 37, baseType: !399, size: 16, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1190, file: !1167, line: 38, baseType: !399, size: 16, offset: 48)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 39, baseType: !1197, size: 128, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 39, size: 128, elements: !1198)
!1198 = !{!1199, !1204}
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 40, baseType: !1200, size: 128)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 40, size: 128, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1200, file: !1167, line: 41, baseType: !271, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1200, file: !1167, line: 42, baseType: !271, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1167, line: 44, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1167, line: 44, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1205, file: !1167, line: 45, baseType: !425, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1205, file: !1167, line: 46, baseType: !425, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1205, file: !1167, line: 47, baseType: !425, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1205, file: !1167, line: 48, baseType: !425, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1190, file: !1167, line: 51, baseType: !425, size: 32, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1190, file: !1167, line: 52, baseType: !425, size: 32, offset: 224)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1190, file: !1167, line: 55, baseType: !1214, size: 1024, offset: 256)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 1024, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1190, file: !1167, line: 58, baseType: !1218, size: 2048, offset: 1280)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 2048, elements: !157)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1190, file: !1167, line: 60, baseType: !1220, size: 384, offset: 3328)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 384, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 12)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !1167, line: 62, baseType: !1224, size: 384, offset: 3712)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1167, line: 62, size: 384, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1224, file: !1167, line: 63, baseType: !1220, size: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1224, file: !1167, line: 64, baseType: !1220, size: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1172, file: !1167, line: 307, baseType: !1229, size: 1088)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1167, line: 79, size: 1088, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1277}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1229, file: !1167, line: 80, baseType: !425, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1229, file: !1167, line: 81, baseType: !425, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1229, file: !1167, line: 82, baseType: !425, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1167, line: 83, baseType: !425, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1167, line: 84, baseType: !425, size: 32, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1167, line: 85, baseType: !425, size: 32, offset: 160)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1167, line: 86, baseType: !425, size: 32, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1229, file: !1167, line: 88, baseType: !1185, size: 640, offset: 224)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1229, file: !1167, line: 89, baseType: !562, size: 8, offset: 864)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1229, file: !1167, line: 90, baseType: !562, size: 8, offset: 872)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1229, file: !1167, line: 91, baseType: !562, size: 8, offset: 880)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1229, file: !1167, line: 92, baseType: !562, size: 8, offset: 888)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1229, file: !1167, line: 93, baseType: !562, size: 8, offset: 896)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1229, file: !1167, line: 94, baseType: !562, size: 8, offset: 904)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1229, file: !1167, line: 95, baseType: !1246, size: 64, offset: 960)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1248, line: 11, size: 128, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1247, file: !1248, line: 12, baseType: !187, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1247, file: !1248, line: 13, baseType: !1252, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1254, line: 56, size: 1344, elements: !1255)
!1254 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1253, file: !1254, line: 61, baseType: !202, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1253, file: !1254, line: 62, baseType: !202, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1253, file: !1254, line: 63, baseType: !202, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1253, file: !1254, line: 64, baseType: !202, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1253, file: !1254, line: 65, baseType: !202, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1253, file: !1254, line: 66, baseType: !202, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1253, file: !1254, line: 68, baseType: !202, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1253, file: !1254, line: 69, baseType: !202, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1253, file: !1254, line: 70, baseType: !202, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1253, file: !1254, line: 71, baseType: !202, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1253, file: !1254, line: 72, baseType: !202, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1253, file: !1254, line: 73, baseType: !202, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1253, file: !1254, line: 74, baseType: !202, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1253, file: !1254, line: 75, baseType: !202, size: 64, offset: 832)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1253, file: !1254, line: 76, baseType: !202, size: 64, offset: 896)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1253, file: !1254, line: 81, baseType: !202, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1253, file: !1254, line: 83, baseType: !202, size: 64, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1253, file: !1254, line: 84, baseType: !202, size: 64, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !1254, line: 85, baseType: !202, size: 64, offset: 1152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1253, file: !1254, line: 86, baseType: !202, size: 64, offset: 1216)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1253, file: !1254, line: 87, baseType: !202, size: 64, offset: 1280)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1229, file: !1167, line: 96, baseType: !425, size: 32, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1172, file: !1167, line: 308, baseType: !1279, size: 4608, align: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1167, line: 289, size: 4608, align: 512, elements: !1280)
!1280 = !{!1281, !1282, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1279, file: !1167, line: 290, baseType: !1190, size: 4096, align: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1279, file: !1167, line: 291, baseType: !1283, size: 512, offset: 4096)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1167, line: 268, size: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1283, file: !1167, line: 269, baseType: !271, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1283, file: !1167, line: 270, baseType: !271, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1283, file: !1167, line: 271, baseType: !1288, size: 384, offset: 128)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 6)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1279, file: !1167, line: 292, baseType: !1292, offset: 4608)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1172, file: !1167, line: 309, baseType: !1296, size: 32768)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 32768, elements: !1297)
!1297 = !{!1298}
!1298 = !DISubrange(count: 4096)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !243, line: 378, baseType: !1300, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !408, file: !243, line: 384, baseType: !731, size: 192, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !263, file: !243, line: 500, baseType: !110, offset: 6656)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !263, file: !243, line: 501, baseType: !1304, size: 64, offset: 6656)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !243, line: 387, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !263, file: !243, line: 516, baseType: !1307, size: 64, offset: 6720)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1309, line: 18, flags: DIFlagFwdDecl)
!1309 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !263, file: !243, line: 519, baseType: !230, size: 64, offset: 6784)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !263, file: !243, line: 521, baseType: !1312, size: 64, offset: 6848)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !243, line: 521, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !263, file: !243, line: 545, baseType: !293, size: 32, offset: 6912)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !263, file: !243, line: 548, baseType: !995, size: 8, offset: 6944)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !263, file: !243, line: 550, baseType: !1317, offset: 6952)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1318, line: 142, elements: !124)
!1318 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !263, file: !243, line: 554, baseType: !1320, size: 256, offset: 6976)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1321, line: 102, size: 256, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1320, file: !1321, line: 103, baseType: !301, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1320, file: !1321, line: 104, baseType: !96, size: 128, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1320, file: !1321, line: 105, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1321, line: 21, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !263, file: !243, line: 557, baseType: !425, size: 32, offset: 7232)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !260, file: !243, line: 565, baseType: !1333, offset: 7296)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: -1)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !242, file: !243, line: 333, baseType: !1337, size: 64, offset: 576)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !232, line: 284, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !232, line: 284, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1338, file: !232, line: 284, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !291, line: 19, baseType: !202)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !242, file: !243, line: 334, baseType: !202, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !242, file: !243, line: 343, baseType: !1344, size: 256, offset: 704)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !243, line: 340, size: 256, elements: !1345)
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1344, file: !243, line: 341, baseType: !250, size: 192, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1344, file: !243, line: 342, baseType: !202, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !242, file: !243, line: 351, baseType: !96, size: 128, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !242, file: !243, line: 353, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !243, line: 353, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !242, file: !243, line: 356, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1355)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !243, line: 356, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !242, file: !243, line: 359, baseType: !202, size: 64, offset: 1216)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !242, file: !243, line: 361, baseType: !230, size: 64, offset: 1280)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !242, file: !243, line: 362, baseType: !79, size: 64, offset: 1344)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !242, file: !243, line: 365, baseType: !301, size: 64, offset: 1408)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !242, file: !243, line: 373, baseType: !1361, offset: 1472)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !243, line: 296, elements: !124)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !209, file: !177, line: 90, baseType: !204, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !209, file: !177, line: 91, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !167, file: !89, line: 143, baseType: !1366, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1369, !103}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1372)
!1372 = !{!1373, !1374, !1378, !1382, !1390, !1394}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !18, line: 40, baseType: !17, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1371, file: !18, line: 41, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!995}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1371, file: !18, line: 42, baseType: !1379, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!79}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1371, file: !18, line: 43, baseType: !1383, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1371, file: !18, line: 44, baseType: !1391, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1386}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1371, file: !18, line: 45, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{null, !79}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !167, file: !89, line: 144, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1386, !103}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !167, file: !89, line: 145, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !103, !1406, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1309, line: 23, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 21, size: 32, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1408, file: !1309, line: 22, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !97, line: 32, baseType: !891)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1309, line: 28, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 26, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1414, file: !1309, line: 27, baseType: !1417, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !97, line: 33, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !185, line: 50, baseType: !7)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !88, file: !89, line: 70, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1422, line: 123, size: 1024, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1566, !1567, !1568, !1569, !1570}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1421, file: !1422, line: 124, baseType: !293, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1421, file: !1422, line: 125, baseType: !293, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1421, file: !1422, line: 135, baseType: !1420, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1421, file: !1422, line: 136, baseType: !92, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1421, file: !1422, line: 138, baseType: !250, size: 192, align: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1421, file: !1422, line: 140, baseType: !1386, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1421, file: !1422, line: 141, baseType: !7, size: 32, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !1422, line: 142, baseType: !1432, size: 256, offset: 512)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1421, file: !1422, line: 142, size: 256, elements: !1433)
!1433 = !{!1434, !1489, !1493}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1432, file: !1422, line: 143, baseType: !1435, size: 192)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1422, line: 91, size: 192, elements: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1435, file: !1422, line: 92, baseType: !202, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1435, file: !1422, line: 94, baseType: !267, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1435, file: !1422, line: 100, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1422, line: 180, size: 704, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1459, !1460, !1461, !1487, !1488}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1441, file: !1422, line: 182, baseType: !1420, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1422, line: 183, baseType: !7, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1441, file: !1422, line: 186, baseType: !1446, size: 192, offset: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1447, line: 19, size: 192, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1457, !1458}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1446, file: !1447, line: 20, baseType: !1450, size: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1451, line: 292, size: 128, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1454, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1450, file: !1451, line: 293, baseType: !110)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1450, file: !1451, line: 295, baseType: !1455, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !97, line: 148, baseType: !7)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1450, file: !1451, line: 296, baseType: !79, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1446, file: !1447, line: 21, baseType: !7, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1446, file: !1447, line: 22, baseType: !7, size: 32, offset: 160)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1441, file: !1422, line: 187, baseType: !425, size: 32, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1441, file: !1422, line: 188, baseType: !425, size: 32, offset: 352)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1441, file: !1422, line: 189, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1422, line: 168, size: 320, elements: !1464)
!1464 = !{!1465, !1471, !1475, !1479, !1483}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1463, file: !1422, line: 169, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!136, !1469, !1440}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !232, line: 539, flags: DIFlagFwdDecl)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1463, file: !1422, line: 171, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!136, !1420, !92, !193}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1463, file: !1422, line: 173, baseType: !1476, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!136, !1420}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1463, file: !1422, line: 174, baseType: !1480, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!136, !1420, !1420, !92}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1463, file: !1422, line: 176, baseType: !1484, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!136, !1469, !1420, !1440}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1441, file: !1422, line: 192, baseType: !96, size: 128, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1441, file: !1422, line: 194, baseType: !702, size: 128, offset: 576)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1432, file: !1422, line: 144, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1422, line: 103, size: 64, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1490, file: !1422, line: 104, baseType: !1420, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1432, file: !1422, line: 145, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1422, line: 107, size: 256, elements: !1495)
!1495 = !{!1496, !1561, !1564, !1565}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1494, file: !1422, line: 108, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1422, line: 217, size: 768, elements: !1500)
!1500 = !{!1501, !1521, !1525, !1529, !1534, !1538, !1542, !1546, !1547, !1548, !1549, !1557}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1499, file: !1422, line: 222, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!136, !1505}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1422, line: 197, size: 1088, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1506, file: !1422, line: 199, baseType: !1420, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1506, file: !1422, line: 200, baseType: !230, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1506, file: !1422, line: 201, baseType: !1469, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1506, file: !1422, line: 202, baseType: !79, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1506, file: !1422, line: 205, baseType: !370, size: 192, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1506, file: !1422, line: 206, baseType: !370, size: 192, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1506, file: !1422, line: 207, baseType: !136, size: 32, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1506, file: !1422, line: 208, baseType: !96, size: 128, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1506, file: !1422, line: 209, baseType: !152, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1506, file: !1422, line: 211, baseType: !199, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1506, file: !1422, line: 212, baseType: !995, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1506, file: !1422, line: 213, baseType: !995, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1506, file: !1422, line: 214, baseType: !1353, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1499, file: !1422, line: 223, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1505}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1499, file: !1422, line: 236, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!136, !1469, !79}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1499, file: !1422, line: 238, baseType: !1530, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!79, !1469, !1533}
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1499, file: !1422, line: 239, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!79, !1469, !79, !1533}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1499, file: !1422, line: 240, baseType: !1539, size: 64, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1469, !79}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1499, file: !1422, line: 242, baseType: !1543, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!183, !1505, !152, !199, !233}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1499, file: !1422, line: 252, baseType: !199, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1499, file: !1422, line: 259, baseType: !995, size: 8, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1499, file: !1422, line: 260, baseType: !1543, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1499, file: !1422, line: 263, baseType: !1550, size: 64, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1553, !1505, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1554, line: 52, baseType: !7)
!1554 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1422, line: 27, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1499, file: !1422, line: 266, baseType: !1558, size: 64, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!136, !1505, !241}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1494, file: !1422, line: 109, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1422, line: 31, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1494, file: !1422, line: 110, baseType: !233, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1494, file: !1422, line: 111, baseType: !1420, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1421, file: !1422, line: 148, baseType: !79, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1421, file: !1422, line: 154, baseType: !271, size: 64, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1421, file: !1422, line: 156, baseType: !194, size: 16, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1421, file: !1422, line: 157, baseType: !193, size: 16, offset: 912)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1421, file: !1422, line: 158, baseType: !1571, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1422, line: 32, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !88, file: !89, line: 71, baseType: !1574, size: 32, offset: 448)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1575, line: 19, size: 32, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1574, file: !1575, line: 20, baseType: !431, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !88, file: !89, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !88, file: !89, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !88, file: !89, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !88, file: !89, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !88, file: !89, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !85, file: !30, line: 463, baseType: !1584, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !85, file: !30, line: 465, baseType: !1586, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !85, file: !30, line: 467, baseType: !92, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !30, line: 468, baseType: !1590, size: 64, offset: 704)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1600, !1605, !1609}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1592, file: !30, line: 88, baseType: !92, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1592, file: !30, line: 89, baseType: !206, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1592, file: !30, line: 90, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!136, !1584, !147}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1592, file: !30, line: 91, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!152, !1584, !1604, !1406, !1412}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1592, file: !30, line: 93, baseType: !1606, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1584}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1592, file: !30, line: 95, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1613)
!1613 = !{!1614, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1612, file: !37, line: 279, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!136, !1584}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1612, file: !37, line: 280, baseType: !1606, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1612, file: !37, line: 281, baseType: !1615, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1612, file: !37, line: 282, baseType: !1615, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1612, file: !37, line: 283, baseType: !1615, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1612, file: !37, line: 284, baseType: !1615, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1612, file: !37, line: 285, baseType: !1615, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1612, file: !37, line: 286, baseType: !1615, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1612, file: !37, line: 287, baseType: !1615, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1612, file: !37, line: 288, baseType: !1615, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1612, file: !37, line: 289, baseType: !1615, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1612, file: !37, line: 290, baseType: !1615, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1612, file: !37, line: 291, baseType: !1615, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1612, file: !37, line: 292, baseType: !1615, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1612, file: !37, line: 293, baseType: !1615, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1612, file: !37, line: 294, baseType: !1615, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1612, file: !37, line: 295, baseType: !1615, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1612, file: !37, line: 296, baseType: !1615, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1612, file: !37, line: 297, baseType: !1615, size: 64, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1612, file: !37, line: 298, baseType: !1615, size: 64, offset: 1216)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1612, file: !37, line: 299, baseType: !1615, size: 64, offset: 1280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1612, file: !37, line: 300, baseType: !1615, size: 64, offset: 1344)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1612, file: !37, line: 301, baseType: !1615, size: 64, offset: 1408)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !85, file: !30, line: 470, baseType: !1641, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1643, line: 82, size: 1408, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1711, !1714, !1717}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1642, file: !1643, line: 83, baseType: !92, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1642, file: !1643, line: 84, baseType: !92, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1642, file: !1643, line: 85, baseType: !1584, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1642, file: !1643, line: 86, baseType: !206, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1642, file: !1643, line: 87, baseType: !206, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1642, file: !1643, line: 88, baseType: !206, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1642, file: !1643, line: 90, baseType: !1652, size: 64, offset: 384)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!136, !1584, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1657)
!1657 = !{!1658, !1659, !1660, !1664, !1665, !1666, !1667, !1671, !1675, !1676, !1677, !1678, !1679, !1687, !1688, !1689, !1690, !1691, !1692}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1656, file: !24, line: 96, baseType: !92, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1656, file: !24, line: 97, baseType: !1641, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1656, file: !24, line: 99, baseType: !1661, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1663, line: 76, flags: DIFlagFwdDecl)
!1663 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1656, file: !24, line: 100, baseType: !92, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1656, file: !24, line: 102, baseType: !995, size: 8, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1656, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1656, file: !24, line: 105, baseType: !1668, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1656, file: !24, line: 106, baseType: !1672, size: 64, offset: 384)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1656, file: !24, line: 108, baseType: !1615, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1656, file: !24, line: 109, baseType: !1606, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1656, file: !24, line: 110, baseType: !1615, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1656, file: !24, line: 111, baseType: !1606, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1656, file: !24, line: 112, baseType: !1680, size: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!136, !1584, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1684, file: !37, line: 51, baseType: !136, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1656, file: !24, line: 113, baseType: !1615, size: 64, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1656, file: !24, line: 114, baseType: !206, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1656, file: !24, line: 115, baseType: !206, size: 64, offset: 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1656, file: !24, line: 117, baseType: !1610, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1656, file: !24, line: 118, baseType: !1606, size: 64, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1656, file: !24, line: 120, baseType: !1693, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1642, file: !1643, line: 91, baseType: !1597, size: 64, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1642, file: !1643, line: 92, baseType: !1615, size: 64, offset: 512)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1642, file: !1643, line: 93, baseType: !1606, size: 64, offset: 576)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1642, file: !1643, line: 94, baseType: !1615, size: 64, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1642, file: !1643, line: 95, baseType: !1606, size: 64, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1642, file: !1643, line: 97, baseType: !1615, size: 64, offset: 768)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1642, file: !1643, line: 98, baseType: !1615, size: 64, offset: 832)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1642, file: !1643, line: 100, baseType: !1680, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1642, file: !1643, line: 101, baseType: !1615, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1642, file: !1643, line: 103, baseType: !1615, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1642, file: !1643, line: 105, baseType: !1615, size: 64, offset: 1088)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1642, file: !1643, line: 107, baseType: !1610, size: 64, offset: 1152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1642, file: !1643, line: 109, baseType: !1708, size: 64, offset: 1216)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1643, line: 109, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1642, file: !1643, line: 111, baseType: !1712, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1643, line: 111, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1642, file: !1643, line: 112, baseType: !1715, offset: 1344)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1716, line: 187, elements: !124)
!1716 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1642, file: !1643, line: 114, baseType: !995, size: 8, offset: 1344)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !85, file: !30, line: 471, baseType: !1655, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !85, file: !30, line: 473, baseType: !79, size: 64, offset: 896)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !85, file: !30, line: 475, baseType: !79, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !85, file: !30, line: 480, baseType: !370, size: 192, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !85, file: !30, line: 484, baseType: !1723, size: 576, offset: 1216)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1723, file: !30, line: 362, baseType: !96, size: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1723, file: !30, line: 363, baseType: !96, size: 128, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1723, file: !30, line: 364, baseType: !96, size: 128, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1723, file: !30, line: 365, baseType: !96, size: 128, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1723, file: !30, line: 366, baseType: !995, size: 8, offset: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1723, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !85, file: !30, line: 485, baseType: !1732, size: 2304, offset: 1792)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1829, !1833}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1732, file: !37, line: 566, baseType: !1683, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1732, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1732, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1732, file: !37, line: 569, baseType: !995, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1732, file: !37, line: 570, baseType: !995, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1732, file: !37, line: 571, baseType: !995, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1732, file: !37, line: 572, baseType: !995, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1732, file: !37, line: 573, baseType: !995, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1732, file: !37, line: 574, baseType: !995, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1732, file: !37, line: 575, baseType: !995, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1732, file: !37, line: 576, baseType: !995, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1732, file: !37, line: 577, baseType: !425, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !37, line: 578, baseType: !110, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1732, file: !37, line: 580, baseType: !96, size: 128, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1732, file: !37, line: 581, baseType: !731, size: 192, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1732, file: !37, line: 582, baseType: !1750, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1752, line: 43, size: 1472, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1761, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1751, file: !1752, line: 44, baseType: !92, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1751, file: !1752, line: 45, baseType: !136, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1751, file: !1752, line: 46, baseType: !96, size: 128, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !1752, line: 47, baseType: !110, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1751, file: !1752, line: 48, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1751, file: !1752, line: 49, baseType: !1762, size: 320, offset: 320)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1763, line: 11, size: 320, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766, !1767, !1772}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1762, file: !1763, line: 16, baseType: !695, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1762, file: !1763, line: 17, baseType: !202, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1762, file: !1763, line: 18, baseType: !1768, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !1763, line: 19, baseType: !425, size: 32, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1751, file: !1752, line: 50, baseType: !202, size: 64, offset: 640)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1751, file: !1752, line: 51, baseType: !501, size: 64, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1751, file: !1752, line: 52, baseType: !501, size: 64, offset: 768)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1751, file: !1752, line: 53, baseType: !501, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1751, file: !1752, line: 54, baseType: !501, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1751, file: !1752, line: 55, baseType: !501, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1751, file: !1752, line: 56, baseType: !202, size: 64, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1751, file: !1752, line: 57, baseType: !202, size: 64, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1751, file: !1752, line: 58, baseType: !202, size: 64, offset: 1152)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1751, file: !1752, line: 59, baseType: !202, size: 64, offset: 1216)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1751, file: !1752, line: 60, baseType: !202, size: 64, offset: 1280)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1751, file: !1752, line: 61, baseType: !1584, size: 64, offset: 1344)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1751, file: !1752, line: 62, baseType: !995, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1751, file: !1752, line: 63, baseType: !995, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1732, file: !37, line: 583, baseType: !995, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1732, file: !37, line: 584, baseType: !995, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1732, file: !37, line: 585, baseType: !995, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1732, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1732, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1732, file: !37, line: 592, baseType: !493, size: 512, offset: 576)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1732, file: !37, line: 593, baseType: !271, size: 64, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1732, file: !37, line: 594, baseType: !1320, size: 256, offset: 1152)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1732, file: !37, line: 595, baseType: !702, size: 128, offset: 1408)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1732, file: !37, line: 596, baseType: !1759, size: 64, offset: 1536)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1732, file: !37, line: 597, baseType: !293, size: 32, offset: 1600)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1732, file: !37, line: 598, baseType: !293, size: 32, offset: 1632)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1732, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1732, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1732, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1732, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1732, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1732, file: !37, line: 604, baseType: !995, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1732, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1732, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1732, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1732, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1732, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1732, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1732, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1732, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1732, file: !37, line: 613, baseType: !136, size: 32, offset: 1792)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1732, file: !37, line: 614, baseType: !136, size: 32, offset: 1824)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1732, file: !37, line: 615, baseType: !271, size: 64, offset: 1856)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1732, file: !37, line: 616, baseType: !271, size: 64, offset: 1920)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1732, file: !37, line: 617, baseType: !271, size: 64, offset: 1984)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1732, file: !37, line: 618, baseType: !271, size: 64, offset: 2048)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1732, file: !37, line: 620, baseType: !1820, size: 64, offset: 2112)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1821, file: !37, line: 537, baseType: !110)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1821, file: !37, line: 538, baseType: !7, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1821, file: !37, line: 540, baseType: !96, size: 128, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1821, file: !37, line: 543, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1732, file: !37, line: 621, baseType: !1830, size: 64, offset: 2176)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1584, !655}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1732, file: !37, line: 622, baseType: !1834, size: 64, offset: 2240)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !85, file: !30, line: 486, baseType: !1837, size: 64, offset: 4096)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1846, !1847, !1848}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1838, file: !37, line: 643, baseType: !1612, size: 1472)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1838, file: !37, line: 644, baseType: !1615, size: 64, offset: 1472)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1838, file: !37, line: 645, baseType: !1843, size: 64, offset: 1536)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1584, !995}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1838, file: !37, line: 646, baseType: !1615, size: 64, offset: 1600)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1838, file: !37, line: 647, baseType: !1606, size: 64, offset: 1664)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1838, file: !37, line: 648, baseType: !1606, size: 64, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !85, file: !30, line: 493, baseType: !1850, size: 64, offset: 4160)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !85, file: !30, line: 499, baseType: !96, size: 128, offset: 4224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !85, file: !30, line: 502, baseType: !1854, size: 64, offset: 4352)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !85, file: !30, line: 504, baseType: !1858, size: 64, offset: 4416)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !85, file: !30, line: 505, baseType: !271, size: 64, offset: 4480)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !85, file: !30, line: 510, baseType: !271, size: 64, offset: 4544)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !85, file: !30, line: 511, baseType: !1862, size: 64, offset: 4608)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1864)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !85, file: !30, line: 513, baseType: !1866, size: 64, offset: 4672)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1867, file: !30, line: 293, baseType: !7, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1867, file: !30, line: 294, baseType: !202, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !85, file: !30, line: 515, baseType: !96, size: 128, offset: 4736)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !85, file: !30, line: 526, baseType: !1873, offset: 4864)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1874, line: 5, elements: !124)
!1874 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !85, file: !30, line: 528, baseType: !1876, size: 64, offset: 4864)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1878, line: 14, flags: DIFlagFwdDecl)
!1878 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !85, file: !30, line: 529, baseType: !1880, size: 64, offset: 4928)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1643, line: 22, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !85, file: !30, line: 534, baseType: !1883, size: 32, offset: 4992)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !97, line: 16, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !97, line: 13, baseType: !425)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !85, file: !30, line: 535, baseType: !425, size: 32, offset: 5024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !85, file: !30, line: 537, baseType: !110, offset: 5056)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !85, file: !30, line: 538, baseType: !96, size: 128, offset: 5056)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !85, file: !30, line: 540, baseType: !1889, size: 64, offset: 5184)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1891, line: 54, size: 960, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1903, !1907, !1908, !1909, !1910, !1914, !1918, !1919}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1890, file: !1891, line: 55, baseType: !92, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1890, file: !1891, line: 56, baseType: !1661, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1890, file: !1891, line: 58, baseType: !206, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1890, file: !1891, line: 59, baseType: !206, size: 64, offset: 192)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1890, file: !1891, line: 60, baseType: !103, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1890, file: !1891, line: 62, baseType: !1597, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1890, file: !1891, line: 63, baseType: !1900, size: 64, offset: 384)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!152, !1584, !1604}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1890, file: !1891, line: 65, baseType: !1904, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1889}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1890, file: !1891, line: 66, baseType: !1606, size: 64, offset: 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1890, file: !1891, line: 68, baseType: !1615, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1890, file: !1891, line: 70, baseType: !1369, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1890, file: !1891, line: 71, baseType: !1911, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1386, !1584}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1890, file: !1891, line: 73, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{null, !1584, !1406, !1412}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1890, file: !1891, line: 75, baseType: !1610, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1890, file: !1891, line: 77, baseType: !1712, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !85, file: !30, line: 541, baseType: !206, size: 64, offset: 5248)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !85, file: !30, line: 543, baseType: !1606, size: 64, offset: 5312)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !85, file: !30, line: 544, baseType: !1923, size: 64, offset: 5376)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !85, file: !30, line: 545, baseType: !1926, size: 64, offset: 5440)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !85, file: !30, line: 547, baseType: !995, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !85, file: !30, line: 548, baseType: !995, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !85, file: !30, line: 549, baseType: !995, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !85, file: !30, line: 550, baseType: !995, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !81, file: !82, line: 23, baseType: !370, size: 192, offset: 5568)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_list", scope: !81, file: !82, line: 24, baseType: !96, size: 128, offset: 5760)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "mgr", scope: !81, file: !82, line: 25, baseType: !1935, size: 64, offset: 5888)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_manager", file: !51, line: 167, size: 6080, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1948, !1999}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1936, file: !51, line: 168, baseType: !92, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1936, file: !51, line: 169, baseType: !85, size: 5568, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ref_mutex", scope: !1936, file: !51, line: 170, baseType: !370, size: 192, offset: 5632)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1936, file: !51, line: 171, baseType: !50, size: 32, offset: 5824)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "compat_id", scope: !1936, file: !51, line: 172, baseType: !1943, size: 64, offset: 5888)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_compat_id", file: !51, line: 152, size: 128, elements: !1945)
!1945 = !{!1946, !1947}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "id_h", scope: !1944, file: !51, line: 153, baseType: !271, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "id_l", scope: !1944, file: !51, line: 154, baseType: !271, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mops", scope: !1936, file: !51, line: 173, baseType: !1949, size: 64, offset: 5952)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_manager_ops", file: !51, line: 124, size: 576, elements: !1952)
!1952 = !{!1953, !1954, !1958, !1962, !1982, !1986, !1990, !1994, !1998}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "initial_header_size", scope: !1951, file: !51, line: 125, baseType: !199, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1951, file: !51, line: 126, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!50, !1935}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1951, file: !51, line: 127, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!271, !1935}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "write_init", scope: !1951, file: !51, line: 128, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!136, !1935, !1966, !92, !199}
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpga_image_info", file: !51, line: 92, size: 576, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1977, !1978, !1979, !1980, !1981}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1967, file: !51, line: 93, baseType: !425, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "enable_timeout_us", scope: !1967, file: !51, line: 94, baseType: !425, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timeout_us", scope: !1967, file: !51, line: 95, baseType: !425, size: 32, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "config_complete_timeout_us", scope: !1967, file: !51, line: 96, baseType: !425, size: 32, offset: 96)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_name", scope: !1967, file: !51, line: 97, baseType: !152, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sgt", scope: !1967, file: !51, line: 98, baseType: !1975, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !51, line: 15, flags: DIFlagFwdDecl)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1967, file: !51, line: 99, baseType: !92, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1967, file: !51, line: 100, baseType: !199, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "region_id", scope: !1967, file: !51, line: 101, baseType: !136, size: 32, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1967, file: !51, line: 102, baseType: !1584, size: 64, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "overlay", scope: !1967, file: !51, line: 104, baseType: !1876, size: 64, offset: 512)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1951, file: !51, line: 131, baseType: !1983, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!136, !1935, !92, !199}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "write_sg", scope: !1951, file: !51, line: 132, baseType: !1987, size: 64, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!136, !1935, !1975}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "write_complete", scope: !1951, file: !51, line: 133, baseType: !1991, size: 64, offset: 384)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!136, !1935, !1966}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fpga_remove", scope: !1951, file: !51, line: 135, baseType: !1995, size: 64, offset: 448)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1935}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1951, file: !51, line: 136, baseType: !206, size: 64, offset: 512)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1936, file: !51, line: 174, baseType: !79, size: 64, offset: 6016)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !81, file: !82, line: 26, baseType: !1966, size: 64, offset: 5952)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "compat_id", scope: !81, file: !82, line: 27, baseType: !1943, size: 64, offset: 6016)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !81, file: !82, line: 28, baseType: !79, size: 64, offset: 6080)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "get_bridges", scope: !81, file: !82, line: 29, baseType: !2004, size: 64, offset: 6144)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!136, !80}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2010 = !{!2011, !2016, !2018, !2025, !2030, !2035, !2040, !0, !2045, !2050, !2055, !2058, !2060, !2063}
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(name: "__key", scope: !2013, file: !3, line: 212, type: !1715, isLocal: true, isDefinition: true)
!2013 = distinct !DISubprogram(name: "fpga_region_create", scope: !3, file: !3, line: 195, type: !2014, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!80, !1584, !1935, !2004}
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fpga_region_init163", scope: !2, file: !3, line: 343, type: !79, isLocal: true, isDefinition: true)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(name: "__exitcall_fpga_region_exit", scope: !2, file: !3, line: 344, type: !2020, isLocal: true, isDefinition: true)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2021, line: 117, baseType: !2022)
!2021 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null}
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description164", scope: !2, file: !3, line: 346, type: !2027, isLocal: true, isDefinition: true, align: 8)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 288, elements: !2028)
!2028 = !{!2029}
!2029 = !DISubrange(count: 36)
!2030 = !DIGlobalVariableExpression(var: !2031, expr: !DIExpression())
!2031 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author165", scope: !2, file: !3, line: 347, type: !2032, isLocal: true, isDefinition: true, align: 8)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 384, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 48)
!2035 = !DIGlobalVariableExpression(var: !2036, expr: !DIExpression())
!2036 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file166", scope: !2, file: !3, line: 348, type: !2037, isLocal: true, isDefinition: true, align: 8)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 336, elements: !2038)
!2038 = !{!2039}
!2039 = !DISubrange(count: 42)
!2040 = !DIGlobalVariableExpression(var: !2041, expr: !DIExpression())
!2041 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license167", scope: !2, file: !3, line: 348, type: !2042, isLocal: true, isDefinition: true, align: 8)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 216, elements: !2043)
!2043 = !{!2044}
!2044 = !DISubrange(count: 27)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "fpga_region_ida", scope: !2, file: !3, line: 18, type: !2047, isLocal: true, isDefinition: true)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1447, line: 244, size: 128, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2047, file: !1447, line: 245, baseType: !1450, size: 128)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(name: "__key", scope: !2052, file: !3, line: 327, type: !1715, isLocal: true, isDefinition: true)
!2052 = distinct !DISubprogram(name: "fpga_region_init", scope: !3, file: !3, line: 325, type: !2053, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!136}
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "fpga_region_groups", scope: !2, file: !3, line: 180, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !967)
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(name: "fpga_region_group", scope: !2, file: !3, line: 180, type: !208, isLocal: true, isDefinition: true)
!2060 = !DIGlobalVariableExpression(var: !2061, expr: !DIExpression())
!2061 = distinct !DIGlobalVariable(name: "fpga_region_attrs", scope: !2, file: !3, line: 176, type: !2062, isLocal: true, isDefinition: true)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !967)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(name: "dev_attr_compat_id", scope: !2, file: !3, line: 174, type: !2065, isLocal: true, isDefinition: true)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2066)
!2066 = !{!2067, !2068, !2073}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2065, file: !30, line: 100, baseType: !189, size: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2065, file: !30, line: 101, baseType: !2069, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!183, !1584, !2072, !152}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2065, file: !30, line: 103, baseType: !2074, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!183, !1584, !2072, !92, !199}
!2077 = !{i32 7, !"Dwarf Version", i32 4}
!2078 = !{i32 2, !"Debug Info Version", i32 3}
!2079 = !{i32 1, !"wchar_size", i32 2}
!2080 = !{i32 1, !"Code Model", i32 2}
!2081 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2082 = distinct !DISubprogram(name: "fpga_region_class_find", scope: !3, file: !3, line: 21, type: !2083, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!80, !1584, !1386, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!136, !1584, !1386}
!2088 = !DILocalVariable(name: "start", arg: 1, scope: !2082, file: !3, line: 22, type: !1584)
!2089 = !DILocation(line: 22, column: 17, scope: !2082)
!2090 = !DILocalVariable(name: "data", arg: 2, scope: !2082, file: !3, line: 22, type: !1386)
!2091 = !DILocation(line: 22, column: 36, scope: !2082)
!2092 = !DILocalVariable(name: "match", arg: 3, scope: !2082, file: !3, line: 23, type: !2085)
!2093 = !DILocation(line: 23, column: 8, scope: !2082)
!2094 = !DILocalVariable(name: "dev", scope: !2082, file: !3, line: 25, type: !1584)
!2095 = !DILocation(line: 25, column: 17, scope: !2082)
!2096 = !DILocation(line: 27, column: 26, scope: !2082)
!2097 = !DILocation(line: 27, column: 45, scope: !2082)
!2098 = !DILocation(line: 27, column: 52, scope: !2082)
!2099 = !DILocation(line: 27, column: 58, scope: !2082)
!2100 = !DILocation(line: 27, column: 8, scope: !2082)
!2101 = !DILocation(line: 27, column: 6, scope: !2082)
!2102 = !DILocation(line: 28, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 28, column: 6)
!2104 = !DILocation(line: 28, column: 6, scope: !2082)
!2105 = !DILocation(line: 29, column: 3, scope: !2103)
!2106 = !DILocalVariable(name: "__mptr", scope: !2107, file: !3, line: 31, type: !79)
!2107 = distinct !DILexicalBlock(scope: !2082, file: !3, line: 31, column: 9)
!2108 = !DILocation(line: 31, column: 9, scope: !2107)
!2109 = !DILocation(line: 31, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 31, column: 9)
!2111 = !DILocation(line: 31, column: 2, scope: !2082)
!2112 = !DILocation(line: 32, column: 1, scope: !2082)
!2113 = distinct !DISubprogram(name: "fpga_region_program_fpga", scope: !3, file: !3, line: 96, type: !2005, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2114 = !DILocalVariable(name: "region", arg: 1, scope: !2113, file: !3, line: 96, type: !80)
!2115 = !DILocation(line: 96, column: 50, scope: !2113)
!2116 = !DILocalVariable(name: "dev", scope: !2113, file: !3, line: 98, type: !1584)
!2117 = !DILocation(line: 98, column: 17, scope: !2113)
!2118 = !DILocation(line: 98, column: 24, scope: !2113)
!2119 = !DILocation(line: 98, column: 32, scope: !2113)
!2120 = !DILocalVariable(name: "info", scope: !2113, file: !3, line: 99, type: !1966)
!2121 = !DILocation(line: 99, column: 26, scope: !2113)
!2122 = !DILocation(line: 99, column: 33, scope: !2113)
!2123 = !DILocation(line: 99, column: 41, scope: !2113)
!2124 = !DILocalVariable(name: "ret", scope: !2113, file: !3, line: 100, type: !136)
!2125 = !DILocation(line: 100, column: 6, scope: !2113)
!2126 = !DILocation(line: 102, column: 27, scope: !2113)
!2127 = !DILocation(line: 102, column: 11, scope: !2113)
!2128 = !DILocation(line: 102, column: 9, scope: !2113)
!2129 = !DILocation(line: 103, column: 13, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 103, column: 6)
!2131 = !DILocation(line: 103, column: 6, scope: !2130)
!2132 = !DILocation(line: 103, column: 6, scope: !2113)
!2133 = !DILocation(line: 104, column: 3, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 103, column: 22)
!2135 = !DILocation(line: 105, column: 18, scope: !2134)
!2136 = !DILocation(line: 105, column: 10, scope: !2134)
!2137 = !DILocation(line: 105, column: 3, scope: !2134)
!2138 = !DILocation(line: 108, column: 22, scope: !2113)
!2139 = !DILocation(line: 108, column: 30, scope: !2113)
!2140 = !DILocation(line: 108, column: 8, scope: !2113)
!2141 = !DILocation(line: 108, column: 6, scope: !2113)
!2142 = !DILocation(line: 109, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 109, column: 6)
!2144 = !DILocation(line: 109, column: 6, scope: !2113)
!2145 = !DILocation(line: 110, column: 3, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 109, column: 11)
!2147 = !DILocation(line: 111, column: 3, scope: !2146)
!2148 = !DILocation(line: 118, column: 6, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 118, column: 6)
!2150 = !DILocation(line: 118, column: 14, scope: !2149)
!2151 = !DILocation(line: 118, column: 6, scope: !2113)
!2152 = !DILocation(line: 119, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 118, column: 27)
!2154 = !DILocation(line: 119, column: 17, scope: !2153)
!2155 = !DILocation(line: 119, column: 29, scope: !2153)
!2156 = !DILocation(line: 119, column: 7, scope: !2153)
!2157 = !DILocation(line: 120, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 120, column: 7)
!2159 = !DILocation(line: 120, column: 7, scope: !2153)
!2160 = !DILocation(line: 121, column: 4, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 120, column: 12)
!2162 = !DILocation(line: 122, column: 4, scope: !2161)
!2163 = !DILocation(line: 124, column: 2, scope: !2153)
!2164 = !DILocation(line: 126, column: 30, scope: !2113)
!2165 = !DILocation(line: 126, column: 38, scope: !2113)
!2166 = !DILocation(line: 126, column: 8, scope: !2113)
!2167 = !DILocation(line: 126, column: 6, scope: !2113)
!2168 = !DILocation(line: 127, column: 6, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 127, column: 6)
!2170 = !DILocation(line: 127, column: 6, scope: !2113)
!2171 = !DILocation(line: 128, column: 3, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 127, column: 11)
!2173 = !DILocation(line: 129, column: 3, scope: !2172)
!2174 = !DILocation(line: 132, column: 22, scope: !2113)
!2175 = !DILocation(line: 132, column: 30, scope: !2113)
!2176 = !DILocation(line: 132, column: 35, scope: !2113)
!2177 = !DILocation(line: 132, column: 8, scope: !2113)
!2178 = !DILocation(line: 132, column: 6, scope: !2113)
!2179 = !DILocation(line: 133, column: 6, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 133, column: 6)
!2181 = !DILocation(line: 133, column: 6, scope: !2113)
!2182 = !DILocation(line: 134, column: 3, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 133, column: 11)
!2184 = !DILocation(line: 135, column: 3, scope: !2183)
!2185 = !DILocation(line: 138, column: 29, scope: !2113)
!2186 = !DILocation(line: 138, column: 37, scope: !2113)
!2187 = !DILocation(line: 138, column: 8, scope: !2113)
!2188 = !DILocation(line: 138, column: 6, scope: !2113)
!2189 = !DILocation(line: 139, column: 6, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 139, column: 6)
!2191 = !DILocation(line: 139, column: 6, scope: !2113)
!2192 = !DILocation(line: 140, column: 3, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 139, column: 11)
!2194 = !DILocation(line: 141, column: 3, scope: !2193)
!2195 = !DILocation(line: 144, column: 18, scope: !2113)
!2196 = !DILocation(line: 144, column: 26, scope: !2113)
!2197 = !DILocation(line: 144, column: 2, scope: !2113)
!2198 = !DILocation(line: 145, column: 18, scope: !2113)
!2199 = !DILocation(line: 145, column: 2, scope: !2113)
!2200 = !DILocation(line: 147, column: 2, scope: !2113)
!2201 = !DILabel(scope: !2113, name: "err_put_br", file: !3, line: 149)
!2202 = !DILocation(line: 149, column: 1, scope: !2113)
!2203 = !DILocation(line: 150, column: 6, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 150, column: 6)
!2205 = !DILocation(line: 150, column: 14, scope: !2204)
!2206 = !DILocation(line: 150, column: 6, scope: !2113)
!2207 = !DILocation(line: 151, column: 21, scope: !2204)
!2208 = !DILocation(line: 151, column: 29, scope: !2204)
!2209 = !DILocation(line: 151, column: 3, scope: !2204)
!2210 = !DILabel(scope: !2113, name: "err_unlock_mgr", file: !3, line: 152)
!2211 = !DILocation(line: 152, column: 1, scope: !2113)
!2212 = !DILocation(line: 153, column: 18, scope: !2113)
!2213 = !DILocation(line: 153, column: 26, scope: !2113)
!2214 = !DILocation(line: 153, column: 2, scope: !2113)
!2215 = !DILabel(scope: !2113, name: "err_put_region", file: !3, line: 154)
!2216 = !DILocation(line: 154, column: 1, scope: !2113)
!2217 = !DILocation(line: 155, column: 18, scope: !2113)
!2218 = !DILocation(line: 155, column: 2, scope: !2113)
!2219 = !DILocation(line: 157, column: 9, scope: !2113)
!2220 = !DILocation(line: 157, column: 2, scope: !2113)
!2221 = !DILocation(line: 158, column: 1, scope: !2113)
!2222 = distinct !DISubprogram(name: "fpga_region_get", scope: !3, file: !3, line: 45, type: !2223, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!80, !80}
!2225 = !DILocalVariable(name: "region", arg: 1, scope: !2222, file: !3, line: 45, type: !80)
!2226 = !DILocation(line: 45, column: 64, scope: !2222)
!2227 = !DILocalVariable(name: "dev", scope: !2222, file: !3, line: 47, type: !1584)
!2228 = !DILocation(line: 47, column: 17, scope: !2222)
!2229 = !DILocation(line: 47, column: 24, scope: !2222)
!2230 = !DILocation(line: 47, column: 32, scope: !2222)
!2231 = !DILocation(line: 49, column: 22, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 49, column: 6)
!2233 = !DILocation(line: 49, column: 30, scope: !2232)
!2234 = !DILocation(line: 49, column: 7, scope: !2232)
!2235 = !DILocation(line: 49, column: 6, scope: !2222)
!2236 = !DILocation(line: 51, column: 10, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 49, column: 38)
!2238 = !DILocation(line: 51, column: 3, scope: !2237)
!2239 = !DILocation(line: 54, column: 13, scope: !2222)
!2240 = !DILocation(line: 54, column: 2, scope: !2222)
!2241 = !DILocation(line: 55, column: 22, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 55, column: 6)
!2243 = !DILocation(line: 55, column: 27, scope: !2242)
!2244 = !DILocation(line: 55, column: 35, scope: !2242)
!2245 = !DILocation(line: 55, column: 43, scope: !2242)
!2246 = !DILocation(line: 55, column: 7, scope: !2242)
!2247 = !DILocation(line: 55, column: 6, scope: !2222)
!2248 = !DILocation(line: 56, column: 14, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 55, column: 51)
!2250 = !DILocation(line: 56, column: 3, scope: !2249)
!2251 = !DILocation(line: 57, column: 17, scope: !2249)
!2252 = !DILocation(line: 57, column: 25, scope: !2249)
!2253 = !DILocation(line: 57, column: 3, scope: !2249)
!2254 = !DILocation(line: 58, column: 10, scope: !2249)
!2255 = !DILocation(line: 58, column: 3, scope: !2249)
!2256 = !DILocation(line: 63, column: 9, scope: !2222)
!2257 = !DILocation(line: 63, column: 2, scope: !2222)
!2258 = !DILocation(line: 64, column: 1, scope: !2222)
!2259 = distinct !DISubprogram(name: "IS_ERR", scope: !2260, file: !2260, line: 34, type: !2261, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2260 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!995, !1386}
!2263 = !DILocalVariable(name: "ptr", arg: 1, scope: !2259, file: !2260, line: 34, type: !1386)
!2264 = !DILocation(line: 34, column: 60, scope: !2259)
!2265 = !DILocation(line: 36, column: 9, scope: !2259)
!2266 = !DILocation(line: 36, column: 2, scope: !2259)
!2267 = distinct !DISubprogram(name: "PTR_ERR", scope: !2260, file: !2260, line: 29, type: !2268, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!187, !1386}
!2270 = !DILocalVariable(name: "ptr", arg: 1, scope: !2267, file: !2260, line: 29, type: !1386)
!2271 = !DILocation(line: 29, column: 61, scope: !2267)
!2272 = !DILocation(line: 31, column: 16, scope: !2267)
!2273 = !DILocation(line: 31, column: 9, scope: !2267)
!2274 = !DILocation(line: 31, column: 2, scope: !2267)
!2275 = distinct !DISubprogram(name: "fpga_region_put", scope: !3, file: !3, line: 71, type: !2276, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !80}
!2278 = !DILocalVariable(name: "region", arg: 1, scope: !2275, file: !3, line: 71, type: !80)
!2279 = !DILocation(line: 71, column: 49, scope: !2275)
!2280 = !DILocalVariable(name: "dev", scope: !2275, file: !3, line: 73, type: !1584)
!2281 = !DILocation(line: 73, column: 17, scope: !2275)
!2282 = !DILocation(line: 73, column: 24, scope: !2275)
!2283 = !DILocation(line: 73, column: 32, scope: !2275)
!2284 = !DILocation(line: 77, column: 13, scope: !2275)
!2285 = !DILocation(line: 77, column: 18, scope: !2275)
!2286 = !DILocation(line: 77, column: 26, scope: !2275)
!2287 = !DILocation(line: 77, column: 34, scope: !2275)
!2288 = !DILocation(line: 77, column: 2, scope: !2275)
!2289 = !DILocation(line: 78, column: 13, scope: !2275)
!2290 = !DILocation(line: 78, column: 2, scope: !2275)
!2291 = !DILocation(line: 79, column: 16, scope: !2275)
!2292 = !DILocation(line: 79, column: 24, scope: !2275)
!2293 = !DILocation(line: 79, column: 2, scope: !2275)
!2294 = !DILocation(line: 80, column: 1, scope: !2275)
!2295 = !DILocalVariable(name: "dev", arg: 1, scope: !2013, file: !3, line: 195, type: !1584)
!2296 = !DILocation(line: 195, column: 36, scope: !2013)
!2297 = !DILocalVariable(name: "mgr", arg: 2, scope: !2013, file: !3, line: 196, type: !1935)
!2298 = !DILocation(line: 196, column: 28, scope: !2013)
!2299 = !DILocalVariable(name: "get_bridges", arg: 3, scope: !2013, file: !3, line: 197, type: !2004)
!2300 = !DILocation(line: 197, column: 13, scope: !2013)
!2301 = !DILocalVariable(name: "region", scope: !2013, file: !3, line: 199, type: !80)
!2302 = !DILocation(line: 199, column: 22, scope: !2013)
!2303 = !DILocalVariable(name: "id", scope: !2013, file: !3, line: 200, type: !136)
!2304 = !DILocation(line: 200, column: 6, scope: !2013)
!2305 = !DILocalVariable(name: "ret", scope: !2013, file: !3, line: 200, type: !136)
!2306 = !DILocation(line: 200, column: 10, scope: !2013)
!2307 = !DILocation(line: 202, column: 11, scope: !2013)
!2308 = !DILocation(line: 202, column: 9, scope: !2013)
!2309 = !DILocation(line: 203, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 203, column: 6)
!2311 = !DILocation(line: 203, column: 6, scope: !2013)
!2312 = !DILocation(line: 204, column: 3, scope: !2310)
!2313 = !DILocation(line: 206, column: 7, scope: !2013)
!2314 = !DILocation(line: 206, column: 5, scope: !2013)
!2315 = !DILocation(line: 207, column: 6, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 207, column: 6)
!2317 = !DILocation(line: 207, column: 9, scope: !2316)
!2318 = !DILocation(line: 207, column: 6, scope: !2013)
!2319 = !DILocation(line: 208, column: 3, scope: !2316)
!2320 = !DILocation(line: 210, column: 16, scope: !2013)
!2321 = !DILocation(line: 210, column: 2, scope: !2013)
!2322 = !DILocation(line: 210, column: 10, scope: !2013)
!2323 = !DILocation(line: 210, column: 14, scope: !2013)
!2324 = !DILocation(line: 211, column: 24, scope: !2013)
!2325 = !DILocation(line: 211, column: 2, scope: !2013)
!2326 = !DILocation(line: 211, column: 10, scope: !2013)
!2327 = !DILocation(line: 211, column: 22, scope: !2013)
!2328 = !DILocation(line: 212, column: 2, scope: !2013)
!2329 = !DILocation(line: 212, column: 2, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 212, column: 2)
!2331 = !DILocation(line: 213, column: 18, scope: !2013)
!2332 = !DILocation(line: 213, column: 26, scope: !2013)
!2333 = !DILocation(line: 213, column: 2, scope: !2013)
!2334 = !DILocation(line: 215, column: 21, scope: !2013)
!2335 = !DILocation(line: 215, column: 29, scope: !2013)
!2336 = !DILocation(line: 215, column: 2, scope: !2013)
!2337 = !DILocation(line: 216, column: 22, scope: !2013)
!2338 = !DILocation(line: 216, column: 2, scope: !2013)
!2339 = !DILocation(line: 216, column: 10, scope: !2013)
!2340 = !DILocation(line: 216, column: 14, scope: !2013)
!2341 = !DILocation(line: 216, column: 20, scope: !2013)
!2342 = !DILocation(line: 217, column: 23, scope: !2013)
!2343 = !DILocation(line: 217, column: 2, scope: !2013)
!2344 = !DILocation(line: 217, column: 10, scope: !2013)
!2345 = !DILocation(line: 217, column: 14, scope: !2013)
!2346 = !DILocation(line: 217, column: 21, scope: !2013)
!2347 = !DILocation(line: 218, column: 24, scope: !2013)
!2348 = !DILocation(line: 218, column: 29, scope: !2013)
!2349 = !DILocation(line: 218, column: 2, scope: !2013)
!2350 = !DILocation(line: 218, column: 10, scope: !2013)
!2351 = !DILocation(line: 218, column: 14, scope: !2013)
!2352 = !DILocation(line: 218, column: 22, scope: !2013)
!2353 = !DILocation(line: 219, column: 19, scope: !2013)
!2354 = !DILocation(line: 219, column: 2, scope: !2013)
!2355 = !DILocation(line: 219, column: 10, scope: !2013)
!2356 = !DILocation(line: 219, column: 14, scope: !2013)
!2357 = !DILocation(line: 219, column: 17, scope: !2013)
!2358 = !DILocation(line: 221, column: 22, scope: !2013)
!2359 = !DILocation(line: 221, column: 30, scope: !2013)
!2360 = !DILocation(line: 221, column: 47, scope: !2013)
!2361 = !DILocation(line: 221, column: 8, scope: !2013)
!2362 = !DILocation(line: 221, column: 6, scope: !2013)
!2363 = !DILocation(line: 222, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 222, column: 6)
!2365 = !DILocation(line: 222, column: 6, scope: !2013)
!2366 = !DILocation(line: 223, column: 3, scope: !2364)
!2367 = !DILocation(line: 225, column: 9, scope: !2013)
!2368 = !DILocation(line: 225, column: 2, scope: !2013)
!2369 = !DILabel(scope: !2013, name: "err_remove", file: !3, line: 227)
!2370 = !DILocation(line: 227, column: 1, scope: !2013)
!2371 = !DILocation(line: 228, column: 2, scope: !2013)
!2372 = !DILabel(scope: !2013, name: "err_free", file: !3, line: 229)
!2373 = !DILocation(line: 229, column: 1, scope: !2013)
!2374 = !DILocation(line: 230, column: 8, scope: !2013)
!2375 = !DILocation(line: 230, column: 2, scope: !2013)
!2376 = !DILocation(line: 232, column: 2, scope: !2013)
!2377 = !DILocation(line: 233, column: 1, scope: !2013)
!2378 = distinct !DISubprogram(name: "kzalloc", scope: !72, file: !72, line: 662, type: !2379, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!79, !199, !1455}
!2381 = !DILocalVariable(name: "s", arg: 1, scope: !2382, file: !72, line: 445, type: !1045)
!2382 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !72, file: !72, line: 445, type: !2383, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!79, !1045, !1455, !199}
!2385 = !DILocation(line: 445, column: 72, scope: !2382, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 552, column: 10, scope: !2387, inlinedAt: !2390)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !72, line: 540, column: 34)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !72, line: 540, column: 6)
!2389 = distinct !DISubprogram(name: "kmalloc", scope: !72, file: !72, line: 538, type: !2379, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2390 = distinct !DILocation(line: 664, column: 9, scope: !2378)
!2391 = !DILocalVariable(name: "flags", arg: 2, scope: !2382, file: !72, line: 446, type: !1455)
!2392 = !DILocation(line: 446, column: 9, scope: !2382, inlinedAt: !2386)
!2393 = !DILocalVariable(name: "size", arg: 3, scope: !2382, file: !72, line: 446, type: !199)
!2394 = !DILocation(line: 446, column: 23, scope: !2382, inlinedAt: !2386)
!2395 = !DILocalVariable(name: "ret", scope: !2382, file: !72, line: 448, type: !79)
!2396 = !DILocation(line: 448, column: 8, scope: !2382, inlinedAt: !2386)
!2397 = !DILocalVariable(name: "flags", arg: 1, scope: !2398, file: !72, line: 318, type: !1455)
!2398 = distinct !DISubprogram(name: "kmalloc_type", scope: !72, file: !72, line: 318, type: !2399, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!71, !1455}
!2401 = !DILocation(line: 318, column: 67, scope: !2398, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 553, column: 20, scope: !2387, inlinedAt: !2390)
!2403 = !DILocalVariable(name: "size", arg: 1, scope: !2404, file: !72, line: 346, type: !199)
!2404 = distinct !DISubprogram(name: "kmalloc_index", scope: !72, file: !72, line: 346, type: !2405, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!7, !199}
!2407 = !DILocation(line: 346, column: 58, scope: !2404, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 547, column: 11, scope: !2387, inlinedAt: !2390)
!2409 = !DILocalVariable(name: "size", arg: 1, scope: !2410, file: !72, line: 472, type: !199)
!2410 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !72, file: !72, line: 472, type: !2411, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!79, !199, !1455, !7}
!2413 = !DILocation(line: 472, column: 28, scope: !2410, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 481, column: 9, scope: !2415, inlinedAt: !2416)
!2415 = distinct !DISubprogram(name: "kmalloc_large", scope: !72, file: !72, line: 478, type: !2379, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2416 = distinct !DILocation(line: 545, column: 11, scope: !2417, inlinedAt: !2390)
!2417 = distinct !DILexicalBlock(scope: !2387, file: !72, line: 544, column: 7)
!2418 = !DILocalVariable(name: "flags", arg: 2, scope: !2410, file: !72, line: 472, type: !1455)
!2419 = !DILocation(line: 472, column: 40, scope: !2410, inlinedAt: !2414)
!2420 = !DILocalVariable(name: "order", arg: 3, scope: !2410, file: !72, line: 472, type: !7)
!2421 = !DILocation(line: 472, column: 60, scope: !2410, inlinedAt: !2414)
!2422 = !DILocalVariable(name: "size", arg: 1, scope: !2415, file: !72, line: 478, type: !199)
!2423 = !DILocation(line: 478, column: 51, scope: !2415, inlinedAt: !2416)
!2424 = !DILocalVariable(name: "flags", arg: 2, scope: !2415, file: !72, line: 478, type: !1455)
!2425 = !DILocation(line: 478, column: 63, scope: !2415, inlinedAt: !2416)
!2426 = !DILocalVariable(name: "order", scope: !2415, file: !72, line: 480, type: !7)
!2427 = !DILocation(line: 480, column: 15, scope: !2415, inlinedAt: !2416)
!2428 = !DILocalVariable(name: "size", arg: 1, scope: !2389, file: !72, line: 538, type: !199)
!2429 = !DILocation(line: 538, column: 45, scope: !2389, inlinedAt: !2390)
!2430 = !DILocalVariable(name: "flags", arg: 2, scope: !2389, file: !72, line: 538, type: !1455)
!2431 = !DILocation(line: 538, column: 57, scope: !2389, inlinedAt: !2390)
!2432 = !DILocalVariable(name: "index", scope: !2387, file: !72, line: 542, type: !7)
!2433 = !DILocation(line: 542, column: 16, scope: !2387, inlinedAt: !2390)
!2434 = !DILocalVariable(name: "size", arg: 1, scope: !2378, file: !72, line: 662, type: !199)
!2435 = !DILocation(line: 662, column: 36, scope: !2378)
!2436 = !DILocalVariable(name: "flags", arg: 2, scope: !2378, file: !72, line: 662, type: !1455)
!2437 = !DILocation(line: 662, column: 48, scope: !2378)
!2438 = !DILocation(line: 664, column: 17, scope: !2378)
!2439 = !DILocation(line: 664, column: 23, scope: !2378)
!2440 = !DILocation(line: 664, column: 29, scope: !2378)
!2441 = !DILocation(line: 540, column: 27, scope: !2388, inlinedAt: !2390)
!2442 = !DILocation(line: 540, column: 6, scope: !2388, inlinedAt: !2390)
!2443 = !DILocation(line: 540, column: 6, scope: !2389, inlinedAt: !2390)
!2444 = !DILocation(line: 544, column: 7, scope: !2417, inlinedAt: !2390)
!2445 = !DILocation(line: 544, column: 12, scope: !2417, inlinedAt: !2390)
!2446 = !DILocation(line: 544, column: 7, scope: !2387, inlinedAt: !2390)
!2447 = !DILocation(line: 545, column: 25, scope: !2417, inlinedAt: !2390)
!2448 = !DILocation(line: 545, column: 31, scope: !2417, inlinedAt: !2390)
!2449 = !DILocation(line: 480, column: 33, scope: !2415, inlinedAt: !2416)
!2450 = !DILocation(line: 480, column: 23, scope: !2415, inlinedAt: !2416)
!2451 = !DILocation(line: 481, column: 29, scope: !2415, inlinedAt: !2416)
!2452 = !DILocation(line: 481, column: 35, scope: !2415, inlinedAt: !2416)
!2453 = !DILocation(line: 481, column: 42, scope: !2415, inlinedAt: !2416)
!2454 = !DILocation(line: 474, column: 23, scope: !2410, inlinedAt: !2414)
!2455 = !DILocation(line: 474, column: 29, scope: !2410, inlinedAt: !2414)
!2456 = !DILocation(line: 474, column: 36, scope: !2410, inlinedAt: !2414)
!2457 = !DILocation(line: 474, column: 9, scope: !2410, inlinedAt: !2414)
!2458 = !DILocation(line: 545, column: 4, scope: !2417, inlinedAt: !2390)
!2459 = !DILocation(line: 547, column: 25, scope: !2387, inlinedAt: !2390)
!2460 = !DILocation(line: 348, column: 7, scope: !2461, inlinedAt: !2408)
!2461 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 348, column: 6)
!2462 = !DILocation(line: 348, column: 6, scope: !2404, inlinedAt: !2408)
!2463 = !DILocation(line: 349, column: 3, scope: !2461, inlinedAt: !2408)
!2464 = !DILocation(line: 351, column: 6, scope: !2465, inlinedAt: !2408)
!2465 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 351, column: 6)
!2466 = !DILocation(line: 351, column: 11, scope: !2465, inlinedAt: !2408)
!2467 = !DILocation(line: 351, column: 6, scope: !2404, inlinedAt: !2408)
!2468 = !DILocation(line: 352, column: 3, scope: !2465, inlinedAt: !2408)
!2469 = !DILocation(line: 354, column: 32, scope: !2470, inlinedAt: !2408)
!2470 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 354, column: 6)
!2471 = !DILocation(line: 354, column: 37, scope: !2470, inlinedAt: !2408)
!2472 = !DILocation(line: 354, column: 42, scope: !2470, inlinedAt: !2408)
!2473 = !DILocation(line: 354, column: 45, scope: !2470, inlinedAt: !2408)
!2474 = !DILocation(line: 354, column: 50, scope: !2470, inlinedAt: !2408)
!2475 = !DILocation(line: 354, column: 6, scope: !2404, inlinedAt: !2408)
!2476 = !DILocation(line: 355, column: 3, scope: !2470, inlinedAt: !2408)
!2477 = !DILocation(line: 356, column: 32, scope: !2478, inlinedAt: !2408)
!2478 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 356, column: 6)
!2479 = !DILocation(line: 356, column: 37, scope: !2478, inlinedAt: !2408)
!2480 = !DILocation(line: 356, column: 43, scope: !2478, inlinedAt: !2408)
!2481 = !DILocation(line: 356, column: 46, scope: !2478, inlinedAt: !2408)
!2482 = !DILocation(line: 356, column: 51, scope: !2478, inlinedAt: !2408)
!2483 = !DILocation(line: 356, column: 6, scope: !2404, inlinedAt: !2408)
!2484 = !DILocation(line: 357, column: 3, scope: !2478, inlinedAt: !2408)
!2485 = !DILocation(line: 358, column: 6, scope: !2486, inlinedAt: !2408)
!2486 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 358, column: 6)
!2487 = !DILocation(line: 358, column: 11, scope: !2486, inlinedAt: !2408)
!2488 = !DILocation(line: 358, column: 6, scope: !2404, inlinedAt: !2408)
!2489 = !DILocation(line: 358, column: 26, scope: !2486, inlinedAt: !2408)
!2490 = !DILocation(line: 359, column: 6, scope: !2491, inlinedAt: !2408)
!2491 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 359, column: 6)
!2492 = !DILocation(line: 359, column: 11, scope: !2491, inlinedAt: !2408)
!2493 = !DILocation(line: 359, column: 6, scope: !2404, inlinedAt: !2408)
!2494 = !DILocation(line: 359, column: 26, scope: !2491, inlinedAt: !2408)
!2495 = !DILocation(line: 360, column: 6, scope: !2496, inlinedAt: !2408)
!2496 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 360, column: 6)
!2497 = !DILocation(line: 360, column: 11, scope: !2496, inlinedAt: !2408)
!2498 = !DILocation(line: 360, column: 6, scope: !2404, inlinedAt: !2408)
!2499 = !DILocation(line: 360, column: 26, scope: !2496, inlinedAt: !2408)
!2500 = !DILocation(line: 361, column: 6, scope: !2501, inlinedAt: !2408)
!2501 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 361, column: 6)
!2502 = !DILocation(line: 361, column: 11, scope: !2501, inlinedAt: !2408)
!2503 = !DILocation(line: 361, column: 6, scope: !2404, inlinedAt: !2408)
!2504 = !DILocation(line: 361, column: 26, scope: !2501, inlinedAt: !2408)
!2505 = !DILocation(line: 362, column: 6, scope: !2506, inlinedAt: !2408)
!2506 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 362, column: 6)
!2507 = !DILocation(line: 362, column: 11, scope: !2506, inlinedAt: !2408)
!2508 = !DILocation(line: 362, column: 6, scope: !2404, inlinedAt: !2408)
!2509 = !DILocation(line: 362, column: 26, scope: !2506, inlinedAt: !2408)
!2510 = !DILocation(line: 363, column: 6, scope: !2511, inlinedAt: !2408)
!2511 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 363, column: 6)
!2512 = !DILocation(line: 363, column: 11, scope: !2511, inlinedAt: !2408)
!2513 = !DILocation(line: 363, column: 6, scope: !2404, inlinedAt: !2408)
!2514 = !DILocation(line: 363, column: 26, scope: !2511, inlinedAt: !2408)
!2515 = !DILocation(line: 364, column: 6, scope: !2516, inlinedAt: !2408)
!2516 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 364, column: 6)
!2517 = !DILocation(line: 364, column: 11, scope: !2516, inlinedAt: !2408)
!2518 = !DILocation(line: 364, column: 6, scope: !2404, inlinedAt: !2408)
!2519 = !DILocation(line: 364, column: 26, scope: !2516, inlinedAt: !2408)
!2520 = !DILocation(line: 365, column: 6, scope: !2521, inlinedAt: !2408)
!2521 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 365, column: 6)
!2522 = !DILocation(line: 365, column: 11, scope: !2521, inlinedAt: !2408)
!2523 = !DILocation(line: 365, column: 6, scope: !2404, inlinedAt: !2408)
!2524 = !DILocation(line: 365, column: 26, scope: !2521, inlinedAt: !2408)
!2525 = !DILocation(line: 366, column: 6, scope: !2526, inlinedAt: !2408)
!2526 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 366, column: 6)
!2527 = !DILocation(line: 366, column: 11, scope: !2526, inlinedAt: !2408)
!2528 = !DILocation(line: 366, column: 6, scope: !2404, inlinedAt: !2408)
!2529 = !DILocation(line: 366, column: 26, scope: !2526, inlinedAt: !2408)
!2530 = !DILocation(line: 367, column: 6, scope: !2531, inlinedAt: !2408)
!2531 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 367, column: 6)
!2532 = !DILocation(line: 367, column: 11, scope: !2531, inlinedAt: !2408)
!2533 = !DILocation(line: 367, column: 6, scope: !2404, inlinedAt: !2408)
!2534 = !DILocation(line: 367, column: 26, scope: !2531, inlinedAt: !2408)
!2535 = !DILocation(line: 368, column: 6, scope: !2536, inlinedAt: !2408)
!2536 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 368, column: 6)
!2537 = !DILocation(line: 368, column: 11, scope: !2536, inlinedAt: !2408)
!2538 = !DILocation(line: 368, column: 6, scope: !2404, inlinedAt: !2408)
!2539 = !DILocation(line: 368, column: 26, scope: !2536, inlinedAt: !2408)
!2540 = !DILocation(line: 369, column: 6, scope: !2541, inlinedAt: !2408)
!2541 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 369, column: 6)
!2542 = !DILocation(line: 369, column: 11, scope: !2541, inlinedAt: !2408)
!2543 = !DILocation(line: 369, column: 6, scope: !2404, inlinedAt: !2408)
!2544 = !DILocation(line: 369, column: 26, scope: !2541, inlinedAt: !2408)
!2545 = !DILocation(line: 370, column: 6, scope: !2546, inlinedAt: !2408)
!2546 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 370, column: 6)
!2547 = !DILocation(line: 370, column: 11, scope: !2546, inlinedAt: !2408)
!2548 = !DILocation(line: 370, column: 6, scope: !2404, inlinedAt: !2408)
!2549 = !DILocation(line: 370, column: 26, scope: !2546, inlinedAt: !2408)
!2550 = !DILocation(line: 371, column: 6, scope: !2551, inlinedAt: !2408)
!2551 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 371, column: 6)
!2552 = !DILocation(line: 371, column: 11, scope: !2551, inlinedAt: !2408)
!2553 = !DILocation(line: 371, column: 6, scope: !2404, inlinedAt: !2408)
!2554 = !DILocation(line: 371, column: 26, scope: !2551, inlinedAt: !2408)
!2555 = !DILocation(line: 372, column: 6, scope: !2556, inlinedAt: !2408)
!2556 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 372, column: 6)
!2557 = !DILocation(line: 372, column: 11, scope: !2556, inlinedAt: !2408)
!2558 = !DILocation(line: 372, column: 6, scope: !2404, inlinedAt: !2408)
!2559 = !DILocation(line: 372, column: 26, scope: !2556, inlinedAt: !2408)
!2560 = !DILocation(line: 373, column: 6, scope: !2561, inlinedAt: !2408)
!2561 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 373, column: 6)
!2562 = !DILocation(line: 373, column: 11, scope: !2561, inlinedAt: !2408)
!2563 = !DILocation(line: 373, column: 6, scope: !2404, inlinedAt: !2408)
!2564 = !DILocation(line: 373, column: 26, scope: !2561, inlinedAt: !2408)
!2565 = !DILocation(line: 374, column: 6, scope: !2566, inlinedAt: !2408)
!2566 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 374, column: 6)
!2567 = !DILocation(line: 374, column: 11, scope: !2566, inlinedAt: !2408)
!2568 = !DILocation(line: 374, column: 6, scope: !2404, inlinedAt: !2408)
!2569 = !DILocation(line: 374, column: 26, scope: !2566, inlinedAt: !2408)
!2570 = !DILocation(line: 375, column: 6, scope: !2571, inlinedAt: !2408)
!2571 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 375, column: 6)
!2572 = !DILocation(line: 375, column: 11, scope: !2571, inlinedAt: !2408)
!2573 = !DILocation(line: 375, column: 6, scope: !2404, inlinedAt: !2408)
!2574 = !DILocation(line: 375, column: 27, scope: !2571, inlinedAt: !2408)
!2575 = !DILocation(line: 376, column: 6, scope: !2576, inlinedAt: !2408)
!2576 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 376, column: 6)
!2577 = !DILocation(line: 376, column: 11, scope: !2576, inlinedAt: !2408)
!2578 = !DILocation(line: 376, column: 6, scope: !2404, inlinedAt: !2408)
!2579 = !DILocation(line: 376, column: 32, scope: !2576, inlinedAt: !2408)
!2580 = !DILocation(line: 377, column: 6, scope: !2581, inlinedAt: !2408)
!2581 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 377, column: 6)
!2582 = !DILocation(line: 377, column: 11, scope: !2581, inlinedAt: !2408)
!2583 = !DILocation(line: 377, column: 6, scope: !2404, inlinedAt: !2408)
!2584 = !DILocation(line: 377, column: 32, scope: !2581, inlinedAt: !2408)
!2585 = !DILocation(line: 378, column: 6, scope: !2586, inlinedAt: !2408)
!2586 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 378, column: 6)
!2587 = !DILocation(line: 378, column: 11, scope: !2586, inlinedAt: !2408)
!2588 = !DILocation(line: 378, column: 6, scope: !2404, inlinedAt: !2408)
!2589 = !DILocation(line: 378, column: 32, scope: !2586, inlinedAt: !2408)
!2590 = !DILocation(line: 379, column: 6, scope: !2591, inlinedAt: !2408)
!2591 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 379, column: 6)
!2592 = !DILocation(line: 379, column: 11, scope: !2591, inlinedAt: !2408)
!2593 = !DILocation(line: 379, column: 6, scope: !2404, inlinedAt: !2408)
!2594 = !DILocation(line: 379, column: 33, scope: !2591, inlinedAt: !2408)
!2595 = !DILocation(line: 380, column: 6, scope: !2596, inlinedAt: !2408)
!2596 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 380, column: 6)
!2597 = !DILocation(line: 380, column: 11, scope: !2596, inlinedAt: !2408)
!2598 = !DILocation(line: 380, column: 6, scope: !2404, inlinedAt: !2408)
!2599 = !DILocation(line: 380, column: 33, scope: !2596, inlinedAt: !2408)
!2600 = !DILocation(line: 381, column: 6, scope: !2601, inlinedAt: !2408)
!2601 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 381, column: 6)
!2602 = !DILocation(line: 381, column: 11, scope: !2601, inlinedAt: !2408)
!2603 = !DILocation(line: 381, column: 6, scope: !2404, inlinedAt: !2408)
!2604 = !DILocation(line: 381, column: 33, scope: !2601, inlinedAt: !2408)
!2605 = !DILocation(line: 382, column: 2, scope: !2606, inlinedAt: !2408)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !72, line: 382, column: 2)
!2607 = distinct !DILexicalBlock(scope: !2404, file: !72, line: 382, column: 2)
!2608 = !{i32 -2143538363, i32 -2143538334, i32 -2143538288, i32 -2143538230, i32 -2143538176, i32 -2143538122, i32 -2143538067, i32 -2143538036}
!2609 = !DILocation(line: 382, column: 2, scope: !2610, inlinedAt: !2408)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !72, line: 382, column: 2)
!2611 = distinct !DILexicalBlock(scope: !2607, file: !72, line: 382, column: 2)
!2612 = !{i32 -2143537593, i32 -2143537586, i32 -2143537532, i32 -2143537501, i32 -2143537471}
!2613 = !DILocation(line: 382, column: 2, scope: !2611, inlinedAt: !2408)
!2614 = !DILocation(line: 386, column: 1, scope: !2404, inlinedAt: !2408)
!2615 = !DILocation(line: 547, column: 9, scope: !2387, inlinedAt: !2390)
!2616 = !DILocation(line: 549, column: 8, scope: !2617, inlinedAt: !2390)
!2617 = distinct !DILexicalBlock(scope: !2387, file: !72, line: 549, column: 7)
!2618 = !DILocation(line: 549, column: 7, scope: !2387, inlinedAt: !2390)
!2619 = !DILocation(line: 550, column: 4, scope: !2617, inlinedAt: !2390)
!2620 = !DILocation(line: 553, column: 33, scope: !2387, inlinedAt: !2390)
!2621 = !DILocation(line: 325, column: 6, scope: !2622, inlinedAt: !2402)
!2622 = distinct !DILexicalBlock(scope: !2398, file: !72, line: 325, column: 6)
!2623 = !DILocation(line: 325, column: 6, scope: !2398, inlinedAt: !2402)
!2624 = !DILocation(line: 326, column: 3, scope: !2622, inlinedAt: !2402)
!2625 = !DILocation(line: 332, column: 9, scope: !2398, inlinedAt: !2402)
!2626 = !DILocation(line: 332, column: 15, scope: !2398, inlinedAt: !2402)
!2627 = !DILocation(line: 332, column: 2, scope: !2398, inlinedAt: !2402)
!2628 = !DILocation(line: 336, column: 1, scope: !2398, inlinedAt: !2402)
!2629 = !DILocation(line: 553, column: 5, scope: !2387, inlinedAt: !2390)
!2630 = !DILocation(line: 553, column: 41, scope: !2387, inlinedAt: !2390)
!2631 = !DILocation(line: 554, column: 5, scope: !2387, inlinedAt: !2390)
!2632 = !DILocation(line: 554, column: 12, scope: !2387, inlinedAt: !2390)
!2633 = !DILocation(line: 448, column: 31, scope: !2382, inlinedAt: !2386)
!2634 = !DILocation(line: 448, column: 34, scope: !2382, inlinedAt: !2386)
!2635 = !DILocation(line: 448, column: 14, scope: !2382, inlinedAt: !2386)
!2636 = !DILocation(line: 450, column: 22, scope: !2382, inlinedAt: !2386)
!2637 = !DILocation(line: 450, column: 25, scope: !2382, inlinedAt: !2386)
!2638 = !DILocation(line: 450, column: 30, scope: !2382, inlinedAt: !2386)
!2639 = !DILocation(line: 450, column: 36, scope: !2382, inlinedAt: !2386)
!2640 = !DILocation(line: 450, column: 8, scope: !2382, inlinedAt: !2386)
!2641 = !DILocation(line: 450, column: 6, scope: !2382, inlinedAt: !2386)
!2642 = !DILocation(line: 451, column: 9, scope: !2382, inlinedAt: !2386)
!2643 = !DILocation(line: 552, column: 3, scope: !2387, inlinedAt: !2390)
!2644 = !DILocation(line: 557, column: 19, scope: !2389, inlinedAt: !2390)
!2645 = !DILocation(line: 557, column: 25, scope: !2389, inlinedAt: !2390)
!2646 = !DILocation(line: 557, column: 9, scope: !2389, inlinedAt: !2390)
!2647 = !DILocation(line: 557, column: 2, scope: !2389, inlinedAt: !2390)
!2648 = !DILocation(line: 558, column: 1, scope: !2389, inlinedAt: !2390)
!2649 = !DILocation(line: 664, column: 2, scope: !2378)
!2650 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2651, file: !2651, line: 33, type: !2652, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2651 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !100}
!2654 = !DILocalVariable(name: "list", arg: 1, scope: !2650, file: !2651, line: 33, type: !100)
!2655 = !DILocation(line: 33, column: 53, scope: !2650)
!2656 = !DILocation(line: 35, column: 2, scope: !2650)
!2657 = !DILocation(line: 35, column: 2, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2650, file: !2651, line: 35, column: 2)
!2659 = !DILocation(line: 35, column: 2, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !2651, line: 35, column: 2)
!2661 = !DILocation(line: 35, column: 2, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2658, file: !2651, line: 35, column: 2)
!2663 = !DILocation(line: 36, column: 15, scope: !2650)
!2664 = !DILocation(line: 36, column: 2, scope: !2650)
!2665 = !DILocation(line: 36, column: 8, scope: !2650)
!2666 = !DILocation(line: 36, column: 13, scope: !2650)
!2667 = !DILocation(line: 37, column: 1, scope: !2650)
!2668 = distinct !DISubprogram(name: "fpga_region_free", scope: !3, file: !3, line: 240, type: !2276, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2669 = !DILocalVariable(name: "region", arg: 1, scope: !2668, file: !3, line: 240, type: !80)
!2670 = !DILocation(line: 240, column: 43, scope: !2668)
!2671 = !DILocation(line: 242, column: 2, scope: !2668)
!2672 = !DILocation(line: 243, column: 8, scope: !2668)
!2673 = !DILocation(line: 243, column: 2, scope: !2668)
!2674 = !DILocation(line: 244, column: 1, scope: !2668)
!2675 = distinct !DISubprogram(name: "devm_fpga_region_create", scope: !3, file: !3, line: 271, type: !2014, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2676 = !DILocalVariable(name: "dev", arg: 1, scope: !2675, file: !3, line: 271, type: !1584)
!2677 = !DILocation(line: 271, column: 41, scope: !2675)
!2678 = !DILocalVariable(name: "mgr", arg: 2, scope: !2675, file: !3, line: 272, type: !1935)
!2679 = !DILocation(line: 272, column: 26, scope: !2675)
!2680 = !DILocalVariable(name: "get_bridges", arg: 3, scope: !2675, file: !3, line: 273, type: !2004)
!2681 = !DILocation(line: 273, column: 11, scope: !2675)
!2682 = !DILocalVariable(name: "ptr", scope: !2675, file: !3, line: 275, type: !2009)
!2683 = !DILocation(line: 275, column: 23, scope: !2675)
!2684 = !DILocalVariable(name: "region", scope: !2675, file: !3, line: 275, type: !80)
!2685 = !DILocation(line: 275, column: 29, scope: !2675)
!2686 = !DILocation(line: 277, column: 8, scope: !2675)
!2687 = !DILocation(line: 277, column: 6, scope: !2675)
!2688 = !DILocation(line: 278, column: 7, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 278, column: 6)
!2690 = !DILocation(line: 278, column: 6, scope: !2675)
!2691 = !DILocation(line: 279, column: 3, scope: !2689)
!2692 = !DILocation(line: 281, column: 30, scope: !2675)
!2693 = !DILocation(line: 281, column: 35, scope: !2675)
!2694 = !DILocation(line: 281, column: 40, scope: !2675)
!2695 = !DILocation(line: 281, column: 11, scope: !2675)
!2696 = !DILocation(line: 281, column: 9, scope: !2675)
!2697 = !DILocation(line: 282, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 282, column: 6)
!2699 = !DILocation(line: 282, column: 6, scope: !2675)
!2700 = !DILocation(line: 283, column: 15, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 282, column: 15)
!2702 = !DILocation(line: 283, column: 3, scope: !2701)
!2703 = !DILocation(line: 284, column: 2, scope: !2701)
!2704 = !DILocation(line: 285, column: 10, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 284, column: 9)
!2706 = !DILocation(line: 285, column: 4, scope: !2705)
!2707 = !DILocation(line: 285, column: 8, scope: !2705)
!2708 = !DILocation(line: 286, column: 14, scope: !2705)
!2709 = !DILocation(line: 286, column: 19, scope: !2705)
!2710 = !DILocation(line: 286, column: 3, scope: !2705)
!2711 = !DILocation(line: 289, column: 9, scope: !2675)
!2712 = !DILocation(line: 289, column: 2, scope: !2675)
!2713 = !DILocation(line: 290, column: 1, scope: !2675)
!2714 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !2715, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!79, !2717, !199, !1455}
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !1584, !79}
!2721 = !DILocalVariable(name: "release", arg: 1, scope: !2714, file: !30, line: 178, type: !2717)
!2722 = !DILocation(line: 178, column: 47, scope: !2714)
!2723 = !DILocalVariable(name: "size", arg: 2, scope: !2714, file: !30, line: 178, type: !199)
!2724 = !DILocation(line: 178, column: 63, scope: !2714)
!2725 = !DILocalVariable(name: "gfp", arg: 3, scope: !2714, file: !30, line: 178, type: !1455)
!2726 = !DILocation(line: 178, column: 75, scope: !2714)
!2727 = !DILocation(line: 180, column: 27, scope: !2714)
!2728 = !DILocation(line: 180, column: 36, scope: !2714)
!2729 = !DILocation(line: 180, column: 42, scope: !2714)
!2730 = !DILocation(line: 180, column: 9, scope: !2714)
!2731 = !DILocation(line: 180, column: 2, scope: !2714)
!2732 = distinct !DISubprogram(name: "devm_fpga_region_release", scope: !3, file: !3, line: 247, type: !2719, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2733 = !DILocalVariable(name: "dev", arg: 1, scope: !2732, file: !3, line: 247, type: !1584)
!2734 = !DILocation(line: 247, column: 53, scope: !2732)
!2735 = !DILocalVariable(name: "res", arg: 2, scope: !2732, file: !3, line: 247, type: !79)
!2736 = !DILocation(line: 247, column: 64, scope: !2732)
!2737 = !DILocalVariable(name: "region", scope: !2732, file: !3, line: 249, type: !80)
!2738 = !DILocation(line: 249, column: 22, scope: !2732)
!2739 = !DILocation(line: 249, column: 55, scope: !2732)
!2740 = !DILocation(line: 249, column: 32, scope: !2732)
!2741 = !DILocation(line: 249, column: 31, scope: !2732)
!2742 = !DILocation(line: 251, column: 19, scope: !2732)
!2743 = !DILocation(line: 251, column: 2, scope: !2732)
!2744 = !DILocation(line: 252, column: 1, scope: !2732)
!2745 = distinct !DISubprogram(name: "fpga_region_register", scope: !3, file: !3, line: 299, type: !2005, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2746 = !DILocalVariable(name: "region", arg: 1, scope: !2745, file: !3, line: 299, type: !80)
!2747 = !DILocation(line: 299, column: 46, scope: !2745)
!2748 = !DILocation(line: 301, column: 21, scope: !2745)
!2749 = !DILocation(line: 301, column: 29, scope: !2745)
!2750 = !DILocation(line: 301, column: 9, scope: !2745)
!2751 = !DILocation(line: 301, column: 2, scope: !2745)
!2752 = distinct !DISubprogram(name: "fpga_region_unregister", scope: !3, file: !3, line: 311, type: !2276, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2753 = !DILocalVariable(name: "region", arg: 1, scope: !2752, file: !3, line: 311, type: !80)
!2754 = !DILocation(line: 311, column: 49, scope: !2752)
!2755 = !DILocation(line: 313, column: 21, scope: !2752)
!2756 = !DILocation(line: 313, column: 29, scope: !2752)
!2757 = !DILocation(line: 313, column: 2, scope: !2752)
!2758 = !DILocation(line: 314, column: 1, scope: !2752)
!2759 = distinct !DISubprogram(name: "fpga_region_exit", scope: !3, file: !3, line: 337, type: !2023, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2760 = !DILocation(line: 339, column: 16, scope: !2759)
!2761 = !DILocation(line: 339, column: 2, scope: !2759)
!2762 = !DILocation(line: 340, column: 2, scope: !2759)
!2763 = !DILocation(line: 341, column: 1, scope: !2759)
!2764 = !DILocation(line: 327, column: 22, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 327, column: 22)
!2766 = !DILocation(line: 327, column: 20, scope: !2052)
!2767 = !DILocation(line: 328, column: 13, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2052, file: !3, line: 328, column: 6)
!2769 = !DILocation(line: 328, column: 6, scope: !2768)
!2770 = !DILocation(line: 328, column: 6, scope: !2052)
!2771 = !DILocation(line: 329, column: 18, scope: !2768)
!2772 = !DILocation(line: 329, column: 10, scope: !2768)
!2773 = !DILocation(line: 329, column: 3, scope: !2768)
!2774 = !DILocation(line: 331, column: 2, scope: !2052)
!2775 = !DILocation(line: 331, column: 21, scope: !2052)
!2776 = !DILocation(line: 331, column: 32, scope: !2052)
!2777 = !DILocation(line: 332, column: 2, scope: !2052)
!2778 = !DILocation(line: 332, column: 21, scope: !2052)
!2779 = !DILocation(line: 332, column: 33, scope: !2052)
!2780 = !DILocation(line: 334, column: 2, scope: !2052)
!2781 = !DILocation(line: 335, column: 1, scope: !2052)
!2782 = distinct !DISubprogram(name: "ERR_PTR", scope: !2260, file: !2260, line: 24, type: !2783, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!79, !187}
!2785 = !DILocalVariable(name: "error", arg: 1, scope: !2782, file: !2260, line: 24, type: !187)
!2786 = !DILocation(line: 24, column: 48, scope: !2782)
!2787 = !DILocation(line: 26, column: 18, scope: !2782)
!2788 = !DILocation(line: 26, column: 9, scope: !2782)
!2789 = !DILocation(line: 26, column: 2, scope: !2782)
!2790 = distinct !DISubprogram(name: "try_module_get", scope: !2791, file: !2791, line: 751, type: !2792, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2791 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!995, !1661}
!2794 = !DILocalVariable(name: "module", arg: 1, scope: !2790, file: !2791, line: 751, type: !1661)
!2795 = !DILocation(line: 751, column: 50, scope: !2790)
!2796 = !DILocation(line: 753, column: 2, scope: !2790)
!2797 = distinct !DISubprogram(name: "module_put", scope: !2791, file: !2791, line: 756, type: !2798, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !1661}
!2800 = !DILocalVariable(name: "module", arg: 1, scope: !2797, file: !2791, line: 756, type: !1661)
!2801 = !DILocation(line: 756, column: 46, scope: !2797)
!2802 = !DILocation(line: 758, column: 1, scope: !2797)
!2803 = distinct !DISubprogram(name: "get_order", scope: !2804, file: !2804, line: 29, type: !2805, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2804 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!136, !202}
!2807 = !DILocalVariable(name: "x", arg: 1, scope: !2808, file: !2809, line: 366, type: !273)
!2808 = distinct !DISubprogram(name: "fls64", scope: !2809, file: !2809, line: 366, type: !2810, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2809 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!136, !273}
!2812 = !DILocation(line: 366, column: 40, scope: !2808, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 46, column: 9, scope: !2803)
!2814 = !DILocalVariable(name: "bitpos", scope: !2808, file: !2809, line: 368, type: !136)
!2815 = !DILocation(line: 368, column: 6, scope: !2808, inlinedAt: !2813)
!2816 = !DILocalVariable(name: "size", arg: 1, scope: !2803, file: !2804, line: 29, type: !202)
!2817 = !DILocation(line: 29, column: 63, scope: !2803)
!2818 = !DILocation(line: 31, column: 27, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2803, file: !2804, line: 31, column: 6)
!2820 = !DILocation(line: 31, column: 6, scope: !2819)
!2821 = !DILocation(line: 31, column: 6, scope: !2803)
!2822 = !DILocation(line: 32, column: 8, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !2804, line: 32, column: 7)
!2824 = distinct !DILexicalBlock(scope: !2819, file: !2804, line: 31, column: 34)
!2825 = !DILocation(line: 32, column: 7, scope: !2824)
!2826 = !DILocation(line: 33, column: 4, scope: !2823)
!2827 = !DILocation(line: 35, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !2804, line: 35, column: 7)
!2829 = !DILocation(line: 35, column: 12, scope: !2828)
!2830 = !DILocation(line: 35, column: 7, scope: !2824)
!2831 = !DILocation(line: 36, column: 4, scope: !2828)
!2832 = !DILocation(line: 38, column: 10, scope: !2824)
!2833 = !DILocation(line: 38, column: 28, scope: !2824)
!2834 = !DILocation(line: 38, column: 41, scope: !2824)
!2835 = !DILocation(line: 38, column: 3, scope: !2824)
!2836 = !DILocation(line: 41, column: 6, scope: !2803)
!2837 = !DILocation(line: 42, column: 7, scope: !2803)
!2838 = !DILocation(line: 46, column: 15, scope: !2803)
!2839 = !DILocation(line: 374, column: 2, scope: !2808, inlinedAt: !2813)
!2840 = !DILocation(line: 376, column: 14, scope: !2808, inlinedAt: !2813)
!2841 = !{i32 386511}
!2842 = !DILocation(line: 377, column: 9, scope: !2808, inlinedAt: !2813)
!2843 = !DILocation(line: 377, column: 16, scope: !2808, inlinedAt: !2813)
!2844 = !DILocation(line: 46, column: 2, scope: !2803)
!2845 = !DILocation(line: 48, column: 1, scope: !2803)
!2846 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2847, file: !2847, line: 30, type: !2848, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2847 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!136, !271}
!2850 = !DILocation(line: 366, column: 40, scope: !2808, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 32, column: 9, scope: !2846)
!2852 = !DILocation(line: 368, column: 6, scope: !2808, inlinedAt: !2851)
!2853 = !DILocalVariable(name: "n", arg: 1, scope: !2846, file: !2847, line: 30, type: !271)
!2854 = !DILocation(line: 30, column: 21, scope: !2846)
!2855 = !DILocation(line: 32, column: 15, scope: !2846)
!2856 = !DILocation(line: 374, column: 2, scope: !2808, inlinedAt: !2851)
!2857 = !DILocation(line: 376, column: 14, scope: !2808, inlinedAt: !2851)
!2858 = !DILocation(line: 377, column: 9, scope: !2808, inlinedAt: !2851)
!2859 = !DILocation(line: 377, column: 16, scope: !2808, inlinedAt: !2851)
!2860 = !DILocation(line: 32, column: 18, scope: !2846)
!2861 = !DILocation(line: 32, column: 2, scope: !2846)
!2862 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2863, file: !2863, line: 137, type: !2864, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2863 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!79, !1045, !1386, !199, !1455}
!2866 = !DILocalVariable(name: "s", arg: 1, scope: !2862, file: !2863, line: 137, type: !1045)
!2867 = !DILocation(line: 137, column: 54, scope: !2862)
!2868 = !DILocalVariable(name: "object", arg: 2, scope: !2862, file: !2863, line: 137, type: !1386)
!2869 = !DILocation(line: 137, column: 69, scope: !2862)
!2870 = !DILocalVariable(name: "size", arg: 3, scope: !2862, file: !2863, line: 138, type: !199)
!2871 = !DILocation(line: 138, column: 12, scope: !2862)
!2872 = !DILocalVariable(name: "flags", arg: 4, scope: !2862, file: !2863, line: 138, type: !1455)
!2873 = !DILocation(line: 138, column: 24, scope: !2862)
!2874 = !DILocation(line: 140, column: 17, scope: !2862)
!2875 = !DILocation(line: 140, column: 2, scope: !2862)
!2876 = distinct !DISubprogram(name: "fpga_region_dev_release", scope: !3, file: !3, line: 317, type: !1607, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2877 = !DILocalVariable(name: "dev", arg: 1, scope: !2876, file: !3, line: 317, type: !1584)
!2878 = !DILocation(line: 317, column: 52, scope: !2876)
!2879 = !DILocation(line: 319, column: 1, scope: !2876)
!2880 = distinct !DISubprogram(name: "compat_id_show", scope: !3, file: !3, line: 161, type: !2070, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !124)
!2881 = !DILocalVariable(name: "dev", arg: 1, scope: !2880, file: !3, line: 161, type: !1584)
!2882 = !DILocation(line: 161, column: 46, scope: !2880)
!2883 = !DILocalVariable(name: "attr", arg: 2, scope: !2880, file: !3, line: 162, type: !2072)
!2884 = !DILocation(line: 162, column: 35, scope: !2880)
!2885 = !DILocalVariable(name: "buf", arg: 3, scope: !2880, file: !3, line: 162, type: !152)
!2886 = !DILocation(line: 162, column: 47, scope: !2880)
!2887 = !DILocalVariable(name: "region", scope: !2880, file: !3, line: 164, type: !80)
!2888 = !DILocation(line: 164, column: 22, scope: !2880)
!2889 = !DILocalVariable(name: "__mptr", scope: !2890, file: !3, line: 164, type: !79)
!2890 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 164, column: 31)
!2891 = !DILocation(line: 164, column: 31, scope: !2890)
!2892 = !DILocation(line: 164, column: 31, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 164, column: 31)
!2894 = !DILocation(line: 166, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 166, column: 6)
!2896 = !DILocation(line: 166, column: 15, scope: !2895)
!2897 = !DILocation(line: 166, column: 6, scope: !2880)
!2898 = !DILocation(line: 167, column: 3, scope: !2895)
!2899 = !DILocation(line: 169, column: 17, scope: !2880)
!2900 = !DILocation(line: 170, column: 30, scope: !2880)
!2901 = !DILocation(line: 170, column: 38, scope: !2880)
!2902 = !DILocation(line: 170, column: 49, scope: !2880)
!2903 = !DILocation(line: 171, column: 30, scope: !2880)
!2904 = !DILocation(line: 171, column: 38, scope: !2880)
!2905 = !DILocation(line: 171, column: 49, scope: !2880)
!2906 = !DILocation(line: 169, column: 9, scope: !2880)
!2907 = !DILocation(line: 169, column: 2, scope: !2880)
!2908 = !DILocation(line: 172, column: 1, scope: !2880)
