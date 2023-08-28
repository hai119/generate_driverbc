; ModuleID = '../bcout/drivers/base/cacheinfo.llvm.bc'
source_filename = "drivers/base/cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_cacheinfo_sysfs_init6:\09\09\09"
module asm ".long\09cacheinfo_sysfs_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.cpu_cacheinfo = type { %struct.cacheinfo*, i32, i32, i8 }
%struct.cacheinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpumask, i32, i8*, i8, i8* }
%struct.cpumask = type { [1 x i64] }
%struct.kmem_cache = type opaque
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%struct.atomic64_t = type { i64 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wake_irq = type opaque
%struct.atomic_t = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.cache_type_info = type { i8*, [2 x i8*], i8* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }

@ci_cpu_cacheinfo = internal global %struct.cpu_cacheinfo zeroinitializer, section ".data", align 8, !dbg !0
@__UNIQUE_ID___addressable_cacheinfo_sysfs_init169 = internal global i8* bitcast (i32 ()* @cacheinfo_sysfs_init to i8*), section ".discard.addressable", align 8, !dbg !2356
@coherency_max_size = dso_local global i32 0, align 4, !dbg !2358
@.str = private unnamed_addr constant [22 x i8] c"base/cacheinfo:online\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"\014cacheinfo: Unable to detect cache hierarchy for CPU %d\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@acpi_disabled = external dso_local global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@of_root = external dso_local global %struct.device_node*, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"\013cacheinfo: No cpu device for CPU %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013cacheinfo: Failed to find cpu%d device node\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cache-unified\00", align 1
@cache_type_info = internal constant [3 x %struct.cache_type_info] [%struct.cache_type_info { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0)], i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0) }, %struct.cache_type_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)], i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct.cache_type_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)], i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0) }], align 16, !dbg !2360
@.str.6 = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"cache-line-size\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"cache-block-size\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"cache-sets\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"i-cache-size\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"i-cache-line-size\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"i-cache-block-size\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"i-cache-sets\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"d-cache-size\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"d-cache-line-size\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"d-cache-block-size\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"d-cache-sets\00", align 1
@ci_cache_dev = internal global %struct.device* null, section ".data", align 8, !dbg !2370
@.str.18 = private unnamed_addr constant [9 x i8] c"index%1u\00", align 1
@ci_index_dev = internal global %struct.device** null, section ".data", align 8, !dbg !2421
@cache_dev_map = internal global %struct.cpumask zeroinitializer, align 8, !dbg !2423
@.str.19 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@cache_default_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @cache_default_group, %struct.attribute_group* null], align 16, !dbg !2372
@cache_private_groups = internal global [3 x %struct.attribute_group*] [%struct.attribute_group* @cache_default_group, %struct.attribute_group* null, %struct.attribute_group* null], align 16, !dbg !2418
@cache_default_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* @cache_default_attrs_is_visible, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([13 x %struct.attribute*], [13 x %struct.attribute*]* @cache_default_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2375
@cache_default_attrs = internal global [13 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_level, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_map, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_list, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_coherency_line_size, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ways_of_associativity, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_number_of_sets, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_size, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_allocation_policy, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_write_policy, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_physical_line_partition, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2413
@dev_attr_id = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @id_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2377
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @type_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2391
@dev_attr_level = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @level_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2393
@dev_attr_shared_cpu_map = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @shared_cpu_map_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2395
@dev_attr_shared_cpu_list = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @shared_cpu_list_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2397
@dev_attr_coherency_line_size = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @coherency_line_size_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2399
@dev_attr_ways_of_associativity = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @ways_of_associativity_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2401
@dev_attr_number_of_sets = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @number_of_sets_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2403
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @size_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2405
@dev_attr_write_policy = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @write_policy_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2407
@dev_attr_allocation_policy = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @allocation_policy_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2409
@dev_attr_physical_line_partition = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @physical_line_partition_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2411
@.str.20 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Unified\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"shared_cpu_map\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"shared_cpu_list\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"coherency_line_size\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"ways_of_associativity\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"number_of_sets\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%uK\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"write_policy\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"WriteThrough\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"WriteBack\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"allocation_policy\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"ReadWriteAllocate\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"ReadAllocate\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"WriteAllocate\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"physical_line_partition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_cacheinfo_sysfs_init169 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %cpu) #0 !dbg !2430 {
entry:
  %cpu.addr = alloca i32, align 4
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2433, metadata !DIExpression()), !dbg !2434
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2435
  br label %do.body, !dbg !2437

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2439, metadata !DIExpression()), !dbg !2441
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2441
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !2441
  br label %do.end, !dbg !2441

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !2441
  %2 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !2437
  store %struct.cpu_cacheinfo* %2, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2435
  %3 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2435
  ret %struct.cpu_cacheinfo* %3, !dbg !2442
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @cache_setup_acpi(i32 %cpu) #0 !dbg !2443 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2446, metadata !DIExpression()), !dbg !2447
  ret i32 -524, !dbg !2448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @init_cache_level(i32 %cpu) #0 !dbg !2449 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2450, metadata !DIExpression()), !dbg !2451
  ret i32 -2, !dbg !2452
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i32 @populate_cache_leaves(i32 %cpu) #0 !dbg !2453 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2454, metadata !DIExpression()), !dbg !2455
  ret i32 -2, !dbg !2456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local %struct.attribute_group* @cache_get_priv_group(%struct.cacheinfo* %this_leaf) #0 !dbg !2457 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  ret %struct.attribute_group* null, !dbg !2462
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @cacheinfo_sysfs_init() #2 section ".init.text" !dbg !2463 {
entry:
  %call = call i32 @cpuhp_setup_state(i32 181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 (i32)* @cacheinfo_cpu_online, i32 (i32)* @cacheinfo_cpu_pre_down) #8, !dbg !2466
  ret i32 %call, !dbg !2467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuhp_setup_state(i32 %state, i8* %name, i32 (i32)* %startup, i32 (i32)* %teardown) #0 !dbg !2468 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %startup.addr = alloca i32 (i32)*, align 8
  %teardown.addr = alloca i32 (i32)*, align 8
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !2472, metadata !DIExpression()), !dbg !2473
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  store i32 (i32)* %startup, i32 (i32)** %startup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %startup.addr, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i32 (i32)* %teardown, i32 (i32)** %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %teardown.addr, metadata !2478, metadata !DIExpression()), !dbg !2479
  %0 = load i32, i32* %state.addr, align 4, !dbg !2480
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2481
  %2 = load i32 (i32)*, i32 (i32)** %startup.addr, align 8, !dbg !2482
  %3 = load i32 (i32)*, i32 (i32)** %teardown.addr, align 8, !dbg !2483
  %call = call i32 @__cpuhp_setup_state(i32 %0, i8* %1, i1 zeroext true, i32 (i32)* %2, i32 (i32)* %3, i1 zeroext false) #8, !dbg !2484
  ret i32 %call, !dbg !2485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cacheinfo_cpu_online(i32 %cpu) #0 !dbg !2486 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2489, metadata !DIExpression()), !dbg !2490
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2491
  %call = call i32 @detect_cache_attributes(i32 %0) #8, !dbg !2492
  store i32 %call, i32* %rc, align 4, !dbg !2490
  %1 = load i32, i32* %rc, align 4, !dbg !2493
  %tobool = icmp ne i32 %1, 0, !dbg !2493
  br i1 %tobool, label %if.then, label %if.end, !dbg !2495

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %rc, align 4, !dbg !2496
  store i32 %2, i32* %retval, align 4, !dbg !2497
  br label %return, !dbg !2497

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %cpu.addr, align 4, !dbg !2498
  %call1 = call i32 @cache_add_dev(i32 %3) #8, !dbg !2499
  store i32 %call1, i32* %rc, align 4, !dbg !2500
  %4 = load i32, i32* %rc, align 4, !dbg !2501
  %tobool2 = icmp ne i32 %4, 0, !dbg !2501
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2503

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %cpu.addr, align 4, !dbg !2504
  call void @free_cache_attributes(i32 %5) #8, !dbg !2505
  br label %if.end4, !dbg !2505

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, i32* %rc, align 4, !dbg !2506
  store i32 %6, i32* %retval, align 4, !dbg !2507
  br label %return, !dbg !2507

return:                                           ; preds = %if.end4, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2508
  ret i32 %7, !dbg !2508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cacheinfo_cpu_pre_down(i32 %cpu) #0 !dbg !2509 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2510, metadata !DIExpression()), !dbg !2511
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2512
  %call = call i32 @cpumask_test_and_clear_cpu(i32 %0, %struct.cpumask* @cache_dev_map) #8, !dbg !2514
  %tobool = icmp ne i32 %call, 0, !dbg !2514
  br i1 %tobool, label %if.then, label %if.end, !dbg !2515

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !2516
  call void @cpu_cache_sysfs_exit(i32 %1) #8, !dbg !2517
  br label %if.end, !dbg !2517

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %cpu.addr, align 4, !dbg !2518
  call void @free_cache_attributes(i32 %2) #8, !dbg !2519
  ret i32 0, !dbg !2520
}

; Function Attrs: noredzone
declare dso_local i32 @__cpuhp_setup_state(i32, i8*, i1 zeroext, i32 (i32)*, i32 (i32)*, i1 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @detect_cache_attributes(i32 %cpu) #0 !dbg !2521 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp3 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify5 = alloca i8*, align 8
  %tmp7 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp10 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify12 = alloca i8*, align 8
  %tmp14 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp15 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify17 = alloca i8*, align 8
  %tmp19 = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2524, metadata !DIExpression()), !dbg !2525
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2526
  %call = call i32 @init_cache_level(i32 %0) #8, !dbg !2528
  %tobool = icmp ne i32 %call, 0, !dbg !2528
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2529

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !2530
  br label %do.body, !dbg !2532

do.body:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2534, metadata !DIExpression()), !dbg !2536
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2536
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !2536
  br label %do.end, !dbg !2536

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !2536
  %3 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !2532
  store %struct.cpu_cacheinfo* %3, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2530
  %4 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2530
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %4, i32 0, i32 2, !dbg !2537
  %5 = load i32, i32* %num_leaves, align 4, !dbg !2537
  %tobool2 = icmp ne i32 %5, 0, !dbg !2537
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2538

if.then:                                          ; preds = %do.end, %entry
  store i32 -2, i32* %retval, align 4, !dbg !2539
  br label %return, !dbg !2539

if.end:                                           ; preds = %do.end
  %6 = load i32, i32* %cpu.addr, align 4, !dbg !2540
  br label %do.body4, !dbg !2542

do.body4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify5, metadata !2544, metadata !DIExpression()), !dbg !2546
  store i8* null, i8** %__vpp_verify5, align 8, !dbg !2546
  %7 = load i8*, i8** %__vpp_verify5, align 8, !dbg !2546
  br label %do.end6, !dbg !2546

do.end6:                                          ; preds = %do.body4
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp7, align 8, !dbg !2546
  %8 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp7, align 8, !dbg !2542
  store %struct.cpu_cacheinfo* %8, %struct.cpu_cacheinfo** %tmp3, align 8, !dbg !2540
  %9 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp3, align 8, !dbg !2540
  %num_leaves8 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %9, i32 0, i32 2, !dbg !2547
  %10 = load i32, i32* %num_leaves8, align 4, !dbg !2547
  %conv = zext i32 %10 to i64, !dbg !2547
  %call9 = call i8* @kcalloc(i64 %conv, i64 72, i32 3264) #8, !dbg !2548
  %11 = bitcast i8* %call9 to %struct.cacheinfo*, !dbg !2548
  %12 = load i32, i32* %cpu.addr, align 4, !dbg !2549
  br label %do.body11, !dbg !2551

do.body11:                                        ; preds = %do.end6
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify12, metadata !2553, metadata !DIExpression()), !dbg !2555
  store i8* null, i8** %__vpp_verify12, align 8, !dbg !2555
  %13 = load i8*, i8** %__vpp_verify12, align 8, !dbg !2555
  br label %do.end13, !dbg !2555

do.end13:                                         ; preds = %do.body11
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp14, align 8, !dbg !2555
  %14 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp14, align 8, !dbg !2551
  store %struct.cpu_cacheinfo* %14, %struct.cpu_cacheinfo** %tmp10, align 8, !dbg !2549
  %15 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp10, align 8, !dbg !2549
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %15, i32 0, i32 0, !dbg !2556
  store %struct.cacheinfo* %11, %struct.cacheinfo** %info_list, align 8, !dbg !2557
  %16 = load i32, i32* %cpu.addr, align 4, !dbg !2558
  br label %do.body16, !dbg !2561

do.body16:                                        ; preds = %do.end13
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify17, metadata !2563, metadata !DIExpression()), !dbg !2565
  store i8* null, i8** %__vpp_verify17, align 8, !dbg !2565
  %17 = load i8*, i8** %__vpp_verify17, align 8, !dbg !2565
  br label %do.end18, !dbg !2565

do.end18:                                         ; preds = %do.body16
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp19, align 8, !dbg !2565
  %18 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp19, align 8, !dbg !2561
  store %struct.cpu_cacheinfo* %18, %struct.cpu_cacheinfo** %tmp15, align 8, !dbg !2558
  %19 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp15, align 8, !dbg !2558
  %info_list20 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %19, i32 0, i32 0, !dbg !2566
  %20 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list20, align 8, !dbg !2566
  %cmp = icmp eq %struct.cacheinfo* %20, null, !dbg !2567
  br i1 %cmp, label %if.then22, label %if.end23, !dbg !2568

if.then22:                                        ; preds = %do.end18
  store i32 -12, i32* %retval, align 4, !dbg !2569
  br label %return, !dbg !2569

if.end23:                                         ; preds = %do.end18
  %21 = load i32, i32* %cpu.addr, align 4, !dbg !2570
  %call24 = call i32 @populate_cache_leaves(i32 %21) #8, !dbg !2571
  store i32 %call24, i32* %ret, align 4, !dbg !2572
  %22 = load i32, i32* %ret, align 4, !dbg !2573
  %tobool25 = icmp ne i32 %22, 0, !dbg !2573
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2575

if.then26:                                        ; preds = %if.end23
  br label %free_ci, !dbg !2576

if.end27:                                         ; preds = %if.end23
  %23 = load i32, i32* %cpu.addr, align 4, !dbg !2577
  %call28 = call i32 @cache_shared_cpu_map_setup(i32 %23) #8, !dbg !2578
  store i32 %call28, i32* %ret, align 4, !dbg !2579
  %24 = load i32, i32* %ret, align 4, !dbg !2580
  %tobool29 = icmp ne i32 %24, 0, !dbg !2580
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !2582

if.then30:                                        ; preds = %if.end27
  %25 = load i32, i32* %cpu.addr, align 4, !dbg !2583
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %25) #9, !dbg !2583
  br label %free_ci, !dbg !2585

if.end32:                                         ; preds = %if.end27
  store i32 0, i32* %retval, align 4, !dbg !2586
  br label %return, !dbg !2586

free_ci:                                          ; preds = %if.then30, %if.then26
  call void @llvm.dbg.label(metadata !2587), !dbg !2588
  %26 = load i32, i32* %cpu.addr, align 4, !dbg !2589
  call void @free_cache_attributes(i32 %26) #8, !dbg !2590
  %27 = load i32, i32* %ret, align 4, !dbg !2591
  store i32 %27, i32* %retval, align 4, !dbg !2592
  br label %return, !dbg !2592

return:                                           ; preds = %free_ci, %if.end32, %if.then22, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !2593
  ret i32 %28, !dbg !2593
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cache_add_dev(i32 %cpu) #0 !dbg !2594 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %ci_dev = alloca %struct.device*, align 8
  %parent = alloca %struct.device*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %this_cpu_ci = alloca %struct.cpu_cacheinfo*, align 8
  %cache_groups = alloca %struct.attribute_group**, align 8
  %tmp = alloca %struct.device**, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp3 = alloca %struct.device**, align 8
  %tmp4 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify6 = alloca i8*, align 8
  %tmp8 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp25 = alloca %struct.device***, align 8
  %__vpp_verify27 = alloca i8*, align 8
  %tmp29 = alloca %struct.device***, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2597, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2599, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata %struct.device** %ci_dev, metadata !2601, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !2605, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata %struct.cpu_cacheinfo** %this_cpu_ci, metadata !2607, metadata !DIExpression()), !dbg !2608
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2609
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %0) #8, !dbg !2610
  store %struct.cpu_cacheinfo* %call, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct.attribute_group*** %cache_groups, metadata !2611, metadata !DIExpression()), !dbg !2612
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !2613
  %call1 = call i32 @cpu_cache_sysfs_init(i32 %1) #8, !dbg !2614
  store i32 %call1, i32* %rc, align 4, !dbg !2615
  %2 = load i32, i32* %rc, align 4, !dbg !2616
  %cmp = icmp slt i32 %2, 0, !dbg !2616
  %lnot = xor i1 %cmp, true, !dbg !2616
  %lnot2 = xor i1 %lnot, true, !dbg !2616
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2616
  %conv = sext i32 %lnot.ext to i64, !dbg !2616
  %tobool = icmp ne i64 %conv, 0, !dbg !2616
  br i1 %tobool, label %if.then, label %if.end, !dbg !2618

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !2619
  store i32 %3, i32* %retval, align 4, !dbg !2620
  br label %return, !dbg !2620

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %cpu.addr, align 4, !dbg !2621
  br label %do.body, !dbg !2623

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2625, metadata !DIExpression()), !dbg !2627
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2627
  %5 = load i8*, i8** %__vpp_verify, align 8, !dbg !2627
  br label %do.end, !dbg !2627

do.end:                                           ; preds = %do.body
  store %struct.device** @ci_cache_dev, %struct.device*** %tmp3, align 8, !dbg !2627
  %6 = load %struct.device**, %struct.device*** %tmp3, align 8, !dbg !2623
  store %struct.device** %6, %struct.device*** %tmp, align 8, !dbg !2621
  %7 = load %struct.device**, %struct.device*** %tmp, align 8, !dbg !2621
  %8 = load %struct.device*, %struct.device** %7, align 8, !dbg !2628
  store %struct.device* %8, %struct.device** %parent, align 8, !dbg !2629
  store i32 0, i32* %i, align 4, !dbg !2630
  br label %for.cond, !dbg !2632

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, i32* %i, align 4, !dbg !2633
  %10 = load i32, i32* %cpu.addr, align 4, !dbg !2635
  br label %do.body5, !dbg !2637

do.body5:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify6, metadata !2639, metadata !DIExpression()), !dbg !2641
  store i8* null, i8** %__vpp_verify6, align 8, !dbg !2641
  %11 = load i8*, i8** %__vpp_verify6, align 8, !dbg !2641
  br label %do.end7, !dbg !2641

do.end7:                                          ; preds = %do.body5
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp8, align 8, !dbg !2641
  %12 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp8, align 8, !dbg !2637
  store %struct.cpu_cacheinfo* %12, %struct.cpu_cacheinfo** %tmp4, align 8, !dbg !2635
  %13 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp4, align 8, !dbg !2635
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %13, i32 0, i32 2, !dbg !2642
  %14 = load i32, i32* %num_leaves, align 4, !dbg !2642
  %cmp9 = icmp ult i32 %9, %14, !dbg !2643
  br i1 %cmp9, label %for.body, label %for.end, !dbg !2644

for.body:                                         ; preds = %do.end7
  %15 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !2645
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %15, i32 0, i32 0, !dbg !2647
  %16 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8, !dbg !2647
  %17 = load i32, i32* %i, align 4, !dbg !2648
  %idx.ext = zext i32 %17 to i64, !dbg !2649
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %16, i64 %idx.ext, !dbg !2649
  store %struct.cacheinfo* %add.ptr, %struct.cacheinfo** %this_leaf, align 8, !dbg !2650
  %18 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2651
  %disable_sysfs = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %18, i32 0, i32 11, !dbg !2653
  %19 = load i8, i8* %disable_sysfs, align 8, !dbg !2653
  %tobool11 = trunc i8 %19 to i1, !dbg !2653
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2654

if.then12:                                        ; preds = %for.body
  br label %for.inc, !dbg !2655

if.end13:                                         ; preds = %for.body
  %20 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2656
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %20, i32 0, i32 1, !dbg !2658
  %21 = load i32, i32* %type, align 4, !dbg !2658
  %cmp14 = icmp eq i32 %21, 0, !dbg !2659
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2660

if.then16:                                        ; preds = %if.end13
  br label %for.end, !dbg !2661

if.end17:                                         ; preds = %if.end13
  %22 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2662
  %call18 = call %struct.attribute_group** @cache_get_attribute_groups(%struct.cacheinfo* %22) #8, !dbg !2663
  store %struct.attribute_group** %call18, %struct.attribute_group*** %cache_groups, align 8, !dbg !2664
  %23 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2665
  %24 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2666
  %25 = bitcast %struct.cacheinfo* %24 to i8*, !dbg !2666
  %26 = load %struct.attribute_group**, %struct.attribute_group*** %cache_groups, align 8, !dbg !2667
  %27 = load i32, i32* %i, align 4, !dbg !2668
  %call19 = call %struct.device* (%struct.device*, i8*, %struct.attribute_group**, i8*, ...) @cpu_device_create(%struct.device* %23, i8* %25, %struct.attribute_group** %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 %27) #8, !dbg !2669
  store %struct.device* %call19, %struct.device** %ci_dev, align 8, !dbg !2670
  %28 = load %struct.device*, %struct.device** %ci_dev, align 8, !dbg !2671
  %29 = bitcast %struct.device* %28 to i8*, !dbg !2671
  %call20 = call zeroext i1 @IS_ERR(i8* %29) #8, !dbg !2673
  br i1 %call20, label %if.then21, label %if.end24, !dbg !2674

if.then21:                                        ; preds = %if.end17
  %30 = load %struct.device*, %struct.device** %ci_dev, align 8, !dbg !2675
  %31 = bitcast %struct.device* %30 to i8*, !dbg !2675
  %call22 = call i64 @PTR_ERR(i8* %31) #8, !dbg !2677
  %conv23 = trunc i64 %call22 to i32, !dbg !2677
  store i32 %conv23, i32* %rc, align 4, !dbg !2678
  br label %err, !dbg !2679

if.end24:                                         ; preds = %if.end17
  %32 = load %struct.device*, %struct.device** %ci_dev, align 8, !dbg !2680
  %33 = load i32, i32* %cpu.addr, align 4, !dbg !2681
  br label %do.body26, !dbg !2683

do.body26:                                        ; preds = %if.end24
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify27, metadata !2685, metadata !DIExpression()), !dbg !2687
  store i8* null, i8** %__vpp_verify27, align 8, !dbg !2687
  %34 = load i8*, i8** %__vpp_verify27, align 8, !dbg !2687
  br label %do.end28, !dbg !2687

do.end28:                                         ; preds = %do.body26
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp29, align 8, !dbg !2687
  %35 = load %struct.device***, %struct.device**** %tmp29, align 8, !dbg !2683
  store %struct.device*** %35, %struct.device**** %tmp25, align 8, !dbg !2681
  %36 = load %struct.device***, %struct.device**** %tmp25, align 8, !dbg !2681
  %37 = load %struct.device**, %struct.device*** %36, align 8, !dbg !2688
  %38 = load i32, i32* %i, align 4, !dbg !2688
  %idxprom = zext i32 %38 to i64, !dbg !2688
  %arrayidx = getelementptr %struct.device*, %struct.device** %37, i64 %idxprom, !dbg !2688
  store %struct.device* %32, %struct.device** %arrayidx, align 8, !dbg !2689
  br label %for.inc, !dbg !2690

for.inc:                                          ; preds = %do.end28, %if.then12
  %39 = load i32, i32* %i, align 4, !dbg !2691
  %inc = add i32 %39, 1, !dbg !2691
  store i32 %inc, i32* %i, align 4, !dbg !2691
  br label %for.cond, !dbg !2692, !llvm.loop !2693

for.end:                                          ; preds = %if.then16, %do.end7
  %40 = load i32, i32* %cpu.addr, align 4, !dbg !2695
  call void @cpumask_set_cpu(i32 %40, %struct.cpumask* @cache_dev_map) #8, !dbg !2696
  store i32 0, i32* %retval, align 4, !dbg !2697
  br label %return, !dbg !2697

err:                                              ; preds = %if.then21
  call void @llvm.dbg.label(metadata !2698), !dbg !2699
  %41 = load i32, i32* %cpu.addr, align 4, !dbg !2700
  call void @cpu_cache_sysfs_exit(i32 %41) #8, !dbg !2701
  %42 = load i32, i32* %rc, align 4, !dbg !2702
  store i32 %42, i32* %retval, align 4, !dbg !2703
  br label %return, !dbg !2703

return:                                           ; preds = %err, %for.end, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !2704
  ret i32 %43, !dbg !2704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_cache_attributes(i32 %cpu) #0 !dbg !2705 {
entry:
  %cpu.addr = alloca i32, align 4
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp2 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify4 = alloca i8*, align 8
  %tmp6 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp8 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify10 = alloca i8*, align 8
  %tmp12 = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2710
  br label %do.body, !dbg !2713

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2715, metadata !DIExpression()), !dbg !2717
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2717
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !2717
  br label %do.end, !dbg !2717

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !2717
  %2 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !2713
  store %struct.cpu_cacheinfo* %2, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2710
  %3 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2710
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %3, i32 0, i32 0, !dbg !2718
  %4 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8, !dbg !2718
  %tobool = icmp ne %struct.cacheinfo* %4, null, !dbg !2718
  br i1 %tobool, label %if.end, label %if.then, !dbg !2719

if.then:                                          ; preds = %do.end
  br label %return, !dbg !2720

if.end:                                           ; preds = %do.end
  %5 = load i32, i32* %cpu.addr, align 4, !dbg !2721
  call void @cache_shared_cpu_map_remove(i32 %5) #8, !dbg !2722
  %6 = load i32, i32* %cpu.addr, align 4, !dbg !2723
  br label %do.body3, !dbg !2725

do.body3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify4, metadata !2727, metadata !DIExpression()), !dbg !2729
  store i8* null, i8** %__vpp_verify4, align 8, !dbg !2729
  %7 = load i8*, i8** %__vpp_verify4, align 8, !dbg !2729
  br label %do.end5, !dbg !2729

do.end5:                                          ; preds = %do.body3
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp6, align 8, !dbg !2729
  %8 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp6, align 8, !dbg !2725
  store %struct.cpu_cacheinfo* %8, %struct.cpu_cacheinfo** %tmp2, align 8, !dbg !2723
  %9 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp2, align 8, !dbg !2723
  %info_list7 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %9, i32 0, i32 0, !dbg !2730
  %10 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list7, align 8, !dbg !2730
  %11 = bitcast %struct.cacheinfo* %10 to i8*, !dbg !2730
  call void @kfree(i8* %11) #8, !dbg !2731
  %12 = load i32, i32* %cpu.addr, align 4, !dbg !2732
  br label %do.body9, !dbg !2734

do.body9:                                         ; preds = %do.end5
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify10, metadata !2736, metadata !DIExpression()), !dbg !2738
  store i8* null, i8** %__vpp_verify10, align 8, !dbg !2738
  %13 = load i8*, i8** %__vpp_verify10, align 8, !dbg !2738
  br label %do.end11, !dbg !2738

do.end11:                                         ; preds = %do.body9
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp12, align 8, !dbg !2738
  %14 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp12, align 8, !dbg !2734
  store %struct.cpu_cacheinfo* %14, %struct.cpu_cacheinfo** %tmp8, align 8, !dbg !2732
  %15 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp8, align 8, !dbg !2732
  %info_list13 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %15, i32 0, i32 0, !dbg !2739
  store %struct.cacheinfo* null, %struct.cacheinfo** %info_list13, align 8, !dbg !2740
  br label %return, !dbg !2741

return:                                           ; preds = %do.end11, %if.then
  ret void, !dbg !2741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2742 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  %0 = load i64, i64* %n.addr, align 8, !dbg !2751
  %1 = load i64, i64* %size.addr, align 8, !dbg !2752
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2753
  %or = or i32 %2, 256, !dbg !2754
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !2755
  ret i8* %call, !dbg !2756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cache_shared_cpu_map_setup(i32 %cpu) #0 !dbg !2757 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %this_cpu_ci = alloca %struct.cpu_cacheinfo*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %sib_leaf = alloca %struct.cacheinfo*, align 8
  %index = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp12 = alloca %struct.cpu_cacheinfo*, align 8
  %i = alloca i32, align 4
  %sib_cpu_ci = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.declare(metadata %struct.cpu_cacheinfo** %this_cpu_ci, metadata !2760, metadata !DIExpression()), !dbg !2761
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !2762
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %0) #8, !dbg !2763
  store %struct.cpu_cacheinfo* %call, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !2761
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %sib_leaf, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.declare(metadata i32* %index, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2770, metadata !DIExpression()), !dbg !2771
  store i32 0, i32* %ret, align 4, !dbg !2771
  %1 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !2772
  %cpu_map_populated = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %1, i32 0, i32 3, !dbg !2774
  %2 = load i8, i8* %cpu_map_populated, align 8, !dbg !2774
  %tobool = trunc i8 %2 to i1, !dbg !2774
  br i1 %tobool, label %if.then, label %if.end, !dbg !2775

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2776
  br label %return, !dbg !2776

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @of_have_populated_dt() #8, !dbg !2777
  br i1 %call1, label %if.then2, label %if.else, !dbg !2779

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %cpu.addr, align 4, !dbg !2780
  %call3 = call i32 @cache_setup_of_node(i32 %3) #8, !dbg !2781
  store i32 %call3, i32* %ret, align 4, !dbg !2782
  br label %if.end8, !dbg !2783

if.else:                                          ; preds = %if.end
  %4 = load i32, i32* @acpi_disabled, align 4, !dbg !2784
  %tobool4 = icmp ne i32 %4, 0, !dbg !2784
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2786

if.then5:                                         ; preds = %if.else
  %5 = load i32, i32* %cpu.addr, align 4, !dbg !2787
  %call6 = call i32 @cache_setup_acpi(i32 %5) #8, !dbg !2788
  store i32 %call6, i32* %ret, align 4, !dbg !2789
  br label %if.end7, !dbg !2790

if.end7:                                          ; preds = %if.then5, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then2
  %6 = load i32, i32* %ret, align 4, !dbg !2791
  %tobool9 = icmp ne i32 %6, 0, !dbg !2791
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !2793

if.then10:                                        ; preds = %if.end8
  %7 = load i32, i32* %ret, align 4, !dbg !2794
  store i32 %7, i32* %retval, align 4, !dbg !2795
  br label %return, !dbg !2795

if.end11:                                         ; preds = %if.end8
  store i32 0, i32* %index, align 4, !dbg !2796
  br label %for.cond, !dbg !2798

for.cond:                                         ; preds = %for.inc38, %if.end11
  %8 = load i32, i32* %index, align 4, !dbg !2799
  %9 = load i32, i32* %cpu.addr, align 4, !dbg !2801
  br label %do.body, !dbg !2803

do.body:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !2805, metadata !DIExpression()), !dbg !2807
  store i8* null, i8** %__vpp_verify, align 8, !dbg !2807
  %10 = load i8*, i8** %__vpp_verify, align 8, !dbg !2807
  br label %do.end, !dbg !2807

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp12, align 8, !dbg !2807
  %11 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp12, align 8, !dbg !2803
  store %struct.cpu_cacheinfo* %11, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2801
  %12 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !2801
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %12, i32 0, i32 2, !dbg !2808
  %13 = load i32, i32* %num_leaves, align 4, !dbg !2808
  %cmp = icmp ult i32 %8, %13, !dbg !2809
  br i1 %cmp, label %for.body, label %for.end40, !dbg !2810

for.body:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2811, metadata !DIExpression()), !dbg !2813
  %14 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !2814
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %14, i32 0, i32 0, !dbg !2815
  %15 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8, !dbg !2815
  %16 = load i32, i32* %index, align 4, !dbg !2816
  %idx.ext = zext i32 %16 to i64, !dbg !2817
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %15, i64 %idx.ext, !dbg !2817
  store %struct.cacheinfo* %add.ptr, %struct.cacheinfo** %this_leaf, align 8, !dbg !2818
  %17 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2819
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %17, i32 0, i32 8, !dbg !2821
  %call13 = call zeroext i1 @cpumask_empty(%struct.cpumask* %shared_cpu_map) #8, !dbg !2822
  br i1 %call13, label %if.end15, label %if.then14, !dbg !2823

if.then14:                                        ; preds = %for.body
  br label %for.inc38, !dbg !2824

if.end15:                                         ; preds = %for.body
  %18 = load i32, i32* %cpu.addr, align 4, !dbg !2825
  %19 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2826
  %shared_cpu_map16 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %19, i32 0, i32 8, !dbg !2827
  call void @cpumask_set_cpu(i32 %18, %struct.cpumask* %shared_cpu_map16) #8, !dbg !2828
  store i32 0, i32* %i, align 4, !dbg !2829
  br label %for.cond17, !dbg !2829

for.cond17:                                       ; preds = %for.inc, %if.end15
  %20 = load i32, i32* %i, align 4, !dbg !2831
  %cmp18 = icmp ult i32 %20, 1, !dbg !2831
  br i1 %cmp18, label %for.body19, label %for.end, !dbg !2829

for.body19:                                       ; preds = %for.cond17
  call void @llvm.dbg.declare(metadata %struct.cpu_cacheinfo** %sib_cpu_ci, metadata !2833, metadata !DIExpression()), !dbg !2835
  %21 = load i32, i32* %i, align 4, !dbg !2836
  %call20 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %21) #8, !dbg !2837
  store %struct.cpu_cacheinfo* %call20, %struct.cpu_cacheinfo** %sib_cpu_ci, align 8, !dbg !2835
  %22 = load i32, i32* %i, align 4, !dbg !2838
  %23 = load i32, i32* %cpu.addr, align 4, !dbg !2840
  %cmp21 = icmp eq i32 %22, %23, !dbg !2841
  br i1 %cmp21, label %if.then24, label %lor.lhs.false, !dbg !2842

lor.lhs.false:                                    ; preds = %for.body19
  %24 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %sib_cpu_ci, align 8, !dbg !2843
  %info_list22 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %24, i32 0, i32 0, !dbg !2844
  %25 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list22, align 8, !dbg !2844
  %tobool23 = icmp ne %struct.cacheinfo* %25, null, !dbg !2843
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !2845

if.then24:                                        ; preds = %lor.lhs.false, %for.body19
  br label %for.inc, !dbg !2846

if.end25:                                         ; preds = %lor.lhs.false
  %26 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %sib_cpu_ci, align 8, !dbg !2847
  %info_list26 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %26, i32 0, i32 0, !dbg !2848
  %27 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list26, align 8, !dbg !2848
  %28 = load i32, i32* %index, align 4, !dbg !2849
  %idx.ext27 = zext i32 %28 to i64, !dbg !2850
  %add.ptr28 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %27, i64 %idx.ext27, !dbg !2850
  store %struct.cacheinfo* %add.ptr28, %struct.cacheinfo** %sib_leaf, align 8, !dbg !2851
  %29 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2852
  %30 = load %struct.cacheinfo*, %struct.cacheinfo** %sib_leaf, align 8, !dbg !2854
  %call29 = call zeroext i1 @cache_leaves_are_shared(%struct.cacheinfo* %29, %struct.cacheinfo* %30) #8, !dbg !2855
  br i1 %call29, label %if.then30, label %if.end33, !dbg !2856

if.then30:                                        ; preds = %if.end25
  %31 = load i32, i32* %cpu.addr, align 4, !dbg !2857
  %32 = load %struct.cacheinfo*, %struct.cacheinfo** %sib_leaf, align 8, !dbg !2859
  %shared_cpu_map31 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %32, i32 0, i32 8, !dbg !2860
  call void @cpumask_set_cpu(i32 %31, %struct.cpumask* %shared_cpu_map31) #8, !dbg !2861
  %33 = load i32, i32* %i, align 4, !dbg !2862
  %34 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2863
  %shared_cpu_map32 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %34, i32 0, i32 8, !dbg !2864
  call void @cpumask_set_cpu(i32 %33, %struct.cpumask* %shared_cpu_map32) #8, !dbg !2865
  br label %if.end33, !dbg !2866

if.end33:                                         ; preds = %if.then30, %if.end25
  br label %for.inc, !dbg !2867

for.inc:                                          ; preds = %if.end33, %if.then24
  %35 = load i32, i32* %i, align 4, !dbg !2831
  %inc = add i32 %35, 1, !dbg !2831
  store i32 %inc, i32* %i, align 4, !dbg !2831
  br label %for.cond17, !dbg !2831, !llvm.loop !2868

for.end:                                          ; preds = %for.cond17
  %36 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2870
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %36, i32 0, i32 3, !dbg !2872
  %37 = load i32, i32* %coherency_line_size, align 4, !dbg !2872
  %38 = load i32, i32* @coherency_max_size, align 4, !dbg !2873
  %cmp34 = icmp ugt i32 %37, %38, !dbg !2874
  br i1 %cmp34, label %if.then35, label %if.end37, !dbg !2875

if.then35:                                        ; preds = %for.end
  %39 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !2876
  %coherency_line_size36 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %39, i32 0, i32 3, !dbg !2877
  %40 = load i32, i32* %coherency_line_size36, align 4, !dbg !2877
  store i32 %40, i32* @coherency_max_size, align 4, !dbg !2878
  br label %if.end37, !dbg !2879

if.end37:                                         ; preds = %if.then35, %for.end
  br label %for.inc38, !dbg !2880

for.inc38:                                        ; preds = %if.end37, %if.then14
  %41 = load i32, i32* %index, align 4, !dbg !2881
  %inc39 = add i32 %41, 1, !dbg !2881
  store i32 %inc39, i32* %index, align 4, !dbg !2881
  br label %for.cond, !dbg !2882, !llvm.loop !2883

for.end40:                                        ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !2885
  br label %return, !dbg !2885

return:                                           ; preds = %for.end40, %if.then10, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !2886
  ret i32 %42, !dbg !2886
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !2887 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2888, metadata !DIExpression()), !dbg !2892
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2901, metadata !DIExpression()), !dbg !2902
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2903, metadata !DIExpression()), !dbg !2904
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2905, metadata !DIExpression()), !dbg !2906
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2907, metadata !DIExpression()), !dbg !2911
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2913, metadata !DIExpression()), !dbg !2917
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2919, metadata !DIExpression()), !dbg !2923
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2928, metadata !DIExpression()), !dbg !2929
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2930, metadata !DIExpression()), !dbg !2931
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2932, metadata !DIExpression()), !dbg !2933
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2934, metadata !DIExpression()), !dbg !2935
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2936, metadata !DIExpression()), !dbg !2937
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2938, metadata !DIExpression()), !dbg !2939
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2940, metadata !DIExpression()), !dbg !2941
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2942, metadata !DIExpression()), !dbg !2943
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2944, metadata !DIExpression()), !dbg !2945
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2946, metadata !DIExpression()), !dbg !2947
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2950, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2952, metadata !DIExpression()), !dbg !2955
  %0 = load i64, i64* %n.addr, align 8, !dbg !2955
  store i64 %0, i64* %__a, align 8, !dbg !2955
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2956, metadata !DIExpression()), !dbg !2955
  %1 = load i64, i64* %size.addr, align 8, !dbg !2955
  store i64 %1, i64* %__b, align 8, !dbg !2955
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2957, metadata !DIExpression()), !dbg !2955
  store i64* %bytes, i64** %__d, align 8, !dbg !2955
  %cmp = icmp eq i64* %__a, %__b, !dbg !2955
  %conv = zext i1 %cmp to i32, !dbg !2955
  %2 = load i64*, i64** %__d, align 8, !dbg !2955
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2955
  %conv2 = zext i1 %cmp1 to i32, !dbg !2955
  %3 = load i64, i64* %__a, align 8, !dbg !2955
  %4 = load i64, i64* %__b, align 8, !dbg !2955
  %5 = load i64*, i64** %__d, align 8, !dbg !2955
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2955
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2955
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2955
  store i64 %8, i64* %5, align 8, !dbg !2955
  %frombool = zext i1 %7 to i8, !dbg !2955
  store i8 %frombool, i8* %tmp, align 1, !dbg !2955
  %9 = load i8, i8* %tmp, align 1, !dbg !2955
  %tobool = trunc i8 %9 to i1, !dbg !2955
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !2959
  %lnot = xor i1 %call, true, !dbg !2959
  %lnot3 = xor i1 %lnot, true, !dbg !2959
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2959
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2959
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2959
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2960

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2961
  br label %return, !dbg !2961

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2962
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2963
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2964

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2965
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2966
  br i1 %13, label %if.then6, label %if.end8, !dbg !2967

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2968
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2969
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2970
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #10, !dbg !2971
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2972

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2973
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2974
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2975

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2976
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !2977
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !2978
  %call.i.i = call i32 @get_order(i64 %21) #11, !dbg !2979
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2937
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2980
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2981
  %24 = load i32, i32* %order.i.i, align 4, !dbg !2982
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2983
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2984
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2985
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !2986
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2986
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2986
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2986
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2986
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2987
  br label %kmalloc.exit, !dbg !2987

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !2988
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2989
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !2989
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2991

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2992
  br label %kmalloc_index.exit.i, !dbg !2992

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2993
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !2995
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2996

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2997
  br label %kmalloc_index.exit.i, !dbg !2997

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2998
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3000
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3001

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3002
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3003
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3004

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3005
  br label %kmalloc_index.exit.i, !dbg !3005

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3006
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3008
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3009

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3010
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3011
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3012

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3013
  br label %kmalloc_index.exit.i, !dbg !3013

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3014
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3016
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3017

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3018
  br label %kmalloc_index.exit.i, !dbg !3018

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3019
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3021
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3022

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3023
  br label %kmalloc_index.exit.i, !dbg !3023

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3024
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3026
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3027

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3028
  br label %kmalloc_index.exit.i, !dbg !3028

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3029
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3031
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3032

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3033
  br label %kmalloc_index.exit.i, !dbg !3033

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3034
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3036
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3037

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3038
  br label %kmalloc_index.exit.i, !dbg !3038

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3039
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3041
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3042

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3043
  br label %kmalloc_index.exit.i, !dbg !3043

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3044
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3046
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3047

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3048
  br label %kmalloc_index.exit.i, !dbg !3048

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3049
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3051
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3052

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3053
  br label %kmalloc_index.exit.i, !dbg !3053

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3054
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3056
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3057

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3058
  br label %kmalloc_index.exit.i, !dbg !3058

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3059
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3061
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3062

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3063
  br label %kmalloc_index.exit.i, !dbg !3063

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3064
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3066
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3067

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3068
  br label %kmalloc_index.exit.i, !dbg !3068

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3069
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3071
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3072

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3073
  br label %kmalloc_index.exit.i, !dbg !3073

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3074
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3076
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3077

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3078
  br label %kmalloc_index.exit.i, !dbg !3078

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3079
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3081
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3082

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3083
  br label %kmalloc_index.exit.i, !dbg !3083

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3084
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3086
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3087

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3088
  br label %kmalloc_index.exit.i, !dbg !3088

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3089
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3091
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3092

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3093
  br label %kmalloc_index.exit.i, !dbg !3093

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3094
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3096
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3097

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3098
  br label %kmalloc_index.exit.i, !dbg !3098

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3099
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3101
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3102

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3103
  br label %kmalloc_index.exit.i, !dbg !3103

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3104
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3106
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3107

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3108
  br label %kmalloc_index.exit.i, !dbg !3108

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3109
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3111
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3112

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3113
  br label %kmalloc_index.exit.i, !dbg !3113

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3114
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3116
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3117

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3118
  br label %kmalloc_index.exit.i, !dbg !3118

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3119
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3121
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3122

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3123
  br label %kmalloc_index.exit.i, !dbg !3123

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3124
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3126
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3127

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3128
  br label %kmalloc_index.exit.i, !dbg !3128

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3129
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3131
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3132

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3133
  br label %kmalloc_index.exit.i, !dbg !3133

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3134, !srcloc !3137
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #10, !dbg !3138, !srcloc !3141
  unreachable, !dbg !3142

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3143
  store i32 %59, i32* %index.i, align 4, !dbg !3144
  %60 = load i32, i32* %index.i, align 4, !dbg !3145
  %tobool.i = icmp ne i32 %60, 0, !dbg !3145
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3147

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3148
  br label %kmalloc.exit, !dbg !3148

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3149
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3150
  %and.i.i = and i32 %62, 17, !dbg !3150
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3150
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3150
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3150
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3150
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3152

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3153
  br label %kmalloc_type.exit.i, !dbg !3153

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3154
  %and2.i.i = and i32 %63, 1, !dbg !3155
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3154
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3154
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3154
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3156
  br label %kmalloc_type.exit.i, !dbg !3156

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3157
  %idxprom.i = zext i32 %65 to i64, !dbg !3158
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3158
  %66 = load i32, i32* %index.i, align 4, !dbg !3159
  %idxprom6.i = zext i32 %66 to i64, !dbg !3158
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3158
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3158
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3160
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3161
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3162
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3163
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !3164
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3164
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3164
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3164
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3164
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2906
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3165
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3166
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3167
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3168
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !3169
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3170
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3171
  store i8* %76, i8** %retval.i, align 8, !dbg !3172
  br label %kmalloc.exit, !dbg !3172

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3173
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3174
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !3175
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3175
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3175
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3175
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3175
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3176
  br label %kmalloc.exit, !dbg !3176

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3177
  store i8* %79, i8** %retval, align 8, !dbg !3178
  br label %return, !dbg !3178

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3179
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3180
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !3181
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3181
  %maskedptr = and i64 %ptrint, 7, !dbg !3181
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3181
  call void @llvm.assume(i1 %maskcond), !dbg !3181
  store i8* %call9, i8** %retval, align 8, !dbg !3182
  br label %return, !dbg !3182

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3183
  ret i8* %82, !dbg !3183
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3184 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3188, metadata !DIExpression()), !dbg !3189
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3190
  %tobool = trunc i8 %0 to i1, !dbg !3190
  %lnot = xor i1 %tobool, true, !dbg !3190
  %lnot1 = xor i1 %lnot, true, !dbg !3190
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3190
  %conv = sext i32 %lnot.ext to i64, !dbg !3190
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3190
  ret i1 %tobool2, !dbg !3191
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !3192 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3196, metadata !DIExpression()), !dbg !3201
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3203, metadata !DIExpression()), !dbg !3204
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  %0 = load i64, i64* %size.addr, align 8, !dbg !3207
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3209
  br i1 %1, label %if.then, label %if.end447, !dbg !3210

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3211
  %tobool = icmp ne i64 %2, 0, !dbg !3211
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3214

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3215
  br label %return, !dbg !3215

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3216
  %cmp = icmp ult i64 %3, 4096, !dbg !3218
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3219

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3220
  br label %return, !dbg !3220

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub = sub i64 %4, 1, !dbg !3221
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3221
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3221

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub4 = sub i64 %6, 1, !dbg !3221
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3221
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3221

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub6 = sub i64 %8, 1, !dbg !3221
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3221
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3221

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3221

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub9 = sub i64 %9, 1, !dbg !3221
  %and = and i64 %sub9, -9223372036854775808, !dbg !3221
  %tobool10 = icmp ne i64 %and, 0, !dbg !3221
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3221

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3221

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub13 = sub i64 %10, 1, !dbg !3221
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3221
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3221
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3221

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3221

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub18 = sub i64 %11, 1, !dbg !3221
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3221
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3221
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3221

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3221

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub23 = sub i64 %12, 1, !dbg !3221
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3221
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3221
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3221

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3221

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub28 = sub i64 %13, 1, !dbg !3221
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3221
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3221
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3221

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3221

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub33 = sub i64 %14, 1, !dbg !3221
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3221
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3221
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3221

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3221

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub38 = sub i64 %15, 1, !dbg !3221
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3221
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3221
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3221

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3221

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub43 = sub i64 %16, 1, !dbg !3221
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3221
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3221
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3221

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3221

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub48 = sub i64 %17, 1, !dbg !3221
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3221
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3221
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3221

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3221

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub53 = sub i64 %18, 1, !dbg !3221
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3221
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3221
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3221

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3221

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub58 = sub i64 %19, 1, !dbg !3221
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3221
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3221
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3221

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3221

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub63 = sub i64 %20, 1, !dbg !3221
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3221
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3221
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3221

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3221

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub68 = sub i64 %21, 1, !dbg !3221
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3221
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3221
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3221

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3221

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub73 = sub i64 %22, 1, !dbg !3221
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3221
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3221
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3221

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3221

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub78 = sub i64 %23, 1, !dbg !3221
  %and79 = and i64 %sub78, 562949953421312, !dbg !3221
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3221
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3221

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3221

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub83 = sub i64 %24, 1, !dbg !3221
  %and84 = and i64 %sub83, 281474976710656, !dbg !3221
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3221
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3221

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3221

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub88 = sub i64 %25, 1, !dbg !3221
  %and89 = and i64 %sub88, 140737488355328, !dbg !3221
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3221
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3221

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3221

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub93 = sub i64 %26, 1, !dbg !3221
  %and94 = and i64 %sub93, 70368744177664, !dbg !3221
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3221
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3221

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3221

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub98 = sub i64 %27, 1, !dbg !3221
  %and99 = and i64 %sub98, 35184372088832, !dbg !3221
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3221
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3221

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3221

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub103 = sub i64 %28, 1, !dbg !3221
  %and104 = and i64 %sub103, 17592186044416, !dbg !3221
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3221
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3221

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3221

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub108 = sub i64 %29, 1, !dbg !3221
  %and109 = and i64 %sub108, 8796093022208, !dbg !3221
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3221
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3221

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3221

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub113 = sub i64 %30, 1, !dbg !3221
  %and114 = and i64 %sub113, 4398046511104, !dbg !3221
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3221
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3221

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3221

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub118 = sub i64 %31, 1, !dbg !3221
  %and119 = and i64 %sub118, 2199023255552, !dbg !3221
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3221
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3221

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3221

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub123 = sub i64 %32, 1, !dbg !3221
  %and124 = and i64 %sub123, 1099511627776, !dbg !3221
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3221
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3221

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3221

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub128 = sub i64 %33, 1, !dbg !3221
  %and129 = and i64 %sub128, 549755813888, !dbg !3221
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3221
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3221

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3221

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub133 = sub i64 %34, 1, !dbg !3221
  %and134 = and i64 %sub133, 274877906944, !dbg !3221
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3221
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3221

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3221

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub138 = sub i64 %35, 1, !dbg !3221
  %and139 = and i64 %sub138, 137438953472, !dbg !3221
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3221
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3221

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3221

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub143 = sub i64 %36, 1, !dbg !3221
  %and144 = and i64 %sub143, 68719476736, !dbg !3221
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3221
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3221

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3221

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub148 = sub i64 %37, 1, !dbg !3221
  %and149 = and i64 %sub148, 34359738368, !dbg !3221
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3221
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3221

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3221

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub153 = sub i64 %38, 1, !dbg !3221
  %and154 = and i64 %sub153, 17179869184, !dbg !3221
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3221
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3221

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3221

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub158 = sub i64 %39, 1, !dbg !3221
  %and159 = and i64 %sub158, 8589934592, !dbg !3221
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3221
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3221

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3221

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub163 = sub i64 %40, 1, !dbg !3221
  %and164 = and i64 %sub163, 4294967296, !dbg !3221
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3221
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3221

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3221

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub168 = sub i64 %41, 1, !dbg !3221
  %and169 = and i64 %sub168, 2147483648, !dbg !3221
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3221
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3221

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3221

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub173 = sub i64 %42, 1, !dbg !3221
  %and174 = and i64 %sub173, 1073741824, !dbg !3221
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3221
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3221

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3221

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub178 = sub i64 %43, 1, !dbg !3221
  %and179 = and i64 %sub178, 536870912, !dbg !3221
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3221
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3221

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3221

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub183 = sub i64 %44, 1, !dbg !3221
  %and184 = and i64 %sub183, 268435456, !dbg !3221
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3221
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3221

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3221

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub188 = sub i64 %45, 1, !dbg !3221
  %and189 = and i64 %sub188, 134217728, !dbg !3221
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3221
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3221

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3221

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub193 = sub i64 %46, 1, !dbg !3221
  %and194 = and i64 %sub193, 67108864, !dbg !3221
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3221
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3221

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3221

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub198 = sub i64 %47, 1, !dbg !3221
  %and199 = and i64 %sub198, 33554432, !dbg !3221
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3221
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3221

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3221

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub203 = sub i64 %48, 1, !dbg !3221
  %and204 = and i64 %sub203, 16777216, !dbg !3221
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3221
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3221

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3221

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub208 = sub i64 %49, 1, !dbg !3221
  %and209 = and i64 %sub208, 8388608, !dbg !3221
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3221
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3221

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3221

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub213 = sub i64 %50, 1, !dbg !3221
  %and214 = and i64 %sub213, 4194304, !dbg !3221
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3221
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3221

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3221

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub218 = sub i64 %51, 1, !dbg !3221
  %and219 = and i64 %sub218, 2097152, !dbg !3221
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3221
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3221

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3221

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub223 = sub i64 %52, 1, !dbg !3221
  %and224 = and i64 %sub223, 1048576, !dbg !3221
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3221
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3221

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3221

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub228 = sub i64 %53, 1, !dbg !3221
  %and229 = and i64 %sub228, 524288, !dbg !3221
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3221
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3221

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3221

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub233 = sub i64 %54, 1, !dbg !3221
  %and234 = and i64 %sub233, 262144, !dbg !3221
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3221
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3221

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3221

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub238 = sub i64 %55, 1, !dbg !3221
  %and239 = and i64 %sub238, 131072, !dbg !3221
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3221
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3221

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3221

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub243 = sub i64 %56, 1, !dbg !3221
  %and244 = and i64 %sub243, 65536, !dbg !3221
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3221
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3221

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3221

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub248 = sub i64 %57, 1, !dbg !3221
  %and249 = and i64 %sub248, 32768, !dbg !3221
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3221
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3221

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3221

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub253 = sub i64 %58, 1, !dbg !3221
  %and254 = and i64 %sub253, 16384, !dbg !3221
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3221
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3221

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3221

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub258 = sub i64 %59, 1, !dbg !3221
  %and259 = and i64 %sub258, 8192, !dbg !3221
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3221
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3221

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3221

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub263 = sub i64 %60, 1, !dbg !3221
  %and264 = and i64 %sub263, 4096, !dbg !3221
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3221
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3221

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3221

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub268 = sub i64 %61, 1, !dbg !3221
  %and269 = and i64 %sub268, 2048, !dbg !3221
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3221
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3221

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3221

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub273 = sub i64 %62, 1, !dbg !3221
  %and274 = and i64 %sub273, 1024, !dbg !3221
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3221
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3221

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3221

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub278 = sub i64 %63, 1, !dbg !3221
  %and279 = and i64 %sub278, 512, !dbg !3221
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3221
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3221

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3221

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub283 = sub i64 %64, 1, !dbg !3221
  %and284 = and i64 %sub283, 256, !dbg !3221
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3221
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3221

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3221

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub288 = sub i64 %65, 1, !dbg !3221
  %and289 = and i64 %sub288, 128, !dbg !3221
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3221
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3221

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3221

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub293 = sub i64 %66, 1, !dbg !3221
  %and294 = and i64 %sub293, 64, !dbg !3221
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3221
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3221

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3221

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub298 = sub i64 %67, 1, !dbg !3221
  %and299 = and i64 %sub298, 32, !dbg !3221
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3221
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3221

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3221

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub303 = sub i64 %68, 1, !dbg !3221
  %and304 = and i64 %sub303, 16, !dbg !3221
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3221
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3221

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3221

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub308 = sub i64 %69, 1, !dbg !3221
  %and309 = and i64 %sub308, 8, !dbg !3221
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3221
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3221

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3221

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub313 = sub i64 %70, 1, !dbg !3221
  %and314 = and i64 %sub313, 4, !dbg !3221
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3221
  %71 = zext i1 %tobool315 to i64, !dbg !3221
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3221
  br label %cond.end, !dbg !3221

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3221
  br label %cond.end317, !dbg !3221

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3221
  br label %cond.end319, !dbg !3221

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3221
  br label %cond.end321, !dbg !3221

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3221
  br label %cond.end323, !dbg !3221

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3221
  br label %cond.end325, !dbg !3221

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3221
  br label %cond.end327, !dbg !3221

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3221
  br label %cond.end329, !dbg !3221

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3221
  br label %cond.end331, !dbg !3221

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3221
  br label %cond.end333, !dbg !3221

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3221
  br label %cond.end335, !dbg !3221

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3221
  br label %cond.end337, !dbg !3221

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3221
  br label %cond.end339, !dbg !3221

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3221
  br label %cond.end341, !dbg !3221

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3221
  br label %cond.end343, !dbg !3221

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3221
  br label %cond.end345, !dbg !3221

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3221
  br label %cond.end347, !dbg !3221

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3221
  br label %cond.end349, !dbg !3221

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3221
  br label %cond.end351, !dbg !3221

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3221
  br label %cond.end353, !dbg !3221

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3221
  br label %cond.end355, !dbg !3221

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3221
  br label %cond.end357, !dbg !3221

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3221
  br label %cond.end359, !dbg !3221

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3221
  br label %cond.end361, !dbg !3221

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3221
  br label %cond.end363, !dbg !3221

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3221
  br label %cond.end365, !dbg !3221

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3221
  br label %cond.end367, !dbg !3221

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3221
  br label %cond.end369, !dbg !3221

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3221
  br label %cond.end371, !dbg !3221

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3221
  br label %cond.end373, !dbg !3221

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3221
  br label %cond.end375, !dbg !3221

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3221
  br label %cond.end377, !dbg !3221

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3221
  br label %cond.end379, !dbg !3221

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3221
  br label %cond.end381, !dbg !3221

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3221
  br label %cond.end383, !dbg !3221

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3221
  br label %cond.end385, !dbg !3221

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3221
  br label %cond.end387, !dbg !3221

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3221
  br label %cond.end389, !dbg !3221

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3221
  br label %cond.end391, !dbg !3221

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3221
  br label %cond.end393, !dbg !3221

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3221
  br label %cond.end395, !dbg !3221

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3221
  br label %cond.end397, !dbg !3221

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3221
  br label %cond.end399, !dbg !3221

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3221
  br label %cond.end401, !dbg !3221

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3221
  br label %cond.end403, !dbg !3221

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3221
  br label %cond.end405, !dbg !3221

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3221
  br label %cond.end407, !dbg !3221

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3221
  br label %cond.end409, !dbg !3221

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3221
  br label %cond.end411, !dbg !3221

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3221
  br label %cond.end413, !dbg !3221

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3221
  br label %cond.end415, !dbg !3221

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3221
  br label %cond.end417, !dbg !3221

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3221
  br label %cond.end419, !dbg !3221

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3221
  br label %cond.end421, !dbg !3221

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3221
  br label %cond.end423, !dbg !3221

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3221
  br label %cond.end425, !dbg !3221

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3221
  br label %cond.end427, !dbg !3221

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3221
  br label %cond.end429, !dbg !3221

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3221
  br label %cond.end431, !dbg !3221

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3221
  br label %cond.end433, !dbg !3221

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3221
  br label %cond.end435, !dbg !3221

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3221
  br label %cond.end437, !dbg !3221

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3221
  br label %cond.end440, !dbg !3221

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3221

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3221
  br label %cond.end444, !dbg !3221

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3221
  %sub443 = sub i64 %72, 1, !dbg !3221
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3221
  br label %cond.end444, !dbg !3221

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3221
  %sub446 = sub i32 %cond445, 12, !dbg !3222
  %add = add i32 %sub446, 1, !dbg !3223
  store i32 %add, i32* %retval, align 4, !dbg !3224
  br label %return, !dbg !3224

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3225
  %dec = add i64 %73, -1, !dbg !3225
  store i64 %dec, i64* %size.addr, align 8, !dbg !3225
  %74 = load i64, i64* %size.addr, align 8, !dbg !3226
  %shr = lshr i64 %74, 12, !dbg !3226
  store i64 %shr, i64* %size.addr, align 8, !dbg !3226
  %75 = load i64, i64* %size.addr, align 8, !dbg !3227
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3204
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3228
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3229
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !3228, !srcloc !3230
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3228
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3231
  %add.i = add i32 %79, 1, !dbg !3232
  store i32 %add.i, i32* %retval, align 4, !dbg !3233
  br label %return, !dbg !3233

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3234
  ret i32 %80, !dbg !3234
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3235 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3196, metadata !DIExpression()), !dbg !3239
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3203, metadata !DIExpression()), !dbg !3241
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3242, metadata !DIExpression()), !dbg !3243
  %0 = load i64, i64* %n.addr, align 8, !dbg !3244
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3241
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3245
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3246
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !3245, !srcloc !3230
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3245
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3247
  %add.i = add i32 %4, 1, !dbg !3248
  %sub = sub i32 %add.i, 1, !dbg !3249
  ret i32 %sub, !dbg !3250
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3251 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3263
  ret i8* %0, !dbg !3264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_have_populated_dt() #0 !dbg !3265 {
entry:
  %0 = load %struct.device_node*, %struct.device_node** @of_root, align 8, !dbg !3266
  %cmp = icmp ne %struct.device_node* %0, null, !dbg !3267
  ret i1 %cmp, !dbg !3268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cache_setup_of_node(i32 %cpu) #0 !dbg !3269 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %np = alloca %struct.device_node*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %cpu_dev = alloca %struct.device*, align 8
  %this_cpu_ci = alloca %struct.cpu_cacheinfo*, align 8
  %index = alloca i32, align 4
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp10 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp21 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify23 = alloca i8*, align 8
  %tmp25 = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3272, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.declare(metadata %struct.device** %cpu_dev, metadata !3276, metadata !DIExpression()), !dbg !3277
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3278
  %call = call %struct.device* @get_cpu_device(i32 %0) #8, !dbg !3279
  store %struct.device* %call, %struct.device** %cpu_dev, align 8, !dbg !3277
  call void @llvm.dbg.declare(metadata %struct.cpu_cacheinfo** %this_cpu_ci, metadata !3280, metadata !DIExpression()), !dbg !3281
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !3282
  %call1 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %1) #8, !dbg !3283
  store %struct.cpu_cacheinfo* %call1, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !3281
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3284, metadata !DIExpression()), !dbg !3285
  store i32 0, i32* %index, align 4, !dbg !3285
  %2 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !3286
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %2, i32 0, i32 0, !dbg !3288
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8, !dbg !3288
  %fw_token = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 10, !dbg !3289
  %4 = load i8*, i8** %fw_token, align 8, !dbg !3289
  %tobool = icmp ne i8* %4, null, !dbg !3286
  br i1 %tobool, label %if.then, label %if.end, !dbg !3290

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3291
  br label %return, !dbg !3291

if.end:                                           ; preds = %entry
  %5 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !3293
  %tobool2 = icmp ne %struct.device* %5, null, !dbg !3293
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3295

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %cpu.addr, align 4, !dbg !3296
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %6) #9, !dbg !3296
  store i32 -19, i32* %retval, align 4, !dbg !3298
  br label %return, !dbg !3298

if.end5:                                          ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !3299
  %of_node = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 23, !dbg !3300
  %8 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3300
  store %struct.device_node* %8, %struct.device_node** %np, align 8, !dbg !3301
  %9 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3302
  %tobool6 = icmp ne %struct.device_node* %9, null, !dbg !3302
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3304

if.then7:                                         ; preds = %if.end5
  %10 = load i32, i32* %cpu.addr, align 4, !dbg !3305
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %10) #9, !dbg !3305
  store i32 -2, i32* %retval, align 4, !dbg !3307
  br label %return, !dbg !3307

if.end9:                                          ; preds = %if.end5
  br label %while.cond, !dbg !3308

while.cond:                                       ; preds = %if.end19, %if.end9
  %11 = load i32, i32* %index, align 4, !dbg !3309
  %12 = load i32, i32* %cpu.addr, align 4, !dbg !3310
  br label %do.body, !dbg !3312

do.body:                                          ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3314, metadata !DIExpression()), !dbg !3316
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3316
  %13 = load i8*, i8** %__vpp_verify, align 8, !dbg !3316
  br label %do.end, !dbg !3316

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp10, align 8, !dbg !3316
  %14 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp10, align 8, !dbg !3312
  store %struct.cpu_cacheinfo* %14, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !3310
  %15 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !3310
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %15, i32 0, i32 2, !dbg !3317
  %16 = load i32, i32* %num_leaves, align 4, !dbg !3317
  %cmp = icmp ult i32 %11, %16, !dbg !3318
  br i1 %cmp, label %while.body, label %while.end, !dbg !3308

while.body:                                       ; preds = %do.end
  %17 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !3319
  %info_list11 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %17, i32 0, i32 0, !dbg !3321
  %18 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list11, align 8, !dbg !3321
  %19 = load i32, i32* %index, align 4, !dbg !3322
  %idx.ext = zext i32 %19 to i64, !dbg !3323
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %18, i64 %idx.ext, !dbg !3323
  store %struct.cacheinfo* %add.ptr, %struct.cacheinfo** %this_leaf, align 8, !dbg !3324
  %20 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !3325
  %level = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %20, i32 0, i32 2, !dbg !3327
  %21 = load i32, i32* %level, align 8, !dbg !3327
  %cmp12 = icmp ne i32 %21, 1, !dbg !3328
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !3329

if.then13:                                        ; preds = %while.body
  %22 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3330
  %call14 = call %struct.device_node* @of_find_next_cache_node(%struct.device_node* %22) #8, !dbg !3331
  store %struct.device_node* %call14, %struct.device_node** %np, align 8, !dbg !3332
  br label %if.end16, !dbg !3333

if.else:                                          ; preds = %while.body
  %23 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3334
  %call15 = call %struct.device_node* @of_node_get(%struct.device_node* %23) #8, !dbg !3335
  store %struct.device_node* %call15, %struct.device_node** %np, align 8, !dbg !3336
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %24 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3337
  %tobool17 = icmp ne %struct.device_node* %24, null, !dbg !3337
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3339

if.then18:                                        ; preds = %if.end16
  br label %while.end, !dbg !3340

if.end19:                                         ; preds = %if.end16
  %25 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !3341
  %26 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3342
  call void @cache_of_set_props(%struct.cacheinfo* %25, %struct.device_node* %26) #8, !dbg !3343
  %27 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3344
  %28 = bitcast %struct.device_node* %27 to i8*, !dbg !3344
  %29 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !3345
  %fw_token20 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %29, i32 0, i32 10, !dbg !3346
  store i8* %28, i8** %fw_token20, align 8, !dbg !3347
  %30 = load i32, i32* %index, align 4, !dbg !3348
  %inc = add i32 %30, 1, !dbg !3348
  store i32 %inc, i32* %index, align 4, !dbg !3348
  br label %while.cond, !dbg !3308, !llvm.loop !3349

while.end:                                        ; preds = %if.then18, %do.end
  %31 = load i32, i32* %index, align 4, !dbg !3351
  %32 = load i32, i32* %cpu.addr, align 4, !dbg !3353
  br label %do.body22, !dbg !3355

do.body22:                                        ; preds = %while.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify23, metadata !3357, metadata !DIExpression()), !dbg !3359
  store i8* null, i8** %__vpp_verify23, align 8, !dbg !3359
  %33 = load i8*, i8** %__vpp_verify23, align 8, !dbg !3359
  br label %do.end24, !dbg !3359

do.end24:                                         ; preds = %do.body22
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp25, align 8, !dbg !3359
  %34 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp25, align 8, !dbg !3355
  store %struct.cpu_cacheinfo* %34, %struct.cpu_cacheinfo** %tmp21, align 8, !dbg !3353
  %35 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp21, align 8, !dbg !3353
  %num_leaves26 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %35, i32 0, i32 2, !dbg !3360
  %36 = load i32, i32* %num_leaves26, align 4, !dbg !3360
  %cmp27 = icmp ne i32 %31, %36, !dbg !3361
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3362

if.then28:                                        ; preds = %do.end24
  store i32 -2, i32* %retval, align 4, !dbg !3363
  br label %return, !dbg !3363

if.end29:                                         ; preds = %do.end24
  store i32 0, i32* %retval, align 4, !dbg !3364
  br label %return, !dbg !3364

return:                                           ; preds = %if.end29, %if.then28, %if.then7, %if.then3, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !3365
  ret i32 %37, !dbg !3365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cpumask_empty(%struct.cpumask* %srcp) #0 !dbg !3366 {
entry:
  %srcp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %srcp, %struct.cpumask** %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %srcp.addr, metadata !3369, metadata !DIExpression()), !dbg !3370
  %0 = load %struct.cpumask*, %struct.cpumask** %srcp.addr, align 8, !dbg !3371
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !3371
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3371
  %call = call i32 @bitmap_empty(i64* %arraydecay, i32 1) #8, !dbg !3372
  %tobool = icmp ne i32 %call, 0, !dbg !3372
  ret i1 %tobool, !dbg !3373
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_set_cpu(i32 %cpu, %struct.cpumask* %dstp) #0 !dbg !3374 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3378, metadata !DIExpression()), !dbg !3379
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !3380, metadata !DIExpression()), !dbg !3381
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3382
  %call = call i32 @cpumask_check(i32 %0) #8, !dbg !3383
  %conv = zext i32 %call to i64, !dbg !3383
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !3384
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !3384
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3384
  call void @set_bit(i64 %conv, i64* %arraydecay) #8, !dbg !3385
  ret void, !dbg !3386
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cache_leaves_are_shared(%struct.cacheinfo* %this_leaf, %struct.cacheinfo* %sib_leaf) #0 !dbg !3387 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %sib_leaf.addr = alloca %struct.cacheinfo*, align 8
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  store %struct.cacheinfo* %sib_leaf, %struct.cacheinfo** %sib_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %sib_leaf.addr, metadata !3392, metadata !DIExpression()), !dbg !3393
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %sib_leaf.addr, align 8, !dbg !3394
  %fw_token = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i32 0, i32 10, !dbg !3395
  %1 = load i8*, i8** %fw_token, align 8, !dbg !3395
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3396
  %fw_token1 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 10, !dbg !3397
  %3 = load i8*, i8** %fw_token1, align 8, !dbg !3397
  %cmp = icmp eq i8* %1, %3, !dbg !3398
  ret i1 %cmp, !dbg !3399
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_cpu_device(i32) #3

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_find_next_cache_node(%struct.device_node*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !3400 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3403, metadata !DIExpression()), !dbg !3404
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3405
  ret %struct.device_node* %0, !dbg !3406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cache_of_set_props(%struct.cacheinfo* %this_leaf, %struct.device_node* %np) #0 !dbg !3407 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3414
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i32 0, i32 1, !dbg !3416
  %1 = load i32, i32* %type, align 4, !dbg !3416
  %cmp = icmp eq i32 %1, 0, !dbg !3417
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3418

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3419
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3420
  %call = call zeroext i1 @cache_node_is_unified(%struct.cacheinfo* %2, %struct.device_node* %3) #8, !dbg !3421
  br i1 %call, label %if.then, label %if.end, !dbg !3422

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3423
  %type1 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %4, i32 0, i32 1, !dbg !3424
  store i32 4, i32* %type1, align 4, !dbg !3425
  br label %if.end, !dbg !3423

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3426
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3427
  call void @cache_size(%struct.cacheinfo* %5, %struct.device_node* %6) #8, !dbg !3428
  %7 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3429
  %8 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3430
  call void @cache_get_line_size(%struct.cacheinfo* %7, %struct.device_node* %8) #8, !dbg !3431
  %9 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3432
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3433
  call void @cache_nr_sets(%struct.cacheinfo* %9, %struct.device_node* %10) #8, !dbg !3434
  %11 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3435
  call void @cache_associativity(%struct.cacheinfo* %11) #8, !dbg !3436
  ret void, !dbg !3437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cache_node_is_unified(%struct.cacheinfo* %this_leaf, %struct.device_node* %np) #0 !dbg !3438 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3445
  %call = call zeroext i1 @of_property_read_bool(%struct.device_node* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !3446
  ret i1 %call, !dbg !3447
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cache_size(%struct.cacheinfo* %this_leaf, %struct.device_node* %np) #0 !dbg !3448 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %propname = alloca i8*, align 8
  %ct_idx = alloca i32, align 4
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3449, metadata !DIExpression()), !dbg !3450
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.declare(metadata i8** %propname, metadata !3453, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.declare(metadata i32* %ct_idx, metadata !3455, metadata !DIExpression()), !dbg !3456
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3457
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i32 0, i32 1, !dbg !3458
  %1 = load i32, i32* %type, align 4, !dbg !3458
  %call = call i32 @get_cacheinfo_idx(i32 %1) #8, !dbg !3459
  store i32 %call, i32* %ct_idx, align 4, !dbg !3460
  %2 = load i32, i32* %ct_idx, align 4, !dbg !3461
  %idxprom = sext i32 %2 to i64, !dbg !3462
  %arrayidx = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, !dbg !3462
  %size_prop = getelementptr inbounds %struct.cache_type_info, %struct.cache_type_info* %arrayidx, i32 0, i32 0, !dbg !3463
  %3 = load i8*, i8** %size_prop, align 16, !dbg !3463
  store i8* %3, i8** %propname, align 8, !dbg !3464
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3465
  %5 = load i8*, i8** %propname, align 8, !dbg !3466
  %6 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3467
  %size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %6, i32 0, i32 7, !dbg !3468
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %4, i8* %5, i32* %size) #8, !dbg !3469
  ret void, !dbg !3470
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cache_get_line_size(%struct.cacheinfo* %this_leaf, %struct.device_node* %np) #0 !dbg !3471 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %i = alloca i32, align 4
  %lim = alloca i32, align 4
  %ct_idx = alloca i32, align 4
  %ret = alloca i32, align 4
  %line_size = alloca i32, align 4
  %propname = alloca i8*, align 8
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3472, metadata !DIExpression()), !dbg !3473
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3476, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata i32* %lim, metadata !3478, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.declare(metadata i32* %ct_idx, metadata !3480, metadata !DIExpression()), !dbg !3481
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3482
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i32 0, i32 1, !dbg !3483
  %1 = load i32, i32* %type, align 4, !dbg !3483
  %call = call i32 @get_cacheinfo_idx(i32 %1) #8, !dbg !3484
  store i32 %call, i32* %ct_idx, align 4, !dbg !3485
  store i32 2, i32* %lim, align 4, !dbg !3486
  store i32 0, i32* %i, align 4, !dbg !3487
  br label %for.cond, !dbg !3489

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !3490
  %3 = load i32, i32* %lim, align 4, !dbg !3492
  %cmp = icmp slt i32 %2, %3, !dbg !3493
  br i1 %cmp, label %for.body, label %for.end, !dbg !3494

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3495, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.declare(metadata i32* %line_size, metadata !3498, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata i8** %propname, metadata !3500, metadata !DIExpression()), !dbg !3501
  %4 = load i32, i32* %ct_idx, align 4, !dbg !3502
  %idxprom = sext i32 %4 to i64, !dbg !3503
  %arrayidx = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, !dbg !3503
  %line_size_props = getelementptr inbounds %struct.cache_type_info, %struct.cache_type_info* %arrayidx, i32 0, i32 1, !dbg !3504
  %5 = load i32, i32* %i, align 4, !dbg !3505
  %idxprom1 = sext i32 %5 to i64, !dbg !3503
  %arrayidx2 = getelementptr [2 x i8*], [2 x i8*]* %line_size_props, i64 0, i64 %idxprom1, !dbg !3503
  %6 = load i8*, i8** %arrayidx2, align 8, !dbg !3503
  store i8* %6, i8** %propname, align 8, !dbg !3506
  %7 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3507
  %8 = load i8*, i8** %propname, align 8, !dbg !3508
  %call3 = call i32 @of_property_read_u32(%struct.device_node* %7, i8* %8, i32* %line_size) #8, !dbg !3509
  store i32 %call3, i32* %ret, align 4, !dbg !3510
  %9 = load i32, i32* %ret, align 4, !dbg !3511
  %tobool = icmp ne i32 %9, 0, !dbg !3511
  br i1 %tobool, label %if.end, label %if.then, !dbg !3513

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %line_size, align 4, !dbg !3514
  %11 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3516
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %11, i32 0, i32 3, !dbg !3517
  store i32 %10, i32* %coherency_line_size, align 4, !dbg !3518
  br label %for.end, !dbg !3519

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3520

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !3521
  %inc = add i32 %12, 1, !dbg !3521
  store i32 %inc, i32* %i, align 4, !dbg !3521
  br label %for.cond, !dbg !3522, !llvm.loop !3523

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cache_nr_sets(%struct.cacheinfo* %this_leaf, %struct.device_node* %np) #0 !dbg !3526 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %propname = alloca i8*, align 8
  %ct_idx = alloca i32, align 4
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3527, metadata !DIExpression()), !dbg !3528
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.declare(metadata i8** %propname, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.declare(metadata i32* %ct_idx, metadata !3533, metadata !DIExpression()), !dbg !3534
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3535
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i32 0, i32 1, !dbg !3536
  %1 = load i32, i32* %type, align 4, !dbg !3536
  %call = call i32 @get_cacheinfo_idx(i32 %1) #8, !dbg !3537
  store i32 %call, i32* %ct_idx, align 4, !dbg !3538
  %2 = load i32, i32* %ct_idx, align 4, !dbg !3539
  %idxprom = sext i32 %2 to i64, !dbg !3540
  %arrayidx = getelementptr [3 x %struct.cache_type_info], [3 x %struct.cache_type_info]* @cache_type_info, i64 0, i64 %idxprom, !dbg !3540
  %nr_sets_prop = getelementptr inbounds %struct.cache_type_info, %struct.cache_type_info* %arrayidx, i32 0, i32 2, !dbg !3541
  %3 = load i8*, i8** %nr_sets_prop, align 8, !dbg !3541
  store i8* %3, i8** %propname, align 8, !dbg !3542
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3543
  %5 = load i8*, i8** %propname, align 8, !dbg !3544
  %6 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3545
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %6, i32 0, i32 4, !dbg !3546
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %4, i8* %5, i32* %number_of_sets) #8, !dbg !3547
  ret void, !dbg !3548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cache_associativity(%struct.cacheinfo* %this_leaf) #0 !dbg !3549 {
entry:
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %line_size = alloca i32, align 4
  %nr_sets = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  call void @llvm.dbg.declare(metadata i32* %line_size, metadata !3554, metadata !DIExpression()), !dbg !3555
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3556
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %0, i32 0, i32 3, !dbg !3557
  %1 = load i32, i32* %coherency_line_size, align 4, !dbg !3557
  store i32 %1, i32* %line_size, align 4, !dbg !3555
  call void @llvm.dbg.declare(metadata i32* %nr_sets, metadata !3558, metadata !DIExpression()), !dbg !3559
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3560
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 4, !dbg !3561
  %3 = load i32, i32* %number_of_sets, align 8, !dbg !3561
  store i32 %3, i32* %nr_sets, align 4, !dbg !3559
  call void @llvm.dbg.declare(metadata i32* %size, metadata !3562, metadata !DIExpression()), !dbg !3563
  %4 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3564
  %size1 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %4, i32 0, i32 7, !dbg !3565
  %5 = load i32, i32* %size1, align 4, !dbg !3565
  store i32 %5, i32* %size, align 4, !dbg !3563
  %6 = load i32, i32* %nr_sets, align 4, !dbg !3566
  %cmp = icmp eq i32 %6, 1, !dbg !3568
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3569

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %nr_sets, align 4, !dbg !3570
  %cmp2 = icmp ugt i32 %7, 0, !dbg !3571
  br i1 %cmp2, label %land.lhs.true3, label %if.end, !dbg !3572

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load i32, i32* %size, align 4, !dbg !3573
  %cmp4 = icmp ugt i32 %8, 0, !dbg !3574
  br i1 %cmp4, label %land.lhs.true5, label %if.end, !dbg !3575

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %9 = load i32, i32* %line_size, align 4, !dbg !3576
  %cmp6 = icmp ugt i32 %9, 0, !dbg !3577
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3578

if.then:                                          ; preds = %land.lhs.true5
  %10 = load i32, i32* %size, align 4, !dbg !3579
  %11 = load i32, i32* %nr_sets, align 4, !dbg !3580
  %div = udiv i32 %10, %11, !dbg !3581
  %12 = load i32, i32* %line_size, align 4, !dbg !3582
  %div7 = udiv i32 %div, %12, !dbg !3583
  %13 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3584
  %ways_of_associativity = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %13, i32 0, i32 5, !dbg !3585
  store i32 %div7, i32* %ways_of_associativity, align 4, !dbg !3586
  br label %if.end, !dbg !3584

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true3, %land.lhs.true, %entry
  ret void, !dbg !3587
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !3588 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3593, metadata !DIExpression()), !dbg !3594
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3595, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !3597, metadata !DIExpression()), !dbg !3598
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3599
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3600
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #8, !dbg !3601
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !3598
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3602
  %tobool = icmp ne %struct.property* %2, null, !dbg !3602
  %3 = zext i1 %tobool to i64, !dbg !3602
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3602
  %tobool1 = icmp ne i32 %cond, 0, !dbg !3602
  ret i1 %tobool1, !dbg !3603
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_cacheinfo_idx(i32 %type) #0 !dbg !3604 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3607, metadata !DIExpression()), !dbg !3608
  %0 = load i32, i32* %type.addr, align 4, !dbg !3609
  %cmp = icmp eq i32 %0, 4, !dbg !3611
  br i1 %cmp, label %if.then, label %if.end, !dbg !3612

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3613
  br label %return, !dbg !3613

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4, !dbg !3614
  store i32 %1, i32* %retval, align 4, !dbg !3615
  br label %return, !dbg !3615

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !3616
  ret i32 %2, !dbg !3616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3617 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3620, metadata !DIExpression()), !dbg !3621
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3622, metadata !DIExpression()), !dbg !3623
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3624, metadata !DIExpression()), !dbg !3625
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3626
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3627
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3628
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #8, !dbg !3629
  ret i32 %call, !dbg !3630
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3631 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3634, metadata !DIExpression()), !dbg !3635
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3636, metadata !DIExpression()), !dbg !3637
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3638, metadata !DIExpression()), !dbg !3639
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3640, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3642, metadata !DIExpression()), !dbg !3643
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3644
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3645
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3646
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3647
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #8, !dbg !3648
  store i32 %call, i32* %ret, align 4, !dbg !3643
  %4 = load i32, i32* %ret, align 4, !dbg !3649
  %cmp = icmp sge i32 %4, 0, !dbg !3651
  br i1 %cmp, label %if.then, label %if.else, !dbg !3652

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3653
  br label %return, !dbg !3653

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3654
  store i32 %5, i32* %retval, align 4, !dbg !3655
  br label %return, !dbg !3655

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3656
  ret i32 %6, !dbg !3656
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_empty(i64* %src, i32 %nbits) #0 !dbg !3657 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %src, i64** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr, metadata !3663, metadata !DIExpression()), !dbg !3664
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !3665, metadata !DIExpression()), !dbg !3666
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !3667
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !3667
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !3667

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !3667
  %cmp = icmp ule i32 %2, 64, !dbg !3667
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !3667

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !3667
  %cmp2 = icmp ugt i32 %3, 0, !dbg !3667
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3669

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src.addr, align 8, !dbg !3670
  %5 = load i64, i64* %4, align 8, !dbg !3671
  %6 = load i32, i32* %nbits.addr, align 4, !dbg !3672
  %sub = sub i32 0, %6, !dbg !3672
  %and = and i32 %sub, 63, !dbg !3672
  %sh_prom = zext i32 %and to i64, !dbg !3672
  %shr = lshr i64 -1, %sh_prom, !dbg !3672
  %and3 = and i64 %5, %shr, !dbg !3673
  %tobool = icmp ne i64 %and3, 0, !dbg !3674
  %lnot = xor i1 %tobool, true, !dbg !3674
  %lnot.ext = zext i1 %lnot to i32, !dbg !3674
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !3675
  br label %return, !dbg !3675

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load i64*, i64** %src.addr, align 8, !dbg !3676
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !3677
  %conv = zext i32 %8 to i64, !dbg !3677
  %call = call i64 @find_first_bit(i64* %7, i64 %conv) #8, !dbg !3678
  %9 = load i32, i32* %nbits.addr, align 4, !dbg !3679
  %conv4 = zext i32 %9 to i64, !dbg !3679
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !3680
  %conv6 = zext i1 %cmp5 to i32, !dbg !3680
  store i32 %conv6, i32* %retval, align 4, !dbg !3681
  br label %return, !dbg !3681

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3682
  ret i32 %10, !dbg !3682
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !3683 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3689, metadata !DIExpression()), !dbg !3691
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3693, metadata !DIExpression()), !dbg !3694
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3695, metadata !DIExpression()), !dbg !3703
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3705, metadata !DIExpression()), !dbg !3706
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3711
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3712
  %div = sdiv i64 %1, 64, !dbg !3712
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3713
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3711
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3714
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3715
  %conv.i = trunc i64 %4 to i32, !dbg !3715
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !3716
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3717
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3717
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !3717
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3718
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3719
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3720
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !3722
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3723

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3724
  %12 = bitcast i64* %11 to i8*, !dbg !3724
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3724
  %shr.i = ashr i64 %13, 3, !dbg !3724
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3724
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3726
  %and.i = and i64 %14, 7, !dbg !3726
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3726
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3726
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !3727, !srcloc !3728
  br label %arch_set_bit.exit, !dbg !3729

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3730
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3732
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !3733, !srcloc !3734
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_check(i32 %cpu) #0 !dbg !3736 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3739, metadata !DIExpression()), !dbg !3740
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3741
  call void @cpu_max_bits_warn(i32 %0, i32 1) #8, !dbg !3742
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !3743
  ret i32 %1, !dbg !3744
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3745 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3749, metadata !DIExpression()), !dbg !3750
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3751, metadata !DIExpression()), !dbg !3752
  ret i1 true, !dbg !3753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3754 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3758, metadata !DIExpression()), !dbg !3759
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3760, metadata !DIExpression()), !dbg !3761
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3762, metadata !DIExpression()), !dbg !3763
  ret void, !dbg !3764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_max_bits_warn(i32 %cpu, i32 %bits) #0 !dbg !3765 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3768, metadata !DIExpression()), !dbg !3769
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !3770, metadata !DIExpression()), !dbg !3771
  ret void, !dbg !3772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpu_cache_sysfs_init(i32 %cpu) #0 !dbg !3773 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp3 = alloca %struct.device**, align 8
  %__vpp_verify5 = alloca i8*, align 8
  %tmp7 = alloca %struct.device**, align 8
  %tmp8 = alloca %struct.device**, align 8
  %__vpp_verify10 = alloca i8*, align 8
  %tmp12 = alloca %struct.device**, align 8
  %tmp15 = alloca %struct.device**, align 8
  %__vpp_verify17 = alloca i8*, align 8
  %tmp19 = alloca %struct.device**, align 8
  %tmp22 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify24 = alloca i8*, align 8
  %tmp26 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp29 = alloca %struct.device***, align 8
  %__vpp_verify31 = alloca i8*, align 8
  %tmp33 = alloca %struct.device***, align 8
  %tmp34 = alloca %struct.device***, align 8
  %__vpp_verify36 = alloca i8*, align 8
  %tmp38 = alloca %struct.device***, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3776, metadata !DIExpression()), !dbg !3777
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3778
  %call = call %struct.device* @get_cpu_device(i32 %0) #8, !dbg !3779
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !3777
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !3780
  br label %do.body, !dbg !3783

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3785, metadata !DIExpression()), !dbg !3787
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3787
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !3787
  br label %do.end, !dbg !3787

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !3787
  %3 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !3783
  store %struct.cpu_cacheinfo* %3, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !3780
  %4 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !3780
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %4, i32 0, i32 0, !dbg !3788
  %5 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8, !dbg !3788
  %cmp = icmp eq %struct.cacheinfo* %5, null, !dbg !3789
  br i1 %cmp, label %if.then, label %if.end, !dbg !3790

if.then:                                          ; preds = %do.end
  store i32 -2, i32* %retval, align 4, !dbg !3791
  br label %return, !dbg !3791

if.end:                                           ; preds = %do.end
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3792
  %call2 = call %struct.device* (%struct.device*, i8*, %struct.attribute_group**, i8*, ...) @cpu_device_create(%struct.device* %6, i8* null, %struct.attribute_group** null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !3793
  %7 = load i32, i32* %cpu.addr, align 4, !dbg !3794
  br label %do.body4, !dbg !3796

do.body4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify5, metadata !3798, metadata !DIExpression()), !dbg !3800
  store i8* null, i8** %__vpp_verify5, align 8, !dbg !3800
  %8 = load i8*, i8** %__vpp_verify5, align 8, !dbg !3800
  br label %do.end6, !dbg !3800

do.end6:                                          ; preds = %do.body4
  store %struct.device** @ci_cache_dev, %struct.device*** %tmp7, align 8, !dbg !3800
  %9 = load %struct.device**, %struct.device*** %tmp7, align 8, !dbg !3796
  store %struct.device** %9, %struct.device*** %tmp3, align 8, !dbg !3794
  %10 = load %struct.device**, %struct.device*** %tmp3, align 8, !dbg !3794
  store %struct.device* %call2, %struct.device** %10, align 8, !dbg !3801
  %11 = load i32, i32* %cpu.addr, align 4, !dbg !3802
  br label %do.body9, !dbg !3805

do.body9:                                         ; preds = %do.end6
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify10, metadata !3807, metadata !DIExpression()), !dbg !3809
  store i8* null, i8** %__vpp_verify10, align 8, !dbg !3809
  %12 = load i8*, i8** %__vpp_verify10, align 8, !dbg !3809
  br label %do.end11, !dbg !3809

do.end11:                                         ; preds = %do.body9
  store %struct.device** @ci_cache_dev, %struct.device*** %tmp12, align 8, !dbg !3809
  %13 = load %struct.device**, %struct.device*** %tmp12, align 8, !dbg !3805
  store %struct.device** %13, %struct.device*** %tmp8, align 8, !dbg !3802
  %14 = load %struct.device**, %struct.device*** %tmp8, align 8, !dbg !3802
  %15 = load %struct.device*, %struct.device** %14, align 8, !dbg !3810
  %16 = bitcast %struct.device* %15 to i8*, !dbg !3810
  %call13 = call zeroext i1 @IS_ERR(i8* %16) #8, !dbg !3811
  br i1 %call13, label %if.then14, label %if.end21, !dbg !3812

if.then14:                                        ; preds = %do.end11
  %17 = load i32, i32* %cpu.addr, align 4, !dbg !3813
  br label %do.body16, !dbg !3815

do.body16:                                        ; preds = %if.then14
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify17, metadata !3817, metadata !DIExpression()), !dbg !3819
  store i8* null, i8** %__vpp_verify17, align 8, !dbg !3819
  %18 = load i8*, i8** %__vpp_verify17, align 8, !dbg !3819
  br label %do.end18, !dbg !3819

do.end18:                                         ; preds = %do.body16
  store %struct.device** @ci_cache_dev, %struct.device*** %tmp19, align 8, !dbg !3819
  %19 = load %struct.device**, %struct.device*** %tmp19, align 8, !dbg !3815
  store %struct.device** %19, %struct.device*** %tmp15, align 8, !dbg !3813
  %20 = load %struct.device**, %struct.device*** %tmp15, align 8, !dbg !3813
  %21 = load %struct.device*, %struct.device** %20, align 8, !dbg !3820
  %22 = bitcast %struct.device* %21 to i8*, !dbg !3820
  %call20 = call i64 @PTR_ERR(i8* %22) #8, !dbg !3821
  %conv = trunc i64 %call20 to i32, !dbg !3821
  store i32 %conv, i32* %retval, align 4, !dbg !3822
  br label %return, !dbg !3822

if.end21:                                         ; preds = %do.end11
  %23 = load i32, i32* %cpu.addr, align 4, !dbg !3823
  br label %do.body23, !dbg !3825

do.body23:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify24, metadata !3827, metadata !DIExpression()), !dbg !3829
  store i8* null, i8** %__vpp_verify24, align 8, !dbg !3829
  %24 = load i8*, i8** %__vpp_verify24, align 8, !dbg !3829
  br label %do.end25, !dbg !3829

do.end25:                                         ; preds = %do.body23
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp26, align 8, !dbg !3829
  %25 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp26, align 8, !dbg !3825
  store %struct.cpu_cacheinfo* %25, %struct.cpu_cacheinfo** %tmp22, align 8, !dbg !3823
  %26 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp22, align 8, !dbg !3823
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %26, i32 0, i32 2, !dbg !3830
  %27 = load i32, i32* %num_leaves, align 4, !dbg !3830
  %conv27 = zext i32 %27 to i64, !dbg !3830
  %call28 = call i8* @kcalloc(i64 %conv27, i64 8, i32 3264) #8, !dbg !3831
  %28 = bitcast i8* %call28 to %struct.device**, !dbg !3831
  %29 = load i32, i32* %cpu.addr, align 4, !dbg !3832
  br label %do.body30, !dbg !3834

do.body30:                                        ; preds = %do.end25
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify31, metadata !3836, metadata !DIExpression()), !dbg !3838
  store i8* null, i8** %__vpp_verify31, align 8, !dbg !3838
  %30 = load i8*, i8** %__vpp_verify31, align 8, !dbg !3838
  br label %do.end32, !dbg !3838

do.end32:                                         ; preds = %do.body30
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp33, align 8, !dbg !3838
  %31 = load %struct.device***, %struct.device**** %tmp33, align 8, !dbg !3834
  store %struct.device*** %31, %struct.device**** %tmp29, align 8, !dbg !3832
  %32 = load %struct.device***, %struct.device**** %tmp29, align 8, !dbg !3832
  store %struct.device** %28, %struct.device*** %32, align 8, !dbg !3839
  %33 = load i32, i32* %cpu.addr, align 4, !dbg !3840
  br label %do.body35, !dbg !3843

do.body35:                                        ; preds = %do.end32
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify36, metadata !3845, metadata !DIExpression()), !dbg !3847
  store i8* null, i8** %__vpp_verify36, align 8, !dbg !3847
  %34 = load i8*, i8** %__vpp_verify36, align 8, !dbg !3847
  br label %do.end37, !dbg !3847

do.end37:                                         ; preds = %do.body35
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp38, align 8, !dbg !3847
  %35 = load %struct.device***, %struct.device**** %tmp38, align 8, !dbg !3843
  store %struct.device*** %35, %struct.device**** %tmp34, align 8, !dbg !3840
  %36 = load %struct.device***, %struct.device**** %tmp34, align 8, !dbg !3840
  %37 = load %struct.device**, %struct.device*** %36, align 8, !dbg !3848
  %cmp39 = icmp eq %struct.device** %37, null, !dbg !3848
  %lnot = xor i1 %cmp39, true, !dbg !3848
  %lnot41 = xor i1 %lnot, true, !dbg !3848
  %lnot.ext = zext i1 %lnot41 to i32, !dbg !3848
  %conv42 = sext i32 %lnot.ext to i64, !dbg !3848
  %tobool = icmp ne i64 %conv42, 0, !dbg !3848
  br i1 %tobool, label %if.then43, label %if.end44, !dbg !3849

if.then43:                                        ; preds = %do.end37
  br label %err_out, !dbg !3850

if.end44:                                         ; preds = %do.end37
  store i32 0, i32* %retval, align 4, !dbg !3851
  br label %return, !dbg !3851

err_out:                                          ; preds = %if.then43
  call void @llvm.dbg.label(metadata !3852), !dbg !3853
  %38 = load i32, i32* %cpu.addr, align 4, !dbg !3854
  call void @cpu_cache_sysfs_exit(i32 %38) #8, !dbg !3855
  store i32 -12, i32* %retval, align 4, !dbg !3856
  br label %return, !dbg !3856

return:                                           ; preds = %err_out, %if.end44, %do.end18, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !3857
  ret i32 %39, !dbg !3857
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.attribute_group** @cache_get_attribute_groups(%struct.cacheinfo* %this_leaf) #0 !dbg !3858 {
entry:
  %retval = alloca %struct.attribute_group**, align 8
  %this_leaf.addr = alloca %struct.cacheinfo*, align 8
  %priv_group = alloca %struct.attribute_group*, align 8
  store %struct.cacheinfo* %this_leaf, %struct.cacheinfo** %this_leaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf.addr, metadata !3861, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.declare(metadata %struct.attribute_group** %priv_group, metadata !3863, metadata !DIExpression()), !dbg !3864
  %0 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf.addr, align 8, !dbg !3865
  %call = call %struct.attribute_group* @cache_get_priv_group(%struct.cacheinfo* %0) #8, !dbg !3866
  store %struct.attribute_group* %call, %struct.attribute_group** %priv_group, align 8, !dbg !3864
  %1 = load %struct.attribute_group*, %struct.attribute_group** %priv_group, align 8, !dbg !3867
  %tobool = icmp ne %struct.attribute_group* %1, null, !dbg !3867
  br i1 %tobool, label %if.end, label %if.then, !dbg !3869

if.then:                                          ; preds = %entry
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @cache_default_groups, i64 0, i64 0), %struct.attribute_group*** %retval, align 8, !dbg !3870
  br label %return, !dbg !3870

if.end:                                           ; preds = %entry
  %2 = load %struct.attribute_group*, %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 1), align 8, !dbg !3871
  %tobool1 = icmp ne %struct.attribute_group* %2, null, !dbg !3871
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3873

if.then2:                                         ; preds = %if.end
  %3 = load %struct.attribute_group*, %struct.attribute_group** %priv_group, align 8, !dbg !3874
  store %struct.attribute_group* %3, %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 1), align 8, !dbg !3875
  br label %if.end3, !dbg !3876

if.end3:                                          ; preds = %if.then2, %if.end
  store %struct.attribute_group** getelementptr inbounds ([3 x %struct.attribute_group*], [3 x %struct.attribute_group*]* @cache_private_groups, i64 0, i64 0), %struct.attribute_group*** %retval, align 8, !dbg !3877
  br label %return, !dbg !3877

return:                                           ; preds = %if.end3, %if.then
  %4 = load %struct.attribute_group**, %struct.attribute_group*** %retval, align 8, !dbg !3878
  ret %struct.attribute_group** %4, !dbg !3878
}

; Function Attrs: noredzone
declare dso_local %struct.device* @cpu_device_create(%struct.device*, i8*, %struct.attribute_group**, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3879 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3883, metadata !DIExpression()), !dbg !3884
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3885
  %1 = ptrtoint i8* %0 to i64, !dbg !3885
  %2 = inttoptr i64 %1 to i8*, !dbg !3885
  %3 = ptrtoint i8* %2 to i64, !dbg !3885
  %cmp = icmp uge i64 %3, -4095, !dbg !3885
  %lnot = xor i1 %cmp, true, !dbg !3885
  %lnot1 = xor i1 %lnot, true, !dbg !3885
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3885
  %conv = sext i32 %lnot.ext to i64, !dbg !3885
  %tobool = icmp ne i64 %conv, 0, !dbg !3885
  ret i1 %tobool, !dbg !3886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3887 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3890, metadata !DIExpression()), !dbg !3891
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3892
  %1 = ptrtoint i8* %0 to i64, !dbg !3893
  ret i64 %1, !dbg !3894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_cache_sysfs_exit(i32 %cpu) #0 !dbg !3895 {
entry:
  %cpu.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ci_dev = alloca %struct.device*, align 8
  %tmp = alloca %struct.device***, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.device***, align 8
  %tmp2 = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify4 = alloca i8*, align 8
  %tmp6 = alloca %struct.cpu_cacheinfo*, align 8
  %tmp7 = alloca %struct.device***, align 8
  %__vpp_verify9 = alloca i8*, align 8
  %tmp11 = alloca %struct.device***, align 8
  %tmp14 = alloca %struct.device***, align 8
  %__vpp_verify16 = alloca i8*, align 8
  %tmp18 = alloca %struct.device***, align 8
  %tmp19 = alloca %struct.device***, align 8
  %__vpp_verify21 = alloca i8*, align 8
  %tmp23 = alloca %struct.device***, align 8
  %tmp25 = alloca %struct.device**, align 8
  %__vpp_verify27 = alloca i8*, align 8
  %tmp29 = alloca %struct.device**, align 8
  %tmp30 = alloca %struct.device**, align 8
  %__vpp_verify32 = alloca i8*, align 8
  %tmp34 = alloca %struct.device**, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3896, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3898, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.declare(metadata %struct.device** %ci_dev, metadata !3900, metadata !DIExpression()), !dbg !3901
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3902
  br label %do.body, !dbg !3905

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !3907, metadata !DIExpression()), !dbg !3909
  store i8* null, i8** %__vpp_verify, align 8, !dbg !3909
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !3909
  br label %do.end, !dbg !3909

do.end:                                           ; preds = %do.body
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp1, align 8, !dbg !3909
  %2 = load %struct.device***, %struct.device**** %tmp1, align 8, !dbg !3905
  store %struct.device*** %2, %struct.device**** %tmp, align 8, !dbg !3902
  %3 = load %struct.device***, %struct.device**** %tmp, align 8, !dbg !3902
  %4 = load %struct.device**, %struct.device*** %3, align 8, !dbg !3910
  %tobool = icmp ne %struct.device** %4, null, !dbg !3910
  br i1 %tobool, label %if.then, label %if.end24, !dbg !3911

if.then:                                          ; preds = %do.end
  store i32 0, i32* %i, align 4, !dbg !3912
  br label %for.cond, !dbg !3915

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !3916
  %6 = load i32, i32* %cpu.addr, align 4, !dbg !3918
  br label %do.body3, !dbg !3920

do.body3:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify4, metadata !3922, metadata !DIExpression()), !dbg !3924
  store i8* null, i8** %__vpp_verify4, align 8, !dbg !3924
  %7 = load i8*, i8** %__vpp_verify4, align 8, !dbg !3924
  br label %do.end5, !dbg !3924

do.end5:                                          ; preds = %do.body3
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp6, align 8, !dbg !3924
  %8 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp6, align 8, !dbg !3920
  store %struct.cpu_cacheinfo* %8, %struct.cpu_cacheinfo** %tmp2, align 8, !dbg !3918
  %9 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp2, align 8, !dbg !3918
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %9, i32 0, i32 2, !dbg !3925
  %10 = load i32, i32* %num_leaves, align 4, !dbg !3925
  %cmp = icmp ult i32 %5, %10, !dbg !3926
  br i1 %cmp, label %for.body, label %for.end, !dbg !3927

for.body:                                         ; preds = %do.end5
  %11 = load i32, i32* %cpu.addr, align 4, !dbg !3928
  br label %do.body8, !dbg !3931

do.body8:                                         ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify9, metadata !3933, metadata !DIExpression()), !dbg !3935
  store i8* null, i8** %__vpp_verify9, align 8, !dbg !3935
  %12 = load i8*, i8** %__vpp_verify9, align 8, !dbg !3935
  br label %do.end10, !dbg !3935

do.end10:                                         ; preds = %do.body8
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp11, align 8, !dbg !3935
  %13 = load %struct.device***, %struct.device**** %tmp11, align 8, !dbg !3931
  store %struct.device*** %13, %struct.device**** %tmp7, align 8, !dbg !3928
  %14 = load %struct.device***, %struct.device**** %tmp7, align 8, !dbg !3928
  %15 = load %struct.device**, %struct.device*** %14, align 8, !dbg !3936
  %16 = load i32, i32* %i, align 4, !dbg !3936
  %idxprom = sext i32 %16 to i64, !dbg !3936
  %arrayidx = getelementptr %struct.device*, %struct.device** %15, i64 %idxprom, !dbg !3936
  %17 = load %struct.device*, %struct.device** %arrayidx, align 8, !dbg !3936
  store %struct.device* %17, %struct.device** %ci_dev, align 8, !dbg !3937
  %18 = load %struct.device*, %struct.device** %ci_dev, align 8, !dbg !3938
  %tobool12 = icmp ne %struct.device* %18, null, !dbg !3938
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !3940

if.then13:                                        ; preds = %do.end10
  br label %for.inc, !dbg !3941

if.end:                                           ; preds = %do.end10
  %19 = load %struct.device*, %struct.device** %ci_dev, align 8, !dbg !3942
  call void @device_unregister(%struct.device* %19) #8, !dbg !3943
  br label %for.inc, !dbg !3944

for.inc:                                          ; preds = %if.end, %if.then13
  %20 = load i32, i32* %i, align 4, !dbg !3945
  %inc = add i32 %20, 1, !dbg !3945
  store i32 %inc, i32* %i, align 4, !dbg !3945
  br label %for.cond, !dbg !3946, !llvm.loop !3947

for.end:                                          ; preds = %do.end5
  %21 = load i32, i32* %cpu.addr, align 4, !dbg !3949
  br label %do.body15, !dbg !3951

do.body15:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify16, metadata !3953, metadata !DIExpression()), !dbg !3955
  store i8* null, i8** %__vpp_verify16, align 8, !dbg !3955
  %22 = load i8*, i8** %__vpp_verify16, align 8, !dbg !3955
  br label %do.end17, !dbg !3955

do.end17:                                         ; preds = %do.body15
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp18, align 8, !dbg !3955
  %23 = load %struct.device***, %struct.device**** %tmp18, align 8, !dbg !3951
  store %struct.device*** %23, %struct.device**** %tmp14, align 8, !dbg !3949
  %24 = load %struct.device***, %struct.device**** %tmp14, align 8, !dbg !3949
  %25 = load %struct.device**, %struct.device*** %24, align 8, !dbg !3956
  %26 = bitcast %struct.device** %25 to i8*, !dbg !3956
  call void @kfree(i8* %26) #8, !dbg !3957
  %27 = load i32, i32* %cpu.addr, align 4, !dbg !3958
  br label %do.body20, !dbg !3960

do.body20:                                        ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify21, metadata !3962, metadata !DIExpression()), !dbg !3964
  store i8* null, i8** %__vpp_verify21, align 8, !dbg !3964
  %28 = load i8*, i8** %__vpp_verify21, align 8, !dbg !3964
  br label %do.end22, !dbg !3964

do.end22:                                         ; preds = %do.body20
  store %struct.device*** @ci_index_dev, %struct.device**** %tmp23, align 8, !dbg !3964
  %29 = load %struct.device***, %struct.device**** %tmp23, align 8, !dbg !3960
  store %struct.device*** %29, %struct.device**** %tmp19, align 8, !dbg !3958
  %30 = load %struct.device***, %struct.device**** %tmp19, align 8, !dbg !3958
  store %struct.device** null, %struct.device*** %30, align 8, !dbg !3965
  br label %if.end24, !dbg !3966

if.end24:                                         ; preds = %do.end22, %do.end
  %31 = load i32, i32* %cpu.addr, align 4, !dbg !3967
  br label %do.body26, !dbg !3969

do.body26:                                        ; preds = %if.end24
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify27, metadata !3971, metadata !DIExpression()), !dbg !3973
  store i8* null, i8** %__vpp_verify27, align 8, !dbg !3973
  %32 = load i8*, i8** %__vpp_verify27, align 8, !dbg !3973
  br label %do.end28, !dbg !3973

do.end28:                                         ; preds = %do.body26
  store %struct.device** @ci_cache_dev, %struct.device*** %tmp29, align 8, !dbg !3973
  %33 = load %struct.device**, %struct.device*** %tmp29, align 8, !dbg !3969
  store %struct.device** %33, %struct.device*** %tmp25, align 8, !dbg !3967
  %34 = load %struct.device**, %struct.device*** %tmp25, align 8, !dbg !3967
  %35 = load %struct.device*, %struct.device** %34, align 8, !dbg !3974
  call void @device_unregister(%struct.device* %35) #8, !dbg !3975
  %36 = load i32, i32* %cpu.addr, align 4, !dbg !3976
  br label %do.body31, !dbg !3978

do.body31:                                        ; preds = %do.end28
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify32, metadata !3980, metadata !DIExpression()), !dbg !3982
  store i8* null, i8** %__vpp_verify32, align 8, !dbg !3982
  %37 = load i8*, i8** %__vpp_verify32, align 8, !dbg !3982
  br label %do.end33, !dbg !3982

do.end33:                                         ; preds = %do.body31
  store %struct.device** @ci_cache_dev, %struct.device*** %tmp34, align 8, !dbg !3982
  %38 = load %struct.device**, %struct.device*** %tmp34, align 8, !dbg !3978
  store %struct.device** %38, %struct.device*** %tmp30, align 8, !dbg !3976
  %39 = load %struct.device**, %struct.device*** %tmp30, align 8, !dbg !3976
  store %struct.device* null, %struct.device** %39, align 8, !dbg !3983
  ret void, !dbg !3984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @cache_default_attrs_is_visible(%struct.kobject* %kobj, %struct.attribute* %attr, i32 %unused) #0 !dbg !3985 {
entry:
  %retval = alloca i16, align 2
  %kobj.addr = alloca %struct.kobject*, align 8
  %attr.addr = alloca %struct.attribute*, align 8
  %unused.addr = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %mask = alloca %struct.cpumask*, align 8
  %mode = alloca i16, align 2
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  store %struct.attribute* %attr, %struct.attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.attribute** %attr.addr, metadata !3988, metadata !DIExpression()), !dbg !3989
  store i32 %unused, i32* %unused.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unused.addr, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3992, metadata !DIExpression()), !dbg !3993
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3994
  %call = call %struct.device* @kobj_to_dev(%struct.kobject* %0) #8, !dbg !3995
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !3993
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !3996, metadata !DIExpression()), !dbg !3997
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3998
  %call1 = call i8* @dev_get_drvdata(%struct.device* %1) #8, !dbg !3999
  %2 = bitcast i8* %call1 to %struct.cacheinfo*, !dbg !3999
  store %struct.cacheinfo* %2, %struct.cacheinfo** %this_leaf, align 8, !dbg !3997
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask, metadata !4000, metadata !DIExpression()), !dbg !4001
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4002
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 8, !dbg !4003
  store %struct.cpumask* %shared_cpu_map, %struct.cpumask** %mask, align 8, !dbg !4001
  call void @llvm.dbg.declare(metadata i16* %mode, metadata !4004, metadata !DIExpression()), !dbg !4005
  %4 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4006
  %mode2 = getelementptr inbounds %struct.attribute, %struct.attribute* %4, i32 0, i32 1, !dbg !4007
  %5 = load i16, i16* %mode2, align 8, !dbg !4007
  store i16 %5, i16* %mode, align 2, !dbg !4005
  %6 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4008
  %cmp = icmp eq %struct.attribute* %6, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_id, i32 0, i32 0), !dbg !4010
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4011

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4012
  %attributes = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %7, i32 0, i32 9, !dbg !4013
  %8 = load i32, i32* %attributes, align 8, !dbg !4013
  %conv = zext i32 %8 to i64, !dbg !4012
  %and = and i64 %conv, 16, !dbg !4014
  %tobool = icmp ne i64 %and, 0, !dbg !4014
  br i1 %tobool, label %if.then, label %if.end, !dbg !4015

if.then:                                          ; preds = %land.lhs.true
  %9 = load i16, i16* %mode, align 2, !dbg !4016
  store i16 %9, i16* %retval, align 2, !dbg !4017
  br label %return, !dbg !4017

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4018
  %cmp3 = icmp eq %struct.attribute* %10, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_type, i32 0, i32 0), !dbg !4020
  br i1 %cmp3, label %land.lhs.true5, label %if.end8, !dbg !4021

land.lhs.true5:                                   ; preds = %if.end
  %11 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4022
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %11, i32 0, i32 1, !dbg !4023
  %12 = load i32, i32* %type, align 4, !dbg !4023
  %tobool6 = icmp ne i32 %12, 0, !dbg !4022
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4024

if.then7:                                         ; preds = %land.lhs.true5
  %13 = load i16, i16* %mode, align 2, !dbg !4025
  store i16 %13, i16* %retval, align 2, !dbg !4026
  br label %return, !dbg !4026

if.end8:                                          ; preds = %land.lhs.true5, %if.end
  %14 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4027
  %cmp9 = icmp eq %struct.attribute* %14, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_level, i32 0, i32 0), !dbg !4029
  br i1 %cmp9, label %land.lhs.true11, label %if.end14, !dbg !4030

land.lhs.true11:                                  ; preds = %if.end8
  %15 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4031
  %level = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %15, i32 0, i32 2, !dbg !4032
  %16 = load i32, i32* %level, align 8, !dbg !4032
  %tobool12 = icmp ne i32 %16, 0, !dbg !4031
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4033

if.then13:                                        ; preds = %land.lhs.true11
  %17 = load i16, i16* %mode, align 2, !dbg !4034
  store i16 %17, i16* %retval, align 2, !dbg !4035
  br label %return, !dbg !4035

if.end14:                                         ; preds = %land.lhs.true11, %if.end8
  %18 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4036
  %cmp15 = icmp eq %struct.attribute* %18, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_map, i32 0, i32 0), !dbg !4038
  br i1 %cmp15, label %land.lhs.true17, label %if.end20, !dbg !4039

land.lhs.true17:                                  ; preds = %if.end14
  %19 = load %struct.cpumask*, %struct.cpumask** %mask, align 8, !dbg !4040
  %call18 = call zeroext i1 @cpumask_empty(%struct.cpumask* %19) #8, !dbg !4041
  br i1 %call18, label %if.end20, label %if.then19, !dbg !4042

if.then19:                                        ; preds = %land.lhs.true17
  %20 = load i16, i16* %mode, align 2, !dbg !4043
  store i16 %20, i16* %retval, align 2, !dbg !4044
  br label %return, !dbg !4044

if.end20:                                         ; preds = %land.lhs.true17, %if.end14
  %21 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4045
  %cmp21 = icmp eq %struct.attribute* %21, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_shared_cpu_list, i32 0, i32 0), !dbg !4047
  br i1 %cmp21, label %land.lhs.true23, label %if.end26, !dbg !4048

land.lhs.true23:                                  ; preds = %if.end20
  %22 = load %struct.cpumask*, %struct.cpumask** %mask, align 8, !dbg !4049
  %call24 = call zeroext i1 @cpumask_empty(%struct.cpumask* %22) #8, !dbg !4050
  br i1 %call24, label %if.end26, label %if.then25, !dbg !4051

if.then25:                                        ; preds = %land.lhs.true23
  %23 = load i16, i16* %mode, align 2, !dbg !4052
  store i16 %23, i16* %retval, align 2, !dbg !4053
  br label %return, !dbg !4053

if.end26:                                         ; preds = %land.lhs.true23, %if.end20
  %24 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4054
  %cmp27 = icmp eq %struct.attribute* %24, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_coherency_line_size, i32 0, i32 0), !dbg !4056
  br i1 %cmp27, label %land.lhs.true29, label %if.end32, !dbg !4057

land.lhs.true29:                                  ; preds = %if.end26
  %25 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4058
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %25, i32 0, i32 3, !dbg !4059
  %26 = load i32, i32* %coherency_line_size, align 4, !dbg !4059
  %tobool30 = icmp ne i32 %26, 0, !dbg !4058
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !4060

if.then31:                                        ; preds = %land.lhs.true29
  %27 = load i16, i16* %mode, align 2, !dbg !4061
  store i16 %27, i16* %retval, align 2, !dbg !4062
  br label %return, !dbg !4062

if.end32:                                         ; preds = %land.lhs.true29, %if.end26
  %28 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4063
  %cmp33 = icmp eq %struct.attribute* %28, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_ways_of_associativity, i32 0, i32 0), !dbg !4065
  br i1 %cmp33, label %land.lhs.true35, label %if.end38, !dbg !4066

land.lhs.true35:                                  ; preds = %if.end32
  %29 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4067
  %size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %29, i32 0, i32 7, !dbg !4068
  %30 = load i32, i32* %size, align 4, !dbg !4068
  %tobool36 = icmp ne i32 %30, 0, !dbg !4067
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4069

if.then37:                                        ; preds = %land.lhs.true35
  %31 = load i16, i16* %mode, align 2, !dbg !4070
  store i16 %31, i16* %retval, align 2, !dbg !4071
  br label %return, !dbg !4071

if.end38:                                         ; preds = %land.lhs.true35, %if.end32
  %32 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4072
  %cmp39 = icmp eq %struct.attribute* %32, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_number_of_sets, i32 0, i32 0), !dbg !4074
  br i1 %cmp39, label %land.lhs.true41, label %if.end44, !dbg !4075

land.lhs.true41:                                  ; preds = %if.end38
  %33 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4076
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %33, i32 0, i32 4, !dbg !4077
  %34 = load i32, i32* %number_of_sets, align 8, !dbg !4077
  %tobool42 = icmp ne i32 %34, 0, !dbg !4076
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !4078

if.then43:                                        ; preds = %land.lhs.true41
  %35 = load i16, i16* %mode, align 2, !dbg !4079
  store i16 %35, i16* %retval, align 2, !dbg !4080
  br label %return, !dbg !4080

if.end44:                                         ; preds = %land.lhs.true41, %if.end38
  %36 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4081
  %cmp45 = icmp eq %struct.attribute* %36, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_size, i32 0, i32 0), !dbg !4083
  br i1 %cmp45, label %land.lhs.true47, label %if.end51, !dbg !4084

land.lhs.true47:                                  ; preds = %if.end44
  %37 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4085
  %size48 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %37, i32 0, i32 7, !dbg !4086
  %38 = load i32, i32* %size48, align 4, !dbg !4086
  %tobool49 = icmp ne i32 %38, 0, !dbg !4085
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !4087

if.then50:                                        ; preds = %land.lhs.true47
  %39 = load i16, i16* %mode, align 2, !dbg !4088
  store i16 %39, i16* %retval, align 2, !dbg !4089
  br label %return, !dbg !4089

if.end51:                                         ; preds = %land.lhs.true47, %if.end44
  %40 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4090
  %cmp52 = icmp eq %struct.attribute* %40, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_write_policy, i32 0, i32 0), !dbg !4092
  br i1 %cmp52, label %land.lhs.true54, label %if.end60, !dbg !4093

land.lhs.true54:                                  ; preds = %if.end51
  %41 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4094
  %attributes55 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %41, i32 0, i32 9, !dbg !4095
  %42 = load i32, i32* %attributes55, align 8, !dbg !4095
  %conv56 = zext i32 %42 to i64, !dbg !4094
  %and57 = and i64 %conv56, 3, !dbg !4096
  %tobool58 = icmp ne i64 %and57, 0, !dbg !4096
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4097

if.then59:                                        ; preds = %land.lhs.true54
  %43 = load i16, i16* %mode, align 2, !dbg !4098
  store i16 %43, i16* %retval, align 2, !dbg !4099
  br label %return, !dbg !4099

if.end60:                                         ; preds = %land.lhs.true54, %if.end51
  %44 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4100
  %cmp61 = icmp eq %struct.attribute* %44, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_allocation_policy, i32 0, i32 0), !dbg !4102
  br i1 %cmp61, label %land.lhs.true63, label %if.end69, !dbg !4103

land.lhs.true63:                                  ; preds = %if.end60
  %45 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4104
  %attributes64 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %45, i32 0, i32 9, !dbg !4105
  %46 = load i32, i32* %attributes64, align 8, !dbg !4105
  %conv65 = zext i32 %46 to i64, !dbg !4104
  %and66 = and i64 %conv65, 12, !dbg !4106
  %tobool67 = icmp ne i64 %and66, 0, !dbg !4106
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !4107

if.then68:                                        ; preds = %land.lhs.true63
  %47 = load i16, i16* %mode, align 2, !dbg !4108
  store i16 %47, i16* %retval, align 2, !dbg !4109
  br label %return, !dbg !4109

if.end69:                                         ; preds = %land.lhs.true63, %if.end60
  %48 = load %struct.attribute*, %struct.attribute** %attr.addr, align 8, !dbg !4110
  %cmp70 = icmp eq %struct.attribute* %48, getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_physical_line_partition, i32 0, i32 0), !dbg !4112
  br i1 %cmp70, label %land.lhs.true72, label %if.end75, !dbg !4113

land.lhs.true72:                                  ; preds = %if.end69
  %49 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4114
  %physical_line_partition = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %49, i32 0, i32 6, !dbg !4115
  %50 = load i32, i32* %physical_line_partition, align 8, !dbg !4115
  %tobool73 = icmp ne i32 %50, 0, !dbg !4114
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !4116

if.then74:                                        ; preds = %land.lhs.true72
  %51 = load i16, i16* %mode, align 2, !dbg !4117
  store i16 %51, i16* %retval, align 2, !dbg !4118
  br label %return, !dbg !4118

if.end75:                                         ; preds = %land.lhs.true72, %if.end69
  store i16 0, i16* %retval, align 2, !dbg !4119
  br label %return, !dbg !4119

return:                                           ; preds = %if.end75, %if.then74, %if.then68, %if.then59, %if.then50, %if.then43, %if.then37, %if.then31, %if.then25, %if.then19, %if.then13, %if.then7, %if.then
  %52 = load i16, i16* %retval, align 2, !dbg !4120
  ret i16 %52, !dbg !4120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @kobj_to_dev(%struct.kobject* %kobj) #0 !dbg !4121 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.device*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4126, metadata !DIExpression()), !dbg !4128
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4128
  %1 = bitcast %struct.kobject* %0 to i8*, !dbg !4128
  store i8* %1, i8** %__mptr, align 8, !dbg !4128
  br label %do.body, !dbg !4128

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4129

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4128
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4128
  %3 = bitcast i8* %add.ptr to %struct.device*, !dbg !4128
  store %struct.device* %3, %struct.device** %tmp, align 8, !dbg !4129
  %4 = load %struct.device*, %struct.device** %tmp, align 8, !dbg !4128
  ret %struct.device* %4, !dbg !4131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4132 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4135, metadata !DIExpression()), !dbg !4136
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4137
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4138
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4138
  ret i8* %1, !dbg !4139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @id_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4140 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4143, metadata !DIExpression()), !dbg !4142
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4144, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4145, metadata !DIExpression()), !dbg !4142
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4142
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4142
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4142
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4142
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4142
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4142
  %id = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 0, !dbg !4142
  %4 = load i32, i32* %id, align 8, !dbg !4142
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %4) #8, !dbg !4142
  %conv = sext i32 %call1 to i64, !dbg !4142
  ret i64 %conv, !dbg !4142
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit(i8*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @type_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4146 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %output = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4147, metadata !DIExpression()), !dbg !4148
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4151, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4153, metadata !DIExpression()), !dbg !4154
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4155
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4156
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4156
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4154
  call void @llvm.dbg.declare(metadata i8** %output, metadata !4157, metadata !DIExpression()), !dbg !4158
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4159
  %type = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 1, !dbg !4160
  %3 = load i32, i32* %type, align 4, !dbg !4160
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 4, label %sw.bb2
  ], !dbg !4161

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %output, align 8, !dbg !4162
  br label %sw.epilog, !dbg !4164

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8** %output, align 8, !dbg !4165
  br label %sw.epilog, !dbg !4166

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %output, align 8, !dbg !4167
  br label %sw.epilog, !dbg !4168

sw.default:                                       ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !4169
  br label %return, !dbg !4169

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !4170
  %5 = load i8*, i8** %output, align 8, !dbg !4171
  %call3 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* %5) #8, !dbg !4172
  %conv = sext i32 %call3 to i64, !dbg !4172
  store i64 %conv, i64* %retval, align 8, !dbg !4173
  br label %return, !dbg !4173

return:                                           ; preds = %sw.epilog, %sw.default
  %6 = load i64, i64* %retval, align 8, !dbg !4174
  ret i64 %6, !dbg !4174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @level_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4175 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4176, metadata !DIExpression()), !dbg !4177
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4178, metadata !DIExpression()), !dbg !4177
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4179, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4180, metadata !DIExpression()), !dbg !4177
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4177
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4177
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4177
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4177
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4177
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4177
  %level = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 2, !dbg !4177
  %4 = load i32, i32* %level, align 8, !dbg !4177
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %4) #8, !dbg !4177
  %conv = sext i32 %call1 to i64, !dbg !4177
  ret i64 %conv, !dbg !4177
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @shared_cpu_map_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4181 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %mask = alloca %struct.cpumask*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4182, metadata !DIExpression()), !dbg !4183
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4188, metadata !DIExpression()), !dbg !4189
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4190
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4191
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4191
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4189
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask, metadata !4192, metadata !DIExpression()), !dbg !4193
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4194
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 8, !dbg !4195
  store %struct.cpumask* %shared_cpu_map, %struct.cpumask** %mask, align 8, !dbg !4193
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4196
  %4 = load %struct.cpumask*, %struct.cpumask** %mask, align 8, !dbg !4197
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i32 1, %struct.cpumask* %4) #8, !dbg !4198
  %conv = sext i32 %call1 to i64, !dbg !4198
  ret i64 %conv, !dbg !4199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @shared_cpu_list_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4200 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %mask = alloca %struct.cpumask*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4207, metadata !DIExpression()), !dbg !4208
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4209
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4210
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4210
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4208
  call void @llvm.dbg.declare(metadata %struct.cpumask** %mask, metadata !4211, metadata !DIExpression()), !dbg !4212
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4213
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 8, !dbg !4214
  store %struct.cpumask* %shared_cpu_map, %struct.cpumask** %mask, align 8, !dbg !4212
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4215
  %4 = load %struct.cpumask*, %struct.cpumask** %mask, align 8, !dbg !4216
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 1, %struct.cpumask* %4) #8, !dbg !4217
  %conv = sext i32 %call1 to i64, !dbg !4217
  ret i64 %conv, !dbg !4218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @coherency_line_size_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4219 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4222, metadata !DIExpression()), !dbg !4221
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4223, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4224, metadata !DIExpression()), !dbg !4221
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4221
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4221
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4221
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4221
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4221
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4221
  %coherency_line_size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 3, !dbg !4221
  %4 = load i32, i32* %coherency_line_size, align 4, !dbg !4221
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %4) #8, !dbg !4221
  %conv = sext i32 %call1 to i64, !dbg !4221
  ret i64 %conv, !dbg !4221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ways_of_associativity_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4225 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4226, metadata !DIExpression()), !dbg !4227
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4228, metadata !DIExpression()), !dbg !4227
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4229, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4230, metadata !DIExpression()), !dbg !4227
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4227
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4227
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4227
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4227
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4227
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4227
  %ways_of_associativity = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 5, !dbg !4227
  %4 = load i32, i32* %ways_of_associativity, align 4, !dbg !4227
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %4) #8, !dbg !4227
  %conv = sext i32 %call1 to i64, !dbg !4227
  ret i64 %conv, !dbg !4227
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @number_of_sets_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4231 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4234, metadata !DIExpression()), !dbg !4233
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4235, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4236, metadata !DIExpression()), !dbg !4233
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4233
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4233
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4233
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4233
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4233
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4233
  %number_of_sets = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 4, !dbg !4233
  %4 = load i32, i32* %number_of_sets, align 8, !dbg !4233
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %4) #8, !dbg !4233
  %conv = sext i32 %call1 to i64, !dbg !4233
  ret i64 %conv, !dbg !4233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @size_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4237 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4238, metadata !DIExpression()), !dbg !4239
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4240, metadata !DIExpression()), !dbg !4241
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4244, metadata !DIExpression()), !dbg !4245
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4246
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4247
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4247
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4245
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4248
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4249
  %size = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 7, !dbg !4250
  %4 = load i32, i32* %size, align 4, !dbg !4250
  %shr = lshr i32 %4, 10, !dbg !4251
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i32 %shr) #8, !dbg !4252
  %conv = sext i32 %call1 to i64, !dbg !4252
  ret i64 %conv, !dbg !4253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @write_policy_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4254 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %ci_attr = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4261, metadata !DIExpression()), !dbg !4262
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4263
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4264
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4264
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4262
  call void @llvm.dbg.declare(metadata i32* %ci_attr, metadata !4265, metadata !DIExpression()), !dbg !4266
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4267
  %attributes = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 9, !dbg !4268
  %3 = load i32, i32* %attributes, align 8, !dbg !4268
  store i32 %3, i32* %ci_attr, align 4, !dbg !4266
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4269, metadata !DIExpression()), !dbg !4270
  store i32 0, i32* %n, align 4, !dbg !4270
  %4 = load i32, i32* %ci_attr, align 4, !dbg !4271
  %conv = zext i32 %4 to i64, !dbg !4271
  %and = and i64 %conv, 1, !dbg !4273
  %tobool = icmp ne i64 %and, 0, !dbg !4273
  br i1 %tobool, label %if.then, label %if.else, !dbg !4274

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4275
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !4276
  store i32 %call1, i32* %n, align 4, !dbg !4277
  br label %if.end7, !dbg !4278

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %ci_attr, align 4, !dbg !4279
  %conv2 = zext i32 %6 to i64, !dbg !4279
  %and3 = and i64 %conv2, 2, !dbg !4281
  %tobool4 = icmp ne i64 %and3, 0, !dbg !4281
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4282

if.then5:                                         ; preds = %if.else
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !4283
  %call6 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !4284
  store i32 %call6, i32* %n, align 4, !dbg !4285
  br label %if.end, !dbg !4286

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load i32, i32* %n, align 4, !dbg !4287
  %conv8 = sext i32 %8 to i64, !dbg !4287
  ret i64 %conv8, !dbg !4288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @allocation_policy_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4289 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %ci_attr = alloca i32, align 4
  %output = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4290, metadata !DIExpression()), !dbg !4291
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4296, metadata !DIExpression()), !dbg !4297
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4298
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4299
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4299
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4297
  call void @llvm.dbg.declare(metadata i32* %ci_attr, metadata !4300, metadata !DIExpression()), !dbg !4301
  %2 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4302
  %attributes = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %2, i32 0, i32 9, !dbg !4303
  %3 = load i32, i32* %attributes, align 8, !dbg !4303
  store i32 %3, i32* %ci_attr, align 4, !dbg !4301
  call void @llvm.dbg.declare(metadata i8** %output, metadata !4304, metadata !DIExpression()), !dbg !4305
  %4 = load i32, i32* %ci_attr, align 4, !dbg !4306
  %conv = zext i32 %4 to i64, !dbg !4306
  %and = and i64 %conv, 4, !dbg !4308
  %tobool = icmp ne i64 %and, 0, !dbg !4308
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4309

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %ci_attr, align 4, !dbg !4310
  %conv1 = zext i32 %5 to i64, !dbg !4310
  %and2 = and i64 %conv1, 8, !dbg !4311
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4311
  br i1 %tobool3, label %if.then, label %if.else, !dbg !4312

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i8** %output, align 8, !dbg !4313
  br label %if.end15, !dbg !4314

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %ci_attr, align 4, !dbg !4315
  %conv4 = zext i32 %6 to i64, !dbg !4315
  %and5 = and i64 %conv4, 4, !dbg !4317
  %tobool6 = icmp ne i64 %and5, 0, !dbg !4317
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !4318

if.then7:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8** %output, align 8, !dbg !4319
  br label %if.end14, !dbg !4320

if.else8:                                         ; preds = %if.else
  %7 = load i32, i32* %ci_attr, align 4, !dbg !4321
  %conv9 = zext i32 %7 to i64, !dbg !4321
  %and10 = and i64 %conv9, 8, !dbg !4323
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4323
  br i1 %tobool11, label %if.then12, label %if.else13, !dbg !4324

if.then12:                                        ; preds = %if.else8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8** %output, align 8, !dbg !4325
  br label %if.end, !dbg !4326

if.else13:                                        ; preds = %if.else8
  store i64 0, i64* %retval, align 8, !dbg !4327
  br label %return, !dbg !4327

if.end:                                           ; preds = %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then7
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4328
  %9 = load i8*, i8** %output, align 8, !dbg !4329
  %call16 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* %9) #8, !dbg !4330
  %conv17 = sext i32 %call16 to i64, !dbg !4330
  store i64 %conv17, i64* %retval, align 8, !dbg !4331
  br label %return, !dbg !4331

return:                                           ; preds = %if.end15, %if.else13
  %10 = load i64, i64* %retval, align 8, !dbg !4332
  ret i64 %10, !dbg !4332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @physical_line_partition_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4333 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4336, metadata !DIExpression()), !dbg !4335
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4337, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4338, metadata !DIExpression()), !dbg !4335
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4335
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4335
  %1 = bitcast i8* %call to %struct.cacheinfo*, !dbg !4335
  store %struct.cacheinfo* %1, %struct.cacheinfo** %this_leaf, align 8, !dbg !4335
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4335
  %3 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4335
  %physical_line_partition = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %3, i32 0, i32 6, !dbg !4335
  %4 = load i32, i32* %physical_line_partition, align 8, !dbg !4335
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %4) #8, !dbg !4335
  %conv = sext i32 %call1 to i64, !dbg !4335
  ret i64 %conv, !dbg !4335
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cache_shared_cpu_map_remove(i32 %cpu) #0 !dbg !4339 {
entry:
  %cpu.addr = alloca i32, align 4
  %this_cpu_ci = alloca %struct.cpu_cacheinfo*, align 8
  %this_leaf = alloca %struct.cacheinfo*, align 8
  %sib_leaf = alloca %struct.cacheinfo*, align 8
  %sibling = alloca i32, align 4
  %index = alloca i32, align 4
  %tmp = alloca %struct.cpu_cacheinfo*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.cpu_cacheinfo*, align 8
  %sib_cpu_ci = alloca %struct.cpu_cacheinfo*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata %struct.cpu_cacheinfo** %this_cpu_ci, metadata !4342, metadata !DIExpression()), !dbg !4343
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4344
  %call = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %0) #8, !dbg !4345
  store %struct.cpu_cacheinfo* %call, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !4343
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %this_leaf, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata %struct.cacheinfo** %sib_leaf, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata i32* %sibling, metadata !4350, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata i32* %index, metadata !4352, metadata !DIExpression()), !dbg !4353
  store i32 0, i32* %index, align 4, !dbg !4354
  br label %for.cond, !dbg !4356

for.cond:                                         ; preds = %for.inc18, %entry
  %1 = load i32, i32* %index, align 4, !dbg !4357
  %2 = load i32, i32* %cpu.addr, align 4, !dbg !4359
  br label %do.body, !dbg !4361

do.body:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4363, metadata !DIExpression()), !dbg !4365
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4365
  %3 = load i8*, i8** %__vpp_verify, align 8, !dbg !4365
  br label %do.end, !dbg !4365

do.end:                                           ; preds = %do.body
  store %struct.cpu_cacheinfo* @ci_cpu_cacheinfo, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !4365
  %4 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp1, align 8, !dbg !4361
  store %struct.cpu_cacheinfo* %4, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !4359
  %5 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %tmp, align 8, !dbg !4359
  %num_leaves = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %5, i32 0, i32 2, !dbg !4366
  %6 = load i32, i32* %num_leaves, align 4, !dbg !4366
  %cmp = icmp ult i32 %1, %6, !dbg !4367
  br i1 %cmp, label %for.body, label %for.end20, !dbg !4368

for.body:                                         ; preds = %do.end
  %7 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %this_cpu_ci, align 8, !dbg !4369
  %info_list = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %7, i32 0, i32 0, !dbg !4371
  %8 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list, align 8, !dbg !4371
  %9 = load i32, i32* %index, align 4, !dbg !4372
  %idx.ext = zext i32 %9 to i64, !dbg !4373
  %add.ptr = getelementptr %struct.cacheinfo, %struct.cacheinfo* %8, i64 %idx.ext, !dbg !4373
  store %struct.cacheinfo* %add.ptr, %struct.cacheinfo** %this_leaf, align 8, !dbg !4374
  store i32 0, i32* %sibling, align 4, !dbg !4375
  br label %for.cond2, !dbg !4375

for.cond2:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %sibling, align 4, !dbg !4377
  %cmp3 = icmp ult i32 %10, 1, !dbg !4377
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !4375

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata %struct.cpu_cacheinfo** %sib_cpu_ci, metadata !4379, metadata !DIExpression()), !dbg !4381
  %11 = load i32, i32* %sibling, align 4, !dbg !4382
  %12 = load i32, i32* %cpu.addr, align 4, !dbg !4384
  %cmp5 = icmp eq i32 %11, %12, !dbg !4385
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4386

if.then:                                          ; preds = %for.body4
  br label %for.inc, !dbg !4387

if.end:                                           ; preds = %for.body4
  %13 = load i32, i32* %sibling, align 4, !dbg !4388
  %call6 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %13) #8, !dbg !4389
  store %struct.cpu_cacheinfo* %call6, %struct.cpu_cacheinfo** %sib_cpu_ci, align 8, !dbg !4390
  %14 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %sib_cpu_ci, align 8, !dbg !4391
  %info_list7 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %14, i32 0, i32 0, !dbg !4393
  %15 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list7, align 8, !dbg !4393
  %tobool = icmp ne %struct.cacheinfo* %15, null, !dbg !4391
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !4394

if.then8:                                         ; preds = %if.end
  br label %for.inc, !dbg !4395

if.end9:                                          ; preds = %if.end
  %16 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %sib_cpu_ci, align 8, !dbg !4396
  %info_list10 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %16, i32 0, i32 0, !dbg !4397
  %17 = load %struct.cacheinfo*, %struct.cacheinfo** %info_list10, align 8, !dbg !4397
  %18 = load i32, i32* %index, align 4, !dbg !4398
  %idx.ext11 = zext i32 %18 to i64, !dbg !4399
  %add.ptr12 = getelementptr %struct.cacheinfo, %struct.cacheinfo* %17, i64 %idx.ext11, !dbg !4399
  store %struct.cacheinfo* %add.ptr12, %struct.cacheinfo** %sib_leaf, align 8, !dbg !4400
  %19 = load i32, i32* %cpu.addr, align 4, !dbg !4401
  %20 = load %struct.cacheinfo*, %struct.cacheinfo** %sib_leaf, align 8, !dbg !4402
  %shared_cpu_map = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %20, i32 0, i32 8, !dbg !4403
  call void @cpumask_clear_cpu(i32 %19, %struct.cpumask* %shared_cpu_map) #8, !dbg !4404
  %21 = load i32, i32* %sibling, align 4, !dbg !4405
  %22 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4406
  %shared_cpu_map13 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %22, i32 0, i32 8, !dbg !4407
  call void @cpumask_clear_cpu(i32 %21, %struct.cpumask* %shared_cpu_map13) #8, !dbg !4408
  br label %for.inc, !dbg !4409

for.inc:                                          ; preds = %if.end9, %if.then8, %if.then
  %23 = load i32, i32* %sibling, align 4, !dbg !4377
  %inc = add i32 %23, 1, !dbg !4377
  store i32 %inc, i32* %sibling, align 4, !dbg !4377
  %24 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4377
  %shared_cpu_map14 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %24, i32 0, i32 8, !dbg !4377
  br label %for.cond2, !dbg !4377, !llvm.loop !4410

for.end:                                          ; preds = %for.cond2
  %call15 = call zeroext i1 @of_have_populated_dt() #8, !dbg !4412
  br i1 %call15, label %if.then16, label %if.end17, !dbg !4414

if.then16:                                        ; preds = %for.end
  %25 = load %struct.cacheinfo*, %struct.cacheinfo** %this_leaf, align 8, !dbg !4415
  %fw_token = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %25, i32 0, i32 10, !dbg !4416
  %26 = load i8*, i8** %fw_token, align 8, !dbg !4416
  %27 = bitcast i8* %26 to %struct.device_node*, !dbg !4415
  call void @of_node_put(%struct.device_node* %27) #8, !dbg !4417
  br label %if.end17, !dbg !4417

if.end17:                                         ; preds = %if.then16, %for.end
  br label %for.inc18, !dbg !4418

for.inc18:                                        ; preds = %if.end17
  %28 = load i32, i32* %index, align 4, !dbg !4419
  %inc19 = add i32 %28, 1, !dbg !4419
  store i32 %inc19, i32* %index, align 4, !dbg !4419
  br label %for.cond, !dbg !4420, !llvm.loop !4421

for.end20:                                        ; preds = %do.end
  ret void, !dbg !4423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_clear_cpu(i32 %cpu, %struct.cpumask* %dstp) #0 !dbg !4424 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !4429, metadata !DIExpression()), !dbg !4430
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4431
  %call = call i32 @cpumask_check(i32 %0) #8, !dbg !4432
  %conv = zext i32 %call to i64, !dbg !4432
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !4433
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !4433
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !4433
  call void @clear_bit(i64 %conv, i64* %arraydecay) #8, !dbg !4434
  ret void, !dbg !4435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !4436 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  ret void, !dbg !4441
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4442 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4443, metadata !DIExpression()), !dbg !4445
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4447, metadata !DIExpression()), !dbg !4448
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3695, metadata !DIExpression()), !dbg !4449
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3705, metadata !DIExpression()), !dbg !4451
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4454, metadata !DIExpression()), !dbg !4455
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4456
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4457
  %div = sdiv i64 %1, 64, !dbg !4457
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4458
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4456
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4459
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4460
  %conv.i = trunc i64 %4 to i32, !dbg !4460
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4461
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4462
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4462
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !4462
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4463
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4464
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4465
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !4467
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4468

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4469
  %12 = bitcast i64* %11 to i8*, !dbg !4469
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4469
  %shr.i = ashr i64 %13, 3, !dbg !4469
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4469
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4471
  %and.i = and i64 %14, 7, !dbg !4471
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4471
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4471
  %neg.i = xor i32 %shl.i, -1, !dbg !4472
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !4473, !srcloc !4474
  br label %arch_clear_bit.exit, !dbg !4475

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4476
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4478
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !4479, !srcloc !4480
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_test_and_clear_cpu(i32 %cpu, %struct.cpumask* %cpumask) #0 !dbg !4482 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !4485, metadata !DIExpression()), !dbg !4486
  store %struct.cpumask* %cpumask, %struct.cpumask** %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpumask.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !4489
  %call = call i32 @cpumask_check(i32 %0) #8, !dbg !4490
  %conv = zext i32 %call to i64, !dbg !4490
  %1 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !4491
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !4491
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !4491
  %call1 = call zeroext i1 @test_and_clear_bit(i64 %conv, i64* %arraydecay) #8, !dbg !4492
  %conv2 = zext i1 %call1 to i32, !dbg !4492
  ret i32 %conv2, !dbg !4493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !4494 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4497, metadata !DIExpression()), !dbg !4499
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4501, metadata !DIExpression()), !dbg !4502
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !4503, metadata !DIExpression()), !dbg !4505
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4506, metadata !DIExpression()), !dbg !4508
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4510, metadata !DIExpression()), !dbg !4511
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4514, metadata !DIExpression()), !dbg !4515
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4516
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4517
  %div = sdiv i64 %1, 64, !dbg !4517
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4518
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4516
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4519
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4520
  %conv.i = trunc i64 %4 to i32, !dbg !4520
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4521
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4522
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4522
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !4522
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4523
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4524
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4505
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4505
  %11 = call i8 asm sideeffect " btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #10, !dbg !4505, !srcloc !4525
  store i8 %11, i8* %c.i, align 1, !dbg !4505
  %12 = load i8, i8* %c.i, align 1, !dbg !4505
  %tobool.i = trunc i8 %12 to i1, !dbg !4505
  %frombool.i = zext i1 %tobool.i to i8, !dbg !4505
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !4505
  %13 = load i8, i8* %tmp.i, align 1, !dbg !4505
  %tobool1.i = trunc i8 %13 to i1, !dbg !4505
  ret i1 %tobool1.i, !dbg !4526
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!2425, !2426, !2427, !2428}
!llvm.ident = !{!2429}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ci_cpu_cacheinfo", scope: !2, file: !3, line: 24, type: !260, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !258, globals: !2355, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/cacheinfo.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !14, !20, !25, !31, !205, !210, !217, !223, !230, !238, !244}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cache_type", file: !6, line: 13, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cacheinfo.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CACHE_TYPE_NOCACHE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CACHE_TYPE_INST", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CACHE_TYPE_DATA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CACHE_TYPE_SEPARATE", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CACHE_TYPE_UNIFIED", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !15, line: 26, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !21, line: 65, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !26, line: 16, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !32, line: 25, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/lizy2001/genbc/linux")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!35 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!36 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!37 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!38 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!39 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!40 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!41 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!42 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!43 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!44 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!45 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!46 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!47 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 11)
!48 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 12)
!49 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 13)
!50 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 14)
!51 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 15)
!52 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 16)
!53 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 17)
!54 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 18)
!55 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 19)
!56 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 20)
!57 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 21)
!58 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 22)
!59 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 23)
!60 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 24)
!61 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 25)
!62 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 26)
!63 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 27)
!64 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 28)
!65 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 29)
!66 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC_DEAD", value: 30)
!67 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 31)
!68 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 32)
!69 = !DIEnumerator(name: "CPUHP_IOMMU_INTEL_DEAD", value: 33)
!70 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 34)
!71 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 35)
!72 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 36)
!73 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 37)
!74 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 38)
!75 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 39)
!76 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 40)
!77 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 41)
!78 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 42)
!79 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 43)
!80 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 44)
!81 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 45)
!82 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 46)
!83 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 47)
!84 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 48)
!85 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 49)
!86 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 50)
!87 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 51)
!88 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 52)
!89 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 53)
!90 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 54)
!91 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 55)
!92 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 56)
!93 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 57)
!94 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 58)
!95 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 59)
!96 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 60)
!97 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 61)
!98 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 62)
!99 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 63)
!100 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 64)
!101 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 65)
!102 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 66)
!103 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 86)
!104 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 87)
!105 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 88)
!106 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 89)
!107 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 90)
!108 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 91)
!109 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 92)
!110 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 93)
!111 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 94)
!112 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 95)
!113 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 96)
!114 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 97)
!115 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 98)
!116 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 99)
!117 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 100)
!118 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 101)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 102)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 103)
!121 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 104)
!122 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 105)
!123 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 106)
!124 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 107)
!125 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 108)
!126 = !DIEnumerator(name: "CPUHP_AP_ARM_SDEI_STARTING", value: 109)
!127 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 110)
!128 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 111)
!129 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 112)
!130 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 113)
!131 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 114)
!132 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 115)
!133 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 116)
!134 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 117)
!135 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 118)
!136 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 119)
!137 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 120)
!138 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 121)
!139 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 122)
!140 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 123)
!141 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 124)
!142 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 125)
!143 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 126)
!144 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 127)
!145 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 128)
!146 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 129)
!147 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 130)
!148 = !DIEnumerator(name: "CPUHP_AP_KVM_STARTING", value: 131)
!149 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING", value: 132)
!150 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_STARTING", value: 133)
!151 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_TIMER_STARTING", value: 134)
!152 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 135)
!153 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 136)
!154 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 137)
!155 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 138)
!156 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 139)
!157 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 140)
!158 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 141)
!159 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 142)
!160 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 143)
!161 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 144)
!162 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 145)
!163 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 146)
!164 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 147)
!165 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 148)
!166 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 149)
!167 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 150)
!168 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 151)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 152)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 153)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 154)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 155)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 156)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 157)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 158)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 159)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 160)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 161)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 162)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 163)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 164)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 165)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 166)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 167)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 168)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 169)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 170)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 171)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 172)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 173)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 174)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 175)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 176)
!194 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 177)
!195 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 178)
!196 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 179)
!197 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 180)
!198 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 181)
!199 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 182)
!200 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 212)
!201 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 213)
!202 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 214)
!203 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 215)
!204 = !DIEnumerator(name: "CPUHP_ONLINE", value: 216)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 10, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!207 = !{!208, !209}
!208 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !211, line: 305, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!215 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!216 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !218, line: 44, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!219 = !{!220, !221, !222}
!220 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!221 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!222 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !224, line: 343, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !228, !229}
!226 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!227 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!228 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!229 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !231, line: 524, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !234, !235, !236, !237}
!233 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!236 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!237 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !231, line: 502, baseType: !7, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!241 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!242 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!243 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !245, line: 76, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!247 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!248 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!249 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!250 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!251 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!252 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!253 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!254 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!255 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!256 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!257 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!258 = !{!259, !286, !295, !296, !33, !7, !298, !301, !304, !2354, !305, !281, !303}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_cacheinfo", file: !6, line: 75, size: 192, elements: !261)
!261 = !{!262, !292, !293, !294}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "info_list", scope: !260, file: !6, line: 76, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cacheinfo", file: !6, line: 50, size: 576, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !284, !285, !287, !291}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !264, file: !6, line: 51, baseType: !7, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !6, line: 52, baseType: !5, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !264, file: !6, line: 53, baseType: !7, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "coherency_line_size", scope: !264, file: !6, line: 54, baseType: !7, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_sets", scope: !264, file: !6, line: 55, baseType: !7, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ways_of_associativity", scope: !264, file: !6, line: 56, baseType: !7, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "physical_line_partition", scope: !264, file: !6, line: 57, baseType: !7, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !264, file: !6, line: 58, baseType: !7, size: 32, offset: 224)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "shared_cpu_map", scope: !264, file: !6, line: 59, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !276, line: 17, baseType: !277)
!276 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !276, line: 17, size: 64, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !277, file: !276, line: 17, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 64, elements: !282)
!281 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!282 = !{!283}
!283 = !DISubrange(count: 1)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !264, file: !6, line: 60, baseType: !7, size: 32, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "fw_token", scope: !264, file: !6, line: 70, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "disable_sysfs", scope: !264, file: !6, line: 71, baseType: !288, size: 8, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !289, line: 30, baseType: !290)
!289 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !264, file: !6, line: 72, baseType: !286, size: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "num_levels", scope: !260, file: !6, line: 77, baseType: !7, size: 32, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "num_leaves", scope: !260, file: !6, line: 78, baseType: !7, size: 32, offset: 96)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_map_populated", scope: !260, file: !6, line: 79, baseType: !288, size: 8, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !289, line: 148, baseType: !7)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !300)
!300 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !303)
!303 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !224, line: 461, size: 5568, elements: !307)
!307 = !{!308, !1799, !1800, !1803, !1804, !1855, !1952, !1953, !1954, !1955, !1956, !1965, !2070, !2083, !2279, !2280, !2284, !2286, !2287, !2288, !2292, !2298, !2299, !2302, !2303, !2304, !2307, !2308, !2309, !2310, !2342, !2343, !2344, !2347, !2350, !2351, !2352, !2353}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !306, file: !224, line: 462, baseType: !309, size: 512)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !310, line: 64, size: 512, elements: !311)
!310 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !315, !321, !323, !383, !1636, !1789, !1794, !1795, !1796, !1797, !1798}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !309, file: !310, line: 65, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !309, file: !310, line: 66, baseType: !316, size: 128, offset: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !289, line: 178, size: 128, elements: !317)
!317 = !{!318, !320}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !289, line: 179, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !316, file: !289, line: 179, baseType: !319, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !309, file: !310, line: 67, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !309, file: !310, line: 68, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !310, line: 192, size: 704, elements: !326)
!326 = !{!327, !328, !344, !345}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !325, file: !310, line: 193, baseType: !316, size: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !325, file: !310, line: 194, baseType: !329, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !330, line: 83, baseType: !331)
!330 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !330, line: 71, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !330, line: 72, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !330, line: 72, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !334, file: !330, line: 73, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !330, line: 20, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !337, file: !330, line: 21, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !341, line: 25, baseType: !342)
!341 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 25, elements: !343)
!343 = !{}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !325, file: !310, line: 195, baseType: !309, size: 512, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !325, file: !310, line: 196, baseType: !346, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !310, line: 156, size: 192, elements: !349)
!349 = !{!350, !355, !360}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !348, file: !310, line: 157, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!33, !324, !322}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !310, line: 158, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!313, !324, !322}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !348, file: !310, line: 159, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!33, !324, !322, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !310, line: 148, size: 20736, elements: !367)
!367 = !{!368, !373, !377, !378, !382}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !366, file: !310, line: 149, baseType: !369, size: 192)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !371)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!371 = !{!372}
!372 = !DISubrange(count: 3)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !366, file: !310, line: 150, baseType: !374, size: 4096, offset: 192)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 4096, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !366, file: !310, line: 151, baseType: !33, size: 32, offset: 4288)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !366, file: !310, line: 152, baseType: !379, size: 16384, offset: 4320)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 16384, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 2048)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !366, file: !310, line: 153, baseType: !33, size: 32, offset: 20704)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !309, file: !310, line: 69, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !310, line: 138, size: 448, elements: !386)
!386 = !{!387, !391, !419, !421, !1583, !1614, !1618}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !385, file: !310, line: 139, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !322}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !385, file: !310, line: 140, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !395, line: 230, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !412}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !394, file: !395, line: 231, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !322, !405, !370}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !289, line: 60, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !403, line: 73, baseType: !404)
!403 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !403, line: 15, baseType: !303)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !395, line: 30, size: 128, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !395, line: 31, baseType: !313, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !406, file: !395, line: 32, baseType: !410, size: 16, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !289, line: 19, baseType: !411)
!411 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !394, file: !395, line: 232, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!401, !322, !405, !313, !416}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 55, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !403, line: 72, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !403, line: 16, baseType: !281)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !385, file: !310, line: 141, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !385, file: !310, line: 142, baseType: !422, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !395, line: 84, size: 320, elements: !426)
!426 = !{!427, !428, !432, !1580, !1581}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !395, line: 85, baseType: !313, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !425, file: !395, line: 86, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!410, !322, !405, !33}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !425, file: !395, line: 88, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!410, !322, !436, !33}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !395, line: 168, size: 448, elements: !438)
!438 = !{!439, !440, !441, !442, !452, !453}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !437, file: !395, line: 169, baseType: !406, size: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !437, file: !395, line: 170, baseType: !416, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !437, file: !395, line: 171, baseType: !286, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !437, file: !395, line: 172, baseType: !443, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!401, !446, !322, !436, !370, !449, !416}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !448, line: 526, flags: DIFlagFwdDecl)
!448 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !289, line: 46, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !403, line: 88, baseType: !451)
!451 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !437, file: !395, line: 174, baseType: !443, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !437, file: !395, line: 176, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!33, !446, !322, !436, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !459, line: 305, size: 1472, elements: !460)
!459 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!460 = !{!461, !462, !463, !464, !465, !473, !474, !1554, !1560, !1561, !1566, !1567, !1570, !1574, !1575, !1576, !1577, !1578}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !458, file: !459, line: 308, baseType: !281, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !458, file: !459, line: 309, baseType: !281, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !458, file: !459, line: 313, baseType: !457, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !458, file: !459, line: 313, baseType: !457, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !458, file: !459, line: 315, baseType: !466, size: 192, align: 64, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !467, line: 24, size: 192, align: 64, elements: !468)
!467 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!468 = !{!469, !470, !472}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !466, file: !467, line: 25, baseType: !281, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !466, file: !467, line: 26, baseType: !471, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !466, file: !467, line: 27, baseType: !471, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !458, file: !459, line: 323, baseType: !281, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !458, file: !459, line: 327, baseType: !475, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !459, line: 388, size: 7296, elements: !477)
!477 = !{!478, !1550}
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !459, line: 389, baseType: !479, size: 7296)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !476, file: !459, line: 389, size: 7296, elements: !480)
!480 = !{!481, !482, !486, !492, !496, !497, !498, !499, !500, !508, !513, !514, !515, !516, !525, !526, !527, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !562, !570, !573, !621, !622, !1521, !1522, !1525, !1528, !1529, !1532, !1533, !1534, !1537, !1549}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !479, file: !459, line: 390, baseType: !457, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !479, file: !459, line: 391, baseType: !483, size: 64, offset: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !467, line: 31, size: 64, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !483, file: !467, line: 32, baseType: !471, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !479, file: !459, line: 392, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !488, line: 23, baseType: !489)
!488 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !490, line: 31, baseType: !491)
!490 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!491 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !479, file: !459, line: 394, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!281, !446, !281, !281, !281, !281}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !479, file: !459, line: 398, baseType: !281, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !479, file: !459, line: 399, baseType: !281, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !479, file: !459, line: 405, baseType: !281, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !479, file: !459, line: 406, baseType: !281, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !479, file: !459, line: 407, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !448, line: 286, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 286, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !503, file: !448, line: 286, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !507, line: 18, baseType: !281)
!507 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !479, file: !459, line: 416, baseType: !509, size: 32, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !289, line: 168, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !289, line: 166, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !510, file: !289, line: 167, baseType: !33, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !479, file: !459, line: 428, baseType: !509, size: 32, offset: 608)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !479, file: !459, line: 437, baseType: !509, size: 32, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !479, file: !459, line: 447, baseType: !509, size: 32, offset: 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !479, file: !459, line: 450, baseType: !517, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !518, line: 13, baseType: !519)
!518 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !289, line: 175, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !289, line: 173, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !520, file: !289, line: 174, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !488, line: 22, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !490, line: 30, baseType: !451)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !479, file: !459, line: 452, baseType: !33, size: 32, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !479, file: !459, line: 454, baseType: !329, offset: 800)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !479, file: !459, line: 457, baseType: !528, size: 256, offset: 832)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !529, line: 35, size: 256, elements: !530)
!529 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531, !532, !533, !535}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !528, file: !529, line: 36, baseType: !517, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !529, line: 42, baseType: !517, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !528, file: !529, line: 46, baseType: !534, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !330, line: 29, baseType: !337)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !528, file: !529, line: 47, baseType: !316, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !479, file: !459, line: 459, baseType: !316, size: 128, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !479, file: !459, line: 466, baseType: !281, size: 64, offset: 1216)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !479, file: !459, line: 467, baseType: !281, size: 64, offset: 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !479, file: !459, line: 469, baseType: !281, size: 64, offset: 1344)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !479, file: !459, line: 470, baseType: !281, size: 64, offset: 1408)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !479, file: !459, line: 471, baseType: !519, size: 64, offset: 1472)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !479, file: !459, line: 472, baseType: !281, size: 64, offset: 1536)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !479, file: !459, line: 473, baseType: !281, size: 64, offset: 1600)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !479, file: !459, line: 474, baseType: !281, size: 64, offset: 1664)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !479, file: !459, line: 475, baseType: !281, size: 64, offset: 1728)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !479, file: !459, line: 477, baseType: !329, offset: 1792)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !479, file: !459, line: 478, baseType: !281, size: 64, offset: 1792)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !479, file: !459, line: 478, baseType: !281, size: 64, offset: 1856)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !479, file: !459, line: 478, baseType: !281, size: 64, offset: 1920)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !479, file: !459, line: 478, baseType: !281, size: 64, offset: 1984)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !479, file: !459, line: 479, baseType: !281, size: 64, offset: 2048)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !479, file: !459, line: 479, baseType: !281, size: 64, offset: 2112)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !479, file: !459, line: 479, baseType: !281, size: 64, offset: 2176)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !479, file: !459, line: 480, baseType: !281, size: 64, offset: 2240)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !479, file: !459, line: 480, baseType: !281, size: 64, offset: 2304)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !479, file: !459, line: 480, baseType: !281, size: 64, offset: 2368)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !479, file: !459, line: 480, baseType: !281, size: 64, offset: 2432)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !479, file: !459, line: 482, baseType: !559, size: 2816, offset: 2496)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 2816, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 44)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !479, file: !459, line: 488, baseType: !563, size: 256, offset: 5312)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !564, line: 60, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !563, file: !564, line: 61, baseType: !567, size: 256)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 256, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 4)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !479, file: !459, line: 490, baseType: !571, size: 64, offset: 5568)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !459, line: 490, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !479, file: !459, line: 493, baseType: !574, size: 896, offset: 5632)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !575, line: 53, baseType: !576)
!575 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 13, size: 896, elements: !577)
!577 = !{!578, !579, !580, !581, !584, !585, !592, !593, !613, !614, !617}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !576, file: !575, line: 18, baseType: !487, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !576, file: !575, line: 28, baseType: !519, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !576, file: !575, line: 31, baseType: !528, size: 256, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !576, file: !575, line: 32, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !575, line: 32, flags: DIFlagFwdDecl)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !576, file: !575, line: 37, baseType: !411, size: 16, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !576, file: !575, line: 40, baseType: !586, size: 192, offset: 512)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !587, line: 53, size: 192, elements: !588)
!587 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !586, file: !587, line: 54, baseType: !517, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !586, file: !587, line: 55, baseType: !329, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !586, file: !587, line: 59, baseType: !316, size: 128, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !576, file: !575, line: 41, baseType: !286, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !576, file: !575, line: 42, baseType: !594, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !597, line: 13, size: 896, elements: !598)
!597 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !596, file: !597, line: 14, baseType: !286, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !597, line: 15, baseType: !281, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !596, file: !597, line: 17, baseType: !281, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !596, file: !597, line: 17, baseType: !281, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !596, file: !597, line: 19, baseType: !303, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !596, file: !597, line: 21, baseType: !303, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !596, file: !597, line: 22, baseType: !303, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !596, file: !597, line: 23, baseType: !303, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !596, file: !597, line: 24, baseType: !303, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !596, file: !597, line: 25, baseType: !303, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !596, file: !597, line: 26, baseType: !303, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !596, file: !597, line: 27, baseType: !303, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !596, file: !597, line: 28, baseType: !303, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !596, file: !597, line: 29, baseType: !303, size: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !576, file: !575, line: 44, baseType: !509, size: 32, offset: 832)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !576, file: !575, line: 50, baseType: !615, size: 16, offset: 864)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !488, line: 19, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !490, line: 24, baseType: !411)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !576, file: !575, line: 51, baseType: !618, size: 16, offset: 880)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !488, line: 18, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !490, line: 23, baseType: !620)
!620 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !459, line: 495, baseType: !281, size: 64, offset: 6528)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !479, file: !459, line: 497, baseType: !623, size: 64, offset: 6592)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !459, line: 381, size: 384, elements: !625)
!625 = !{!626, !627, !1520}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !624, file: !459, line: 382, baseType: !509, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !624, file: !459, line: 383, baseType: !628, size: 128, offset: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !459, line: 376, size: 128, elements: !629)
!629 = !{!630, !1518}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !628, file: !459, line: 377, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !633, line: 640, size: 48640, elements: !634)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!634 = !{!635, !643, !644, !645, !651, !652, !653, !654, !655, !656, !657, !658, !662, !680, !691, !786, !787, !788, !791, !792, !794, !795, !796, !797, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !876, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !932, !934, !935, !936, !948, !950, !951, !952, !953, !954, !960, !961, !962, !963, !964, !965, !966, !978, !983, !987, !988, !989, !992, !996, !999, !1002, !1005, !1008, !1011, !1014, !1017, !1023, !1024, !1025, !1031, !1032, !1033, !1034, !1035, !1044, !1045, !1046, !1047, !1048, !1053, !1054, !1055, !1058, !1059, !1062, !1065, !1068, !1071, !1074, !1077, !1078, !1158, !1161, !1164, !1165, !1168, !1169, !1170, !1176, !1177, !1178, !1191, !1192, !1193, !1203, !1208, !1211, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !632, file: !633, line: 646, baseType: !636, size: 128)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !637, line: 56, size: 128, elements: !638)
!637 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !637, line: 57, baseType: !281, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !636, file: !637, line: 58, baseType: !641, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !488, line: 21, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !490, line: 27, baseType: !7)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !632, file: !633, line: 649, baseType: !302, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !632, file: !633, line: 657, baseType: !286, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !632, file: !633, line: 658, baseType: !646, size: 32, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !647, line: 113, baseType: !648)
!647 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !647, line: 111, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !648, file: !647, line: 112, baseType: !509, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 660, baseType: !7, size: 32, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !632, file: !633, line: 661, baseType: !7, size: 32, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !632, file: !633, line: 684, baseType: !33, size: 32, offset: 352)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !632, file: !633, line: 686, baseType: !33, size: 32, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !632, file: !633, line: 687, baseType: !33, size: 32, offset: 416)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !632, file: !633, line: 688, baseType: !33, size: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !632, file: !633, line: 689, baseType: !7, size: 32, offset: 480)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !632, file: !633, line: 691, baseType: !659, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !633, line: 691, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !632, file: !633, line: 692, baseType: !663, size: 832, offset: 576)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !633, line: 451, size: 832, elements: !664)
!664 = !{!665, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !663, file: !633, line: 453, baseType: !666, size: 128)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !633, line: 325, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !666, file: !633, line: 326, baseType: !281, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !666, file: !633, line: 327, baseType: !641, size: 32, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !663, file: !633, line: 454, baseType: !466, size: 192, align: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !663, file: !633, line: 455, baseType: !316, size: 128, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !663, file: !633, line: 456, baseType: !7, size: 32, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !663, file: !633, line: 458, baseType: !487, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !663, file: !633, line: 459, baseType: !487, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !663, file: !633, line: 460, baseType: !487, size: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !663, file: !633, line: 461, baseType: !487, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !663, file: !633, line: 463, baseType: !487, size: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !663, file: !633, line: 465, baseType: !679, offset: 832)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !633, line: 415, elements: !343)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !632, file: !633, line: 693, baseType: !681, size: 384, offset: 1408)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !633, line: 489, size: 384, elements: !682)
!682 = !{!683, !684, !685, !686, !687, !688, !689}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !681, file: !633, line: 490, baseType: !316, size: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !681, file: !633, line: 491, baseType: !281, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !681, file: !633, line: 492, baseType: !281, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !681, file: !633, line: 493, baseType: !7, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !681, file: !633, line: 494, baseType: !411, size: 16, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !681, file: !633, line: 495, baseType: !411, size: 16, offset: 304)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !681, file: !633, line: 497, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !632, file: !633, line: 697, baseType: !692, size: 1792, offset: 1792)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !633, line: 507, size: 1792, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !783, !784}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !692, file: !633, line: 508, baseType: !466, size: 192, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !692, file: !633, line: 515, baseType: !487, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !692, file: !633, line: 516, baseType: !487, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !692, file: !633, line: 517, baseType: !487, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !692, file: !633, line: 518, baseType: !487, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !692, file: !633, line: 519, baseType: !487, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !692, file: !633, line: 526, baseType: !523, size: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !692, file: !633, line: 527, baseType: !487, size: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !633, line: 528, baseType: !7, size: 32, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !692, file: !633, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !692, file: !633, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !692, file: !633, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !692, file: !633, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !692, file: !633, line: 563, baseType: !708, size: 512, offset: 704)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !21, line: 118, size: 512, elements: !709)
!709 = !{!710, !718, !719, !724, !776, !780, !781, !782}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !708, file: !21, line: 119, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !712, line: 9, size: 256, elements: !713)
!712 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !712, line: 10, baseType: !466, size: 192, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !711, file: !712, line: 11, baseType: !716, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !717, line: 29, baseType: !523)
!717 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !708, file: !21, line: 120, baseType: !716, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !708, file: !21, line: 121, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!20, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !708, file: !21, line: 122, baseType: !725, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !21, line: 159, size: 512, align: 512, elements: !727)
!727 = !{!728, !748, !749, !752, !762, !763, !771, !775}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !726, file: !21, line: 160, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !21, line: 214, size: 4608, align: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !21, line: 215, baseType: !534)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !730, file: !21, line: 216, baseType: !7, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !730, file: !21, line: 217, baseType: !7, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !730, file: !21, line: 218, baseType: !7, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !730, file: !21, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !730, file: !21, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !730, file: !21, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !730, file: !21, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !730, file: !21, line: 233, baseType: !716, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !730, file: !21, line: 234, baseType: !723, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !730, file: !21, line: 235, baseType: !716, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !730, file: !21, line: 236, baseType: !723, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !730, file: !21, line: 237, baseType: !745, size: 4096, offset: 512)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 4096, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 8)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !726, file: !21, line: 161, baseType: !7, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !726, file: !21, line: 162, baseType: !750, size: 32, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !289, line: 27, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !403, line: 96, baseType: !33)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !726, file: !21, line: 163, baseType: !753, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !754, line: 276, baseType: !755)
!754 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !754, line: 276, size: 32, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !755, file: !754, line: 276, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !754, line: 70, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !754, line: 65, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !759, file: !754, line: 66, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !726, file: !21, line: 164, baseType: !723, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !726, file: !21, line: 165, baseType: !764, size: 128, offset: 256)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !712, line: 14, size: 128, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !764, file: !712, line: 15, baseType: !767, size: 128)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !467, line: 125, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !767, file: !467, line: 126, baseType: !483, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !767, file: !467, line: 127, baseType: !471, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !726, file: !21, line: 166, baseType: !772, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!716}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !726, file: !21, line: 167, baseType: !716, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !708, file: !21, line: 123, baseType: !777, size: 8, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !488, line: 17, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !490, line: 21, baseType: !779)
!779 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !708, file: !21, line: 124, baseType: !777, size: 8, offset: 456)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !708, file: !21, line: 125, baseType: !777, size: 8, offset: 464)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !708, file: !21, line: 126, baseType: !777, size: 8, offset: 472)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !692, file: !633, line: 572, baseType: !708, size: 512, offset: 1216)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !692, file: !633, line: 580, baseType: !785, size: 64, offset: 1728)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !632, file: !633, line: 721, baseType: !7, size: 32, offset: 3584)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !632, file: !633, line: 722, baseType: !33, size: 32, offset: 3616)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !632, file: !633, line: 723, baseType: !789, size: 64, offset: 3648)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !632, file: !633, line: 724, baseType: !275, size: 64, offset: 3712)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !632, file: !633, line: 749, baseType: !793, offset: 3776)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !633, line: 290, elements: !343)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !632, file: !633, line: 751, baseType: !316, size: 128, offset: 3776)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !632, file: !633, line: 757, baseType: !475, size: 64, offset: 3904)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !632, file: !633, line: 758, baseType: !475, size: 64, offset: 3968)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !632, file: !633, line: 761, baseType: !798, size: 320, offset: 4032)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !564, line: 34, size: 320, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !798, file: !564, line: 35, baseType: !487, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !798, file: !564, line: 36, baseType: !802, size: 256, offset: 64)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 256, elements: !568)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !632, file: !633, line: 766, baseType: !33, size: 32, offset: 4352)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !632, file: !633, line: 767, baseType: !33, size: 32, offset: 4384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !632, file: !633, line: 768, baseType: !33, size: 32, offset: 4416)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !632, file: !633, line: 770, baseType: !33, size: 32, offset: 4448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !632, file: !633, line: 772, baseType: !281, size: 64, offset: 4480)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !632, file: !633, line: 775, baseType: !7, size: 32, offset: 4544)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !632, file: !633, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !632, file: !633, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !632, file: !633, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !632, file: !633, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !632, file: !633, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !632, file: !633, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !632, file: !633, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !632, file: !633, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !632, file: !633, line: 831, baseType: !281, size: 64, offset: 4672)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !632, file: !633, line: 833, baseType: !819, size: 384, offset: 4736)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !26, line: 25, size: 384, elements: !820)
!820 = !{!821, !826}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !819, file: !26, line: 26, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!303, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !26, line: 27, baseType: !827, size: 320, offset: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !819, file: !26, line: 27, size: 320, elements: !828)
!828 = !{!829, !839, !866}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !827, file: !26, line: 36, baseType: !830, size: 320)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !26, line: 29, size: 320, elements: !831)
!831 = !{!832, !834, !835, !836, !837, !838}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !830, file: !26, line: 30, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !830, file: !26, line: 31, baseType: !641, size: 32, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !26, line: 32, baseType: !641, size: 32, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !830, file: !26, line: 33, baseType: !641, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !830, file: !26, line: 34, baseType: !487, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !830, file: !26, line: 35, baseType: !833, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !827, file: !26, line: 46, baseType: !840, size: 192)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !26, line: 38, size: 192, elements: !841)
!841 = !{!842, !843, !844, !865}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !840, file: !26, line: 39, baseType: !750, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !840, file: !26, line: 40, baseType: !25, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !26, line: 41, baseType: !845, size: 64, offset: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !26, line: 41, size: 64, elements: !846)
!846 = !{!847, !855}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !845, file: !26, line: 42, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !850, line: 7, size: 128, elements: !851)
!850 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852, !854}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !849, file: !850, line: 8, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !403, line: 93, baseType: !451)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !849, file: !850, line: 9, baseType: !451, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !845, file: !26, line: 43, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !858, line: 7, size: 64, elements: !859)
!858 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!859 = !{!860, !864}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !857, file: !858, line: 8, baseType: !861, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !858, line: 5, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !488, line: 20, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !490, line: 26, baseType: !33)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !857, file: !858, line: 9, baseType: !862, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !840, file: !26, line: 45, baseType: !487, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !827, file: !26, line: 54, baseType: !867, size: 256)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !827, file: !26, line: 48, size: 256, elements: !868)
!868 = !{!869, !872, !873, !874, !875}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !867, file: !26, line: 49, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !26, line: 14, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !867, file: !26, line: 50, baseType: !33, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !867, file: !26, line: 51, baseType: !33, size: 32, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !867, file: !26, line: 52, baseType: !281, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !867, file: !26, line: 53, baseType: !281, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !632, file: !633, line: 835, baseType: !877, size: 32, offset: 5120)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !289, line: 22, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !403, line: 28, baseType: !33)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !632, file: !633, line: 836, baseType: !877, size: 32, offset: 5152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !632, file: !633, line: 840, baseType: !281, size: 64, offset: 5184)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !632, file: !633, line: 849, baseType: !631, size: 64, offset: 5248)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !632, file: !633, line: 852, baseType: !631, size: 64, offset: 5312)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !632, file: !633, line: 857, baseType: !316, size: 128, offset: 5376)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !632, file: !633, line: 858, baseType: !316, size: 128, offset: 5504)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !632, file: !633, line: 859, baseType: !631, size: 64, offset: 5632)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !632, file: !633, line: 867, baseType: !316, size: 128, offset: 5696)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !632, file: !633, line: 868, baseType: !316, size: 128, offset: 5824)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !632, file: !633, line: 871, baseType: !889, size: 64, offset: 5952)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !891, line: 59, size: 768, elements: !892)
!891 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!892 = !{!893, !894, !895, !896, !907, !908, !915, !924}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !890, file: !891, line: 61, baseType: !646, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !890, file: !891, line: 62, baseType: !7, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !891, line: 63, baseType: !329, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !890, file: !891, line: 65, baseType: !897, size: 256, offset: 64)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 256, elements: !568)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !289, line: 182, size: 64, elements: !899)
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !898, file: !289, line: 183, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !289, line: 186, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !289, line: 187, baseType: !901, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !902, file: !289, line: 187, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !890, file: !891, line: 66, baseType: !898, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !890, file: !891, line: 68, baseType: !909, size: 128, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !910, line: 40, baseType: !911)
!910 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !910, line: 36, size: 128, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !911, file: !910, line: 37, baseType: !329)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !911, file: !910, line: 38, baseType: !316, size: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !890, file: !891, line: 69, baseType: !916, size: 128, align: 64, offset: 512)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !289, line: 216, size: 128, align: 64, elements: !917)
!917 = !{!918, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !916, file: !289, line: 217, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !916, file: !289, line: 218, baseType: !921, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !919}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !890, file: !891, line: 70, baseType: !925, size: 128, offset: 640)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 128, elements: !282)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !891, line: 54, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !926, file: !891, line: 55, baseType: !33, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !926, file: !891, line: 56, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !891, line: 56, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !632, file: !633, line: 872, baseType: !933, size: 512, offset: 6016)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 512, elements: !568)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !632, file: !633, line: 873, baseType: !316, size: 128, offset: 6528)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !632, file: !633, line: 874, baseType: !316, size: 128, offset: 6656)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !632, file: !633, line: 876, baseType: !937, size: 64, offset: 6784)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !939, line: 26, size: 192, elements: !940)
!939 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !938, file: !939, line: 27, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !938, file: !939, line: 28, baseType: !943, size: 128, offset: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !944, line: 43, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !943, file: !944, line: 44, baseType: !534)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !943, file: !944, line: 45, baseType: !316, size: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !632, file: !633, line: 879, baseType: !949, size: 64, offset: 6848)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !632, file: !633, line: 882, baseType: !949, size: 64, offset: 6912)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !632, file: !633, line: 884, baseType: !487, size: 64, offset: 6976)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !632, file: !633, line: 885, baseType: !487, size: 64, offset: 7040)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !632, file: !633, line: 890, baseType: !487, size: 64, offset: 7104)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !632, file: !633, line: 891, baseType: !955, size: 128, offset: 7168)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !633, line: 242, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !955, file: !633, line: 244, baseType: !487, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !955, file: !633, line: 245, baseType: !487, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !633, line: 246, baseType: !534, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !632, file: !633, line: 900, baseType: !281, size: 64, offset: 7296)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !632, file: !633, line: 901, baseType: !281, size: 64, offset: 7360)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !632, file: !633, line: 904, baseType: !487, size: 64, offset: 7424)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !632, file: !633, line: 907, baseType: !487, size: 64, offset: 7488)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !632, file: !633, line: 910, baseType: !281, size: 64, offset: 7552)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !632, file: !633, line: 911, baseType: !281, size: 64, offset: 7616)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !632, file: !633, line: 914, baseType: !967, size: 640, offset: 7680)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !968, line: 123, size: 640, elements: !969)
!968 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!969 = !{!970, !976, !977}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !967, file: !968, line: 124, baseType: !971, size: 576)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 576, elements: !371)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !968, line: 108, size: 192, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !972, file: !968, line: 109, baseType: !487, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !972, file: !968, line: 110, baseType: !764, size: 128, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !967, file: !968, line: 125, baseType: !7, size: 32, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !967, file: !968, line: 126, baseType: !7, size: 32, offset: 608)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !632, file: !633, line: 917, baseType: !979, size: 192, offset: 8320)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !968, line: 134, size: 192, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !979, file: !968, line: 135, baseType: !916, size: 128, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !979, file: !968, line: 136, baseType: !7, size: 32, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !632, file: !633, line: 923, baseType: !984, size: 64, offset: 8512)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !633, line: 923, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !632, file: !633, line: 926, baseType: !984, size: 64, offset: 8576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !632, file: !633, line: 929, baseType: !984, size: 64, offset: 8640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !632, file: !633, line: 933, baseType: !990, size: 64, offset: 8704)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !633, line: 933, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !632, file: !633, line: 943, baseType: !993, size: 128, offset: 8768)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 128, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 16)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !632, file: !633, line: 945, baseType: !997, size: 64, offset: 8896)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !633, line: 49, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !632, file: !633, line: 956, baseType: !1000, size: 64, offset: 8960)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !633, line: 45, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !632, file: !633, line: 959, baseType: !1003, size: 64, offset: 9024)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !633, line: 959, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !632, file: !633, line: 962, baseType: !1006, size: 64, offset: 9088)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !633, line: 66, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !632, file: !633, line: 966, baseType: !1009, size: 64, offset: 9152)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !633, line: 50, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !632, file: !633, line: 969, baseType: !1012, size: 64, offset: 9216)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !968, line: 223, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !632, file: !633, line: 970, baseType: !1015, size: 64, offset: 9280)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !633, line: 62, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !632, file: !633, line: 971, baseType: !1018, size: 64, offset: 9344)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1019, line: 25, baseType: !1020)
!1019 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1019, line: 23, size: 64, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1020, file: !1019, line: 24, baseType: !280, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !632, file: !633, line: 972, baseType: !1018, size: 64, offset: 9408)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !632, file: !633, line: 974, baseType: !1018, size: 64, offset: 9472)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !632, file: !633, line: 975, baseType: !1026, size: 192, offset: 9536)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1027, line: 30, size: 192, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1026, file: !1027, line: 31, baseType: !316, size: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1026, file: !1027, line: 32, baseType: !1018, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !632, file: !633, line: 976, baseType: !281, size: 64, offset: 9728)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !632, file: !633, line: 977, baseType: !416, size: 64, offset: 9792)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !632, file: !633, line: 978, baseType: !7, size: 32, offset: 9856)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !632, file: !633, line: 980, baseType: !919, size: 64, offset: 9920)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !632, file: !633, line: 989, baseType: !1036, size: 128, offset: 9984)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1037, line: 35, size: 128, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039, !1040, !1041}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1036, file: !1037, line: 36, baseType: !33, size: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1036, file: !1037, line: 37, baseType: !509, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1036, file: !1037, line: 38, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1037, line: 23, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !632, file: !633, line: 992, baseType: !487, size: 64, offset: 10112)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !632, file: !633, line: 993, baseType: !487, size: 64, offset: 10176)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !632, file: !633, line: 996, baseType: !329, offset: 10240)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !632, file: !633, line: 999, baseType: !534, offset: 10240)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !632, file: !633, line: 1001, baseType: !1049, size: 64, offset: 10240)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !633, line: 636, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !633, line: 637, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !632, file: !633, line: 1005, baseType: !767, size: 128, offset: 10304)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !632, file: !633, line: 1007, baseType: !631, size: 64, offset: 10432)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !632, file: !633, line: 1009, baseType: !1056, size: 64, offset: 10496)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !633, line: 1009, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !632, file: !633, line: 1043, baseType: !286, size: 64, offset: 10560)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !632, file: !633, line: 1046, baseType: !1060, size: 64, offset: 10624)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !633, line: 41, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !632, file: !633, line: 1050, baseType: !1063, size: 64, offset: 10688)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !633, line: 42, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !632, file: !633, line: 1054, baseType: !1066, size: 64, offset: 10752)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !633, line: 55, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !632, file: !633, line: 1056, baseType: !1069, size: 64, offset: 10816)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !633, line: 40, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !632, file: !633, line: 1058, baseType: !1072, size: 64, offset: 10880)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !633, line: 47, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !632, file: !633, line: 1061, baseType: !1075, size: 64, offset: 10944)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !633, line: 43, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !632, file: !633, line: 1064, baseType: !281, size: 64, offset: 11008)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !632, file: !633, line: 1065, baseType: !1079, size: 64, offset: 11072)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1027, line: 14, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1027, line: 12, size: 384, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1027, line: 13, baseType: !1084, size: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1027, line: 13, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1084, file: !1027, line: 13, baseType: !33, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1084, file: !1027, line: 13, baseType: !33, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1084, file: !1027, line: 13, baseType: !33, size: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1084, file: !1027, line: 13, baseType: !1090, size: 256, offset: 128)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1091, line: 32, size: 256, elements: !1092)
!1091 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1092 = !{!1093, !1099, !1112, !1118, !1127, !1147, !1152}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1090, file: !1091, line: 37, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 34, size: 64, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1094, file: !1091, line: 35, baseType: !878, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1094, file: !1091, line: 36, baseType: !1098, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !403, line: 49, baseType: !7)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1090, file: !1091, line: 45, baseType: !1100, size: 192)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 40, size: 192, elements: !1101)
!1101 = !{!1102, !1104, !1105, !1111}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1100, file: !1091, line: 41, baseType: !1103, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !403, line: 95, baseType: !33)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1100, file: !1091, line: 42, baseType: !33, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1100, file: !1091, line: 43, baseType: !1106, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1091, line: 11, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1091, line: 8, size: 64, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1107, file: !1091, line: 9, baseType: !33, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1107, file: !1091, line: 10, baseType: !286, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1100, file: !1091, line: 44, baseType: !33, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1090, file: !1091, line: 52, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 48, size: 128, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1113, file: !1091, line: 49, baseType: !878, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1113, file: !1091, line: 50, baseType: !1098, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1113, file: !1091, line: 51, baseType: !1106, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1090, file: !1091, line: 61, baseType: !1119, size: 256)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 55, size: 256, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1119, file: !1091, line: 56, baseType: !878, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1119, file: !1091, line: 57, baseType: !1098, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1119, file: !1091, line: 58, baseType: !33, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1119, file: !1091, line: 59, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !403, line: 94, baseType: !404)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1119, file: !1091, line: 60, baseType: !1125, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1090, file: !1091, line: 95, baseType: !1128, size: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 64, size: 256, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1128, file: !1091, line: 65, baseType: !286, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !1091, line: 77, baseType: !1132, size: 192, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1128, file: !1091, line: 77, size: 192, elements: !1133)
!1133 = !{!1134, !1135, !1142}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1132, file: !1091, line: 82, baseType: !620, size: 16)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1132, file: !1091, line: 88, baseType: !1136, size: 192)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1132, file: !1091, line: 84, size: 192, elements: !1137)
!1137 = !{!1138, !1140, !1141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1136, file: !1091, line: 85, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 64, elements: !746)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1136, file: !1091, line: 86, baseType: !286, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1136, file: !1091, line: 87, baseType: !286, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1132, file: !1091, line: 93, baseType: !1143, size: 96)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1132, file: !1091, line: 90, size: 96, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1143, file: !1091, line: 91, baseType: !1139, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1143, file: !1091, line: 92, baseType: !642, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1090, file: !1091, line: 101, baseType: !1148, size: 128)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 98, size: 128, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1148, file: !1091, line: 99, baseType: !303, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1148, file: !1091, line: 100, baseType: !33, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1090, file: !1091, line: 108, baseType: !1153, size: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1090, file: !1091, line: 104, size: 128, elements: !1154)
!1154 = !{!1155, !1156, !1157}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1153, file: !1091, line: 105, baseType: !286, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1153, file: !1091, line: 106, baseType: !33, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1153, file: !1091, line: 107, baseType: !7, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !632, file: !633, line: 1067, baseType: !1159, offset: 11136)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1160, line: 12, elements: !343)
!1160 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !632, file: !633, line: 1099, baseType: !1162, size: 64, offset: 11136)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !633, line: 56, flags: DIFlagFwdDecl)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !632, file: !633, line: 1103, baseType: !316, size: 128, offset: 11200)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !632, file: !633, line: 1104, baseType: !1166, size: 64, offset: 11328)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !633, line: 46, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !632, file: !633, line: 1105, baseType: !586, size: 192, offset: 11392)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !632, file: !633, line: 1106, baseType: !7, size: 32, offset: 11584)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !632, file: !633, line: 1109, baseType: !1171, size: 128, offset: 11648)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 128, elements: !1174)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !633, line: 51, flags: DIFlagFwdDecl)
!1174 = !{!1175}
!1175 = !DISubrange(count: 2)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !632, file: !633, line: 1110, baseType: !586, size: 192, offset: 11776)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !632, file: !633, line: 1111, baseType: !316, size: 128, offset: 11968)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !632, file: !633, line: 1173, baseType: !1179, size: 64, offset: 12096)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1181, line: 62, size: 256, align: 256, elements: !1182)
!1181 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184, !1185, !1190}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1180, file: !1181, line: 75, baseType: !642, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1180, file: !1181, line: 90, baseType: !642, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1180, file: !1181, line: 124, baseType: !1186, size: 64, offset: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 109, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1186, file: !1181, line: 110, baseType: !489, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1186, file: !1181, line: 112, baseType: !489, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 144, baseType: !642, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !632, file: !633, line: 1174, baseType: !641, size: 32, offset: 12160)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !632, file: !633, line: 1179, baseType: !281, size: 64, offset: 12224)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !632, file: !633, line: 1182, baseType: !1194, size: 128, offset: 12288)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !564, line: 76, size: 128, elements: !1195)
!1195 = !{!1196, !1201, !1202}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1194, file: !564, line: 85, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1198, line: 7, size: 64, elements: !1199)
!1198 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1197, file: !1198, line: 12, baseType: !277, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1194, file: !564, line: 88, baseType: !288, size: 8, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1194, file: !564, line: 95, baseType: !288, size: 8, offset: 72)
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 1184, baseType: !1204, size: 128, offset: 12416)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 1184, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1204, file: !633, line: 1185, baseType: !646, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1204, file: !633, line: 1186, baseType: !916, size: 128, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !632, file: !633, line: 1190, baseType: !1209, size: 64, offset: 12544)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !633, line: 53, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !632, file: !633, line: 1192, baseType: !1212, size: 128, offset: 12608)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !564, line: 64, size: 128, elements: !1213)
!1213 = !{!1214, !1307, !1308}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1212, file: !564, line: 65, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !459, line: 68, size: 512, align: 128, elements: !1217)
!1217 = !{!1218, !1219, !1299, !1306}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1216, file: !459, line: 69, baseType: !281, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !459, line: 77, baseType: !1220, size: 320, offset: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !459, line: 77, size: 320, elements: !1221)
!1221 = !{!1222, !1231, !1236, !1264, !1272, !1278, !1291, !1298}
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 78, baseType: !1223, size: 320)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 78, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1229, !1230}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1223, file: !459, line: 84, baseType: !316, size: 128)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1223, file: !459, line: 86, baseType: !1227, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !459, line: 26, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1223, file: !459, line: 87, baseType: !281, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1223, file: !459, line: 94, baseType: !281, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 96, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 96, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1232, file: !459, line: 101, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !289, line: 143, baseType: !487)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 103, baseType: !1237, size: 320)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 103, size: 320, elements: !1238)
!1238 = !{!1239, !1249, !1252, !1253}
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !459, line: 104, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !459, line: 104, size: 128, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1240, file: !459, line: 105, baseType: !316, size: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !459, line: 106, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !459, line: 106, size: 128, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1244, file: !459, line: 107, baseType: !1215, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1244, file: !459, line: 109, baseType: !33, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1244, file: !459, line: 110, baseType: !33, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1237, file: !459, line: 117, baseType: !1250, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !459, line: 117, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1237, file: !459, line: 119, baseType: !286, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1237, file: !459, line: 120, baseType: !1254, size: 64, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1237, file: !459, line: 120, size: 64, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1254, file: !459, line: 121, baseType: !286, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1254, file: !459, line: 122, baseType: !281, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1254, file: !459, line: 123, baseType: !1259, size: 32)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1254, file: !459, line: 123, size: 32, elements: !1260)
!1260 = !{!1261, !1262, !1263}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1259, file: !459, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1259, file: !459, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1259, file: !459, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 130, baseType: !1265, size: 192)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 130, size: 192, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1265, file: !459, line: 131, baseType: !281, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1265, file: !459, line: 134, baseType: !779, size: 8, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1265, file: !459, line: 135, baseType: !779, size: 8, offset: 72)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1265, file: !459, line: 136, baseType: !509, size: 32, offset: 96)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1265, file: !459, line: 137, baseType: !7, size: 32, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 139, baseType: !1273, size: 256)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 139, size: 256, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1273, file: !459, line: 140, baseType: !281, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1273, file: !459, line: 141, baseType: !509, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1273, file: !459, line: 143, baseType: !316, size: 128, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 145, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 145, size: 256, elements: !1280)
!1280 = !{!1281, !1282, !1284, !1285, !1290}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1279, file: !459, line: 146, baseType: !281, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1279, file: !459, line: 147, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !448, line: 509, baseType: !1215)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1279, file: !459, line: 148, baseType: !281, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !459, line: 149, baseType: !1286, size: 64, offset: 192)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !459, line: 149, size: 64, elements: !1287)
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1286, file: !459, line: 150, baseType: !475, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1286, file: !459, line: 151, baseType: !509, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1279, file: !459, line: 156, baseType: !329, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !459, line: 159, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !459, line: 159, size: 128, elements: !1293)
!1293 = !{!1294, !1297}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1292, file: !459, line: 161, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !459, line: 161, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1292, file: !459, line: 162, baseType: !286, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1220, file: !459, line: 176, baseType: !916, size: 128, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !459, line: 179, baseType: !1300, size: 32, offset: 384)
!1300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1216, file: !459, line: 179, size: 32, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1300, file: !459, line: 184, baseType: !509, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1300, file: !459, line: 192, baseType: !7, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1300, file: !459, line: 194, baseType: !7, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1300, file: !459, line: 195, baseType: !33, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1216, file: !459, line: 199, baseType: !509, size: 32, offset: 416)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1212, file: !564, line: 67, baseType: !642, size: 32, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1212, file: !564, line: 68, baseType: !642, size: 32, offset: 96)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !632, file: !633, line: 1206, baseType: !33, size: 32, offset: 12736)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !632, file: !633, line: 1207, baseType: !33, size: 32, offset: 12768)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !632, file: !633, line: 1209, baseType: !281, size: 64, offset: 12800)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !632, file: !633, line: 1219, baseType: !487, size: 64, offset: 12864)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !632, file: !633, line: 1220, baseType: !487, size: 64, offset: 12928)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !632, file: !633, line: 1317, baseType: !33, size: 32, offset: 12992)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !632, file: !633, line: 1319, baseType: !631, size: 64, offset: 13056)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !632, file: !633, line: 1322, baseType: !1317, size: 64, offset: 13120)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1319, line: 56, size: 512, elements: !1320)
!1319 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1327, !1328, !1330}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !1319, line: 57, baseType: !1317, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1318, file: !1319, line: 58, baseType: !286, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1318, file: !1319, line: 59, baseType: !281, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !1319, line: 60, baseType: !281, size: 64, offset: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1318, file: !1319, line: 61, baseType: !1326, size: 64, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1318, file: !1319, line: 62, baseType: !7, size: 32, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1318, file: !1319, line: 63, baseType: !1329, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !289, line: 153, baseType: !487)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1318, file: !1319, line: 64, baseType: !1331, size: 64, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !632, file: !633, line: 1326, baseType: !646, size: 32, offset: 13184)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !632, file: !633, line: 1342, baseType: !286, size: 64, offset: 13248)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !632, file: !633, line: 1343, baseType: !489, size: 64, offset: 13312)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !632, file: !633, line: 1344, baseType: !487, size: 64, offset: 13376)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !632, file: !633, line: 1345, baseType: !489, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !632, file: !633, line: 1346, baseType: !489, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !632, file: !633, line: 1347, baseType: !489, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !632, file: !633, line: 1348, baseType: !916, size: 128, align: 64, offset: 13504)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !632, file: !633, line: 1358, baseType: !1342, size: 34816, offset: 13824)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1343, line: 485, size: 34816, elements: !1344)
!1343 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1344 = !{!1345, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1374, !1375, !1376, !1377, !1378, !1379, !1382, !1383, !1384}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1342, file: !1343, line: 487, baseType: !1346, size: 192)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1347, size: 192, elements: !371)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1348, line: 16, size: 64, elements: !1349)
!1348 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1347, file: !1348, line: 17, baseType: !615, size: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1347, file: !1348, line: 18, baseType: !615, size: 16, offset: 16)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1347, file: !1348, line: 19, baseType: !615, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1347, file: !1348, line: 19, baseType: !615, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1347, file: !1348, line: 19, baseType: !615, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1347, file: !1348, line: 19, baseType: !615, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1347, file: !1348, line: 19, baseType: !615, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1347, file: !1348, line: 20, baseType: !615, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1347, file: !1348, line: 20, baseType: !615, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1347, file: !1348, line: 20, baseType: !615, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1347, file: !1348, line: 20, baseType: !615, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1347, file: !1348, line: 20, baseType: !615, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1347, file: !1348, line: 20, baseType: !615, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1342, file: !1343, line: 491, baseType: !281, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1342, file: !1343, line: 495, baseType: !411, size: 16, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1342, file: !1343, line: 496, baseType: !411, size: 16, offset: 272)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1342, file: !1343, line: 497, baseType: !411, size: 16, offset: 288)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1342, file: !1343, line: 498, baseType: !411, size: 16, offset: 304)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1342, file: !1343, line: 502, baseType: !281, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1342, file: !1343, line: 503, baseType: !281, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1342, file: !1343, line: 514, baseType: !1371, size: 256, offset: 448)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1372, size: 256, elements: !568)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1343, line: 483, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1342, file: !1343, line: 516, baseType: !281, size: 64, offset: 704)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1342, file: !1343, line: 518, baseType: !281, size: 64, offset: 768)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1342, file: !1343, line: 520, baseType: !281, size: 64, offset: 832)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1342, file: !1343, line: 521, baseType: !281, size: 64, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1342, file: !1343, line: 522, baseType: !281, size: 64, offset: 960)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1342, file: !1343, line: 528, baseType: !1380, size: 64, offset: 1024)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1343, line: 10, flags: DIFlagFwdDecl)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1342, file: !1343, line: 535, baseType: !281, size: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1342, file: !1343, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1342, file: !1343, line: 540, baseType: !1385, size: 33280, offset: 1536)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1386, line: 317, size: 33280, elements: !1387)
!1386 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !{!1388, !1389, !1390}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1385, file: !1386, line: 330, baseType: !7, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1385, file: !1386, line: 337, baseType: !281, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1385, file: !1386, line: 348, baseType: !1391, size: 32768, offset: 512)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1386, line: 304, size: 32768, elements: !1392)
!1392 = !{!1393, !1408, !1447, !1497, !1514}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1391, file: !1386, line: 305, baseType: !1394, size: 896)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1386, line: 12, size: 896, elements: !1395)
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1407}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1394, file: !1386, line: 13, baseType: !641, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1394, file: !1386, line: 14, baseType: !641, size: 32, offset: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1394, file: !1386, line: 15, baseType: !641, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1394, file: !1386, line: 16, baseType: !641, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1394, file: !1386, line: 17, baseType: !641, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1394, file: !1386, line: 18, baseType: !641, size: 32, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1394, file: !1386, line: 19, baseType: !641, size: 32, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1394, file: !1386, line: 22, baseType: !1404, size: 640, offset: 224)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 640, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 20)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1394, file: !1386, line: 25, baseType: !641, size: 32, offset: 864)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1391, file: !1386, line: 306, baseType: !1409, size: 4096, align: 128)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1386, line: 34, size: 4096, align: 128, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1430, !1431, !1432, !1436, !1438, !1442}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1409, file: !1386, line: 35, baseType: !615, size: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1409, file: !1386, line: 36, baseType: !615, size: 16, offset: 16)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1409, file: !1386, line: 37, baseType: !615, size: 16, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1409, file: !1386, line: 38, baseType: !615, size: 16, offset: 48)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1386, line: 39, baseType: !1416, size: 128, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1386, line: 39, size: 128, elements: !1417)
!1417 = !{!1418, !1423}
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1386, line: 40, baseType: !1419, size: 128)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !1386, line: 40, size: 128, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1419, file: !1386, line: 41, baseType: !487, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1419, file: !1386, line: 42, baseType: !487, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1386, line: 44, baseType: !1424, size: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !1386, line: 44, size: 128, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1424, file: !1386, line: 45, baseType: !641, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1424, file: !1386, line: 46, baseType: !641, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1424, file: !1386, line: 47, baseType: !641, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1424, file: !1386, line: 48, baseType: !641, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1409, file: !1386, line: 51, baseType: !641, size: 32, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1409, file: !1386, line: 52, baseType: !641, size: 32, offset: 224)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1409, file: !1386, line: 55, baseType: !1433, size: 1024, offset: 256)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 1024, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1409, file: !1386, line: 58, baseType: !1437, size: 2048, offset: 1280)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 2048, elements: !375)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1409, file: !1386, line: 60, baseType: !1439, size: 384, offset: 3328)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 384, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 12)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1386, line: 62, baseType: !1443, size: 384, offset: 3712)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !1386, line: 62, size: 384, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1443, file: !1386, line: 63, baseType: !1439, size: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1443, file: !1386, line: 64, baseType: !1439, size: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1391, file: !1386, line: 307, baseType: !1448, size: 1088)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1386, line: 79, size: 1088, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1496}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1448, file: !1386, line: 80, baseType: !641, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1448, file: !1386, line: 81, baseType: !641, size: 32, offset: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1448, file: !1386, line: 82, baseType: !641, size: 32, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1448, file: !1386, line: 83, baseType: !641, size: 32, offset: 96)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1448, file: !1386, line: 84, baseType: !641, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1448, file: !1386, line: 85, baseType: !641, size: 32, offset: 160)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1448, file: !1386, line: 86, baseType: !641, size: 32, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1448, file: !1386, line: 88, baseType: !1404, size: 640, offset: 224)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1448, file: !1386, line: 89, baseType: !777, size: 8, offset: 864)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1448, file: !1386, line: 90, baseType: !777, size: 8, offset: 872)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1448, file: !1386, line: 91, baseType: !777, size: 8, offset: 880)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1448, file: !1386, line: 92, baseType: !777, size: 8, offset: 888)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1448, file: !1386, line: 93, baseType: !777, size: 8, offset: 896)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1448, file: !1386, line: 94, baseType: !777, size: 8, offset: 904)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1448, file: !1386, line: 95, baseType: !1465, size: 64, offset: 960)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1467, line: 11, size: 128, elements: !1468)
!1467 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1466, file: !1467, line: 12, baseType: !303, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1466, file: !1467, line: 13, baseType: !1471, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1473, line: 56, size: 1344, elements: !1474)
!1473 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1472, file: !1473, line: 61, baseType: !281, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1472, file: !1473, line: 62, baseType: !281, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1472, file: !1473, line: 63, baseType: !281, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1472, file: !1473, line: 64, baseType: !281, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1472, file: !1473, line: 65, baseType: !281, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1472, file: !1473, line: 66, baseType: !281, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1472, file: !1473, line: 68, baseType: !281, size: 64, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1472, file: !1473, line: 69, baseType: !281, size: 64, offset: 448)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1472, file: !1473, line: 70, baseType: !281, size: 64, offset: 512)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1472, file: !1473, line: 71, baseType: !281, size: 64, offset: 576)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1472, file: !1473, line: 72, baseType: !281, size: 64, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1472, file: !1473, line: 73, baseType: !281, size: 64, offset: 704)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1472, file: !1473, line: 74, baseType: !281, size: 64, offset: 768)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1472, file: !1473, line: 75, baseType: !281, size: 64, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1472, file: !1473, line: 76, baseType: !281, size: 64, offset: 896)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1472, file: !1473, line: 81, baseType: !281, size: 64, offset: 960)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1472, file: !1473, line: 83, baseType: !281, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1472, file: !1473, line: 84, baseType: !281, size: 64, offset: 1088)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1473, line: 85, baseType: !281, size: 64, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1472, file: !1473, line: 86, baseType: !281, size: 64, offset: 1216)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1472, file: !1473, line: 87, baseType: !281, size: 64, offset: 1280)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1448, file: !1386, line: 96, baseType: !641, size: 32, offset: 1024)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1391, file: !1386, line: 308, baseType: !1498, size: 4608, align: 512)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1386, line: 289, size: 4608, align: 512, elements: !1499)
!1499 = !{!1500, !1501, !1510}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1498, file: !1386, line: 290, baseType: !1409, size: 4096, align: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1498, file: !1386, line: 291, baseType: !1502, size: 512, offset: 4096)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1386, line: 268, size: 512, elements: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1502, file: !1386, line: 269, baseType: !487, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1502, file: !1386, line: 270, baseType: !487, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1502, file: !1386, line: 271, baseType: !1507, size: 384, offset: 128)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 384, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 6)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1498, file: !1386, line: 292, baseType: !1511, offset: 4608)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 0)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1391, file: !1386, line: 309, baseType: !1515, size: 32768)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 32768, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 4096)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !459, line: 378, baseType: !1519, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !624, file: !459, line: 384, baseType: !938, size: 192, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !479, file: !459, line: 500, baseType: !329, offset: 6656)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !479, file: !459, line: 501, baseType: !1523, size: 64, offset: 6656)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !459, line: 387, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !479, file: !459, line: 516, baseType: !1526, size: 64, offset: 6720)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !459, line: 516, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !479, file: !459, line: 519, baseType: !446, size: 64, offset: 6784)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !479, file: !459, line: 521, baseType: !1530, size: 64, offset: 6848)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !459, line: 521, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !479, file: !459, line: 545, baseType: !509, size: 32, offset: 6912)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !479, file: !459, line: 548, baseType: !288, size: 8, offset: 6944)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !479, file: !459, line: 550, baseType: !1535, offset: 6952)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1536, line: 142, elements: !343)
!1536 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !479, file: !459, line: 554, baseType: !1538, size: 256, offset: 6976)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1539, line: 102, size: 256, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1538, file: !1539, line: 103, baseType: !517, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1538, file: !1539, line: 104, baseType: !316, size: 128, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1538, file: !1539, line: 105, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1539, line: 21, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !479, file: !459, line: 557, baseType: !641, size: 32, offset: 7232)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !476, file: !459, line: 565, baseType: !1551, offset: 7296)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, elements: !1552)
!1552 = !{!1553}
!1553 = !DISubrange(count: -1)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !458, file: !459, line: 333, baseType: !1555, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !448, line: 284, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !448, line: 284, size: 64, elements: !1557)
!1557 = !{!1558}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1556, file: !448, line: 284, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !507, line: 19, baseType: !281)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !458, file: !459, line: 334, baseType: !281, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !458, file: !459, line: 343, baseType: !1562, size: 256, offset: 704)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !459, line: 340, size: 256, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1562, file: !459, line: 341, baseType: !466, size: 192, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1562, file: !459, line: 342, baseType: !281, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !458, file: !459, line: 351, baseType: !316, size: 128, offset: 960)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !458, file: !459, line: 353, baseType: !1568, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !459, line: 353, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !458, file: !459, line: 356, baseType: !1571, size: 64, offset: 1152)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1573)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !459, line: 356, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !458, file: !459, line: 359, baseType: !281, size: 64, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !458, file: !459, line: 361, baseType: !446, size: 64, offset: 1280)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !458, file: !459, line: 362, baseType: !286, size: 64, offset: 1344)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !458, file: !459, line: 365, baseType: !517, size: 64, offset: 1408)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !458, file: !459, line: 373, baseType: !1579, offset: 1472)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !459, line: 296, elements: !343)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !425, file: !395, line: 90, baseType: !420, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !425, file: !395, line: 91, baseType: !1582, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !385, file: !310, line: 143, baseType: !1584, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!1587, !322}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !15, line: 39, size: 384, elements: !1590)
!1590 = !{!1591, !1592, !1596, !1600, !1606, !1610}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1589, file: !15, line: 40, baseType: !14, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1589, file: !15, line: 41, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!288}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1589, file: !15, line: 42, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!286}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1589, file: !15, line: 43, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1331, !1604}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !15, line: 19, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1589, file: !15, line: 44, baseType: !1607, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1331}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1589, file: !15, line: 45, baseType: !1611, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !286}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !385, file: !310, line: 144, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!1331, !322}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !385, file: !310, line: 145, baseType: !1619, size: 64, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !322, !1622, !1629}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1624, line: 23, baseType: !1625)
!1624 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1624, line: 21, size: 32, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1625, file: !1624, line: 22, baseType: !1628, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !289, line: 32, baseType: !1098)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1624, line: 28, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1624, line: 26, size: 32, elements: !1632)
!1632 = !{!1633}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1631, file: !1624, line: 27, baseType: !1634, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !289, line: 33, baseType: !1635)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !403, line: 50, baseType: !7)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !309, file: !310, line: 70, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1639, line: 123, size: 1024, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1782, !1783, !1784, !1785, !1786}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1638, file: !1639, line: 124, baseType: !509, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1638, file: !1639, line: 125, baseType: !509, size: 32, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1638, file: !1639, line: 135, baseType: !1637, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1638, file: !1639, line: 136, baseType: !313, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1638, file: !1639, line: 138, baseType: !466, size: 192, align: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1638, file: !1639, line: 140, baseType: !1331, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1638, file: !1639, line: 141, baseType: !7, size: 32, offset: 448)
!1648 = !DIDerivedType(tag: DW_TAG_member, scope: !1638, file: !1639, line: 142, baseType: !1649, size: 256, offset: 512)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1638, file: !1639, line: 142, size: 256, elements: !1650)
!1650 = !{!1651, !1705, !1709}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1649, file: !1639, line: 143, baseType: !1652, size: 192)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1639, line: 91, size: 192, elements: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1652, file: !1639, line: 92, baseType: !281, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1652, file: !1639, line: 94, baseType: !483, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1652, file: !1639, line: 100, baseType: !1657, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1639, line: 180, size: 704, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1675, !1676, !1677, !1703, !1704}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1658, file: !1639, line: 182, baseType: !1637, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !1639, line: 183, baseType: !7, size: 32, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1658, file: !1639, line: 186, baseType: !1663, size: 192, offset: 128)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1664, line: 19, size: 192, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1673, !1674}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1663, file: !1664, line: 20, baseType: !1667, size: 128)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1668, line: 292, size: 128, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !{!1670, !1671, !1672}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1667, file: !1668, line: 293, baseType: !329)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1667, file: !1668, line: 295, baseType: !295, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1667, file: !1668, line: 296, baseType: !286, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1663, file: !1664, line: 21, baseType: !7, size: 32, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1663, file: !1664, line: 22, baseType: !7, size: 32, offset: 160)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1658, file: !1639, line: 187, baseType: !641, size: 32, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1658, file: !1639, line: 188, baseType: !641, size: 32, offset: 352)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1658, file: !1639, line: 189, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1639, line: 168, size: 320, elements: !1680)
!1680 = !{!1681, !1687, !1691, !1695, !1699}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1679, file: !1639, line: 169, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!33, !1685, !1657}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !448, line: 539, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1679, file: !1639, line: 171, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!33, !1637, !313, !410}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1679, file: !1639, line: 173, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!33, !1637}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1679, file: !1639, line: 174, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!33, !1637, !1637, !313}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1679, file: !1639, line: 176, baseType: !1700, size: 64, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!33, !1685, !1637, !1657}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1658, file: !1639, line: 192, baseType: !316, size: 128, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1658, file: !1639, line: 194, baseType: !909, size: 128, offset: 576)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1649, file: !1639, line: 144, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1639, line: 103, size: 64, elements: !1707)
!1707 = !{!1708}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1706, file: !1639, line: 104, baseType: !1637, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1649, file: !1639, line: 145, baseType: !1710, size: 256)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1639, line: 107, size: 256, elements: !1711)
!1711 = !{!1712, !1777, !1780, !1781}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1710, file: !1639, line: 108, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1639, line: 217, size: 768, elements: !1716)
!1716 = !{!1717, !1737, !1741, !1745, !1750, !1754, !1758, !1762, !1763, !1764, !1765, !1773}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1715, file: !1639, line: 222, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!33, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1639, line: 197, size: 1088, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1722, file: !1639, line: 199, baseType: !1637, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1722, file: !1639, line: 200, baseType: !446, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1722, file: !1639, line: 201, baseType: !1685, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1722, file: !1639, line: 202, baseType: !286, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1722, file: !1639, line: 205, baseType: !586, size: 192, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1722, file: !1639, line: 206, baseType: !586, size: 192, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1722, file: !1639, line: 207, baseType: !33, size: 32, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1722, file: !1639, line: 208, baseType: !316, size: 128, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1722, file: !1639, line: 209, baseType: !370, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1722, file: !1639, line: 211, baseType: !416, size: 64, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1722, file: !1639, line: 212, baseType: !288, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1722, file: !1639, line: 213, baseType: !288, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1722, file: !1639, line: 214, baseType: !1571, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1715, file: !1639, line: 223, baseType: !1738, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{null, !1721}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1715, file: !1639, line: 236, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!33, !1685, !286}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1715, file: !1639, line: 238, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!286, !1685, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1715, file: !1639, line: 239, baseType: !1751, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!286, !1685, !286, !1749}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1715, file: !1639, line: 240, baseType: !1755, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{null, !1685, !286}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1715, file: !1639, line: 242, baseType: !1759, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!401, !1721, !370, !416, !449}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1715, file: !1639, line: 252, baseType: !416, size: 64, offset: 448)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1715, file: !1639, line: 259, baseType: !288, size: 8, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1715, file: !1639, line: 260, baseType: !1759, size: 64, offset: 576)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1715, file: !1639, line: 263, baseType: !1766, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!1769, !1721, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1770, line: 52, baseType: !7)
!1770 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1639, line: 27, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1715, file: !1639, line: 266, baseType: !1774, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!33, !1721, !457}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1710, file: !1639, line: 109, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1639, line: 31, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1710, file: !1639, line: 110, baseType: !449, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1710, file: !1639, line: 111, baseType: !1637, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1638, file: !1639, line: 148, baseType: !286, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1638, file: !1639, line: 154, baseType: !487, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !1639, line: 156, baseType: !411, size: 16, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1638, file: !1639, line: 157, baseType: !410, size: 16, offset: 912)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1638, file: !1639, line: 158, baseType: !1787, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1639, line: 32, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !309, file: !310, line: 71, baseType: !1790, size: 32, offset: 448)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1791, line: 19, size: 32, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1790, file: !1791, line: 20, baseType: !646, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !309, file: !310, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !309, file: !310, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !309, file: !310, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !309, file: !310, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !309, file: !310, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !306, file: !224, line: 463, baseType: !305, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !306, file: !224, line: 465, baseType: !1801, size: 64, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !224, line: 36, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !306, file: !224, line: 467, baseType: !313, size: 64, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !306, file: !224, line: 468, baseType: !1805, size: 64, offset: 704)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !224, line: 87, size: 384, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1815, !1820, !1824}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1807, file: !224, line: 88, baseType: !313, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1807, file: !224, line: 89, baseType: !422, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1807, file: !224, line: 90, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!33, !305, !365}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1807, file: !224, line: 91, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!370, !305, !1819, !1622, !1629}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1807, file: !224, line: 93, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !305}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1807, file: !224, line: 95, baseType: !1825, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !231, line: 278, size: 1472, elements: !1828)
!1828 = !{!1829, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1827, file: !231, line: 279, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!33, !305}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1827, file: !231, line: 280, baseType: !1821, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1827, file: !231, line: 281, baseType: !1830, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1827, file: !231, line: 282, baseType: !1830, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1827, file: !231, line: 283, baseType: !1830, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1827, file: !231, line: 284, baseType: !1830, size: 64, offset: 320)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1827, file: !231, line: 285, baseType: !1830, size: 64, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1827, file: !231, line: 286, baseType: !1830, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1827, file: !231, line: 287, baseType: !1830, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1827, file: !231, line: 288, baseType: !1830, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1827, file: !231, line: 289, baseType: !1830, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1827, file: !231, line: 290, baseType: !1830, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1827, file: !231, line: 291, baseType: !1830, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1827, file: !231, line: 292, baseType: !1830, size: 64, offset: 832)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1827, file: !231, line: 293, baseType: !1830, size: 64, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1827, file: !231, line: 294, baseType: !1830, size: 64, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1827, file: !231, line: 295, baseType: !1830, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1827, file: !231, line: 296, baseType: !1830, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1827, file: !231, line: 297, baseType: !1830, size: 64, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1827, file: !231, line: 298, baseType: !1830, size: 64, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1827, file: !231, line: 299, baseType: !1830, size: 64, offset: 1280)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1827, file: !231, line: 300, baseType: !1830, size: 64, offset: 1344)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1827, file: !231, line: 301, baseType: !1830, size: 64, offset: 1408)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !306, file: !224, line: 470, baseType: !1856, size: 64, offset: 768)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1858, line: 82, size: 1408, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1945, !1948, !1951}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !1858, line: 83, baseType: !313, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1857, file: !1858, line: 84, baseType: !313, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1857, file: !1858, line: 85, baseType: !305, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1857, file: !1858, line: 86, baseType: !422, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1857, file: !1858, line: 87, baseType: !422, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1857, file: !1858, line: 88, baseType: !422, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1857, file: !1858, line: 90, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!33, !305, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !218, line: 95, size: 1152, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1879, !1880, !1881, !1882, !1896, !1909, !1910, !1911, !1912, !1913, !1921, !1922, !1923, !1924, !1925, !1926}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1871, file: !218, line: 96, baseType: !313, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1871, file: !218, line: 97, baseType: !1856, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1871, file: !218, line: 99, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1878, line: 76, flags: DIFlagFwdDecl)
!1878 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1871, file: !218, line: 100, baseType: !313, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1871, file: !218, line: 102, baseType: !288, size: 8, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1871, file: !218, line: 103, baseType: !217, size: 32, offset: 288)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1871, file: !218, line: 105, baseType: !1883, size: 64, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1886, line: 262, size: 1600, elements: !1887)
!1886 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1887 = !{!1888, !1890, !1891, !1895}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1885, file: !1886, line: 263, baseType: !1889, size: 256)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !1434)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1885, file: !1886, line: 264, baseType: !1889, size: 256, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1885, file: !1886, line: 265, baseType: !1892, size: 1024, offset: 512)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 1024, elements: !1893)
!1893 = !{!1894}
!1894 = !DISubrange(count: 128)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1885, file: !1886, line: 266, baseType: !1331, size: 64, offset: 1536)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1871, file: !218, line: 106, baseType: !1897, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1886, line: 210, size: 256, elements: !1900)
!1900 = !{!1901, !1905, !1907, !1908}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1899, file: !1886, line: 211, baseType: !1902, size: 72)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 72, elements: !1903)
!1903 = !{!1904}
!1904 = !DISubrange(count: 9)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1899, file: !1886, line: 212, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1886, line: 14, baseType: !281)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1899, file: !1886, line: 213, baseType: !642, size: 32, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1899, file: !1886, line: 214, baseType: !642, size: 32, offset: 224)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1871, file: !218, line: 108, baseType: !1830, size: 64, offset: 448)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1871, file: !218, line: 109, baseType: !1821, size: 64, offset: 512)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1871, file: !218, line: 110, baseType: !1830, size: 64, offset: 576)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1871, file: !218, line: 111, baseType: !1821, size: 64, offset: 640)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1871, file: !218, line: 112, baseType: !1914, size: 64, offset: 704)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!33, !305, !1917}
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !231, line: 52, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !231, line: 50, size: 32, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1918, file: !231, line: 51, baseType: !33, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1871, file: !218, line: 113, baseType: !1830, size: 64, offset: 768)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1871, file: !218, line: 114, baseType: !422, size: 64, offset: 832)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1871, file: !218, line: 115, baseType: !422, size: 64, offset: 896)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1871, file: !218, line: 117, baseType: !1825, size: 64, offset: 960)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1871, file: !218, line: 118, baseType: !1821, size: 64, offset: 1024)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1871, file: !218, line: 120, baseType: !1927, size: 64, offset: 1088)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !218, line: 120, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1857, file: !1858, line: 91, baseType: !1812, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1857, file: !1858, line: 92, baseType: !1830, size: 64, offset: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1857, file: !1858, line: 93, baseType: !1821, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1857, file: !1858, line: 94, baseType: !1830, size: 64, offset: 640)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1857, file: !1858, line: 95, baseType: !1821, size: 64, offset: 704)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1857, file: !1858, line: 97, baseType: !1830, size: 64, offset: 768)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1857, file: !1858, line: 98, baseType: !1830, size: 64, offset: 832)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1857, file: !1858, line: 100, baseType: !1914, size: 64, offset: 896)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1857, file: !1858, line: 101, baseType: !1830, size: 64, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1857, file: !1858, line: 103, baseType: !1830, size: 64, offset: 1024)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1857, file: !1858, line: 105, baseType: !1830, size: 64, offset: 1088)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1857, file: !1858, line: 107, baseType: !1825, size: 64, offset: 1152)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1857, file: !1858, line: 109, baseType: !1942, size: 64, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1944)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1858, line: 109, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1857, file: !1858, line: 111, baseType: !1946, size: 64, offset: 1280)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1858, line: 111, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1857, file: !1858, line: 112, baseType: !1949, offset: 1344)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1950, line: 187, elements: !343)
!1950 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1857, file: !1858, line: 114, baseType: !288, size: 8, offset: 1344)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !306, file: !224, line: 471, baseType: !1870, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !306, file: !224, line: 473, baseType: !286, size: 64, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !306, file: !224, line: 475, baseType: !286, size: 64, offset: 960)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !306, file: !224, line: 480, baseType: !586, size: 192, offset: 1024)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !306, file: !224, line: 484, baseType: !1957, size: 576, offset: 1216)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !224, line: 361, size: 576, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1957, file: !224, line: 362, baseType: !316, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1957, file: !224, line: 363, baseType: !316, size: 128, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1957, file: !224, line: 364, baseType: !316, size: 128, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1957, file: !224, line: 365, baseType: !316, size: 128, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1957, file: !224, line: 366, baseType: !288, size: 8, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1957, file: !224, line: 367, baseType: !223, size: 32, offset: 544)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !306, file: !224, line: 485, baseType: !1966, size: 2304, offset: 1792)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !231, line: 565, size: 2304, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2063, !2067}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1966, file: !231, line: 566, baseType: !1917, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1966, file: !231, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1966, file: !231, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1966, file: !231, line: 569, baseType: !288, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1966, file: !231, line: 570, baseType: !288, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1966, file: !231, line: 571, baseType: !288, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1966, file: !231, line: 572, baseType: !288, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1966, file: !231, line: 573, baseType: !288, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1966, file: !231, line: 574, baseType: !288, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1966, file: !231, line: 575, baseType: !288, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1966, file: !231, line: 576, baseType: !288, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1966, file: !231, line: 577, baseType: !641, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1966, file: !231, line: 578, baseType: !329, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1966, file: !231, line: 580, baseType: !316, size: 128, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1966, file: !231, line: 581, baseType: !938, size: 192, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1966, file: !231, line: 582, baseType: !1984, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1986, line: 43, size: 1472, elements: !1987)
!1986 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1990, !1991, !1992, !1995, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1985, file: !1986, line: 44, baseType: !313, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1985, file: !1986, line: 45, baseType: !33, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1985, file: !1986, line: 46, baseType: !316, size: 128, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !1986, line: 47, baseType: !329, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1985, file: !1986, line: 48, baseType: !1993, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !231, line: 533, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1985, file: !1986, line: 49, baseType: !1996, size: 320, offset: 320)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1997, line: 11, size: 320, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001, !2006}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1996, file: !1997, line: 16, baseType: !902, size: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1996, file: !1997, line: 17, baseType: !281, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1996, file: !1997, line: 18, baseType: !2002, size: 64, offset: 192)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !1997, line: 19, baseType: !641, size: 32, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1985, file: !1986, line: 50, baseType: !281, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1985, file: !1986, line: 51, baseType: !716, size: 64, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1985, file: !1986, line: 52, baseType: !716, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1985, file: !1986, line: 53, baseType: !716, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1985, file: !1986, line: 54, baseType: !716, size: 64, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1985, file: !1986, line: 55, baseType: !716, size: 64, offset: 960)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1985, file: !1986, line: 56, baseType: !281, size: 64, offset: 1024)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1985, file: !1986, line: 57, baseType: !281, size: 64, offset: 1088)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1985, file: !1986, line: 58, baseType: !281, size: 64, offset: 1152)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1985, file: !1986, line: 59, baseType: !281, size: 64, offset: 1216)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1985, file: !1986, line: 60, baseType: !281, size: 64, offset: 1280)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1985, file: !1986, line: 61, baseType: !305, size: 64, offset: 1344)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1985, file: !1986, line: 62, baseType: !288, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1985, file: !1986, line: 63, baseType: !288, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1966, file: !231, line: 583, baseType: !288, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1966, file: !231, line: 584, baseType: !288, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1966, file: !231, line: 585, baseType: !288, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1966, file: !231, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1966, file: !231, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1966, file: !231, line: 592, baseType: !708, size: 512, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1966, file: !231, line: 593, baseType: !487, size: 64, offset: 1088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1966, file: !231, line: 594, baseType: !1538, size: 256, offset: 1152)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1966, file: !231, line: 595, baseType: !909, size: 128, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1966, file: !231, line: 596, baseType: !1993, size: 64, offset: 1536)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1966, file: !231, line: 597, baseType: !509, size: 32, offset: 1600)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1966, file: !231, line: 598, baseType: !509, size: 32, offset: 1632)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1966, file: !231, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1966, file: !231, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1966, file: !231, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1966, file: !231, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1966, file: !231, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1966, file: !231, line: 604, baseType: !288, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1966, file: !231, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1966, file: !231, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1966, file: !231, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1966, file: !231, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1966, file: !231, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1966, file: !231, line: 610, baseType: !7, size: 32, offset: 1696)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1966, file: !231, line: 611, baseType: !230, size: 32, offset: 1728)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1966, file: !231, line: 612, baseType: !238, size: 32, offset: 1760)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1966, file: !231, line: 613, baseType: !33, size: 32, offset: 1792)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1966, file: !231, line: 614, baseType: !33, size: 32, offset: 1824)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1966, file: !231, line: 615, baseType: !487, size: 64, offset: 1856)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1966, file: !231, line: 616, baseType: !487, size: 64, offset: 1920)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1966, file: !231, line: 617, baseType: !487, size: 64, offset: 1984)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1966, file: !231, line: 618, baseType: !487, size: 64, offset: 2048)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1966, file: !231, line: 620, baseType: !2054, size: 64, offset: 2112)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !231, line: 536, size: 256, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2060}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2055, file: !231, line: 537, baseType: !329)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2055, file: !231, line: 538, baseType: !7, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2055, file: !231, line: 540, baseType: !316, size: 128, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2055, file: !231, line: 543, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !231, line: 534, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1966, file: !231, line: 621, baseType: !2064, size: 64, offset: 2176)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !305, !862}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1966, file: !231, line: 622, baseType: !2068, size: 64, offset: 2240)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !231, line: 622, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !306, file: !224, line: 486, baseType: !2071, size: 64, offset: 4096)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !231, line: 642, size: 1792, elements: !2073)
!2073 = !{!2074, !2075, !2076, !2080, !2081, !2082}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2072, file: !231, line: 643, baseType: !1827, size: 1472)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2072, file: !231, line: 644, baseType: !1830, size: 64, offset: 1472)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2072, file: !231, line: 645, baseType: !2077, size: 64, offset: 1536)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !305, !288}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2072, file: !231, line: 646, baseType: !1830, size: 64, offset: 1600)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2072, file: !231, line: 647, baseType: !1821, size: 64, offset: 1664)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2072, file: !231, line: 648, baseType: !1821, size: 64, offset: 1728)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !306, file: !224, line: 493, baseType: !2084, size: 64, offset: 4160)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !245, line: 162, size: 1088, elements: !2086)
!2086 = !{!2087, !2088, !2089, !2263, !2264, !2265, !2266, !2267, !2268, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2085, file: !245, line: 163, baseType: !316, size: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2085, file: !245, line: 164, baseType: !313, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2085, file: !245, line: 165, baseType: !2090, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !245, line: 105, size: 640, elements: !2093)
!2093 = !{!2094, !2212, !2223, !2228, !2232, !2240, !2244, !2248, !2255, !2259}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2092, file: !245, line: 106, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!33, !2084, !2098, !244}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2100, line: 51, size: 1344, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2101 = !{!2102, !2103, !2105, !2106, !2196, !2205, !2206, !2207, !2208, !2209, !2210, !2211}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2099, file: !2100, line: 52, baseType: !313, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2099, file: !2100, line: 53, baseType: !2104, size: 32, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2100, line: 28, baseType: !641)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2099, file: !2100, line: 54, baseType: !313, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2099, file: !2100, line: 55, baseType: !2107, size: 192, offset: 192)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2108, line: 17, size: 192, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2112, !2195}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2107, file: !2108, line: 18, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2107, file: !2108, line: 19, baseType: !2113, size: 64, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2108, line: 110, size: 1152, elements: !2116)
!2116 = !{!2117, !2121, !2125, !2131, !2137, !2141, !2145, !2150, !2154, !2155, !2159, !2163, !2167, !2178, !2179, !2180, !2181, !2191}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2115, file: !2108, line: 111, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!2111, !2111}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2115, file: !2108, line: 112, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{null, !2111}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2115, file: !2108, line: 113, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!288, !2129}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2107)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2115, file: !2108, line: 114, baseType: !2132, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!1331, !2129, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2115, file: !2108, line: 116, baseType: !2138, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!288, !2129, !313}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2115, file: !2108, line: 118, baseType: !2142, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!33, !2129, !313, !7, !286, !416}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2115, file: !2108, line: 123, baseType: !2146, size: 64, offset: 384)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!33, !2129, !313, !2149, !416}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2115, file: !2108, line: 126, baseType: !2151, size: 64, offset: 448)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!313, !2129}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2115, file: !2108, line: 127, baseType: !2151, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2115, file: !2108, line: 128, baseType: !2156, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!2111, !2129}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2115, file: !2108, line: 130, baseType: !2160, size: 64, offset: 640)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!2111, !2129, !2111}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2115, file: !2108, line: 133, baseType: !2164, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!2111, !2129, !313}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2115, file: !2108, line: 135, baseType: !2168, size: 64, offset: 768)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!33, !2129, !313, !313, !7, !7, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2108, line: 43, size: 640, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2172, file: !2108, line: 44, baseType: !2111, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2172, file: !2108, line: 45, baseType: !7, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2172, file: !2108, line: 46, baseType: !2177, size: 512, offset: 128)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 512, elements: !746)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2115, file: !2108, line: 140, baseType: !2160, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2115, file: !2108, line: 143, baseType: !2156, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2115, file: !2108, line: 145, baseType: !2118, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2115, file: !2108, line: 146, baseType: !2182, size: 64, offset: 1024)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!33, !2129, !2185}
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2108, line: 29, size: 128, elements: !2187)
!2187 = !{!2188, !2189, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2186, file: !2108, line: 30, baseType: !7, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2186, file: !2108, line: 31, baseType: !7, size: 32, offset: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2186, file: !2108, line: 32, baseType: !2129, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2115, file: !2108, line: 148, baseType: !2192, size: 64, offset: 1088)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!33, !2129, !305}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2107, file: !2108, line: 20, baseType: !305, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2099, file: !2100, line: 57, baseType: !2197, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2100, line: 31, size: 704, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2198, file: !2100, line: 32, baseType: !370, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2198, file: !2100, line: 33, baseType: !33, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2198, file: !2100, line: 34, baseType: !286, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2198, file: !2100, line: 35, baseType: !2197, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2198, file: !2100, line: 43, baseType: !437, size: 448, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2099, file: !2100, line: 58, baseType: !2197, size: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2099, file: !2100, line: 59, baseType: !2098, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2099, file: !2100, line: 60, baseType: !2098, size: 64, offset: 576)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2099, file: !2100, line: 61, baseType: !2098, size: 64, offset: 640)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2099, file: !2100, line: 63, baseType: !309, size: 512, offset: 704)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2099, file: !2100, line: 65, baseType: !281, size: 64, offset: 1216)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2099, file: !2100, line: 66, baseType: !286, size: 64, offset: 1280)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2092, file: !245, line: 108, baseType: !2213, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!33, !2084, !2216, !244}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !245, line: 63, size: 640, elements: !2218)
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2217, file: !245, line: 64, baseType: !2111, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2217, file: !245, line: 65, baseType: !33, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2217, file: !245, line: 66, baseType: !2222, size: 512, offset: 96)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 512, elements: !994)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2092, file: !245, line: 110, baseType: !2224, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!33, !2084, !7, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !289, line: 164, baseType: !281)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2092, file: !245, line: 111, baseType: !2229, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !2084, !7}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2092, file: !245, line: 112, baseType: !2233, size: 64, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!33, !2084, !2098, !2236, !7, !2238, !2239}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2092, file: !245, line: 117, baseType: !2241, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!33, !2084, !7, !7, !286}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2092, file: !245, line: 119, baseType: !2245, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2084, !7, !7}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2092, file: !245, line: 121, baseType: !2249, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!33, !2084, !2252, !288}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2254, line: 11, flags: DIFlagFwdDecl)
!2254 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2092, file: !245, line: 122, baseType: !2256, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2084, !2252}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2092, file: !245, line: 123, baseType: !2260, size: 64, offset: 576)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!33, !2084, !2216, !2238, !2239}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2085, file: !245, line: 166, baseType: !286, size: 64, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !245, line: 167, baseType: !7, size: 32, offset: 320)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2085, file: !245, line: 168, baseType: !7, size: 32, offset: 352)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2085, file: !245, line: 171, baseType: !2111, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2085, file: !245, line: 172, baseType: !244, size: 32, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2085, file: !245, line: 173, baseType: !2269, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !245, line: 134, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2085, file: !245, line: 175, baseType: !2084, size: 64, offset: 576)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2085, file: !245, line: 182, baseType: !2227, size: 64, offset: 640)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2085, file: !245, line: 183, baseType: !7, size: 32, offset: 704)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2085, file: !245, line: 184, baseType: !7, size: 32, offset: 736)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2085, file: !245, line: 185, baseType: !1667, size: 128, offset: 768)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2085, file: !245, line: 186, baseType: !586, size: 192, offset: 896)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2085, file: !245, line: 187, baseType: !2278, offset: 1088)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1552)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !306, file: !224, line: 499, baseType: !316, size: 128, offset: 4224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !306, file: !224, line: 502, baseType: !2281, size: 64, offset: 4352)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2283)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !224, line: 502, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !306, file: !224, line: 504, baseType: !2285, size: 64, offset: 4416)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !306, file: !224, line: 505, baseType: !487, size: 64, offset: 4480)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !306, file: !224, line: 510, baseType: !487, size: 64, offset: 4544)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !306, file: !224, line: 511, baseType: !2289, size: 64, offset: 4608)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2291)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !224, line: 511, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !306, file: !224, line: 513, baseType: !2293, size: 64, offset: 4672)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !224, line: 288, size: 128, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2294, file: !224, line: 293, baseType: !7, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2294, file: !224, line: 294, baseType: !281, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !306, file: !224, line: 515, baseType: !316, size: 128, offset: 4736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !306, file: !224, line: 526, baseType: !2300, offset: 4864)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2301, line: 5, elements: !343)
!2301 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !306, file: !224, line: 528, baseType: !2098, size: 64, offset: 4864)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !306, file: !224, line: 529, baseType: !2111, size: 64, offset: 4928)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !306, file: !224, line: 534, baseType: !2305, size: 32, offset: 4992)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !289, line: 16, baseType: !2306)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !289, line: 13, baseType: !641)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !306, file: !224, line: 535, baseType: !641, size: 32, offset: 5024)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !306, file: !224, line: 537, baseType: !329, offset: 5056)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !306, file: !224, line: 538, baseType: !316, size: 128, offset: 5056)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !306, file: !224, line: 540, baseType: !2311, size: 64, offset: 5184)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2313, line: 54, size: 960, elements: !2314)
!2313 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2325, !2329, !2330, !2331, !2332, !2336, !2340, !2341}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2312, file: !2313, line: 55, baseType: !313, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2312, file: !2313, line: 56, baseType: !1876, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2312, file: !2313, line: 58, baseType: !422, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2312, file: !2313, line: 59, baseType: !422, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2312, file: !2313, line: 60, baseType: !322, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2312, file: !2313, line: 62, baseType: !1812, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2312, file: !2313, line: 63, baseType: !2322, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!370, !305, !1819}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2312, file: !2313, line: 65, baseType: !2326, size: 64, offset: 448)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2311}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2312, file: !2313, line: 66, baseType: !1821, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2312, file: !2313, line: 68, baseType: !1830, size: 64, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2312, file: !2313, line: 70, baseType: !1587, size: 64, offset: 640)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2312, file: !2313, line: 71, baseType: !2333, size: 64, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!1331, !305}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2312, file: !2313, line: 73, baseType: !2337, size: 64, offset: 768)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !305, !1622, !1629}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2312, file: !2313, line: 75, baseType: !1825, size: 64, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2312, file: !2313, line: 77, baseType: !1946, size: 64, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !306, file: !224, line: 541, baseType: !422, size: 64, offset: 5248)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !224, line: 543, baseType: !1821, size: 64, offset: 5312)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !306, file: !224, line: 544, baseType: !2345, size: 64, offset: 5376)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !224, line: 45, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !306, file: !224, line: 545, baseType: !2348, size: 64, offset: 5440)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !224, line: 47, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !306, file: !224, line: 547, baseType: !288, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !306, file: !224, line: 548, baseType: !288, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !306, file: !224, line: 549, baseType: !288, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !306, file: !224, line: 550, baseType: !288, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2355 = !{!2356, !0, !2358, !2360, !2370, !2372, !2375, !2377, !2391, !2393, !2395, !2397, !2399, !2401, !2403, !2405, !2407, !2409, !2411, !2413, !2418, !2421, !2423}
!2356 = !DIGlobalVariableExpression(var: !2357, expr: !DIExpression())
!2357 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cacheinfo_sysfs_init169", scope: !2, file: !3, line: 674, type: !286, isLocal: true, isDefinition: true)
!2358 = !DIGlobalVariableExpression(var: !2359, expr: !DIExpression())
!2359 = distinct !DIGlobalVariable(name: "coherency_max_size", scope: !2, file: !3, line: 216, type: !7, isLocal: false, isDefinition: true)
!2360 = !DIGlobalVariableExpression(var: !2361, expr: !DIExpression())
!2361 = distinct !DIGlobalVariable(name: "cache_type_info", scope: !2, file: !3, line: 48, type: !2362, isLocal: true, isDefinition: true)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, size: 768, elements: !371)
!2363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_type_info", file: !3, line: 42, size: 256, elements: !2365)
!2365 = !{!2366, !2367, !2369}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "size_prop", scope: !2364, file: !3, line: 43, baseType: !313, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "line_size_props", scope: !2364, file: !3, line: 44, baseType: !2368, size: 128, offset: 64)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 128, elements: !1174)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sets_prop", scope: !2364, file: !3, line: 45, baseType: !313, size: 64, offset: 192)
!2370 = !DIGlobalVariableExpression(var: !2371, expr: !DIExpression())
!2371 = distinct !DIGlobalVariable(name: "ci_cache_dev", scope: !2, file: !3, line: 350, type: !305, isLocal: true, isDefinition: true)
!2372 = !DIGlobalVariableExpression(var: !2373, expr: !DIExpression())
!2373 = distinct !DIGlobalVariable(name: "cache_default_groups", scope: !2, file: !3, line: 534, type: !2374, isLocal: true, isDefinition: true)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 128, elements: !1174)
!2375 = !DIGlobalVariableExpression(var: !2376, expr: !DIExpression())
!2376 = distinct !DIGlobalVariable(name: "cache_default_group", scope: !2, file: !3, line: 529, type: !424, isLocal: true, isDefinition: true)
!2377 = !DIGlobalVariableExpression(var: !2378, expr: !DIExpression())
!2378 = distinct !DIGlobalVariable(name: "dev_attr_id", scope: !2, file: !3, line: 457, type: !2379, isLocal: true, isDefinition: true)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !224, line: 99, size: 256, elements: !2380)
!2380 = !{!2381, !2382, !2387}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2379, file: !224, line: 100, baseType: !406, size: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2379, file: !224, line: 101, baseType: !2383, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!401, !305, !2386, !370}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2379, file: !224, line: 103, baseType: !2388, size: 64, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!401, !305, !2386, !313, !416}
!2391 = !DIGlobalVariableExpression(var: !2392, expr: !DIExpression())
!2392 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 459, type: !2379, isLocal: true, isDefinition: true)
!2393 = !DIGlobalVariableExpression(var: !2394, expr: !DIExpression())
!2394 = distinct !DIGlobalVariable(name: "dev_attr_level", scope: !2, file: !3, line: 458, type: !2379, isLocal: true, isDefinition: true)
!2395 = !DIGlobalVariableExpression(var: !2396, expr: !DIExpression())
!2396 = distinct !DIGlobalVariable(name: "dev_attr_shared_cpu_map", scope: !2, file: !3, line: 466, type: !2379, isLocal: true, isDefinition: true)
!2397 = !DIGlobalVariableExpression(var: !2398, expr: !DIExpression())
!2398 = distinct !DIGlobalVariable(name: "dev_attr_shared_cpu_list", scope: !2, file: !3, line: 467, type: !2379, isLocal: true, isDefinition: true)
!2399 = !DIGlobalVariableExpression(var: !2400, expr: !DIExpression())
!2400 = distinct !DIGlobalVariable(name: "dev_attr_coherency_line_size", scope: !2, file: !3, line: 460, type: !2379, isLocal: true, isDefinition: true)
!2401 = !DIGlobalVariableExpression(var: !2402, expr: !DIExpression())
!2402 = distinct !DIGlobalVariable(name: "dev_attr_ways_of_associativity", scope: !2, file: !3, line: 461, type: !2379, isLocal: true, isDefinition: true)
!2403 = !DIGlobalVariableExpression(var: !2404, expr: !DIExpression())
!2404 = distinct !DIGlobalVariable(name: "dev_attr_number_of_sets", scope: !2, file: !3, line: 462, type: !2379, isLocal: true, isDefinition: true)
!2405 = !DIGlobalVariableExpression(var: !2406, expr: !DIExpression())
!2406 = distinct !DIGlobalVariable(name: "dev_attr_size", scope: !2, file: !3, line: 463, type: !2379, isLocal: true, isDefinition: true)
!2407 = !DIGlobalVariableExpression(var: !2408, expr: !DIExpression())
!2408 = distinct !DIGlobalVariable(name: "dev_attr_write_policy", scope: !2, file: !3, line: 465, type: !2379, isLocal: true, isDefinition: true)
!2409 = !DIGlobalVariableExpression(var: !2410, expr: !DIExpression())
!2410 = distinct !DIGlobalVariable(name: "dev_attr_allocation_policy", scope: !2, file: !3, line: 464, type: !2379, isLocal: true, isDefinition: true)
!2411 = !DIGlobalVariableExpression(var: !2412, expr: !DIExpression())
!2412 = distinct !DIGlobalVariable(name: "dev_attr_physical_line_partition", scope: !2, file: !3, line: 468, type: !2379, isLocal: true, isDefinition: true)
!2413 = !DIGlobalVariableExpression(var: !2414, expr: !DIExpression())
!2414 = distinct !DIGlobalVariable(name: "cache_default_attrs", scope: !2, file: !3, line: 470, type: !2415, isLocal: true, isDefinition: true)
!2415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 832, elements: !2416)
!2416 = !{!2417}
!2417 = !DISubrange(count: 13)
!2418 = !DIGlobalVariableExpression(var: !2419, expr: !DIExpression())
!2419 = distinct !DIGlobalVariable(name: "cache_private_groups", scope: !2, file: !3, line: 539, type: !2420, isLocal: true, isDefinition: true)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !371)
!2421 = !DIGlobalVariableExpression(var: !2422, expr: !DIExpression())
!2422 = distinct !DIGlobalVariable(name: "ci_index_dev", scope: !2, file: !3, line: 356, type: !304, isLocal: true, isDefinition: true)
!2423 = !DIGlobalVariableExpression(var: !2424, expr: !DIExpression())
!2424 = distinct !DIGlobalVariable(name: "cache_dev_map", scope: !2, file: !3, line: 353, type: !275, isLocal: true, isDefinition: true)
!2425 = !{i32 7, !"Dwarf Version", i32 4}
!2426 = !{i32 2, !"Debug Info Version", i32 3}
!2427 = !{i32 1, !"wchar_size", i32 2}
!2428 = !{i32 1, !"Code Model", i32 2}
!2429 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2430 = distinct !DISubprogram(name: "get_cpu_cacheinfo", scope: !3, file: !3, line: 29, type: !2431, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!259, !7}
!2433 = !DILocalVariable(name: "cpu", arg: 1, scope: !2430, file: !3, line: 29, type: !7)
!2434 = !DILocation(line: 29, column: 54, scope: !2430)
!2435 = !DILocation(line: 31, column: 9, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 31, column: 9)
!2437 = !DILocation(line: 31, column: 9, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 31, column: 9)
!2439 = !DILocalVariable(name: "__vpp_verify", scope: !2440, file: !3, line: 31, type: !1331)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 31, column: 9)
!2441 = !DILocation(line: 31, column: 9, scope: !2440)
!2442 = !DILocation(line: 31, column: 2, scope: !2430)
!2443 = distinct !DISubprogram(name: "cache_setup_acpi", scope: !3, file: !3, line: 211, type: !2444, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!33, !7}
!2446 = !DILocalVariable(name: "cpu", arg: 1, scope: !2443, file: !3, line: 211, type: !7)
!2447 = !DILocation(line: 211, column: 42, scope: !2443)
!2448 = !DILocation(line: 213, column: 2, scope: !2443)
!2449 = distinct !DISubprogram(name: "init_cache_level", scope: !3, file: !3, line: 302, type: !2444, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2450 = !DILocalVariable(name: "cpu", arg: 1, scope: !2449, file: !3, line: 302, type: !7)
!2451 = !DILocation(line: 302, column: 42, scope: !2449)
!2452 = !DILocation(line: 304, column: 2, scope: !2449)
!2453 = distinct !DISubprogram(name: "populate_cache_leaves", scope: !3, file: !3, line: 307, type: !2444, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2454 = !DILocalVariable(name: "cpu", arg: 1, scope: !2453, file: !3, line: 307, type: !7)
!2455 = !DILocation(line: 307, column: 47, scope: !2453)
!2456 = !DILocation(line: 309, column: 2, scope: !2453)
!2457 = distinct !DISubprogram(name: "cache_get_priv_group", scope: !3, file: !3, line: 546, type: !2458, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!423, !263}
!2460 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !2457, file: !3, line: 546, type: !263)
!2461 = !DILocation(line: 546, column: 47, scope: !2457)
!2462 = !DILocation(line: 548, column: 2, scope: !2457)
!2463 = distinct !DISubprogram(name: "cacheinfo_sysfs_init", scope: !3, file: !3, line: 668, type: !2464, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!33}
!2466 = !DILocation(line: 670, column: 9, scope: !2463)
!2467 = !DILocation(line: 670, column: 2, scope: !2463)
!2468 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !32, file: !32, line: 218, type: !2469, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!33, !31, !313, !2471, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2472 = !DILocalVariable(name: "state", arg: 1, scope: !2468, file: !32, line: 218, type: !31)
!2473 = !DILocation(line: 218, column: 54, scope: !2468)
!2474 = !DILocalVariable(name: "name", arg: 2, scope: !2468, file: !32, line: 219, type: !313)
!2475 = !DILocation(line: 219, column: 21, scope: !2468)
!2476 = !DILocalVariable(name: "startup", arg: 3, scope: !2468, file: !32, line: 220, type: !2471)
!2477 = !DILocation(line: 220, column: 15, scope: !2468)
!2478 = !DILocalVariable(name: "teardown", arg: 4, scope: !2468, file: !32, line: 221, type: !2471)
!2479 = !DILocation(line: 221, column: 15, scope: !2468)
!2480 = !DILocation(line: 223, column: 29, scope: !2468)
!2481 = !DILocation(line: 223, column: 36, scope: !2468)
!2482 = !DILocation(line: 223, column: 48, scope: !2468)
!2483 = !DILocation(line: 223, column: 57, scope: !2468)
!2484 = !DILocation(line: 223, column: 9, scope: !2468)
!2485 = !DILocation(line: 223, column: 2, scope: !2468)
!2486 = distinct !DISubprogram(name: "cacheinfo_cpu_online", scope: !3, file: !3, line: 647, type: !2444, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2487 = !DILocalVariable(name: "cpu", arg: 1, scope: !2486, file: !3, line: 647, type: !7)
!2488 = !DILocation(line: 647, column: 46, scope: !2486)
!2489 = !DILocalVariable(name: "rc", scope: !2486, file: !3, line: 649, type: !33)
!2490 = !DILocation(line: 649, column: 6, scope: !2486)
!2491 = !DILocation(line: 649, column: 35, scope: !2486)
!2492 = !DILocation(line: 649, column: 11, scope: !2486)
!2493 = !DILocation(line: 651, column: 6, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 651, column: 6)
!2495 = !DILocation(line: 651, column: 6, scope: !2486)
!2496 = !DILocation(line: 652, column: 10, scope: !2494)
!2497 = !DILocation(line: 652, column: 3, scope: !2494)
!2498 = !DILocation(line: 653, column: 21, scope: !2486)
!2499 = !DILocation(line: 653, column: 7, scope: !2486)
!2500 = !DILocation(line: 653, column: 5, scope: !2486)
!2501 = !DILocation(line: 654, column: 6, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 654, column: 6)
!2503 = !DILocation(line: 654, column: 6, scope: !2486)
!2504 = !DILocation(line: 655, column: 25, scope: !2502)
!2505 = !DILocation(line: 655, column: 3, scope: !2502)
!2506 = !DILocation(line: 656, column: 9, scope: !2486)
!2507 = !DILocation(line: 656, column: 2, scope: !2486)
!2508 = !DILocation(line: 657, column: 1, scope: !2486)
!2509 = distinct !DISubprogram(name: "cacheinfo_cpu_pre_down", scope: !3, file: !3, line: 659, type: !2444, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2510 = !DILocalVariable(name: "cpu", arg: 1, scope: !2509, file: !3, line: 659, type: !7)
!2511 = !DILocation(line: 659, column: 48, scope: !2509)
!2512 = !DILocation(line: 661, column: 33, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 661, column: 6)
!2514 = !DILocation(line: 661, column: 6, scope: !2513)
!2515 = !DILocation(line: 661, column: 6, scope: !2509)
!2516 = !DILocation(line: 662, column: 24, scope: !2513)
!2517 = !DILocation(line: 662, column: 3, scope: !2513)
!2518 = !DILocation(line: 664, column: 24, scope: !2509)
!2519 = !DILocation(line: 664, column: 2, scope: !2509)
!2520 = !DILocation(line: 665, column: 2, scope: !2509)
!2521 = distinct !DISubprogram(name: "detect_cache_attributes", scope: !3, file: !3, line: 312, type: !2444, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2522 = !DILocalVariable(name: "cpu", arg: 1, scope: !2521, file: !3, line: 312, type: !7)
!2523 = !DILocation(line: 312, column: 49, scope: !2521)
!2524 = !DILocalVariable(name: "ret", scope: !2521, file: !3, line: 314, type: !33)
!2525 = !DILocation(line: 314, column: 6, scope: !2521)
!2526 = !DILocation(line: 316, column: 23, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 316, column: 6)
!2528 = !DILocation(line: 316, column: 6, scope: !2527)
!2529 = !DILocation(line: 316, column: 28, scope: !2527)
!2530 = !DILocation(line: 316, column: 32, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 316, column: 32)
!2532 = !DILocation(line: 316, column: 32, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 316, column: 32)
!2534 = !DILocalVariable(name: "__vpp_verify", scope: !2535, file: !3, line: 316, type: !1331)
!2535 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 316, column: 32)
!2536 = !DILocation(line: 316, column: 32, scope: !2535)
!2537 = !DILocation(line: 316, column: 32, scope: !2527)
!2538 = !DILocation(line: 316, column: 6, scope: !2521)
!2539 = !DILocation(line: 317, column: 3, scope: !2527)
!2540 = !DILocation(line: 319, column: 35, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 319, column: 35)
!2542 = !DILocation(line: 319, column: 35, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 319, column: 35)
!2544 = !DILocalVariable(name: "__vpp_verify", scope: !2545, file: !3, line: 319, type: !1331)
!2545 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 319, column: 35)
!2546 = !DILocation(line: 319, column: 35, scope: !2545)
!2547 = !DILocation(line: 319, column: 35, scope: !2521)
!2548 = !DILocation(line: 319, column: 27, scope: !2521)
!2549 = !DILocation(line: 319, column: 2, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 319, column: 2)
!2551 = !DILocation(line: 319, column: 2, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 319, column: 2)
!2553 = !DILocalVariable(name: "__vpp_verify", scope: !2554, file: !3, line: 319, type: !1331)
!2554 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 319, column: 2)
!2555 = !DILocation(line: 319, column: 2, scope: !2554)
!2556 = !DILocation(line: 319, column: 2, scope: !2521)
!2557 = !DILocation(line: 319, column: 25, scope: !2521)
!2558 = !DILocation(line: 321, column: 6, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 321, column: 6)
!2560 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 321, column: 6)
!2561 = !DILocation(line: 321, column: 6, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 321, column: 6)
!2563 = !DILocalVariable(name: "__vpp_verify", scope: !2564, file: !3, line: 321, type: !1331)
!2564 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 321, column: 6)
!2565 = !DILocation(line: 321, column: 6, scope: !2564)
!2566 = !DILocation(line: 321, column: 6, scope: !2560)
!2567 = !DILocation(line: 321, column: 29, scope: !2560)
!2568 = !DILocation(line: 321, column: 6, scope: !2521)
!2569 = !DILocation(line: 322, column: 3, scope: !2560)
!2570 = !DILocation(line: 328, column: 30, scope: !2521)
!2571 = !DILocation(line: 328, column: 8, scope: !2521)
!2572 = !DILocation(line: 328, column: 6, scope: !2521)
!2573 = !DILocation(line: 329, column: 6, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 329, column: 6)
!2575 = !DILocation(line: 329, column: 6, scope: !2521)
!2576 = !DILocation(line: 330, column: 3, scope: !2574)
!2577 = !DILocation(line: 336, column: 35, scope: !2521)
!2578 = !DILocation(line: 336, column: 8, scope: !2521)
!2579 = !DILocation(line: 336, column: 6, scope: !2521)
!2580 = !DILocation(line: 337, column: 6, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 337, column: 6)
!2582 = !DILocation(line: 337, column: 6, scope: !2521)
!2583 = !DILocation(line: 338, column: 3, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 337, column: 11)
!2585 = !DILocation(line: 339, column: 3, scope: !2584)
!2586 = !DILocation(line: 342, column: 2, scope: !2521)
!2587 = !DILabel(scope: !2521, name: "free_ci", file: !3, line: 344)
!2588 = !DILocation(line: 344, column: 1, scope: !2521)
!2589 = !DILocation(line: 345, column: 24, scope: !2521)
!2590 = !DILocation(line: 345, column: 2, scope: !2521)
!2591 = !DILocation(line: 346, column: 9, scope: !2521)
!2592 = !DILocation(line: 346, column: 2, scope: !2521)
!2593 = !DILocation(line: 347, column: 1, scope: !2521)
!2594 = distinct !DISubprogram(name: "cache_add_dev", scope: !3, file: !3, line: 610, type: !2444, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2595 = !DILocalVariable(name: "cpu", arg: 1, scope: !2594, file: !3, line: 610, type: !7)
!2596 = !DILocation(line: 610, column: 39, scope: !2594)
!2597 = !DILocalVariable(name: "i", scope: !2594, file: !3, line: 612, type: !7)
!2598 = !DILocation(line: 612, column: 15, scope: !2594)
!2599 = !DILocalVariable(name: "rc", scope: !2594, file: !3, line: 613, type: !33)
!2600 = !DILocation(line: 613, column: 6, scope: !2594)
!2601 = !DILocalVariable(name: "ci_dev", scope: !2594, file: !3, line: 614, type: !305)
!2602 = !DILocation(line: 614, column: 17, scope: !2594)
!2603 = !DILocalVariable(name: "parent", scope: !2594, file: !3, line: 614, type: !305)
!2604 = !DILocation(line: 614, column: 26, scope: !2594)
!2605 = !DILocalVariable(name: "this_leaf", scope: !2594, file: !3, line: 615, type: !263)
!2606 = !DILocation(line: 615, column: 20, scope: !2594)
!2607 = !DILocalVariable(name: "this_cpu_ci", scope: !2594, file: !3, line: 616, type: !259)
!2608 = !DILocation(line: 616, column: 24, scope: !2594)
!2609 = !DILocation(line: 616, column: 56, scope: !2594)
!2610 = !DILocation(line: 616, column: 38, scope: !2594)
!2611 = !DILocalVariable(name: "cache_groups", scope: !2594, file: !3, line: 617, type: !422)
!2612 = !DILocation(line: 617, column: 33, scope: !2594)
!2613 = !DILocation(line: 619, column: 28, scope: !2594)
!2614 = !DILocation(line: 619, column: 7, scope: !2594)
!2615 = !DILocation(line: 619, column: 5, scope: !2594)
!2616 = !DILocation(line: 620, column: 6, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 620, column: 6)
!2618 = !DILocation(line: 620, column: 6, scope: !2594)
!2619 = !DILocation(line: 621, column: 10, scope: !2617)
!2620 = !DILocation(line: 621, column: 3, scope: !2617)
!2621 = !DILocation(line: 623, column: 11, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 623, column: 11)
!2623 = !DILocation(line: 623, column: 11, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 623, column: 11)
!2625 = !DILocalVariable(name: "__vpp_verify", scope: !2626, file: !3, line: 623, type: !1331)
!2626 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 623, column: 11)
!2627 = !DILocation(line: 623, column: 11, scope: !2626)
!2628 = !DILocation(line: 623, column: 11, scope: !2594)
!2629 = !DILocation(line: 623, column: 9, scope: !2594)
!2630 = !DILocation(line: 624, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 624, column: 2)
!2632 = !DILocation(line: 624, column: 7, scope: !2631)
!2633 = !DILocation(line: 624, column: 14, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 624, column: 2)
!2635 = !DILocation(line: 624, column: 18, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 624, column: 18)
!2637 = !DILocation(line: 624, column: 18, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 624, column: 18)
!2639 = !DILocalVariable(name: "__vpp_verify", scope: !2640, file: !3, line: 624, type: !1331)
!2640 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 624, column: 18)
!2641 = !DILocation(line: 624, column: 18, scope: !2640)
!2642 = !DILocation(line: 624, column: 18, scope: !2634)
!2643 = !DILocation(line: 624, column: 16, scope: !2634)
!2644 = !DILocation(line: 624, column: 2, scope: !2631)
!2645 = !DILocation(line: 625, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 624, column: 42)
!2647 = !DILocation(line: 625, column: 28, scope: !2646)
!2648 = !DILocation(line: 625, column: 40, scope: !2646)
!2649 = !DILocation(line: 625, column: 38, scope: !2646)
!2650 = !DILocation(line: 625, column: 13, scope: !2646)
!2651 = !DILocation(line: 626, column: 7, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 626, column: 7)
!2653 = !DILocation(line: 626, column: 18, scope: !2652)
!2654 = !DILocation(line: 626, column: 7, scope: !2646)
!2655 = !DILocation(line: 627, column: 4, scope: !2652)
!2656 = !DILocation(line: 628, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 628, column: 7)
!2658 = !DILocation(line: 628, column: 18, scope: !2657)
!2659 = !DILocation(line: 628, column: 23, scope: !2657)
!2660 = !DILocation(line: 628, column: 7, scope: !2646)
!2661 = !DILocation(line: 629, column: 4, scope: !2657)
!2662 = !DILocation(line: 630, column: 45, scope: !2646)
!2663 = !DILocation(line: 630, column: 18, scope: !2646)
!2664 = !DILocation(line: 630, column: 16, scope: !2646)
!2665 = !DILocation(line: 631, column: 30, scope: !2646)
!2666 = !DILocation(line: 631, column: 38, scope: !2646)
!2667 = !DILocation(line: 631, column: 49, scope: !2646)
!2668 = !DILocation(line: 632, column: 21, scope: !2646)
!2669 = !DILocation(line: 631, column: 12, scope: !2646)
!2670 = !DILocation(line: 631, column: 10, scope: !2646)
!2671 = !DILocation(line: 633, column: 14, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 633, column: 7)
!2673 = !DILocation(line: 633, column: 7, scope: !2672)
!2674 = !DILocation(line: 633, column: 7, scope: !2646)
!2675 = !DILocation(line: 634, column: 17, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 633, column: 23)
!2677 = !DILocation(line: 634, column: 9, scope: !2676)
!2678 = !DILocation(line: 634, column: 7, scope: !2676)
!2679 = !DILocation(line: 635, column: 4, scope: !2676)
!2680 = !DILocation(line: 637, column: 33, scope: !2646)
!2681 = !DILocation(line: 637, column: 3, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 637, column: 3)
!2683 = !DILocation(line: 637, column: 3, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 637, column: 3)
!2685 = !DILocalVariable(name: "__vpp_verify", scope: !2686, file: !3, line: 637, type: !1331)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 637, column: 3)
!2687 = !DILocation(line: 637, column: 3, scope: !2686)
!2688 = !DILocation(line: 637, column: 3, scope: !2646)
!2689 = !DILocation(line: 637, column: 31, scope: !2646)
!2690 = !DILocation(line: 638, column: 2, scope: !2646)
!2691 = !DILocation(line: 624, column: 38, scope: !2634)
!2692 = !DILocation(line: 624, column: 2, scope: !2634)
!2693 = distinct !{!2693, !2644, !2694}
!2694 = !DILocation(line: 638, column: 2, scope: !2631)
!2695 = !DILocation(line: 639, column: 18, scope: !2594)
!2696 = !DILocation(line: 639, column: 2, scope: !2594)
!2697 = !DILocation(line: 641, column: 2, scope: !2594)
!2698 = !DILabel(scope: !2594, name: "err", file: !3, line: 642)
!2699 = !DILocation(line: 642, column: 1, scope: !2594)
!2700 = !DILocation(line: 643, column: 23, scope: !2594)
!2701 = !DILocation(line: 643, column: 2, scope: !2594)
!2702 = !DILocation(line: 644, column: 9, scope: !2594)
!2703 = !DILocation(line: 644, column: 2, scope: !2594)
!2704 = !DILocation(line: 645, column: 1, scope: !2594)
!2705 = distinct !DISubprogram(name: "free_cache_attributes", scope: !3, file: !3, line: 291, type: !2706, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{null, !7}
!2708 = !DILocalVariable(name: "cpu", arg: 1, scope: !2705, file: !3, line: 291, type: !7)
!2709 = !DILocation(line: 291, column: 48, scope: !2705)
!2710 = !DILocation(line: 293, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 293, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 293, column: 6)
!2713 = !DILocation(line: 293, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 293, column: 7)
!2715 = !DILocalVariable(name: "__vpp_verify", scope: !2716, file: !3, line: 293, type: !1331)
!2716 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 293, column: 7)
!2717 = !DILocation(line: 293, column: 7, scope: !2716)
!2718 = !DILocation(line: 293, column: 7, scope: !2712)
!2719 = !DILocation(line: 293, column: 6, scope: !2705)
!2720 = !DILocation(line: 294, column: 3, scope: !2712)
!2721 = !DILocation(line: 296, column: 30, scope: !2705)
!2722 = !DILocation(line: 296, column: 2, scope: !2705)
!2723 = !DILocation(line: 298, column: 8, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 298, column: 8)
!2725 = !DILocation(line: 298, column: 8, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 298, column: 8)
!2727 = !DILocalVariable(name: "__vpp_verify", scope: !2728, file: !3, line: 298, type: !1331)
!2728 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 298, column: 8)
!2729 = !DILocation(line: 298, column: 8, scope: !2728)
!2730 = !DILocation(line: 298, column: 8, scope: !2705)
!2731 = !DILocation(line: 298, column: 2, scope: !2705)
!2732 = !DILocation(line: 299, column: 2, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 299, column: 2)
!2734 = !DILocation(line: 299, column: 2, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 299, column: 2)
!2736 = !DILocalVariable(name: "__vpp_verify", scope: !2737, file: !3, line: 299, type: !1331)
!2737 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 299, column: 2)
!2738 = !DILocation(line: 299, column: 2, scope: !2737)
!2739 = !DILocation(line: 299, column: 2, scope: !2705)
!2740 = !DILocation(line: 299, column: 25, scope: !2705)
!2741 = !DILocation(line: 300, column: 1, scope: !2705)
!2742 = distinct !DISubprogram(name: "kcalloc", scope: !211, file: !211, line: 601, type: !2743, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!286, !416, !416, !295}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !211, line: 601, type: !416)
!2746 = !DILocation(line: 601, column: 36, scope: !2742)
!2747 = !DILocalVariable(name: "size", arg: 2, scope: !2742, file: !211, line: 601, type: !416)
!2748 = !DILocation(line: 601, column: 46, scope: !2742)
!2749 = !DILocalVariable(name: "flags", arg: 3, scope: !2742, file: !211, line: 601, type: !295)
!2750 = !DILocation(line: 601, column: 58, scope: !2742)
!2751 = !DILocation(line: 603, column: 23, scope: !2742)
!2752 = !DILocation(line: 603, column: 26, scope: !2742)
!2753 = !DILocation(line: 603, column: 32, scope: !2742)
!2754 = !DILocation(line: 603, column: 38, scope: !2742)
!2755 = !DILocation(line: 603, column: 9, scope: !2742)
!2756 = !DILocation(line: 603, column: 2, scope: !2742)
!2757 = distinct !DISubprogram(name: "cache_shared_cpu_map_setup", scope: !3, file: !3, line: 218, type: !2444, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2758 = !DILocalVariable(name: "cpu", arg: 1, scope: !2757, file: !3, line: 218, type: !7)
!2759 = !DILocation(line: 218, column: 52, scope: !2757)
!2760 = !DILocalVariable(name: "this_cpu_ci", scope: !2757, file: !3, line: 220, type: !259)
!2761 = !DILocation(line: 220, column: 24, scope: !2757)
!2762 = !DILocation(line: 220, column: 56, scope: !2757)
!2763 = !DILocation(line: 220, column: 38, scope: !2757)
!2764 = !DILocalVariable(name: "this_leaf", scope: !2757, file: !3, line: 221, type: !263)
!2765 = !DILocation(line: 221, column: 20, scope: !2757)
!2766 = !DILocalVariable(name: "sib_leaf", scope: !2757, file: !3, line: 221, type: !263)
!2767 = !DILocation(line: 221, column: 32, scope: !2757)
!2768 = !DILocalVariable(name: "index", scope: !2757, file: !3, line: 222, type: !7)
!2769 = !DILocation(line: 222, column: 15, scope: !2757)
!2770 = !DILocalVariable(name: "ret", scope: !2757, file: !3, line: 223, type: !33)
!2771 = !DILocation(line: 223, column: 6, scope: !2757)
!2772 = !DILocation(line: 225, column: 6, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 225, column: 6)
!2774 = !DILocation(line: 225, column: 19, scope: !2773)
!2775 = !DILocation(line: 225, column: 6, scope: !2757)
!2776 = !DILocation(line: 226, column: 3, scope: !2773)
!2777 = !DILocation(line: 228, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 228, column: 6)
!2779 = !DILocation(line: 228, column: 6, scope: !2757)
!2780 = !DILocation(line: 229, column: 29, scope: !2778)
!2781 = !DILocation(line: 229, column: 9, scope: !2778)
!2782 = !DILocation(line: 229, column: 7, scope: !2778)
!2783 = !DILocation(line: 229, column: 3, scope: !2778)
!2784 = !DILocation(line: 230, column: 12, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 230, column: 11)
!2786 = !DILocation(line: 230, column: 11, scope: !2778)
!2787 = !DILocation(line: 231, column: 26, scope: !2785)
!2788 = !DILocation(line: 231, column: 9, scope: !2785)
!2789 = !DILocation(line: 231, column: 7, scope: !2785)
!2790 = !DILocation(line: 231, column: 3, scope: !2785)
!2791 = !DILocation(line: 233, column: 6, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 233, column: 6)
!2793 = !DILocation(line: 233, column: 6, scope: !2757)
!2794 = !DILocation(line: 234, column: 10, scope: !2792)
!2795 = !DILocation(line: 234, column: 3, scope: !2792)
!2796 = !DILocation(line: 236, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 236, column: 2)
!2798 = !DILocation(line: 236, column: 7, scope: !2797)
!2799 = !DILocation(line: 236, column: 18, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 236, column: 2)
!2801 = !DILocation(line: 236, column: 26, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 236, column: 26)
!2803 = !DILocation(line: 236, column: 26, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 236, column: 26)
!2805 = !DILocalVariable(name: "__vpp_verify", scope: !2806, file: !3, line: 236, type: !1331)
!2806 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 236, column: 26)
!2807 = !DILocation(line: 236, column: 26, scope: !2806)
!2808 = !DILocation(line: 236, column: 26, scope: !2800)
!2809 = !DILocation(line: 236, column: 24, scope: !2800)
!2810 = !DILocation(line: 236, column: 2, scope: !2797)
!2811 = !DILocalVariable(name: "i", scope: !2812, file: !3, line: 237, type: !7)
!2812 = distinct !DILexicalBlock(scope: !2800, file: !3, line: 236, column: 54)
!2813 = !DILocation(line: 237, column: 16, scope: !2812)
!2814 = !DILocation(line: 239, column: 15, scope: !2812)
!2815 = !DILocation(line: 239, column: 28, scope: !2812)
!2816 = !DILocation(line: 239, column: 40, scope: !2812)
!2817 = !DILocation(line: 239, column: 38, scope: !2812)
!2818 = !DILocation(line: 239, column: 13, scope: !2812)
!2819 = !DILocation(line: 241, column: 23, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 241, column: 7)
!2821 = !DILocation(line: 241, column: 34, scope: !2820)
!2822 = !DILocation(line: 241, column: 8, scope: !2820)
!2823 = !DILocation(line: 241, column: 7, scope: !2812)
!2824 = !DILocation(line: 242, column: 4, scope: !2820)
!2825 = !DILocation(line: 244, column: 19, scope: !2812)
!2826 = !DILocation(line: 244, column: 25, scope: !2812)
!2827 = !DILocation(line: 244, column: 36, scope: !2812)
!2828 = !DILocation(line: 244, column: 3, scope: !2812)
!2829 = !DILocation(line: 245, column: 3, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 245, column: 3)
!2831 = !DILocation(line: 245, column: 3, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 245, column: 3)
!2833 = !DILocalVariable(name: "sib_cpu_ci", scope: !2834, file: !3, line: 246, type: !259)
!2834 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 245, column: 26)
!2835 = !DILocation(line: 246, column: 26, scope: !2834)
!2836 = !DILocation(line: 246, column: 57, scope: !2834)
!2837 = !DILocation(line: 246, column: 39, scope: !2834)
!2838 = !DILocation(line: 248, column: 8, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 248, column: 8)
!2840 = !DILocation(line: 248, column: 13, scope: !2839)
!2841 = !DILocation(line: 248, column: 10, scope: !2839)
!2842 = !DILocation(line: 248, column: 17, scope: !2839)
!2843 = !DILocation(line: 248, column: 21, scope: !2839)
!2844 = !DILocation(line: 248, column: 33, scope: !2839)
!2845 = !DILocation(line: 248, column: 8, scope: !2834)
!2846 = !DILocation(line: 249, column: 5, scope: !2839)
!2847 = !DILocation(line: 250, column: 15, scope: !2834)
!2848 = !DILocation(line: 250, column: 27, scope: !2834)
!2849 = !DILocation(line: 250, column: 39, scope: !2834)
!2850 = !DILocation(line: 250, column: 37, scope: !2834)
!2851 = !DILocation(line: 250, column: 13, scope: !2834)
!2852 = !DILocation(line: 251, column: 32, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 251, column: 8)
!2854 = !DILocation(line: 251, column: 43, scope: !2853)
!2855 = !DILocation(line: 251, column: 8, scope: !2853)
!2856 = !DILocation(line: 251, column: 8, scope: !2834)
!2857 = !DILocation(line: 252, column: 21, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 251, column: 54)
!2859 = !DILocation(line: 252, column: 27, scope: !2858)
!2860 = !DILocation(line: 252, column: 37, scope: !2858)
!2861 = !DILocation(line: 252, column: 5, scope: !2858)
!2862 = !DILocation(line: 253, column: 21, scope: !2858)
!2863 = !DILocation(line: 253, column: 25, scope: !2858)
!2864 = !DILocation(line: 253, column: 36, scope: !2858)
!2865 = !DILocation(line: 253, column: 5, scope: !2858)
!2866 = !DILocation(line: 254, column: 4, scope: !2858)
!2867 = !DILocation(line: 255, column: 3, scope: !2834)
!2868 = distinct !{!2868, !2829, !2869}
!2869 = !DILocation(line: 255, column: 3, scope: !2830)
!2870 = !DILocation(line: 257, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 257, column: 7)
!2872 = !DILocation(line: 257, column: 18, scope: !2871)
!2873 = !DILocation(line: 257, column: 40, scope: !2871)
!2874 = !DILocation(line: 257, column: 38, scope: !2871)
!2875 = !DILocation(line: 257, column: 7, scope: !2812)
!2876 = !DILocation(line: 258, column: 25, scope: !2871)
!2877 = !DILocation(line: 258, column: 36, scope: !2871)
!2878 = !DILocation(line: 258, column: 23, scope: !2871)
!2879 = !DILocation(line: 258, column: 4, scope: !2871)
!2880 = !DILocation(line: 259, column: 2, scope: !2812)
!2881 = !DILocation(line: 236, column: 50, scope: !2800)
!2882 = !DILocation(line: 236, column: 2, scope: !2800)
!2883 = distinct !{!2883, !2810, !2884}
!2884 = !DILocation(line: 259, column: 2, scope: !2797)
!2885 = !DILocation(line: 261, column: 2, scope: !2757)
!2886 = !DILocation(line: 262, column: 1, scope: !2757)
!2887 = distinct !DISubprogram(name: "kmalloc_array", scope: !211, file: !211, line: 584, type: !2743, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2888 = !DILocalVariable(name: "s", arg: 1, scope: !2889, file: !211, line: 445, type: !1250)
!2889 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !211, file: !211, line: 445, type: !2890, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!286, !1250, !295, !416}
!2892 = !DILocation(line: 445, column: 72, scope: !2889, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 552, column: 10, scope: !2894, inlinedAt: !2899)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !211, line: 540, column: 34)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !211, line: 540, column: 6)
!2896 = distinct !DISubprogram(name: "kmalloc", scope: !211, file: !211, line: 538, type: !2897, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!286, !416, !295}
!2899 = distinct !DILocation(line: 591, column: 10, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2887, file: !211, line: 590, column: 6)
!2901 = !DILocalVariable(name: "flags", arg: 2, scope: !2889, file: !211, line: 446, type: !295)
!2902 = !DILocation(line: 446, column: 9, scope: !2889, inlinedAt: !2893)
!2903 = !DILocalVariable(name: "size", arg: 3, scope: !2889, file: !211, line: 446, type: !416)
!2904 = !DILocation(line: 446, column: 23, scope: !2889, inlinedAt: !2893)
!2905 = !DILocalVariable(name: "ret", scope: !2889, file: !211, line: 448, type: !286)
!2906 = !DILocation(line: 448, column: 8, scope: !2889, inlinedAt: !2893)
!2907 = !DILocalVariable(name: "flags", arg: 1, scope: !2908, file: !211, line: 318, type: !295)
!2908 = distinct !DISubprogram(name: "kmalloc_type", scope: !211, file: !211, line: 318, type: !2909, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!210, !295}
!2911 = !DILocation(line: 318, column: 67, scope: !2908, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 553, column: 20, scope: !2894, inlinedAt: !2899)
!2913 = !DILocalVariable(name: "size", arg: 1, scope: !2914, file: !211, line: 346, type: !416)
!2914 = distinct !DISubprogram(name: "kmalloc_index", scope: !211, file: !211, line: 346, type: !2915, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!7, !416}
!2917 = !DILocation(line: 346, column: 58, scope: !2914, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 547, column: 11, scope: !2894, inlinedAt: !2899)
!2919 = !DILocalVariable(name: "size", arg: 1, scope: !2920, file: !211, line: 472, type: !416)
!2920 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !211, file: !211, line: 472, type: !2921, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!286, !416, !295, !7}
!2923 = !DILocation(line: 472, column: 28, scope: !2920, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 481, column: 9, scope: !2925, inlinedAt: !2926)
!2925 = distinct !DISubprogram(name: "kmalloc_large", scope: !211, file: !211, line: 478, type: !2897, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!2926 = distinct !DILocation(line: 545, column: 11, scope: !2927, inlinedAt: !2899)
!2927 = distinct !DILexicalBlock(scope: !2894, file: !211, line: 544, column: 7)
!2928 = !DILocalVariable(name: "flags", arg: 2, scope: !2920, file: !211, line: 472, type: !295)
!2929 = !DILocation(line: 472, column: 40, scope: !2920, inlinedAt: !2924)
!2930 = !DILocalVariable(name: "order", arg: 3, scope: !2920, file: !211, line: 472, type: !7)
!2931 = !DILocation(line: 472, column: 60, scope: !2920, inlinedAt: !2924)
!2932 = !DILocalVariable(name: "size", arg: 1, scope: !2925, file: !211, line: 478, type: !416)
!2933 = !DILocation(line: 478, column: 51, scope: !2925, inlinedAt: !2926)
!2934 = !DILocalVariable(name: "flags", arg: 2, scope: !2925, file: !211, line: 478, type: !295)
!2935 = !DILocation(line: 478, column: 63, scope: !2925, inlinedAt: !2926)
!2936 = !DILocalVariable(name: "order", scope: !2925, file: !211, line: 480, type: !7)
!2937 = !DILocation(line: 480, column: 15, scope: !2925, inlinedAt: !2926)
!2938 = !DILocalVariable(name: "size", arg: 1, scope: !2896, file: !211, line: 538, type: !416)
!2939 = !DILocation(line: 538, column: 45, scope: !2896, inlinedAt: !2899)
!2940 = !DILocalVariable(name: "flags", arg: 2, scope: !2896, file: !211, line: 538, type: !295)
!2941 = !DILocation(line: 538, column: 57, scope: !2896, inlinedAt: !2899)
!2942 = !DILocalVariable(name: "index", scope: !2894, file: !211, line: 542, type: !7)
!2943 = !DILocation(line: 542, column: 16, scope: !2894, inlinedAt: !2899)
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2887, file: !211, line: 584, type: !416)
!2945 = !DILocation(line: 584, column: 42, scope: !2887)
!2946 = !DILocalVariable(name: "size", arg: 2, scope: !2887, file: !211, line: 584, type: !416)
!2947 = !DILocation(line: 584, column: 52, scope: !2887)
!2948 = !DILocalVariable(name: "flags", arg: 3, scope: !2887, file: !211, line: 584, type: !295)
!2949 = !DILocation(line: 584, column: 64, scope: !2887)
!2950 = !DILocalVariable(name: "bytes", scope: !2887, file: !211, line: 586, type: !416)
!2951 = !DILocation(line: 586, column: 9, scope: !2887)
!2952 = !DILocalVariable(name: "__a", scope: !2953, file: !211, line: 588, type: !416)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !211, line: 588, column: 6)
!2954 = distinct !DILexicalBlock(scope: !2887, file: !211, line: 588, column: 6)
!2955 = !DILocation(line: 588, column: 6, scope: !2953)
!2956 = !DILocalVariable(name: "__b", scope: !2953, file: !211, line: 588, type: !416)
!2957 = !DILocalVariable(name: "__d", scope: !2953, file: !211, line: 588, type: !2958)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!2959 = !DILocation(line: 588, column: 6, scope: !2954)
!2960 = !DILocation(line: 588, column: 6, scope: !2887)
!2961 = !DILocation(line: 589, column: 3, scope: !2954)
!2962 = !DILocation(line: 590, column: 27, scope: !2900)
!2963 = !DILocation(line: 590, column: 6, scope: !2900)
!2964 = !DILocation(line: 590, column: 30, scope: !2900)
!2965 = !DILocation(line: 590, column: 54, scope: !2900)
!2966 = !DILocation(line: 590, column: 33, scope: !2900)
!2967 = !DILocation(line: 590, column: 6, scope: !2887)
!2968 = !DILocation(line: 591, column: 18, scope: !2900)
!2969 = !DILocation(line: 591, column: 25, scope: !2900)
!2970 = !DILocation(line: 540, column: 27, scope: !2895, inlinedAt: !2899)
!2971 = !DILocation(line: 540, column: 6, scope: !2895, inlinedAt: !2899)
!2972 = !DILocation(line: 540, column: 6, scope: !2896, inlinedAt: !2899)
!2973 = !DILocation(line: 544, column: 7, scope: !2927, inlinedAt: !2899)
!2974 = !DILocation(line: 544, column: 12, scope: !2927, inlinedAt: !2899)
!2975 = !DILocation(line: 544, column: 7, scope: !2894, inlinedAt: !2899)
!2976 = !DILocation(line: 545, column: 25, scope: !2927, inlinedAt: !2899)
!2977 = !DILocation(line: 545, column: 31, scope: !2927, inlinedAt: !2899)
!2978 = !DILocation(line: 480, column: 33, scope: !2925, inlinedAt: !2926)
!2979 = !DILocation(line: 480, column: 23, scope: !2925, inlinedAt: !2926)
!2980 = !DILocation(line: 481, column: 29, scope: !2925, inlinedAt: !2926)
!2981 = !DILocation(line: 481, column: 35, scope: !2925, inlinedAt: !2926)
!2982 = !DILocation(line: 481, column: 42, scope: !2925, inlinedAt: !2926)
!2983 = !DILocation(line: 474, column: 23, scope: !2920, inlinedAt: !2924)
!2984 = !DILocation(line: 474, column: 29, scope: !2920, inlinedAt: !2924)
!2985 = !DILocation(line: 474, column: 36, scope: !2920, inlinedAt: !2924)
!2986 = !DILocation(line: 474, column: 9, scope: !2920, inlinedAt: !2924)
!2987 = !DILocation(line: 545, column: 4, scope: !2927, inlinedAt: !2899)
!2988 = !DILocation(line: 547, column: 25, scope: !2894, inlinedAt: !2899)
!2989 = !DILocation(line: 348, column: 7, scope: !2990, inlinedAt: !2918)
!2990 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 348, column: 6)
!2991 = !DILocation(line: 348, column: 6, scope: !2914, inlinedAt: !2918)
!2992 = !DILocation(line: 349, column: 3, scope: !2990, inlinedAt: !2918)
!2993 = !DILocation(line: 351, column: 6, scope: !2994, inlinedAt: !2918)
!2994 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 351, column: 6)
!2995 = !DILocation(line: 351, column: 11, scope: !2994, inlinedAt: !2918)
!2996 = !DILocation(line: 351, column: 6, scope: !2914, inlinedAt: !2918)
!2997 = !DILocation(line: 352, column: 3, scope: !2994, inlinedAt: !2918)
!2998 = !DILocation(line: 354, column: 32, scope: !2999, inlinedAt: !2918)
!2999 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 354, column: 6)
!3000 = !DILocation(line: 354, column: 37, scope: !2999, inlinedAt: !2918)
!3001 = !DILocation(line: 354, column: 42, scope: !2999, inlinedAt: !2918)
!3002 = !DILocation(line: 354, column: 45, scope: !2999, inlinedAt: !2918)
!3003 = !DILocation(line: 354, column: 50, scope: !2999, inlinedAt: !2918)
!3004 = !DILocation(line: 354, column: 6, scope: !2914, inlinedAt: !2918)
!3005 = !DILocation(line: 355, column: 3, scope: !2999, inlinedAt: !2918)
!3006 = !DILocation(line: 356, column: 32, scope: !3007, inlinedAt: !2918)
!3007 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 356, column: 6)
!3008 = !DILocation(line: 356, column: 37, scope: !3007, inlinedAt: !2918)
!3009 = !DILocation(line: 356, column: 43, scope: !3007, inlinedAt: !2918)
!3010 = !DILocation(line: 356, column: 46, scope: !3007, inlinedAt: !2918)
!3011 = !DILocation(line: 356, column: 51, scope: !3007, inlinedAt: !2918)
!3012 = !DILocation(line: 356, column: 6, scope: !2914, inlinedAt: !2918)
!3013 = !DILocation(line: 357, column: 3, scope: !3007, inlinedAt: !2918)
!3014 = !DILocation(line: 358, column: 6, scope: !3015, inlinedAt: !2918)
!3015 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 358, column: 6)
!3016 = !DILocation(line: 358, column: 11, scope: !3015, inlinedAt: !2918)
!3017 = !DILocation(line: 358, column: 6, scope: !2914, inlinedAt: !2918)
!3018 = !DILocation(line: 358, column: 26, scope: !3015, inlinedAt: !2918)
!3019 = !DILocation(line: 359, column: 6, scope: !3020, inlinedAt: !2918)
!3020 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 359, column: 6)
!3021 = !DILocation(line: 359, column: 11, scope: !3020, inlinedAt: !2918)
!3022 = !DILocation(line: 359, column: 6, scope: !2914, inlinedAt: !2918)
!3023 = !DILocation(line: 359, column: 26, scope: !3020, inlinedAt: !2918)
!3024 = !DILocation(line: 360, column: 6, scope: !3025, inlinedAt: !2918)
!3025 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 360, column: 6)
!3026 = !DILocation(line: 360, column: 11, scope: !3025, inlinedAt: !2918)
!3027 = !DILocation(line: 360, column: 6, scope: !2914, inlinedAt: !2918)
!3028 = !DILocation(line: 360, column: 26, scope: !3025, inlinedAt: !2918)
!3029 = !DILocation(line: 361, column: 6, scope: !3030, inlinedAt: !2918)
!3030 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 361, column: 6)
!3031 = !DILocation(line: 361, column: 11, scope: !3030, inlinedAt: !2918)
!3032 = !DILocation(line: 361, column: 6, scope: !2914, inlinedAt: !2918)
!3033 = !DILocation(line: 361, column: 26, scope: !3030, inlinedAt: !2918)
!3034 = !DILocation(line: 362, column: 6, scope: !3035, inlinedAt: !2918)
!3035 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 362, column: 6)
!3036 = !DILocation(line: 362, column: 11, scope: !3035, inlinedAt: !2918)
!3037 = !DILocation(line: 362, column: 6, scope: !2914, inlinedAt: !2918)
!3038 = !DILocation(line: 362, column: 26, scope: !3035, inlinedAt: !2918)
!3039 = !DILocation(line: 363, column: 6, scope: !3040, inlinedAt: !2918)
!3040 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 363, column: 6)
!3041 = !DILocation(line: 363, column: 11, scope: !3040, inlinedAt: !2918)
!3042 = !DILocation(line: 363, column: 6, scope: !2914, inlinedAt: !2918)
!3043 = !DILocation(line: 363, column: 26, scope: !3040, inlinedAt: !2918)
!3044 = !DILocation(line: 364, column: 6, scope: !3045, inlinedAt: !2918)
!3045 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 364, column: 6)
!3046 = !DILocation(line: 364, column: 11, scope: !3045, inlinedAt: !2918)
!3047 = !DILocation(line: 364, column: 6, scope: !2914, inlinedAt: !2918)
!3048 = !DILocation(line: 364, column: 26, scope: !3045, inlinedAt: !2918)
!3049 = !DILocation(line: 365, column: 6, scope: !3050, inlinedAt: !2918)
!3050 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 365, column: 6)
!3051 = !DILocation(line: 365, column: 11, scope: !3050, inlinedAt: !2918)
!3052 = !DILocation(line: 365, column: 6, scope: !2914, inlinedAt: !2918)
!3053 = !DILocation(line: 365, column: 26, scope: !3050, inlinedAt: !2918)
!3054 = !DILocation(line: 366, column: 6, scope: !3055, inlinedAt: !2918)
!3055 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 366, column: 6)
!3056 = !DILocation(line: 366, column: 11, scope: !3055, inlinedAt: !2918)
!3057 = !DILocation(line: 366, column: 6, scope: !2914, inlinedAt: !2918)
!3058 = !DILocation(line: 366, column: 26, scope: !3055, inlinedAt: !2918)
!3059 = !DILocation(line: 367, column: 6, scope: !3060, inlinedAt: !2918)
!3060 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 367, column: 6)
!3061 = !DILocation(line: 367, column: 11, scope: !3060, inlinedAt: !2918)
!3062 = !DILocation(line: 367, column: 6, scope: !2914, inlinedAt: !2918)
!3063 = !DILocation(line: 367, column: 26, scope: !3060, inlinedAt: !2918)
!3064 = !DILocation(line: 368, column: 6, scope: !3065, inlinedAt: !2918)
!3065 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 368, column: 6)
!3066 = !DILocation(line: 368, column: 11, scope: !3065, inlinedAt: !2918)
!3067 = !DILocation(line: 368, column: 6, scope: !2914, inlinedAt: !2918)
!3068 = !DILocation(line: 368, column: 26, scope: !3065, inlinedAt: !2918)
!3069 = !DILocation(line: 369, column: 6, scope: !3070, inlinedAt: !2918)
!3070 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 369, column: 6)
!3071 = !DILocation(line: 369, column: 11, scope: !3070, inlinedAt: !2918)
!3072 = !DILocation(line: 369, column: 6, scope: !2914, inlinedAt: !2918)
!3073 = !DILocation(line: 369, column: 26, scope: !3070, inlinedAt: !2918)
!3074 = !DILocation(line: 370, column: 6, scope: !3075, inlinedAt: !2918)
!3075 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 370, column: 6)
!3076 = !DILocation(line: 370, column: 11, scope: !3075, inlinedAt: !2918)
!3077 = !DILocation(line: 370, column: 6, scope: !2914, inlinedAt: !2918)
!3078 = !DILocation(line: 370, column: 26, scope: !3075, inlinedAt: !2918)
!3079 = !DILocation(line: 371, column: 6, scope: !3080, inlinedAt: !2918)
!3080 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 371, column: 6)
!3081 = !DILocation(line: 371, column: 11, scope: !3080, inlinedAt: !2918)
!3082 = !DILocation(line: 371, column: 6, scope: !2914, inlinedAt: !2918)
!3083 = !DILocation(line: 371, column: 26, scope: !3080, inlinedAt: !2918)
!3084 = !DILocation(line: 372, column: 6, scope: !3085, inlinedAt: !2918)
!3085 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 372, column: 6)
!3086 = !DILocation(line: 372, column: 11, scope: !3085, inlinedAt: !2918)
!3087 = !DILocation(line: 372, column: 6, scope: !2914, inlinedAt: !2918)
!3088 = !DILocation(line: 372, column: 26, scope: !3085, inlinedAt: !2918)
!3089 = !DILocation(line: 373, column: 6, scope: !3090, inlinedAt: !2918)
!3090 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 373, column: 6)
!3091 = !DILocation(line: 373, column: 11, scope: !3090, inlinedAt: !2918)
!3092 = !DILocation(line: 373, column: 6, scope: !2914, inlinedAt: !2918)
!3093 = !DILocation(line: 373, column: 26, scope: !3090, inlinedAt: !2918)
!3094 = !DILocation(line: 374, column: 6, scope: !3095, inlinedAt: !2918)
!3095 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 374, column: 6)
!3096 = !DILocation(line: 374, column: 11, scope: !3095, inlinedAt: !2918)
!3097 = !DILocation(line: 374, column: 6, scope: !2914, inlinedAt: !2918)
!3098 = !DILocation(line: 374, column: 26, scope: !3095, inlinedAt: !2918)
!3099 = !DILocation(line: 375, column: 6, scope: !3100, inlinedAt: !2918)
!3100 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 375, column: 6)
!3101 = !DILocation(line: 375, column: 11, scope: !3100, inlinedAt: !2918)
!3102 = !DILocation(line: 375, column: 6, scope: !2914, inlinedAt: !2918)
!3103 = !DILocation(line: 375, column: 27, scope: !3100, inlinedAt: !2918)
!3104 = !DILocation(line: 376, column: 6, scope: !3105, inlinedAt: !2918)
!3105 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 376, column: 6)
!3106 = !DILocation(line: 376, column: 11, scope: !3105, inlinedAt: !2918)
!3107 = !DILocation(line: 376, column: 6, scope: !2914, inlinedAt: !2918)
!3108 = !DILocation(line: 376, column: 32, scope: !3105, inlinedAt: !2918)
!3109 = !DILocation(line: 377, column: 6, scope: !3110, inlinedAt: !2918)
!3110 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 377, column: 6)
!3111 = !DILocation(line: 377, column: 11, scope: !3110, inlinedAt: !2918)
!3112 = !DILocation(line: 377, column: 6, scope: !2914, inlinedAt: !2918)
!3113 = !DILocation(line: 377, column: 32, scope: !3110, inlinedAt: !2918)
!3114 = !DILocation(line: 378, column: 6, scope: !3115, inlinedAt: !2918)
!3115 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 378, column: 6)
!3116 = !DILocation(line: 378, column: 11, scope: !3115, inlinedAt: !2918)
!3117 = !DILocation(line: 378, column: 6, scope: !2914, inlinedAt: !2918)
!3118 = !DILocation(line: 378, column: 32, scope: !3115, inlinedAt: !2918)
!3119 = !DILocation(line: 379, column: 6, scope: !3120, inlinedAt: !2918)
!3120 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 379, column: 6)
!3121 = !DILocation(line: 379, column: 11, scope: !3120, inlinedAt: !2918)
!3122 = !DILocation(line: 379, column: 6, scope: !2914, inlinedAt: !2918)
!3123 = !DILocation(line: 379, column: 33, scope: !3120, inlinedAt: !2918)
!3124 = !DILocation(line: 380, column: 6, scope: !3125, inlinedAt: !2918)
!3125 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 380, column: 6)
!3126 = !DILocation(line: 380, column: 11, scope: !3125, inlinedAt: !2918)
!3127 = !DILocation(line: 380, column: 6, scope: !2914, inlinedAt: !2918)
!3128 = !DILocation(line: 380, column: 33, scope: !3125, inlinedAt: !2918)
!3129 = !DILocation(line: 381, column: 6, scope: !3130, inlinedAt: !2918)
!3130 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 381, column: 6)
!3131 = !DILocation(line: 381, column: 11, scope: !3130, inlinedAt: !2918)
!3132 = !DILocation(line: 381, column: 6, scope: !2914, inlinedAt: !2918)
!3133 = !DILocation(line: 381, column: 33, scope: !3130, inlinedAt: !2918)
!3134 = !DILocation(line: 382, column: 2, scope: !3135, inlinedAt: !2918)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !211, line: 382, column: 2)
!3136 = distinct !DILexicalBlock(scope: !2914, file: !211, line: 382, column: 2)
!3137 = !{i32 -2144206408, i32 -2144206379, i32 -2144206333, i32 -2144206275, i32 -2144206221, i32 -2144206167, i32 -2144206112, i32 -2144206081}
!3138 = !DILocation(line: 382, column: 2, scope: !3139, inlinedAt: !2918)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !211, line: 382, column: 2)
!3140 = distinct !DILexicalBlock(scope: !3136, file: !211, line: 382, column: 2)
!3141 = !{i32 -2144205638, i32 -2144205631, i32 -2144205577, i32 -2144205546, i32 -2144205516}
!3142 = !DILocation(line: 382, column: 2, scope: !3140, inlinedAt: !2918)
!3143 = !DILocation(line: 386, column: 1, scope: !2914, inlinedAt: !2918)
!3144 = !DILocation(line: 547, column: 9, scope: !2894, inlinedAt: !2899)
!3145 = !DILocation(line: 549, column: 8, scope: !3146, inlinedAt: !2899)
!3146 = distinct !DILexicalBlock(scope: !2894, file: !211, line: 549, column: 7)
!3147 = !DILocation(line: 549, column: 7, scope: !2894, inlinedAt: !2899)
!3148 = !DILocation(line: 550, column: 4, scope: !3146, inlinedAt: !2899)
!3149 = !DILocation(line: 553, column: 33, scope: !2894, inlinedAt: !2899)
!3150 = !DILocation(line: 325, column: 6, scope: !3151, inlinedAt: !2912)
!3151 = distinct !DILexicalBlock(scope: !2908, file: !211, line: 325, column: 6)
!3152 = !DILocation(line: 325, column: 6, scope: !2908, inlinedAt: !2912)
!3153 = !DILocation(line: 326, column: 3, scope: !3151, inlinedAt: !2912)
!3154 = !DILocation(line: 332, column: 9, scope: !2908, inlinedAt: !2912)
!3155 = !DILocation(line: 332, column: 15, scope: !2908, inlinedAt: !2912)
!3156 = !DILocation(line: 332, column: 2, scope: !2908, inlinedAt: !2912)
!3157 = !DILocation(line: 336, column: 1, scope: !2908, inlinedAt: !2912)
!3158 = !DILocation(line: 553, column: 5, scope: !2894, inlinedAt: !2899)
!3159 = !DILocation(line: 553, column: 41, scope: !2894, inlinedAt: !2899)
!3160 = !DILocation(line: 554, column: 5, scope: !2894, inlinedAt: !2899)
!3161 = !DILocation(line: 554, column: 12, scope: !2894, inlinedAt: !2899)
!3162 = !DILocation(line: 448, column: 31, scope: !2889, inlinedAt: !2893)
!3163 = !DILocation(line: 448, column: 34, scope: !2889, inlinedAt: !2893)
!3164 = !DILocation(line: 448, column: 14, scope: !2889, inlinedAt: !2893)
!3165 = !DILocation(line: 450, column: 22, scope: !2889, inlinedAt: !2893)
!3166 = !DILocation(line: 450, column: 25, scope: !2889, inlinedAt: !2893)
!3167 = !DILocation(line: 450, column: 30, scope: !2889, inlinedAt: !2893)
!3168 = !DILocation(line: 450, column: 36, scope: !2889, inlinedAt: !2893)
!3169 = !DILocation(line: 450, column: 8, scope: !2889, inlinedAt: !2893)
!3170 = !DILocation(line: 450, column: 6, scope: !2889, inlinedAt: !2893)
!3171 = !DILocation(line: 451, column: 9, scope: !2889, inlinedAt: !2893)
!3172 = !DILocation(line: 552, column: 3, scope: !2894, inlinedAt: !2899)
!3173 = !DILocation(line: 557, column: 19, scope: !2896, inlinedAt: !2899)
!3174 = !DILocation(line: 557, column: 25, scope: !2896, inlinedAt: !2899)
!3175 = !DILocation(line: 557, column: 9, scope: !2896, inlinedAt: !2899)
!3176 = !DILocation(line: 557, column: 2, scope: !2896, inlinedAt: !2899)
!3177 = !DILocation(line: 558, column: 1, scope: !2896, inlinedAt: !2899)
!3178 = !DILocation(line: 591, column: 3, scope: !2900)
!3179 = !DILocation(line: 592, column: 19, scope: !2887)
!3180 = !DILocation(line: 592, column: 26, scope: !2887)
!3181 = !DILocation(line: 592, column: 9, scope: !2887)
!3182 = !DILocation(line: 592, column: 2, scope: !2887)
!3183 = !DILocation(line: 593, column: 1, scope: !2887)
!3184 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3185, file: !3185, line: 52, type: !3186, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3185 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!288, !288}
!3188 = !DILocalVariable(name: "overflow", arg: 1, scope: !3184, file: !3185, line: 52, type: !288)
!3189 = !DILocation(line: 52, column: 60, scope: !3184)
!3190 = !DILocation(line: 54, column: 9, scope: !3184)
!3191 = !DILocation(line: 54, column: 2, scope: !3184)
!3192 = distinct !DISubprogram(name: "get_order", scope: !3193, file: !3193, line: 29, type: !3194, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3193 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!33, !281}
!3196 = !DILocalVariable(name: "x", arg: 1, scope: !3197, file: !3198, line: 366, type: !489)
!3197 = distinct !DISubprogram(name: "fls64", scope: !3198, file: !3198, line: 366, type: !3199, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3198 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!33, !489}
!3201 = !DILocation(line: 366, column: 40, scope: !3197, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 46, column: 9, scope: !3192)
!3203 = !DILocalVariable(name: "bitpos", scope: !3197, file: !3198, line: 368, type: !33)
!3204 = !DILocation(line: 368, column: 6, scope: !3197, inlinedAt: !3202)
!3205 = !DILocalVariable(name: "size", arg: 1, scope: !3192, file: !3193, line: 29, type: !281)
!3206 = !DILocation(line: 29, column: 63, scope: !3192)
!3207 = !DILocation(line: 31, column: 27, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3192, file: !3193, line: 31, column: 6)
!3209 = !DILocation(line: 31, column: 6, scope: !3208)
!3210 = !DILocation(line: 31, column: 6, scope: !3192)
!3211 = !DILocation(line: 32, column: 8, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3193, line: 32, column: 7)
!3213 = distinct !DILexicalBlock(scope: !3208, file: !3193, line: 31, column: 34)
!3214 = !DILocation(line: 32, column: 7, scope: !3213)
!3215 = !DILocation(line: 33, column: 4, scope: !3212)
!3216 = !DILocation(line: 35, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3213, file: !3193, line: 35, column: 7)
!3218 = !DILocation(line: 35, column: 12, scope: !3217)
!3219 = !DILocation(line: 35, column: 7, scope: !3213)
!3220 = !DILocation(line: 36, column: 4, scope: !3217)
!3221 = !DILocation(line: 38, column: 10, scope: !3213)
!3222 = !DILocation(line: 38, column: 28, scope: !3213)
!3223 = !DILocation(line: 38, column: 41, scope: !3213)
!3224 = !DILocation(line: 38, column: 3, scope: !3213)
!3225 = !DILocation(line: 41, column: 6, scope: !3192)
!3226 = !DILocation(line: 42, column: 7, scope: !3192)
!3227 = !DILocation(line: 46, column: 15, scope: !3192)
!3228 = !DILocation(line: 374, column: 2, scope: !3197, inlinedAt: !3202)
!3229 = !DILocation(line: 376, column: 14, scope: !3197, inlinedAt: !3202)
!3230 = !{i32 328672}
!3231 = !DILocation(line: 377, column: 9, scope: !3197, inlinedAt: !3202)
!3232 = !DILocation(line: 377, column: 16, scope: !3197, inlinedAt: !3202)
!3233 = !DILocation(line: 46, column: 2, scope: !3192)
!3234 = !DILocation(line: 48, column: 1, scope: !3192)
!3235 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3236, file: !3236, line: 30, type: !3237, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3236 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!33, !487}
!3239 = !DILocation(line: 366, column: 40, scope: !3197, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 32, column: 9, scope: !3235)
!3241 = !DILocation(line: 368, column: 6, scope: !3197, inlinedAt: !3240)
!3242 = !DILocalVariable(name: "n", arg: 1, scope: !3235, file: !3236, line: 30, type: !487)
!3243 = !DILocation(line: 30, column: 21, scope: !3235)
!3244 = !DILocation(line: 32, column: 15, scope: !3235)
!3245 = !DILocation(line: 374, column: 2, scope: !3197, inlinedAt: !3240)
!3246 = !DILocation(line: 376, column: 14, scope: !3197, inlinedAt: !3240)
!3247 = !DILocation(line: 377, column: 9, scope: !3197, inlinedAt: !3240)
!3248 = !DILocation(line: 377, column: 16, scope: !3197, inlinedAt: !3240)
!3249 = !DILocation(line: 32, column: 18, scope: !3235)
!3250 = !DILocation(line: 32, column: 2, scope: !3235)
!3251 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3252, file: !3252, line: 137, type: !3253, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3252 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!286, !1250, !1331, !416, !295}
!3255 = !DILocalVariable(name: "s", arg: 1, scope: !3251, file: !3252, line: 137, type: !1250)
!3256 = !DILocation(line: 137, column: 54, scope: !3251)
!3257 = !DILocalVariable(name: "object", arg: 2, scope: !3251, file: !3252, line: 137, type: !1331)
!3258 = !DILocation(line: 137, column: 69, scope: !3251)
!3259 = !DILocalVariable(name: "size", arg: 3, scope: !3251, file: !3252, line: 138, type: !416)
!3260 = !DILocation(line: 138, column: 12, scope: !3251)
!3261 = !DILocalVariable(name: "flags", arg: 4, scope: !3251, file: !3252, line: 138, type: !295)
!3262 = !DILocation(line: 138, column: 24, scope: !3251)
!3263 = !DILocation(line: 140, column: 17, scope: !3251)
!3264 = !DILocation(line: 140, column: 2, scope: !3251)
!3265 = distinct !DISubprogram(name: "of_have_populated_dt", scope: !2100, file: !2100, line: 178, type: !1594, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3266 = !DILocation(line: 180, column: 9, scope: !3265)
!3267 = !DILocation(line: 180, column: 17, scope: !3265)
!3268 = !DILocation(line: 180, column: 2, scope: !3265)
!3269 = distinct !DISubprogram(name: "cache_setup_of_node", scope: !3, file: !3, line: 156, type: !2444, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3270 = !DILocalVariable(name: "cpu", arg: 1, scope: !3269, file: !3, line: 156, type: !7)
!3271 = !DILocation(line: 156, column: 45, scope: !3269)
!3272 = !DILocalVariable(name: "np", scope: !3269, file: !3, line: 158, type: !2098)
!3273 = !DILocation(line: 158, column: 22, scope: !3269)
!3274 = !DILocalVariable(name: "this_leaf", scope: !3269, file: !3, line: 159, type: !263)
!3275 = !DILocation(line: 159, column: 20, scope: !3269)
!3276 = !DILocalVariable(name: "cpu_dev", scope: !3269, file: !3, line: 160, type: !305)
!3277 = !DILocation(line: 160, column: 17, scope: !3269)
!3278 = !DILocation(line: 160, column: 42, scope: !3269)
!3279 = !DILocation(line: 160, column: 27, scope: !3269)
!3280 = !DILocalVariable(name: "this_cpu_ci", scope: !3269, file: !3, line: 161, type: !259)
!3281 = !DILocation(line: 161, column: 24, scope: !3269)
!3282 = !DILocation(line: 161, column: 56, scope: !3269)
!3283 = !DILocation(line: 161, column: 38, scope: !3269)
!3284 = !DILocalVariable(name: "index", scope: !3269, file: !3, line: 162, type: !7)
!3285 = !DILocation(line: 162, column: 15, scope: !3269)
!3286 = !DILocation(line: 165, column: 6, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 165, column: 6)
!3288 = !DILocation(line: 165, column: 19, scope: !3287)
!3289 = !DILocation(line: 165, column: 30, scope: !3287)
!3290 = !DILocation(line: 165, column: 6, scope: !3269)
!3291 = !DILocation(line: 166, column: 3, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 165, column: 40)
!3293 = !DILocation(line: 169, column: 7, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 169, column: 6)
!3295 = !DILocation(line: 169, column: 6, scope: !3269)
!3296 = !DILocation(line: 170, column: 3, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 169, column: 16)
!3298 = !DILocation(line: 171, column: 3, scope: !3297)
!3299 = !DILocation(line: 173, column: 7, scope: !3269)
!3300 = !DILocation(line: 173, column: 16, scope: !3269)
!3301 = !DILocation(line: 173, column: 5, scope: !3269)
!3302 = !DILocation(line: 174, column: 7, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 174, column: 6)
!3304 = !DILocation(line: 174, column: 6, scope: !3269)
!3305 = !DILocation(line: 175, column: 3, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 174, column: 11)
!3307 = !DILocation(line: 176, column: 3, scope: !3306)
!3308 = !DILocation(line: 179, column: 2, scope: !3269)
!3309 = !DILocation(line: 179, column: 9, scope: !3269)
!3310 = !DILocation(line: 179, column: 17, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 179, column: 17)
!3312 = !DILocation(line: 179, column: 17, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 179, column: 17)
!3314 = !DILocalVariable(name: "__vpp_verify", scope: !3315, file: !3, line: 179, type: !1331)
!3315 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 179, column: 17)
!3316 = !DILocation(line: 179, column: 17, scope: !3315)
!3317 = !DILocation(line: 179, column: 17, scope: !3269)
!3318 = !DILocation(line: 179, column: 15, scope: !3269)
!3319 = !DILocation(line: 180, column: 15, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 179, column: 36)
!3321 = !DILocation(line: 180, column: 28, scope: !3320)
!3322 = !DILocation(line: 180, column: 40, scope: !3320)
!3323 = !DILocation(line: 180, column: 38, scope: !3320)
!3324 = !DILocation(line: 180, column: 13, scope: !3320)
!3325 = !DILocation(line: 181, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 181, column: 7)
!3327 = !DILocation(line: 181, column: 18, scope: !3326)
!3328 = !DILocation(line: 181, column: 24, scope: !3326)
!3329 = !DILocation(line: 181, column: 7, scope: !3320)
!3330 = !DILocation(line: 182, column: 33, scope: !3326)
!3331 = !DILocation(line: 182, column: 9, scope: !3326)
!3332 = !DILocation(line: 182, column: 7, scope: !3326)
!3333 = !DILocation(line: 182, column: 4, scope: !3326)
!3334 = !DILocation(line: 184, column: 21, scope: !3326)
!3335 = !DILocation(line: 184, column: 9, scope: !3326)
!3336 = !DILocation(line: 184, column: 7, scope: !3326)
!3337 = !DILocation(line: 185, column: 8, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 185, column: 7)
!3339 = !DILocation(line: 185, column: 7, scope: !3320)
!3340 = !DILocation(line: 186, column: 4, scope: !3338)
!3341 = !DILocation(line: 187, column: 22, scope: !3320)
!3342 = !DILocation(line: 187, column: 33, scope: !3320)
!3343 = !DILocation(line: 187, column: 3, scope: !3320)
!3344 = !DILocation(line: 188, column: 25, scope: !3320)
!3345 = !DILocation(line: 188, column: 3, scope: !3320)
!3346 = !DILocation(line: 188, column: 14, scope: !3320)
!3347 = !DILocation(line: 188, column: 23, scope: !3320)
!3348 = !DILocation(line: 189, column: 8, scope: !3320)
!3349 = distinct !{!3349, !3308, !3350}
!3350 = !DILocation(line: 190, column: 2, scope: !3269)
!3351 = !DILocation(line: 192, column: 6, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 192, column: 6)
!3353 = !DILocation(line: 192, column: 15, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 192, column: 15)
!3355 = !DILocation(line: 192, column: 15, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 192, column: 15)
!3357 = !DILocalVariable(name: "__vpp_verify", scope: !3358, file: !3, line: 192, type: !1331)
!3358 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 192, column: 15)
!3359 = !DILocation(line: 192, column: 15, scope: !3358)
!3360 = !DILocation(line: 192, column: 15, scope: !3352)
!3361 = !DILocation(line: 192, column: 12, scope: !3352)
!3362 = !DILocation(line: 192, column: 6, scope: !3269)
!3363 = !DILocation(line: 193, column: 3, scope: !3352)
!3364 = !DILocation(line: 195, column: 2, scope: !3269)
!3365 = !DILocation(line: 196, column: 1, scope: !3269)
!3366 = distinct !DISubprogram(name: "cpumask_empty", scope: !276, file: !276, line: 543, type: !3367, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!288, !296}
!3369 = !DILocalVariable(name: "srcp", arg: 1, scope: !3366, file: !276, line: 543, type: !296)
!3370 = !DILocation(line: 543, column: 56, scope: !3366)
!3371 = !DILocation(line: 545, column: 22, scope: !3366)
!3372 = !DILocation(line: 545, column: 9, scope: !3366)
!3373 = !DILocation(line: 545, column: 2, scope: !3366)
!3374 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !276, file: !276, line: 332, type: !3375, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !7, !3377}
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!3378 = !DILocalVariable(name: "cpu", arg: 1, scope: !3374, file: !276, line: 332, type: !7)
!3379 = !DILocation(line: 332, column: 49, scope: !3374)
!3380 = !DILocalVariable(name: "dstp", arg: 2, scope: !3374, file: !276, line: 332, type: !3377)
!3381 = !DILocation(line: 332, column: 70, scope: !3374)
!3382 = !DILocation(line: 334, column: 24, scope: !3374)
!3383 = !DILocation(line: 334, column: 10, scope: !3374)
!3384 = !DILocation(line: 334, column: 30, scope: !3374)
!3385 = !DILocation(line: 334, column: 2, scope: !3374)
!3386 = !DILocation(line: 335, column: 1, scope: !3374)
!3387 = distinct !DISubprogram(name: "cache_leaves_are_shared", scope: !3, file: !3, line: 35, type: !3388, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!288, !263, !263}
!3390 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3387, file: !3, line: 35, type: !263)
!3391 = !DILocation(line: 35, column: 62, scope: !3387)
!3392 = !DILocalVariable(name: "sib_leaf", arg: 2, scope: !3387, file: !3, line: 36, type: !263)
!3393 = !DILocation(line: 36, column: 27, scope: !3387)
!3394 = !DILocation(line: 38, column: 9, scope: !3387)
!3395 = !DILocation(line: 38, column: 19, scope: !3387)
!3396 = !DILocation(line: 38, column: 31, scope: !3387)
!3397 = !DILocation(line: 38, column: 42, scope: !3387)
!3398 = !DILocation(line: 38, column: 28, scope: !3387)
!3399 = !DILocation(line: 38, column: 2, scope: !3387)
!3400 = distinct !DISubprogram(name: "of_node_get", scope: !2100, file: !2100, line: 125, type: !3401, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!2098, !2098}
!3403 = !DILocalVariable(name: "node", arg: 1, scope: !3400, file: !2100, line: 125, type: !2098)
!3404 = !DILocation(line: 125, column: 67, scope: !3400)
!3405 = !DILocation(line: 127, column: 9, scope: !3400)
!3406 = !DILocation(line: 127, column: 2, scope: !3400)
!3407 = distinct !DISubprogram(name: "cache_of_set_props", scope: !3, file: !3, line: 139, type: !3408, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !263, !2098}
!3410 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3407, file: !3, line: 139, type: !263)
!3411 = !DILocation(line: 139, column: 50, scope: !3407)
!3412 = !DILocalVariable(name: "np", arg: 2, scope: !3407, file: !3, line: 140, type: !2098)
!3413 = !DILocation(line: 140, column: 31, scope: !3407)
!3414 = !DILocation(line: 147, column: 6, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 147, column: 6)
!3416 = !DILocation(line: 147, column: 17, scope: !3415)
!3417 = !DILocation(line: 147, column: 22, scope: !3415)
!3418 = !DILocation(line: 147, column: 44, scope: !3415)
!3419 = !DILocation(line: 148, column: 28, scope: !3415)
!3420 = !DILocation(line: 148, column: 39, scope: !3415)
!3421 = !DILocation(line: 148, column: 6, scope: !3415)
!3422 = !DILocation(line: 147, column: 6, scope: !3407)
!3423 = !DILocation(line: 149, column: 3, scope: !3415)
!3424 = !DILocation(line: 149, column: 14, scope: !3415)
!3425 = !DILocation(line: 149, column: 19, scope: !3415)
!3426 = !DILocation(line: 150, column: 13, scope: !3407)
!3427 = !DILocation(line: 150, column: 24, scope: !3407)
!3428 = !DILocation(line: 150, column: 2, scope: !3407)
!3429 = !DILocation(line: 151, column: 22, scope: !3407)
!3430 = !DILocation(line: 151, column: 33, scope: !3407)
!3431 = !DILocation(line: 151, column: 2, scope: !3407)
!3432 = !DILocation(line: 152, column: 16, scope: !3407)
!3433 = !DILocation(line: 152, column: 27, scope: !3407)
!3434 = !DILocation(line: 152, column: 2, scope: !3407)
!3435 = !DILocation(line: 153, column: 22, scope: !3407)
!3436 = !DILocation(line: 153, column: 2, scope: !3407)
!3437 = !DILocation(line: 154, column: 1, scope: !3407)
!3438 = distinct !DISubprogram(name: "cache_node_is_unified", scope: !3, file: !3, line: 133, type: !3439, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!288, !263, !2098}
!3441 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3438, file: !3, line: 133, type: !263)
!3442 = !DILocation(line: 133, column: 53, scope: !3438)
!3443 = !DILocalVariable(name: "np", arg: 2, scope: !3438, file: !3, line: 134, type: !2098)
!3444 = !DILocation(line: 134, column: 27, scope: !3438)
!3445 = !DILocation(line: 136, column: 31, scope: !3438)
!3446 = !DILocation(line: 136, column: 9, scope: !3438)
!3447 = !DILocation(line: 136, column: 2, scope: !3438)
!3448 = distinct !DISubprogram(name: "cache_size", scope: !3, file: !3, line: 74, type: !3408, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3449 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3448, file: !3, line: 74, type: !263)
!3450 = !DILocation(line: 74, column: 42, scope: !3448)
!3451 = !DILocalVariable(name: "np", arg: 2, scope: !3448, file: !3, line: 74, type: !2098)
!3452 = !DILocation(line: 74, column: 73, scope: !3448)
!3453 = !DILocalVariable(name: "propname", scope: !3448, file: !3, line: 76, type: !313)
!3454 = !DILocation(line: 76, column: 14, scope: !3448)
!3455 = !DILocalVariable(name: "ct_idx", scope: !3448, file: !3, line: 77, type: !33)
!3456 = !DILocation(line: 77, column: 6, scope: !3448)
!3457 = !DILocation(line: 79, column: 29, scope: !3448)
!3458 = !DILocation(line: 79, column: 40, scope: !3448)
!3459 = !DILocation(line: 79, column: 11, scope: !3448)
!3460 = !DILocation(line: 79, column: 9, scope: !3448)
!3461 = !DILocation(line: 80, column: 29, scope: !3448)
!3462 = !DILocation(line: 80, column: 13, scope: !3448)
!3463 = !DILocation(line: 80, column: 37, scope: !3448)
!3464 = !DILocation(line: 80, column: 11, scope: !3448)
!3465 = !DILocation(line: 82, column: 23, scope: !3448)
!3466 = !DILocation(line: 82, column: 27, scope: !3448)
!3467 = !DILocation(line: 82, column: 38, scope: !3448)
!3468 = !DILocation(line: 82, column: 49, scope: !3448)
!3469 = !DILocation(line: 82, column: 2, scope: !3448)
!3470 = !DILocation(line: 83, column: 1, scope: !3448)
!3471 = distinct !DISubprogram(name: "cache_get_line_size", scope: !3, file: !3, line: 86, type: !3408, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3472 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3471, file: !3, line: 86, type: !263)
!3473 = !DILocation(line: 86, column: 51, scope: !3471)
!3474 = !DILocalVariable(name: "np", arg: 2, scope: !3471, file: !3, line: 87, type: !2098)
!3475 = !DILocation(line: 87, column: 25, scope: !3471)
!3476 = !DILocalVariable(name: "i", scope: !3471, file: !3, line: 89, type: !33)
!3477 = !DILocation(line: 89, column: 6, scope: !3471)
!3478 = !DILocalVariable(name: "lim", scope: !3471, file: !3, line: 89, type: !33)
!3479 = !DILocation(line: 89, column: 9, scope: !3471)
!3480 = !DILocalVariable(name: "ct_idx", scope: !3471, file: !3, line: 89, type: !33)
!3481 = !DILocation(line: 89, column: 14, scope: !3471)
!3482 = !DILocation(line: 91, column: 29, scope: !3471)
!3483 = !DILocation(line: 91, column: 40, scope: !3471)
!3484 = !DILocation(line: 91, column: 11, scope: !3471)
!3485 = !DILocation(line: 91, column: 9, scope: !3471)
!3486 = !DILocation(line: 92, column: 6, scope: !3471)
!3487 = !DILocation(line: 94, column: 9, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 94, column: 2)
!3489 = !DILocation(line: 94, column: 7, scope: !3488)
!3490 = !DILocation(line: 94, column: 14, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 94, column: 2)
!3492 = !DILocation(line: 94, column: 18, scope: !3491)
!3493 = !DILocation(line: 94, column: 16, scope: !3491)
!3494 = !DILocation(line: 94, column: 2, scope: !3488)
!3495 = !DILocalVariable(name: "ret", scope: !3496, file: !3, line: 95, type: !33)
!3496 = distinct !DILexicalBlock(scope: !3491, file: !3, line: 94, column: 28)
!3497 = !DILocation(line: 95, column: 7, scope: !3496)
!3498 = !DILocalVariable(name: "line_size", scope: !3496, file: !3, line: 96, type: !641)
!3499 = !DILocation(line: 96, column: 7, scope: !3496)
!3500 = !DILocalVariable(name: "propname", scope: !3496, file: !3, line: 97, type: !313)
!3501 = !DILocation(line: 97, column: 15, scope: !3496)
!3502 = !DILocation(line: 99, column: 30, scope: !3496)
!3503 = !DILocation(line: 99, column: 14, scope: !3496)
!3504 = !DILocation(line: 99, column: 38, scope: !3496)
!3505 = !DILocation(line: 99, column: 54, scope: !3496)
!3506 = !DILocation(line: 99, column: 12, scope: !3496)
!3507 = !DILocation(line: 100, column: 30, scope: !3496)
!3508 = !DILocation(line: 100, column: 34, scope: !3496)
!3509 = !DILocation(line: 100, column: 9, scope: !3496)
!3510 = !DILocation(line: 100, column: 7, scope: !3496)
!3511 = !DILocation(line: 101, column: 8, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 101, column: 7)
!3513 = !DILocation(line: 101, column: 7, scope: !3496)
!3514 = !DILocation(line: 102, column: 37, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 101, column: 13)
!3516 = !DILocation(line: 102, column: 4, scope: !3515)
!3517 = !DILocation(line: 102, column: 15, scope: !3515)
!3518 = !DILocation(line: 102, column: 35, scope: !3515)
!3519 = !DILocation(line: 103, column: 4, scope: !3515)
!3520 = !DILocation(line: 105, column: 2, scope: !3496)
!3521 = !DILocation(line: 94, column: 24, scope: !3491)
!3522 = !DILocation(line: 94, column: 2, scope: !3491)
!3523 = distinct !{!3523, !3494, !3524}
!3524 = !DILocation(line: 105, column: 2, scope: !3488)
!3525 = !DILocation(line: 106, column: 1, scope: !3471)
!3526 = distinct !DISubprogram(name: "cache_nr_sets", scope: !3, file: !3, line: 108, type: !3408, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3527 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3526, file: !3, line: 108, type: !263)
!3528 = !DILocation(line: 108, column: 45, scope: !3526)
!3529 = !DILocalVariable(name: "np", arg: 2, scope: !3526, file: !3, line: 108, type: !2098)
!3530 = !DILocation(line: 108, column: 76, scope: !3526)
!3531 = !DILocalVariable(name: "propname", scope: !3526, file: !3, line: 110, type: !313)
!3532 = !DILocation(line: 110, column: 14, scope: !3526)
!3533 = !DILocalVariable(name: "ct_idx", scope: !3526, file: !3, line: 111, type: !33)
!3534 = !DILocation(line: 111, column: 6, scope: !3526)
!3535 = !DILocation(line: 113, column: 29, scope: !3526)
!3536 = !DILocation(line: 113, column: 40, scope: !3526)
!3537 = !DILocation(line: 113, column: 11, scope: !3526)
!3538 = !DILocation(line: 113, column: 9, scope: !3526)
!3539 = !DILocation(line: 114, column: 29, scope: !3526)
!3540 = !DILocation(line: 114, column: 13, scope: !3526)
!3541 = !DILocation(line: 114, column: 37, scope: !3526)
!3542 = !DILocation(line: 114, column: 11, scope: !3526)
!3543 = !DILocation(line: 116, column: 23, scope: !3526)
!3544 = !DILocation(line: 116, column: 27, scope: !3526)
!3545 = !DILocation(line: 116, column: 38, scope: !3526)
!3546 = !DILocation(line: 116, column: 49, scope: !3526)
!3547 = !DILocation(line: 116, column: 2, scope: !3526)
!3548 = !DILocation(line: 117, column: 1, scope: !3526)
!3549 = distinct !DISubprogram(name: "cache_associativity", scope: !3, file: !3, line: 119, type: !3550, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !263}
!3552 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3549, file: !3, line: 119, type: !263)
!3553 = !DILocation(line: 119, column: 51, scope: !3549)
!3554 = !DILocalVariable(name: "line_size", scope: !3549, file: !3, line: 121, type: !7)
!3555 = !DILocation(line: 121, column: 15, scope: !3549)
!3556 = !DILocation(line: 121, column: 27, scope: !3549)
!3557 = !DILocation(line: 121, column: 38, scope: !3549)
!3558 = !DILocalVariable(name: "nr_sets", scope: !3549, file: !3, line: 122, type: !7)
!3559 = !DILocation(line: 122, column: 15, scope: !3549)
!3560 = !DILocation(line: 122, column: 25, scope: !3549)
!3561 = !DILocation(line: 122, column: 36, scope: !3549)
!3562 = !DILocalVariable(name: "size", scope: !3549, file: !3, line: 123, type: !7)
!3563 = !DILocation(line: 123, column: 15, scope: !3549)
!3564 = !DILocation(line: 123, column: 22, scope: !3549)
!3565 = !DILocation(line: 123, column: 33, scope: !3549)
!3566 = !DILocation(line: 129, column: 8, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 129, column: 6)
!3568 = !DILocation(line: 129, column: 16, scope: !3567)
!3569 = !DILocation(line: 129, column: 22, scope: !3567)
!3570 = !DILocation(line: 129, column: 26, scope: !3567)
!3571 = !DILocation(line: 129, column: 34, scope: !3567)
!3572 = !DILocation(line: 129, column: 38, scope: !3567)
!3573 = !DILocation(line: 129, column: 41, scope: !3567)
!3574 = !DILocation(line: 129, column: 46, scope: !3567)
!3575 = !DILocation(line: 129, column: 50, scope: !3567)
!3576 = !DILocation(line: 129, column: 53, scope: !3567)
!3577 = !DILocation(line: 129, column: 63, scope: !3567)
!3578 = !DILocation(line: 129, column: 6, scope: !3549)
!3579 = !DILocation(line: 130, column: 39, scope: !3567)
!3580 = !DILocation(line: 130, column: 46, scope: !3567)
!3581 = !DILocation(line: 130, column: 44, scope: !3567)
!3582 = !DILocation(line: 130, column: 57, scope: !3567)
!3583 = !DILocation(line: 130, column: 55, scope: !3567)
!3584 = !DILocation(line: 130, column: 3, scope: !3567)
!3585 = !DILocation(line: 130, column: 14, scope: !3567)
!3586 = !DILocation(line: 130, column: 36, scope: !3567)
!3587 = !DILocation(line: 131, column: 1, scope: !3549)
!3588 = distinct !DISubprogram(name: "of_property_read_bool", scope: !2100, file: !2100, line: 1192, type: !3589, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!288, !3591, !313}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!3593 = !DILocalVariable(name: "np", arg: 1, scope: !3588, file: !2100, line: 1192, type: !3591)
!3594 = !DILocation(line: 1192, column: 68, scope: !3588)
!3595 = !DILocalVariable(name: "propname", arg: 2, scope: !3588, file: !2100, line: 1193, type: !313)
!3596 = !DILocation(line: 1193, column: 19, scope: !3588)
!3597 = !DILocalVariable(name: "prop", scope: !3588, file: !2100, line: 1195, type: !2197)
!3598 = !DILocation(line: 1195, column: 19, scope: !3588)
!3599 = !DILocation(line: 1195, column: 43, scope: !3588)
!3600 = !DILocation(line: 1195, column: 47, scope: !3588)
!3601 = !DILocation(line: 1195, column: 26, scope: !3588)
!3602 = !DILocation(line: 1197, column: 9, scope: !3588)
!3603 = !DILocation(line: 1197, column: 2, scope: !3588)
!3604 = distinct !DISubprogram(name: "get_cacheinfo_idx", scope: !3, file: !3, line: 67, type: !3605, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!33, !5}
!3607 = !DILocalVariable(name: "type", arg: 1, scope: !3604, file: !3, line: 67, type: !5)
!3608 = !DILocation(line: 67, column: 53, scope: !3604)
!3609 = !DILocation(line: 69, column: 6, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 69, column: 6)
!3611 = !DILocation(line: 69, column: 11, scope: !3610)
!3612 = !DILocation(line: 69, column: 6, scope: !3604)
!3613 = !DILocation(line: 70, column: 3, scope: !3610)
!3614 = !DILocation(line: 71, column: 9, scope: !3604)
!3615 = !DILocation(line: 71, column: 2, scope: !3604)
!3616 = !DILocation(line: 72, column: 1, scope: !3604)
!3617 = distinct !DISubprogram(name: "of_property_read_u32", scope: !2100, file: !2100, line: 1214, type: !3618, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!33, !3591, !313, !833}
!3620 = !DILocalVariable(name: "np", arg: 1, scope: !3617, file: !2100, line: 1214, type: !3591)
!3621 = !DILocation(line: 1214, column: 66, scope: !3617)
!3622 = !DILocalVariable(name: "propname", arg: 2, scope: !3617, file: !2100, line: 1215, type: !313)
!3623 = !DILocation(line: 1215, column: 24, scope: !3617)
!3624 = !DILocalVariable(name: "out_value", arg: 3, scope: !3617, file: !2100, line: 1216, type: !833)
!3625 = !DILocation(line: 1216, column: 17, scope: !3617)
!3626 = !DILocation(line: 1218, column: 36, scope: !3617)
!3627 = !DILocation(line: 1218, column: 40, scope: !3617)
!3628 = !DILocation(line: 1218, column: 50, scope: !3617)
!3629 = !DILocation(line: 1218, column: 9, scope: !3617)
!3630 = !DILocation(line: 1218, column: 2, scope: !3617)
!3631 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !2100, file: !2100, line: 494, type: !3632, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!33, !3591, !313, !833, !416}
!3634 = !DILocalVariable(name: "np", arg: 1, scope: !3631, file: !2100, line: 494, type: !3591)
!3635 = !DILocation(line: 494, column: 72, scope: !3631)
!3636 = !DILocalVariable(name: "propname", arg: 2, scope: !3631, file: !2100, line: 495, type: !313)
!3637 = !DILocation(line: 495, column: 23, scope: !3631)
!3638 = !DILocalVariable(name: "out_values", arg: 3, scope: !3631, file: !2100, line: 496, type: !833)
!3639 = !DILocation(line: 496, column: 16, scope: !3631)
!3640 = !DILocalVariable(name: "sz", arg: 4, scope: !3631, file: !2100, line: 496, type: !416)
!3641 = !DILocation(line: 496, column: 35, scope: !3631)
!3642 = !DILocalVariable(name: "ret", scope: !3631, file: !2100, line: 498, type: !33)
!3643 = !DILocation(line: 498, column: 6, scope: !3631)
!3644 = !DILocation(line: 498, column: 48, scope: !3631)
!3645 = !DILocation(line: 498, column: 52, scope: !3631)
!3646 = !DILocation(line: 498, column: 62, scope: !3631)
!3647 = !DILocation(line: 499, column: 13, scope: !3631)
!3648 = !DILocation(line: 498, column: 12, scope: !3631)
!3649 = !DILocation(line: 500, column: 6, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3631, file: !2100, line: 500, column: 6)
!3651 = !DILocation(line: 500, column: 10, scope: !3650)
!3652 = !DILocation(line: 500, column: 6, scope: !3631)
!3653 = !DILocation(line: 501, column: 3, scope: !3650)
!3654 = !DILocation(line: 503, column: 10, scope: !3650)
!3655 = !DILocation(line: 503, column: 3, scope: !3650)
!3656 = !DILocation(line: 504, column: 1, scope: !3631)
!3657 = distinct !DISubprogram(name: "bitmap_empty", scope: !3658, file: !3658, line: 382, type: !3659, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3658 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!33, !3661, !7}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!3663 = !DILocalVariable(name: "src", arg: 1, scope: !3657, file: !3658, line: 382, type: !3661)
!3664 = !DILocation(line: 382, column: 53, scope: !3657)
!3665 = !DILocalVariable(name: "nbits", arg: 2, scope: !3657, file: !3658, line: 382, type: !7)
!3666 = !DILocation(line: 382, column: 67, scope: !3657)
!3667 = !DILocation(line: 384, column: 6, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3657, file: !3658, line: 384, column: 6)
!3669 = !DILocation(line: 384, column: 6, scope: !3657)
!3670 = !DILocation(line: 385, column: 14, scope: !3668)
!3671 = !DILocation(line: 385, column: 13, scope: !3668)
!3672 = !DILocation(line: 385, column: 20, scope: !3668)
!3673 = !DILocation(line: 385, column: 18, scope: !3668)
!3674 = !DILocation(line: 385, column: 10, scope: !3668)
!3675 = !DILocation(line: 385, column: 3, scope: !3668)
!3676 = !DILocation(line: 387, column: 24, scope: !3657)
!3677 = !DILocation(line: 387, column: 29, scope: !3657)
!3678 = !DILocation(line: 387, column: 9, scope: !3657)
!3679 = !DILocation(line: 387, column: 39, scope: !3657)
!3680 = !DILocation(line: 387, column: 36, scope: !3657)
!3681 = !DILocation(line: 387, column: 2, scope: !3657)
!3682 = !DILocation(line: 388, column: 1, scope: !3657)
!3683 = distinct !DISubprogram(name: "set_bit", scope: !3684, file: !3684, line: 26, type: !3685, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3684 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !303, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !281)
!3689 = !DILocalVariable(name: "nr", arg: 1, scope: !3690, file: !3198, line: 52, type: !303)
!3690 = distinct !DISubprogram(name: "arch_set_bit", scope: !3198, file: !3198, line: 52, type: !3685, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3691 = !DILocation(line: 52, column: 19, scope: !3690, inlinedAt: !3692)
!3692 = distinct !DILocation(line: 29, column: 2, scope: !3683)
!3693 = !DILocalVariable(name: "addr", arg: 2, scope: !3690, file: !3198, line: 52, type: !3687)
!3694 = !DILocation(line: 52, column: 47, scope: !3690, inlinedAt: !3692)
!3695 = !DILocalVariable(name: "v", arg: 1, scope: !3696, file: !3697, line: 84, type: !3700)
!3696 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3697, file: !3697, line: 84, type: !3698, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3697 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3698 = !DISubroutineType(types: !3699)
!3699 = !{null, !3700, !416}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3702)
!3702 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3703 = !DILocation(line: 84, column: 74, scope: !3696, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 28, column: 2, scope: !3683)
!3705 = !DILocalVariable(name: "size", arg: 2, scope: !3696, file: !3697, line: 84, type: !416)
!3706 = !DILocation(line: 84, column: 84, scope: !3696, inlinedAt: !3704)
!3707 = !DILocalVariable(name: "nr", arg: 1, scope: !3683, file: !3684, line: 26, type: !303)
!3708 = !DILocation(line: 26, column: 33, scope: !3683)
!3709 = !DILocalVariable(name: "addr", arg: 2, scope: !3683, file: !3684, line: 26, type: !3687)
!3710 = !DILocation(line: 26, column: 61, scope: !3683)
!3711 = !DILocation(line: 28, column: 26, scope: !3683)
!3712 = !DILocation(line: 28, column: 33, scope: !3683)
!3713 = !DILocation(line: 28, column: 31, scope: !3683)
!3714 = !DILocation(line: 86, column: 20, scope: !3696, inlinedAt: !3704)
!3715 = !DILocation(line: 86, column: 23, scope: !3696, inlinedAt: !3704)
!3716 = !DILocation(line: 86, column: 2, scope: !3696, inlinedAt: !3704)
!3717 = !DILocation(line: 87, column: 2, scope: !3696, inlinedAt: !3704)
!3718 = !DILocation(line: 29, column: 15, scope: !3683)
!3719 = !DILocation(line: 29, column: 19, scope: !3683)
!3720 = !DILocation(line: 54, column: 27, scope: !3721, inlinedAt: !3692)
!3721 = distinct !DILexicalBlock(scope: !3690, file: !3198, line: 54, column: 6)
!3722 = !DILocation(line: 54, column: 6, scope: !3721, inlinedAt: !3692)
!3723 = !DILocation(line: 54, column: 6, scope: !3690, inlinedAt: !3692)
!3724 = !DILocation(line: 56, column: 6, scope: !3725, inlinedAt: !3692)
!3725 = distinct !DILexicalBlock(scope: !3721, file: !3198, line: 54, column: 32)
!3726 = !DILocation(line: 57, column: 12, scope: !3725, inlinedAt: !3692)
!3727 = !DILocation(line: 55, column: 3, scope: !3725, inlinedAt: !3692)
!3728 = !{i32 -2147123183}
!3729 = !DILocation(line: 59, column: 2, scope: !3725, inlinedAt: !3692)
!3730 = !DILocation(line: 61, column: 8, scope: !3731, inlinedAt: !3692)
!3731 = distinct !DILexicalBlock(scope: !3721, file: !3198, line: 59, column: 9)
!3732 = !DILocation(line: 61, column: 32, scope: !3731, inlinedAt: !3692)
!3733 = !DILocation(line: 60, column: 3, scope: !3731, inlinedAt: !3692)
!3734 = !{i32 -2147123051}
!3735 = !DILocation(line: 30, column: 1, scope: !3683)
!3736 = distinct !DISubprogram(name: "cpumask_check", scope: !276, file: !276, line: 142, type: !3737, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!7, !7}
!3739 = !DILocalVariable(name: "cpu", arg: 1, scope: !3736, file: !276, line: 142, type: !7)
!3740 = !DILocation(line: 142, column: 55, scope: !3736)
!3741 = !DILocation(line: 144, column: 20, scope: !3736)
!3742 = !DILocation(line: 144, column: 2, scope: !3736)
!3743 = !DILocation(line: 145, column: 9, scope: !3736)
!3744 = !DILocation(line: 145, column: 2, scope: !3736)
!3745 = distinct !DISubprogram(name: "kasan_check_write", scope: !3746, file: !3746, line: 38, type: !3747, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3746 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!288, !3700, !7}
!3749 = !DILocalVariable(name: "p", arg: 1, scope: !3745, file: !3746, line: 38, type: !3700)
!3750 = !DILocation(line: 38, column: 59, scope: !3745)
!3751 = !DILocalVariable(name: "size", arg: 2, scope: !3745, file: !3746, line: 38, type: !7)
!3752 = !DILocation(line: 38, column: 75, scope: !3745)
!3753 = !DILocation(line: 40, column: 2, scope: !3745)
!3754 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3755, file: !3755, line: 178, type: !3756, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3755 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3756 = !DISubroutineType(types: !3757)
!3757 = !{null, !3700, !416, !33}
!3758 = !DILocalVariable(name: "ptr", arg: 1, scope: !3754, file: !3755, line: 178, type: !3700)
!3759 = !DILocation(line: 178, column: 60, scope: !3754)
!3760 = !DILocalVariable(name: "size", arg: 2, scope: !3754, file: !3755, line: 178, type: !416)
!3761 = !DILocation(line: 178, column: 72, scope: !3754)
!3762 = !DILocalVariable(name: "type", arg: 3, scope: !3754, file: !3755, line: 179, type: !33)
!3763 = !DILocation(line: 179, column: 15, scope: !3754)
!3764 = !DILocation(line: 179, column: 23, scope: !3754)
!3765 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !276, file: !276, line: 134, type: !3766, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{null, !7, !7}
!3768 = !DILocalVariable(name: "cpu", arg: 1, scope: !3765, file: !276, line: 134, type: !7)
!3769 = !DILocation(line: 134, column: 51, scope: !3765)
!3770 = !DILocalVariable(name: "bits", arg: 2, scope: !3765, file: !276, line: 134, type: !7)
!3771 = !DILocation(line: 134, column: 69, scope: !3765)
!3772 = !DILocation(line: 139, column: 1, scope: !3765)
!3773 = distinct !DISubprogram(name: "cpu_cache_sysfs_init", scope: !3, file: !3, line: 586, type: !2444, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3774 = !DILocalVariable(name: "cpu", arg: 1, scope: !3773, file: !3, line: 586, type: !7)
!3775 = !DILocation(line: 586, column: 46, scope: !3773)
!3776 = !DILocalVariable(name: "dev", scope: !3773, file: !3, line: 588, type: !305)
!3777 = !DILocation(line: 588, column: 17, scope: !3773)
!3778 = !DILocation(line: 588, column: 38, scope: !3773)
!3779 = !DILocation(line: 588, column: 23, scope: !3773)
!3780 = !DILocation(line: 590, column: 6, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 590, column: 6)
!3782 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 590, column: 6)
!3783 = !DILocation(line: 590, column: 6, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 590, column: 6)
!3785 = !DILocalVariable(name: "__vpp_verify", scope: !3786, file: !3, line: 590, type: !1331)
!3786 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 590, column: 6)
!3787 = !DILocation(line: 590, column: 6, scope: !3786)
!3788 = !DILocation(line: 590, column: 6, scope: !3782)
!3789 = !DILocation(line: 590, column: 29, scope: !3782)
!3790 = !DILocation(line: 590, column: 6, scope: !3773)
!3791 = !DILocation(line: 591, column: 3, scope: !3782)
!3792 = !DILocation(line: 593, column: 45, scope: !3773)
!3793 = !DILocation(line: 593, column: 27, scope: !3773)
!3794 = !DILocation(line: 593, column: 2, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 593, column: 2)
!3796 = !DILocation(line: 593, column: 2, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 593, column: 2)
!3798 = !DILocalVariable(name: "__vpp_verify", scope: !3799, file: !3, line: 593, type: !1331)
!3799 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 593, column: 2)
!3800 = !DILocation(line: 593, column: 2, scope: !3799)
!3801 = !DILocation(line: 593, column: 25, scope: !3773)
!3802 = !DILocation(line: 594, column: 13, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 594, column: 13)
!3804 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 594, column: 6)
!3805 = !DILocation(line: 594, column: 13, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 594, column: 13)
!3807 = !DILocalVariable(name: "__vpp_verify", scope: !3808, file: !3, line: 594, type: !1331)
!3808 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 594, column: 13)
!3809 = !DILocation(line: 594, column: 13, scope: !3808)
!3810 = !DILocation(line: 594, column: 13, scope: !3804)
!3811 = !DILocation(line: 594, column: 6, scope: !3804)
!3812 = !DILocation(line: 594, column: 6, scope: !3773)
!3813 = !DILocation(line: 595, column: 18, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 595, column: 18)
!3815 = !DILocation(line: 595, column: 18, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 595, column: 18)
!3817 = !DILocalVariable(name: "__vpp_verify", scope: !3818, file: !3, line: 595, type: !1331)
!3818 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 595, column: 18)
!3819 = !DILocation(line: 595, column: 18, scope: !3818)
!3820 = !DILocation(line: 595, column: 18, scope: !3804)
!3821 = !DILocation(line: 595, column: 10, scope: !3804)
!3822 = !DILocation(line: 595, column: 3, scope: !3804)
!3823 = !DILocation(line: 598, column: 35, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 598, column: 35)
!3825 = !DILocation(line: 598, column: 35, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 598, column: 35)
!3827 = !DILocalVariable(name: "__vpp_verify", scope: !3828, file: !3, line: 598, type: !1331)
!3828 = distinct !DILexicalBlock(scope: !3826, file: !3, line: 598, column: 35)
!3829 = !DILocation(line: 598, column: 35, scope: !3828)
!3830 = !DILocation(line: 598, column: 35, scope: !3773)
!3831 = !DILocation(line: 598, column: 27, scope: !3773)
!3832 = !DILocation(line: 598, column: 2, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 598, column: 2)
!3834 = !DILocation(line: 598, column: 2, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3833, file: !3, line: 598, column: 2)
!3836 = !DILocalVariable(name: "__vpp_verify", scope: !3837, file: !3, line: 598, type: !1331)
!3837 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 598, column: 2)
!3838 = !DILocation(line: 598, column: 2, scope: !3837)
!3839 = !DILocation(line: 598, column: 25, scope: !3773)
!3840 = !DILocation(line: 600, column: 6, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 600, column: 6)
!3842 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 600, column: 6)
!3843 = !DILocation(line: 600, column: 6, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 600, column: 6)
!3845 = !DILocalVariable(name: "__vpp_verify", scope: !3846, file: !3, line: 600, type: !1331)
!3846 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 600, column: 6)
!3847 = !DILocation(line: 600, column: 6, scope: !3846)
!3848 = !DILocation(line: 600, column: 6, scope: !3842)
!3849 = !DILocation(line: 600, column: 6, scope: !3773)
!3850 = !DILocation(line: 601, column: 3, scope: !3842)
!3851 = !DILocation(line: 603, column: 2, scope: !3773)
!3852 = !DILabel(scope: !3773, name: "err_out", file: !3, line: 605)
!3853 = !DILocation(line: 605, column: 1, scope: !3773)
!3854 = !DILocation(line: 606, column: 23, scope: !3773)
!3855 = !DILocation(line: 606, column: 2, scope: !3773)
!3856 = !DILocation(line: 607, column: 2, scope: !3773)
!3857 = !DILocation(line: 608, column: 1, scope: !3773)
!3858 = distinct !DISubprogram(name: "cache_get_attribute_groups", scope: !3, file: !3, line: 552, type: !3859, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!422, !263}
!3861 = !DILocalVariable(name: "this_leaf", arg: 1, scope: !3858, file: !3, line: 552, type: !263)
!3862 = !DILocation(line: 552, column: 46, scope: !3858)
!3863 = !DILocalVariable(name: "priv_group", scope: !3858, file: !3, line: 554, type: !423)
!3864 = !DILocation(line: 554, column: 32, scope: !3858)
!3865 = !DILocation(line: 555, column: 25, scope: !3858)
!3866 = !DILocation(line: 555, column: 4, scope: !3858)
!3867 = !DILocation(line: 557, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 557, column: 6)
!3869 = !DILocation(line: 557, column: 6, scope: !3858)
!3870 = !DILocation(line: 558, column: 3, scope: !3868)
!3871 = !DILocation(line: 560, column: 7, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3858, file: !3, line: 560, column: 6)
!3873 = !DILocation(line: 560, column: 6, scope: !3858)
!3874 = !DILocation(line: 561, column: 29, scope: !3872)
!3875 = !DILocation(line: 561, column: 27, scope: !3872)
!3876 = !DILocation(line: 561, column: 3, scope: !3872)
!3877 = !DILocation(line: 563, column: 2, scope: !3858)
!3878 = !DILocation(line: 564, column: 1, scope: !3858)
!3879 = distinct !DISubprogram(name: "IS_ERR", scope: !3880, file: !3880, line: 34, type: !3881, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3880 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!288, !1331}
!3883 = !DILocalVariable(name: "ptr", arg: 1, scope: !3879, file: !3880, line: 34, type: !1331)
!3884 = !DILocation(line: 34, column: 60, scope: !3879)
!3885 = !DILocation(line: 36, column: 9, scope: !3879)
!3886 = !DILocation(line: 36, column: 2, scope: !3879)
!3887 = distinct !DISubprogram(name: "PTR_ERR", scope: !3880, file: !3880, line: 29, type: !3888, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!303, !1331}
!3890 = !DILocalVariable(name: "ptr", arg: 1, scope: !3887, file: !3880, line: 29, type: !1331)
!3891 = !DILocation(line: 29, column: 61, scope: !3887)
!3892 = !DILocation(line: 31, column: 16, scope: !3887)
!3893 = !DILocation(line: 31, column: 9, scope: !3887)
!3894 = !DILocation(line: 31, column: 2, scope: !3887)
!3895 = distinct !DISubprogram(name: "cpu_cache_sysfs_exit", scope: !3, file: !3, line: 567, type: !2706, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3896 = !DILocalVariable(name: "cpu", arg: 1, scope: !3895, file: !3, line: 567, type: !7)
!3897 = !DILocation(line: 567, column: 47, scope: !3895)
!3898 = !DILocalVariable(name: "i", scope: !3895, file: !3, line: 569, type: !33)
!3899 = !DILocation(line: 569, column: 6, scope: !3895)
!3900 = !DILocalVariable(name: "ci_dev", scope: !3895, file: !3, line: 570, type: !305)
!3901 = !DILocation(line: 570, column: 17, scope: !3895)
!3902 = !DILocation(line: 572, column: 6, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 572, column: 6)
!3904 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 572, column: 6)
!3905 = !DILocation(line: 572, column: 6, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 572, column: 6)
!3907 = !DILocalVariable(name: "__vpp_verify", scope: !3908, file: !3, line: 572, type: !1331)
!3908 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 572, column: 6)
!3909 = !DILocation(line: 572, column: 6, scope: !3908)
!3910 = !DILocation(line: 572, column: 6, scope: !3904)
!3911 = !DILocation(line: 572, column: 6, scope: !3895)
!3912 = !DILocation(line: 573, column: 10, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 573, column: 3)
!3914 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 572, column: 30)
!3915 = !DILocation(line: 573, column: 8, scope: !3913)
!3916 = !DILocation(line: 573, column: 15, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3913, file: !3, line: 573, column: 3)
!3918 = !DILocation(line: 573, column: 19, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 573, column: 19)
!3920 = !DILocation(line: 573, column: 19, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 573, column: 19)
!3922 = !DILocalVariable(name: "__vpp_verify", scope: !3923, file: !3, line: 573, type: !1331)
!3923 = distinct !DILexicalBlock(scope: !3921, file: !3, line: 573, column: 19)
!3924 = !DILocation(line: 573, column: 19, scope: !3923)
!3925 = !DILocation(line: 573, column: 19, scope: !3917)
!3926 = !DILocation(line: 573, column: 17, scope: !3917)
!3927 = !DILocation(line: 573, column: 3, scope: !3913)
!3928 = !DILocation(line: 574, column: 13, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 574, column: 13)
!3930 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 573, column: 43)
!3931 = !DILocation(line: 574, column: 13, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3929, file: !3, line: 574, column: 13)
!3933 = !DILocalVariable(name: "__vpp_verify", scope: !3934, file: !3, line: 574, type: !1331)
!3934 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 574, column: 13)
!3935 = !DILocation(line: 574, column: 13, scope: !3934)
!3936 = !DILocation(line: 574, column: 13, scope: !3930)
!3937 = !DILocation(line: 574, column: 11, scope: !3930)
!3938 = !DILocation(line: 575, column: 9, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 575, column: 8)
!3940 = !DILocation(line: 575, column: 8, scope: !3930)
!3941 = !DILocation(line: 576, column: 5, scope: !3939)
!3942 = !DILocation(line: 577, column: 22, scope: !3930)
!3943 = !DILocation(line: 577, column: 4, scope: !3930)
!3944 = !DILocation(line: 578, column: 3, scope: !3930)
!3945 = !DILocation(line: 573, column: 39, scope: !3917)
!3946 = !DILocation(line: 573, column: 3, scope: !3917)
!3947 = distinct !{!3947, !3927, !3948}
!3948 = !DILocation(line: 578, column: 3, scope: !3913)
!3949 = !DILocation(line: 579, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 579, column: 9)
!3951 = !DILocation(line: 579, column: 9, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 579, column: 9)
!3953 = !DILocalVariable(name: "__vpp_verify", scope: !3954, file: !3, line: 579, type: !1331)
!3954 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 579, column: 9)
!3955 = !DILocation(line: 579, column: 9, scope: !3954)
!3956 = !DILocation(line: 579, column: 9, scope: !3914)
!3957 = !DILocation(line: 579, column: 3, scope: !3914)
!3958 = !DILocation(line: 580, column: 3, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 580, column: 3)
!3960 = !DILocation(line: 580, column: 3, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 580, column: 3)
!3962 = !DILocalVariable(name: "__vpp_verify", scope: !3963, file: !3, line: 580, type: !1331)
!3963 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 580, column: 3)
!3964 = !DILocation(line: 580, column: 3, scope: !3963)
!3965 = !DILocation(line: 580, column: 26, scope: !3914)
!3966 = !DILocation(line: 581, column: 2, scope: !3914)
!3967 = !DILocation(line: 582, column: 20, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 582, column: 20)
!3969 = !DILocation(line: 582, column: 20, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 582, column: 20)
!3971 = !DILocalVariable(name: "__vpp_verify", scope: !3972, file: !3, line: 582, type: !1331)
!3972 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 582, column: 20)
!3973 = !DILocation(line: 582, column: 20, scope: !3972)
!3974 = !DILocation(line: 582, column: 20, scope: !3895)
!3975 = !DILocation(line: 582, column: 2, scope: !3895)
!3976 = !DILocation(line: 583, column: 2, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 583, column: 2)
!3978 = !DILocation(line: 583, column: 2, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 583, column: 2)
!3980 = !DILocalVariable(name: "__vpp_verify", scope: !3981, file: !3, line: 583, type: !1331)
!3981 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 583, column: 2)
!3982 = !DILocation(line: 583, column: 2, scope: !3981)
!3983 = !DILocation(line: 583, column: 25, scope: !3895)
!3984 = !DILocation(line: 584, column: 1, scope: !3895)
!3985 = distinct !DISubprogram(name: "cache_default_attrs_is_visible", scope: !3, file: !3, line: 487, type: !430, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!3986 = !DILocalVariable(name: "kobj", arg: 1, scope: !3985, file: !3, line: 487, type: !322)
!3987 = !DILocation(line: 487, column: 48, scope: !3985)
!3988 = !DILocalVariable(name: "attr", arg: 2, scope: !3985, file: !3, line: 488, type: !405)
!3989 = !DILocation(line: 488, column: 29, scope: !3985)
!3990 = !DILocalVariable(name: "unused", arg: 3, scope: !3985, file: !3, line: 488, type: !33)
!3991 = !DILocation(line: 488, column: 39, scope: !3985)
!3992 = !DILocalVariable(name: "dev", scope: !3985, file: !3, line: 490, type: !305)
!3993 = !DILocation(line: 490, column: 17, scope: !3985)
!3994 = !DILocation(line: 490, column: 35, scope: !3985)
!3995 = !DILocation(line: 490, column: 23, scope: !3985)
!3996 = !DILocalVariable(name: "this_leaf", scope: !3985, file: !3, line: 491, type: !263)
!3997 = !DILocation(line: 491, column: 20, scope: !3985)
!3998 = !DILocation(line: 491, column: 48, scope: !3985)
!3999 = !DILocation(line: 491, column: 32, scope: !3985)
!4000 = !DILocalVariable(name: "mask", scope: !3985, file: !3, line: 492, type: !296)
!4001 = !DILocation(line: 492, column: 24, scope: !3985)
!4002 = !DILocation(line: 492, column: 32, scope: !3985)
!4003 = !DILocation(line: 492, column: 43, scope: !3985)
!4004 = !DILocalVariable(name: "mode", scope: !3985, file: !3, line: 493, type: !410)
!4005 = !DILocation(line: 493, column: 10, scope: !3985)
!4006 = !DILocation(line: 493, column: 17, scope: !3985)
!4007 = !DILocation(line: 493, column: 23, scope: !3985)
!4008 = !DILocation(line: 495, column: 7, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 495, column: 6)
!4010 = !DILocation(line: 495, column: 12, scope: !4009)
!4011 = !DILocation(line: 495, column: 34, scope: !4009)
!4012 = !DILocation(line: 495, column: 38, scope: !4009)
!4013 = !DILocation(line: 495, column: 49, scope: !4009)
!4014 = !DILocation(line: 495, column: 60, scope: !4009)
!4015 = !DILocation(line: 495, column: 6, scope: !3985)
!4016 = !DILocation(line: 496, column: 10, scope: !4009)
!4017 = !DILocation(line: 496, column: 3, scope: !4009)
!4018 = !DILocation(line: 497, column: 7, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 497, column: 6)
!4020 = !DILocation(line: 497, column: 12, scope: !4019)
!4021 = !DILocation(line: 497, column: 36, scope: !4019)
!4022 = !DILocation(line: 497, column: 39, scope: !4019)
!4023 = !DILocation(line: 497, column: 50, scope: !4019)
!4024 = !DILocation(line: 497, column: 6, scope: !3985)
!4025 = !DILocation(line: 498, column: 10, scope: !4019)
!4026 = !DILocation(line: 498, column: 3, scope: !4019)
!4027 = !DILocation(line: 499, column: 7, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 499, column: 6)
!4029 = !DILocation(line: 499, column: 12, scope: !4028)
!4030 = !DILocation(line: 499, column: 37, scope: !4028)
!4031 = !DILocation(line: 499, column: 40, scope: !4028)
!4032 = !DILocation(line: 499, column: 51, scope: !4028)
!4033 = !DILocation(line: 499, column: 6, scope: !3985)
!4034 = !DILocation(line: 500, column: 10, scope: !4028)
!4035 = !DILocation(line: 500, column: 3, scope: !4028)
!4036 = !DILocation(line: 501, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 501, column: 6)
!4038 = !DILocation(line: 501, column: 12, scope: !4037)
!4039 = !DILocation(line: 501, column: 46, scope: !4037)
!4040 = !DILocation(line: 501, column: 64, scope: !4037)
!4041 = !DILocation(line: 501, column: 50, scope: !4037)
!4042 = !DILocation(line: 501, column: 6, scope: !3985)
!4043 = !DILocation(line: 502, column: 10, scope: !4037)
!4044 = !DILocation(line: 502, column: 3, scope: !4037)
!4045 = !DILocation(line: 503, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 503, column: 6)
!4047 = !DILocation(line: 503, column: 12, scope: !4046)
!4048 = !DILocation(line: 503, column: 47, scope: !4046)
!4049 = !DILocation(line: 503, column: 65, scope: !4046)
!4050 = !DILocation(line: 503, column: 51, scope: !4046)
!4051 = !DILocation(line: 503, column: 6, scope: !3985)
!4052 = !DILocation(line: 504, column: 10, scope: !4046)
!4053 = !DILocation(line: 504, column: 3, scope: !4046)
!4054 = !DILocation(line: 505, column: 7, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 505, column: 6)
!4056 = !DILocation(line: 505, column: 12, scope: !4055)
!4057 = !DILocation(line: 505, column: 51, scope: !4055)
!4058 = !DILocation(line: 506, column: 6, scope: !4055)
!4059 = !DILocation(line: 506, column: 17, scope: !4055)
!4060 = !DILocation(line: 505, column: 6, scope: !3985)
!4061 = !DILocation(line: 507, column: 10, scope: !4055)
!4062 = !DILocation(line: 507, column: 3, scope: !4055)
!4063 = !DILocation(line: 508, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 508, column: 6)
!4065 = !DILocation(line: 508, column: 12, scope: !4064)
!4066 = !DILocation(line: 508, column: 53, scope: !4064)
!4067 = !DILocation(line: 509, column: 6, scope: !4064)
!4068 = !DILocation(line: 509, column: 17, scope: !4064)
!4069 = !DILocation(line: 508, column: 6, scope: !3985)
!4070 = !DILocation(line: 510, column: 10, scope: !4064)
!4071 = !DILocation(line: 510, column: 3, scope: !4064)
!4072 = !DILocation(line: 511, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 511, column: 6)
!4074 = !DILocation(line: 511, column: 12, scope: !4073)
!4075 = !DILocation(line: 511, column: 46, scope: !4073)
!4076 = !DILocation(line: 512, column: 6, scope: !4073)
!4077 = !DILocation(line: 512, column: 17, scope: !4073)
!4078 = !DILocation(line: 511, column: 6, scope: !3985)
!4079 = !DILocation(line: 513, column: 10, scope: !4073)
!4080 = !DILocation(line: 513, column: 3, scope: !4073)
!4081 = !DILocation(line: 514, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 514, column: 6)
!4083 = !DILocation(line: 514, column: 12, scope: !4082)
!4084 = !DILocation(line: 514, column: 36, scope: !4082)
!4085 = !DILocation(line: 514, column: 39, scope: !4082)
!4086 = !DILocation(line: 514, column: 50, scope: !4082)
!4087 = !DILocation(line: 514, column: 6, scope: !3985)
!4088 = !DILocation(line: 515, column: 10, scope: !4082)
!4089 = !DILocation(line: 515, column: 3, scope: !4082)
!4090 = !DILocation(line: 516, column: 7, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 516, column: 6)
!4092 = !DILocation(line: 516, column: 12, scope: !4091)
!4093 = !DILocation(line: 516, column: 44, scope: !4091)
!4094 = !DILocation(line: 517, column: 7, scope: !4091)
!4095 = !DILocation(line: 517, column: 18, scope: !4091)
!4096 = !DILocation(line: 517, column: 29, scope: !4091)
!4097 = !DILocation(line: 516, column: 6, scope: !3985)
!4098 = !DILocation(line: 518, column: 10, scope: !4091)
!4099 = !DILocation(line: 518, column: 3, scope: !4091)
!4100 = !DILocation(line: 519, column: 7, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 519, column: 6)
!4102 = !DILocation(line: 519, column: 12, scope: !4101)
!4103 = !DILocation(line: 519, column: 49, scope: !4101)
!4104 = !DILocation(line: 520, column: 7, scope: !4101)
!4105 = !DILocation(line: 520, column: 18, scope: !4101)
!4106 = !DILocation(line: 520, column: 29, scope: !4101)
!4107 = !DILocation(line: 519, column: 6, scope: !3985)
!4108 = !DILocation(line: 521, column: 10, scope: !4101)
!4109 = !DILocation(line: 521, column: 3, scope: !4101)
!4110 = !DILocation(line: 522, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 522, column: 6)
!4112 = !DILocation(line: 522, column: 12, scope: !4111)
!4113 = !DILocation(line: 522, column: 55, scope: !4111)
!4114 = !DILocation(line: 523, column: 6, scope: !4111)
!4115 = !DILocation(line: 523, column: 17, scope: !4111)
!4116 = !DILocation(line: 522, column: 6, scope: !3985)
!4117 = !DILocation(line: 524, column: 10, scope: !4111)
!4118 = !DILocation(line: 524, column: 3, scope: !4111)
!4119 = !DILocation(line: 526, column: 2, scope: !3985)
!4120 = !DILocation(line: 527, column: 1, scope: !3985)
!4121 = distinct !DISubprogram(name: "kobj_to_dev", scope: !224, file: !224, line: 591, type: !4122, scopeLine: 592, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!305, !322}
!4124 = !DILocalVariable(name: "kobj", arg: 1, scope: !4121, file: !224, line: 591, type: !322)
!4125 = !DILocation(line: 591, column: 58, scope: !4121)
!4126 = !DILocalVariable(name: "__mptr", scope: !4127, file: !224, line: 593, type: !286)
!4127 = distinct !DILexicalBlock(scope: !4121, file: !224, line: 593, column: 9)
!4128 = !DILocation(line: 593, column: 9, scope: !4127)
!4129 = !DILocation(line: 593, column: 9, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4127, file: !224, line: 593, column: 9)
!4131 = !DILocation(line: 593, column: 2, scope: !4121)
!4132 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !224, file: !224, line: 655, type: !4133, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!286, !2135}
!4135 = !DILocalVariable(name: "dev", arg: 1, scope: !4132, file: !224, line: 655, type: !2135)
!4136 = !DILocation(line: 655, column: 58, scope: !4132)
!4137 = !DILocation(line: 657, column: 9, scope: !4132)
!4138 = !DILocation(line: 657, column: 14, scope: !4132)
!4139 = !DILocation(line: 657, column: 2, scope: !4132)
!4140 = distinct !DISubprogram(name: "id_show", scope: !3, file: !3, line: 368, type: !2384, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4141 = !DILocalVariable(name: "dev", arg: 1, scope: !4140, file: !3, line: 368, type: !305)
!4142 = !DILocation(line: 368, column: 1, scope: !4140)
!4143 = !DILocalVariable(name: "attr", arg: 2, scope: !4140, file: !3, line: 368, type: !2386)
!4144 = !DILocalVariable(name: "buf", arg: 3, scope: !4140, file: !3, line: 368, type: !370)
!4145 = !DILocalVariable(name: "this_leaf", scope: !4140, file: !3, line: 368, type: !263)
!4146 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 401, type: !2384, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4147 = !DILocalVariable(name: "dev", arg: 1, scope: !4146, file: !3, line: 401, type: !305)
!4148 = !DILocation(line: 401, column: 41, scope: !4146)
!4149 = !DILocalVariable(name: "attr", arg: 2, scope: !4146, file: !3, line: 402, type: !2386)
!4150 = !DILocation(line: 402, column: 30, scope: !4146)
!4151 = !DILocalVariable(name: "buf", arg: 3, scope: !4146, file: !3, line: 402, type: !370)
!4152 = !DILocation(line: 402, column: 42, scope: !4146)
!4153 = !DILocalVariable(name: "this_leaf", scope: !4146, file: !3, line: 404, type: !263)
!4154 = !DILocation(line: 404, column: 20, scope: !4146)
!4155 = !DILocation(line: 404, column: 48, scope: !4146)
!4156 = !DILocation(line: 404, column: 32, scope: !4146)
!4157 = !DILocalVariable(name: "output", scope: !4146, file: !3, line: 405, type: !313)
!4158 = !DILocation(line: 405, column: 14, scope: !4146)
!4159 = !DILocation(line: 407, column: 10, scope: !4146)
!4160 = !DILocation(line: 407, column: 21, scope: !4146)
!4161 = !DILocation(line: 407, column: 2, scope: !4146)
!4162 = !DILocation(line: 409, column: 10, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 407, column: 27)
!4164 = !DILocation(line: 410, column: 3, scope: !4163)
!4165 = !DILocation(line: 412, column: 10, scope: !4163)
!4166 = !DILocation(line: 413, column: 3, scope: !4163)
!4167 = !DILocation(line: 415, column: 10, scope: !4163)
!4168 = !DILocation(line: 416, column: 3, scope: !4163)
!4169 = !DILocation(line: 418, column: 3, scope: !4163)
!4170 = !DILocation(line: 421, column: 20, scope: !4146)
!4171 = !DILocation(line: 421, column: 33, scope: !4146)
!4172 = !DILocation(line: 421, column: 9, scope: !4146)
!4173 = !DILocation(line: 421, column: 2, scope: !4146)
!4174 = !DILocation(line: 422, column: 1, scope: !4146)
!4175 = distinct !DISubprogram(name: "level_show", scope: !3, file: !3, line: 369, type: !2384, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4176 = !DILocalVariable(name: "dev", arg: 1, scope: !4175, file: !3, line: 369, type: !305)
!4177 = !DILocation(line: 369, column: 1, scope: !4175)
!4178 = !DILocalVariable(name: "attr", arg: 2, scope: !4175, file: !3, line: 369, type: !2386)
!4179 = !DILocalVariable(name: "buf", arg: 3, scope: !4175, file: !3, line: 369, type: !370)
!4180 = !DILocalVariable(name: "this_leaf", scope: !4175, file: !3, line: 369, type: !263)
!4181 = distinct !DISubprogram(name: "shared_cpu_map_show", scope: !3, file: !3, line: 383, type: !2384, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4182 = !DILocalVariable(name: "dev", arg: 1, scope: !4181, file: !3, line: 383, type: !305)
!4183 = !DILocation(line: 383, column: 51, scope: !4181)
!4184 = !DILocalVariable(name: "attr", arg: 2, scope: !4181, file: !3, line: 384, type: !2386)
!4185 = !DILocation(line: 384, column: 33, scope: !4181)
!4186 = !DILocalVariable(name: "buf", arg: 3, scope: !4181, file: !3, line: 384, type: !370)
!4187 = !DILocation(line: 384, column: 45, scope: !4181)
!4188 = !DILocalVariable(name: "this_leaf", scope: !4181, file: !3, line: 386, type: !263)
!4189 = !DILocation(line: 386, column: 20, scope: !4181)
!4190 = !DILocation(line: 386, column: 48, scope: !4181)
!4191 = !DILocation(line: 386, column: 32, scope: !4181)
!4192 = !DILocalVariable(name: "mask", scope: !4181, file: !3, line: 387, type: !296)
!4193 = !DILocation(line: 387, column: 24, scope: !4181)
!4194 = !DILocation(line: 387, column: 32, scope: !4181)
!4195 = !DILocation(line: 387, column: 43, scope: !4181)
!4196 = !DILocation(line: 389, column: 20, scope: !4181)
!4197 = !DILocation(line: 389, column: 47, scope: !4181)
!4198 = !DILocation(line: 389, column: 9, scope: !4181)
!4199 = !DILocation(line: 389, column: 2, scope: !4181)
!4200 = distinct !DISubprogram(name: "shared_cpu_list_show", scope: !3, file: !3, line: 392, type: !2384, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4201 = !DILocalVariable(name: "dev", arg: 1, scope: !4200, file: !3, line: 392, type: !305)
!4202 = !DILocation(line: 392, column: 52, scope: !4200)
!4203 = !DILocalVariable(name: "attr", arg: 2, scope: !4200, file: !3, line: 393, type: !2386)
!4204 = !DILocation(line: 393, column: 34, scope: !4200)
!4205 = !DILocalVariable(name: "buf", arg: 3, scope: !4200, file: !3, line: 393, type: !370)
!4206 = !DILocation(line: 393, column: 46, scope: !4200)
!4207 = !DILocalVariable(name: "this_leaf", scope: !4200, file: !3, line: 395, type: !263)
!4208 = !DILocation(line: 395, column: 20, scope: !4200)
!4209 = !DILocation(line: 395, column: 48, scope: !4200)
!4210 = !DILocation(line: 395, column: 32, scope: !4200)
!4211 = !DILocalVariable(name: "mask", scope: !4200, file: !3, line: 396, type: !296)
!4212 = !DILocation(line: 396, column: 24, scope: !4200)
!4213 = !DILocation(line: 396, column: 32, scope: !4200)
!4214 = !DILocation(line: 396, column: 43, scope: !4200)
!4215 = !DILocation(line: 398, column: 20, scope: !4200)
!4216 = !DILocation(line: 398, column: 48, scope: !4200)
!4217 = !DILocation(line: 398, column: 9, scope: !4200)
!4218 = !DILocation(line: 398, column: 2, scope: !4200)
!4219 = distinct !DISubprogram(name: "coherency_line_size_show", scope: !3, file: !3, line: 370, type: !2384, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4220 = !DILocalVariable(name: "dev", arg: 1, scope: !4219, file: !3, line: 370, type: !305)
!4221 = !DILocation(line: 370, column: 1, scope: !4219)
!4222 = !DILocalVariable(name: "attr", arg: 2, scope: !4219, file: !3, line: 370, type: !2386)
!4223 = !DILocalVariable(name: "buf", arg: 3, scope: !4219, file: !3, line: 370, type: !370)
!4224 = !DILocalVariable(name: "this_leaf", scope: !4219, file: !3, line: 370, type: !263)
!4225 = distinct !DISubprogram(name: "ways_of_associativity_show", scope: !3, file: !3, line: 373, type: !2384, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4226 = !DILocalVariable(name: "dev", arg: 1, scope: !4225, file: !3, line: 373, type: !305)
!4227 = !DILocation(line: 373, column: 1, scope: !4225)
!4228 = !DILocalVariable(name: "attr", arg: 2, scope: !4225, file: !3, line: 373, type: !2386)
!4229 = !DILocalVariable(name: "buf", arg: 3, scope: !4225, file: !3, line: 373, type: !370)
!4230 = !DILocalVariable(name: "this_leaf", scope: !4225, file: !3, line: 373, type: !263)
!4231 = distinct !DISubprogram(name: "number_of_sets_show", scope: !3, file: !3, line: 371, type: !2384, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4232 = !DILocalVariable(name: "dev", arg: 1, scope: !4231, file: !3, line: 371, type: !305)
!4233 = !DILocation(line: 371, column: 1, scope: !4231)
!4234 = !DILocalVariable(name: "attr", arg: 2, scope: !4231, file: !3, line: 371, type: !2386)
!4235 = !DILocalVariable(name: "buf", arg: 3, scope: !4231, file: !3, line: 371, type: !370)
!4236 = !DILocalVariable(name: "this_leaf", scope: !4231, file: !3, line: 371, type: !263)
!4237 = distinct !DISubprogram(name: "size_show", scope: !3, file: !3, line: 375, type: !2384, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4238 = !DILocalVariable(name: "dev", arg: 1, scope: !4237, file: !3, line: 375, type: !305)
!4239 = !DILocation(line: 375, column: 41, scope: !4237)
!4240 = !DILocalVariable(name: "attr", arg: 2, scope: !4237, file: !3, line: 376, type: !2386)
!4241 = !DILocation(line: 376, column: 30, scope: !4237)
!4242 = !DILocalVariable(name: "buf", arg: 3, scope: !4237, file: !3, line: 376, type: !370)
!4243 = !DILocation(line: 376, column: 42, scope: !4237)
!4244 = !DILocalVariable(name: "this_leaf", scope: !4237, file: !3, line: 378, type: !263)
!4245 = !DILocation(line: 378, column: 20, scope: !4237)
!4246 = !DILocation(line: 378, column: 48, scope: !4237)
!4247 = !DILocation(line: 378, column: 32, scope: !4237)
!4248 = !DILocation(line: 380, column: 20, scope: !4237)
!4249 = !DILocation(line: 380, column: 34, scope: !4237)
!4250 = !DILocation(line: 380, column: 45, scope: !4237)
!4251 = !DILocation(line: 380, column: 50, scope: !4237)
!4252 = !DILocation(line: 380, column: 9, scope: !4237)
!4253 = !DILocation(line: 380, column: 2, scope: !4237)
!4254 = distinct !DISubprogram(name: "write_policy_show", scope: !3, file: !3, line: 443, type: !2384, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4255 = !DILocalVariable(name: "dev", arg: 1, scope: !4254, file: !3, line: 443, type: !305)
!4256 = !DILocation(line: 443, column: 49, scope: !4254)
!4257 = !DILocalVariable(name: "attr", arg: 2, scope: !4254, file: !3, line: 444, type: !2386)
!4258 = !DILocation(line: 444, column: 31, scope: !4254)
!4259 = !DILocalVariable(name: "buf", arg: 3, scope: !4254, file: !3, line: 444, type: !370)
!4260 = !DILocation(line: 444, column: 43, scope: !4254)
!4261 = !DILocalVariable(name: "this_leaf", scope: !4254, file: !3, line: 446, type: !263)
!4262 = !DILocation(line: 446, column: 20, scope: !4254)
!4263 = !DILocation(line: 446, column: 48, scope: !4254)
!4264 = !DILocation(line: 446, column: 32, scope: !4254)
!4265 = !DILocalVariable(name: "ci_attr", scope: !4254, file: !3, line: 447, type: !7)
!4266 = !DILocation(line: 447, column: 15, scope: !4254)
!4267 = !DILocation(line: 447, column: 25, scope: !4254)
!4268 = !DILocation(line: 447, column: 36, scope: !4254)
!4269 = !DILocalVariable(name: "n", scope: !4254, file: !3, line: 448, type: !33)
!4270 = !DILocation(line: 448, column: 6, scope: !4254)
!4271 = !DILocation(line: 450, column: 6, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 450, column: 6)
!4273 = !DILocation(line: 450, column: 14, scope: !4272)
!4274 = !DILocation(line: 450, column: 6, scope: !4254)
!4275 = !DILocation(line: 451, column: 18, scope: !4272)
!4276 = !DILocation(line: 451, column: 7, scope: !4272)
!4277 = !DILocation(line: 451, column: 5, scope: !4272)
!4278 = !DILocation(line: 451, column: 3, scope: !4272)
!4279 = !DILocation(line: 452, column: 11, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 452, column: 11)
!4281 = !DILocation(line: 452, column: 19, scope: !4280)
!4282 = !DILocation(line: 452, column: 11, scope: !4272)
!4283 = !DILocation(line: 453, column: 18, scope: !4280)
!4284 = !DILocation(line: 453, column: 7, scope: !4280)
!4285 = !DILocation(line: 453, column: 5, scope: !4280)
!4286 = !DILocation(line: 453, column: 3, scope: !4280)
!4287 = !DILocation(line: 454, column: 9, scope: !4254)
!4288 = !DILocation(line: 454, column: 2, scope: !4254)
!4289 = distinct !DISubprogram(name: "allocation_policy_show", scope: !3, file: !3, line: 424, type: !2384, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4290 = !DILocalVariable(name: "dev", arg: 1, scope: !4289, file: !3, line: 424, type: !305)
!4291 = !DILocation(line: 424, column: 54, scope: !4289)
!4292 = !DILocalVariable(name: "attr", arg: 2, scope: !4289, file: !3, line: 425, type: !2386)
!4293 = !DILocation(line: 425, column: 36, scope: !4289)
!4294 = !DILocalVariable(name: "buf", arg: 3, scope: !4289, file: !3, line: 425, type: !370)
!4295 = !DILocation(line: 425, column: 48, scope: !4289)
!4296 = !DILocalVariable(name: "this_leaf", scope: !4289, file: !3, line: 427, type: !263)
!4297 = !DILocation(line: 427, column: 20, scope: !4289)
!4298 = !DILocation(line: 427, column: 48, scope: !4289)
!4299 = !DILocation(line: 427, column: 32, scope: !4289)
!4300 = !DILocalVariable(name: "ci_attr", scope: !4289, file: !3, line: 428, type: !7)
!4301 = !DILocation(line: 428, column: 15, scope: !4289)
!4302 = !DILocation(line: 428, column: 25, scope: !4289)
!4303 = !DILocation(line: 428, column: 36, scope: !4289)
!4304 = !DILocalVariable(name: "output", scope: !4289, file: !3, line: 429, type: !313)
!4305 = !DILocation(line: 429, column: 14, scope: !4289)
!4306 = !DILocation(line: 431, column: 7, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 431, column: 6)
!4308 = !DILocation(line: 431, column: 15, scope: !4307)
!4309 = !DILocation(line: 431, column: 38, scope: !4307)
!4310 = !DILocation(line: 431, column: 42, scope: !4307)
!4311 = !DILocation(line: 431, column: 50, scope: !4307)
!4312 = !DILocation(line: 431, column: 6, scope: !4289)
!4313 = !DILocation(line: 432, column: 10, scope: !4307)
!4314 = !DILocation(line: 432, column: 3, scope: !4307)
!4315 = !DILocation(line: 433, column: 11, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 433, column: 11)
!4317 = !DILocation(line: 433, column: 19, scope: !4316)
!4318 = !DILocation(line: 433, column: 11, scope: !4307)
!4319 = !DILocation(line: 434, column: 10, scope: !4316)
!4320 = !DILocation(line: 434, column: 3, scope: !4316)
!4321 = !DILocation(line: 435, column: 11, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 435, column: 11)
!4323 = !DILocation(line: 435, column: 19, scope: !4322)
!4324 = !DILocation(line: 435, column: 11, scope: !4316)
!4325 = !DILocation(line: 436, column: 10, scope: !4322)
!4326 = !DILocation(line: 436, column: 3, scope: !4322)
!4327 = !DILocation(line: 438, column: 3, scope: !4322)
!4328 = !DILocation(line: 440, column: 20, scope: !4289)
!4329 = !DILocation(line: 440, column: 33, scope: !4289)
!4330 = !DILocation(line: 440, column: 9, scope: !4289)
!4331 = !DILocation(line: 440, column: 2, scope: !4289)
!4332 = !DILocation(line: 441, column: 1, scope: !4289)
!4333 = distinct !DISubprogram(name: "physical_line_partition_show", scope: !3, file: !3, line: 372, type: !2384, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4334 = !DILocalVariable(name: "dev", arg: 1, scope: !4333, file: !3, line: 372, type: !305)
!4335 = !DILocation(line: 372, column: 1, scope: !4333)
!4336 = !DILocalVariable(name: "attr", arg: 2, scope: !4333, file: !3, line: 372, type: !2386)
!4337 = !DILocalVariable(name: "buf", arg: 3, scope: !4333, file: !3, line: 372, type: !370)
!4338 = !DILocalVariable(name: "this_leaf", scope: !4333, file: !3, line: 372, type: !263)
!4339 = distinct !DISubprogram(name: "cache_shared_cpu_map_remove", scope: !3, file: !3, line: 264, type: !2706, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4340 = !DILocalVariable(name: "cpu", arg: 1, scope: !4339, file: !3, line: 264, type: !7)
!4341 = !DILocation(line: 264, column: 54, scope: !4339)
!4342 = !DILocalVariable(name: "this_cpu_ci", scope: !4339, file: !3, line: 266, type: !259)
!4343 = !DILocation(line: 266, column: 24, scope: !4339)
!4344 = !DILocation(line: 266, column: 56, scope: !4339)
!4345 = !DILocation(line: 266, column: 38, scope: !4339)
!4346 = !DILocalVariable(name: "this_leaf", scope: !4339, file: !3, line: 267, type: !263)
!4347 = !DILocation(line: 267, column: 20, scope: !4339)
!4348 = !DILocalVariable(name: "sib_leaf", scope: !4339, file: !3, line: 267, type: !263)
!4349 = !DILocation(line: 267, column: 32, scope: !4339)
!4350 = !DILocalVariable(name: "sibling", scope: !4339, file: !3, line: 268, type: !7)
!4351 = !DILocation(line: 268, column: 15, scope: !4339)
!4352 = !DILocalVariable(name: "index", scope: !4339, file: !3, line: 268, type: !7)
!4353 = !DILocation(line: 268, column: 24, scope: !4339)
!4354 = !DILocation(line: 270, column: 13, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 270, column: 2)
!4356 = !DILocation(line: 270, column: 7, scope: !4355)
!4357 = !DILocation(line: 270, column: 18, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 270, column: 2)
!4359 = !DILocation(line: 270, column: 26, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 270, column: 26)
!4361 = !DILocation(line: 270, column: 26, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 270, column: 26)
!4363 = !DILocalVariable(name: "__vpp_verify", scope: !4364, file: !3, line: 270, type: !1331)
!4364 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 270, column: 26)
!4365 = !DILocation(line: 270, column: 26, scope: !4364)
!4366 = !DILocation(line: 270, column: 26, scope: !4358)
!4367 = !DILocation(line: 270, column: 24, scope: !4358)
!4368 = !DILocation(line: 270, column: 2, scope: !4355)
!4369 = !DILocation(line: 271, column: 15, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 270, column: 54)
!4371 = !DILocation(line: 271, column: 28, scope: !4370)
!4372 = !DILocation(line: 271, column: 40, scope: !4370)
!4373 = !DILocation(line: 271, column: 38, scope: !4370)
!4374 = !DILocation(line: 271, column: 13, scope: !4370)
!4375 = !DILocation(line: 272, column: 3, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 272, column: 3)
!4377 = !DILocation(line: 272, column: 3, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 272, column: 3)
!4379 = !DILocalVariable(name: "sib_cpu_ci", scope: !4380, file: !3, line: 273, type: !259)
!4380 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 272, column: 53)
!4381 = !DILocation(line: 273, column: 26, scope: !4380)
!4382 = !DILocation(line: 275, column: 8, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 275, column: 8)
!4384 = !DILocation(line: 275, column: 19, scope: !4383)
!4385 = !DILocation(line: 275, column: 16, scope: !4383)
!4386 = !DILocation(line: 275, column: 8, scope: !4380)
!4387 = !DILocation(line: 276, column: 5, scope: !4383)
!4388 = !DILocation(line: 278, column: 35, scope: !4380)
!4389 = !DILocation(line: 278, column: 17, scope: !4380)
!4390 = !DILocation(line: 278, column: 15, scope: !4380)
!4391 = !DILocation(line: 279, column: 9, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 279, column: 8)
!4393 = !DILocation(line: 279, column: 21, scope: !4392)
!4394 = !DILocation(line: 279, column: 8, scope: !4380)
!4395 = !DILocation(line: 280, column: 5, scope: !4392)
!4396 = !DILocation(line: 282, column: 15, scope: !4380)
!4397 = !DILocation(line: 282, column: 27, scope: !4380)
!4398 = !DILocation(line: 282, column: 39, scope: !4380)
!4399 = !DILocation(line: 282, column: 37, scope: !4380)
!4400 = !DILocation(line: 282, column: 13, scope: !4380)
!4401 = !DILocation(line: 283, column: 22, scope: !4380)
!4402 = !DILocation(line: 283, column: 28, scope: !4380)
!4403 = !DILocation(line: 283, column: 38, scope: !4380)
!4404 = !DILocation(line: 283, column: 4, scope: !4380)
!4405 = !DILocation(line: 284, column: 22, scope: !4380)
!4406 = !DILocation(line: 284, column: 32, scope: !4380)
!4407 = !DILocation(line: 284, column: 43, scope: !4380)
!4408 = !DILocation(line: 284, column: 4, scope: !4380)
!4409 = !DILocation(line: 285, column: 3, scope: !4380)
!4410 = distinct !{!4410, !4375, !4411}
!4411 = !DILocation(line: 285, column: 3, scope: !4376)
!4412 = !DILocation(line: 286, column: 7, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 286, column: 7)
!4414 = !DILocation(line: 286, column: 7, scope: !4370)
!4415 = !DILocation(line: 287, column: 16, scope: !4413)
!4416 = !DILocation(line: 287, column: 27, scope: !4413)
!4417 = !DILocation(line: 287, column: 4, scope: !4413)
!4418 = !DILocation(line: 288, column: 2, scope: !4370)
!4419 = !DILocation(line: 270, column: 50, scope: !4358)
!4420 = !DILocation(line: 270, column: 2, scope: !4358)
!4421 = distinct !{!4421, !4368, !4422}
!4422 = !DILocation(line: 288, column: 2, scope: !4355)
!4423 = !DILocation(line: 289, column: 1, scope: !4339)
!4424 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !276, file: !276, line: 348, type: !4425, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !33, !3377}
!4427 = !DILocalVariable(name: "cpu", arg: 1, scope: !4424, file: !276, line: 348, type: !33)
!4428 = !DILocation(line: 348, column: 42, scope: !4424)
!4429 = !DILocalVariable(name: "dstp", arg: 2, scope: !4424, file: !276, line: 348, type: !3377)
!4430 = !DILocation(line: 348, column: 63, scope: !4424)
!4431 = !DILocation(line: 350, column: 26, scope: !4424)
!4432 = !DILocation(line: 350, column: 12, scope: !4424)
!4433 = !DILocation(line: 350, column: 32, scope: !4424)
!4434 = !DILocation(line: 350, column: 2, scope: !4424)
!4435 = !DILocation(line: 351, column: 1, scope: !4424)
!4436 = distinct !DISubprogram(name: "of_node_put", scope: !2100, file: !2100, line: 129, type: !4437, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !2098}
!4439 = !DILocalVariable(name: "node", arg: 1, scope: !4436, file: !2100, line: 129, type: !2098)
!4440 = !DILocation(line: 129, column: 52, scope: !4436)
!4441 = !DILocation(line: 129, column: 60, scope: !4436)
!4442 = distinct !DISubprogram(name: "clear_bit", scope: !3684, file: !3684, line: 39, type: !3685, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4443 = !DILocalVariable(name: "nr", arg: 1, scope: !4444, file: !3198, line: 72, type: !303)
!4444 = distinct !DISubprogram(name: "arch_clear_bit", scope: !3198, file: !3198, line: 72, type: !3685, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4445 = !DILocation(line: 72, column: 21, scope: !4444, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 42, column: 2, scope: !4442)
!4447 = !DILocalVariable(name: "addr", arg: 2, scope: !4444, file: !3198, line: 72, type: !3687)
!4448 = !DILocation(line: 72, column: 49, scope: !4444, inlinedAt: !4446)
!4449 = !DILocation(line: 84, column: 74, scope: !3696, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 41, column: 2, scope: !4442)
!4451 = !DILocation(line: 84, column: 84, scope: !3696, inlinedAt: !4450)
!4452 = !DILocalVariable(name: "nr", arg: 1, scope: !4442, file: !3684, line: 39, type: !303)
!4453 = !DILocation(line: 39, column: 35, scope: !4442)
!4454 = !DILocalVariable(name: "addr", arg: 2, scope: !4442, file: !3684, line: 39, type: !3687)
!4455 = !DILocation(line: 39, column: 63, scope: !4442)
!4456 = !DILocation(line: 41, column: 26, scope: !4442)
!4457 = !DILocation(line: 41, column: 33, scope: !4442)
!4458 = !DILocation(line: 41, column: 31, scope: !4442)
!4459 = !DILocation(line: 86, column: 20, scope: !3696, inlinedAt: !4450)
!4460 = !DILocation(line: 86, column: 23, scope: !3696, inlinedAt: !4450)
!4461 = !DILocation(line: 86, column: 2, scope: !3696, inlinedAt: !4450)
!4462 = !DILocation(line: 87, column: 2, scope: !3696, inlinedAt: !4450)
!4463 = !DILocation(line: 42, column: 17, scope: !4442)
!4464 = !DILocation(line: 42, column: 21, scope: !4442)
!4465 = !DILocation(line: 74, column: 27, scope: !4466, inlinedAt: !4446)
!4466 = distinct !DILexicalBlock(scope: !4444, file: !3198, line: 74, column: 6)
!4467 = !DILocation(line: 74, column: 6, scope: !4466, inlinedAt: !4446)
!4468 = !DILocation(line: 74, column: 6, scope: !4444, inlinedAt: !4446)
!4469 = !DILocation(line: 76, column: 6, scope: !4470, inlinedAt: !4446)
!4470 = distinct !DILexicalBlock(scope: !4466, file: !3198, line: 74, column: 32)
!4471 = !DILocation(line: 77, column: 13, scope: !4470, inlinedAt: !4446)
!4472 = !DILocation(line: 77, column: 12, scope: !4470, inlinedAt: !4446)
!4473 = !DILocation(line: 75, column: 3, scope: !4470, inlinedAt: !4446)
!4474 = !{i32 -2147122221}
!4475 = !DILocation(line: 78, column: 2, scope: !4470, inlinedAt: !4446)
!4476 = !DILocation(line: 80, column: 8, scope: !4477, inlinedAt: !4446)
!4477 = distinct !DILexicalBlock(scope: !4466, file: !3198, line: 78, column: 9)
!4478 = !DILocation(line: 80, column: 32, scope: !4477, inlinedAt: !4446)
!4479 = !DILocation(line: 79, column: 3, scope: !4477, inlinedAt: !4446)
!4480 = !{i32 -2147122089}
!4481 = !DILocation(line: 43, column: 1, scope: !4442)
!4482 = distinct !DISubprogram(name: "cpumask_test_and_clear_cpu", scope: !276, file: !276, line: 393, type: !4483, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!33, !33, !3377}
!4485 = !DILocalVariable(name: "cpu", arg: 1, scope: !4482, file: !276, line: 393, type: !33)
!4486 = !DILocation(line: 393, column: 50, scope: !4482)
!4487 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4482, file: !276, line: 393, type: !3377)
!4488 = !DILocation(line: 393, column: 71, scope: !4482)
!4489 = !DILocation(line: 395, column: 42, scope: !4482)
!4490 = !DILocation(line: 395, column: 28, scope: !4482)
!4491 = !DILocation(line: 395, column: 48, scope: !4482)
!4492 = !DILocation(line: 395, column: 9, scope: !4482)
!4493 = !DILocation(line: 395, column: 2, scope: !4482)
!4494 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !3684, file: !3684, line: 81, type: !4495, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!288, !303, !3687}
!4497 = !DILocalVariable(name: "nr", arg: 1, scope: !4498, file: !3198, line: 160, type: !303)
!4498 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !3198, file: !3198, line: 160, type: !4495, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4499 = !DILocation(line: 160, column: 30, scope: !4498, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 84, column: 9, scope: !4494)
!4501 = !DILocalVariable(name: "addr", arg: 2, scope: !4498, file: !3198, line: 160, type: !3687)
!4502 = !DILocation(line: 160, column: 58, scope: !4498, inlinedAt: !4500)
!4503 = !DILocalVariable(name: "c", scope: !4504, file: !3198, line: 162, type: !288)
!4504 = distinct !DILexicalBlock(scope: !4498, file: !3198, line: 162, column: 9)
!4505 = !DILocation(line: 162, column: 9, scope: !4504, inlinedAt: !4500)
!4506 = !DILocalVariable(name: "v", arg: 1, scope: !4507, file: !3697, line: 99, type: !3700)
!4507 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3697, file: !3697, line: 99, type: !3698, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !343)
!4508 = !DILocation(line: 99, column: 79, scope: !4507, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 83, column: 2, scope: !4494)
!4510 = !DILocalVariable(name: "size", arg: 2, scope: !4507, file: !3697, line: 99, type: !416)
!4511 = !DILocation(line: 99, column: 89, scope: !4507, inlinedAt: !4509)
!4512 = !DILocalVariable(name: "nr", arg: 1, scope: !4494, file: !3684, line: 81, type: !303)
!4513 = !DILocation(line: 81, column: 44, scope: !4494)
!4514 = !DILocalVariable(name: "addr", arg: 2, scope: !4494, file: !3684, line: 81, type: !3687)
!4515 = !DILocation(line: 81, column: 72, scope: !4494)
!4516 = !DILocation(line: 83, column: 31, scope: !4494)
!4517 = !DILocation(line: 83, column: 38, scope: !4494)
!4518 = !DILocation(line: 83, column: 36, scope: !4494)
!4519 = !DILocation(line: 101, column: 20, scope: !4507, inlinedAt: !4509)
!4520 = !DILocation(line: 101, column: 23, scope: !4507, inlinedAt: !4509)
!4521 = !DILocation(line: 101, column: 2, scope: !4507, inlinedAt: !4509)
!4522 = !DILocation(line: 102, column: 2, scope: !4507, inlinedAt: !4509)
!4523 = !DILocation(line: 84, column: 33, scope: !4494)
!4524 = !DILocation(line: 84, column: 37, scope: !4494)
!4525 = !{i32 -2147116737, i32 -2147116641}
!4526 = !DILocation(line: 84, column: 2, scope: !4494)
