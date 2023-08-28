; ModuleID = '../bcout/drivers/vdpa/vdpa.llvm.bc'
source_filename = "drivers/vdpa/vdpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall1.init\22, \22a\22\09"
module asm "__initcall_vdpa_init1:\09\09\09"
module asm ".long\09vdpa_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.vdpa_device = type { %struct.device, %struct.device*, %struct.vdpa_config_ops*, i32, i8, i32 }
%struct.vdpa_config_ops = type { i32 (%struct.vdpa_device*, i16, i64, i64, i64)*, void (%struct.vdpa_device*, i16, i32)*, void (%struct.vdpa_device*, i16)*, void (%struct.vdpa_device*, i16, %struct.vdpa_callback*)*, void (%struct.vdpa_device*, i16, i1)*, i1 (%struct.vdpa_device*, i16)*, i32 (%struct.vdpa_device*, i16, %struct.vdpa_vq_state*)*, i32 (%struct.vdpa_device*, i16, %struct.vdpa_vq_state*)*, { i64, i64 } (%struct.vdpa_device*, i16)*, i32 (%struct.vdpa_device*, i16)*, i32 (%struct.vdpa_device*)*, i64 (%struct.vdpa_device*)*, i32 (%struct.vdpa_device*, i64)*, void (%struct.vdpa_device*, %struct.vdpa_callback*)*, i16 (%struct.vdpa_device*)*, i32 (%struct.vdpa_device*)*, i32 (%struct.vdpa_device*)*, i8 (%struct.vdpa_device*)*, void (%struct.vdpa_device*, i8)*, void (%struct.vdpa_device*, i32, i8*, i32)*, void (%struct.vdpa_device*, i32, i8*, i32)*, i32 (%struct.vdpa_device*)*, { i64, i64 } (%struct.vdpa_device*)*, i32 (%struct.vdpa_device*, %struct.vhost_iotlb*)*, i32 (%struct.vdpa_device*, i64, i64, i64, i32)*, i32 (%struct.vdpa_device*, i64, i64)*, void (%struct.vdpa_device*)* }
%struct.vdpa_callback = type { i32 (i8*)*, i8* }
%struct.vdpa_vq_state = type { i16 }
%struct.vhost_iotlb = type { %struct.rb_root_cached, %struct.list_head, i32, i32, i32 }
%struct.vdpa_driver = type { %struct.device_driver, i32 (%struct.vdpa_device*)*, void (%struct.vdpa_device*)* }

@vdpa_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !0
@vdpa_bus = internal global %struct.bus_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* @vdpa_dev_probe, void (%struct.device*)* null, i32 (%struct.device*)* @vdpa_dev_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !2099
@.str = private unnamed_addr constant [7 x i8] c"vdpa%u\00", align 1
@__UNIQUE_ID___addressable_vdpa_init178 = internal global i8* bitcast (i32 ()* @vdpa_init to i8*), section ".discard.addressable", align 8, !dbg !2077
@__exitcall_vdpa_exit = internal global void ()* @vdpa_exit, section ".exitcall.exit", align 8, !dbg !2079
@__UNIQUE_ID_author179 = internal constant [45 x i8] c"vdpa.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1, !dbg !2086
@__UNIQUE_ID_file180 = internal constant [28 x i8] c"vdpa.file=drivers/vdpa/vdpa\00", section ".modinfo", align 1, !dbg !2091
@__UNIQUE_ID_license181 = internal constant [20 x i8] c"vdpa.license=GPL v2\00", section ".modinfo", align 1, !dbg !2096
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vdpa\00", align 1
@llvm.used = appending global [6 x i8*] [i8* bitcast (void ()* @vdpa_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_vdpa_init178 to i8*), i8* bitcast (void ()** @__exitcall_vdpa_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author179, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_file180, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license181, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.vdpa_device* @__vdpa_alloc_device(%struct.device* %parent, %struct.vdpa_config_ops* %config, i32 %nvqs, i64 %size) #0 !dbg !2109 {
entry:
  %retval = alloca %struct.vdpa_device*, align 8
  %parent.addr = alloca %struct.device*, align 8
  %config.addr = alloca %struct.vdpa_config_ops*, align 8
  %nvqs.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %vdev = alloca %struct.vdpa_device*, align 8
  %err = alloca i32, align 4
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !2112, metadata !DIExpression()), !dbg !2113
  store %struct.vdpa_config_ops* %config, %struct.vdpa_config_ops** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vdpa_config_ops** %config.addr, metadata !2114, metadata !DIExpression()), !dbg !2115
  store i32 %nvqs, i32* %nvqs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nvqs.addr, metadata !2116, metadata !DIExpression()), !dbg !2117
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2118, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.declare(metadata %struct.vdpa_device** %vdev, metadata !2120, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2122, metadata !DIExpression()), !dbg !2123
  store i32 -22, i32* %err, align 4, !dbg !2123
  %0 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %config.addr, align 8, !dbg !2124
  %tobool = icmp ne %struct.vdpa_config_ops* %0, null, !dbg !2124
  br i1 %tobool, label %if.end, label %if.then, !dbg !2126

if.then:                                          ; preds = %entry
  br label %err30, !dbg !2127

if.end:                                           ; preds = %entry
  %1 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %config.addr, align 8, !dbg !2128
  %dma_map = getelementptr inbounds %struct.vdpa_config_ops, %struct.vdpa_config_ops* %1, i32 0, i32 24, !dbg !2130
  %2 = load i32 (%struct.vdpa_device*, i64, i64, i64, i32)*, i32 (%struct.vdpa_device*, i64, i64, i64, i32)** %dma_map, align 8, !dbg !2130
  %tobool1 = icmp ne i32 (%struct.vdpa_device*, i64, i64, i64, i32)* %2, null, !dbg !2131
  %lnot = xor i1 %tobool1, true, !dbg !2131
  %lnot2 = xor i1 %lnot, true, !dbg !2132
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2132
  %3 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %config.addr, align 8, !dbg !2133
  %dma_unmap = getelementptr inbounds %struct.vdpa_config_ops, %struct.vdpa_config_ops* %3, i32 0, i32 25, !dbg !2134
  %4 = load i32 (%struct.vdpa_device*, i64, i64)*, i32 (%struct.vdpa_device*, i64, i64)** %dma_unmap, align 8, !dbg !2134
  %tobool3 = icmp ne i32 (%struct.vdpa_device*, i64, i64)* %4, null, !dbg !2135
  %lnot4 = xor i1 %tobool3, true, !dbg !2135
  %lnot6 = xor i1 %lnot4, true, !dbg !2136
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2136
  %cmp = icmp ne i32 %lnot.ext, %lnot.ext7, !dbg !2137
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !2138

if.then8:                                         ; preds = %if.end
  br label %err30, !dbg !2139

if.end9:                                          ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !2140
  %5 = load i64, i64* %size.addr, align 8, !dbg !2141
  %call = call i8* @kzalloc(i64 %5, i32 3264) #7, !dbg !2142
  %6 = bitcast i8* %call to %struct.vdpa_device*, !dbg !2142
  store %struct.vdpa_device* %6, %struct.vdpa_device** %vdev, align 8, !dbg !2143
  %7 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2144
  %tobool10 = icmp ne %struct.vdpa_device* %7, null, !dbg !2144
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2146

if.then11:                                        ; preds = %if.end9
  br label %err30, !dbg !2147

if.end12:                                         ; preds = %if.end9
  %call13 = call i32 @ida_alloc_range(%struct.ida* @vdpa_index_ida, i32 0, i32 -1, i32 3264) #7, !dbg !2148
  store i32 %call13, i32* %err, align 4, !dbg !2149
  %8 = load i32, i32* %err, align 4, !dbg !2150
  %cmp14 = icmp slt i32 %8, 0, !dbg !2152
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2153

if.then15:                                        ; preds = %if.end12
  br label %err_ida, !dbg !2154

if.end16:                                         ; preds = %if.end12
  %9 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2155
  %dev = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %9, i32 0, i32 0, !dbg !2156
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 5, !dbg !2157
  store %struct.bus_type* @vdpa_bus, %struct.bus_type** %bus, align 8, !dbg !2158
  %10 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !2159
  %11 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2160
  %dev17 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %11, i32 0, i32 0, !dbg !2161
  %parent18 = getelementptr inbounds %struct.device, %struct.device* %dev17, i32 0, i32 1, !dbg !2162
  store %struct.device* %10, %struct.device** %parent18, align 8, !dbg !2163
  %12 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2164
  %dev19 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %12, i32 0, i32 0, !dbg !2165
  %release = getelementptr inbounds %struct.device, %struct.device* %dev19, i32 0, i32 31, !dbg !2166
  store void (%struct.device*)* @vdpa_release_dev, void (%struct.device*)** %release, align 8, !dbg !2167
  %13 = load i32, i32* %err, align 4, !dbg !2168
  %14 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2169
  %index = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %14, i32 0, i32 3, !dbg !2170
  store i32 %13, i32* %index, align 8, !dbg !2171
  %15 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %config.addr, align 8, !dbg !2172
  %16 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2173
  %config20 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %16, i32 0, i32 2, !dbg !2174
  store %struct.vdpa_config_ops* %15, %struct.vdpa_config_ops** %config20, align 8, !dbg !2175
  %17 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2176
  %features_valid = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %17, i32 0, i32 4, !dbg !2177
  store i8 0, i8* %features_valid, align 4, !dbg !2178
  %18 = load i32, i32* %nvqs.addr, align 4, !dbg !2179
  %19 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2180
  %nvqs21 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %19, i32 0, i32 5, !dbg !2181
  store i32 %18, i32* %nvqs21, align 8, !dbg !2182
  %20 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2183
  %dev22 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %20, i32 0, i32 0, !dbg !2184
  %21 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2185
  %index23 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %21, i32 0, i32 3, !dbg !2186
  %22 = load i32, i32* %index23, align 8, !dbg !2186
  %call24 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %22) #7, !dbg !2187
  store i32 %call24, i32* %err, align 4, !dbg !2188
  %23 = load i32, i32* %err, align 4, !dbg !2189
  %tobool25 = icmp ne i32 %23, 0, !dbg !2189
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2191

if.then26:                                        ; preds = %if.end16
  br label %err_name, !dbg !2192

if.end27:                                         ; preds = %if.end16
  %24 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2193
  %dev28 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %24, i32 0, i32 0, !dbg !2194
  call void @device_initialize(%struct.device* %dev28) #7, !dbg !2195
  %25 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2196
  store %struct.vdpa_device* %25, %struct.vdpa_device** %retval, align 8, !dbg !2197
  br label %return, !dbg !2197

err_name:                                         ; preds = %if.then26
  call void @llvm.dbg.label(metadata !2198), !dbg !2199
  %26 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2200
  %index29 = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %26, i32 0, i32 3, !dbg !2200
  %27 = load i32, i32* %index29, align 8, !dbg !2200
  call void @ida_free(%struct.ida* @vdpa_index_ida, i32 %27) #7, !dbg !2200
  br label %err_ida, !dbg !2200

err_ida:                                          ; preds = %err_name, %if.then15
  call void @llvm.dbg.label(metadata !2201), !dbg !2202
  %28 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2203
  %29 = bitcast %struct.vdpa_device* %28 to i8*, !dbg !2203
  call void @kfree(i8* %29) #7, !dbg !2204
  br label %err30, !dbg !2204

err30:                                            ; preds = %err_ida, %if.then11, %if.then8, %if.then
  call void @llvm.dbg.label(metadata !2205), !dbg !2206
  %30 = load i32, i32* %err, align 4, !dbg !2207
  %conv = sext i32 %30 to i64, !dbg !2207
  %call31 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !2208
  %31 = bitcast i8* %call31 to %struct.vdpa_device*, !dbg !2208
  store %struct.vdpa_device* %31, %struct.vdpa_device** %retval, align 8, !dbg !2209
  br label %return, !dbg !2209

return:                                           ; preds = %err30, %if.end27
  %32 = load %struct.vdpa_device*, %struct.vdpa_device** %retval, align 8, !dbg !2210
  ret %struct.vdpa_device* %32, !dbg !2210
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2211 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2214, metadata !DIExpression()), !dbg !2218
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2224, metadata !DIExpression()), !dbg !2225
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2226, metadata !DIExpression()), !dbg !2227
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2228, metadata !DIExpression()), !dbg !2229
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2230, metadata !DIExpression()), !dbg !2234
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2236, metadata !DIExpression()), !dbg !2240
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2242, metadata !DIExpression()), !dbg !2246
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2251, metadata !DIExpression()), !dbg !2252
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2253, metadata !DIExpression()), !dbg !2254
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2255, metadata !DIExpression()), !dbg !2256
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2257, metadata !DIExpression()), !dbg !2258
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2259, metadata !DIExpression()), !dbg !2260
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2261, metadata !DIExpression()), !dbg !2262
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2263, metadata !DIExpression()), !dbg !2264
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2265, metadata !DIExpression()), !dbg !2266
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2267, metadata !DIExpression()), !dbg !2268
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2269, metadata !DIExpression()), !dbg !2270
  %0 = load i64, i64* %size.addr, align 8, !dbg !2271
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2272
  %or = or i32 %1, 256, !dbg !2273
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2274
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2275
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2276

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2277
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2278
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2279

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2280
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2281
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2282
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2283
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2260
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2284
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2285
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2286
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2287
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2288
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2289
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2290
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2290
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2290
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2290
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2290
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2291
  br label %kmalloc.exit, !dbg !2291

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2292
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2293
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2293
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2295

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2296
  br label %kmalloc_index.exit.i, !dbg !2296

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2297
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2299
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2300

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2301
  br label %kmalloc_index.exit.i, !dbg !2301

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2302
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2304
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2305

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2306
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2307
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2308

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2309
  br label %kmalloc_index.exit.i, !dbg !2309

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2310
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2312
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2313

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2314
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2315
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2316

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2317
  br label %kmalloc_index.exit.i, !dbg !2317

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2318
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2320
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2321

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2322
  br label %kmalloc_index.exit.i, !dbg !2322

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2323
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2325
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2326

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2327
  br label %kmalloc_index.exit.i, !dbg !2327

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2328
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2330
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2331

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2332
  br label %kmalloc_index.exit.i, !dbg !2332

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2333
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2335
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2336

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2337
  br label %kmalloc_index.exit.i, !dbg !2337

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2338
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2340
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2341

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2342
  br label %kmalloc_index.exit.i, !dbg !2342

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2343
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2345
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2346

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2347
  br label %kmalloc_index.exit.i, !dbg !2347

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2348
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2350
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2351

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2352
  br label %kmalloc_index.exit.i, !dbg !2352

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2353
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2355
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2356

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2357
  br label %kmalloc_index.exit.i, !dbg !2357

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2358
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2360
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2361

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2362
  br label %kmalloc_index.exit.i, !dbg !2362

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2363
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2365
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2366

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2367
  br label %kmalloc_index.exit.i, !dbg !2367

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2368
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2370
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2371

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2372
  br label %kmalloc_index.exit.i, !dbg !2372

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2373
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2375
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2376

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2377
  br label %kmalloc_index.exit.i, !dbg !2377

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2378
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2380
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2381

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2382
  br label %kmalloc_index.exit.i, !dbg !2382

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2383
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2385
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2386

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2387
  br label %kmalloc_index.exit.i, !dbg !2387

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2388
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2390
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2391

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2392
  br label %kmalloc_index.exit.i, !dbg !2392

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2393
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2395
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2396

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2397
  br label %kmalloc_index.exit.i, !dbg !2397

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2398
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2400
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2401

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2402
  br label %kmalloc_index.exit.i, !dbg !2402

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2403
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2405
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2406

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2407
  br label %kmalloc_index.exit.i, !dbg !2407

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2408
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2410
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2411

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2412
  br label %kmalloc_index.exit.i, !dbg !2412

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2413
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2415
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2416

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2417
  br label %kmalloc_index.exit.i, !dbg !2417

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2418
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2420
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2421

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2422
  br label %kmalloc_index.exit.i, !dbg !2422

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2423
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2425
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2426

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2427
  br label %kmalloc_index.exit.i, !dbg !2427

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2428
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2430
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2431

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2432
  br label %kmalloc_index.exit.i, !dbg !2432

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2433
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2435
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2436

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2437
  br label %kmalloc_index.exit.i, !dbg !2437

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2438, !srcloc !2441
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #8, !dbg !2442, !srcloc !2445
  unreachable, !dbg !2446

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2447
  store i32 %45, i32* %index.i, align 4, !dbg !2448
  %46 = load i32, i32* %index.i, align 4, !dbg !2449
  %tobool.i = icmp ne i32 %46, 0, !dbg !2449
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2451

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2452
  br label %kmalloc.exit, !dbg !2452

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2453
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2454
  %and.i.i = and i32 %48, 17, !dbg !2454
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2454
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2454
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2454
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2454
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2456

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2457
  br label %kmalloc_type.exit.i, !dbg !2457

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2458
  %and2.i.i = and i32 %49, 1, !dbg !2459
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2458
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2458
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2458
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2460
  br label %kmalloc_type.exit.i, !dbg !2460

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2461
  %idxprom.i = zext i32 %51 to i64, !dbg !2462
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2462
  %52 = load i32, i32* %index.i, align 4, !dbg !2463
  %idxprom6.i = zext i32 %52 to i64, !dbg !2462
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2462
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2462
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2464
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2465
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2466
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2467
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2468
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2468
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2468
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2468
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2468
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2229
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2469
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2470
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2471
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2472
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2473
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2474
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2475
  store i8* %62, i8** %retval.i, align 8, !dbg !2476
  br label %kmalloc.exit, !dbg !2476

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2477
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2478
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2479
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2479
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2479
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2479
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2479
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2480
  br label %kmalloc.exit, !dbg !2480

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2481
  ret i8* %65, !dbg !2482
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vdpa_release_dev(%struct.device* %d) #0 !dbg !2483 {
entry:
  %d.addr = alloca %struct.device*, align 8
  %vdev = alloca %struct.vdpa_device*, align 8
  %ops = alloca %struct.vdpa_config_ops*, align 8
  store %struct.device* %d, %struct.device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %d.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.vdpa_device** %vdev, metadata !2486, metadata !DIExpression()), !dbg !2487
  %0 = load %struct.device*, %struct.device** %d.addr, align 8, !dbg !2488
  %call = call %struct.vdpa_device* @dev_to_vdpa(%struct.device* %0) #7, !dbg !2489
  store %struct.vdpa_device* %call, %struct.vdpa_device** %vdev, align 8, !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.vdpa_config_ops** %ops, metadata !2490, metadata !DIExpression()), !dbg !2491
  %1 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2492
  %config = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %1, i32 0, i32 2, !dbg !2493
  %2 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %config, align 8, !dbg !2493
  store %struct.vdpa_config_ops* %2, %struct.vdpa_config_ops** %ops, align 8, !dbg !2491
  %3 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %ops, align 8, !dbg !2494
  %free = getelementptr inbounds %struct.vdpa_config_ops, %struct.vdpa_config_ops* %3, i32 0, i32 26, !dbg !2496
  %4 = load void (%struct.vdpa_device*)*, void (%struct.vdpa_device*)** %free, align 8, !dbg !2496
  %tobool = icmp ne void (%struct.vdpa_device*)* %4, null, !dbg !2494
  br i1 %tobool, label %if.then, label %if.end, !dbg !2497

if.then:                                          ; preds = %entry
  %5 = load %struct.vdpa_config_ops*, %struct.vdpa_config_ops** %ops, align 8, !dbg !2498
  %free1 = getelementptr inbounds %struct.vdpa_config_ops, %struct.vdpa_config_ops* %5, i32 0, i32 26, !dbg !2499
  %6 = load void (%struct.vdpa_device*)*, void (%struct.vdpa_device*)** %free1, align 8, !dbg !2499
  %7 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2500
  call void %6(%struct.vdpa_device* %7) #7, !dbg !2498
  br label %if.end, !dbg !2498

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2501
  %index = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %8, i32 0, i32 3, !dbg !2501
  %9 = load i32, i32* %index, align 8, !dbg !2501
  call void @ida_free(%struct.ida* @vdpa_index_ida, i32 %9) #7, !dbg !2501
  %10 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2502
  %11 = bitcast %struct.vdpa_device* %10 to i8*, !dbg !2502
  call void @kfree(i8* %11) #7, !dbg !2503
  ret void, !dbg !2504
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2505 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %0 = load i64, i64* %error.addr, align 8, !dbg !2511
  %1 = inttoptr i64 %0 to i8*, !dbg !2512
  ret i8* %1, !dbg !2513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @vdpa_register_device(%struct.vdpa_device* %vdev) #0 !dbg !2514 {
entry:
  %vdev.addr = alloca %struct.vdpa_device*, align 8
  store %struct.vdpa_device* %vdev, %struct.vdpa_device** %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vdpa_device** %vdev.addr, metadata !2515, metadata !DIExpression()), !dbg !2516
  %0 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev.addr, align 8, !dbg !2517
  %dev = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %0, i32 0, i32 0, !dbg !2518
  %call = call i32 @device_add(%struct.device* %dev) #7, !dbg !2519
  ret i32 %call, !dbg !2520
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vdpa_unregister_device(%struct.vdpa_device* %vdev) #0 !dbg !2521 {
entry:
  %vdev.addr = alloca %struct.vdpa_device*, align 8
  store %struct.vdpa_device* %vdev, %struct.vdpa_device** %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vdpa_device** %vdev.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  %0 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev.addr, align 8, !dbg !2524
  %dev = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %0, i32 0, i32 0, !dbg !2525
  call void @device_unregister(%struct.device* %dev) #7, !dbg !2526
  ret void, !dbg !2527
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__vdpa_register_driver(%struct.vdpa_driver* %drv, %struct.module* %owner) #0 !dbg !2528 {
entry:
  %drv.addr = alloca %struct.vdpa_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  store %struct.vdpa_driver* %drv, %struct.vdpa_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vdpa_driver** %drv.addr, metadata !2531, metadata !DIExpression()), !dbg !2532
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2533, metadata !DIExpression()), !dbg !2534
  %0 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv.addr, align 8, !dbg !2535
  %driver = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %0, i32 0, i32 0, !dbg !2536
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 1, !dbg !2537
  store %struct.bus_type* @vdpa_bus, %struct.bus_type** %bus, align 8, !dbg !2538
  %1 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2539
  %2 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv.addr, align 8, !dbg !2540
  %driver1 = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %2, i32 0, i32 0, !dbg !2541
  %owner2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver1, i32 0, i32 2, !dbg !2542
  store %struct.module* %1, %struct.module** %owner2, align 8, !dbg !2543
  %3 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv.addr, align 8, !dbg !2544
  %driver3 = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %3, i32 0, i32 0, !dbg !2545
  %call = call i32 @driver_register(%struct.device_driver* %driver3) #7, !dbg !2546
  ret i32 %call, !dbg !2547
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @vdpa_unregister_driver(%struct.vdpa_driver* %drv) #0 !dbg !2548 {
entry:
  %drv.addr = alloca %struct.vdpa_driver*, align 8
  store %struct.vdpa_driver* %drv, %struct.vdpa_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vdpa_driver** %drv.addr, metadata !2551, metadata !DIExpression()), !dbg !2552
  %0 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv.addr, align 8, !dbg !2553
  %driver = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %0, i32 0, i32 0, !dbg !2554
  call void @driver_unregister(%struct.device_driver* %driver) #7, !dbg !2555
  ret void, !dbg !2556
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @vdpa_exit() #3 section ".exit.text" !dbg !2557 {
entry:
  call void @bus_unregister(%struct.bus_type* @vdpa_bus) #7, !dbg !2558
  call void @ida_destroy(%struct.ida* @vdpa_index_ida) #7, !dbg !2559
  ret void, !dbg !2560
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local void @ida_destroy(%struct.ida*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vdpa_init() #0 !dbg !2561 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @vdpa_bus) #7, !dbg !2564
  ret i32 %call, !dbg !2565
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !2566 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2570, metadata !DIExpression()), !dbg !2575
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2577, metadata !DIExpression()), !dbg !2578
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  %0 = load i64, i64* %size.addr, align 8, !dbg !2581
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2583
  br i1 %1, label %if.then, label %if.end447, !dbg !2584

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2585
  %tobool = icmp ne i64 %2, 0, !dbg !2585
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2588

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2589
  br label %return, !dbg !2589

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2590
  %cmp = icmp ult i64 %3, 4096, !dbg !2592
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2593

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2594
  br label %return, !dbg !2594

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub = sub i64 %4, 1, !dbg !2595
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2595
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2595

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub4 = sub i64 %6, 1, !dbg !2595
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2595
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2595

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub6 = sub i64 %8, 1, !dbg !2595
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2595
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2595

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2595

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub9 = sub i64 %9, 1, !dbg !2595
  %and = and i64 %sub9, -9223372036854775808, !dbg !2595
  %tobool10 = icmp ne i64 %and, 0, !dbg !2595
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2595

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2595

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub13 = sub i64 %10, 1, !dbg !2595
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2595
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2595
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2595

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2595

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub18 = sub i64 %11, 1, !dbg !2595
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2595
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2595
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2595

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2595

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub23 = sub i64 %12, 1, !dbg !2595
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2595
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2595
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2595

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2595

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub28 = sub i64 %13, 1, !dbg !2595
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2595
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2595
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2595

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2595

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub33 = sub i64 %14, 1, !dbg !2595
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2595
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2595
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2595

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2595

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub38 = sub i64 %15, 1, !dbg !2595
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2595
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2595
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2595

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2595

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub43 = sub i64 %16, 1, !dbg !2595
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2595
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2595
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2595

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2595

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub48 = sub i64 %17, 1, !dbg !2595
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2595
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2595
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2595

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2595

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub53 = sub i64 %18, 1, !dbg !2595
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2595
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2595
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2595

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2595

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub58 = sub i64 %19, 1, !dbg !2595
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2595
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2595
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2595

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2595

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub63 = sub i64 %20, 1, !dbg !2595
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2595
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2595
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2595

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2595

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub68 = sub i64 %21, 1, !dbg !2595
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2595
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2595
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2595

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2595

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub73 = sub i64 %22, 1, !dbg !2595
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2595
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2595
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2595

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2595

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub78 = sub i64 %23, 1, !dbg !2595
  %and79 = and i64 %sub78, 562949953421312, !dbg !2595
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2595
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2595

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2595

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub83 = sub i64 %24, 1, !dbg !2595
  %and84 = and i64 %sub83, 281474976710656, !dbg !2595
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2595
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2595

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2595

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub88 = sub i64 %25, 1, !dbg !2595
  %and89 = and i64 %sub88, 140737488355328, !dbg !2595
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2595
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2595

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2595

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub93 = sub i64 %26, 1, !dbg !2595
  %and94 = and i64 %sub93, 70368744177664, !dbg !2595
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2595
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2595

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2595

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub98 = sub i64 %27, 1, !dbg !2595
  %and99 = and i64 %sub98, 35184372088832, !dbg !2595
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2595
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2595

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2595

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub103 = sub i64 %28, 1, !dbg !2595
  %and104 = and i64 %sub103, 17592186044416, !dbg !2595
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2595
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2595

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2595

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub108 = sub i64 %29, 1, !dbg !2595
  %and109 = and i64 %sub108, 8796093022208, !dbg !2595
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2595
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2595

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2595

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub113 = sub i64 %30, 1, !dbg !2595
  %and114 = and i64 %sub113, 4398046511104, !dbg !2595
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2595
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2595

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2595

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub118 = sub i64 %31, 1, !dbg !2595
  %and119 = and i64 %sub118, 2199023255552, !dbg !2595
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2595
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2595

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2595

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub123 = sub i64 %32, 1, !dbg !2595
  %and124 = and i64 %sub123, 1099511627776, !dbg !2595
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2595
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2595

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2595

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub128 = sub i64 %33, 1, !dbg !2595
  %and129 = and i64 %sub128, 549755813888, !dbg !2595
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2595
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2595

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2595

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub133 = sub i64 %34, 1, !dbg !2595
  %and134 = and i64 %sub133, 274877906944, !dbg !2595
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2595
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2595

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2595

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub138 = sub i64 %35, 1, !dbg !2595
  %and139 = and i64 %sub138, 137438953472, !dbg !2595
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2595
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2595

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2595

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub143 = sub i64 %36, 1, !dbg !2595
  %and144 = and i64 %sub143, 68719476736, !dbg !2595
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2595
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2595

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2595

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub148 = sub i64 %37, 1, !dbg !2595
  %and149 = and i64 %sub148, 34359738368, !dbg !2595
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2595
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2595

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2595

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub153 = sub i64 %38, 1, !dbg !2595
  %and154 = and i64 %sub153, 17179869184, !dbg !2595
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2595
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2595

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2595

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub158 = sub i64 %39, 1, !dbg !2595
  %and159 = and i64 %sub158, 8589934592, !dbg !2595
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2595
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2595

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2595

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub163 = sub i64 %40, 1, !dbg !2595
  %and164 = and i64 %sub163, 4294967296, !dbg !2595
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2595
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2595

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2595

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub168 = sub i64 %41, 1, !dbg !2595
  %and169 = and i64 %sub168, 2147483648, !dbg !2595
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2595
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2595

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2595

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub173 = sub i64 %42, 1, !dbg !2595
  %and174 = and i64 %sub173, 1073741824, !dbg !2595
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2595
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2595

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2595

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub178 = sub i64 %43, 1, !dbg !2595
  %and179 = and i64 %sub178, 536870912, !dbg !2595
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2595
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2595

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2595

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub183 = sub i64 %44, 1, !dbg !2595
  %and184 = and i64 %sub183, 268435456, !dbg !2595
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2595
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2595

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2595

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub188 = sub i64 %45, 1, !dbg !2595
  %and189 = and i64 %sub188, 134217728, !dbg !2595
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2595
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2595

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2595

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub193 = sub i64 %46, 1, !dbg !2595
  %and194 = and i64 %sub193, 67108864, !dbg !2595
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2595
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2595

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2595

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub198 = sub i64 %47, 1, !dbg !2595
  %and199 = and i64 %sub198, 33554432, !dbg !2595
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2595
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2595

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2595

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub203 = sub i64 %48, 1, !dbg !2595
  %and204 = and i64 %sub203, 16777216, !dbg !2595
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2595
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2595

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2595

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub208 = sub i64 %49, 1, !dbg !2595
  %and209 = and i64 %sub208, 8388608, !dbg !2595
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2595
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2595

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2595

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub213 = sub i64 %50, 1, !dbg !2595
  %and214 = and i64 %sub213, 4194304, !dbg !2595
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2595
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2595

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2595

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub218 = sub i64 %51, 1, !dbg !2595
  %and219 = and i64 %sub218, 2097152, !dbg !2595
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2595
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2595

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2595

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub223 = sub i64 %52, 1, !dbg !2595
  %and224 = and i64 %sub223, 1048576, !dbg !2595
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2595
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2595

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2595

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub228 = sub i64 %53, 1, !dbg !2595
  %and229 = and i64 %sub228, 524288, !dbg !2595
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2595
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2595

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2595

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub233 = sub i64 %54, 1, !dbg !2595
  %and234 = and i64 %sub233, 262144, !dbg !2595
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2595
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2595

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2595

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub238 = sub i64 %55, 1, !dbg !2595
  %and239 = and i64 %sub238, 131072, !dbg !2595
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2595
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2595

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2595

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub243 = sub i64 %56, 1, !dbg !2595
  %and244 = and i64 %sub243, 65536, !dbg !2595
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2595
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2595

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2595

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub248 = sub i64 %57, 1, !dbg !2595
  %and249 = and i64 %sub248, 32768, !dbg !2595
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2595
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2595

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2595

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub253 = sub i64 %58, 1, !dbg !2595
  %and254 = and i64 %sub253, 16384, !dbg !2595
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2595
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2595

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2595

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub258 = sub i64 %59, 1, !dbg !2595
  %and259 = and i64 %sub258, 8192, !dbg !2595
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2595
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2595

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2595

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub263 = sub i64 %60, 1, !dbg !2595
  %and264 = and i64 %sub263, 4096, !dbg !2595
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2595
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2595

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2595

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub268 = sub i64 %61, 1, !dbg !2595
  %and269 = and i64 %sub268, 2048, !dbg !2595
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2595
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2595

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2595

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub273 = sub i64 %62, 1, !dbg !2595
  %and274 = and i64 %sub273, 1024, !dbg !2595
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2595
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2595

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2595

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub278 = sub i64 %63, 1, !dbg !2595
  %and279 = and i64 %sub278, 512, !dbg !2595
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2595
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2595

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2595

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub283 = sub i64 %64, 1, !dbg !2595
  %and284 = and i64 %sub283, 256, !dbg !2595
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2595
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2595

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2595

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub288 = sub i64 %65, 1, !dbg !2595
  %and289 = and i64 %sub288, 128, !dbg !2595
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2595
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2595

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2595

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub293 = sub i64 %66, 1, !dbg !2595
  %and294 = and i64 %sub293, 64, !dbg !2595
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2595
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2595

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2595

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub298 = sub i64 %67, 1, !dbg !2595
  %and299 = and i64 %sub298, 32, !dbg !2595
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2595
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2595

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2595

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub303 = sub i64 %68, 1, !dbg !2595
  %and304 = and i64 %sub303, 16, !dbg !2595
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2595
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2595

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2595

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub308 = sub i64 %69, 1, !dbg !2595
  %and309 = and i64 %sub308, 8, !dbg !2595
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2595
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2595

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2595

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub313 = sub i64 %70, 1, !dbg !2595
  %and314 = and i64 %sub313, 4, !dbg !2595
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2595
  %71 = zext i1 %tobool315 to i64, !dbg !2595
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2595
  br label %cond.end, !dbg !2595

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2595
  br label %cond.end317, !dbg !2595

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2595
  br label %cond.end319, !dbg !2595

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2595
  br label %cond.end321, !dbg !2595

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2595
  br label %cond.end323, !dbg !2595

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2595
  br label %cond.end325, !dbg !2595

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2595
  br label %cond.end327, !dbg !2595

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2595
  br label %cond.end329, !dbg !2595

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2595
  br label %cond.end331, !dbg !2595

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2595
  br label %cond.end333, !dbg !2595

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2595
  br label %cond.end335, !dbg !2595

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2595
  br label %cond.end337, !dbg !2595

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2595
  br label %cond.end339, !dbg !2595

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2595
  br label %cond.end341, !dbg !2595

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2595
  br label %cond.end343, !dbg !2595

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2595
  br label %cond.end345, !dbg !2595

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2595
  br label %cond.end347, !dbg !2595

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2595
  br label %cond.end349, !dbg !2595

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2595
  br label %cond.end351, !dbg !2595

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2595
  br label %cond.end353, !dbg !2595

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2595
  br label %cond.end355, !dbg !2595

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2595
  br label %cond.end357, !dbg !2595

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2595
  br label %cond.end359, !dbg !2595

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2595
  br label %cond.end361, !dbg !2595

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2595
  br label %cond.end363, !dbg !2595

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2595
  br label %cond.end365, !dbg !2595

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2595
  br label %cond.end367, !dbg !2595

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2595
  br label %cond.end369, !dbg !2595

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2595
  br label %cond.end371, !dbg !2595

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2595
  br label %cond.end373, !dbg !2595

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2595
  br label %cond.end375, !dbg !2595

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2595
  br label %cond.end377, !dbg !2595

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2595
  br label %cond.end379, !dbg !2595

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2595
  br label %cond.end381, !dbg !2595

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2595
  br label %cond.end383, !dbg !2595

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2595
  br label %cond.end385, !dbg !2595

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2595
  br label %cond.end387, !dbg !2595

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2595
  br label %cond.end389, !dbg !2595

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2595
  br label %cond.end391, !dbg !2595

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2595
  br label %cond.end393, !dbg !2595

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2595
  br label %cond.end395, !dbg !2595

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2595
  br label %cond.end397, !dbg !2595

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2595
  br label %cond.end399, !dbg !2595

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2595
  br label %cond.end401, !dbg !2595

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2595
  br label %cond.end403, !dbg !2595

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2595
  br label %cond.end405, !dbg !2595

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2595
  br label %cond.end407, !dbg !2595

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2595
  br label %cond.end409, !dbg !2595

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2595
  br label %cond.end411, !dbg !2595

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2595
  br label %cond.end413, !dbg !2595

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2595
  br label %cond.end415, !dbg !2595

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2595
  br label %cond.end417, !dbg !2595

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2595
  br label %cond.end419, !dbg !2595

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2595
  br label %cond.end421, !dbg !2595

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2595
  br label %cond.end423, !dbg !2595

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2595
  br label %cond.end425, !dbg !2595

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2595
  br label %cond.end427, !dbg !2595

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2595
  br label %cond.end429, !dbg !2595

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2595
  br label %cond.end431, !dbg !2595

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2595
  br label %cond.end433, !dbg !2595

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2595
  br label %cond.end435, !dbg !2595

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2595
  br label %cond.end437, !dbg !2595

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2595
  br label %cond.end440, !dbg !2595

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2595

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2595
  br label %cond.end444, !dbg !2595

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2595
  %sub443 = sub i64 %72, 1, !dbg !2595
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !2595
  br label %cond.end444, !dbg !2595

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2595
  %sub446 = sub i32 %cond445, 12, !dbg !2596
  %add = add i32 %sub446, 1, !dbg !2597
  store i32 %add, i32* %retval, align 4, !dbg !2598
  br label %return, !dbg !2598

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2599
  %dec = add i64 %73, -1, !dbg !2599
  store i64 %dec, i64* %size.addr, align 8, !dbg !2599
  %74 = load i64, i64* %size.addr, align 8, !dbg !2600
  %shr = lshr i64 %74, 12, !dbg !2600
  store i64 %shr, i64* %size.addr, align 8, !dbg !2600
  %75 = load i64, i64* %size.addr, align 8, !dbg !2601
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2578
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2602
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2603
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !2602, !srcloc !2604
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2602
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2605
  %add.i = add i32 %79, 1, !dbg !2606
  store i32 %add.i, i32* %retval, align 4, !dbg !2607
  br label %return, !dbg !2607

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2608
  ret i32 %80, !dbg !2608
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !2609 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2570, metadata !DIExpression()), !dbg !2613
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2577, metadata !DIExpression()), !dbg !2615
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2616, metadata !DIExpression()), !dbg !2617
  %0 = load i64, i64* %n.addr, align 8, !dbg !2618
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2615
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2619
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2620
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !2619, !srcloc !2604
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2619
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2621
  %add.i = add i32 %4, 1, !dbg !2622
  %sub = sub i32 %add.i, 1, !dbg !2623
  ret i32 %sub, !dbg !2624
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2625 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2628, metadata !DIExpression()), !dbg !2629
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2636
  ret i8* %0, !dbg !2637
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vdpa_dev_probe(%struct.device* %d) #0 !dbg !2638 {
entry:
  %d.addr = alloca %struct.device*, align 8
  %vdev = alloca %struct.vdpa_device*, align 8
  %drv = alloca %struct.vdpa_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %d, %struct.device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %d.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.vdpa_device** %vdev, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = load %struct.device*, %struct.device** %d.addr, align 8, !dbg !2643
  %call = call %struct.vdpa_device* @dev_to_vdpa(%struct.device* %0) #7, !dbg !2644
  store %struct.vdpa_device* %call, %struct.vdpa_device** %vdev, align 8, !dbg !2642
  call void @llvm.dbg.declare(metadata %struct.vdpa_driver** %drv, metadata !2645, metadata !DIExpression()), !dbg !2646
  %1 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2647
  %dev = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %1, i32 0, i32 0, !dbg !2648
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !2649
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2649
  %call1 = call %struct.vdpa_driver* @drv_to_vdpa(%struct.device_driver* %2) #7, !dbg !2650
  store %struct.vdpa_driver* %call1, %struct.vdpa_driver** %drv, align 8, !dbg !2646
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2651, metadata !DIExpression()), !dbg !2652
  store i32 0, i32* %ret, align 4, !dbg !2652
  %3 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv, align 8, !dbg !2653
  %tobool = icmp ne %struct.vdpa_driver* %3, null, !dbg !2653
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2655

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv, align 8, !dbg !2656
  %probe = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %4, i32 0, i32 1, !dbg !2657
  %5 = load i32 (%struct.vdpa_device*)*, i32 (%struct.vdpa_device*)** %probe, align 8, !dbg !2657
  %tobool2 = icmp ne i32 (%struct.vdpa_device*)* %5, null, !dbg !2656
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2658

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv, align 8, !dbg !2659
  %probe3 = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %6, i32 0, i32 1, !dbg !2660
  %7 = load i32 (%struct.vdpa_device*)*, i32 (%struct.vdpa_device*)** %probe3, align 8, !dbg !2660
  %8 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2661
  %call4 = call i32 %7(%struct.vdpa_device* %8) #7, !dbg !2659
  store i32 %call4, i32* %ret, align 4, !dbg !2662
  br label %if.end, !dbg !2663

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* %ret, align 4, !dbg !2664
  ret i32 %9, !dbg !2665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vdpa_dev_remove(%struct.device* %d) #0 !dbg !2666 {
entry:
  %d.addr = alloca %struct.device*, align 8
  %vdev = alloca %struct.vdpa_device*, align 8
  %drv = alloca %struct.vdpa_driver*, align 8
  store %struct.device* %d, %struct.device** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %d.addr, metadata !2667, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.declare(metadata %struct.vdpa_device** %vdev, metadata !2669, metadata !DIExpression()), !dbg !2670
  %0 = load %struct.device*, %struct.device** %d.addr, align 8, !dbg !2671
  %call = call %struct.vdpa_device* @dev_to_vdpa(%struct.device* %0) #7, !dbg !2672
  store %struct.vdpa_device* %call, %struct.vdpa_device** %vdev, align 8, !dbg !2670
  call void @llvm.dbg.declare(metadata %struct.vdpa_driver** %drv, metadata !2673, metadata !DIExpression()), !dbg !2674
  %1 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2675
  %dev = getelementptr inbounds %struct.vdpa_device, %struct.vdpa_device* %1, i32 0, i32 0, !dbg !2676
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !2677
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !2677
  %call1 = call %struct.vdpa_driver* @drv_to_vdpa(%struct.device_driver* %2) #7, !dbg !2678
  store %struct.vdpa_driver* %call1, %struct.vdpa_driver** %drv, align 8, !dbg !2674
  %3 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv, align 8, !dbg !2679
  %tobool = icmp ne %struct.vdpa_driver* %3, null, !dbg !2679
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2681

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv, align 8, !dbg !2682
  %remove = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %4, i32 0, i32 2, !dbg !2683
  %5 = load void (%struct.vdpa_device*)*, void (%struct.vdpa_device*)** %remove, align 8, !dbg !2683
  %tobool2 = icmp ne void (%struct.vdpa_device*)* %5, null, !dbg !2682
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2684

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.vdpa_driver*, %struct.vdpa_driver** %drv, align 8, !dbg !2685
  %remove3 = getelementptr inbounds %struct.vdpa_driver, %struct.vdpa_driver* %6, i32 0, i32 2, !dbg !2686
  %7 = load void (%struct.vdpa_device*)*, void (%struct.vdpa_device*)** %remove3, align 8, !dbg !2686
  %8 = load %struct.vdpa_device*, %struct.vdpa_device** %vdev, align 8, !dbg !2687
  call void %7(%struct.vdpa_device* %8) #7, !dbg !2685
  br label %if.end, !dbg !2685

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0, !dbg !2688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.vdpa_device* @dev_to_vdpa(%struct.device* %_dev) #0 !dbg !2689 {
entry:
  %_dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.vdpa_device*, align 8
  store %struct.device* %_dev, %struct.device** %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %_dev.addr, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2694, metadata !DIExpression()), !dbg !2696
  %0 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !2696
  %1 = bitcast %struct.device* %0 to i8*, !dbg !2696
  store i8* %1, i8** %__mptr, align 8, !dbg !2696
  br label %do.body, !dbg !2696

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2697

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2696
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2696
  %3 = bitcast i8* %add.ptr to %struct.vdpa_device*, !dbg !2696
  store %struct.vdpa_device* %3, %struct.vdpa_device** %tmp, align 8, !dbg !2697
  %4 = load %struct.vdpa_device*, %struct.vdpa_device** %tmp, align 8, !dbg !2696
  ret %struct.vdpa_device* %4, !dbg !2699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.vdpa_driver* @drv_to_vdpa(%struct.device_driver* %driver) #0 !dbg !2700 {
entry:
  %driver.addr = alloca %struct.device_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.vdpa_driver*, align 8
  store %struct.device_driver* %driver, %struct.device_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %driver.addr, metadata !2703, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2705, metadata !DIExpression()), !dbg !2707
  %0 = load %struct.device_driver*, %struct.device_driver** %driver.addr, align 8, !dbg !2707
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !2707
  store i8* %1, i8** %__mptr, align 8, !dbg !2707
  br label %do.body, !dbg !2707

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2708

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2707
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2707
  %3 = bitcast i8* %add.ptr to %struct.vdpa_driver*, !dbg !2707
  store %struct.vdpa_driver* %3, %struct.vdpa_driver** %tmp, align 8, !dbg !2708
  %4 = load %struct.vdpa_driver*, %struct.vdpa_driver** %tmp, align 8, !dbg !2707
  ret %struct.vdpa_driver* %4, !dbg !2710
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

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
!llvm.module.flags = !{!2104, !2105, !2106, !2107}
!llvm.ident = !{!2108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vdpa_index_ida", scope: !2, file: !3, line: 15, type: !2101, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !68, globals: !2076, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/vdpa/vdpa.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !61}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !51, line: 11, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 10, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !62, line: 305, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!68 = !{!69, !71, !72, !2067}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 148, baseType: !7)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_device", file: !74, line: 46, size: 5824, elements: !75)
!74 = !DIFile(filename: "./include/linux/vdpa.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !1925, !1926, !2064, !2065, !2066}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !73, file: !74, line: 47, baseType: !77, size: 5568)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !78)
!78 = !{!79, !1576, !1578, !1581, !1582, !1633, !1711, !1712, !1713, !1714, !1715, !1724, !1829, !1842, !1845, !1846, !1850, !1852, !1853, !1854, !1858, !1864, !1865, !1868, !1872, !1875, !1878, !1879, !1880, !1881, !1913, !1914, !1915, !1918, !1921, !1922, !1923, !1924}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !77, file: !30, line: 462, baseType: !80, size: 512)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !81, line: 64, size: 512, elements: !82)
!81 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !87, !93, !95, !156, !1413, !1566, !1571, !1572, !1573, !1574, !1575}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !81, line: 65, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !80, file: !81, line: 66, baseType: !88, size: 128, offset: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !70, line: 178, size: 128, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !70, line: 179, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !70, line: 179, baseType: !91, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !81, line: 67, baseType: !94, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !81, line: 192, size: 704, elements: !98)
!98 = !{!99, !100, !116, !117}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !97, file: !81, line: 193, baseType: !88, size: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !97, file: !81, line: 194, baseType: !101, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !102, line: 83, baseType: !103)
!102 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !102, line: 71, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !102, line: 72, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !102, line: 72, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !106, file: !102, line: 73, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !102, line: 20, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !109, file: !102, line: 21, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !113, line: 25, baseType: !114)
!113 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 25, elements: !115)
!115 = !{}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !97, file: !81, line: 195, baseType: !80, size: 512, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !97, file: !81, line: 196, baseType: !118, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !81, line: 156, size: 192, elements: !121)
!121 = !{!122, !128, !133}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !120, file: !81, line: 157, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !96, !94}
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !120, file: !81, line: 158, baseType: !129, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!84, !96, !94}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !120, file: !81, line: 159, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!127, !96, !94, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !81, line: 148, size: 20736, elements: !140)
!140 = !{!141, !146, !150, !151, !155}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !139, file: !81, line: 149, baseType: !142, size: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 192, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !139, file: !81, line: 150, baseType: !147, size: 4096, offset: 192)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 4096, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !139, file: !81, line: 151, baseType: !127, size: 32, offset: 4288)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !139, file: !81, line: 152, baseType: !152, size: 16384, offset: 4320)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 16384, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 2048)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !139, file: !81, line: 153, baseType: !127, size: 32, offset: 20704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !80, file: !81, line: 69, baseType: !157, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !81, line: 138, size: 448, elements: !159)
!159 = !{!160, !164, !194, !196, !1359, !1392, !1396}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !158, file: !81, line: 139, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !94}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !158, file: !81, line: 140, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !168, line: 230, size: 128, elements: !169)
!168 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !186}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !167, file: !168, line: 231, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!174, !94, !179, !143}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !70, line: 60, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !176, line: 73, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !176, line: 15, baseType: !178)
!178 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !168, line: 30, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !168, line: 31, baseType: !84, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !180, file: !168, line: 32, baseType: !184, size: 16, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !70, line: 19, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !167, file: !168, line: 232, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!174, !94, !179, !84, !190}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 55, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !176, line: 72, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !176, line: 16, baseType: !193)
!193 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !158, file: !81, line: 141, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !158, file: !81, line: 142, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !168, line: 84, size: 320, elements: !201)
!201 = !{!202, !203, !207, !1356, !1357}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !168, line: 85, baseType: !84, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !200, file: !168, line: 86, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!184, !94, !179, !127}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !200, file: !168, line: 88, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!184, !94, !211, !127}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !168, line: 168, size: 448, elements: !213)
!213 = !{!214, !215, !216, !217, !227, !228}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !212, file: !168, line: 169, baseType: !180, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !168, line: 170, baseType: !190, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !212, file: !168, line: 171, baseType: !71, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !212, file: !168, line: 172, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!174, !221, !94, !211, !143, !224, !190}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !223, line: 526, flags: DIFlagFwdDecl)
!223 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !70, line: 46, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !176, line: 88, baseType: !226)
!226 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !212, file: !168, line: 174, baseType: !218, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !212, file: !168, line: 176, baseType: !229, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!127, !221, !94, !211, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !234, line: 305, size: 1472, elements: !235)
!234 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!235 = !{!236, !237, !238, !239, !240, !248, !249, !1330, !1336, !1337, !1342, !1343, !1346, !1350, !1351, !1352, !1353, !1354}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !233, file: !234, line: 308, baseType: !193, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !233, file: !234, line: 309, baseType: !193, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !233, file: !234, line: 313, baseType: !232, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !233, file: !234, line: 313, baseType: !232, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !233, file: !234, line: 315, baseType: !241, size: 192, align: 64, offset: 256)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !242, line: 24, size: 192, align: 64, elements: !243)
!242 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !245, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !241, file: !242, line: 25, baseType: !193, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !241, file: !242, line: 26, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !241, file: !242, line: 27, baseType: !246, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !233, file: !234, line: 323, baseType: !193, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !233, file: !234, line: 327, baseType: !250, size: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !234, line: 388, size: 7296, elements: !252)
!252 = !{!253, !1326}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !234, line: 389, baseType: !254, size: 7296)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !234, line: 389, size: 7296, elements: !255)
!255 = !{!256, !257, !261, !267, !271, !272, !273, !274, !275, !283, !288, !289, !290, !291, !300, !301, !302, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !337, !345, !348, !396, !397, !1296, !1297, !1300, !1304, !1305, !1308, !1309, !1310, !1313, !1325}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !254, file: !234, line: 390, baseType: !232, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !254, file: !234, line: 391, baseType: !258, size: 64, offset: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !242, line: 31, size: 64, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !258, file: !242, line: 32, baseType: !246, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !254, file: !234, line: 392, baseType: !262, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !263, line: 23, baseType: !264)
!263 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !265, line: 31, baseType: !266)
!265 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!266 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !254, file: !234, line: 394, baseType: !268, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!193, !221, !193, !193, !193, !193}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !254, file: !234, line: 398, baseType: !193, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !254, file: !234, line: 399, baseType: !193, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !254, file: !234, line: 405, baseType: !193, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !254, file: !234, line: 406, baseType: !193, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !254, file: !234, line: 407, baseType: !276, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !223, line: 286, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !223, line: 286, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !278, file: !223, line: 286, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !282, line: 18, baseType: !193)
!282 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !254, file: !234, line: 416, baseType: !284, size: 32, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 168, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 166, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !70, line: 167, baseType: !127, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !254, file: !234, line: 428, baseType: !284, size: 32, offset: 608)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !254, file: !234, line: 437, baseType: !284, size: 32, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !254, file: !234, line: 447, baseType: !284, size: 32, offset: 672)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !254, file: !234, line: 450, baseType: !292, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !293, line: 13, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !70, line: 175, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 173, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !295, file: !70, line: 174, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !263, line: 22, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !265, line: 30, baseType: !226)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !254, file: !234, line: 452, baseType: !127, size: 32, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !254, file: !234, line: 454, baseType: !101, offset: 800)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !254, file: !234, line: 457, baseType: !303, size: 256, offset: 832)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !304, line: 35, size: 256, elements: !305)
!304 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!305 = !{!306, !307, !308, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !303, file: !304, line: 36, baseType: !292, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !303, file: !304, line: 42, baseType: !292, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !303, file: !304, line: 46, baseType: !309, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !102, line: 29, baseType: !109)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !303, file: !304, line: 47, baseType: !88, size: 128, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !254, file: !234, line: 459, baseType: !88, size: 128, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !254, file: !234, line: 466, baseType: !193, size: 64, offset: 1216)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !254, file: !234, line: 467, baseType: !193, size: 64, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !254, file: !234, line: 469, baseType: !193, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !254, file: !234, line: 470, baseType: !193, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !254, file: !234, line: 471, baseType: !294, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !254, file: !234, line: 472, baseType: !193, size: 64, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !254, file: !234, line: 473, baseType: !193, size: 64, offset: 1600)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !254, file: !234, line: 474, baseType: !193, size: 64, offset: 1664)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !254, file: !234, line: 475, baseType: !193, size: 64, offset: 1728)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !254, file: !234, line: 477, baseType: !101, offset: 1792)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1792)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1856)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1920)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !254, file: !234, line: 478, baseType: !193, size: 64, offset: 1984)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !254, file: !234, line: 479, baseType: !193, size: 64, offset: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !254, file: !234, line: 479, baseType: !193, size: 64, offset: 2112)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !254, file: !234, line: 479, baseType: !193, size: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2240)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2304)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2368)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !254, file: !234, line: 480, baseType: !193, size: 64, offset: 2432)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !254, file: !234, line: 482, baseType: !334, size: 2816, offset: 2496)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2816, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 44)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !254, file: !234, line: 488, baseType: !338, size: 256, offset: 5312)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !339, line: 60, size: 256, elements: !340)
!339 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !338, file: !339, line: 61, baseType: !342, size: 256)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 4)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !254, file: !234, line: 490, baseType: !346, size: 64, offset: 5568)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !234, line: 490, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !254, file: !234, line: 493, baseType: !349, size: 896, offset: 5632)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !350, line: 53, baseType: !351)
!350 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 13, size: 896, elements: !352)
!352 = !{!353, !354, !355, !356, !359, !360, !367, !368, !388, !389, !392}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !351, file: !350, line: 18, baseType: !262, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !351, file: !350, line: 28, baseType: !294, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !351, file: !350, line: 31, baseType: !303, size: 256, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !351, file: !350, line: 32, baseType: !357, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !350, line: 32, flags: DIFlagFwdDecl)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !351, file: !350, line: 37, baseType: !185, size: 16, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !350, line: 40, baseType: !361, size: 192, offset: 512)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !362, line: 53, size: 192, elements: !363)
!362 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !361, file: !362, line: 54, baseType: !292, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !361, file: !362, line: 55, baseType: !101, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !361, file: !362, line: 59, baseType: !88, size: 128, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !351, file: !350, line: 41, baseType: !71, size: 64, offset: 704)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !351, file: !350, line: 42, baseType: !369, size: 64, offset: 768)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !372, line: 13, size: 896, elements: !373)
!372 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !371, file: !372, line: 14, baseType: !71, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !371, file: !372, line: 15, baseType: !193, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !371, file: !372, line: 17, baseType: !193, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !371, file: !372, line: 17, baseType: !193, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !371, file: !372, line: 19, baseType: !178, size: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !371, file: !372, line: 21, baseType: !178, size: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !371, file: !372, line: 22, baseType: !178, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !371, file: !372, line: 23, baseType: !178, size: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !371, file: !372, line: 24, baseType: !178, size: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !371, file: !372, line: 25, baseType: !178, size: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !371, file: !372, line: 26, baseType: !178, size: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !371, file: !372, line: 27, baseType: !178, size: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !371, file: !372, line: 28, baseType: !178, size: 64, offset: 768)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !371, file: !372, line: 29, baseType: !178, size: 64, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !351, file: !350, line: 44, baseType: !284, size: 32, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !351, file: !350, line: 50, baseType: !390, size: 16, offset: 864)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !263, line: 19, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !265, line: 24, baseType: !185)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !351, file: !350, line: 51, baseType: !393, size: 16, offset: 880)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !263, line: 18, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !265, line: 23, baseType: !395)
!395 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !234, line: 495, baseType: !193, size: 64, offset: 6528)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !254, file: !234, line: 497, baseType: !398, size: 64, offset: 6592)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !234, line: 381, size: 384, elements: !400)
!400 = !{!401, !402, !1295}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !399, file: !234, line: 382, baseType: !284, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !399, file: !234, line: 383, baseType: !403, size: 128, offset: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !234, line: 376, size: 128, elements: !404)
!404 = !{!405, !1293}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !403, file: !234, line: 377, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !408, line: 640, size: 48640, elements: !409)
!408 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!409 = !{!410, !418, !420, !421, !427, !428, !429, !430, !431, !432, !433, !434, !438, !456, !467, !562, !563, !564, !575, !576, !578, !579, !580, !581, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !660, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !716, !718, !719, !720, !732, !734, !735, !736, !737, !738, !744, !745, !746, !747, !748, !749, !750, !762, !767, !772, !773, !774, !777, !781, !784, !787, !790, !793, !797, !800, !803, !809, !810, !811, !817, !818, !819, !820, !821, !830, !831, !832, !833, !834, !839, !840, !841, !844, !845, !848, !851, !854, !857, !860, !863, !864, !944, !947, !950, !951, !954, !955, !956, !962, !963, !964, !977, !978, !979, !991, !996, !999, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !407, file: !408, line: 646, baseType: !411, size: 128)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !412, line: 56, size: 128, elements: !413)
!412 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !412, line: 57, baseType: !193, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !411, file: !412, line: 58, baseType: !416, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !263, line: 21, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !265, line: 27, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !407, file: !408, line: 649, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !178)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !407, file: !408, line: 657, baseType: !71, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !407, file: !408, line: 658, baseType: !422, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !423, line: 113, baseType: !424)
!423 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !423, line: 111, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !424, file: !423, line: 112, baseType: !284, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !408, line: 660, baseType: !7, size: 32, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !407, file: !408, line: 661, baseType: !7, size: 32, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !407, file: !408, line: 684, baseType: !127, size: 32, offset: 352)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !407, file: !408, line: 686, baseType: !127, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !407, file: !408, line: 687, baseType: !127, size: 32, offset: 416)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !407, file: !408, line: 688, baseType: !127, size: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !407, file: !408, line: 689, baseType: !7, size: 32, offset: 480)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !407, file: !408, line: 691, baseType: !435, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !408, line: 691, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !407, file: !408, line: 692, baseType: !439, size: 832, offset: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !408, line: 451, size: 832, elements: !440)
!440 = !{!441, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !439, file: !408, line: 453, baseType: !442, size: 128)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !408, line: 325, size: 128, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !442, file: !408, line: 326, baseType: !193, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !442, file: !408, line: 327, baseType: !416, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !439, file: !408, line: 454, baseType: !241, size: 192, align: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !439, file: !408, line: 455, baseType: !88, size: 128, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !439, file: !408, line: 456, baseType: !7, size: 32, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !439, file: !408, line: 458, baseType: !262, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !439, file: !408, line: 459, baseType: !262, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !439, file: !408, line: 460, baseType: !262, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !439, file: !408, line: 461, baseType: !262, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !439, file: !408, line: 463, baseType: !262, size: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !439, file: !408, line: 465, baseType: !455, offset: 832)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !408, line: 415, elements: !115)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !407, file: !408, line: 693, baseType: !457, size: 384, offset: 1408)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !408, line: 489, size: 384, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !457, file: !408, line: 490, baseType: !88, size: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !457, file: !408, line: 491, baseType: !193, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !457, file: !408, line: 492, baseType: !193, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !457, file: !408, line: 493, baseType: !7, size: 32, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !457, file: !408, line: 494, baseType: !185, size: 16, offset: 288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !457, file: !408, line: 495, baseType: !185, size: 16, offset: 304)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !457, file: !408, line: 497, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !407, file: !408, line: 697, baseType: !468, size: 1792, offset: 1792)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !408, line: 507, size: 1792, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !559, !560}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !468, file: !408, line: 508, baseType: !241, size: 192, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !468, file: !408, line: 515, baseType: !262, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !468, file: !408, line: 516, baseType: !262, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !468, file: !408, line: 517, baseType: !262, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !468, file: !408, line: 518, baseType: !262, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !468, file: !408, line: 519, baseType: !262, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !468, file: !408, line: 526, baseType: !298, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !468, file: !408, line: 527, baseType: !262, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !408, line: 528, baseType: !7, size: 32, offset: 640)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !468, file: !408, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !468, file: !408, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !468, file: !408, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !468, file: !408, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !468, file: !408, line: 563, baseType: !484, size: 512, offset: 704)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !485)
!485 = !{!486, !494, !495, !500, !552, !556, !557, !558}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !484, file: !6, line: 119, baseType: !487, size: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !488, line: 9, size: 256, elements: !489)
!488 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !488, line: 10, baseType: !241, size: 192, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !487, file: !488, line: 11, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !493, line: 29, baseType: !298)
!493 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !484, file: !6, line: 120, baseType: !492, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !484, file: !6, line: 121, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!5, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !484, file: !6, line: 122, baseType: !501, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !503)
!503 = !{!504, !524, !525, !528, !538, !539, !547, !551}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !502, file: !6, line: 160, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !6, line: 215, baseType: !309)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !506, file: !6, line: 216, baseType: !7, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !506, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !506, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !506, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !506, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !506, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !506, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !506, file: !6, line: 233, baseType: !492, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !506, file: !6, line: 234, baseType: !499, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !506, file: !6, line: 235, baseType: !492, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !506, file: !6, line: 236, baseType: !499, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !506, file: !6, line: 237, baseType: !521, size: 4096, offset: 512)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 4096, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 8)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !502, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !502, file: !6, line: 162, baseType: !526, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !70, line: 27, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !176, line: 96, baseType: !127)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !502, file: !6, line: 163, baseType: !529, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !530, line: 276, baseType: !531)
!530 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !530, line: 276, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !531, file: !530, line: 276, baseType: !534, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !530, line: 70, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !530, line: 65, size: 32, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !535, file: !530, line: 66, baseType: !7, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !502, file: !6, line: 164, baseType: !499, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !502, file: !6, line: 165, baseType: !540, size: 128, offset: 256)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !488, line: 14, size: 128, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !540, file: !488, line: 15, baseType: !543, size: 128)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !242, line: 125, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !543, file: !242, line: 126, baseType: !258, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !543, file: !242, line: 127, baseType: !246, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !502, file: !6, line: 166, baseType: !548, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!492}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !502, file: !6, line: 167, baseType: !492, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !484, file: !6, line: 123, baseType: !553, size: 8, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !263, line: 17, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !265, line: 21, baseType: !555)
!555 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !484, file: !6, line: 124, baseType: !553, size: 8, offset: 456)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !484, file: !6, line: 125, baseType: !553, size: 8, offset: 464)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !484, file: !6, line: 126, baseType: !553, size: 8, offset: 472)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !468, file: !408, line: 572, baseType: !484, size: 512, offset: 1216)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !468, file: !408, line: 580, baseType: !561, size: 64, offset: 1728)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !407, file: !408, line: 721, baseType: !7, size: 32, offset: 3584)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !407, file: !408, line: 722, baseType: !127, size: 32, offset: 3616)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !407, file: !408, line: 723, baseType: !565, size: 64, offset: 3648)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !568, line: 17, baseType: !569)
!568 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !568, line: 17, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !569, file: !568, line: 17, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 64, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 1)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !407, file: !408, line: 724, baseType: !567, size: 64, offset: 3712)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !407, file: !408, line: 749, baseType: !577, offset: 3776)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !408, line: 290, elements: !115)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !407, file: !408, line: 751, baseType: !88, size: 128, offset: 3776)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !407, file: !408, line: 757, baseType: !250, size: 64, offset: 3904)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !407, file: !408, line: 758, baseType: !250, size: 64, offset: 3968)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !407, file: !408, line: 761, baseType: !582, size: 320, offset: 4032)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !339, line: 34, size: 320, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !582, file: !339, line: 35, baseType: !262, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !582, file: !339, line: 36, baseType: !586, size: 256, offset: 64)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !343)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !407, file: !408, line: 766, baseType: !127, size: 32, offset: 4352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !407, file: !408, line: 767, baseType: !127, size: 32, offset: 4384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !407, file: !408, line: 768, baseType: !127, size: 32, offset: 4416)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !407, file: !408, line: 770, baseType: !127, size: 32, offset: 4448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !407, file: !408, line: 772, baseType: !193, size: 64, offset: 4480)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !407, file: !408, line: 775, baseType: !7, size: 32, offset: 4544)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !407, file: !408, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !407, file: !408, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !407, file: !408, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !407, file: !408, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !407, file: !408, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !407, file: !408, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !407, file: !408, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !407, file: !408, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !407, file: !408, line: 831, baseType: !193, size: 64, offset: 4672)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !407, file: !408, line: 833, baseType: !603, size: 384, offset: 4736)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !604)
!604 = !{!605, !610}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !603, file: !12, line: 26, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!178, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !12, line: 27, baseType: !611, size: 320, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !12, line: 27, size: 320, elements: !612)
!612 = !{!613, !623, !650}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !611, file: !12, line: 36, baseType: !614, size: 320)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !611, file: !12, line: 29, size: 320, elements: !615)
!615 = !{!616, !618, !619, !620, !621, !622}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !614, file: !12, line: 30, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !614, file: !12, line: 31, baseType: !416, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !12, line: 32, baseType: !416, size: 32, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !614, file: !12, line: 33, baseType: !416, size: 32, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !614, file: !12, line: 34, baseType: !262, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !614, file: !12, line: 35, baseType: !617, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !611, file: !12, line: 46, baseType: !624, size: 192)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !611, file: !12, line: 38, size: 192, elements: !625)
!625 = !{!626, !627, !628, !649}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !624, file: !12, line: 39, baseType: !526, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !12, line: 41, baseType: !629, size: 64, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !12, line: 41, size: 64, elements: !630)
!630 = !{!631, !639}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !629, file: !12, line: 42, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !634, line: 7, size: 128, elements: !635)
!634 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!635 = !{!636, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !633, file: !634, line: 8, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !176, line: 93, baseType: !226)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !633, file: !634, line: 9, baseType: !226, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !629, file: !12, line: 43, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !642, line: 7, size: 64, elements: !643)
!642 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !648}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !641, file: !642, line: 8, baseType: !645, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !642, line: 5, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !263, line: 20, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !265, line: 26, baseType: !127)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !641, file: !642, line: 9, baseType: !646, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !624, file: !12, line: 45, baseType: !262, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !611, file: !12, line: 54, baseType: !651, size: 256)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !611, file: !12, line: 48, size: 256, elements: !652)
!652 = !{!653, !656, !657, !658, !659}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !651, file: !12, line: 49, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !651, file: !12, line: 50, baseType: !127, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !651, file: !12, line: 51, baseType: !127, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !651, file: !12, line: 52, baseType: !193, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !651, file: !12, line: 53, baseType: !193, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !407, file: !408, line: 835, baseType: !661, size: 32, offset: 5120)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !70, line: 22, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !176, line: 28, baseType: !127)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !407, file: !408, line: 836, baseType: !661, size: 32, offset: 5152)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !407, file: !408, line: 840, baseType: !193, size: 64, offset: 5184)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !407, file: !408, line: 849, baseType: !406, size: 64, offset: 5248)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !407, file: !408, line: 852, baseType: !406, size: 64, offset: 5312)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !407, file: !408, line: 857, baseType: !88, size: 128, offset: 5376)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !407, file: !408, line: 858, baseType: !88, size: 128, offset: 5504)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !407, file: !408, line: 859, baseType: !406, size: 64, offset: 5632)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !407, file: !408, line: 867, baseType: !88, size: 128, offset: 5696)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !407, file: !408, line: 868, baseType: !88, size: 128, offset: 5824)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !407, file: !408, line: 871, baseType: !673, size: 64, offset: 5952)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !675, line: 59, size: 768, elements: !676)
!675 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !678, !679, !680, !691, !692, !699, !708}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !674, file: !675, line: 61, baseType: !422, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !674, file: !675, line: 62, baseType: !7, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !674, file: !675, line: 63, baseType: !101, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !674, file: !675, line: 65, baseType: !681, size: 256, offset: 64)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 256, elements: !343)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !70, line: 182, size: 64, elements: !683)
!683 = !{!684}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !682, file: !70, line: 183, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !70, line: 186, size: 128, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !686, file: !70, line: 187, baseType: !685, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !686, file: !70, line: 187, baseType: !690, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !674, file: !675, line: 66, baseType: !682, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !674, file: !675, line: 68, baseType: !693, size: 128, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !694, line: 40, baseType: !695)
!694 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !694, line: 36, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !695, file: !694, line: 37, baseType: !101)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !695, file: !694, line: 38, baseType: !88, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !674, file: !675, line: 69, baseType: !700, size: 128, align: 64, offset: 512)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !70, line: 216, size: 128, align: 64, elements: !701)
!701 = !{!702, !704}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !70, line: 217, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !700, file: !70, line: 218, baseType: !705, size: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{null, !703}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !674, file: !675, line: 70, baseType: !709, size: 128, offset: 640)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 128, elements: !573)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !675, line: 54, size: 128, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !710, file: !675, line: 55, baseType: !127, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !710, file: !675, line: 56, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !675, line: 56, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !407, file: !408, line: 872, baseType: !717, size: 512, offset: 6016)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 512, elements: !343)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !407, file: !408, line: 873, baseType: !88, size: 128, offset: 6528)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !407, file: !408, line: 874, baseType: !88, size: 128, offset: 6656)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !407, file: !408, line: 876, baseType: !721, size: 64, offset: 6784)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !723, line: 26, size: 192, elements: !724)
!723 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !722, file: !723, line: 27, baseType: !7, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !722, file: !723, line: 28, baseType: !727, size: 128, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !728, line: 43, size: 128, elements: !729)
!728 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !728, line: 44, baseType: !309)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !727, file: !728, line: 45, baseType: !88, size: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !407, file: !408, line: 879, baseType: !733, size: 64, offset: 6848)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !407, file: !408, line: 882, baseType: !733, size: 64, offset: 6912)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !407, file: !408, line: 884, baseType: !262, size: 64, offset: 6976)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !407, file: !408, line: 885, baseType: !262, size: 64, offset: 7040)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !407, file: !408, line: 890, baseType: !262, size: 64, offset: 7104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !407, file: !408, line: 891, baseType: !739, size: 128, offset: 7168)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !408, line: 242, size: 128, elements: !740)
!740 = !{!741, !742, !743}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !739, file: !408, line: 244, baseType: !262, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !739, file: !408, line: 245, baseType: !262, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !739, file: !408, line: 246, baseType: !309, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !407, file: !408, line: 900, baseType: !193, size: 64, offset: 7296)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !407, file: !408, line: 901, baseType: !193, size: 64, offset: 7360)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !407, file: !408, line: 904, baseType: !262, size: 64, offset: 7424)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !407, file: !408, line: 907, baseType: !262, size: 64, offset: 7488)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !407, file: !408, line: 910, baseType: !193, size: 64, offset: 7552)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !407, file: !408, line: 911, baseType: !193, size: 64, offset: 7616)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !407, file: !408, line: 914, baseType: !751, size: 640, offset: 7680)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !752, line: 123, size: 640, elements: !753)
!752 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !760, !761}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !751, file: !752, line: 124, baseType: !755, size: 576)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 576, elements: !144)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !752, line: 108, size: 192, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !756, file: !752, line: 109, baseType: !262, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !756, file: !752, line: 110, baseType: !540, size: 128, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !751, file: !752, line: 125, baseType: !7, size: 32, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !751, file: !752, line: 126, baseType: !7, size: 32, offset: 608)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !407, file: !408, line: 917, baseType: !763, size: 192, offset: 8320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !752, line: 134, size: 192, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !763, file: !752, line: 135, baseType: !700, size: 128, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !763, file: !752, line: 136, baseType: !7, size: 32, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !407, file: !408, line: 923, baseType: !768, size: 64, offset: 8512)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !771, line: 11, flags: DIFlagFwdDecl)
!771 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!772 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !407, file: !408, line: 926, baseType: !768, size: 64, offset: 8576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !407, file: !408, line: 929, baseType: !768, size: 64, offset: 8640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !407, file: !408, line: 933, baseType: !775, size: 64, offset: 8704)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !408, line: 933, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !407, file: !408, line: 943, baseType: !778, size: 128, offset: 8768)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, elements: !779)
!779 = !{!780}
!780 = !DISubrange(count: 16)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !407, file: !408, line: 945, baseType: !782, size: 64, offset: 8896)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !408, line: 49, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !407, file: !408, line: 956, baseType: !785, size: 64, offset: 8960)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !408, line: 45, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !407, file: !408, line: 959, baseType: !788, size: 64, offset: 9024)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !408, line: 959, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !407, file: !408, line: 962, baseType: !791, size: 64, offset: 9088)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !408, line: 66, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !407, file: !408, line: 966, baseType: !794, size: 64, offset: 9152)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !796, line: 35, flags: DIFlagFwdDecl)
!796 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!797 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !407, file: !408, line: 969, baseType: !798, size: 64, offset: 9216)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !752, line: 223, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !407, file: !408, line: 970, baseType: !801, size: 64, offset: 9280)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !408, line: 62, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !407, file: !408, line: 971, baseType: !804, size: 64, offset: 9344)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !805, line: 25, baseType: !806)
!805 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !805, line: 23, size: 64, elements: !807)
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !806, file: !805, line: 24, baseType: !572, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !407, file: !408, line: 972, baseType: !804, size: 64, offset: 9408)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !407, file: !408, line: 974, baseType: !804, size: 64, offset: 9472)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !407, file: !408, line: 975, baseType: !812, size: 192, offset: 9536)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !813, line: 30, size: 192, elements: !814)
!813 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !812, file: !813, line: 31, baseType: !88, size: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !812, file: !813, line: 32, baseType: !804, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !407, file: !408, line: 976, baseType: !193, size: 64, offset: 9728)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !407, file: !408, line: 977, baseType: !190, size: 64, offset: 9792)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !407, file: !408, line: 978, baseType: !7, size: 32, offset: 9856)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !407, file: !408, line: 980, baseType: !703, size: 64, offset: 9920)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !407, file: !408, line: 989, baseType: !822, size: 128, offset: 9984)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !823, line: 35, size: 128, elements: !824)
!823 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !822, file: !823, line: 36, baseType: !127, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !822, file: !823, line: 37, baseType: !284, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !822, file: !823, line: 38, baseType: !828, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !823, line: 23, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !407, file: !408, line: 992, baseType: !262, size: 64, offset: 10112)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !407, file: !408, line: 993, baseType: !262, size: 64, offset: 10176)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !407, file: !408, line: 996, baseType: !101, offset: 10240)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !407, file: !408, line: 999, baseType: !309, offset: 10240)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !407, file: !408, line: 1001, baseType: !835, size: 64, offset: 10240)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !408, line: 636, size: 64, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !835, file: !408, line: 637, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !407, file: !408, line: 1005, baseType: !543, size: 128, offset: 10304)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !407, file: !408, line: 1007, baseType: !406, size: 64, offset: 10432)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !407, file: !408, line: 1009, baseType: !842, size: 64, offset: 10496)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !408, line: 1009, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !407, file: !408, line: 1043, baseType: !71, size: 64, offset: 10560)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !407, file: !408, line: 1046, baseType: !846, size: 64, offset: 10624)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !408, line: 41, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !407, file: !408, line: 1050, baseType: !849, size: 64, offset: 10688)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !408, line: 42, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !407, file: !408, line: 1054, baseType: !852, size: 64, offset: 10752)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !408, line: 55, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !407, file: !408, line: 1056, baseType: !855, size: 64, offset: 10816)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !408, line: 40, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !407, file: !408, line: 1058, baseType: !858, size: 64, offset: 10880)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !408, line: 47, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !407, file: !408, line: 1061, baseType: !861, size: 64, offset: 10944)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !408, line: 43, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !407, file: !408, line: 1064, baseType: !193, size: 64, offset: 11008)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !407, file: !408, line: 1065, baseType: !865, size: 64, offset: 11072)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !813, line: 14, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !813, line: 12, size: 384, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !813, line: 13, baseType: !870, size: 384)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !867, file: !813, line: 13, size: 384, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !870, file: !813, line: 13, baseType: !127, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !870, file: !813, line: 13, baseType: !127, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !870, file: !813, line: 13, baseType: !127, size: 32, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !870, file: !813, line: 13, baseType: !876, size: 256, offset: 128)
!876 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !877, line: 32, size: 256, elements: !878)
!877 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!878 = !{!879, !885, !898, !904, !913, !933, !938}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !876, file: !877, line: 37, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 34, size: 64, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !880, file: !877, line: 35, baseType: !662, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !880, file: !877, line: 36, baseType: !884, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !176, line: 49, baseType: !7)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !876, file: !877, line: 45, baseType: !886, size: 192)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 40, size: 192, elements: !887)
!887 = !{!888, !890, !891, !897}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !886, file: !877, line: 41, baseType: !889, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !176, line: 95, baseType: !127)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !886, file: !877, line: 42, baseType: !127, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !886, file: !877, line: 43, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !877, line: 11, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !877, line: 8, size: 64, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !893, file: !877, line: 9, baseType: !127, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !893, file: !877, line: 10, baseType: !71, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !886, file: !877, line: 44, baseType: !127, size: 32, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !876, file: !877, line: 52, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 48, size: 128, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !899, file: !877, line: 49, baseType: !662, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !899, file: !877, line: 50, baseType: !884, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !899, file: !877, line: 51, baseType: !892, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !876, file: !877, line: 61, baseType: !905, size: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 55, size: 256, elements: !906)
!906 = !{!907, !908, !909, !910, !912}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !905, file: !877, line: 56, baseType: !662, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !905, file: !877, line: 57, baseType: !884, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !905, file: !877, line: 58, baseType: !127, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !905, file: !877, line: 59, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !176, line: 94, baseType: !177)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !905, file: !877, line: 60, baseType: !911, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !876, file: !877, line: 95, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 64, size: 256, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !914, file: !877, line: 65, baseType: !71, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !877, line: 77, baseType: !918, size: 192, offset: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !914, file: !877, line: 77, size: 192, elements: !919)
!919 = !{!920, !921, !928}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !918, file: !877, line: 82, baseType: !395, size: 16)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !918, file: !877, line: 88, baseType: !922, size: 192)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !877, line: 84, size: 192, elements: !923)
!923 = !{!924, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !922, file: !877, line: 85, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !522)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !922, file: !877, line: 86, baseType: !71, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !922, file: !877, line: 87, baseType: !71, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !918, file: !877, line: 93, baseType: !929, size: 96)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !877, line: 90, size: 96, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !929, file: !877, line: 91, baseType: !925, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !929, file: !877, line: 92, baseType: !417, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !876, file: !877, line: 101, baseType: !934, size: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 98, size: 128, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !934, file: !877, line: 99, baseType: !178, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !934, file: !877, line: 100, baseType: !127, size: 32, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !876, file: !877, line: 108, baseType: !939, size: 128)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !876, file: !877, line: 104, size: 128, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !939, file: !877, line: 105, baseType: !71, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !939, file: !877, line: 106, baseType: !127, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !939, file: !877, line: 107, baseType: !7, size: 32, offset: 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !407, file: !408, line: 1067, baseType: !945, offset: 11136)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !946, line: 12, elements: !115)
!946 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !407, file: !408, line: 1099, baseType: !948, size: 64, offset: 11136)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !408, line: 56, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !407, file: !408, line: 1103, baseType: !88, size: 128, offset: 11200)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !407, file: !408, line: 1104, baseType: !952, size: 64, offset: 11328)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !408, line: 46, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !407, file: !408, line: 1105, baseType: !361, size: 192, offset: 11392)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !407, file: !408, line: 1106, baseType: !7, size: 32, offset: 11584)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !407, file: !408, line: 1109, baseType: !957, size: 128, offset: 11648)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !958, size: 128, elements: !960)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !408, line: 51, flags: DIFlagFwdDecl)
!960 = !{!961}
!961 = !DISubrange(count: 2)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !407, file: !408, line: 1110, baseType: !361, size: 192, offset: 11776)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !407, file: !408, line: 1111, baseType: !88, size: 128, offset: 11968)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !407, file: !408, line: 1173, baseType: !965, size: 64, offset: 12096)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !967, line: 62, size: 256, align: 256, elements: !968)
!967 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!968 = !{!969, !970, !971, !976}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !966, file: !967, line: 75, baseType: !417, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !966, file: !967, line: 90, baseType: !417, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !966, file: !967, line: 124, baseType: !972, size: 64, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 109, size: 64, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !972, file: !967, line: 110, baseType: !264, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !972, file: !967, line: 112, baseType: !264, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 144, baseType: !417, size: 32, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !407, file: !408, line: 1174, baseType: !416, size: 32, offset: 12160)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !407, file: !408, line: 1179, baseType: !193, size: 64, offset: 12224)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !407, file: !408, line: 1182, baseType: !980, size: 128, offset: 12288)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !339, line: 76, size: 128, elements: !981)
!981 = !{!982, !987, !990}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !980, file: !339, line: 85, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !984, line: 7, size: 64, elements: !985)
!984 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !983, file: !984, line: 12, baseType: !569, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !980, file: !339, line: 88, baseType: !988, size: 8, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 30, baseType: !989)
!989 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !980, file: !339, line: 95, baseType: !988, size: 8, offset: 72)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !408, line: 1184, baseType: !992, size: 128, offset: 12416)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !408, line: 1184, size: 128, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !992, file: !408, line: 1185, baseType: !422, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !992, file: !408, line: 1186, baseType: !700, size: 128, align: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !407, file: !408, line: 1190, baseType: !997, size: 64, offset: 12544)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !408, line: 53, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !407, file: !408, line: 1192, baseType: !1000, size: 128, offset: 12608)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !339, line: 64, size: 128, elements: !1001)
!1001 = !{!1002, !1095, !1096}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1000, file: !339, line: 65, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !234, line: 68, size: 512, align: 128, elements: !1005)
!1005 = !{!1006, !1007, !1087, !1094}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !234, line: 69, baseType: !193, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !234, line: 77, baseType: !1008, size: 320, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !234, line: 77, size: 320, elements: !1009)
!1009 = !{!1010, !1019, !1024, !1052, !1060, !1066, !1079, !1086}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 78, baseType: !1011, size: 320)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 78, size: 320, elements: !1012)
!1012 = !{!1013, !1014, !1017, !1018}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1011, file: !234, line: 84, baseType: !88, size: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1011, file: !234, line: 86, baseType: !1015, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !234, line: 26, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1011, file: !234, line: 87, baseType: !193, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1011, file: !234, line: 94, baseType: !193, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 96, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 96, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1020, file: !234, line: 101, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !70, line: 143, baseType: !262)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 103, baseType: !1025, size: 320)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 103, size: 320, elements: !1026)
!1026 = !{!1027, !1037, !1040, !1041}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !234, line: 104, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !234, line: 104, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1028, file: !234, line: 105, baseType: !88, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1028, file: !234, line: 106, baseType: !1032, size: 128)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1028, file: !234, line: 106, size: 128, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1032, file: !234, line: 107, baseType: !1003, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1032, file: !234, line: 109, baseType: !127, size: 32, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1032, file: !234, line: 110, baseType: !127, size: 32, offset: 96)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1025, file: !234, line: 117, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !234, line: 117, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1025, file: !234, line: 119, baseType: !71, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !234, line: 120, baseType: !1042, size: 64, offset: 256)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1025, file: !234, line: 120, size: 64, elements: !1043)
!1043 = !{!1044, !1045, !1046}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1042, file: !234, line: 121, baseType: !71, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1042, file: !234, line: 122, baseType: !193, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !234, line: 123, baseType: !1047, size: 32)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !234, line: 123, size: 32, elements: !1048)
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1047, file: !234, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1047, file: !234, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1047, file: !234, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 130, baseType: !1053, size: 192)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 130, size: 192, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1053, file: !234, line: 131, baseType: !193, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1053, file: !234, line: 134, baseType: !555, size: 8, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1053, file: !234, line: 135, baseType: !555, size: 8, offset: 72)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1053, file: !234, line: 136, baseType: !284, size: 32, offset: 96)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1053, file: !234, line: 137, baseType: !7, size: 32, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 139, baseType: !1061, size: 256)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 139, size: 256, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1061, file: !234, line: 140, baseType: !193, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1061, file: !234, line: 141, baseType: !284, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1061, file: !234, line: 143, baseType: !88, size: 128, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 145, baseType: !1067, size: 256)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 145, size: 256, elements: !1068)
!1068 = !{!1069, !1070, !1072, !1073, !1078}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1067, file: !234, line: 146, baseType: !193, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1067, file: !234, line: 147, baseType: !1071, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !223, line: 509, baseType: !1003)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1067, file: !234, line: 148, baseType: !193, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !234, line: 149, baseType: !1074, size: 64, offset: 192)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !234, line: 149, size: 64, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1074, file: !234, line: 150, baseType: !250, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1074, file: !234, line: 151, baseType: !284, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1067, file: !234, line: 156, baseType: !101, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !234, line: 159, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !234, line: 159, size: 128, elements: !1081)
!1081 = !{!1082, !1085}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1080, file: !234, line: 161, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !234, line: 161, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1080, file: !234, line: 162, baseType: !71, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1008, file: !234, line: 176, baseType: !700, size: 128, align: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !234, line: 179, baseType: !1088, size: 32, offset: 384)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !234, line: 179, size: 32, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1088, file: !234, line: 184, baseType: !284, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1088, file: !234, line: 192, baseType: !7, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1088, file: !234, line: 194, baseType: !7, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1088, file: !234, line: 195, baseType: !127, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1004, file: !234, line: 199, baseType: !284, size: 32, offset: 416)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1000, file: !339, line: 67, baseType: !417, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1000, file: !339, line: 68, baseType: !417, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !407, file: !408, line: 1206, baseType: !127, size: 32, offset: 12736)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !407, file: !408, line: 1207, baseType: !127, size: 32, offset: 12768)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !407, file: !408, line: 1209, baseType: !193, size: 64, offset: 12800)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !407, file: !408, line: 1219, baseType: !262, size: 64, offset: 12864)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !407, file: !408, line: 1220, baseType: !262, size: 64, offset: 12928)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !407, file: !408, line: 1317, baseType: !127, size: 32, offset: 12992)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !407, file: !408, line: 1319, baseType: !406, size: 64, offset: 13056)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !407, file: !408, line: 1322, baseType: !1105, size: 64, offset: 13120)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1107, line: 9, flags: DIFlagFwdDecl)
!1107 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !407, file: !408, line: 1326, baseType: !422, size: 32, offset: 13184)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !407, file: !408, line: 1342, baseType: !71, size: 64, offset: 13248)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !407, file: !408, line: 1343, baseType: !264, size: 64, offset: 13312)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !407, file: !408, line: 1344, baseType: !262, size: 64, offset: 13376)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !407, file: !408, line: 1345, baseType: !264, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !407, file: !408, line: 1346, baseType: !264, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !407, file: !408, line: 1347, baseType: !264, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !407, file: !408, line: 1348, baseType: !700, size: 128, align: 64, offset: 13504)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !407, file: !408, line: 1358, baseType: !1117, size: 34816, offset: 13824)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1118, line: 485, size: 34816, elements: !1119)
!1118 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1149, !1150, !1151, !1152, !1153, !1154, !1157, !1158, !1159}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1117, file: !1118, line: 487, baseType: !1121, size: 192)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1122, size: 192, elements: !144)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1123, line: 16, size: 64, elements: !1124)
!1123 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1122, file: !1123, line: 17, baseType: !390, size: 16)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1122, file: !1123, line: 18, baseType: !390, size: 16, offset: 16)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1122, file: !1123, line: 19, baseType: !390, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1122, file: !1123, line: 19, baseType: !390, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1122, file: !1123, line: 19, baseType: !390, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1122, file: !1123, line: 19, baseType: !390, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1122, file: !1123, line: 19, baseType: !390, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1122, file: !1123, line: 20, baseType: !390, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1122, file: !1123, line: 20, baseType: !390, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1122, file: !1123, line: 20, baseType: !390, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1122, file: !1123, line: 20, baseType: !390, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1122, file: !1123, line: 20, baseType: !390, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1122, file: !1123, line: 20, baseType: !390, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1117, file: !1118, line: 491, baseType: !193, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1117, file: !1118, line: 495, baseType: !185, size: 16, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1117, file: !1118, line: 496, baseType: !185, size: 16, offset: 272)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1117, file: !1118, line: 497, baseType: !185, size: 16, offset: 288)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1117, file: !1118, line: 498, baseType: !185, size: 16, offset: 304)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1117, file: !1118, line: 502, baseType: !193, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1117, file: !1118, line: 503, baseType: !193, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1117, file: !1118, line: 514, baseType: !1146, size: 256, offset: 448)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 256, elements: !343)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1118, line: 483, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1117, file: !1118, line: 516, baseType: !193, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1117, file: !1118, line: 518, baseType: !193, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1117, file: !1118, line: 520, baseType: !193, size: 64, offset: 832)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1117, file: !1118, line: 521, baseType: !193, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1117, file: !1118, line: 522, baseType: !193, size: 64, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1117, file: !1118, line: 528, baseType: !1155, size: 64, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1118, line: 10, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1117, file: !1118, line: 535, baseType: !193, size: 64, offset: 1088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1117, file: !1118, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1117, file: !1118, line: 540, baseType: !1160, size: 33280, offset: 1536)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1161, line: 317, size: 33280, elements: !1162)
!1161 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1160, file: !1161, line: 330, baseType: !7, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1160, file: !1161, line: 337, baseType: !193, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1160, file: !1161, line: 348, baseType: !1166, size: 32768, offset: 512)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1161, line: 304, size: 32768, elements: !1167)
!1167 = !{!1168, !1183, !1222, !1272, !1289}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1166, file: !1161, line: 305, baseType: !1169, size: 896)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1161, line: 12, size: 896, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1182}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1169, file: !1161, line: 13, baseType: !416, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1169, file: !1161, line: 14, baseType: !416, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1169, file: !1161, line: 15, baseType: !416, size: 32, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1169, file: !1161, line: 16, baseType: !416, size: 32, offset: 96)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1169, file: !1161, line: 17, baseType: !416, size: 32, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1169, file: !1161, line: 18, baseType: !416, size: 32, offset: 160)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1169, file: !1161, line: 19, baseType: !416, size: 32, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1169, file: !1161, line: 22, baseType: !1179, size: 640, offset: 224)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 640, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 20)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1169, file: !1161, line: 25, baseType: !416, size: 32, offset: 864)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1166, file: !1161, line: 306, baseType: !1184, size: 4096, align: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1161, line: 34, size: 4096, align: 128, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1205, !1206, !1207, !1211, !1213, !1217}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1184, file: !1161, line: 35, baseType: !390, size: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1184, file: !1161, line: 36, baseType: !390, size: 16, offset: 16)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1184, file: !1161, line: 37, baseType: !390, size: 16, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1184, file: !1161, line: 38, baseType: !390, size: 16, offset: 48)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1161, line: 39, baseType: !1191, size: 128, offset: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1161, line: 39, size: 128, elements: !1192)
!1192 = !{!1193, !1198}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1161, line: 40, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !1161, line: 40, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1194, file: !1161, line: 41, baseType: !262, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1194, file: !1161, line: 42, baseType: !262, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !1161, line: 44, baseType: !1199, size: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1191, file: !1161, line: 44, size: 128, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1199, file: !1161, line: 45, baseType: !416, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1199, file: !1161, line: 46, baseType: !416, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1199, file: !1161, line: 47, baseType: !416, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1199, file: !1161, line: 48, baseType: !416, size: 32, offset: 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1184, file: !1161, line: 51, baseType: !416, size: 32, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1184, file: !1161, line: 52, baseType: !416, size: 32, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1184, file: !1161, line: 55, baseType: !1208, size: 1024, offset: 256)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1024, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1184, file: !1161, line: 58, baseType: !1212, size: 2048, offset: 1280)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2048, elements: !148)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1184, file: !1161, line: 60, baseType: !1214, size: 384, offset: 3328)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 12)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1161, line: 62, baseType: !1218, size: 384, offset: 3712)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1161, line: 62, size: 384, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1218, file: !1161, line: 63, baseType: !1214, size: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1218, file: !1161, line: 64, baseType: !1214, size: 384)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1166, file: !1161, line: 307, baseType: !1223, size: 1088)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1161, line: 79, size: 1088, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1271}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1223, file: !1161, line: 80, baseType: !416, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1223, file: !1161, line: 81, baseType: !416, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1223, file: !1161, line: 82, baseType: !416, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1223, file: !1161, line: 83, baseType: !416, size: 32, offset: 96)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1223, file: !1161, line: 84, baseType: !416, size: 32, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1223, file: !1161, line: 85, baseType: !416, size: 32, offset: 160)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1223, file: !1161, line: 86, baseType: !416, size: 32, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1223, file: !1161, line: 88, baseType: !1179, size: 640, offset: 224)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1223, file: !1161, line: 89, baseType: !553, size: 8, offset: 864)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1223, file: !1161, line: 90, baseType: !553, size: 8, offset: 872)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1223, file: !1161, line: 91, baseType: !553, size: 8, offset: 880)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1223, file: !1161, line: 92, baseType: !553, size: 8, offset: 888)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1223, file: !1161, line: 93, baseType: !553, size: 8, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1223, file: !1161, line: 94, baseType: !553, size: 8, offset: 904)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1223, file: !1161, line: 95, baseType: !1240, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1242, line: 11, size: 128, elements: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1241, file: !1242, line: 12, baseType: !178, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1241, file: !1242, line: 13, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1248, line: 56, size: 1344, elements: !1249)
!1248 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1247, file: !1248, line: 61, baseType: !193, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1247, file: !1248, line: 62, baseType: !193, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1247, file: !1248, line: 63, baseType: !193, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1247, file: !1248, line: 64, baseType: !193, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1247, file: !1248, line: 65, baseType: !193, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1247, file: !1248, line: 66, baseType: !193, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1247, file: !1248, line: 68, baseType: !193, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1247, file: !1248, line: 69, baseType: !193, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1247, file: !1248, line: 70, baseType: !193, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1247, file: !1248, line: 71, baseType: !193, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1247, file: !1248, line: 72, baseType: !193, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1247, file: !1248, line: 73, baseType: !193, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1247, file: !1248, line: 74, baseType: !193, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1247, file: !1248, line: 75, baseType: !193, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1247, file: !1248, line: 76, baseType: !193, size: 64, offset: 896)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1247, file: !1248, line: 81, baseType: !193, size: 64, offset: 960)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1247, file: !1248, line: 83, baseType: !193, size: 64, offset: 1024)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1247, file: !1248, line: 84, baseType: !193, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1247, file: !1248, line: 85, baseType: !193, size: 64, offset: 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1247, file: !1248, line: 86, baseType: !193, size: 64, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1247, file: !1248, line: 87, baseType: !193, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1223, file: !1161, line: 96, baseType: !416, size: 32, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1166, file: !1161, line: 308, baseType: !1273, size: 4608, align: 512)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1161, line: 289, size: 4608, align: 512, elements: !1274)
!1274 = !{!1275, !1276, !1285}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1273, file: !1161, line: 290, baseType: !1184, size: 4096, align: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1273, file: !1161, line: 291, baseType: !1277, size: 512, offset: 4096)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1161, line: 268, size: 512, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1277, file: !1161, line: 269, baseType: !262, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1277, file: !1161, line: 270, baseType: !262, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1277, file: !1161, line: 271, baseType: !1282, size: 384, offset: 128)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 384, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 6)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1273, file: !1161, line: 292, baseType: !1286, offset: 4608)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 0)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1166, file: !1161, line: 309, baseType: !1290, size: 32768)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 32768, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 4096)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !403, file: !234, line: 378, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !399, file: !234, line: 384, baseType: !722, size: 192, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !254, file: !234, line: 500, baseType: !101, offset: 6656)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !254, file: !234, line: 501, baseType: !1298, size: 64, offset: 6656)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !234, line: 387, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !254, file: !234, line: 516, baseType: !1301, size: 64, offset: 6720)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1303, line: 18, flags: DIFlagFwdDecl)
!1303 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !254, file: !234, line: 519, baseType: !221, size: 64, offset: 6784)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !254, file: !234, line: 521, baseType: !1306, size: 64, offset: 6848)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !234, line: 521, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !254, file: !234, line: 545, baseType: !284, size: 32, offset: 6912)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !254, file: !234, line: 548, baseType: !988, size: 8, offset: 6944)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !254, file: !234, line: 550, baseType: !1311, offset: 6952)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1312, line: 142, elements: !115)
!1312 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !254, file: !234, line: 554, baseType: !1314, size: 256, offset: 6976)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1315, line: 102, size: 256, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1314, file: !1315, line: 103, baseType: !292, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1314, file: !1315, line: 104, baseType: !88, size: 128, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1314, file: !1315, line: 105, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1315, line: 21, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !254, file: !234, line: 557, baseType: !416, size: 32, offset: 7232)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !251, file: !234, line: 565, baseType: !1327, offset: 7296)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: -1)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !233, file: !234, line: 333, baseType: !1331, size: 64, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !223, line: 284, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !223, line: 284, size: 64, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1332, file: !223, line: 284, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !282, line: 19, baseType: !193)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !233, file: !234, line: 334, baseType: !193, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !233, file: !234, line: 343, baseType: !1338, size: 256, offset: 704)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !234, line: 340, size: 256, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1338, file: !234, line: 341, baseType: !241, size: 192, align: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1338, file: !234, line: 342, baseType: !193, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !233, file: !234, line: 351, baseType: !88, size: 128, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !233, file: !234, line: 353, baseType: !1344, size: 64, offset: 1088)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !234, line: 353, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !233, file: !234, line: 356, baseType: !1347, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !234, line: 356, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !233, file: !234, line: 359, baseType: !193, size: 64, offset: 1216)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !233, file: !234, line: 361, baseType: !221, size: 64, offset: 1280)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !233, file: !234, line: 362, baseType: !71, size: 64, offset: 1344)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !233, file: !234, line: 365, baseType: !292, size: 64, offset: 1408)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !233, file: !234, line: 373, baseType: !1355, offset: 1472)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !234, line: 296, elements: !115)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !200, file: !168, line: 90, baseType: !195, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !200, file: !168, line: 91, baseType: !1358, size: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !158, file: !81, line: 143, baseType: !1360, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1363, !94}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1366)
!1366 = !{!1367, !1368, !1372, !1376, !1384, !1388}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1365, file: !18, line: 40, baseType: !17, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1365, file: !18, line: 41, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!988}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1365, file: !18, line: 42, baseType: !1373, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!71}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1365, file: !18, line: 43, baseType: !1377, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1365, file: !18, line: 44, baseType: !1385, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1380}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1365, file: !18, line: 45, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !71}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !158, file: !81, line: 144, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1380, !94}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !158, file: !81, line: 145, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !94, !1400, !1406}
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1303, line: 23, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1303, line: 21, size: 32, elements: !1403)
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1402, file: !1303, line: 22, baseType: !1405, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !70, line: 32, baseType: !884)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1303, line: 28, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1303, line: 26, size: 32, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1408, file: !1303, line: 27, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !70, line: 33, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !176, line: 50, baseType: !7)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !80, file: !81, line: 70, baseType: !1414, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1416, line: 123, size: 1024, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1559, !1560, !1561, !1562, !1563}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1415, file: !1416, line: 124, baseType: !284, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1415, file: !1416, line: 125, baseType: !284, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1415, file: !1416, line: 135, baseType: !1414, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1415, file: !1416, line: 136, baseType: !84, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1415, file: !1416, line: 138, baseType: !241, size: 192, align: 64, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1415, file: !1416, line: 140, baseType: !1380, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1415, file: !1416, line: 141, baseType: !7, size: 32, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1416, line: 142, baseType: !1426, size: 256, offset: 512)
!1426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1416, line: 142, size: 256, elements: !1427)
!1427 = !{!1428, !1482, !1486}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1426, file: !1416, line: 143, baseType: !1429, size: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1416, line: 91, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1433}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1429, file: !1416, line: 92, baseType: !193, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1429, file: !1416, line: 94, baseType: !258, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1429, file: !1416, line: 100, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1416, line: 180, size: 704, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1452, !1453, !1454, !1480, !1481}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1435, file: !1416, line: 182, baseType: !1414, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1435, file: !1416, line: 183, baseType: !7, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1435, file: !1416, line: 186, baseType: !1440, size: 192, offset: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1441, line: 19, size: 192, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1450, !1451}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1440, file: !1441, line: 20, baseType: !1444, size: 128)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1445, line: 292, size: 128, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1444, file: !1445, line: 293, baseType: !101)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1444, file: !1445, line: 295, baseType: !69, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1444, file: !1445, line: 296, baseType: !71, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1440, file: !1441, line: 21, baseType: !7, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1440, file: !1441, line: 22, baseType: !7, size: 32, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1435, file: !1416, line: 187, baseType: !416, size: 32, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1435, file: !1416, line: 188, baseType: !416, size: 32, offset: 352)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1435, file: !1416, line: 189, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1416, line: 168, size: 320, elements: !1457)
!1457 = !{!1458, !1464, !1468, !1472, !1476}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1456, file: !1416, line: 169, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!127, !1462, !1434}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !223, line: 539, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1456, file: !1416, line: 171, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!127, !1414, !84, !184}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1456, file: !1416, line: 173, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!127, !1414}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1456, file: !1416, line: 174, baseType: !1473, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!127, !1414, !1414, !84}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1456, file: !1416, line: 176, baseType: !1477, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!127, !1462, !1414, !1434}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1435, file: !1416, line: 192, baseType: !88, size: 128, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1435, file: !1416, line: 194, baseType: !693, size: 128, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1426, file: !1416, line: 144, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1416, line: 103, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1483, file: !1416, line: 104, baseType: !1414, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1426, file: !1416, line: 145, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1416, line: 107, size: 256, elements: !1488)
!1488 = !{!1489, !1554, !1557, !1558}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1487, file: !1416, line: 108, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1416, line: 217, size: 768, elements: !1493)
!1493 = !{!1494, !1514, !1518, !1522, !1527, !1531, !1535, !1539, !1540, !1541, !1542, !1550}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1492, file: !1416, line: 222, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!127, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1416, line: 197, size: 1088, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1499, file: !1416, line: 199, baseType: !1414, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1499, file: !1416, line: 200, baseType: !221, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1499, file: !1416, line: 201, baseType: !1462, size: 64, offset: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1499, file: !1416, line: 202, baseType: !71, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1499, file: !1416, line: 205, baseType: !361, size: 192, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1499, file: !1416, line: 206, baseType: !361, size: 192, offset: 448)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1499, file: !1416, line: 207, baseType: !127, size: 32, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1499, file: !1416, line: 208, baseType: !88, size: 128, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1499, file: !1416, line: 209, baseType: !143, size: 64, offset: 832)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1499, file: !1416, line: 211, baseType: !190, size: 64, offset: 896)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1499, file: !1416, line: 212, baseType: !988, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1499, file: !1416, line: 213, baseType: !988, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1499, file: !1416, line: 214, baseType: !1347, size: 64, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1492, file: !1416, line: 223, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1498}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1492, file: !1416, line: 236, baseType: !1519, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!127, !1462, !71}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1492, file: !1416, line: 238, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!71, !1462, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1492, file: !1416, line: 239, baseType: !1528, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!71, !1462, !71, !1526}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1492, file: !1416, line: 240, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1462, !71}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1492, file: !1416, line: 242, baseType: !1536, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!174, !1498, !143, !190, !224}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1492, file: !1416, line: 252, baseType: !190, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1492, file: !1416, line: 259, baseType: !988, size: 8, offset: 512)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1492, file: !1416, line: 260, baseType: !1536, size: 64, offset: 576)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1492, file: !1416, line: 263, baseType: !1543, size: 64, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546, !1498, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1547, line: 52, baseType: !7)
!1547 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1416, line: 27, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1492, file: !1416, line: 266, baseType: !1551, size: 64, offset: 704)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!127, !1498, !232}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1487, file: !1416, line: 109, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1416, line: 31, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1487, file: !1416, line: 110, baseType: !224, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1487, file: !1416, line: 111, baseType: !1414, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1415, file: !1416, line: 148, baseType: !71, size: 64, offset: 768)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1415, file: !1416, line: 154, baseType: !262, size: 64, offset: 832)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !1416, line: 156, baseType: !185, size: 16, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1415, file: !1416, line: 157, baseType: !184, size: 16, offset: 912)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1415, file: !1416, line: 158, baseType: !1564, size: 64, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1416, line: 32, flags: DIFlagFwdDecl)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !80, file: !81, line: 71, baseType: !1567, size: 32, offset: 448)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1568, line: 19, size: 32, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1567, file: !1568, line: 20, baseType: !422, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !80, file: !81, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !80, file: !81, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !80, file: !81, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !80, file: !81, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !80, file: !81, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !77, file: !30, line: 463, baseType: !1577, size: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !77, file: !30, line: 465, baseType: !1579, size: 64, offset: 576)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !77, file: !30, line: 467, baseType: !84, size: 64, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !30, line: 468, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1593, !1598, !1602}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1585, file: !30, line: 88, baseType: !84, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1585, file: !30, line: 89, baseType: !197, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1585, file: !30, line: 90, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!127, !1577, !138}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1585, file: !30, line: 91, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!143, !1577, !1597, !1400, !1406}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1585, file: !30, line: 93, baseType: !1599, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1577}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1585, file: !30, line: 95, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1606)
!1606 = !{!1607, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1605, file: !37, line: 279, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!127, !1577}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1605, file: !37, line: 280, baseType: !1599, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1605, file: !37, line: 281, baseType: !1608, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1605, file: !37, line: 282, baseType: !1608, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1605, file: !37, line: 283, baseType: !1608, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1605, file: !37, line: 284, baseType: !1608, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1605, file: !37, line: 285, baseType: !1608, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1605, file: !37, line: 286, baseType: !1608, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1605, file: !37, line: 287, baseType: !1608, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1605, file: !37, line: 288, baseType: !1608, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1605, file: !37, line: 289, baseType: !1608, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1605, file: !37, line: 290, baseType: !1608, size: 64, offset: 704)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1605, file: !37, line: 291, baseType: !1608, size: 64, offset: 768)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1605, file: !37, line: 292, baseType: !1608, size: 64, offset: 832)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1605, file: !37, line: 293, baseType: !1608, size: 64, offset: 896)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1605, file: !37, line: 294, baseType: !1608, size: 64, offset: 960)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1605, file: !37, line: 295, baseType: !1608, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1605, file: !37, line: 296, baseType: !1608, size: 64, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1605, file: !37, line: 297, baseType: !1608, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1605, file: !37, line: 298, baseType: !1608, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1605, file: !37, line: 299, baseType: !1608, size: 64, offset: 1280)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1605, file: !37, line: 300, baseType: !1608, size: 64, offset: 1344)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1605, file: !37, line: 301, baseType: !1608, size: 64, offset: 1408)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !77, file: !30, line: 470, baseType: !1634, size: 64, offset: 768)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1636, line: 82, size: 1408, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1704, !1707, !1710}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1635, file: !1636, line: 83, baseType: !84, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1635, file: !1636, line: 84, baseType: !84, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1635, file: !1636, line: 85, baseType: !1577, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1635, file: !1636, line: 86, baseType: !197, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1635, file: !1636, line: 87, baseType: !197, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1635, file: !1636, line: 88, baseType: !197, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1635, file: !1636, line: 90, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!127, !1577, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1657, !1658, !1659, !1660, !1664, !1668, !1669, !1670, !1671, !1672, !1680, !1681, !1682, !1683, !1684, !1685}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1649, file: !24, line: 96, baseType: !84, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1649, file: !24, line: 97, baseType: !1634, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1649, file: !24, line: 99, baseType: !1654, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1656, line: 76, flags: DIFlagFwdDecl)
!1656 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1649, file: !24, line: 100, baseType: !84, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1649, file: !24, line: 102, baseType: !988, size: 8, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1649, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1649, file: !24, line: 105, baseType: !1661, size: 64, offset: 320)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1663)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1649, file: !24, line: 106, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1649, file: !24, line: 108, baseType: !1608, size: 64, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1649, file: !24, line: 109, baseType: !1599, size: 64, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1649, file: !24, line: 110, baseType: !1608, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1649, file: !24, line: 111, baseType: !1599, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1649, file: !24, line: 112, baseType: !1673, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!127, !1577, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1677, file: !37, line: 51, baseType: !127, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1649, file: !24, line: 113, baseType: !1608, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1649, file: !24, line: 114, baseType: !197, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1649, file: !24, line: 115, baseType: !197, size: 64, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1649, file: !24, line: 117, baseType: !1603, size: 64, offset: 960)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1649, file: !24, line: 118, baseType: !1599, size: 64, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1649, file: !24, line: 120, baseType: !1686, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1635, file: !1636, line: 91, baseType: !1590, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1635, file: !1636, line: 92, baseType: !1608, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1635, file: !1636, line: 93, baseType: !1599, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1635, file: !1636, line: 94, baseType: !1608, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1635, file: !1636, line: 95, baseType: !1599, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1635, file: !1636, line: 97, baseType: !1608, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1635, file: !1636, line: 98, baseType: !1608, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1635, file: !1636, line: 100, baseType: !1673, size: 64, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1635, file: !1636, line: 101, baseType: !1608, size: 64, offset: 960)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1635, file: !1636, line: 103, baseType: !1608, size: 64, offset: 1024)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1635, file: !1636, line: 105, baseType: !1608, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1635, file: !1636, line: 107, baseType: !1603, size: 64, offset: 1152)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1635, file: !1636, line: 109, baseType: !1701, size: 64, offset: 1216)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1636, line: 109, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1635, file: !1636, line: 111, baseType: !1705, size: 64, offset: 1280)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1636, line: 111, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1635, file: !1636, line: 112, baseType: !1708, offset: 1344)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1709, line: 187, elements: !115)
!1709 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1635, file: !1636, line: 114, baseType: !988, size: 8, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !77, file: !30, line: 471, baseType: !1648, size: 64, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !77, file: !30, line: 473, baseType: !71, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !77, file: !30, line: 475, baseType: !71, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !77, file: !30, line: 480, baseType: !361, size: 192, offset: 1024)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !77, file: !30, line: 484, baseType: !1716, size: 576, offset: 1216)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1717)
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1716, file: !30, line: 362, baseType: !88, size: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1716, file: !30, line: 363, baseType: !88, size: 128, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1716, file: !30, line: 364, baseType: !88, size: 128, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1716, file: !30, line: 365, baseType: !88, size: 128, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1716, file: !30, line: 366, baseType: !988, size: 8, offset: 512)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1716, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !77, file: !30, line: 485, baseType: !1725, size: 2304, offset: 1792)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1726)
!1726 = !{!1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1822, !1826}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1725, file: !37, line: 566, baseType: !1676, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1725, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1725, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1725, file: !37, line: 569, baseType: !988, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1725, file: !37, line: 570, baseType: !988, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1725, file: !37, line: 571, baseType: !988, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1725, file: !37, line: 572, baseType: !988, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1725, file: !37, line: 573, baseType: !988, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1725, file: !37, line: 574, baseType: !988, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1725, file: !37, line: 575, baseType: !988, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1725, file: !37, line: 576, baseType: !988, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1725, file: !37, line: 577, baseType: !416, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1725, file: !37, line: 578, baseType: !101, offset: 96)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1725, file: !37, line: 580, baseType: !88, size: 128, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1725, file: !37, line: 581, baseType: !722, size: 192, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1725, file: !37, line: 582, baseType: !1743, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1745, line: 43, size: 1472, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1754, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1744, file: !1745, line: 44, baseType: !84, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1744, file: !1745, line: 45, baseType: !127, size: 32, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1744, file: !1745, line: 46, baseType: !88, size: 128, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1744, file: !1745, line: 47, baseType: !101, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1744, file: !1745, line: 48, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1744, file: !1745, line: 49, baseType: !1755, size: 320, offset: 320)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1756, line: 11, size: 320, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !{!1758, !1759, !1760, !1765}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1755, file: !1756, line: 16, baseType: !686, size: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1755, file: !1756, line: 17, baseType: !193, size: 64, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1755, file: !1756, line: 18, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1755, file: !1756, line: 19, baseType: !416, size: 32, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1744, file: !1745, line: 50, baseType: !193, size: 64, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1744, file: !1745, line: 51, baseType: !492, size: 64, offset: 704)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1744, file: !1745, line: 52, baseType: !492, size: 64, offset: 768)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1744, file: !1745, line: 53, baseType: !492, size: 64, offset: 832)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1744, file: !1745, line: 54, baseType: !492, size: 64, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1744, file: !1745, line: 55, baseType: !492, size: 64, offset: 960)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1744, file: !1745, line: 56, baseType: !193, size: 64, offset: 1024)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1744, file: !1745, line: 57, baseType: !193, size: 64, offset: 1088)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1744, file: !1745, line: 58, baseType: !193, size: 64, offset: 1152)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1744, file: !1745, line: 59, baseType: !193, size: 64, offset: 1216)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1744, file: !1745, line: 60, baseType: !193, size: 64, offset: 1280)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1744, file: !1745, line: 61, baseType: !1577, size: 64, offset: 1344)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1744, file: !1745, line: 62, baseType: !988, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1744, file: !1745, line: 63, baseType: !988, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1725, file: !37, line: 583, baseType: !988, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1725, file: !37, line: 584, baseType: !988, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1725, file: !37, line: 585, baseType: !988, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1725, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1725, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1725, file: !37, line: 592, baseType: !484, size: 512, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1725, file: !37, line: 593, baseType: !262, size: 64, offset: 1088)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1725, file: !37, line: 594, baseType: !1314, size: 256, offset: 1152)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1725, file: !37, line: 595, baseType: !693, size: 128, offset: 1408)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1725, file: !37, line: 596, baseType: !1752, size: 64, offset: 1536)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1725, file: !37, line: 597, baseType: !284, size: 32, offset: 1600)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1725, file: !37, line: 598, baseType: !284, size: 32, offset: 1632)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1725, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1725, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1725, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1725, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1725, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1725, file: !37, line: 604, baseType: !988, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1725, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1725, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1725, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1725, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1725, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1725, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1725, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1725, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1725, file: !37, line: 613, baseType: !127, size: 32, offset: 1792)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1725, file: !37, line: 614, baseType: !127, size: 32, offset: 1824)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1725, file: !37, line: 615, baseType: !262, size: 64, offset: 1856)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1725, file: !37, line: 616, baseType: !262, size: 64, offset: 1920)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1725, file: !37, line: 617, baseType: !262, size: 64, offset: 1984)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1725, file: !37, line: 618, baseType: !262, size: 64, offset: 2048)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1725, file: !37, line: 620, baseType: !1813, size: 64, offset: 2112)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1815)
!1815 = !{!1816, !1817, !1818, !1819}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1814, file: !37, line: 537, baseType: !101)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1814, file: !37, line: 538, baseType: !7, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1814, file: !37, line: 540, baseType: !88, size: 128, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1814, file: !37, line: 543, baseType: !1820, size: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1725, file: !37, line: 621, baseType: !1823, size: 64, offset: 2176)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{null, !1577, !646}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1725, file: !37, line: 622, baseType: !1827, size: 64, offset: 2240)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !77, file: !30, line: 486, baseType: !1830, size: 64, offset: 4096)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1839, !1840, !1841}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1831, file: !37, line: 643, baseType: !1605, size: 1472)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1831, file: !37, line: 644, baseType: !1608, size: 64, offset: 1472)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1831, file: !37, line: 645, baseType: !1836, size: 64, offset: 1536)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1577, !988}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1831, file: !37, line: 646, baseType: !1608, size: 64, offset: 1600)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1831, file: !37, line: 647, baseType: !1599, size: 64, offset: 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1831, file: !37, line: 648, baseType: !1599, size: 64, offset: 1728)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !77, file: !30, line: 493, baseType: !1843, size: 64, offset: 4160)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !77, file: !30, line: 499, baseType: !88, size: 128, offset: 4224)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !77, file: !30, line: 502, baseType: !1847, size: 64, offset: 4352)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !77, file: !30, line: 504, baseType: !1851, size: 64, offset: 4416)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !77, file: !30, line: 505, baseType: !262, size: 64, offset: 4480)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !77, file: !30, line: 510, baseType: !262, size: 64, offset: 4544)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !77, file: !30, line: 511, baseType: !1855, size: 64, offset: 4608)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !77, file: !30, line: 513, baseType: !1859, size: 64, offset: 4672)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1860, file: !30, line: 293, baseType: !7, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1860, file: !30, line: 294, baseType: !193, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !77, file: !30, line: 515, baseType: !88, size: 128, offset: 4736)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !77, file: !30, line: 526, baseType: !1866, offset: 4864)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1867, line: 5, elements: !115)
!1867 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !77, file: !30, line: 528, baseType: !1869, size: 64, offset: 4864)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1871, line: 14, flags: DIFlagFwdDecl)
!1871 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !77, file: !30, line: 529, baseType: !1873, size: 64, offset: 4928)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1636, line: 22, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !77, file: !30, line: 534, baseType: !1876, size: 32, offset: 4992)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !70, line: 16, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !70, line: 13, baseType: !416)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !77, file: !30, line: 535, baseType: !416, size: 32, offset: 5024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !77, file: !30, line: 537, baseType: !101, offset: 5056)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !77, file: !30, line: 538, baseType: !88, size: 128, offset: 5056)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !77, file: !30, line: 540, baseType: !1882, size: 64, offset: 5184)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1884, line: 54, size: 960, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1896, !1900, !1901, !1902, !1903, !1907, !1911, !1912}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1883, file: !1884, line: 55, baseType: !84, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1883, file: !1884, line: 56, baseType: !1654, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1883, file: !1884, line: 58, baseType: !197, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1883, file: !1884, line: 59, baseType: !197, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1883, file: !1884, line: 60, baseType: !94, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1883, file: !1884, line: 62, baseType: !1590, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1883, file: !1884, line: 63, baseType: !1893, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!143, !1577, !1597}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1883, file: !1884, line: 65, baseType: !1897, size: 64, offset: 448)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1882}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1883, file: !1884, line: 66, baseType: !1599, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1883, file: !1884, line: 68, baseType: !1608, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1883, file: !1884, line: 70, baseType: !1363, size: 64, offset: 640)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1883, file: !1884, line: 71, baseType: !1904, size: 64, offset: 704)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1380, !1577}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1883, file: !1884, line: 73, baseType: !1908, size: 64, offset: 768)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1577, !1400, !1406}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1883, file: !1884, line: 75, baseType: !1603, size: 64, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1883, file: !1884, line: 77, baseType: !1705, size: 64, offset: 896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !77, file: !30, line: 541, baseType: !197, size: 64, offset: 5248)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !77, file: !30, line: 543, baseType: !1599, size: 64, offset: 5312)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !77, file: !30, line: 544, baseType: !1916, size: 64, offset: 5376)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !77, file: !30, line: 545, baseType: !1919, size: 64, offset: 5440)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !77, file: !30, line: 547, baseType: !988, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !77, file: !30, line: 548, baseType: !988, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !77, file: !30, line: 549, baseType: !988, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !77, file: !30, line: 550, baseType: !988, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !73, file: !74, line: 48, baseType: !1577, size: 64, offset: 5568)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !73, file: !74, line: 49, baseType: !1927, size: 64, offset: 5632)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_config_ops", file: !74, line: 197, size: 1728, elements: !1930)
!1930 = !{!1931, !1935, !1939, !1943, !1956, !1960, !1964, !1973, !1978, !1988, !1992, !1996, !2000, !2004, !2008, !2012, !2013, !2014, !2018, !2022, !2026, !2030, !2031, !2039, !2052, !2056, !2060}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_address", scope: !1929, file: !74, line: 199, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!127, !72, !390, !262, !262, !262}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_num", scope: !1929, file: !74, line: 202, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !72, !390, !416}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kick_vq", scope: !1929, file: !74, line: 203, baseType: !1940, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{null, !72, !390}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_cb", scope: !1929, file: !74, line: 204, baseType: !1944, size: 64, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !72, !390, !1947}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_callback", file: !74, line: 15, size: 128, elements: !1949)
!1949 = !{!1950, !1955}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1948, file: !74, line: 16, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1954, !71}
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !51, line: 17, baseType: !50)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1948, file: !74, line: 17, baseType: !71, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_ready", scope: !1929, file: !74, line: 206, baseType: !1957, size: 64, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !72, !390, !988}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_ready", scope: !1929, file: !74, line: 207, baseType: !1961, size: 64, offset: 320)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!988, !72, !390}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_state", scope: !1929, file: !74, line: 208, baseType: !1965, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!127, !72, !390, !1968}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_vq_state", file: !74, line: 34, size: 16, elements: !1971)
!1971 = !{!1972}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "avail_index", scope: !1970, file: !74, line: 35, baseType: !390, size: 16)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_state", scope: !1929, file: !74, line: 210, baseType: !1974, size: 64, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!127, !72, !390, !1977}
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_notification", scope: !1929, file: !74, line: 213, baseType: !1979, size: 64, offset: 512)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1982, !72, !390}
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_notification_area", file: !74, line: 25, size: 128, elements: !1983)
!1983 = !{!1984, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1982, file: !74, line: 26, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !70, line: 158, baseType: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !70, line: 153, baseType: !262)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1982, file: !74, line: 27, baseType: !1985, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_irq", scope: !1929, file: !74, line: 215, baseType: !1989, size: 64, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!127, !72, !390}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_align", scope: !1929, file: !74, line: 218, baseType: !1993, size: 64, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!416, !72}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !1929, file: !74, line: 219, baseType: !1997, size: 64, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!262, !72}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !1929, file: !74, line: 220, baseType: !2001, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!127, !72, !262}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "set_config_cb", scope: !1929, file: !74, line: 221, baseType: !2005, size: 64, offset: 832)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !72, !1947}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_num_max", scope: !1929, file: !74, line: 223, baseType: !2009, size: 64, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!390, !72}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "get_device_id", scope: !1929, file: !74, line: 224, baseType: !1993, size: 64, offset: 960)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "get_vendor_id", scope: !1929, file: !74, line: 225, baseType: !1993, size: 64, offset: 1024)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !1929, file: !74, line: 226, baseType: !2015, size: 64, offset: 1088)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!553, !72}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !1929, file: !74, line: 227, baseType: !2019, size: 64, offset: 1152)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !72, !553}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_config", scope: !1929, file: !74, line: 228, baseType: !2023, size: 64, offset: 1216)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !72, !7, !71, !7}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !1929, file: !74, line: 230, baseType: !2027, size: 64, offset: 1280)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !72, !7, !1380, !7}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "get_generation", scope: !1929, file: !74, line: 232, baseType: !1993, size: 64, offset: 1344)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "get_iova_range", scope: !1929, file: !74, line: 233, baseType: !2032, size: 64, offset: 1408)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!2035, !72}
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_iova_range", file: !74, line: 60, size: 128, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2035, file: !74, line: 61, baseType: !262, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2035, file: !74, line: 62, baseType: !262, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "set_map", scope: !1929, file: !74, line: 236, baseType: !2040, size: 64, offset: 1472)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!127, !72, !2043}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vhost_iotlb", file: !2045, line: 24, size: 384, elements: !2046)
!2045 = !DIFile(filename: "./include/linux/vhost_iotlb.h", directory: "/home/lizy2001/genbc/linux")
!2046 = !{!2047, !2048, !2049, !2050, !2051}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2044, file: !2045, line: 25, baseType: !543, size: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2044, file: !2045, line: 26, baseType: !88, size: 128, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2044, file: !2045, line: 27, baseType: !7, size: 32, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "nmaps", scope: !2044, file: !2045, line: 28, baseType: !7, size: 32, offset: 288)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2044, file: !2045, line: 29, baseType: !7, size: 32, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dma_map", scope: !1929, file: !74, line: 237, baseType: !2053, size: 64, offset: 1536)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!127, !72, !262, !262, !262, !416}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_unmap", scope: !1929, file: !74, line: 239, baseType: !2057, size: 64, offset: 1600)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!127, !72, !262, !262}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1929, file: !74, line: 242, baseType: !2061, size: 64, offset: 1664)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !72}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !73, file: !74, line: 50, baseType: !7, size: 32, offset: 5696)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "features_valid", scope: !73, file: !74, line: 51, baseType: !988, size: 8, offset: 5728)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nvqs", scope: !73, file: !74, line: 52, baseType: !127, size: 32, offset: 5760)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdpa_driver", file: !74, line: 267, size: 1280, elements: !2069)
!2069 = !{!2070, !2071, !2075}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2068, file: !74, line: 268, baseType: !1649, size: 1152)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2068, file: !74, line: 269, baseType: !2072, size: 64, offset: 1152)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!127, !72}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2068, file: !74, line: 270, baseType: !2061, size: 64, offset: 1216)
!2076 = !{!2077, !2079, !2086, !2091, !2096, !0, !2099}
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vdpa_init178", scope: !2, file: !3, line: 180, type: !71, isLocal: true, isDefinition: true)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(name: "__exitcall_vdpa_exit", scope: !2, file: !3, line: 181, type: !2081, isLocal: true, isDefinition: true)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2082, line: 117, baseType: !2083)
!2082 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null}
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author179", scope: !2, file: !3, line: 183, type: !2088, isLocal: true, isDefinition: true, align: 8)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 360, elements: !2089)
!2089 = !{!2090}
!2090 = !DISubrange(count: 45)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file180", scope: !2, file: !3, line: 184, type: !2093, isLocal: true, isDefinition: true, align: 8)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 224, elements: !2094)
!2094 = !{!2095}
!2095 = !DISubrange(count: 28)
!2096 = !DIGlobalVariableExpression(var: !2097, expr: !DIExpression())
!2097 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license181", scope: !2, file: !3, line: 184, type: !2098, isLocal: true, isDefinition: true, align: 8)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, elements: !1180)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(name: "vdpa_bus", scope: !2, file: !3, line: 40, type: !1635, isLocal: true, isDefinition: true)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1441, line: 244, size: 128, elements: !2102)
!2102 = !{!2103}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2101, file: !1441, line: 245, baseType: !1444, size: 128)
!2104 = !{i32 7, !"Dwarf Version", i32 4}
!2105 = !{i32 2, !"Debug Info Version", i32 3}
!2106 = !{i32 1, !"wchar_size", i32 2}
!2107 = !{i32 1, !"Code Model", i32 2}
!2108 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2109 = distinct !DISubprogram(name: "__vdpa_alloc_device", scope: !3, file: !3, line: 73, type: !2110, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!72, !1577, !1927, !127, !190}
!2112 = !DILocalVariable(name: "parent", arg: 1, scope: !2109, file: !3, line: 73, type: !1577)
!2113 = !DILocation(line: 73, column: 56, scope: !2109)
!2114 = !DILocalVariable(name: "config", arg: 2, scope: !2109, file: !3, line: 74, type: !1927)
!2115 = !DILocation(line: 74, column: 36, scope: !2109)
!2116 = !DILocalVariable(name: "nvqs", arg: 3, scope: !2109, file: !3, line: 75, type: !127)
!2117 = !DILocation(line: 75, column: 10, scope: !2109)
!2118 = !DILocalVariable(name: "size", arg: 4, scope: !2109, file: !3, line: 76, type: !190)
!2119 = !DILocation(line: 76, column: 13, scope: !2109)
!2120 = !DILocalVariable(name: "vdev", scope: !2109, file: !3, line: 78, type: !72)
!2121 = !DILocation(line: 78, column: 22, scope: !2109)
!2122 = !DILocalVariable(name: "err", scope: !2109, file: !3, line: 79, type: !127)
!2123 = !DILocation(line: 79, column: 6, scope: !2109)
!2124 = !DILocation(line: 81, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 81, column: 6)
!2126 = !DILocation(line: 81, column: 6, scope: !2109)
!2127 = !DILocation(line: 82, column: 3, scope: !2125)
!2128 = !DILocation(line: 84, column: 8, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 84, column: 6)
!2130 = !DILocation(line: 84, column: 16, scope: !2129)
!2131 = !DILocation(line: 84, column: 7, scope: !2129)
!2132 = !DILocation(line: 84, column: 6, scope: !2129)
!2133 = !DILocation(line: 84, column: 29, scope: !2129)
!2134 = !DILocation(line: 84, column: 37, scope: !2129)
!2135 = !DILocation(line: 84, column: 28, scope: !2129)
!2136 = !DILocation(line: 84, column: 27, scope: !2129)
!2137 = !DILocation(line: 84, column: 24, scope: !2129)
!2138 = !DILocation(line: 84, column: 6, scope: !2109)
!2139 = !DILocation(line: 85, column: 3, scope: !2129)
!2140 = !DILocation(line: 87, column: 6, scope: !2109)
!2141 = !DILocation(line: 88, column: 17, scope: !2109)
!2142 = !DILocation(line: 88, column: 9, scope: !2109)
!2143 = !DILocation(line: 88, column: 7, scope: !2109)
!2144 = !DILocation(line: 89, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 89, column: 6)
!2146 = !DILocation(line: 89, column: 6, scope: !2109)
!2147 = !DILocation(line: 90, column: 3, scope: !2145)
!2148 = !DILocation(line: 92, column: 8, scope: !2109)
!2149 = !DILocation(line: 92, column: 6, scope: !2109)
!2150 = !DILocation(line: 93, column: 6, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 93, column: 6)
!2152 = !DILocation(line: 93, column: 10, scope: !2151)
!2153 = !DILocation(line: 93, column: 6, scope: !2109)
!2154 = !DILocation(line: 94, column: 3, scope: !2151)
!2155 = !DILocation(line: 96, column: 2, scope: !2109)
!2156 = !DILocation(line: 96, column: 8, scope: !2109)
!2157 = !DILocation(line: 96, column: 12, scope: !2109)
!2158 = !DILocation(line: 96, column: 16, scope: !2109)
!2159 = !DILocation(line: 97, column: 21, scope: !2109)
!2160 = !DILocation(line: 97, column: 2, scope: !2109)
!2161 = !DILocation(line: 97, column: 8, scope: !2109)
!2162 = !DILocation(line: 97, column: 12, scope: !2109)
!2163 = !DILocation(line: 97, column: 19, scope: !2109)
!2164 = !DILocation(line: 98, column: 2, scope: !2109)
!2165 = !DILocation(line: 98, column: 8, scope: !2109)
!2166 = !DILocation(line: 98, column: 12, scope: !2109)
!2167 = !DILocation(line: 98, column: 20, scope: !2109)
!2168 = !DILocation(line: 99, column: 16, scope: !2109)
!2169 = !DILocation(line: 99, column: 2, scope: !2109)
!2170 = !DILocation(line: 99, column: 8, scope: !2109)
!2171 = !DILocation(line: 99, column: 14, scope: !2109)
!2172 = !DILocation(line: 100, column: 17, scope: !2109)
!2173 = !DILocation(line: 100, column: 2, scope: !2109)
!2174 = !DILocation(line: 100, column: 8, scope: !2109)
!2175 = !DILocation(line: 100, column: 15, scope: !2109)
!2176 = !DILocation(line: 101, column: 2, scope: !2109)
!2177 = !DILocation(line: 101, column: 8, scope: !2109)
!2178 = !DILocation(line: 101, column: 23, scope: !2109)
!2179 = !DILocation(line: 102, column: 15, scope: !2109)
!2180 = !DILocation(line: 102, column: 2, scope: !2109)
!2181 = !DILocation(line: 102, column: 8, scope: !2109)
!2182 = !DILocation(line: 102, column: 13, scope: !2109)
!2183 = !DILocation(line: 104, column: 22, scope: !2109)
!2184 = !DILocation(line: 104, column: 28, scope: !2109)
!2185 = !DILocation(line: 104, column: 43, scope: !2109)
!2186 = !DILocation(line: 104, column: 49, scope: !2109)
!2187 = !DILocation(line: 104, column: 8, scope: !2109)
!2188 = !DILocation(line: 104, column: 6, scope: !2109)
!2189 = !DILocation(line: 105, column: 6, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 105, column: 6)
!2191 = !DILocation(line: 105, column: 6, scope: !2109)
!2192 = !DILocation(line: 106, column: 3, scope: !2190)
!2193 = !DILocation(line: 108, column: 21, scope: !2109)
!2194 = !DILocation(line: 108, column: 27, scope: !2109)
!2195 = !DILocation(line: 108, column: 2, scope: !2109)
!2196 = !DILocation(line: 110, column: 9, scope: !2109)
!2197 = !DILocation(line: 110, column: 2, scope: !2109)
!2198 = !DILabel(scope: !2109, name: "err_name", file: !3, line: 112)
!2199 = !DILocation(line: 112, column: 1, scope: !2109)
!2200 = !DILocation(line: 113, column: 2, scope: !2109)
!2201 = !DILabel(scope: !2109, name: "err_ida", file: !3, line: 114)
!2202 = !DILocation(line: 114, column: 1, scope: !2109)
!2203 = !DILocation(line: 115, column: 8, scope: !2109)
!2204 = !DILocation(line: 115, column: 2, scope: !2109)
!2205 = !DILabel(scope: !2109, name: "err", file: !3, line: 116)
!2206 = !DILocation(line: 116, column: 1, scope: !2109)
!2207 = !DILocation(line: 117, column: 17, scope: !2109)
!2208 = !DILocation(line: 117, column: 9, scope: !2109)
!2209 = !DILocation(line: 117, column: 2, scope: !2109)
!2210 = !DILocation(line: 118, column: 1, scope: !2109)
!2211 = distinct !DISubprogram(name: "kzalloc", scope: !62, file: !62, line: 662, type: !2212, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!71, !190, !69}
!2214 = !DILocalVariable(name: "s", arg: 1, scope: !2215, file: !62, line: 445, type: !1038)
!2215 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !62, file: !62, line: 445, type: !2216, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!71, !1038, !69, !190}
!2218 = !DILocation(line: 445, column: 72, scope: !2215, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 552, column: 10, scope: !2220, inlinedAt: !2223)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !62, line: 540, column: 34)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !62, line: 540, column: 6)
!2222 = distinct !DISubprogram(name: "kmalloc", scope: !62, file: !62, line: 538, type: !2212, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2223 = distinct !DILocation(line: 664, column: 9, scope: !2211)
!2224 = !DILocalVariable(name: "flags", arg: 2, scope: !2215, file: !62, line: 446, type: !69)
!2225 = !DILocation(line: 446, column: 9, scope: !2215, inlinedAt: !2219)
!2226 = !DILocalVariable(name: "size", arg: 3, scope: !2215, file: !62, line: 446, type: !190)
!2227 = !DILocation(line: 446, column: 23, scope: !2215, inlinedAt: !2219)
!2228 = !DILocalVariable(name: "ret", scope: !2215, file: !62, line: 448, type: !71)
!2229 = !DILocation(line: 448, column: 8, scope: !2215, inlinedAt: !2219)
!2230 = !DILocalVariable(name: "flags", arg: 1, scope: !2231, file: !62, line: 318, type: !69)
!2231 = distinct !DISubprogram(name: "kmalloc_type", scope: !62, file: !62, line: 318, type: !2232, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!61, !69}
!2234 = !DILocation(line: 318, column: 67, scope: !2231, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 553, column: 20, scope: !2220, inlinedAt: !2223)
!2236 = !DILocalVariable(name: "size", arg: 1, scope: !2237, file: !62, line: 346, type: !190)
!2237 = distinct !DISubprogram(name: "kmalloc_index", scope: !62, file: !62, line: 346, type: !2238, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!7, !190}
!2240 = !DILocation(line: 346, column: 58, scope: !2237, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 547, column: 11, scope: !2220, inlinedAt: !2223)
!2242 = !DILocalVariable(name: "size", arg: 1, scope: !2243, file: !62, line: 472, type: !190)
!2243 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !62, file: !62, line: 472, type: !2244, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!71, !190, !69, !7}
!2246 = !DILocation(line: 472, column: 28, scope: !2243, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 481, column: 9, scope: !2248, inlinedAt: !2249)
!2248 = distinct !DISubprogram(name: "kmalloc_large", scope: !62, file: !62, line: 478, type: !2212, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2249 = distinct !DILocation(line: 545, column: 11, scope: !2250, inlinedAt: !2223)
!2250 = distinct !DILexicalBlock(scope: !2220, file: !62, line: 544, column: 7)
!2251 = !DILocalVariable(name: "flags", arg: 2, scope: !2243, file: !62, line: 472, type: !69)
!2252 = !DILocation(line: 472, column: 40, scope: !2243, inlinedAt: !2247)
!2253 = !DILocalVariable(name: "order", arg: 3, scope: !2243, file: !62, line: 472, type: !7)
!2254 = !DILocation(line: 472, column: 60, scope: !2243, inlinedAt: !2247)
!2255 = !DILocalVariable(name: "size", arg: 1, scope: !2248, file: !62, line: 478, type: !190)
!2256 = !DILocation(line: 478, column: 51, scope: !2248, inlinedAt: !2249)
!2257 = !DILocalVariable(name: "flags", arg: 2, scope: !2248, file: !62, line: 478, type: !69)
!2258 = !DILocation(line: 478, column: 63, scope: !2248, inlinedAt: !2249)
!2259 = !DILocalVariable(name: "order", scope: !2248, file: !62, line: 480, type: !7)
!2260 = !DILocation(line: 480, column: 15, scope: !2248, inlinedAt: !2249)
!2261 = !DILocalVariable(name: "size", arg: 1, scope: !2222, file: !62, line: 538, type: !190)
!2262 = !DILocation(line: 538, column: 45, scope: !2222, inlinedAt: !2223)
!2263 = !DILocalVariable(name: "flags", arg: 2, scope: !2222, file: !62, line: 538, type: !69)
!2264 = !DILocation(line: 538, column: 57, scope: !2222, inlinedAt: !2223)
!2265 = !DILocalVariable(name: "index", scope: !2220, file: !62, line: 542, type: !7)
!2266 = !DILocation(line: 542, column: 16, scope: !2220, inlinedAt: !2223)
!2267 = !DILocalVariable(name: "size", arg: 1, scope: !2211, file: !62, line: 662, type: !190)
!2268 = !DILocation(line: 662, column: 36, scope: !2211)
!2269 = !DILocalVariable(name: "flags", arg: 2, scope: !2211, file: !62, line: 662, type: !69)
!2270 = !DILocation(line: 662, column: 48, scope: !2211)
!2271 = !DILocation(line: 664, column: 17, scope: !2211)
!2272 = !DILocation(line: 664, column: 23, scope: !2211)
!2273 = !DILocation(line: 664, column: 29, scope: !2211)
!2274 = !DILocation(line: 540, column: 27, scope: !2221, inlinedAt: !2223)
!2275 = !DILocation(line: 540, column: 6, scope: !2221, inlinedAt: !2223)
!2276 = !DILocation(line: 540, column: 6, scope: !2222, inlinedAt: !2223)
!2277 = !DILocation(line: 544, column: 7, scope: !2250, inlinedAt: !2223)
!2278 = !DILocation(line: 544, column: 12, scope: !2250, inlinedAt: !2223)
!2279 = !DILocation(line: 544, column: 7, scope: !2220, inlinedAt: !2223)
!2280 = !DILocation(line: 545, column: 25, scope: !2250, inlinedAt: !2223)
!2281 = !DILocation(line: 545, column: 31, scope: !2250, inlinedAt: !2223)
!2282 = !DILocation(line: 480, column: 33, scope: !2248, inlinedAt: !2249)
!2283 = !DILocation(line: 480, column: 23, scope: !2248, inlinedAt: !2249)
!2284 = !DILocation(line: 481, column: 29, scope: !2248, inlinedAt: !2249)
!2285 = !DILocation(line: 481, column: 35, scope: !2248, inlinedAt: !2249)
!2286 = !DILocation(line: 481, column: 42, scope: !2248, inlinedAt: !2249)
!2287 = !DILocation(line: 474, column: 23, scope: !2243, inlinedAt: !2247)
!2288 = !DILocation(line: 474, column: 29, scope: !2243, inlinedAt: !2247)
!2289 = !DILocation(line: 474, column: 36, scope: !2243, inlinedAt: !2247)
!2290 = !DILocation(line: 474, column: 9, scope: !2243, inlinedAt: !2247)
!2291 = !DILocation(line: 545, column: 4, scope: !2250, inlinedAt: !2223)
!2292 = !DILocation(line: 547, column: 25, scope: !2220, inlinedAt: !2223)
!2293 = !DILocation(line: 348, column: 7, scope: !2294, inlinedAt: !2241)
!2294 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 348, column: 6)
!2295 = !DILocation(line: 348, column: 6, scope: !2237, inlinedAt: !2241)
!2296 = !DILocation(line: 349, column: 3, scope: !2294, inlinedAt: !2241)
!2297 = !DILocation(line: 351, column: 6, scope: !2298, inlinedAt: !2241)
!2298 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 351, column: 6)
!2299 = !DILocation(line: 351, column: 11, scope: !2298, inlinedAt: !2241)
!2300 = !DILocation(line: 351, column: 6, scope: !2237, inlinedAt: !2241)
!2301 = !DILocation(line: 352, column: 3, scope: !2298, inlinedAt: !2241)
!2302 = !DILocation(line: 354, column: 32, scope: !2303, inlinedAt: !2241)
!2303 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 354, column: 6)
!2304 = !DILocation(line: 354, column: 37, scope: !2303, inlinedAt: !2241)
!2305 = !DILocation(line: 354, column: 42, scope: !2303, inlinedAt: !2241)
!2306 = !DILocation(line: 354, column: 45, scope: !2303, inlinedAt: !2241)
!2307 = !DILocation(line: 354, column: 50, scope: !2303, inlinedAt: !2241)
!2308 = !DILocation(line: 354, column: 6, scope: !2237, inlinedAt: !2241)
!2309 = !DILocation(line: 355, column: 3, scope: !2303, inlinedAt: !2241)
!2310 = !DILocation(line: 356, column: 32, scope: !2311, inlinedAt: !2241)
!2311 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 356, column: 6)
!2312 = !DILocation(line: 356, column: 37, scope: !2311, inlinedAt: !2241)
!2313 = !DILocation(line: 356, column: 43, scope: !2311, inlinedAt: !2241)
!2314 = !DILocation(line: 356, column: 46, scope: !2311, inlinedAt: !2241)
!2315 = !DILocation(line: 356, column: 51, scope: !2311, inlinedAt: !2241)
!2316 = !DILocation(line: 356, column: 6, scope: !2237, inlinedAt: !2241)
!2317 = !DILocation(line: 357, column: 3, scope: !2311, inlinedAt: !2241)
!2318 = !DILocation(line: 358, column: 6, scope: !2319, inlinedAt: !2241)
!2319 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 358, column: 6)
!2320 = !DILocation(line: 358, column: 11, scope: !2319, inlinedAt: !2241)
!2321 = !DILocation(line: 358, column: 6, scope: !2237, inlinedAt: !2241)
!2322 = !DILocation(line: 358, column: 26, scope: !2319, inlinedAt: !2241)
!2323 = !DILocation(line: 359, column: 6, scope: !2324, inlinedAt: !2241)
!2324 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 359, column: 6)
!2325 = !DILocation(line: 359, column: 11, scope: !2324, inlinedAt: !2241)
!2326 = !DILocation(line: 359, column: 6, scope: !2237, inlinedAt: !2241)
!2327 = !DILocation(line: 359, column: 26, scope: !2324, inlinedAt: !2241)
!2328 = !DILocation(line: 360, column: 6, scope: !2329, inlinedAt: !2241)
!2329 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 360, column: 6)
!2330 = !DILocation(line: 360, column: 11, scope: !2329, inlinedAt: !2241)
!2331 = !DILocation(line: 360, column: 6, scope: !2237, inlinedAt: !2241)
!2332 = !DILocation(line: 360, column: 26, scope: !2329, inlinedAt: !2241)
!2333 = !DILocation(line: 361, column: 6, scope: !2334, inlinedAt: !2241)
!2334 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 361, column: 6)
!2335 = !DILocation(line: 361, column: 11, scope: !2334, inlinedAt: !2241)
!2336 = !DILocation(line: 361, column: 6, scope: !2237, inlinedAt: !2241)
!2337 = !DILocation(line: 361, column: 26, scope: !2334, inlinedAt: !2241)
!2338 = !DILocation(line: 362, column: 6, scope: !2339, inlinedAt: !2241)
!2339 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 362, column: 6)
!2340 = !DILocation(line: 362, column: 11, scope: !2339, inlinedAt: !2241)
!2341 = !DILocation(line: 362, column: 6, scope: !2237, inlinedAt: !2241)
!2342 = !DILocation(line: 362, column: 26, scope: !2339, inlinedAt: !2241)
!2343 = !DILocation(line: 363, column: 6, scope: !2344, inlinedAt: !2241)
!2344 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 363, column: 6)
!2345 = !DILocation(line: 363, column: 11, scope: !2344, inlinedAt: !2241)
!2346 = !DILocation(line: 363, column: 6, scope: !2237, inlinedAt: !2241)
!2347 = !DILocation(line: 363, column: 26, scope: !2344, inlinedAt: !2241)
!2348 = !DILocation(line: 364, column: 6, scope: !2349, inlinedAt: !2241)
!2349 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 364, column: 6)
!2350 = !DILocation(line: 364, column: 11, scope: !2349, inlinedAt: !2241)
!2351 = !DILocation(line: 364, column: 6, scope: !2237, inlinedAt: !2241)
!2352 = !DILocation(line: 364, column: 26, scope: !2349, inlinedAt: !2241)
!2353 = !DILocation(line: 365, column: 6, scope: !2354, inlinedAt: !2241)
!2354 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 365, column: 6)
!2355 = !DILocation(line: 365, column: 11, scope: !2354, inlinedAt: !2241)
!2356 = !DILocation(line: 365, column: 6, scope: !2237, inlinedAt: !2241)
!2357 = !DILocation(line: 365, column: 26, scope: !2354, inlinedAt: !2241)
!2358 = !DILocation(line: 366, column: 6, scope: !2359, inlinedAt: !2241)
!2359 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 366, column: 6)
!2360 = !DILocation(line: 366, column: 11, scope: !2359, inlinedAt: !2241)
!2361 = !DILocation(line: 366, column: 6, scope: !2237, inlinedAt: !2241)
!2362 = !DILocation(line: 366, column: 26, scope: !2359, inlinedAt: !2241)
!2363 = !DILocation(line: 367, column: 6, scope: !2364, inlinedAt: !2241)
!2364 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 367, column: 6)
!2365 = !DILocation(line: 367, column: 11, scope: !2364, inlinedAt: !2241)
!2366 = !DILocation(line: 367, column: 6, scope: !2237, inlinedAt: !2241)
!2367 = !DILocation(line: 367, column: 26, scope: !2364, inlinedAt: !2241)
!2368 = !DILocation(line: 368, column: 6, scope: !2369, inlinedAt: !2241)
!2369 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 368, column: 6)
!2370 = !DILocation(line: 368, column: 11, scope: !2369, inlinedAt: !2241)
!2371 = !DILocation(line: 368, column: 6, scope: !2237, inlinedAt: !2241)
!2372 = !DILocation(line: 368, column: 26, scope: !2369, inlinedAt: !2241)
!2373 = !DILocation(line: 369, column: 6, scope: !2374, inlinedAt: !2241)
!2374 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 369, column: 6)
!2375 = !DILocation(line: 369, column: 11, scope: !2374, inlinedAt: !2241)
!2376 = !DILocation(line: 369, column: 6, scope: !2237, inlinedAt: !2241)
!2377 = !DILocation(line: 369, column: 26, scope: !2374, inlinedAt: !2241)
!2378 = !DILocation(line: 370, column: 6, scope: !2379, inlinedAt: !2241)
!2379 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 370, column: 6)
!2380 = !DILocation(line: 370, column: 11, scope: !2379, inlinedAt: !2241)
!2381 = !DILocation(line: 370, column: 6, scope: !2237, inlinedAt: !2241)
!2382 = !DILocation(line: 370, column: 26, scope: !2379, inlinedAt: !2241)
!2383 = !DILocation(line: 371, column: 6, scope: !2384, inlinedAt: !2241)
!2384 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 371, column: 6)
!2385 = !DILocation(line: 371, column: 11, scope: !2384, inlinedAt: !2241)
!2386 = !DILocation(line: 371, column: 6, scope: !2237, inlinedAt: !2241)
!2387 = !DILocation(line: 371, column: 26, scope: !2384, inlinedAt: !2241)
!2388 = !DILocation(line: 372, column: 6, scope: !2389, inlinedAt: !2241)
!2389 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 372, column: 6)
!2390 = !DILocation(line: 372, column: 11, scope: !2389, inlinedAt: !2241)
!2391 = !DILocation(line: 372, column: 6, scope: !2237, inlinedAt: !2241)
!2392 = !DILocation(line: 372, column: 26, scope: !2389, inlinedAt: !2241)
!2393 = !DILocation(line: 373, column: 6, scope: !2394, inlinedAt: !2241)
!2394 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 373, column: 6)
!2395 = !DILocation(line: 373, column: 11, scope: !2394, inlinedAt: !2241)
!2396 = !DILocation(line: 373, column: 6, scope: !2237, inlinedAt: !2241)
!2397 = !DILocation(line: 373, column: 26, scope: !2394, inlinedAt: !2241)
!2398 = !DILocation(line: 374, column: 6, scope: !2399, inlinedAt: !2241)
!2399 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 374, column: 6)
!2400 = !DILocation(line: 374, column: 11, scope: !2399, inlinedAt: !2241)
!2401 = !DILocation(line: 374, column: 6, scope: !2237, inlinedAt: !2241)
!2402 = !DILocation(line: 374, column: 26, scope: !2399, inlinedAt: !2241)
!2403 = !DILocation(line: 375, column: 6, scope: !2404, inlinedAt: !2241)
!2404 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 375, column: 6)
!2405 = !DILocation(line: 375, column: 11, scope: !2404, inlinedAt: !2241)
!2406 = !DILocation(line: 375, column: 6, scope: !2237, inlinedAt: !2241)
!2407 = !DILocation(line: 375, column: 27, scope: !2404, inlinedAt: !2241)
!2408 = !DILocation(line: 376, column: 6, scope: !2409, inlinedAt: !2241)
!2409 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 376, column: 6)
!2410 = !DILocation(line: 376, column: 11, scope: !2409, inlinedAt: !2241)
!2411 = !DILocation(line: 376, column: 6, scope: !2237, inlinedAt: !2241)
!2412 = !DILocation(line: 376, column: 32, scope: !2409, inlinedAt: !2241)
!2413 = !DILocation(line: 377, column: 6, scope: !2414, inlinedAt: !2241)
!2414 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 377, column: 6)
!2415 = !DILocation(line: 377, column: 11, scope: !2414, inlinedAt: !2241)
!2416 = !DILocation(line: 377, column: 6, scope: !2237, inlinedAt: !2241)
!2417 = !DILocation(line: 377, column: 32, scope: !2414, inlinedAt: !2241)
!2418 = !DILocation(line: 378, column: 6, scope: !2419, inlinedAt: !2241)
!2419 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 378, column: 6)
!2420 = !DILocation(line: 378, column: 11, scope: !2419, inlinedAt: !2241)
!2421 = !DILocation(line: 378, column: 6, scope: !2237, inlinedAt: !2241)
!2422 = !DILocation(line: 378, column: 32, scope: !2419, inlinedAt: !2241)
!2423 = !DILocation(line: 379, column: 6, scope: !2424, inlinedAt: !2241)
!2424 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 379, column: 6)
!2425 = !DILocation(line: 379, column: 11, scope: !2424, inlinedAt: !2241)
!2426 = !DILocation(line: 379, column: 6, scope: !2237, inlinedAt: !2241)
!2427 = !DILocation(line: 379, column: 33, scope: !2424, inlinedAt: !2241)
!2428 = !DILocation(line: 380, column: 6, scope: !2429, inlinedAt: !2241)
!2429 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 380, column: 6)
!2430 = !DILocation(line: 380, column: 11, scope: !2429, inlinedAt: !2241)
!2431 = !DILocation(line: 380, column: 6, scope: !2237, inlinedAt: !2241)
!2432 = !DILocation(line: 380, column: 33, scope: !2429, inlinedAt: !2241)
!2433 = !DILocation(line: 381, column: 6, scope: !2434, inlinedAt: !2241)
!2434 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 381, column: 6)
!2435 = !DILocation(line: 381, column: 11, scope: !2434, inlinedAt: !2241)
!2436 = !DILocation(line: 381, column: 6, scope: !2237, inlinedAt: !2241)
!2437 = !DILocation(line: 381, column: 33, scope: !2434, inlinedAt: !2241)
!2438 = !DILocation(line: 382, column: 2, scope: !2439, inlinedAt: !2241)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !62, line: 382, column: 2)
!2440 = distinct !DILexicalBlock(scope: !2237, file: !62, line: 382, column: 2)
!2441 = !{i32 -2144243603, i32 -2144243574, i32 -2144243528, i32 -2144243470, i32 -2144243416, i32 -2144243362, i32 -2144243307, i32 -2144243276}
!2442 = !DILocation(line: 382, column: 2, scope: !2443, inlinedAt: !2241)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !62, line: 382, column: 2)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !62, line: 382, column: 2)
!2445 = !{i32 -2144242833, i32 -2144242826, i32 -2144242772, i32 -2144242741, i32 -2144242711}
!2446 = !DILocation(line: 382, column: 2, scope: !2444, inlinedAt: !2241)
!2447 = !DILocation(line: 386, column: 1, scope: !2237, inlinedAt: !2241)
!2448 = !DILocation(line: 547, column: 9, scope: !2220, inlinedAt: !2223)
!2449 = !DILocation(line: 549, column: 8, scope: !2450, inlinedAt: !2223)
!2450 = distinct !DILexicalBlock(scope: !2220, file: !62, line: 549, column: 7)
!2451 = !DILocation(line: 549, column: 7, scope: !2220, inlinedAt: !2223)
!2452 = !DILocation(line: 550, column: 4, scope: !2450, inlinedAt: !2223)
!2453 = !DILocation(line: 553, column: 33, scope: !2220, inlinedAt: !2223)
!2454 = !DILocation(line: 325, column: 6, scope: !2455, inlinedAt: !2235)
!2455 = distinct !DILexicalBlock(scope: !2231, file: !62, line: 325, column: 6)
!2456 = !DILocation(line: 325, column: 6, scope: !2231, inlinedAt: !2235)
!2457 = !DILocation(line: 326, column: 3, scope: !2455, inlinedAt: !2235)
!2458 = !DILocation(line: 332, column: 9, scope: !2231, inlinedAt: !2235)
!2459 = !DILocation(line: 332, column: 15, scope: !2231, inlinedAt: !2235)
!2460 = !DILocation(line: 332, column: 2, scope: !2231, inlinedAt: !2235)
!2461 = !DILocation(line: 336, column: 1, scope: !2231, inlinedAt: !2235)
!2462 = !DILocation(line: 553, column: 5, scope: !2220, inlinedAt: !2223)
!2463 = !DILocation(line: 553, column: 41, scope: !2220, inlinedAt: !2223)
!2464 = !DILocation(line: 554, column: 5, scope: !2220, inlinedAt: !2223)
!2465 = !DILocation(line: 554, column: 12, scope: !2220, inlinedAt: !2223)
!2466 = !DILocation(line: 448, column: 31, scope: !2215, inlinedAt: !2219)
!2467 = !DILocation(line: 448, column: 34, scope: !2215, inlinedAt: !2219)
!2468 = !DILocation(line: 448, column: 14, scope: !2215, inlinedAt: !2219)
!2469 = !DILocation(line: 450, column: 22, scope: !2215, inlinedAt: !2219)
!2470 = !DILocation(line: 450, column: 25, scope: !2215, inlinedAt: !2219)
!2471 = !DILocation(line: 450, column: 30, scope: !2215, inlinedAt: !2219)
!2472 = !DILocation(line: 450, column: 36, scope: !2215, inlinedAt: !2219)
!2473 = !DILocation(line: 450, column: 8, scope: !2215, inlinedAt: !2219)
!2474 = !DILocation(line: 450, column: 6, scope: !2215, inlinedAt: !2219)
!2475 = !DILocation(line: 451, column: 9, scope: !2215, inlinedAt: !2219)
!2476 = !DILocation(line: 552, column: 3, scope: !2220, inlinedAt: !2223)
!2477 = !DILocation(line: 557, column: 19, scope: !2222, inlinedAt: !2223)
!2478 = !DILocation(line: 557, column: 25, scope: !2222, inlinedAt: !2223)
!2479 = !DILocation(line: 557, column: 9, scope: !2222, inlinedAt: !2223)
!2480 = !DILocation(line: 557, column: 2, scope: !2222, inlinedAt: !2223)
!2481 = !DILocation(line: 558, column: 1, scope: !2222, inlinedAt: !2223)
!2482 = !DILocation(line: 664, column: 2, scope: !2211)
!2483 = distinct !DISubprogram(name: "vdpa_release_dev", scope: !3, file: !3, line: 46, type: !1600, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2484 = !DILocalVariable(name: "d", arg: 1, scope: !2483, file: !3, line: 46, type: !1577)
!2485 = !DILocation(line: 46, column: 45, scope: !2483)
!2486 = !DILocalVariable(name: "vdev", scope: !2483, file: !3, line: 48, type: !72)
!2487 = !DILocation(line: 48, column: 22, scope: !2483)
!2488 = !DILocation(line: 48, column: 41, scope: !2483)
!2489 = !DILocation(line: 48, column: 29, scope: !2483)
!2490 = !DILocalVariable(name: "ops", scope: !2483, file: !3, line: 49, type: !1927)
!2491 = !DILocation(line: 49, column: 32, scope: !2483)
!2492 = !DILocation(line: 49, column: 38, scope: !2483)
!2493 = !DILocation(line: 49, column: 44, scope: !2483)
!2494 = !DILocation(line: 51, column: 6, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 51, column: 6)
!2496 = !DILocation(line: 51, column: 11, scope: !2495)
!2497 = !DILocation(line: 51, column: 6, scope: !2483)
!2498 = !DILocation(line: 52, column: 3, scope: !2495)
!2499 = !DILocation(line: 52, column: 8, scope: !2495)
!2500 = !DILocation(line: 52, column: 13, scope: !2495)
!2501 = !DILocation(line: 54, column: 2, scope: !2483)
!2502 = !DILocation(line: 55, column: 8, scope: !2483)
!2503 = !DILocation(line: 55, column: 2, scope: !2483)
!2504 = !DILocation(line: 56, column: 1, scope: !2483)
!2505 = distinct !DISubprogram(name: "ERR_PTR", scope: !2506, file: !2506, line: 24, type: !2507, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2506 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!71, !178}
!2509 = !DILocalVariable(name: "error", arg: 1, scope: !2505, file: !2506, line: 24, type: !178)
!2510 = !DILocation(line: 24, column: 48, scope: !2505)
!2511 = !DILocation(line: 26, column: 18, scope: !2505)
!2512 = !DILocation(line: 26, column: 9, scope: !2505)
!2513 = !DILocation(line: 26, column: 2, scope: !2505)
!2514 = distinct !DISubprogram(name: "vdpa_register_device", scope: !3, file: !3, line: 128, type: !2073, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2515 = !DILocalVariable(name: "vdev", arg: 1, scope: !2514, file: !3, line: 128, type: !72)
!2516 = !DILocation(line: 128, column: 46, scope: !2514)
!2517 = !DILocation(line: 130, column: 21, scope: !2514)
!2518 = !DILocation(line: 130, column: 27, scope: !2514)
!2519 = !DILocation(line: 130, column: 9, scope: !2514)
!2520 = !DILocation(line: 130, column: 2, scope: !2514)
!2521 = distinct !DISubprogram(name: "vdpa_unregister_device", scope: !3, file: !3, line: 138, type: !2062, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2522 = !DILocalVariable(name: "vdev", arg: 1, scope: !2521, file: !3, line: 138, type: !72)
!2523 = !DILocation(line: 138, column: 49, scope: !2521)
!2524 = !DILocation(line: 140, column: 21, scope: !2521)
!2525 = !DILocation(line: 140, column: 27, scope: !2521)
!2526 = !DILocation(line: 140, column: 2, scope: !2521)
!2527 = !DILocation(line: 141, column: 1, scope: !2521)
!2528 = distinct !DISubprogram(name: "__vdpa_register_driver", scope: !3, file: !3, line: 151, type: !2529, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!127, !2067, !1654}
!2531 = !DILocalVariable(name: "drv", arg: 1, scope: !2528, file: !3, line: 151, type: !2067)
!2532 = !DILocation(line: 151, column: 48, scope: !2528)
!2533 = !DILocalVariable(name: "owner", arg: 2, scope: !2528, file: !3, line: 151, type: !1654)
!2534 = !DILocation(line: 151, column: 68, scope: !2528)
!2535 = !DILocation(line: 153, column: 2, scope: !2528)
!2536 = !DILocation(line: 153, column: 7, scope: !2528)
!2537 = !DILocation(line: 153, column: 14, scope: !2528)
!2538 = !DILocation(line: 153, column: 18, scope: !2528)
!2539 = !DILocation(line: 154, column: 22, scope: !2528)
!2540 = !DILocation(line: 154, column: 2, scope: !2528)
!2541 = !DILocation(line: 154, column: 7, scope: !2528)
!2542 = !DILocation(line: 154, column: 14, scope: !2528)
!2543 = !DILocation(line: 154, column: 20, scope: !2528)
!2544 = !DILocation(line: 156, column: 26, scope: !2528)
!2545 = !DILocation(line: 156, column: 31, scope: !2528)
!2546 = !DILocation(line: 156, column: 9, scope: !2528)
!2547 = !DILocation(line: 156, column: 2, scope: !2528)
!2548 = distinct !DISubprogram(name: "vdpa_unregister_driver", scope: !3, file: !3, line: 164, type: !2549, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !2067}
!2551 = !DILocalVariable(name: "drv", arg: 1, scope: !2548, file: !3, line: 164, type: !2067)
!2552 = !DILocation(line: 164, column: 49, scope: !2548)
!2553 = !DILocation(line: 166, column: 21, scope: !2548)
!2554 = !DILocation(line: 166, column: 26, scope: !2548)
!2555 = !DILocation(line: 166, column: 2, scope: !2548)
!2556 = !DILocation(line: 167, column: 1, scope: !2548)
!2557 = distinct !DISubprogram(name: "vdpa_exit", scope: !3, file: !3, line: 175, type: !2084, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2558 = !DILocation(line: 177, column: 2, scope: !2557)
!2559 = !DILocation(line: 178, column: 2, scope: !2557)
!2560 = !DILocation(line: 179, column: 1, scope: !2557)
!2561 = distinct !DISubprogram(name: "vdpa_init", scope: !3, file: !3, line: 170, type: !2562, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!127}
!2564 = !DILocation(line: 172, column: 9, scope: !2561)
!2565 = !DILocation(line: 172, column: 2, scope: !2561)
!2566 = distinct !DISubprogram(name: "get_order", scope: !2567, file: !2567, line: 29, type: !2568, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2567 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!127, !193}
!2570 = !DILocalVariable(name: "x", arg: 1, scope: !2571, file: !2572, line: 366, type: !264)
!2571 = distinct !DISubprogram(name: "fls64", scope: !2572, file: !2572, line: 366, type: !2573, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2572 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!127, !264}
!2575 = !DILocation(line: 366, column: 40, scope: !2571, inlinedAt: !2576)
!2576 = distinct !DILocation(line: 46, column: 9, scope: !2566)
!2577 = !DILocalVariable(name: "bitpos", scope: !2571, file: !2572, line: 368, type: !127)
!2578 = !DILocation(line: 368, column: 6, scope: !2571, inlinedAt: !2576)
!2579 = !DILocalVariable(name: "size", arg: 1, scope: !2566, file: !2567, line: 29, type: !193)
!2580 = !DILocation(line: 29, column: 63, scope: !2566)
!2581 = !DILocation(line: 31, column: 27, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2566, file: !2567, line: 31, column: 6)
!2583 = !DILocation(line: 31, column: 6, scope: !2582)
!2584 = !DILocation(line: 31, column: 6, scope: !2566)
!2585 = !DILocation(line: 32, column: 8, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2567, line: 32, column: 7)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !2567, line: 31, column: 34)
!2588 = !DILocation(line: 32, column: 7, scope: !2587)
!2589 = !DILocation(line: 33, column: 4, scope: !2586)
!2590 = !DILocation(line: 35, column: 7, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2587, file: !2567, line: 35, column: 7)
!2592 = !DILocation(line: 35, column: 12, scope: !2591)
!2593 = !DILocation(line: 35, column: 7, scope: !2587)
!2594 = !DILocation(line: 36, column: 4, scope: !2591)
!2595 = !DILocation(line: 38, column: 10, scope: !2587)
!2596 = !DILocation(line: 38, column: 28, scope: !2587)
!2597 = !DILocation(line: 38, column: 41, scope: !2587)
!2598 = !DILocation(line: 38, column: 3, scope: !2587)
!2599 = !DILocation(line: 41, column: 6, scope: !2566)
!2600 = !DILocation(line: 42, column: 7, scope: !2566)
!2601 = !DILocation(line: 46, column: 15, scope: !2566)
!2602 = !DILocation(line: 374, column: 2, scope: !2571, inlinedAt: !2576)
!2603 = !DILocation(line: 376, column: 14, scope: !2571, inlinedAt: !2576)
!2604 = !{i32 300722}
!2605 = !DILocation(line: 377, column: 9, scope: !2571, inlinedAt: !2576)
!2606 = !DILocation(line: 377, column: 16, scope: !2571, inlinedAt: !2576)
!2607 = !DILocation(line: 46, column: 2, scope: !2566)
!2608 = !DILocation(line: 48, column: 1, scope: !2566)
!2609 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2610, file: !2610, line: 30, type: !2611, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2610 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!127, !262}
!2613 = !DILocation(line: 366, column: 40, scope: !2571, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 32, column: 9, scope: !2609)
!2615 = !DILocation(line: 368, column: 6, scope: !2571, inlinedAt: !2614)
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2609, file: !2610, line: 30, type: !262)
!2617 = !DILocation(line: 30, column: 21, scope: !2609)
!2618 = !DILocation(line: 32, column: 15, scope: !2609)
!2619 = !DILocation(line: 374, column: 2, scope: !2571, inlinedAt: !2614)
!2620 = !DILocation(line: 376, column: 14, scope: !2571, inlinedAt: !2614)
!2621 = !DILocation(line: 377, column: 9, scope: !2571, inlinedAt: !2614)
!2622 = !DILocation(line: 377, column: 16, scope: !2571, inlinedAt: !2614)
!2623 = !DILocation(line: 32, column: 18, scope: !2609)
!2624 = !DILocation(line: 32, column: 2, scope: !2609)
!2625 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1107, file: !1107, line: 137, type: !2626, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!71, !1038, !1380, !190, !69}
!2628 = !DILocalVariable(name: "s", arg: 1, scope: !2625, file: !1107, line: 137, type: !1038)
!2629 = !DILocation(line: 137, column: 54, scope: !2625)
!2630 = !DILocalVariable(name: "object", arg: 2, scope: !2625, file: !1107, line: 137, type: !1380)
!2631 = !DILocation(line: 137, column: 69, scope: !2625)
!2632 = !DILocalVariable(name: "size", arg: 3, scope: !2625, file: !1107, line: 138, type: !190)
!2633 = !DILocation(line: 138, column: 12, scope: !2625)
!2634 = !DILocalVariable(name: "flags", arg: 4, scope: !2625, file: !1107, line: 138, type: !69)
!2635 = !DILocation(line: 138, column: 24, scope: !2625)
!2636 = !DILocation(line: 140, column: 17, scope: !2625)
!2637 = !DILocation(line: 140, column: 2, scope: !2625)
!2638 = distinct !DISubprogram(name: "vdpa_dev_probe", scope: !3, file: !3, line: 17, type: !1609, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2639 = !DILocalVariable(name: "d", arg: 1, scope: !2638, file: !3, line: 17, type: !1577)
!2640 = !DILocation(line: 17, column: 42, scope: !2638)
!2641 = !DILocalVariable(name: "vdev", scope: !2638, file: !3, line: 19, type: !72)
!2642 = !DILocation(line: 19, column: 22, scope: !2638)
!2643 = !DILocation(line: 19, column: 41, scope: !2638)
!2644 = !DILocation(line: 19, column: 29, scope: !2638)
!2645 = !DILocalVariable(name: "drv", scope: !2638, file: !3, line: 20, type: !2067)
!2646 = !DILocation(line: 20, column: 22, scope: !2638)
!2647 = !DILocation(line: 20, column: 40, scope: !2638)
!2648 = !DILocation(line: 20, column: 46, scope: !2638)
!2649 = !DILocation(line: 20, column: 50, scope: !2638)
!2650 = !DILocation(line: 20, column: 28, scope: !2638)
!2651 = !DILocalVariable(name: "ret", scope: !2638, file: !3, line: 21, type: !127)
!2652 = !DILocation(line: 21, column: 6, scope: !2638)
!2653 = !DILocation(line: 23, column: 6, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 23, column: 6)
!2655 = !DILocation(line: 23, column: 10, scope: !2654)
!2656 = !DILocation(line: 23, column: 13, scope: !2654)
!2657 = !DILocation(line: 23, column: 18, scope: !2654)
!2658 = !DILocation(line: 23, column: 6, scope: !2638)
!2659 = !DILocation(line: 24, column: 9, scope: !2654)
!2660 = !DILocation(line: 24, column: 14, scope: !2654)
!2661 = !DILocation(line: 24, column: 20, scope: !2654)
!2662 = !DILocation(line: 24, column: 7, scope: !2654)
!2663 = !DILocation(line: 24, column: 3, scope: !2654)
!2664 = !DILocation(line: 26, column: 9, scope: !2638)
!2665 = !DILocation(line: 26, column: 2, scope: !2638)
!2666 = distinct !DISubprogram(name: "vdpa_dev_remove", scope: !3, file: !3, line: 29, type: !1609, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2667 = !DILocalVariable(name: "d", arg: 1, scope: !2666, file: !3, line: 29, type: !1577)
!2668 = !DILocation(line: 29, column: 43, scope: !2666)
!2669 = !DILocalVariable(name: "vdev", scope: !2666, file: !3, line: 31, type: !72)
!2670 = !DILocation(line: 31, column: 22, scope: !2666)
!2671 = !DILocation(line: 31, column: 41, scope: !2666)
!2672 = !DILocation(line: 31, column: 29, scope: !2666)
!2673 = !DILocalVariable(name: "drv", scope: !2666, file: !3, line: 32, type: !2067)
!2674 = !DILocation(line: 32, column: 22, scope: !2666)
!2675 = !DILocation(line: 32, column: 40, scope: !2666)
!2676 = !DILocation(line: 32, column: 46, scope: !2666)
!2677 = !DILocation(line: 32, column: 50, scope: !2666)
!2678 = !DILocation(line: 32, column: 28, scope: !2666)
!2679 = !DILocation(line: 34, column: 6, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 34, column: 6)
!2681 = !DILocation(line: 34, column: 10, scope: !2680)
!2682 = !DILocation(line: 34, column: 13, scope: !2680)
!2683 = !DILocation(line: 34, column: 18, scope: !2680)
!2684 = !DILocation(line: 34, column: 6, scope: !2666)
!2685 = !DILocation(line: 35, column: 3, scope: !2680)
!2686 = !DILocation(line: 35, column: 8, scope: !2680)
!2687 = !DILocation(line: 35, column: 15, scope: !2680)
!2688 = !DILocation(line: 37, column: 2, scope: !2666)
!2689 = distinct !DISubprogram(name: "dev_to_vdpa", scope: !74, file: !74, line: 287, type: !2690, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!72, !1577}
!2692 = !DILocalVariable(name: "_dev", arg: 1, scope: !2689, file: !74, line: 287, type: !1577)
!2693 = !DILocation(line: 287, column: 62, scope: !2689)
!2694 = !DILocalVariable(name: "__mptr", scope: !2695, file: !74, line: 289, type: !71)
!2695 = distinct !DILexicalBlock(scope: !2689, file: !74, line: 289, column: 9)
!2696 = !DILocation(line: 289, column: 9, scope: !2695)
!2697 = !DILocation(line: 289, column: 9, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2695, file: !74, line: 289, column: 9)
!2699 = !DILocation(line: 289, column: 2, scope: !2689)
!2700 = distinct !DISubprogram(name: "drv_to_vdpa", scope: !74, file: !74, line: 282, type: !2701, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !115)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!2067, !1648}
!2703 = !DILocalVariable(name: "driver", arg: 1, scope: !2700, file: !74, line: 282, type: !1648)
!2704 = !DILocation(line: 282, column: 69, scope: !2700)
!2705 = !DILocalVariable(name: "__mptr", scope: !2706, file: !74, line: 284, type: !71)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !74, line: 284, column: 9)
!2707 = !DILocation(line: 284, column: 9, scope: !2706)
!2708 = !DILocation(line: 284, column: 9, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2706, file: !74, line: 284, column: 9)
!2710 = !DILocation(line: 284, column: 2, scope: !2700)
