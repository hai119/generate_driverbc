; ModuleID = '../bcout/drivers/mfd/syscon.llvm.bc'
source_filename = "drivers/mfd/syscon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall2.init\22, \22a\22\09"
module asm "__initcall_syscon_init2:\09\09\09"
module asm ".long\09syscon_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.regmap_config = type { i8*, i32, i32, i32, i32, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i1 (%struct.device*, i32)*, i8, void (i8*)*, void (i8*)*, i8*, i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32)*, i8, i32, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.regmap_access_table*, %struct.reg_default*, i32, i32, i8*, i32, i64, i64, i8, i8, i8, i8, i32, i32, %struct.regmap_range_cfg*, i32, i8, i32, i32, i8 }
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
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.regmap_access_table = type { %struct.regmap_range*, i32, %struct.regmap_range*, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.kmem_cache = type opaque
%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.regmap = type opaque
%struct.syscon = type { %struct.device_node*, %struct.regmap*, %struct.list_head }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.clk = type opaque
%struct.syscon_platform_data = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@__UNIQUE_ID___addressable_syscon_init159 = internal global i8* bitcast (i32 ()* @syscon_init to i8*), section ".discard.addressable", align 8, !dbg !0
@syscon_list_slock = internal global %struct.spinlock undef, align 1, !dbg !2059
@syscon_list = internal global %struct.list_head { %struct.list_head* @syscon_list, %struct.list_head* @syscon_list }, align 8, !dbg !2061
@syscon_regmap_config = internal constant %struct.regmap_config { i8* null, i32 32, i32 4, i32 0, i32 32, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i1 (%struct.device*, i32)* null, i8 0, void (i8*)* null, void (i8*)* null, i8* null, i32 (i8*, i32, i32*)* null, i32 (i8*, i32, i32)* null, i8 0, i32 0, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.regmap_access_table* null, %struct.reg_default* null, i32 0, i32 0, i8* null, i32 0, i64 0, i64 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, %struct.regmap_range_cfg* null, i32 0, i8 0, i32 0, i32 0, i8 0 }, align 8, !dbg !2063
@.str.1 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"native-endian\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013Failed to retrieve valid hwlock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%pOFn@%llx\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\013regmap init failed\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@syscon_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @syscon_probe, i32 (%struct.platform_device*)* null, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* getelementptr inbounds ([2 x %struct.platform_device_id], [2 x %struct.platform_device_id]* @syscon_ids, i32 0, i32 0), i8 0 }, align 8, !dbg !2156
@syscon_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0 }, %struct.platform_device_id zeroinitializer], align 16, !dbg !2216
@.str.9 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_syscon_init159 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.regmap* @device_node_to_regmap(%struct.device_node* %np) #0 !dbg !2224 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2227, metadata !DIExpression()), !dbg !2228
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2229
  %call = call %struct.regmap* @device_node_get_regmap(%struct.device_node* %0, i1 zeroext false) #9, !dbg !2230
  ret %struct.regmap* %call, !dbg !2231
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.regmap* @device_node_get_regmap(%struct.device_node* %np, i1 zeroext %check_clk) #0 !dbg !2232 {
entry:
  %lock.addr.i17 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i17, metadata !2235, metadata !DIExpression()), !dbg !2241
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2243, metadata !DIExpression()), !dbg !2245
  %retval = alloca %struct.regmap*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %check_clk.addr = alloca i8, align 1
  %entry1 = alloca %struct.syscon*, align 8
  %syscon = alloca %struct.syscon*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.syscon*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp8 = alloca %struct.syscon*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2247, metadata !DIExpression()), !dbg !2248
  %frombool = zext i1 %check_clk to i8
  store i8 %frombool, i8* %check_clk.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %check_clk.addr, metadata !2249, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.declare(metadata %struct.syscon** %entry1, metadata !2251, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.declare(metadata %struct.syscon** %syscon, metadata !2253, metadata !DIExpression()), !dbg !2254
  store %struct.syscon* null, %struct.syscon** %syscon, align 8, !dbg !2254
  store %struct.spinlock* @syscon_list_slock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2255, !srcloc !2257
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2258
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !2258
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !2258
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2260, metadata !DIExpression()), !dbg !2263
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @syscon_list, i32 0, i32 0), align 8, !dbg !2263
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !2263
  store i8* %3, i8** %__mptr, align 8, !dbg !2263
  br label %do.body, !dbg !2263

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2264

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !2263
  %add.ptr = getelementptr i8, i8* %4, i64 -16, !dbg !2263
  %5 = bitcast i8* %add.ptr to %struct.syscon*, !dbg !2263
  store %struct.syscon* %5, %struct.syscon** %tmp, align 8, !dbg !2264
  %6 = load %struct.syscon*, %struct.syscon** %tmp, align 8, !dbg !2263
  store %struct.syscon* %6, %struct.syscon** %entry1, align 8, !dbg !2266
  br label %for.cond, !dbg !2266

for.cond:                                         ; preds = %do.end7, %do.end
  %7 = load %struct.syscon*, %struct.syscon** %entry1, align 8, !dbg !2267
  %list = getelementptr inbounds %struct.syscon, %struct.syscon* %7, i32 0, i32 2, !dbg !2267
  %cmp = icmp eq %struct.list_head* %list, @syscon_list, !dbg !2267
  %lnot = xor i1 %cmp, true, !dbg !2267
  br i1 %lnot, label %for.body, label %for.end, !dbg !2266

for.body:                                         ; preds = %for.cond
  %8 = load %struct.syscon*, %struct.syscon** %entry1, align 8, !dbg !2269
  %np2 = getelementptr inbounds %struct.syscon, %struct.syscon* %8, i32 0, i32 0, !dbg !2271
  %9 = load %struct.device_node*, %struct.device_node** %np2, align 8, !dbg !2271
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2272
  %cmp3 = icmp eq %struct.device_node* %9, %10, !dbg !2273
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2274

if.then:                                          ; preds = %for.body
  %11 = load %struct.syscon*, %struct.syscon** %entry1, align 8, !dbg !2275
  store %struct.syscon* %11, %struct.syscon** %syscon, align 8, !dbg !2277
  br label %for.end, !dbg !2278

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2272

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !2279, metadata !DIExpression()), !dbg !2281
  %12 = load %struct.syscon*, %struct.syscon** %entry1, align 8, !dbg !2281
  %list5 = getelementptr inbounds %struct.syscon, %struct.syscon* %12, i32 0, i32 2, !dbg !2281
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list5, i32 0, i32 0, !dbg !2281
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2281
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !2281
  store i8* %14, i8** %__mptr4, align 8, !dbg !2281
  br label %do.body6, !dbg !2281

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !2282

do.end7:                                          ; preds = %do.body6
  %15 = load i8*, i8** %__mptr4, align 8, !dbg !2281
  %add.ptr9 = getelementptr i8, i8* %15, i64 -16, !dbg !2281
  %16 = bitcast i8* %add.ptr9 to %struct.syscon*, !dbg !2281
  store %struct.syscon* %16, %struct.syscon** %tmp8, align 8, !dbg !2282
  %17 = load %struct.syscon*, %struct.syscon** %tmp8, align 8, !dbg !2281
  store %struct.syscon* %17, %struct.syscon** %entry1, align 8, !dbg !2267
  br label %for.cond, !dbg !2267, !llvm.loop !2284

for.end:                                          ; preds = %if.then, %for.cond
  store %struct.spinlock* @syscon_list_slock, %struct.spinlock** %lock.addr.i17, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2286, !srcloc !2288
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i17, align 8, !dbg !2289
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !2289
  %rlock.i18 = bitcast %union.anon* %19 to %struct.raw_spinlock*, !dbg !2289
  %20 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2291
  %tobool = icmp ne %struct.syscon* %20, null, !dbg !2291
  br i1 %tobool, label %if.end12, label %if.then10, !dbg !2293

if.then10:                                        ; preds = %for.end
  %21 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2294
  %22 = load i8, i8* %check_clk.addr, align 1, !dbg !2295
  %tobool11 = trunc i8 %22 to i1, !dbg !2295
  %call = call %struct.syscon* @of_syscon_register(%struct.device_node* %21, i1 zeroext %tobool11) #9, !dbg !2296
  store %struct.syscon* %call, %struct.syscon** %syscon, align 8, !dbg !2297
  br label %if.end12, !dbg !2298

if.end12:                                         ; preds = %if.then10, %for.end
  %23 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2299
  %24 = bitcast %struct.syscon* %23 to i8*, !dbg !2299
  %call13 = call zeroext i1 @IS_ERR(i8* %24) #9, !dbg !2301
  br i1 %call13, label %if.then14, label %if.end16, !dbg !2302

if.then14:                                        ; preds = %if.end12
  %25 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2303
  %26 = bitcast %struct.syscon* %25 to i8*, !dbg !2303
  %call15 = call i8* @ERR_CAST(i8* %26) #9, !dbg !2304
  %27 = bitcast i8* %call15 to %struct.regmap*, !dbg !2304
  store %struct.regmap* %27, %struct.regmap** %retval, align 8, !dbg !2305
  br label %return, !dbg !2305

if.end16:                                         ; preds = %if.end12
  %28 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2306
  %regmap = getelementptr inbounds %struct.syscon, %struct.syscon* %28, i32 0, i32 1, !dbg !2307
  %29 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2307
  store %struct.regmap* %29, %struct.regmap** %retval, align 8, !dbg !2308
  br label %return, !dbg !2308

return:                                           ; preds = %if.end16, %if.then14
  %30 = load %struct.regmap*, %struct.regmap** %retval, align 8, !dbg !2309
  ret %struct.regmap* %30, !dbg !2309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %np) #0 !dbg !2310 {
entry:
  %retval = alloca %struct.regmap*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2311, metadata !DIExpression()), !dbg !2312
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2313
  %call = call i32 @of_device_is_compatible(%struct.device_node* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2315
  %tobool = icmp ne i32 %call, 0, !dbg !2315
  br i1 %tobool, label %if.end, label %if.then, !dbg !2316

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -22) #9, !dbg !2317
  %1 = bitcast i8* %call1 to %struct.regmap*, !dbg !2317
  store %struct.regmap* %1, %struct.regmap** %retval, align 8, !dbg !2318
  br label %return, !dbg !2318

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2319
  %call2 = call %struct.regmap* @device_node_get_regmap(%struct.device_node* %2, i1 zeroext true) #9, !dbg !2320
  store %struct.regmap* %call2, %struct.regmap** %retval, align 8, !dbg !2321
  br label %return, !dbg !2321

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.regmap*, %struct.regmap** %retval, align 8, !dbg !2322
  ret %struct.regmap* %3, !dbg !2322
}

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2323 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  %0 = load i64, i64* %error.addr, align 8, !dbg !2329
  %1 = inttoptr i64 %0 to i8*, !dbg !2330
  ret i8* %1, !dbg !2331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.regmap* @syscon_regmap_lookup_by_compatible(i8* %s) #0 !dbg !2332 {
entry:
  %retval = alloca %struct.regmap*, align 8
  %s.addr = alloca i8*, align 8
  %syscon_np = alloca %struct.device_node*, align 8
  %regmap = alloca %struct.regmap*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.device_node** %syscon_np, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.declare(metadata %struct.regmap** %regmap, metadata !2339, metadata !DIExpression()), !dbg !2340
  %0 = load i8*, i8** %s.addr, align 8, !dbg !2341
  %call = call %struct.device_node* @of_find_compatible_node(%struct.device_node* null, i8* null, i8* %0) #9, !dbg !2342
  store %struct.device_node* %call, %struct.device_node** %syscon_np, align 8, !dbg !2343
  %1 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2344
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2344
  br i1 %tobool, label %if.end, label %if.then, !dbg !2346

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -19) #9, !dbg !2347
  %2 = bitcast i8* %call1 to %struct.regmap*, !dbg !2347
  store %struct.regmap* %2, %struct.regmap** %retval, align 8, !dbg !2348
  br label %return, !dbg !2348

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2349
  %call2 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %3) #9, !dbg !2350
  store %struct.regmap* %call2, %struct.regmap** %regmap, align 8, !dbg !2351
  %4 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2352
  call void @of_node_put(%struct.device_node* %4) #9, !dbg !2353
  %5 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2354
  store %struct.regmap* %5, %struct.regmap** %retval, align 8, !dbg !2355
  br label %return, !dbg !2355

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.regmap*, %struct.regmap** %retval, align 8, !dbg !2356
  ret %struct.regmap* %6, !dbg !2356
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_find_compatible_node(%struct.device_node*, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2357 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2360, metadata !DIExpression()), !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %np, i8* %property) #0 !dbg !2363 {
entry:
  %retval = alloca %struct.regmap*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %property.addr = alloca i8*, align 8
  %syscon_np = alloca %struct.device_node*, align 8
  %regmap = alloca %struct.regmap*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2366, metadata !DIExpression()), !dbg !2367
  store i8* %property, i8** %property.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %property.addr, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.declare(metadata %struct.device_node** %syscon_np, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.declare(metadata %struct.regmap** %regmap, metadata !2372, metadata !DIExpression()), !dbg !2373
  %0 = load i8*, i8** %property.addr, align 8, !dbg !2374
  %tobool = icmp ne i8* %0, null, !dbg !2374
  br i1 %tobool, label %if.then, label %if.else, !dbg !2376

if.then:                                          ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2377
  %2 = load i8*, i8** %property.addr, align 8, !dbg !2378
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %1, i8* %2, i32 0) #9, !dbg !2379
  store %struct.device_node* %call, %struct.device_node** %syscon_np, align 8, !dbg !2380
  br label %if.end, !dbg !2381

if.else:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2382
  store %struct.device_node* %3, %struct.device_node** %syscon_np, align 8, !dbg !2383
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2384
  %tobool1 = icmp ne %struct.device_node* %4, null, !dbg !2384
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !2386

if.then2:                                         ; preds = %if.end
  %call3 = call i8* @ERR_PTR(i64 -19) #9, !dbg !2387
  %5 = bitcast i8* %call3 to %struct.regmap*, !dbg !2387
  store %struct.regmap* %5, %struct.regmap** %retval, align 8, !dbg !2388
  br label %return, !dbg !2388

if.end4:                                          ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2389
  %call5 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %6) #9, !dbg !2390
  store %struct.regmap* %call5, %struct.regmap** %regmap, align 8, !dbg !2391
  %7 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2392
  call void @of_node_put(%struct.device_node* %7) #9, !dbg !2393
  %8 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2394
  store %struct.regmap* %8, %struct.regmap** %retval, align 8, !dbg !2395
  br label %return, !dbg !2395

return:                                           ; preds = %if.end4, %if.then2
  %9 = load %struct.regmap*, %struct.regmap** %retval, align 8, !dbg !2396
  ret %struct.regmap* %9, !dbg !2396
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle_args(%struct.device_node* %np, i8* %property, i32 %arg_count, i32* %out_args) #0 !dbg !2397 {
entry:
  %retval = alloca %struct.regmap*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %property.addr = alloca i8*, align 8
  %arg_count.addr = alloca i32, align 4
  %out_args.addr = alloca i32*, align 8
  %syscon_np = alloca %struct.device_node*, align 8
  %args = alloca %struct.of_phandle_args, align 8
  %regmap = alloca %struct.regmap*, align 8
  %index = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2400, metadata !DIExpression()), !dbg !2401
  store i8* %property, i8** %property.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %property.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  store i32 %arg_count, i32* %arg_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg_count.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i32* %out_args, i32** %out_args.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_args.addr, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.device_node** %syscon_np, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %args, metadata !2410, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.declare(metadata %struct.regmap** %regmap, metadata !2419, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.declare(metadata i32* %index, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2423, metadata !DIExpression()), !dbg !2424
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2425
  %1 = load i8*, i8** %property.addr, align 8, !dbg !2426
  %2 = load i32, i32* %arg_count.addr, align 4, !dbg !2427
  %call = call i32 @of_parse_phandle_with_fixed_args(%struct.device_node* %0, i8* %1, i32 %2, i32 0, %struct.of_phandle_args* %args) #9, !dbg !2428
  store i32 %call, i32* %rc, align 4, !dbg !2429
  %3 = load i32, i32* %rc, align 4, !dbg !2430
  %tobool = icmp ne i32 %3, 0, !dbg !2430
  br i1 %tobool, label %if.then, label %if.end, !dbg !2432

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %rc, align 4, !dbg !2433
  %conv = sext i32 %4 to i64, !dbg !2433
  %call1 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !2434
  %5 = bitcast i8* %call1 to %struct.regmap*, !dbg !2434
  store %struct.regmap* %5, %struct.regmap** %retval, align 8, !dbg !2435
  br label %return, !dbg !2435

if.end:                                           ; preds = %entry
  %np2 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 0, !dbg !2436
  %6 = load %struct.device_node*, %struct.device_node** %np2, align 8, !dbg !2436
  store %struct.device_node* %6, %struct.device_node** %syscon_np, align 8, !dbg !2437
  %7 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2438
  %tobool3 = icmp ne %struct.device_node* %7, null, !dbg !2438
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !2440

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -19) #9, !dbg !2441
  %8 = bitcast i8* %call5 to %struct.regmap*, !dbg !2441
  store %struct.regmap* %8, %struct.regmap** %retval, align 8, !dbg !2442
  br label %return, !dbg !2442

if.end6:                                          ; preds = %if.end
  %9 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2443
  %call7 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %9) #9, !dbg !2444
  store %struct.regmap* %call7, %struct.regmap** %regmap, align 8, !dbg !2445
  store i32 0, i32* %index, align 4, !dbg !2446
  br label %for.cond, !dbg !2448

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i32, i32* %index, align 4, !dbg !2449
  %11 = load i32, i32* %arg_count.addr, align 4, !dbg !2451
  %cmp = icmp ult i32 %10, %11, !dbg !2452
  br i1 %cmp, label %for.body, label %for.end, !dbg !2453

for.body:                                         ; preds = %for.cond
  %args9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 2, !dbg !2454
  %12 = load i32, i32* %index, align 4, !dbg !2455
  %idxprom = zext i32 %12 to i64, !dbg !2456
  %arrayidx = getelementptr [16 x i32], [16 x i32]* %args9, i64 0, i64 %idxprom, !dbg !2456
  %13 = load i32, i32* %arrayidx, align 4, !dbg !2456
  %14 = load i32*, i32** %out_args.addr, align 8, !dbg !2457
  %15 = load i32, i32* %index, align 4, !dbg !2458
  %idxprom10 = zext i32 %15 to i64, !dbg !2457
  %arrayidx11 = getelementptr i32, i32* %14, i64 %idxprom10, !dbg !2457
  store i32 %13, i32* %arrayidx11, align 4, !dbg !2459
  br label %for.inc, !dbg !2457

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %index, align 4, !dbg !2460
  %inc = add i32 %16, 1, !dbg !2460
  store i32 %inc, i32* %index, align 4, !dbg !2460
  br label %for.cond, !dbg !2461, !llvm.loop !2462

for.end:                                          ; preds = %for.cond
  %17 = load %struct.device_node*, %struct.device_node** %syscon_np, align 8, !dbg !2464
  call void @of_node_put(%struct.device_node* %17) #9, !dbg !2465
  %18 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2466
  store %struct.regmap* %18, %struct.regmap** %retval, align 8, !dbg !2467
  br label %return, !dbg !2467

return:                                           ; preds = %for.end, %if.then4, %if.then
  %19 = load %struct.regmap*, %struct.regmap** %retval, align 8, !dbg !2468
  ret %struct.regmap* %19, !dbg !2468
}

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_fixed_args(%struct.device_node*, i8*, i32, i32, %struct.of_phandle_args*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @syscon_init() #3 section ".init.text" !dbg !2469 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @syscon_driver, %struct.module* null) #9, !dbg !2472
  ret i32 %call, !dbg !2473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.syscon* @of_syscon_register(%struct.device_node* %np, i1 zeroext %check_clk) #0 !dbg !2474 {
entry:
  %lock.addr.i73 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i73, metadata !2235, metadata !DIExpression()), !dbg !2477
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2243, metadata !DIExpression()), !dbg !2479
  %retval = alloca %struct.syscon*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %check_clk.addr = alloca i8, align 1
  %clk = alloca %struct.clk*, align 8
  %syscon = alloca %struct.syscon*, align 8
  %regmap = alloca %struct.regmap*, align 8
  %base = alloca i8*, align 8
  %reg_io_width = alloca i32, align 4
  %ret = alloca i32, align 4
  %syscon_config = alloca %struct.regmap_config, align 8
  %res = alloca %struct.resource, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2481, metadata !DIExpression()), !dbg !2482
  %frombool = zext i1 %check_clk to i8
  store i8 %frombool, i8* %check_clk.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %check_clk.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata %struct.clk** %clk, metadata !2485, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.declare(metadata %struct.syscon** %syscon, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata %struct.regmap** %regmap, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.declare(metadata i8** %base, metadata !2494, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.declare(metadata i32* %reg_io_width, metadata !2496, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2498, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.declare(metadata %struct.regmap_config* %syscon_config, metadata !2500, metadata !DIExpression()), !dbg !2501
  %0 = bitcast %struct.regmap_config* %syscon_config to i8*, !dbg !2502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.regmap_config* @syscon_regmap_config to i8*), i64 272, i1 false), !dbg !2502
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !2503, metadata !DIExpression()), !dbg !2504
  %call = call i8* @kzalloc(i64 32, i32 3264) #9, !dbg !2505
  %1 = bitcast i8* %call to %struct.syscon*, !dbg !2505
  store %struct.syscon* %1, %struct.syscon** %syscon, align 8, !dbg !2506
  %2 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2507
  %tobool = icmp ne %struct.syscon* %2, null, !dbg !2507
  br i1 %tobool, label %if.end, label %if.then, !dbg !2509

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #9, !dbg !2510
  %3 = bitcast i8* %call1 to %struct.syscon*, !dbg !2510
  store %struct.syscon* %3, %struct.syscon** %retval, align 8, !dbg !2511
  br label %return, !dbg !2511

if.end:                                           ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2512
  %call2 = call i32 @of_address_to_resource(%struct.device_node* %4, i32 0, %struct.resource* %res) #9, !dbg !2514
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2514
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2515

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !2516
  br label %err_map, !dbg !2518

if.end5:                                          ; preds = %if.end
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !2519
  %5 = load i64, i64* %start, align 8, !dbg !2519
  %call6 = call i64 @resource_size(%struct.resource* %res) #9, !dbg !2520
  %call7 = call i8* @ioremap(i64 %5, i64 %call6) #9, !dbg !2521
  store i8* %call7, i8** %base, align 8, !dbg !2522
  %6 = load i8*, i8** %base, align 8, !dbg !2523
  %tobool8 = icmp ne i8* %6, null, !dbg !2523
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2525

if.then9:                                         ; preds = %if.end5
  store i32 -12, i32* %ret, align 4, !dbg !2526
  br label %err_map, !dbg !2528

if.end10:                                         ; preds = %if.end5
  %7 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2529
  %call11 = call zeroext i1 @of_property_read_bool(%struct.device_node* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2531
  br i1 %call11, label %if.then12, label %if.else, !dbg !2532

if.then12:                                        ; preds = %if.end10
  %val_format_endian = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 37, !dbg !2533
  store i32 1, i32* %val_format_endian, align 8, !dbg !2534
  br label %if.end22, !dbg !2535

if.else:                                          ; preds = %if.end10
  %8 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2536
  %call13 = call zeroext i1 @of_property_read_bool(%struct.device_node* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2538
  br i1 %call13, label %if.then14, label %if.else16, !dbg !2539

if.then14:                                        ; preds = %if.else
  %val_format_endian15 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 37, !dbg !2540
  store i32 2, i32* %val_format_endian15, align 8, !dbg !2541
  br label %if.end21, !dbg !2542

if.else16:                                        ; preds = %if.else
  %9 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2543
  %call17 = call zeroext i1 @of_property_read_bool(%struct.device_node* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !2545
  br i1 %call17, label %if.then18, label %if.end20, !dbg !2546

if.then18:                                        ; preds = %if.else16
  %val_format_endian19 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 37, !dbg !2547
  store i32 3, i32* %val_format_endian19, align 8, !dbg !2548
  br label %if.end20, !dbg !2549

if.end20:                                         ; preds = %if.then18, %if.else16
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then12
  %10 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2550
  %call23 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %reg_io_width) #9, !dbg !2551
  store i32 %call23, i32* %ret, align 4, !dbg !2552
  %11 = load i32, i32* %ret, align 4, !dbg !2553
  %tobool24 = icmp ne i32 %11, 0, !dbg !2553
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2555

if.then25:                                        ; preds = %if.end22
  store i32 4, i32* %reg_io_width, align 4, !dbg !2556
  br label %if.end26, !dbg !2557

if.end26:                                         ; preds = %if.then25, %if.end22
  %12 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2558
  %call27 = call i32 @of_hwspin_lock_get_id(%struct.device_node* %12, i32 0) #9, !dbg !2559
  store i32 %call27, i32* %ret, align 4, !dbg !2560
  %13 = load i32, i32* %ret, align 4, !dbg !2561
  %cmp = icmp sgt i32 %13, 0, !dbg !2563
  br i1 %cmp, label %if.then28, label %if.else29, !dbg !2564

if.then28:                                        ; preds = %if.end26
  %use_hwlock = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 40, !dbg !2565
  store i8 1, i8* %use_hwlock, align 4, !dbg !2567
  %14 = load i32, i32* %ret, align 4, !dbg !2568
  %hwlock_id = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 41, !dbg !2569
  store i32 %14, i32* %hwlock_id, align 8, !dbg !2570
  %hwlock_mode = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 42, !dbg !2571
  store i32 1, i32* %hwlock_mode, align 4, !dbg !2572
  br label %if.end35, !dbg !2573

if.else29:                                        ; preds = %if.end26
  %15 = load i32, i32* %ret, align 4, !dbg !2574
  %cmp30 = icmp slt i32 %15, 0, !dbg !2576
  br i1 %cmp30, label %if.then31, label %if.end34, !dbg !2577

if.then31:                                        ; preds = %if.else29
  %16 = load i32, i32* %ret, align 4, !dbg !2578
  switch i32 %16, label %sw.default [
    i32 -2, label %sw.bb
    i32 -517, label %sw.bb33
  ], !dbg !2580

sw.bb:                                            ; preds = %if.then31
  br label %sw.epilog, !dbg !2581

sw.default:                                       ; preds = %if.then31
  %17 = load i32, i32* %ret, align 4, !dbg !2583
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %17) #11, !dbg !2583
  br label %sw.bb33, !dbg !2583

sw.bb33:                                          ; preds = %if.then31, %sw.default
  br label %err_regmap, !dbg !2584

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end34, !dbg !2585

if.end34:                                         ; preds = %sw.epilog, %if.else29
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then28
  %18 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2586
  %start36 = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !2587
  %19 = load i64, i64* %start36, align 8, !dbg !2587
  %call37 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.device_node* %18, i64 %19) #9, !dbg !2588
  %name = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 0, !dbg !2589
  store i8* %call37, i8** %name, align 8, !dbg !2590
  %20 = load i32, i32* %reg_io_width, align 4, !dbg !2591
  %reg_stride = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 2, !dbg !2592
  store i32 %20, i32* %reg_stride, align 4, !dbg !2593
  %21 = load i32, i32* %reg_io_width, align 4, !dbg !2594
  %mul = mul i32 %21, 8, !dbg !2595
  %val_bits = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 4, !dbg !2596
  store i32 %mul, i32* %val_bits, align 4, !dbg !2597
  %call38 = call i64 @resource_size(%struct.resource* %res) #9, !dbg !2598
  %22 = load i32, i32* %reg_io_width, align 4, !dbg !2599
  %conv = zext i32 %22 to i64, !dbg !2599
  %sub = sub i64 %call38, %conv, !dbg !2600
  %conv39 = trunc i64 %sub to i32, !dbg !2598
  %max_register = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 18, !dbg !2601
  store i32 %conv39, i32* %max_register, align 4, !dbg !2602
  %23 = load i8*, i8** %base, align 8, !dbg !2603
  %call40 = call %struct.regmap* @__regmap_init_mmio_clk(%struct.device* null, i8* null, i8* %23, %struct.regmap_config* %syscon_config, %struct.lock_class_key* null, i8* null) #9, !dbg !2603
  store %struct.regmap* %call40, %struct.regmap** %regmap, align 8, !dbg !2604
  %24 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2605
  %25 = bitcast %struct.regmap* %24 to i8*, !dbg !2605
  %call41 = call zeroext i1 @IS_ERR(i8* %25) #9, !dbg !2607
  br i1 %call41, label %if.then42, label %if.end46, !dbg !2608

if.then42:                                        ; preds = %if.end35
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !2609
  %26 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2611
  %27 = bitcast %struct.regmap* %26 to i8*, !dbg !2611
  %call44 = call i64 @PTR_ERR(i8* %27) #9, !dbg !2612
  %conv45 = trunc i64 %call44 to i32, !dbg !2612
  store i32 %conv45, i32* %ret, align 4, !dbg !2613
  br label %err_regmap, !dbg !2614

if.end46:                                         ; preds = %if.end35
  %28 = load i8, i8* %check_clk.addr, align 1, !dbg !2615
  %tobool47 = trunc i8 %28 to i1, !dbg !2615
  br i1 %tobool47, label %if.then48, label %if.end64, !dbg !2617

if.then48:                                        ; preds = %if.end46
  %29 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2618
  %call49 = call %struct.clk* @of_clk_get(%struct.device_node* %29, i32 0) #9, !dbg !2620
  store %struct.clk* %call49, %struct.clk** %clk, align 8, !dbg !2621
  %30 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2622
  %31 = bitcast %struct.clk* %30 to i8*, !dbg !2622
  %call50 = call zeroext i1 @IS_ERR(i8* %31) #9, !dbg !2624
  br i1 %call50, label %if.then51, label %if.else58, !dbg !2625

if.then51:                                        ; preds = %if.then48
  %32 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2626
  %33 = bitcast %struct.clk* %32 to i8*, !dbg !2626
  %call52 = call i64 @PTR_ERR(i8* %33) #9, !dbg !2628
  %conv53 = trunc i64 %call52 to i32, !dbg !2628
  store i32 %conv53, i32* %ret, align 4, !dbg !2629
  %34 = load i32, i32* %ret, align 4, !dbg !2630
  %cmp54 = icmp ne i32 %34, -2, !dbg !2632
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !2633

if.then56:                                        ; preds = %if.then51
  br label %err_clk, !dbg !2634

if.end57:                                         ; preds = %if.then51
  br label %if.end63, !dbg !2635

if.else58:                                        ; preds = %if.then48
  %35 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2636
  %36 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2638
  %call59 = call i32 @regmap_mmio_attach_clk(%struct.regmap* %35, %struct.clk* %36) #9, !dbg !2639
  store i32 %call59, i32* %ret, align 4, !dbg !2640
  %37 = load i32, i32* %ret, align 4, !dbg !2641
  %tobool60 = icmp ne i32 %37, 0, !dbg !2641
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !2643

if.then61:                                        ; preds = %if.else58
  br label %err_attach, !dbg !2644

if.end62:                                         ; preds = %if.else58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end57
  br label %if.end64, !dbg !2645

if.end64:                                         ; preds = %if.end63, %if.end46
  %38 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2646
  %39 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2647
  %regmap65 = getelementptr inbounds %struct.syscon, %struct.syscon* %39, i32 0, i32 1, !dbg !2648
  store %struct.regmap* %38, %struct.regmap** %regmap65, align 8, !dbg !2649
  %40 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2650
  %41 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2651
  %np66 = getelementptr inbounds %struct.syscon, %struct.syscon* %41, i32 0, i32 0, !dbg !2652
  store %struct.device_node* %40, %struct.device_node** %np66, align 8, !dbg !2653
  store %struct.spinlock* @syscon_list_slock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2654, !srcloc !2257
  %42 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2655
  %43 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %42, i32 0, i32 0, !dbg !2655
  %rlock.i = bitcast %union.anon* %43 to %struct.raw_spinlock*, !dbg !2655
  %44 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2656
  %list = getelementptr inbounds %struct.syscon, %struct.syscon* %44, i32 0, i32 2, !dbg !2657
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* @syscon_list) #9, !dbg !2658
  store %struct.spinlock* @syscon_list_slock, %struct.spinlock** %lock.addr.i73, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !2659, !srcloc !2288
  %45 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i73, align 8, !dbg !2660
  %46 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %45, i32 0, i32 0, !dbg !2660
  %rlock.i74 = bitcast %union.anon* %46 to %struct.raw_spinlock*, !dbg !2660
  %47 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2661
  store %struct.syscon* %47, %struct.syscon** %retval, align 8, !dbg !2662
  br label %return, !dbg !2662

err_attach:                                       ; preds = %if.then61
  call void @llvm.dbg.label(metadata !2663), !dbg !2664
  %48 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2665
  %49 = bitcast %struct.clk* %48 to i8*, !dbg !2665
  %call67 = call zeroext i1 @IS_ERR(i8* %49) #9, !dbg !2667
  br i1 %call67, label %if.end69, label %if.then68, !dbg !2668

if.then68:                                        ; preds = %err_attach
  %50 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2669
  call void @clk_put(%struct.clk* %50) #9, !dbg !2670
  br label %if.end69, !dbg !2670

if.end69:                                         ; preds = %if.then68, %err_attach
  br label %err_clk, !dbg !2671

err_clk:                                          ; preds = %if.end69, %if.then56
  call void @llvm.dbg.label(metadata !2672), !dbg !2673
  %51 = load %struct.regmap*, %struct.regmap** %regmap, align 8, !dbg !2674
  call void @regmap_exit(%struct.regmap* %51) #9, !dbg !2675
  br label %err_regmap, !dbg !2675

err_regmap:                                       ; preds = %err_clk, %if.then42, %sw.bb33
  call void @llvm.dbg.label(metadata !2676), !dbg !2677
  %52 = load i8*, i8** %base, align 8, !dbg !2678
  call void @iounmap(i8* %52) #9, !dbg !2679
  %name70 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 0, !dbg !2680
  %53 = load i8*, i8** %name70, align 8, !dbg !2680
  call void @kfree(i8* %53) #9, !dbg !2681
  br label %err_map, !dbg !2681

err_map:                                          ; preds = %err_regmap, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !2682), !dbg !2683
  %54 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !2684
  %55 = bitcast %struct.syscon* %54 to i8*, !dbg !2684
  call void @kfree(i8* %55) #9, !dbg !2685
  %56 = load i32, i32* %ret, align 4, !dbg !2686
  %conv71 = sext i32 %56 to i64, !dbg !2686
  %call72 = call i8* @ERR_PTR(i64 %conv71) #9, !dbg !2687
  %57 = bitcast i8* %call72 to %struct.syscon*, !dbg !2687
  store %struct.syscon* %57, %struct.syscon** %retval, align 8, !dbg !2688
  br label %return, !dbg !2688

return:                                           ; preds = %err_map, %if.end64, %if.then
  %58 = load %struct.syscon*, %struct.syscon** %retval, align 8, !dbg !2689
  ret %struct.syscon* %58, !dbg !2689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2690 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2693, metadata !DIExpression()), !dbg !2694
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2695
  %1 = ptrtoint i8* %0 to i64, !dbg !2695
  %2 = inttoptr i64 %1 to i8*, !dbg !2695
  %3 = ptrtoint i8* %2 to i64, !dbg !2695
  %cmp = icmp uge i64 %3, -4095, !dbg !2695
  %lnot = xor i1 %cmp, true, !dbg !2695
  %lnot1 = xor i1 %lnot, true, !dbg !2695
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2695
  %conv = sext i32 %lnot.ext to i64, !dbg !2695
  %tobool = icmp ne i64 %conv, 0, !dbg !2695
  ret i1 %tobool, !dbg !2696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !2697 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2702
  ret i8* %0, !dbg !2703
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2704 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2707, metadata !DIExpression()), !dbg !2711
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2717, metadata !DIExpression()), !dbg !2718
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2719, metadata !DIExpression()), !dbg !2720
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2721, metadata !DIExpression()), !dbg !2722
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2723, metadata !DIExpression()), !dbg !2727
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2729, metadata !DIExpression()), !dbg !2733
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2735, metadata !DIExpression()), !dbg !2739
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2744, metadata !DIExpression()), !dbg !2745
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2746, metadata !DIExpression()), !dbg !2747
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2748, metadata !DIExpression()), !dbg !2749
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2750, metadata !DIExpression()), !dbg !2751
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2752, metadata !DIExpression()), !dbg !2753
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2754, metadata !DIExpression()), !dbg !2755
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2756, metadata !DIExpression()), !dbg !2757
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2758, metadata !DIExpression()), !dbg !2759
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  %0 = load i64, i64* %size.addr, align 8, !dbg !2764
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2765
  %or = or i32 %1, 256, !dbg !2766
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2767
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !2768
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2769

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2770
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2771
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2772

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2773
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2774
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2775
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !2776
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2753
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2777
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2778
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2779
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2780
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2781
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2782
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !2783
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2783
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2783
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2783
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2783
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2784
  br label %kmalloc.exit, !dbg !2784

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2785
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2786
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2786
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2788

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2789
  br label %kmalloc_index.exit.i, !dbg !2789

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2790
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2792
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2793

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2794
  br label %kmalloc_index.exit.i, !dbg !2794

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2795
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2797
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2798

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2799
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2800
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2801

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2802
  br label %kmalloc_index.exit.i, !dbg !2802

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2803
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2805
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2806

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2807
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2808
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2809

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2810
  br label %kmalloc_index.exit.i, !dbg !2810

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2811
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2813
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2814

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2815
  br label %kmalloc_index.exit.i, !dbg !2815

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2816
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2818
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2819

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2820
  br label %kmalloc_index.exit.i, !dbg !2820

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2821
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2823
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2824

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2825
  br label %kmalloc_index.exit.i, !dbg !2825

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2826
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2828
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2829

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2830
  br label %kmalloc_index.exit.i, !dbg !2830

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2831
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2833
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2834

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2835
  br label %kmalloc_index.exit.i, !dbg !2835

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2836
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2838
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2839

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2840
  br label %kmalloc_index.exit.i, !dbg !2840

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2841
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2843
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2844

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2845
  br label %kmalloc_index.exit.i, !dbg !2845

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2846
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2848
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2849

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2850
  br label %kmalloc_index.exit.i, !dbg !2850

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2851
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2853
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2854

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2855
  br label %kmalloc_index.exit.i, !dbg !2855

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2856
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2858
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2859

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2860
  br label %kmalloc_index.exit.i, !dbg !2860

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2861
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2863
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2864

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2865
  br label %kmalloc_index.exit.i, !dbg !2865

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2866
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2868
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2869

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2870
  br label %kmalloc_index.exit.i, !dbg !2870

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2871
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2873
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2874

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2875
  br label %kmalloc_index.exit.i, !dbg !2875

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2876
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2878
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2879

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2880
  br label %kmalloc_index.exit.i, !dbg !2880

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2881
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2883
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2884

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2885
  br label %kmalloc_index.exit.i, !dbg !2885

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2886
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2888
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2889

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2890
  br label %kmalloc_index.exit.i, !dbg !2890

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2891
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2893
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2894

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2895
  br label %kmalloc_index.exit.i, !dbg !2895

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2896
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2898
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2899

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2900
  br label %kmalloc_index.exit.i, !dbg !2900

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2901
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2903
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2904

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2905
  br label %kmalloc_index.exit.i, !dbg !2905

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2906
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2908
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2909

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2910
  br label %kmalloc_index.exit.i, !dbg !2910

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2911
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2913
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2914

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2915
  br label %kmalloc_index.exit.i, !dbg !2915

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2916
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2918
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2919

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2920
  br label %kmalloc_index.exit.i, !dbg !2920

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2921
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2923
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2924

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2925
  br label %kmalloc_index.exit.i, !dbg !2925

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2926
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2928
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2929

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2930
  br label %kmalloc_index.exit.i, !dbg !2930

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2931, !srcloc !2934
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !2935, !srcloc !2938
  unreachable, !dbg !2939

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2940
  store i32 %45, i32* %index.i, align 4, !dbg !2941
  %46 = load i32, i32* %index.i, align 4, !dbg !2942
  %tobool.i = icmp ne i32 %46, 0, !dbg !2942
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2944

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2945
  br label %kmalloc.exit, !dbg !2945

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2946
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2947
  %and.i.i = and i32 %48, 17, !dbg !2947
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2947
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2947
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2947
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2947
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2949

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2950
  br label %kmalloc_type.exit.i, !dbg !2950

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2951
  %and2.i.i = and i32 %49, 1, !dbg !2952
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2951
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2951
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2951
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2953
  br label %kmalloc_type.exit.i, !dbg !2953

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2954
  %idxprom.i = zext i32 %51 to i64, !dbg !2955
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2955
  %52 = load i32, i32* %index.i, align 4, !dbg !2956
  %idxprom6.i = zext i32 %52 to i64, !dbg !2955
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2955
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2955
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2957
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2958
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2959
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2960
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !2961
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2961
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2961
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2961
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !2961
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2722
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2962
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2963
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2964
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2965
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !2966
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2967
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2968
  store i8* %62, i8** %retval.i, align 8, !dbg !2969
  br label %kmalloc.exit, !dbg !2969

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2970
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2971
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !2972
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2972
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2972
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2972
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !2972
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2973
  br label %kmalloc.exit, !dbg !2973

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2974
  ret i8* %65, !dbg !2975
}

; Function Attrs: noredzone
declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !2976 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !2981, metadata !DIExpression()), !dbg !2982
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2983
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !2984
  %1 = load i64, i64* %end, align 8, !dbg !2984
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !2985
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !2986
  %3 = load i64, i64* %start, align 8, !dbg !2986
  %sub = sub i64 %1, %3, !dbg !2987
  %add = add i64 %sub, 1, !dbg !2988
  ret i64 %add, !dbg !2989
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !2990 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2995, metadata !DIExpression()), !dbg !2996
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2999, metadata !DIExpression()), !dbg !3000
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3001
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3002
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #9, !dbg !3003
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !3000
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3004
  %tobool = icmp ne %struct.property* %2, null, !dbg !3004
  %3 = zext i1 %tobool to i64, !dbg !3004
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3004
  %tobool1 = icmp ne i32 %cond, 0, !dbg !3004
  ret i1 %tobool1, !dbg !3005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !3006 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !3013, metadata !DIExpression()), !dbg !3014
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3015
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3016
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !3017
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #9, !dbg !3018
  ret i32 %call, !dbg !3019
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_hwspin_lock_get_id(%struct.device_node* %np, i32 %index) #0 !dbg !3020 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3024, metadata !DIExpression()), !dbg !3025
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3026, metadata !DIExpression()), !dbg !3027
  ret i32 0, !dbg !3028
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %struct.regmap* @__regmap_init_mmio_clk(%struct.device*, i8*, i8*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3029 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3034
  %1 = ptrtoint i8* %0 to i64, !dbg !3035
  ret i64 %1, !dbg !3036
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @of_clk_get(%struct.device_node*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @regmap_mmio_attach_clk(%struct.regmap*, %struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3037 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3041, metadata !DIExpression()), !dbg !3042
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3045
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3046
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3047
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3047
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3048
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !3049
  ret void, !dbg !3050
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @clk_put(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @regmap_exit(%struct.regmap*) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3051 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3055, metadata !DIExpression()), !dbg !3060
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3062, metadata !DIExpression()), !dbg !3063
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3064, metadata !DIExpression()), !dbg !3065
  %0 = load i64, i64* %size.addr, align 8, !dbg !3066
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3068
  br i1 %1, label %if.then, label %if.end447, !dbg !3069

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3070
  %tobool = icmp ne i64 %2, 0, !dbg !3070
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3073

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3074
  br label %return, !dbg !3074

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3075
  %cmp = icmp ult i64 %3, 4096, !dbg !3077
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3078

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3079
  br label %return, !dbg !3079

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub = sub i64 %4, 1, !dbg !3080
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3080
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3080

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub4 = sub i64 %6, 1, !dbg !3080
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3080
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3080

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub6 = sub i64 %8, 1, !dbg !3080
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3080
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3080

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3080

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub9 = sub i64 %9, 1, !dbg !3080
  %and = and i64 %sub9, -9223372036854775808, !dbg !3080
  %tobool10 = icmp ne i64 %and, 0, !dbg !3080
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3080

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3080

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub13 = sub i64 %10, 1, !dbg !3080
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3080
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3080
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3080

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3080

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub18 = sub i64 %11, 1, !dbg !3080
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3080
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3080
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3080

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3080

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub23 = sub i64 %12, 1, !dbg !3080
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3080
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3080
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3080

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3080

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub28 = sub i64 %13, 1, !dbg !3080
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3080
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3080
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3080

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3080

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub33 = sub i64 %14, 1, !dbg !3080
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3080
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3080
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3080

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3080

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub38 = sub i64 %15, 1, !dbg !3080
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3080
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3080
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3080

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3080

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub43 = sub i64 %16, 1, !dbg !3080
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3080
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3080
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3080

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3080

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub48 = sub i64 %17, 1, !dbg !3080
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3080
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3080
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3080

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3080

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub53 = sub i64 %18, 1, !dbg !3080
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3080
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3080
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3080

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3080

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub58 = sub i64 %19, 1, !dbg !3080
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3080
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3080
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3080

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3080

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub63 = sub i64 %20, 1, !dbg !3080
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3080
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3080
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3080

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3080

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub68 = sub i64 %21, 1, !dbg !3080
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3080
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3080
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3080

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3080

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub73 = sub i64 %22, 1, !dbg !3080
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3080
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3080
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3080

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3080

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub78 = sub i64 %23, 1, !dbg !3080
  %and79 = and i64 %sub78, 562949953421312, !dbg !3080
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3080
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3080

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3080

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub83 = sub i64 %24, 1, !dbg !3080
  %and84 = and i64 %sub83, 281474976710656, !dbg !3080
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3080
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3080

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3080

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub88 = sub i64 %25, 1, !dbg !3080
  %and89 = and i64 %sub88, 140737488355328, !dbg !3080
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3080
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3080

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3080

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub93 = sub i64 %26, 1, !dbg !3080
  %and94 = and i64 %sub93, 70368744177664, !dbg !3080
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3080
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3080

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3080

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub98 = sub i64 %27, 1, !dbg !3080
  %and99 = and i64 %sub98, 35184372088832, !dbg !3080
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3080
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3080

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3080

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub103 = sub i64 %28, 1, !dbg !3080
  %and104 = and i64 %sub103, 17592186044416, !dbg !3080
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3080
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3080

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3080

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub108 = sub i64 %29, 1, !dbg !3080
  %and109 = and i64 %sub108, 8796093022208, !dbg !3080
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3080
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3080

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3080

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub113 = sub i64 %30, 1, !dbg !3080
  %and114 = and i64 %sub113, 4398046511104, !dbg !3080
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3080
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3080

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3080

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub118 = sub i64 %31, 1, !dbg !3080
  %and119 = and i64 %sub118, 2199023255552, !dbg !3080
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3080
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3080

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3080

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub123 = sub i64 %32, 1, !dbg !3080
  %and124 = and i64 %sub123, 1099511627776, !dbg !3080
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3080
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3080

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3080

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub128 = sub i64 %33, 1, !dbg !3080
  %and129 = and i64 %sub128, 549755813888, !dbg !3080
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3080
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3080

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3080

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub133 = sub i64 %34, 1, !dbg !3080
  %and134 = and i64 %sub133, 274877906944, !dbg !3080
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3080
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3080

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3080

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub138 = sub i64 %35, 1, !dbg !3080
  %and139 = and i64 %sub138, 137438953472, !dbg !3080
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3080
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3080

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3080

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub143 = sub i64 %36, 1, !dbg !3080
  %and144 = and i64 %sub143, 68719476736, !dbg !3080
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3080
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3080

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3080

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub148 = sub i64 %37, 1, !dbg !3080
  %and149 = and i64 %sub148, 34359738368, !dbg !3080
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3080
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3080

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3080

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub153 = sub i64 %38, 1, !dbg !3080
  %and154 = and i64 %sub153, 17179869184, !dbg !3080
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3080
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3080

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3080

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub158 = sub i64 %39, 1, !dbg !3080
  %and159 = and i64 %sub158, 8589934592, !dbg !3080
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3080
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3080

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3080

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub163 = sub i64 %40, 1, !dbg !3080
  %and164 = and i64 %sub163, 4294967296, !dbg !3080
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3080
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3080

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3080

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub168 = sub i64 %41, 1, !dbg !3080
  %and169 = and i64 %sub168, 2147483648, !dbg !3080
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3080
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3080

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3080

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub173 = sub i64 %42, 1, !dbg !3080
  %and174 = and i64 %sub173, 1073741824, !dbg !3080
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3080
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3080

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3080

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub178 = sub i64 %43, 1, !dbg !3080
  %and179 = and i64 %sub178, 536870912, !dbg !3080
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3080
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3080

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3080

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub183 = sub i64 %44, 1, !dbg !3080
  %and184 = and i64 %sub183, 268435456, !dbg !3080
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3080
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3080

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3080

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub188 = sub i64 %45, 1, !dbg !3080
  %and189 = and i64 %sub188, 134217728, !dbg !3080
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3080
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3080

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3080

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub193 = sub i64 %46, 1, !dbg !3080
  %and194 = and i64 %sub193, 67108864, !dbg !3080
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3080
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3080

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3080

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub198 = sub i64 %47, 1, !dbg !3080
  %and199 = and i64 %sub198, 33554432, !dbg !3080
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3080
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3080

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3080

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub203 = sub i64 %48, 1, !dbg !3080
  %and204 = and i64 %sub203, 16777216, !dbg !3080
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3080
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3080

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3080

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub208 = sub i64 %49, 1, !dbg !3080
  %and209 = and i64 %sub208, 8388608, !dbg !3080
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3080
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3080

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3080

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub213 = sub i64 %50, 1, !dbg !3080
  %and214 = and i64 %sub213, 4194304, !dbg !3080
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3080
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3080

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3080

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub218 = sub i64 %51, 1, !dbg !3080
  %and219 = and i64 %sub218, 2097152, !dbg !3080
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3080
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3080

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3080

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub223 = sub i64 %52, 1, !dbg !3080
  %and224 = and i64 %sub223, 1048576, !dbg !3080
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3080
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3080

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3080

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub228 = sub i64 %53, 1, !dbg !3080
  %and229 = and i64 %sub228, 524288, !dbg !3080
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3080
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3080

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3080

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub233 = sub i64 %54, 1, !dbg !3080
  %and234 = and i64 %sub233, 262144, !dbg !3080
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3080
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3080

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3080

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub238 = sub i64 %55, 1, !dbg !3080
  %and239 = and i64 %sub238, 131072, !dbg !3080
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3080
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3080

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3080

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub243 = sub i64 %56, 1, !dbg !3080
  %and244 = and i64 %sub243, 65536, !dbg !3080
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3080
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3080

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3080

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub248 = sub i64 %57, 1, !dbg !3080
  %and249 = and i64 %sub248, 32768, !dbg !3080
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3080
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3080

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3080

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub253 = sub i64 %58, 1, !dbg !3080
  %and254 = and i64 %sub253, 16384, !dbg !3080
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3080
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3080

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3080

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub258 = sub i64 %59, 1, !dbg !3080
  %and259 = and i64 %sub258, 8192, !dbg !3080
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3080
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3080

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3080

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub263 = sub i64 %60, 1, !dbg !3080
  %and264 = and i64 %sub263, 4096, !dbg !3080
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3080
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3080

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3080

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub268 = sub i64 %61, 1, !dbg !3080
  %and269 = and i64 %sub268, 2048, !dbg !3080
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3080
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3080

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3080

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub273 = sub i64 %62, 1, !dbg !3080
  %and274 = and i64 %sub273, 1024, !dbg !3080
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3080
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3080

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3080

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub278 = sub i64 %63, 1, !dbg !3080
  %and279 = and i64 %sub278, 512, !dbg !3080
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3080
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3080

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3080

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub283 = sub i64 %64, 1, !dbg !3080
  %and284 = and i64 %sub283, 256, !dbg !3080
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3080
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3080

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3080

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub288 = sub i64 %65, 1, !dbg !3080
  %and289 = and i64 %sub288, 128, !dbg !3080
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3080
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3080

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3080

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub293 = sub i64 %66, 1, !dbg !3080
  %and294 = and i64 %sub293, 64, !dbg !3080
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3080
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3080

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3080

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub298 = sub i64 %67, 1, !dbg !3080
  %and299 = and i64 %sub298, 32, !dbg !3080
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3080
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3080

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3080

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub303 = sub i64 %68, 1, !dbg !3080
  %and304 = and i64 %sub303, 16, !dbg !3080
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3080
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3080

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3080

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub308 = sub i64 %69, 1, !dbg !3080
  %and309 = and i64 %sub308, 8, !dbg !3080
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3080
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3080

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3080

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub313 = sub i64 %70, 1, !dbg !3080
  %and314 = and i64 %sub313, 4, !dbg !3080
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3080
  %71 = zext i1 %tobool315 to i64, !dbg !3080
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3080
  br label %cond.end, !dbg !3080

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3080
  br label %cond.end317, !dbg !3080

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3080
  br label %cond.end319, !dbg !3080

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3080
  br label %cond.end321, !dbg !3080

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3080
  br label %cond.end323, !dbg !3080

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3080
  br label %cond.end325, !dbg !3080

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3080
  br label %cond.end327, !dbg !3080

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3080
  br label %cond.end329, !dbg !3080

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3080
  br label %cond.end331, !dbg !3080

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3080
  br label %cond.end333, !dbg !3080

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3080
  br label %cond.end335, !dbg !3080

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3080
  br label %cond.end337, !dbg !3080

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3080
  br label %cond.end339, !dbg !3080

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3080
  br label %cond.end341, !dbg !3080

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3080
  br label %cond.end343, !dbg !3080

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3080
  br label %cond.end345, !dbg !3080

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3080
  br label %cond.end347, !dbg !3080

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3080
  br label %cond.end349, !dbg !3080

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3080
  br label %cond.end351, !dbg !3080

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3080
  br label %cond.end353, !dbg !3080

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3080
  br label %cond.end355, !dbg !3080

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3080
  br label %cond.end357, !dbg !3080

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3080
  br label %cond.end359, !dbg !3080

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3080
  br label %cond.end361, !dbg !3080

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3080
  br label %cond.end363, !dbg !3080

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3080
  br label %cond.end365, !dbg !3080

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3080
  br label %cond.end367, !dbg !3080

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3080
  br label %cond.end369, !dbg !3080

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3080
  br label %cond.end371, !dbg !3080

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3080
  br label %cond.end373, !dbg !3080

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3080
  br label %cond.end375, !dbg !3080

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3080
  br label %cond.end377, !dbg !3080

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3080
  br label %cond.end379, !dbg !3080

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3080
  br label %cond.end381, !dbg !3080

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3080
  br label %cond.end383, !dbg !3080

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3080
  br label %cond.end385, !dbg !3080

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3080
  br label %cond.end387, !dbg !3080

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3080
  br label %cond.end389, !dbg !3080

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3080
  br label %cond.end391, !dbg !3080

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3080
  br label %cond.end393, !dbg !3080

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3080
  br label %cond.end395, !dbg !3080

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3080
  br label %cond.end397, !dbg !3080

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3080
  br label %cond.end399, !dbg !3080

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3080
  br label %cond.end401, !dbg !3080

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3080
  br label %cond.end403, !dbg !3080

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3080
  br label %cond.end405, !dbg !3080

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3080
  br label %cond.end407, !dbg !3080

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3080
  br label %cond.end409, !dbg !3080

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3080
  br label %cond.end411, !dbg !3080

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3080
  br label %cond.end413, !dbg !3080

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3080
  br label %cond.end415, !dbg !3080

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3080
  br label %cond.end417, !dbg !3080

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3080
  br label %cond.end419, !dbg !3080

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3080
  br label %cond.end421, !dbg !3080

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3080
  br label %cond.end423, !dbg !3080

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3080
  br label %cond.end425, !dbg !3080

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3080
  br label %cond.end427, !dbg !3080

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3080
  br label %cond.end429, !dbg !3080

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3080
  br label %cond.end431, !dbg !3080

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3080
  br label %cond.end433, !dbg !3080

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3080
  br label %cond.end435, !dbg !3080

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3080
  br label %cond.end437, !dbg !3080

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3080
  br label %cond.end440, !dbg !3080

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3080

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3080
  br label %cond.end444, !dbg !3080

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3080
  %sub443 = sub i64 %72, 1, !dbg !3080
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3080
  br label %cond.end444, !dbg !3080

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3080
  %sub446 = sub i32 %cond445, 12, !dbg !3081
  %add = add i32 %sub446, 1, !dbg !3082
  store i32 %add, i32* %retval, align 4, !dbg !3083
  br label %return, !dbg !3083

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3084
  %dec = add i64 %73, -1, !dbg !3084
  store i64 %dec, i64* %size.addr, align 8, !dbg !3084
  %74 = load i64, i64* %size.addr, align 8, !dbg !3085
  %shr = lshr i64 %74, 12, !dbg !3085
  store i64 %shr, i64* %size.addr, align 8, !dbg !3085
  %75 = load i64, i64* %size.addr, align 8, !dbg !3086
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3063
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3087
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3088
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3087, !srcloc !3089
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3087
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3090
  %add.i = add i32 %79, 1, !dbg !3091
  store i32 %add.i, i32* %retval, align 4, !dbg !3092
  br label %return, !dbg !3092

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3093
  ret i32 %80, !dbg !3093
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3094 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3055, metadata !DIExpression()), !dbg !3098
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3062, metadata !DIExpression()), !dbg !3100
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3101, metadata !DIExpression()), !dbg !3102
  %0 = load i64, i64* %n.addr, align 8, !dbg !3103
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3100
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3104
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3105
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3104, !srcloc !3089
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3104
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3106
  %add.i = add i32 %4, 1, !dbg !3107
  %sub = sub i32 %add.i, 1, !dbg !3108
  ret i32 %sub, !dbg !3109
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3110 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3114, metadata !DIExpression()), !dbg !3115
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3120, metadata !DIExpression()), !dbg !3121
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3122
  ret i8* %0, !dbg !3123
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3124 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3127, metadata !DIExpression()), !dbg !3128
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3129, metadata !DIExpression()), !dbg !3130
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3135, metadata !DIExpression()), !dbg !3136
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3137
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3138
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3139
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3140
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #9, !dbg !3141
  store i32 %call, i32* %ret, align 4, !dbg !3136
  %4 = load i32, i32* %ret, align 4, !dbg !3142
  %cmp = icmp sge i32 %4, 0, !dbg !3144
  br i1 %cmp, label %if.then, label %if.else, !dbg !3145

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3146
  br label %return, !dbg !3146

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3147
  store i32 %5, i32* %retval, align 4, !dbg !3148
  br label %return, !dbg !3148

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3149
  ret i32 %6, !dbg !3149
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3150 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3153, metadata !DIExpression()), !dbg !3154
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3155, metadata !DIExpression()), !dbg !3156
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3157, metadata !DIExpression()), !dbg !3158
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3159
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3161
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3162
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !3163
  br i1 %call, label %if.end, label %if.then, !dbg !3164

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3165

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3166
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3167
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3168
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3169
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3170
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3171
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3172
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3173
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3174
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3175
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3176
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3177
  br label %do.body, !dbg !3178

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3179

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3181

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3179

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3183
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3183
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3183
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3183
  br label %do.end7, !dbg !3183

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3179

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3185
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3186 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3189, metadata !DIExpression()), !dbg !3190
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3191, metadata !DIExpression()), !dbg !3192
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3193, metadata !DIExpression()), !dbg !3194
  ret i1 true, !dbg !3195
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @syscon_probe(%struct.platform_device* %pdev) #0 !dbg !3196 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.device*, align 8
  %pdata = alloca %struct.syscon_platform_data*, align 8
  %syscon = alloca %struct.syscon*, align 8
  %syscon_config = alloca %struct.regmap_config, align 8
  %res = alloca %struct.resource*, align 8
  %base = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !3199, metadata !DIExpression()), !dbg !3200
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3201
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3202
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !3200
  call void @llvm.dbg.declare(metadata %struct.syscon_platform_data** %pdata, metadata !3203, metadata !DIExpression()), !dbg !3209
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3210
  %call = call i8* @dev_get_platdata(%struct.device* %1) #9, !dbg !3211
  %2 = bitcast i8* %call to %struct.syscon_platform_data*, !dbg !3211
  store %struct.syscon_platform_data* %2, %struct.syscon_platform_data** %pdata, align 8, !dbg !3209
  call void @llvm.dbg.declare(metadata %struct.syscon** %syscon, metadata !3212, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.declare(metadata %struct.regmap_config* %syscon_config, metadata !3214, metadata !DIExpression()), !dbg !3215
  %3 = bitcast %struct.regmap_config* %syscon_config to i8*, !dbg !3216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.regmap_config* @syscon_regmap_config to i8*), i64 272, i1 false), !dbg !3216
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.declare(metadata i8** %base, metadata !3219, metadata !DIExpression()), !dbg !3220
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3221
  %call2 = call i8* @devm_kzalloc(%struct.device* %4, i64 32, i32 3264) #9, !dbg !3222
  %5 = bitcast i8* %call2 to %struct.syscon*, !dbg !3222
  store %struct.syscon* %5, %struct.syscon** %syscon, align 8, !dbg !3223
  %6 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !3224
  %tobool = icmp ne %struct.syscon* %6, null, !dbg !3224
  br i1 %tobool, label %if.end, label %if.then, !dbg !3226

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3227
  br label %return, !dbg !3227

if.end:                                           ; preds = %entry
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3228
  %call3 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 512, i32 0) #9, !dbg !3229
  store %struct.resource* %call3, %struct.resource** %res, align 8, !dbg !3230
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3231
  %tobool4 = icmp ne %struct.resource* %8, null, !dbg !3231
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3233

if.then5:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !3234
  br label %return, !dbg !3234

if.end6:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3235
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3236
  %start = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0, !dbg !3237
  %11 = load i64, i64* %start, align 8, !dbg !3237
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3238
  %call7 = call i64 @resource_size(%struct.resource* %12) #9, !dbg !3239
  %call8 = call i8* @devm_ioremap(%struct.device* %9, i64 %11, i64 %call7) #9, !dbg !3240
  store i8* %call8, i8** %base, align 8, !dbg !3241
  %13 = load i8*, i8** %base, align 8, !dbg !3242
  %tobool9 = icmp ne i8* %13, null, !dbg !3242
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3244

if.then10:                                        ; preds = %if.end6
  store i32 -12, i32* %retval, align 4, !dbg !3245
  br label %return, !dbg !3245

if.end11:                                         ; preds = %if.end6
  %14 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !3246
  %call12 = call i64 @resource_size(%struct.resource* %14) #9, !dbg !3247
  %sub = sub i64 %call12, 4, !dbg !3248
  %conv = trunc i64 %sub to i32, !dbg !3247
  %max_register = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 18, !dbg !3249
  store i32 %conv, i32* %max_register, align 4, !dbg !3250
  %15 = load %struct.syscon_platform_data*, %struct.syscon_platform_data** %pdata, align 8, !dbg !3251
  %tobool13 = icmp ne %struct.syscon_platform_data* %15, null, !dbg !3251
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3253

if.then14:                                        ; preds = %if.end11
  %16 = load %struct.syscon_platform_data*, %struct.syscon_platform_data** %pdata, align 8, !dbg !3254
  %label = getelementptr inbounds %struct.syscon_platform_data, %struct.syscon_platform_data* %16, i32 0, i32 0, !dbg !3255
  %17 = load i8*, i8** %label, align 8, !dbg !3255
  %name = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %syscon_config, i32 0, i32 0, !dbg !3256
  store i8* %17, i8** %name, align 8, !dbg !3257
  br label %if.end15, !dbg !3258

if.end15:                                         ; preds = %if.then14, %if.end11
  %18 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3259
  %19 = load i8*, i8** %base, align 8, !dbg !3259
  %call16 = call %struct.regmap* @__devm_regmap_init_mmio_clk(%struct.device* %18, i8* null, i8* %19, %struct.regmap_config* %syscon_config, %struct.lock_class_key* null, i8* null) #9, !dbg !3259
  %20 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !3260
  %regmap = getelementptr inbounds %struct.syscon, %struct.syscon* %20, i32 0, i32 1, !dbg !3261
  store %struct.regmap* %call16, %struct.regmap** %regmap, align 8, !dbg !3262
  %21 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !3263
  %regmap17 = getelementptr inbounds %struct.syscon, %struct.syscon* %21, i32 0, i32 1, !dbg !3265
  %22 = load %struct.regmap*, %struct.regmap** %regmap17, align 8, !dbg !3265
  %23 = bitcast %struct.regmap* %22 to i8*, !dbg !3263
  %call18 = call zeroext i1 @IS_ERR(i8* %23) #9, !dbg !3266
  br i1 %call18, label %if.then19, label %if.end23, !dbg !3267

if.then19:                                        ; preds = %if.end15
  %24 = load %struct.device*, %struct.device** %dev, align 8, !dbg !3268
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !3268
  %25 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !3270
  %regmap20 = getelementptr inbounds %struct.syscon, %struct.syscon* %25, i32 0, i32 1, !dbg !3271
  %26 = load %struct.regmap*, %struct.regmap** %regmap20, align 8, !dbg !3271
  %27 = bitcast %struct.regmap* %26 to i8*, !dbg !3270
  %call21 = call i64 @PTR_ERR(i8* %27) #9, !dbg !3272
  %conv22 = trunc i64 %call21 to i32, !dbg !3272
  store i32 %conv22, i32* %retval, align 4, !dbg !3273
  br label %return, !dbg !3273

if.end23:                                         ; preds = %if.end15
  %28 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3274
  %29 = load %struct.syscon*, %struct.syscon** %syscon, align 8, !dbg !3275
  %30 = bitcast %struct.syscon* %29 to i8*, !dbg !3275
  call void @platform_set_drvdata(%struct.platform_device* %28, i8* %30) #9, !dbg !3276
  store i32 0, i32* %retval, align 4, !dbg !3277
  br label %return, !dbg !3277

return:                                           ; preds = %if.end23, %if.then19, %if.then10, %if.then5, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !3278
  ret i32 %31, !dbg !3278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_platdata(%struct.device* %dev) #0 !dbg !3279 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3282, metadata !DIExpression()), !dbg !3283
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3284
  %platform_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 7, !dbg !3285
  %1 = load i8*, i8** %platform_data, align 8, !dbg !3285
  ret i8* %1, !dbg !3286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #0 !dbg !3287 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3290, metadata !DIExpression()), !dbg !3291
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3292, metadata !DIExpression()), !dbg !3293
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !3294, metadata !DIExpression()), !dbg !3295
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3296
  %1 = load i64, i64* %size.addr, align 8, !dbg !3297
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !3298
  %or = or i32 %2, 256, !dbg !3299
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #9, !dbg !3300
  ret i8* %call, !dbg !3301
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap(%struct.device*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.regmap* @__devm_regmap_init_mmio_clk(%struct.device*, i8*, i8*, %struct.regmap_config*, %struct.lock_class_key*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #0 !dbg !3302 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3305, metadata !DIExpression()), !dbg !3306
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3307, metadata !DIExpression()), !dbg !3308
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3309
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3310
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3311
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !3312
  ret void, !dbg !3313
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !3314 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3317, metadata !DIExpression()), !dbg !3318
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3319, metadata !DIExpression()), !dbg !3320
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3321
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3322
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3323
  store i8* %0, i8** %driver_data, align 8, !dbg !3324
  ret void, !dbg !3325
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2219, !2220, !2221, !2222}
!llvm.ident = !{!2223}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_syscon_init159", scope: !2, file: !3, line: 312, type: !76, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !75, globals: !2058, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mfd/syscon.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55, !62, !68}
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
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regcache_type", file: !56, line: 40, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/regmap.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "REGCACHE_NONE", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "REGCACHE_RBTREE", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "REGCACHE_COMPRESSED", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "REGCACHE_FLAT", value: 3, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "regmap_endian", file: !56, line: 184, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66, !67}
!64 = !DIEnumerator(name: "REGMAP_ENDIAN_DEFAULT", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "REGMAP_ENDIAN_BIG", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "REGMAP_ENDIAN_LITTLE", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "REGMAP_ENDIAN_NATIVE", value: 3, isUnsigned: true)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !69, line: 305, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73, !74}
!71 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!72 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!74 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!75 = !{!76, !77, !1486, !314, !230, !2056, !245, !1692}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscon", file: !3, line: 31, size: 256, elements: !79)
!79 = !{!80, !2052, !2055}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !78, file: !3, line: 32, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !83, line: 51, size: 1344, elements: !84)
!83 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !89, !95, !96, !2036, !2045, !2046, !2047, !2048, !2049, !2050, !2051}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !83, line: 52, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !82, file: !83, line: 53, baseType: !90, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !83, line: 28, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !82, file: !83, line: 54, baseType: !86, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !82, file: !83, line: 55, baseType: !97, size: 192, offset: 192)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !98, line: 17, size: 192, elements: !99)
!98 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !102, !2035}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !97, file: !98, line: 18, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !97, file: !98, line: 19, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !98, line: 110, size: 1152, elements: !106)
!106 = !{!107, !111, !115, !124, !1977, !1981, !1985, !1990, !1994, !1995, !1999, !2003, !2007, !2018, !2019, !2020, !2021, !2031}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !105, file: !98, line: 111, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!101, !101}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !105, file: !98, line: 112, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !101}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !105, file: !98, line: 113, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !122}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 30, baseType: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !105, file: !98, line: 114, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !122, !130}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !133)
!133 = !{!134, !1614, !1616, !1619, !1620, !1671, !1768, !1769, !1770, !1771, !1772, !1781, !1886, !1899, !1902, !1903, !1907, !1909, !1910, !1911, !1915, !1921, !1922, !1925, !1926, !1927, !1930, !1931, !1932, !1933, !1965, !1966, !1967, !1970, !1973, !1974, !1975, !1976}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !132, file: !30, line: 462, baseType: !135, size: 512)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !136, line: 64, size: 512, elements: !137)
!136 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!137 = !{!138, !139, !145, !147, !208, !1450, !1604, !1609, !1610, !1611, !1612, !1613}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !136, line: 65, baseType: !86, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !135, file: !136, line: 66, baseType: !140, size: 128, offset: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !120, line: 178, size: 128, elements: !141)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !120, line: 179, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !120, line: 179, baseType: !143, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !136, line: 67, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !135, file: !136, line: 68, baseType: !148, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !136, line: 192, size: 704, elements: !150)
!150 = !{!151, !152, !168, !169}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !149, file: !136, line: 193, baseType: !140, size: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !149, file: !136, line: 194, baseType: !153, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !154, line: 83, baseType: !155)
!154 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !154, line: 71, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !155, file: !154, line: 72, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !155, file: !154, line: 72, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !158, file: !154, line: 73, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !154, line: 20, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !161, file: !154, line: 21, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !165, line: 25, baseType: !166)
!165 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 25, elements: !167)
!167 = !{}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !149, file: !136, line: 195, baseType: !135, size: 512, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !149, file: !136, line: 196, baseType: !170, size: 64, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !136, line: 156, size: 192, elements: !173)
!173 = !{!174, !180, !185}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !172, file: !136, line: 157, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !148, !146}
!179 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !136, line: 158, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!86, !148, !146}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !172, file: !136, line: 159, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!179, !148, !146, !190}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !136, line: 148, size: 20736, elements: !192)
!192 = !{!193, !198, !202, !203, !207}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !191, file: !136, line: 149, baseType: !194, size: 192)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 192, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!196 = !{!197}
!197 = !DISubrange(count: 3)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !191, file: !136, line: 150, baseType: !199, size: 4096, offset: 192)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 4096, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !191, file: !136, line: 151, baseType: !179, size: 32, offset: 4288)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !191, file: !136, line: 152, baseType: !204, size: 16384, offset: 4320)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 16384, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 2048)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !191, file: !136, line: 153, baseType: !179, size: 32, offset: 20704)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !135, file: !136, line: 69, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !136, line: 138, size: 448, elements: !211)
!211 = !{!212, !216, !246, !248, !1398, !1429, !1433}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !210, file: !136, line: 139, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !146}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !210, file: !136, line: 140, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !220, line: 230, size: 128, elements: !221)
!220 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !238}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !219, file: !220, line: 231, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !146, !231, !195}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !120, line: 60, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !228, line: 73, baseType: !229)
!228 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !228, line: 15, baseType: !230)
!230 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !220, line: 30, size: 128, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !220, line: 31, baseType: !86, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !232, file: !220, line: 32, baseType: !236, size: 16, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !120, line: 19, baseType: !237)
!237 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !219, file: !220, line: 232, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!226, !146, !231, !86, !242}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 55, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !228, line: 72, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !228, line: 16, baseType: !245)
!245 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !210, file: !136, line: 141, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !210, file: !136, line: 142, baseType: !249, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !220, line: 84, size: 320, elements: !253)
!253 = !{!254, !255, !259, !1395, !1396}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !252, file: !220, line: 85, baseType: !86, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !252, file: !220, line: 86, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!236, !146, !231, !179}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !252, file: !220, line: 88, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!236, !146, !263, !179}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !220, line: 168, size: 448, elements: !265)
!265 = !{!266, !267, !268, !269, !279, !280}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !264, file: !220, line: 169, baseType: !232, size: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !264, file: !220, line: 170, baseType: !242, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !264, file: !220, line: 171, baseType: !76, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !264, file: !220, line: 172, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!226, !273, !146, !263, !195, !276, !242}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !275, line: 526, flags: DIFlagFwdDecl)
!275 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !120, line: 46, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !228, line: 88, baseType: !278)
!278 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !264, file: !220, line: 174, baseType: !270, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !264, file: !220, line: 176, baseType: !281, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!179, !273, !146, !263, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !286, line: 305, size: 1472, elements: !287)
!286 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!287 = !{!288, !289, !290, !291, !292, !300, !301, !1369, !1375, !1376, !1381, !1382, !1385, !1389, !1390, !1391, !1392, !1393}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !285, file: !286, line: 308, baseType: !245, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !285, file: !286, line: 309, baseType: !245, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !285, file: !286, line: 313, baseType: !284, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !285, file: !286, line: 313, baseType: !284, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !285, file: !286, line: 315, baseType: !293, size: 192, align: 64, offset: 256)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !294, line: 24, size: 192, align: 64, elements: !295)
!294 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !297, !299}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !293, file: !294, line: 25, baseType: !245, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !293, file: !294, line: 26, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !293, file: !294, line: 27, baseType: !298, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !285, file: !286, line: 323, baseType: !245, size: 64, offset: 448)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !285, file: !286, line: 327, baseType: !302, size: 64, offset: 512)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !286, line: 388, size: 7296, elements: !304)
!304 = !{!305, !1365}
!305 = !DIDerivedType(tag: DW_TAG_member, scope: !303, file: !286, line: 389, baseType: !306, size: 7296)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !303, file: !286, line: 389, size: 7296, elements: !307)
!307 = !{!308, !309, !313, !317, !321, !322, !323, !324, !325, !333, !338, !339, !340, !341, !350, !351, !352, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !387, !395, !398, !430, !431, !1335, !1336, !1339, !1343, !1344, !1347, !1348, !1349, !1352, !1364}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !306, file: !286, line: 390, baseType: !284, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !306, file: !286, line: 391, baseType: !310, size: 64, offset: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !294, line: 31, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !310, file: !294, line: 32, baseType: !298, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !306, file: !286, line: 392, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !316)
!316 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !306, file: !286, line: 394, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!245, !273, !245, !245, !245, !245}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !306, file: !286, line: 398, baseType: !245, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !306, file: !286, line: 399, baseType: !245, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !306, file: !286, line: 405, baseType: !245, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !306, file: !286, line: 406, baseType: !245, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !306, file: !286, line: 407, baseType: !326, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !275, line: 286, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !275, line: 286, size: 64, elements: !329)
!329 = !{!330}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !328, file: !275, line: 286, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !332, line: 18, baseType: !245)
!332 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !306, file: !286, line: 416, baseType: !334, size: 32, offset: 576)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !120, line: 168, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 166, size: 32, elements: !336)
!336 = !{!337}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !335, file: !120, line: 167, baseType: !179, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !306, file: !286, line: 428, baseType: !334, size: 32, offset: 608)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !306, file: !286, line: 437, baseType: !334, size: 32, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !306, file: !286, line: 447, baseType: !334, size: 32, offset: 672)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !306, file: !286, line: 450, baseType: !342, size: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !343, line: 13, baseType: !344)
!343 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !120, line: 175, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 173, size: 64, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !345, file: !120, line: 174, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !278)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !306, file: !286, line: 452, baseType: !179, size: 32, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !306, file: !286, line: 454, baseType: !153, offset: 800)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !306, file: !286, line: 457, baseType: !353, size: 256, offset: 832)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !354, line: 35, size: 256, elements: !355)
!354 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !357, !358, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !353, file: !354, line: 36, baseType: !342, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !353, file: !354, line: 42, baseType: !342, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !353, file: !354, line: 46, baseType: !359, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !154, line: 29, baseType: !161)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !353, file: !354, line: 47, baseType: !140, size: 128, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !306, file: !286, line: 459, baseType: !140, size: 128, offset: 1088)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !306, file: !286, line: 466, baseType: !245, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !306, file: !286, line: 467, baseType: !245, size: 64, offset: 1280)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !306, file: !286, line: 469, baseType: !245, size: 64, offset: 1344)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !306, file: !286, line: 470, baseType: !245, size: 64, offset: 1408)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !306, file: !286, line: 471, baseType: !344, size: 64, offset: 1472)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !306, file: !286, line: 472, baseType: !245, size: 64, offset: 1536)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !306, file: !286, line: 473, baseType: !245, size: 64, offset: 1600)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !306, file: !286, line: 474, baseType: !245, size: 64, offset: 1664)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !306, file: !286, line: 475, baseType: !245, size: 64, offset: 1728)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !306, file: !286, line: 477, baseType: !153, offset: 1792)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !306, file: !286, line: 478, baseType: !245, size: 64, offset: 1792)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !306, file: !286, line: 478, baseType: !245, size: 64, offset: 1856)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !306, file: !286, line: 478, baseType: !245, size: 64, offset: 1920)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !306, file: !286, line: 478, baseType: !245, size: 64, offset: 1984)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !306, file: !286, line: 479, baseType: !245, size: 64, offset: 2048)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !306, file: !286, line: 479, baseType: !245, size: 64, offset: 2112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !306, file: !286, line: 479, baseType: !245, size: 64, offset: 2176)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !306, file: !286, line: 480, baseType: !245, size: 64, offset: 2240)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !306, file: !286, line: 480, baseType: !245, size: 64, offset: 2304)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !306, file: !286, line: 480, baseType: !245, size: 64, offset: 2368)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !306, file: !286, line: 480, baseType: !245, size: 64, offset: 2432)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !306, file: !286, line: 482, baseType: !384, size: 2816, offset: 2496)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2816, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 44)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !306, file: !286, line: 488, baseType: !388, size: 256, offset: 5312)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !389, line: 60, size: 256, elements: !390)
!389 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !388, file: !389, line: 61, baseType: !392, size: 256)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 4)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !306, file: !286, line: 490, baseType: !396, size: 64, offset: 5568)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !286, line: 490, flags: DIFlagFwdDecl)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !306, file: !286, line: 493, baseType: !399, size: 896, offset: 5632)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !400, line: 53, baseType: !401)
!400 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 13, size: 896, elements: !402)
!402 = !{!403, !404, !405, !406, !409, !410, !417, !418, !422, !423, !426}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !401, file: !400, line: 18, baseType: !314, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !401, file: !400, line: 28, baseType: !344, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !401, file: !400, line: 31, baseType: !353, size: 256, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !401, file: !400, line: 32, baseType: !407, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !400, line: 32, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !401, file: !400, line: 37, baseType: !237, size: 16, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !401, file: !400, line: 40, baseType: !411, size: 192, offset: 512)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !412, line: 53, size: 192, elements: !413)
!412 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !415, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !411, file: !412, line: 54, baseType: !342, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !411, file: !412, line: 55, baseType: !153, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !411, file: !412, line: 59, baseType: !140, size: 128, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !401, file: !400, line: 41, baseType: !76, size: 64, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !401, file: !400, line: 42, baseType: !419, size: 64, offset: 768)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !400, line: 42, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !401, file: !400, line: 44, baseType: !334, size: 32, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !401, file: !400, line: 50, baseType: !424, size: 16, offset: 864)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !237)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !401, file: !400, line: 51, baseType: !427, size: 16, offset: 880)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !429)
!429 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !286, line: 495, baseType: !245, size: 64, offset: 6528)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !306, file: !286, line: 497, baseType: !432, size: 64, offset: 6592)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !286, line: 381, size: 384, elements: !434)
!434 = !{!435, !436, !1334}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !433, file: !286, line: 382, baseType: !334, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !433, file: !286, line: 383, baseType: !437, size: 128, offset: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !286, line: 376, size: 128, elements: !438)
!438 = !{!439, !1332}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !437, file: !286, line: 377, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !442, line: 640, size: 48640, elements: !443)
!442 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!443 = !{!444, !450, !452, !453, !459, !460, !461, !462, !463, !464, !465, !466, !470, !488, !499, !594, !595, !596, !607, !608, !610, !611, !612, !613, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !692, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !748, !750, !751, !752, !764, !766, !767, !768, !769, !770, !776, !777, !778, !779, !780, !781, !782, !794, !799, !803, !804, !805, !808, !812, !815, !818, !821, !824, !827, !830, !833, !839, !840, !841, !847, !848, !849, !850, !851, !860, !861, !862, !863, !864, !869, !870, !871, !874, !875, !878, !881, !884, !887, !890, !893, !894, !974, !977, !980, !981, !984, !985, !986, !992, !993, !994, !1007, !1008, !1009, !1019, !1024, !1027, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !441, file: !442, line: 646, baseType: !445, size: 128)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !446, line: 56, size: 128, elements: !447)
!446 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !446, line: 57, baseType: !245, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !445, file: !446, line: 58, baseType: !91, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !441, file: !442, line: 649, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !230)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !441, file: !442, line: 657, baseType: !76, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !441, file: !442, line: 658, baseType: !454, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !455, line: 113, baseType: !456)
!455 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !455, line: 111, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !456, file: !455, line: 112, baseType: !334, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !442, line: 660, baseType: !7, size: 32, offset: 288)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !441, file: !442, line: 661, baseType: !7, size: 32, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !441, file: !442, line: 684, baseType: !179, size: 32, offset: 352)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !441, file: !442, line: 686, baseType: !179, size: 32, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !441, file: !442, line: 687, baseType: !179, size: 32, offset: 416)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !441, file: !442, line: 688, baseType: !179, size: 32, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !441, file: !442, line: 689, baseType: !7, size: 32, offset: 480)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !441, file: !442, line: 691, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !442, line: 691, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !441, file: !442, line: 692, baseType: !471, size: 832, offset: 576)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !442, line: 451, size: 832, elements: !472)
!472 = !{!473, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !471, file: !442, line: 453, baseType: !474, size: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !442, line: 325, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !474, file: !442, line: 326, baseType: !245, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !474, file: !442, line: 327, baseType: !91, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !471, file: !442, line: 454, baseType: !293, size: 192, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !471, file: !442, line: 455, baseType: !140, size: 128, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !471, file: !442, line: 456, baseType: !7, size: 32, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !471, file: !442, line: 458, baseType: !314, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !471, file: !442, line: 459, baseType: !314, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !471, file: !442, line: 460, baseType: !314, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !471, file: !442, line: 461, baseType: !314, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !471, file: !442, line: 463, baseType: !314, size: 64, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !471, file: !442, line: 465, baseType: !487, offset: 832)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !442, line: 415, elements: !167)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !441, file: !442, line: 693, baseType: !489, size: 384, offset: 1408)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !442, line: 489, size: 384, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !489, file: !442, line: 490, baseType: !140, size: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !489, file: !442, line: 491, baseType: !245, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !489, file: !442, line: 492, baseType: !245, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !489, file: !442, line: 493, baseType: !7, size: 32, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !489, file: !442, line: 494, baseType: !237, size: 16, offset: 288)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !489, file: !442, line: 495, baseType: !237, size: 16, offset: 304)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !489, file: !442, line: 497, baseType: !498, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !441, file: !442, line: 697, baseType: !500, size: 1792, offset: 1792)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !442, line: 507, size: 1792, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !591, !592}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !500, file: !442, line: 508, baseType: !293, size: 192, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !500, file: !442, line: 515, baseType: !314, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !500, file: !442, line: 516, baseType: !314, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !500, file: !442, line: 517, baseType: !314, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !500, file: !442, line: 518, baseType: !314, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !500, file: !442, line: 519, baseType: !314, size: 64, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !500, file: !442, line: 526, baseType: !348, size: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !500, file: !442, line: 527, baseType: !314, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !442, line: 528, baseType: !7, size: 32, offset: 640)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !500, file: !442, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !500, file: !442, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !500, file: !442, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !500, file: !442, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !500, file: !442, line: 563, baseType: !516, size: 512, offset: 704)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !517)
!517 = !{!518, !526, !527, !532, !584, !588, !589, !590}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !6, line: 119, baseType: !519, size: 256)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !520, line: 9, size: 256, elements: !521)
!520 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !519, file: !520, line: 10, baseType: !293, size: 192, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !519, file: !520, line: 11, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !525, line: 29, baseType: !348)
!525 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !516, file: !6, line: 120, baseType: !524, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !516, file: !6, line: 121, baseType: !528, size: 64, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!5, !531}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !516, file: !6, line: 122, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !535)
!535 = !{!536, !556, !557, !560, !570, !571, !579, !583}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !534, file: !6, line: 160, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !538, file: !6, line: 215, baseType: !359)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !538, file: !6, line: 216, baseType: !7, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !538, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !538, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !538, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !538, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !538, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !538, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !538, file: !6, line: 233, baseType: !524, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !538, file: !6, line: 234, baseType: !531, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !538, file: !6, line: 235, baseType: !524, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !538, file: !6, line: 236, baseType: !531, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !538, file: !6, line: 237, baseType: !553, size: 4096, offset: 512)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 4096, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !534, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !534, file: !6, line: 162, baseType: !558, size: 32, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !120, line: 27, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !228, line: 96, baseType: !179)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !534, file: !6, line: 163, baseType: !561, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !562, line: 276, baseType: !563)
!562 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !562, line: 276, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !563, file: !562, line: 276, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !562, line: 70, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !562, line: 65, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !567, file: !562, line: 66, baseType: !7, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !534, file: !6, line: 164, baseType: !531, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !534, file: !6, line: 165, baseType: !572, size: 128, offset: 256)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !520, line: 14, size: 128, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !572, file: !520, line: 15, baseType: !575, size: 128)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !294, line: 125, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !575, file: !294, line: 126, baseType: !310, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !575, file: !294, line: 127, baseType: !298, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !534, file: !6, line: 166, baseType: !580, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!524}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !534, file: !6, line: 167, baseType: !524, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !516, file: !6, line: 123, baseType: !585, size: 8, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !587)
!587 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !516, file: !6, line: 124, baseType: !585, size: 8, offset: 456)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !516, file: !6, line: 125, baseType: !585, size: 8, offset: 464)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !516, file: !6, line: 126, baseType: !585, size: 8, offset: 472)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !500, file: !442, line: 572, baseType: !516, size: 512, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !500, file: !442, line: 580, baseType: !593, size: 64, offset: 1728)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !441, file: !442, line: 721, baseType: !7, size: 32, offset: 3584)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !441, file: !442, line: 722, baseType: !179, size: 32, offset: 3616)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !441, file: !442, line: 723, baseType: !597, size: 64, offset: 3648)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !600, line: 17, baseType: !601)
!600 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !600, line: 17, size: 64, elements: !602)
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !601, file: !600, line: 17, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 64, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 1)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !441, file: !442, line: 724, baseType: !599, size: 64, offset: 3712)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !441, file: !442, line: 749, baseType: !609, offset: 3776)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !442, line: 290, elements: !167)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !441, file: !442, line: 751, baseType: !140, size: 128, offset: 3776)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !441, file: !442, line: 757, baseType: !302, size: 64, offset: 3904)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !441, file: !442, line: 758, baseType: !302, size: 64, offset: 3968)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !441, file: !442, line: 761, baseType: !614, size: 320, offset: 4032)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !389, line: 34, size: 320, elements: !615)
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !614, file: !389, line: 35, baseType: !314, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !614, file: !389, line: 36, baseType: !618, size: 256, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !393)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !441, file: !442, line: 766, baseType: !179, size: 32, offset: 4352)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !441, file: !442, line: 767, baseType: !179, size: 32, offset: 4384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !441, file: !442, line: 768, baseType: !179, size: 32, offset: 4416)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !441, file: !442, line: 770, baseType: !179, size: 32, offset: 4448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !441, file: !442, line: 772, baseType: !245, size: 64, offset: 4480)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !441, file: !442, line: 775, baseType: !7, size: 32, offset: 4544)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !441, file: !442, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !441, file: !442, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !441, file: !442, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !441, file: !442, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !441, file: !442, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !441, file: !442, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !441, file: !442, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !441, file: !442, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !441, file: !442, line: 831, baseType: !245, size: 64, offset: 4672)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !441, file: !442, line: 833, baseType: !635, size: 384, offset: 4736)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !636)
!636 = !{!637, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !635, file: !12, line: 26, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!230, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !12, line: 27, baseType: !643, size: 320, offset: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !12, line: 27, size: 320, elements: !644)
!644 = !{!645, !655, !682}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !643, file: !12, line: 36, baseType: !646, size: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !12, line: 29, size: 320, elements: !647)
!647 = !{!648, !650, !651, !652, !653, !654}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !646, file: !12, line: 30, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !646, file: !12, line: 31, baseType: !91, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !12, line: 32, baseType: !91, size: 32, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !646, file: !12, line: 33, baseType: !91, size: 32, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !646, file: !12, line: 34, baseType: !314, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !646, file: !12, line: 35, baseType: !649, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !643, file: !12, line: 46, baseType: !656, size: 192)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !12, line: 38, size: 192, elements: !657)
!657 = !{!658, !659, !660, !681}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !656, file: !12, line: 39, baseType: !558, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !12, line: 41, baseType: !661, size: 64, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !12, line: 41, size: 64, elements: !662)
!662 = !{!663, !671}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !661, file: !12, line: 42, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !666, line: 7, size: 128, elements: !667)
!666 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!667 = !{!668, !670}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !665, file: !666, line: 8, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !228, line: 93, baseType: !278)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !665, file: !666, line: 9, baseType: !278, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !661, file: !12, line: 43, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !674, line: 7, size: 64, elements: !675)
!674 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !673, file: !674, line: 8, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !674, line: 5, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !179)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !673, file: !674, line: 9, baseType: !678, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !656, file: !12, line: 45, baseType: !314, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !643, file: !12, line: 54, baseType: !683, size: 256)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !643, file: !12, line: 48, size: 256, elements: !684)
!684 = !{!685, !688, !689, !690, !691}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !683, file: !12, line: 49, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !683, file: !12, line: 50, baseType: !179, size: 32, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !683, file: !12, line: 51, baseType: !179, size: 32, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !683, file: !12, line: 52, baseType: !245, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !683, file: !12, line: 53, baseType: !245, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !441, file: !442, line: 835, baseType: !693, size: 32, offset: 5120)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !120, line: 22, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !228, line: 28, baseType: !179)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !441, file: !442, line: 836, baseType: !693, size: 32, offset: 5152)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !441, file: !442, line: 840, baseType: !245, size: 64, offset: 5184)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !441, file: !442, line: 849, baseType: !440, size: 64, offset: 5248)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !441, file: !442, line: 852, baseType: !440, size: 64, offset: 5312)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !441, file: !442, line: 857, baseType: !140, size: 128, offset: 5376)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !441, file: !442, line: 858, baseType: !140, size: 128, offset: 5504)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !441, file: !442, line: 859, baseType: !440, size: 64, offset: 5632)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !441, file: !442, line: 867, baseType: !140, size: 128, offset: 5696)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !441, file: !442, line: 868, baseType: !140, size: 128, offset: 5824)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !441, file: !442, line: 871, baseType: !705, size: 64, offset: 5952)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !707, line: 59, size: 768, elements: !708)
!707 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !710, !711, !712, !723, !724, !731, !740}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !706, file: !707, line: 61, baseType: !454, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !706, file: !707, line: 62, baseType: !7, size: 32, offset: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !706, file: !707, line: 63, baseType: !153, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !706, file: !707, line: 65, baseType: !713, size: 256, offset: 64)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, elements: !393)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !120, line: 182, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !714, file: !120, line: 183, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !120, line: 186, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !120, line: 187, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !718, file: !120, line: 187, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !706, file: !707, line: 66, baseType: !714, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !706, file: !707, line: 68, baseType: !725, size: 128, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !726, line: 40, baseType: !727)
!726 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !726, line: 36, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !726, line: 37, baseType: !153)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !727, file: !726, line: 38, baseType: !140, size: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !706, file: !707, line: 69, baseType: !732, size: 128, align: 64, offset: 512)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !120, line: 216, size: 128, align: 64, elements: !733)
!733 = !{!734, !736}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !120, line: 217, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !732, file: !120, line: 218, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !735}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !706, file: !707, line: 70, baseType: !741, size: 128, offset: 640)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 128, elements: !605)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !707, line: 54, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !742, file: !707, line: 55, baseType: !179, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !742, file: !707, line: 56, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !707, line: 56, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !441, file: !442, line: 872, baseType: !749, size: 512, offset: 6016)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 512, elements: !393)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !441, file: !442, line: 873, baseType: !140, size: 128, offset: 6528)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !441, file: !442, line: 874, baseType: !140, size: 128, offset: 6656)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !441, file: !442, line: 876, baseType: !753, size: 64, offset: 6784)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !755, line: 26, size: 192, elements: !756)
!755 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !754, file: !755, line: 27, baseType: !7, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !754, file: !755, line: 28, baseType: !759, size: 128, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !760, line: 43, size: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !759, file: !760, line: 44, baseType: !359)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !759, file: !760, line: 45, baseType: !140, size: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !441, file: !442, line: 879, baseType: !765, size: 64, offset: 6848)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !441, file: !442, line: 882, baseType: !765, size: 64, offset: 6912)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !441, file: !442, line: 884, baseType: !314, size: 64, offset: 6976)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !441, file: !442, line: 885, baseType: !314, size: 64, offset: 7040)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !441, file: !442, line: 890, baseType: !314, size: 64, offset: 7104)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !441, file: !442, line: 891, baseType: !771, size: 128, offset: 7168)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !442, line: 242, size: 128, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !771, file: !442, line: 244, baseType: !314, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !771, file: !442, line: 245, baseType: !314, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !771, file: !442, line: 246, baseType: !359, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !441, file: !442, line: 900, baseType: !245, size: 64, offset: 7296)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !441, file: !442, line: 901, baseType: !245, size: 64, offset: 7360)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !441, file: !442, line: 904, baseType: !314, size: 64, offset: 7424)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !441, file: !442, line: 907, baseType: !314, size: 64, offset: 7488)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !441, file: !442, line: 910, baseType: !245, size: 64, offset: 7552)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !441, file: !442, line: 911, baseType: !245, size: 64, offset: 7616)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !441, file: !442, line: 914, baseType: !783, size: 640, offset: 7680)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !784, line: 123, size: 640, elements: !785)
!784 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !792, !793}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !783, file: !784, line: 124, baseType: !787, size: 576)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !788, size: 576, elements: !196)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !784, line: 108, size: 192, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !788, file: !784, line: 109, baseType: !314, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !788, file: !784, line: 110, baseType: !572, size: 128, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !783, file: !784, line: 125, baseType: !7, size: 32, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !783, file: !784, line: 126, baseType: !7, size: 32, offset: 608)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !441, file: !442, line: 917, baseType: !795, size: 192, offset: 8320)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !784, line: 134, size: 192, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !795, file: !784, line: 135, baseType: !732, size: 128, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !795, file: !784, line: 136, baseType: !7, size: 32, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !441, file: !442, line: 923, baseType: !800, size: 64, offset: 8512)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !442, line: 923, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !441, file: !442, line: 926, baseType: !800, size: 64, offset: 8576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !441, file: !442, line: 929, baseType: !800, size: 64, offset: 8640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !441, file: !442, line: 933, baseType: !806, size: 64, offset: 8704)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !442, line: 933, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !441, file: !442, line: 943, baseType: !809, size: 128, offset: 8768)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !441, file: !442, line: 945, baseType: !813, size: 64, offset: 8896)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !442, line: 49, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !441, file: !442, line: 956, baseType: !816, size: 64, offset: 8960)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !442, line: 45, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !441, file: !442, line: 959, baseType: !819, size: 64, offset: 9024)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !442, line: 959, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !441, file: !442, line: 962, baseType: !822, size: 64, offset: 9088)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !442, line: 66, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !441, file: !442, line: 966, baseType: !825, size: 64, offset: 9152)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !442, line: 50, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !441, file: !442, line: 969, baseType: !828, size: 64, offset: 9216)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !784, line: 223, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !441, file: !442, line: 970, baseType: !831, size: 64, offset: 9280)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !442, line: 62, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !441, file: !442, line: 971, baseType: !834, size: 64, offset: 9344)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !835, line: 25, baseType: !836)
!835 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 23, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !836, file: !835, line: 24, baseType: !604, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !441, file: !442, line: 972, baseType: !834, size: 64, offset: 9408)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !441, file: !442, line: 974, baseType: !834, size: 64, offset: 9472)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !441, file: !442, line: 975, baseType: !842, size: 192, offset: 9536)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !843, line: 30, size: 192, elements: !844)
!843 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !842, file: !843, line: 31, baseType: !140, size: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !842, file: !843, line: 32, baseType: !834, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !441, file: !442, line: 976, baseType: !245, size: 64, offset: 9728)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !441, file: !442, line: 977, baseType: !242, size: 64, offset: 9792)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !441, file: !442, line: 978, baseType: !7, size: 32, offset: 9856)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !441, file: !442, line: 980, baseType: !735, size: 64, offset: 9920)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !441, file: !442, line: 989, baseType: !852, size: 128, offset: 9984)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !853, line: 35, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !852, file: !853, line: 36, baseType: !179, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !852, file: !853, line: 37, baseType: !334, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !852, file: !853, line: 38, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !853, line: 23, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !441, file: !442, line: 992, baseType: !314, size: 64, offset: 10112)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !441, file: !442, line: 993, baseType: !314, size: 64, offset: 10176)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !441, file: !442, line: 996, baseType: !153, offset: 10240)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !441, file: !442, line: 999, baseType: !359, offset: 10240)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !441, file: !442, line: 1001, baseType: !865, size: 64, offset: 10240)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !442, line: 636, size: 64, elements: !866)
!866 = !{!867}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !865, file: !442, line: 637, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !441, file: !442, line: 1005, baseType: !575, size: 128, offset: 10304)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !441, file: !442, line: 1007, baseType: !440, size: 64, offset: 10432)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !441, file: !442, line: 1009, baseType: !872, size: 64, offset: 10496)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !442, line: 1009, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !441, file: !442, line: 1043, baseType: !76, size: 64, offset: 10560)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !441, file: !442, line: 1046, baseType: !876, size: 64, offset: 10624)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !442, line: 41, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !441, file: !442, line: 1050, baseType: !879, size: 64, offset: 10688)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !442, line: 42, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !441, file: !442, line: 1054, baseType: !882, size: 64, offset: 10752)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !442, line: 55, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !441, file: !442, line: 1056, baseType: !885, size: 64, offset: 10816)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !442, line: 40, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !441, file: !442, line: 1058, baseType: !888, size: 64, offset: 10880)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !442, line: 47, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !441, file: !442, line: 1061, baseType: !891, size: 64, offset: 10944)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !442, line: 43, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !441, file: !442, line: 1064, baseType: !245, size: 64, offset: 11008)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !441, file: !442, line: 1065, baseType: !895, size: 64, offset: 11072)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !843, line: 14, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !843, line: 12, size: 384, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !843, line: 13, baseType: !900, size: 384)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !843, line: 13, size: 384, elements: !901)
!901 = !{!902, !903, !904, !905}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !900, file: !843, line: 13, baseType: !179, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !900, file: !843, line: 13, baseType: !179, size: 32, offset: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !900, file: !843, line: 13, baseType: !179, size: 32, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !900, file: !843, line: 13, baseType: !906, size: 256, offset: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !907, line: 32, size: 256, elements: !908)
!907 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!908 = !{!909, !915, !928, !934, !943, !963, !968}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !906, file: !907, line: 37, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 34, size: 64, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !910, file: !907, line: 35, baseType: !694, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !910, file: !907, line: 36, baseType: !914, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !228, line: 49, baseType: !7)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !906, file: !907, line: 45, baseType: !916, size: 192)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 40, size: 192, elements: !917)
!917 = !{!918, !920, !921, !927}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !916, file: !907, line: 41, baseType: !919, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !228, line: 95, baseType: !179)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !916, file: !907, line: 42, baseType: !179, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !916, file: !907, line: 43, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !907, line: 11, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !907, line: 8, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !923, file: !907, line: 9, baseType: !179, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !923, file: !907, line: 10, baseType: !76, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !916, file: !907, line: 44, baseType: !179, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !906, file: !907, line: 52, baseType: !929, size: 128)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 48, size: 128, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !929, file: !907, line: 49, baseType: !694, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !929, file: !907, line: 50, baseType: !914, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !929, file: !907, line: 51, baseType: !922, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !906, file: !907, line: 61, baseType: !935, size: 256)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 55, size: 256, elements: !936)
!936 = !{!937, !938, !939, !940, !942}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !935, file: !907, line: 56, baseType: !694, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !935, file: !907, line: 57, baseType: !914, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !935, file: !907, line: 58, baseType: !179, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !935, file: !907, line: 59, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !228, line: 94, baseType: !229)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !935, file: !907, line: 60, baseType: !941, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !906, file: !907, line: 95, baseType: !944, size: 256)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 64, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !944, file: !907, line: 65, baseType: !76, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !907, line: 77, baseType: !948, size: 192, offset: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !944, file: !907, line: 77, size: 192, elements: !949)
!949 = !{!950, !951, !958}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !948, file: !907, line: 82, baseType: !429, size: 16)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !948, file: !907, line: 88, baseType: !952, size: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !907, line: 84, size: 192, elements: !953)
!953 = !{!954, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !952, file: !907, line: 85, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !554)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !952, file: !907, line: 86, baseType: !76, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !952, file: !907, line: 87, baseType: !76, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !948, file: !907, line: 93, baseType: !959, size: 96)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !907, line: 90, size: 96, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !959, file: !907, line: 91, baseType: !955, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !959, file: !907, line: 92, baseType: !93, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !906, file: !907, line: 101, baseType: !964, size: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 98, size: 128, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !964, file: !907, line: 99, baseType: !230, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !964, file: !907, line: 100, baseType: !179, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !906, file: !907, line: 108, baseType: !969, size: 128)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !907, line: 104, size: 128, elements: !970)
!970 = !{!971, !972, !973}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !969, file: !907, line: 105, baseType: !76, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !969, file: !907, line: 106, baseType: !179, size: 32, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !969, file: !907, line: 107, baseType: !7, size: 32, offset: 96)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !441, file: !442, line: 1067, baseType: !975, offset: 11136)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !976, line: 12, elements: !167)
!976 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !441, file: !442, line: 1099, baseType: !978, size: 64, offset: 11136)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !442, line: 56, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !441, file: !442, line: 1103, baseType: !140, size: 128, offset: 11200)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !441, file: !442, line: 1104, baseType: !982, size: 64, offset: 11328)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !442, line: 46, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !441, file: !442, line: 1105, baseType: !411, size: 192, offset: 11392)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !441, file: !442, line: 1106, baseType: !7, size: 32, offset: 11584)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !441, file: !442, line: 1109, baseType: !987, size: 128, offset: 11648)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, size: 128, elements: !990)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !442, line: 51, flags: DIFlagFwdDecl)
!990 = !{!991}
!991 = !DISubrange(count: 2)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !441, file: !442, line: 1110, baseType: !411, size: 192, offset: 11776)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !441, file: !442, line: 1111, baseType: !140, size: 128, offset: 11968)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !441, file: !442, line: 1173, baseType: !995, size: 64, offset: 12096)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !997, line: 62, size: 256, align: 256, elements: !998)
!997 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!998 = !{!999, !1000, !1001, !1006}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !996, file: !997, line: 75, baseType: !93, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !996, file: !997, line: 90, baseType: !93, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !996, file: !997, line: 124, baseType: !1002, size: 64, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !997, line: 109, size: 64, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1002, file: !997, line: 110, baseType: !315, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1002, file: !997, line: 112, baseType: !315, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !997, line: 144, baseType: !93, size: 32, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !441, file: !442, line: 1174, baseType: !91, size: 32, offset: 12160)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !441, file: !442, line: 1179, baseType: !245, size: 64, offset: 12224)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !441, file: !442, line: 1182, baseType: !1010, size: 128, offset: 12288)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !389, line: 76, size: 128, elements: !1011)
!1011 = !{!1012, !1017, !1018}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1010, file: !389, line: 85, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1014, line: 7, size: 64, elements: !1015)
!1014 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1013, file: !1014, line: 12, baseType: !601, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1010, file: !389, line: 88, baseType: !119, size: 8, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1010, file: !389, line: 95, baseType: !119, size: 8, offset: 72)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !442, line: 1184, baseType: !1020, size: 128, offset: 12416)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !442, line: 1184, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1020, file: !442, line: 1185, baseType: !454, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1020, file: !442, line: 1186, baseType: !732, size: 128, align: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !441, file: !442, line: 1190, baseType: !1025, size: 64, offset: 12544)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !442, line: 53, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !441, file: !442, line: 1192, baseType: !1028, size: 128, offset: 12608)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !389, line: 64, size: 128, elements: !1029)
!1029 = !{!1030, !1123, !1124}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1028, file: !389, line: 65, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !286, line: 68, size: 512, align: 128, elements: !1033)
!1033 = !{!1034, !1035, !1115, !1122}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !286, line: 69, baseType: !245, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !286, line: 77, baseType: !1036, size: 320, offset: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !286, line: 77, size: 320, elements: !1037)
!1037 = !{!1038, !1047, !1052, !1080, !1088, !1094, !1107, !1114}
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 78, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 78, size: 320, elements: !1040)
!1040 = !{!1041, !1042, !1045, !1046}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1039, file: !286, line: 84, baseType: !140, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1039, file: !286, line: 86, baseType: !1043, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !286, line: 26, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1039, file: !286, line: 87, baseType: !245, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1039, file: !286, line: 94, baseType: !245, size: 64, offset: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 96, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 96, size: 64, elements: !1049)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1048, file: !286, line: 101, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !120, line: 143, baseType: !314)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 103, baseType: !1053, size: 320)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 103, size: 320, elements: !1054)
!1054 = !{!1055, !1065, !1068, !1069}
!1055 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !286, line: 104, baseType: !1056, size: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !286, line: 104, size: 128, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1056, file: !286, line: 105, baseType: !140, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !286, line: 106, baseType: !1060, size: 128)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1056, file: !286, line: 106, size: 128, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !286, line: 107, baseType: !1031, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1060, file: !286, line: 109, baseType: !179, size: 32, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1060, file: !286, line: 110, baseType: !179, size: 32, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1053, file: !286, line: 117, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !286, line: 117, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1053, file: !286, line: 119, baseType: !76, size: 64, offset: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1053, file: !286, line: 120, baseType: !1070, size: 64, offset: 256)
!1070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !286, line: 120, size: 64, elements: !1071)
!1071 = !{!1072, !1073, !1074}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1070, file: !286, line: 121, baseType: !76, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1070, file: !286, line: 122, baseType: !245, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1070, file: !286, line: 123, baseType: !1075, size: 32)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1070, file: !286, line: 123, size: 32, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1075, file: !286, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1075, file: !286, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1075, file: !286, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 130, baseType: !1081, size: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 130, size: 192, elements: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1081, file: !286, line: 131, baseType: !245, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1081, file: !286, line: 134, baseType: !587, size: 8, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1081, file: !286, line: 135, baseType: !587, size: 8, offset: 72)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1081, file: !286, line: 136, baseType: !334, size: 32, offset: 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1081, file: !286, line: 137, baseType: !7, size: 32, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 139, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 139, size: 256, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1089, file: !286, line: 140, baseType: !245, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1089, file: !286, line: 141, baseType: !334, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1089, file: !286, line: 143, baseType: !140, size: 128, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 145, baseType: !1095, size: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 145, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1100, !1101, !1106}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1095, file: !286, line: 146, baseType: !245, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1095, file: !286, line: 147, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !275, line: 509, baseType: !1031)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1095, file: !286, line: 148, baseType: !245, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !286, line: 149, baseType: !1102, size: 64, offset: 192)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !286, line: 149, size: 64, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1102, file: !286, line: 150, baseType: !302, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1102, file: !286, line: 151, baseType: !334, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1095, file: !286, line: 156, baseType: !153, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !286, line: 159, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !286, line: 159, size: 128, elements: !1109)
!1109 = !{!1110, !1113}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1108, file: !286, line: 161, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !286, line: 161, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1108, file: !286, line: 162, baseType: !76, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1036, file: !286, line: 176, baseType: !732, size: 128, align: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !286, line: 179, baseType: !1116, size: 32, offset: 384)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !286, line: 179, size: 32, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1116, file: !286, line: 184, baseType: !334, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1116, file: !286, line: 192, baseType: !7, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1116, file: !286, line: 194, baseType: !7, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1116, file: !286, line: 195, baseType: !179, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1032, file: !286, line: 199, baseType: !334, size: 32, offset: 416)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1028, file: !389, line: 67, baseType: !93, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1028, file: !389, line: 68, baseType: !93, size: 32, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !441, file: !442, line: 1206, baseType: !179, size: 32, offset: 12736)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !441, file: !442, line: 1207, baseType: !179, size: 32, offset: 12768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !441, file: !442, line: 1209, baseType: !245, size: 64, offset: 12800)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !441, file: !442, line: 1219, baseType: !314, size: 64, offset: 12864)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !441, file: !442, line: 1220, baseType: !314, size: 64, offset: 12928)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !441, file: !442, line: 1317, baseType: !179, size: 32, offset: 12992)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !441, file: !442, line: 1319, baseType: !440, size: 64, offset: 13056)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !441, file: !442, line: 1322, baseType: !1133, size: 64, offset: 13120)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1135, line: 56, size: 512, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1143, !1144, !1146}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1134, file: !1135, line: 57, baseType: !1133, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1134, file: !1135, line: 58, baseType: !76, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1134, file: !1135, line: 59, baseType: !245, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1134, file: !1135, line: 60, baseType: !245, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1134, file: !1135, line: 61, baseType: !1142, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1134, file: !1135, line: 62, baseType: !7, size: 32, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1134, file: !1135, line: 63, baseType: !1145, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !120, line: 153, baseType: !314)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1134, file: !1135, line: 64, baseType: !128, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !441, file: !442, line: 1326, baseType: !454, size: 32, offset: 13184)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !441, file: !442, line: 1342, baseType: !76, size: 64, offset: 13248)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !441, file: !442, line: 1343, baseType: !315, size: 64, offset: 13312)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !441, file: !442, line: 1344, baseType: !314, size: 64, offset: 13376)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !441, file: !442, line: 1345, baseType: !315, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !441, file: !442, line: 1346, baseType: !315, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !441, file: !442, line: 1347, baseType: !315, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !441, file: !442, line: 1348, baseType: !732, size: 128, align: 64, offset: 13504)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !441, file: !442, line: 1358, baseType: !1156, size: 34816, offset: 13824)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1157, line: 485, size: 34816, elements: !1158)
!1157 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1158 = !{!1159, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1188, !1189, !1190, !1191, !1192, !1193, !1196, !1197, !1198}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1156, file: !1157, line: 487, baseType: !1160, size: 192)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1161, size: 192, elements: !196)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1162, line: 16, size: 64, elements: !1163)
!1162 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1161, file: !1162, line: 17, baseType: !424, size: 16)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1161, file: !1162, line: 18, baseType: !424, size: 16, offset: 16)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1161, file: !1162, line: 19, baseType: !424, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1161, file: !1162, line: 19, baseType: !424, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1161, file: !1162, line: 19, baseType: !424, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1161, file: !1162, line: 19, baseType: !424, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1161, file: !1162, line: 19, baseType: !424, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1161, file: !1162, line: 20, baseType: !424, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1161, file: !1162, line: 20, baseType: !424, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1161, file: !1162, line: 20, baseType: !424, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1161, file: !1162, line: 20, baseType: !424, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1161, file: !1162, line: 20, baseType: !424, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1161, file: !1162, line: 20, baseType: !424, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1156, file: !1157, line: 491, baseType: !245, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1156, file: !1157, line: 495, baseType: !237, size: 16, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1156, file: !1157, line: 496, baseType: !237, size: 16, offset: 272)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1156, file: !1157, line: 497, baseType: !237, size: 16, offset: 288)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1156, file: !1157, line: 498, baseType: !237, size: 16, offset: 304)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1156, file: !1157, line: 502, baseType: !245, size: 64, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1156, file: !1157, line: 503, baseType: !245, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1156, file: !1157, line: 514, baseType: !1185, size: 256, offset: 448)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1186, size: 256, elements: !393)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1157, line: 483, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1156, file: !1157, line: 516, baseType: !245, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1156, file: !1157, line: 518, baseType: !245, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1156, file: !1157, line: 520, baseType: !245, size: 64, offset: 832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1156, file: !1157, line: 521, baseType: !245, size: 64, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1156, file: !1157, line: 522, baseType: !245, size: 64, offset: 960)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1156, file: !1157, line: 528, baseType: !1194, size: 64, offset: 1024)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1157, line: 10, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1156, file: !1157, line: 535, baseType: !245, size: 64, offset: 1088)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1156, file: !1157, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1156, file: !1157, line: 540, baseType: !1199, size: 33280, offset: 1536)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1200, line: 317, size: 33280, elements: !1201)
!1200 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1199, file: !1200, line: 330, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1199, file: !1200, line: 337, baseType: !245, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1199, file: !1200, line: 348, baseType: !1205, size: 32768, offset: 512)
!1205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1200, line: 304, size: 32768, elements: !1206)
!1206 = !{!1207, !1222, !1261, !1311, !1328}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1205, file: !1200, line: 305, baseType: !1208, size: 896)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1200, line: 12, size: 896, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1221}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1208, file: !1200, line: 13, baseType: !91, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1208, file: !1200, line: 14, baseType: !91, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1208, file: !1200, line: 15, baseType: !91, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1208, file: !1200, line: 16, baseType: !91, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1208, file: !1200, line: 17, baseType: !91, size: 32, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1208, file: !1200, line: 18, baseType: !91, size: 32, offset: 160)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1208, file: !1200, line: 19, baseType: !91, size: 32, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1208, file: !1200, line: 22, baseType: !1218, size: 640, offset: 224)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 640, elements: !1219)
!1219 = !{!1220}
!1220 = !DISubrange(count: 20)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1208, file: !1200, line: 25, baseType: !91, size: 32, offset: 864)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1205, file: !1200, line: 306, baseType: !1223, size: 4096, align: 128)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1200, line: 34, size: 4096, align: 128, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1244, !1245, !1246, !1250, !1252, !1256}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1223, file: !1200, line: 35, baseType: !424, size: 16)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1223, file: !1200, line: 36, baseType: !424, size: 16, offset: 16)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1223, file: !1200, line: 37, baseType: !424, size: 16, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1223, file: !1200, line: 38, baseType: !424, size: 16, offset: 48)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1200, line: 39, baseType: !1230, size: 128, offset: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1200, line: 39, size: 128, elements: !1231)
!1231 = !{!1232, !1237}
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1200, line: 40, baseType: !1233, size: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !1200, line: 40, size: 128, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1233, file: !1200, line: 41, baseType: !314, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1233, file: !1200, line: 42, baseType: !314, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1200, line: 44, baseType: !1238, size: 128)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !1200, line: 44, size: 128, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1238, file: !1200, line: 45, baseType: !91, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1238, file: !1200, line: 46, baseType: !91, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1238, file: !1200, line: 47, baseType: !91, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1238, file: !1200, line: 48, baseType: !91, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1223, file: !1200, line: 51, baseType: !91, size: 32, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1223, file: !1200, line: 52, baseType: !91, size: 32, offset: 224)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1223, file: !1200, line: 55, baseType: !1247, size: 1024, offset: 256)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1024, elements: !1248)
!1248 = !{!1249}
!1249 = !DISubrange(count: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1223, file: !1200, line: 58, baseType: !1251, size: 2048, offset: 1280)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !200)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1223, file: !1200, line: 60, baseType: !1253, size: 384, offset: 3328)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 384, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 12)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1200, line: 62, baseType: !1257, size: 384, offset: 3712)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1200, line: 62, size: 384, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1257, file: !1200, line: 63, baseType: !1253, size: 384)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1257, file: !1200, line: 64, baseType: !1253, size: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1205, file: !1200, line: 307, baseType: !1262, size: 1088)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1200, line: 79, size: 1088, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1310}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1262, file: !1200, line: 80, baseType: !91, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1262, file: !1200, line: 81, baseType: !91, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1262, file: !1200, line: 82, baseType: !91, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1262, file: !1200, line: 83, baseType: !91, size: 32, offset: 96)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1262, file: !1200, line: 84, baseType: !91, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1262, file: !1200, line: 85, baseType: !91, size: 32, offset: 160)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1262, file: !1200, line: 86, baseType: !91, size: 32, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1262, file: !1200, line: 88, baseType: !1218, size: 640, offset: 224)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1262, file: !1200, line: 89, baseType: !585, size: 8, offset: 864)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1262, file: !1200, line: 90, baseType: !585, size: 8, offset: 872)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1262, file: !1200, line: 91, baseType: !585, size: 8, offset: 880)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1262, file: !1200, line: 92, baseType: !585, size: 8, offset: 888)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1262, file: !1200, line: 93, baseType: !585, size: 8, offset: 896)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1262, file: !1200, line: 94, baseType: !585, size: 8, offset: 904)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1262, file: !1200, line: 95, baseType: !1279, size: 64, offset: 960)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1281, line: 11, size: 128, elements: !1282)
!1281 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1280, file: !1281, line: 12, baseType: !230, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1280, file: !1281, line: 13, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1287, line: 56, size: 1344, elements: !1288)
!1287 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1286, file: !1287, line: 61, baseType: !245, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1286, file: !1287, line: 62, baseType: !245, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1286, file: !1287, line: 63, baseType: !245, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1286, file: !1287, line: 64, baseType: !245, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1286, file: !1287, line: 65, baseType: !245, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1286, file: !1287, line: 66, baseType: !245, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1286, file: !1287, line: 68, baseType: !245, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1286, file: !1287, line: 69, baseType: !245, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1286, file: !1287, line: 70, baseType: !245, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1286, file: !1287, line: 71, baseType: !245, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1286, file: !1287, line: 72, baseType: !245, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1286, file: !1287, line: 73, baseType: !245, size: 64, offset: 704)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1286, file: !1287, line: 74, baseType: !245, size: 64, offset: 768)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1286, file: !1287, line: 75, baseType: !245, size: 64, offset: 832)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1286, file: !1287, line: 76, baseType: !245, size: 64, offset: 896)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1286, file: !1287, line: 81, baseType: !245, size: 64, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1286, file: !1287, line: 83, baseType: !245, size: 64, offset: 1024)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1286, file: !1287, line: 84, baseType: !245, size: 64, offset: 1088)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !1287, line: 85, baseType: !245, size: 64, offset: 1152)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1286, file: !1287, line: 86, baseType: !245, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1286, file: !1287, line: 87, baseType: !245, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1262, file: !1200, line: 96, baseType: !91, size: 32, offset: 1024)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1205, file: !1200, line: 308, baseType: !1312, size: 4608, align: 512)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1200, line: 289, size: 4608, align: 512, elements: !1313)
!1313 = !{!1314, !1315, !1324}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1312, file: !1200, line: 290, baseType: !1223, size: 4096, align: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1312, file: !1200, line: 291, baseType: !1316, size: 512, offset: 4096)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1200, line: 268, size: 512, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1316, file: !1200, line: 269, baseType: !314, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1316, file: !1200, line: 270, baseType: !314, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1316, file: !1200, line: 271, baseType: !1321, size: 384, offset: 128)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 384, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 6)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1312, file: !1200, line: 292, baseType: !1325, offset: 4608)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 0)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1205, file: !1200, line: 309, baseType: !1329, size: 32768)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 32768, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 4096)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !437, file: !286, line: 378, baseType: !1333, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !433, file: !286, line: 384, baseType: !754, size: 192, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !306, file: !286, line: 500, baseType: !153, offset: 6656)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !306, file: !286, line: 501, baseType: !1337, size: 64, offset: 6656)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !286, line: 387, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !306, file: !286, line: 516, baseType: !1340, size: 64, offset: 6720)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1342, line: 18, flags: DIFlagFwdDecl)
!1342 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !306, file: !286, line: 519, baseType: !273, size: 64, offset: 6784)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !306, file: !286, line: 521, baseType: !1345, size: 64, offset: 6848)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !286, line: 521, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !306, file: !286, line: 545, baseType: !334, size: 32, offset: 6912)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !306, file: !286, line: 548, baseType: !119, size: 8, offset: 6944)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !306, file: !286, line: 550, baseType: !1350, offset: 6952)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1351, line: 142, elements: !167)
!1351 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !306, file: !286, line: 554, baseType: !1353, size: 256, offset: 6976)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1354, line: 102, size: 256, elements: !1355)
!1354 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1353, file: !1354, line: 103, baseType: !342, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1353, file: !1354, line: 104, baseType: !140, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1353, file: !1354, line: 105, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1354, line: 21, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1363}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !306, file: !286, line: 557, baseType: !91, size: 32, offset: 7232)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !303, file: !286, line: 565, baseType: !1366, offset: 7296)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !1367)
!1367 = !{!1368}
!1368 = !DISubrange(count: -1)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !285, file: !286, line: 333, baseType: !1370, size: 64, offset: 576)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !275, line: 284, baseType: !1371)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !275, line: 284, size: 64, elements: !1372)
!1372 = !{!1373}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1371, file: !275, line: 284, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !332, line: 19, baseType: !245)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !285, file: !286, line: 334, baseType: !245, size: 64, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !285, file: !286, line: 343, baseType: !1377, size: 256, offset: 704)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !286, line: 340, size: 256, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1377, file: !286, line: 341, baseType: !293, size: 192, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1377, file: !286, line: 342, baseType: !245, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !285, file: !286, line: 351, baseType: !140, size: 128, offset: 960)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !285, file: !286, line: 353, baseType: !1383, size: 64, offset: 1088)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !286, line: 353, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !285, file: !286, line: 356, baseType: !1386, size: 64, offset: 1152)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1388)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !286, line: 356, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !285, file: !286, line: 359, baseType: !245, size: 64, offset: 1216)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !285, file: !286, line: 361, baseType: !273, size: 64, offset: 1280)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !285, file: !286, line: 362, baseType: !76, size: 64, offset: 1344)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !285, file: !286, line: 365, baseType: !342, size: 64, offset: 1408)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !285, file: !286, line: 373, baseType: !1394, offset: 1472)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !286, line: 296, elements: !167)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !252, file: !220, line: 90, baseType: !247, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !252, file: !220, line: 91, baseType: !1397, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !210, file: !136, line: 143, baseType: !1399, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1402, !146}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1405)
!1405 = !{!1406, !1407, !1411, !1415, !1421, !1425}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1404, file: !18, line: 40, baseType: !17, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1404, file: !18, line: 41, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!119}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1404, file: !18, line: 42, baseType: !1412, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!76}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1404, file: !18, line: 43, baseType: !1416, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!128, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1404, file: !18, line: 44, baseType: !1422, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!128}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1404, file: !18, line: 45, baseType: !1426, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !76}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !210, file: !136, line: 144, baseType: !1430, size: 64, offset: 320)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!128, !146}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !210, file: !136, line: 145, baseType: !1434, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !146, !1437, !1443}
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1342, line: 23, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1342, line: 21, size: 32, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1439, file: !1342, line: 22, baseType: !1442, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !120, line: 32, baseType: !914)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1342, line: 28, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1342, line: 26, size: 32, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1445, file: !1342, line: 27, baseType: !1448, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !120, line: 33, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !228, line: 50, baseType: !7)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !135, file: !136, line: 70, baseType: !1451, size: 64, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1453, line: 123, size: 1024, elements: !1454)
!1453 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1597, !1598, !1599, !1600, !1601}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1452, file: !1453, line: 124, baseType: !334, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1452, file: !1453, line: 125, baseType: !334, size: 32, offset: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1452, file: !1453, line: 135, baseType: !1451, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1452, file: !1453, line: 136, baseType: !86, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1452, file: !1453, line: 138, baseType: !293, size: 192, align: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1452, file: !1453, line: 140, baseType: !128, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1452, file: !1453, line: 141, baseType: !7, size: 32, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1452, file: !1453, line: 142, baseType: !1463, size: 256, offset: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1452, file: !1453, line: 142, size: 256, elements: !1464)
!1464 = !{!1465, !1520, !1524}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1463, file: !1453, line: 143, baseType: !1466, size: 192)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1453, line: 91, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1466, file: !1453, line: 92, baseType: !245, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1466, file: !1453, line: 94, baseType: !310, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1466, file: !1453, line: 100, baseType: !1471, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1453, line: 180, size: 704, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1490, !1491, !1492, !1518, !1519}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1472, file: !1453, line: 182, baseType: !1451, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1453, line: 183, baseType: !7, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1472, file: !1453, line: 186, baseType: !1477, size: 192, offset: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1478, line: 19, size: 192, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1488, !1489}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1477, file: !1478, line: 20, baseType: !1481, size: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1482, line: 292, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1485, !1487}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1481, file: !1482, line: 293, baseType: !153)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1481, file: !1482, line: 295, baseType: !1486, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !120, line: 148, baseType: !7)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1481, file: !1482, line: 296, baseType: !76, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1477, file: !1478, line: 21, baseType: !7, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1477, file: !1478, line: 22, baseType: !7, size: 32, offset: 160)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1472, file: !1453, line: 187, baseType: !91, size: 32, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1472, file: !1453, line: 188, baseType: !91, size: 32, offset: 352)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1472, file: !1453, line: 189, baseType: !1493, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1453, line: 168, size: 320, elements: !1495)
!1495 = !{!1496, !1502, !1506, !1510, !1514}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1494, file: !1453, line: 169, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!179, !1500, !1471}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !275, line: 539, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1494, file: !1453, line: 171, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!179, !1451, !86, !236}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1494, file: !1453, line: 173, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!179, !1451}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1494, file: !1453, line: 174, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!179, !1451, !1451, !86}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1494, file: !1453, line: 176, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!179, !1500, !1451, !1471}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1472, file: !1453, line: 192, baseType: !140, size: 128, offset: 448)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1472, file: !1453, line: 194, baseType: !725, size: 128, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1463, file: !1453, line: 144, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1453, line: 103, size: 64, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1521, file: !1453, line: 104, baseType: !1451, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1463, file: !1453, line: 145, baseType: !1525, size: 256)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1453, line: 107, size: 256, elements: !1526)
!1526 = !{!1527, !1592, !1595, !1596}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1525, file: !1453, line: 108, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1453, line: 217, size: 768, elements: !1531)
!1531 = !{!1532, !1552, !1556, !1560, !1565, !1569, !1573, !1577, !1578, !1579, !1580, !1588}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1530, file: !1453, line: 222, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!179, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1453, line: 197, size: 1088, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1537, file: !1453, line: 199, baseType: !1451, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1537, file: !1453, line: 200, baseType: !273, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1537, file: !1453, line: 201, baseType: !1500, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1537, file: !1453, line: 202, baseType: !76, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1537, file: !1453, line: 205, baseType: !411, size: 192, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1537, file: !1453, line: 206, baseType: !411, size: 192, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1537, file: !1453, line: 207, baseType: !179, size: 32, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1537, file: !1453, line: 208, baseType: !140, size: 128, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1537, file: !1453, line: 209, baseType: !195, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1537, file: !1453, line: 211, baseType: !242, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1537, file: !1453, line: 212, baseType: !119, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1537, file: !1453, line: 213, baseType: !119, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1537, file: !1453, line: 214, baseType: !1386, size: 64, offset: 1024)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1530, file: !1453, line: 223, baseType: !1553, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{null, !1536}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1530, file: !1453, line: 236, baseType: !1557, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!179, !1500, !76}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1530, file: !1453, line: 238, baseType: !1561, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!76, !1500, !1564}
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1530, file: !1453, line: 239, baseType: !1566, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!76, !1500, !76, !1564}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1530, file: !1453, line: 240, baseType: !1570, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !1500, !76}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1530, file: !1453, line: 242, baseType: !1574, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!226, !1536, !195, !242, !276}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1530, file: !1453, line: 252, baseType: !242, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1530, file: !1453, line: 259, baseType: !119, size: 8, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1530, file: !1453, line: 260, baseType: !1574, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1530, file: !1453, line: 263, baseType: !1581, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1584, !1536, !1586}
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1585, line: 52, baseType: !7)
!1585 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1453, line: 27, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1530, file: !1453, line: 266, baseType: !1589, size: 64, offset: 704)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!179, !1536, !284}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1525, file: !1453, line: 109, baseType: !1593, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1453, line: 31, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1525, file: !1453, line: 110, baseType: !276, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1525, file: !1453, line: 111, baseType: !1451, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1452, file: !1453, line: 148, baseType: !76, size: 64, offset: 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1452, file: !1453, line: 154, baseType: !314, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1452, file: !1453, line: 156, baseType: !237, size: 16, offset: 896)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1452, file: !1453, line: 157, baseType: !236, size: 16, offset: 912)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1452, file: !1453, line: 158, baseType: !1602, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1453, line: 32, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !135, file: !136, line: 71, baseType: !1605, size: 32, offset: 448)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1606, line: 19, size: 32, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1605, file: !1606, line: 20, baseType: !454, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !135, file: !136, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !135, file: !136, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !135, file: !136, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !135, file: !136, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !135, file: !136, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !30, line: 463, baseType: !1615, size: 64, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !132, file: !30, line: 465, baseType: !1617, size: 64, offset: 576)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !132, file: !30, line: 467, baseType: !86, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !132, file: !30, line: 468, baseType: !1621, size: 64, offset: 704)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1631, !1636, !1640}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1623, file: !30, line: 88, baseType: !86, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1623, file: !30, line: 89, baseType: !249, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1623, file: !30, line: 90, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!179, !1615, !190}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1623, file: !30, line: 91, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!195, !1615, !1635, !1437, !1443}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1623, file: !30, line: 93, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !1615}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1623, file: !30, line: 95, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1644)
!1644 = !{!1645, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1643, file: !37, line: 279, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!179, !1615}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1643, file: !37, line: 280, baseType: !1637, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1643, file: !37, line: 281, baseType: !1646, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1643, file: !37, line: 282, baseType: !1646, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1643, file: !37, line: 283, baseType: !1646, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1643, file: !37, line: 284, baseType: !1646, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1643, file: !37, line: 285, baseType: !1646, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1643, file: !37, line: 286, baseType: !1646, size: 64, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1643, file: !37, line: 287, baseType: !1646, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1643, file: !37, line: 288, baseType: !1646, size: 64, offset: 576)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1643, file: !37, line: 289, baseType: !1646, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1643, file: !37, line: 290, baseType: !1646, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1643, file: !37, line: 291, baseType: !1646, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1643, file: !37, line: 292, baseType: !1646, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1643, file: !37, line: 293, baseType: !1646, size: 64, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1643, file: !37, line: 294, baseType: !1646, size: 64, offset: 960)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1643, file: !37, line: 295, baseType: !1646, size: 64, offset: 1024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1643, file: !37, line: 296, baseType: !1646, size: 64, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1643, file: !37, line: 297, baseType: !1646, size: 64, offset: 1152)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1643, file: !37, line: 298, baseType: !1646, size: 64, offset: 1216)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1643, file: !37, line: 299, baseType: !1646, size: 64, offset: 1280)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1643, file: !37, line: 300, baseType: !1646, size: 64, offset: 1344)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1643, file: !37, line: 301, baseType: !1646, size: 64, offset: 1408)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !132, file: !30, line: 470, baseType: !1672, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1674, line: 82, size: 1408, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1761, !1764, !1767}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1673, file: !1674, line: 83, baseType: !86, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1673, file: !1674, line: 84, baseType: !86, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1673, file: !1674, line: 85, baseType: !1615, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1673, file: !1674, line: 86, baseType: !249, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1673, file: !1674, line: 87, baseType: !249, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1673, file: !1674, line: 88, baseType: !249, size: 64, offset: 320)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1673, file: !1674, line: 90, baseType: !1683, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!179, !1615, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1695, !1696, !1697, !1698, !1712, !1725, !1726, !1727, !1728, !1729, !1737, !1738, !1739, !1740, !1741, !1742}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1687, file: !24, line: 96, baseType: !86, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1687, file: !24, line: 97, baseType: !1672, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1687, file: !24, line: 99, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1694, line: 76, flags: DIFlagFwdDecl)
!1694 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1687, file: !24, line: 100, baseType: !86, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1687, file: !24, line: 102, baseType: !119, size: 8, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1687, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1687, file: !24, line: 105, baseType: !1699, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1701)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1702, line: 262, size: 1600, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1706, !1707, !1711}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1701, file: !1702, line: 263, baseType: !1705, size: 256)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !1248)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1701, file: !1702, line: 264, baseType: !1705, size: 256, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1701, file: !1702, line: 265, baseType: !1708, size: 1024, offset: 512)
!1708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1024, elements: !1709)
!1709 = !{!1710}
!1710 = !DISubrange(count: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1701, file: !1702, line: 266, baseType: !128, size: 64, offset: 1536)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1687, file: !24, line: 106, baseType: !1713, size: 64, offset: 384)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1702, line: 210, size: 256, elements: !1716)
!1716 = !{!1717, !1721, !1723, !1724}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1715, file: !1702, line: 211, baseType: !1718, size: 72)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 72, elements: !1719)
!1719 = !{!1720}
!1720 = !DISubrange(count: 9)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1715, file: !1702, line: 212, baseType: !1722, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1702, line: 14, baseType: !245)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1715, file: !1702, line: 213, baseType: !93, size: 32, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1715, file: !1702, line: 214, baseType: !93, size: 32, offset: 224)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1687, file: !24, line: 108, baseType: !1646, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1687, file: !24, line: 109, baseType: !1637, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1687, file: !24, line: 110, baseType: !1646, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1687, file: !24, line: 111, baseType: !1637, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1687, file: !24, line: 112, baseType: !1730, size: 64, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!179, !1615, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1734)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1734, file: !37, line: 51, baseType: !179, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1687, file: !24, line: 113, baseType: !1646, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1687, file: !24, line: 114, baseType: !249, size: 64, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1687, file: !24, line: 115, baseType: !249, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1687, file: !24, line: 117, baseType: !1641, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1687, file: !24, line: 118, baseType: !1637, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1687, file: !24, line: 120, baseType: !1743, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1673, file: !1674, line: 91, baseType: !1628, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1673, file: !1674, line: 92, baseType: !1646, size: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1673, file: !1674, line: 93, baseType: !1637, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1673, file: !1674, line: 94, baseType: !1646, size: 64, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1673, file: !1674, line: 95, baseType: !1637, size: 64, offset: 704)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1673, file: !1674, line: 97, baseType: !1646, size: 64, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1673, file: !1674, line: 98, baseType: !1646, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1673, file: !1674, line: 100, baseType: !1730, size: 64, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1673, file: !1674, line: 101, baseType: !1646, size: 64, offset: 960)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1673, file: !1674, line: 103, baseType: !1646, size: 64, offset: 1024)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1673, file: !1674, line: 105, baseType: !1646, size: 64, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1673, file: !1674, line: 107, baseType: !1641, size: 64, offset: 1152)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1673, file: !1674, line: 109, baseType: !1758, size: 64, offset: 1216)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1674, line: 109, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1673, file: !1674, line: 111, baseType: !1762, size: 64, offset: 1280)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1674, line: 111, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1673, file: !1674, line: 112, baseType: !1765, offset: 1344)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1766, line: 187, elements: !167)
!1766 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1673, file: !1674, line: 114, baseType: !119, size: 8, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !132, file: !30, line: 471, baseType: !1686, size: 64, offset: 832)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !132, file: !30, line: 473, baseType: !76, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !132, file: !30, line: 475, baseType: !76, size: 64, offset: 960)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !132, file: !30, line: 480, baseType: !411, size: 192, offset: 1024)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !132, file: !30, line: 484, baseType: !1773, size: 576, offset: 1216)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1773, file: !30, line: 362, baseType: !140, size: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1773, file: !30, line: 363, baseType: !140, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1773, file: !30, line: 364, baseType: !140, size: 128, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1773, file: !30, line: 365, baseType: !140, size: 128, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1773, file: !30, line: 366, baseType: !119, size: 8, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1773, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !132, file: !30, line: 485, baseType: !1782, size: 2304, offset: 1792)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1783)
!1783 = !{!1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1879, !1883}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1782, file: !37, line: 566, baseType: !1733, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1782, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1782, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1782, file: !37, line: 569, baseType: !119, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1782, file: !37, line: 570, baseType: !119, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1782, file: !37, line: 571, baseType: !119, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1782, file: !37, line: 572, baseType: !119, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1782, file: !37, line: 573, baseType: !119, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1782, file: !37, line: 574, baseType: !119, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1782, file: !37, line: 575, baseType: !119, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1782, file: !37, line: 576, baseType: !119, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1782, file: !37, line: 577, baseType: !91, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !37, line: 578, baseType: !153, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1782, file: !37, line: 580, baseType: !140, size: 128, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1782, file: !37, line: 581, baseType: !754, size: 192, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1782, file: !37, line: 582, baseType: !1800, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1802, line: 43, size: 1472, elements: !1803)
!1802 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1811, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1801, file: !1802, line: 44, baseType: !86, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1801, file: !1802, line: 45, baseType: !179, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1801, file: !1802, line: 46, baseType: !140, size: 128, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1801, file: !1802, line: 47, baseType: !153, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1801, file: !1802, line: 48, baseType: !1809, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1801, file: !1802, line: 49, baseType: !1812, size: 320, offset: 320)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1813, line: 11, size: 320, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817, !1822}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1812, file: !1813, line: 16, baseType: !718, size: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1812, file: !1813, line: 17, baseType: !245, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1812, file: !1813, line: 18, baseType: !1818, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1813, line: 19, baseType: !91, size: 32, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1801, file: !1802, line: 50, baseType: !245, size: 64, offset: 640)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1801, file: !1802, line: 51, baseType: !524, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1801, file: !1802, line: 52, baseType: !524, size: 64, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1801, file: !1802, line: 53, baseType: !524, size: 64, offset: 832)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1801, file: !1802, line: 54, baseType: !524, size: 64, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1801, file: !1802, line: 55, baseType: !524, size: 64, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1801, file: !1802, line: 56, baseType: !245, size: 64, offset: 1024)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1801, file: !1802, line: 57, baseType: !245, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1801, file: !1802, line: 58, baseType: !245, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1801, file: !1802, line: 59, baseType: !245, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1801, file: !1802, line: 60, baseType: !245, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1801, file: !1802, line: 61, baseType: !1615, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1801, file: !1802, line: 62, baseType: !119, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1801, file: !1802, line: 63, baseType: !119, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1782, file: !37, line: 583, baseType: !119, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1782, file: !37, line: 584, baseType: !119, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1782, file: !37, line: 585, baseType: !119, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1782, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1782, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1782, file: !37, line: 592, baseType: !516, size: 512, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1782, file: !37, line: 593, baseType: !314, size: 64, offset: 1088)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1782, file: !37, line: 594, baseType: !1353, size: 256, offset: 1152)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1782, file: !37, line: 595, baseType: !725, size: 128, offset: 1408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1782, file: !37, line: 596, baseType: !1809, size: 64, offset: 1536)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1782, file: !37, line: 597, baseType: !334, size: 32, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1782, file: !37, line: 598, baseType: !334, size: 32, offset: 1632)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1782, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1782, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1782, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1782, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1782, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1782, file: !37, line: 604, baseType: !119, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1782, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1782, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1782, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1782, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1782, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1782, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1782, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1782, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1782, file: !37, line: 613, baseType: !179, size: 32, offset: 1792)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1782, file: !37, line: 614, baseType: !179, size: 32, offset: 1824)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1782, file: !37, line: 615, baseType: !314, size: 64, offset: 1856)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1782, file: !37, line: 616, baseType: !314, size: 64, offset: 1920)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1782, file: !37, line: 617, baseType: !314, size: 64, offset: 1984)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1782, file: !37, line: 618, baseType: !314, size: 64, offset: 2048)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1782, file: !37, line: 620, baseType: !1870, size: 64, offset: 2112)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1871, file: !37, line: 537, baseType: !153)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1871, file: !37, line: 538, baseType: !7, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1871, file: !37, line: 540, baseType: !140, size: 128, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1871, file: !37, line: 543, baseType: !1877, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1782, file: !37, line: 621, baseType: !1880, size: 64, offset: 2176)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1615, !678}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1782, file: !37, line: 622, baseType: !1884, size: 64, offset: 2240)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !132, file: !30, line: 486, baseType: !1887, size: 64, offset: 4096)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1896, !1897, !1898}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1888, file: !37, line: 643, baseType: !1643, size: 1472)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1888, file: !37, line: 644, baseType: !1646, size: 64, offset: 1472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1888, file: !37, line: 645, baseType: !1893, size: 64, offset: 1536)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{null, !1615, !119}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1888, file: !37, line: 646, baseType: !1646, size: 64, offset: 1600)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1888, file: !37, line: 647, baseType: !1637, size: 64, offset: 1664)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1888, file: !37, line: 648, baseType: !1637, size: 64, offset: 1728)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !132, file: !30, line: 493, baseType: !1900, size: 64, offset: 4160)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !132, file: !30, line: 499, baseType: !140, size: 128, offset: 4224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !132, file: !30, line: 502, baseType: !1904, size: 64, offset: 4352)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1906 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !132, file: !30, line: 504, baseType: !1908, size: 64, offset: 4416)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !132, file: !30, line: 505, baseType: !314, size: 64, offset: 4480)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !132, file: !30, line: 510, baseType: !314, size: 64, offset: 4544)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !132, file: !30, line: 511, baseType: !1912, size: 64, offset: 4608)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !132, file: !30, line: 513, baseType: !1916, size: 64, offset: 4672)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1917, file: !30, line: 293, baseType: !7, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1917, file: !30, line: 294, baseType: !245, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !132, file: !30, line: 515, baseType: !140, size: 128, offset: 4736)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !132, file: !30, line: 526, baseType: !1923, offset: 4864)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1924, line: 5, elements: !167)
!1924 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !132, file: !30, line: 528, baseType: !81, size: 64, offset: 4864)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !132, file: !30, line: 529, baseType: !101, size: 64, offset: 4928)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !132, file: !30, line: 534, baseType: !1928, size: 32, offset: 4992)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !120, line: 16, baseType: !1929)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !120, line: 13, baseType: !91)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !30, line: 535, baseType: !91, size: 32, offset: 5024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !132, file: !30, line: 537, baseType: !153, offset: 5056)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !132, file: !30, line: 538, baseType: !140, size: 128, offset: 5056)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !132, file: !30, line: 540, baseType: !1934, size: 64, offset: 5184)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1936, line: 54, size: 960, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1948, !1952, !1953, !1954, !1955, !1959, !1963, !1964}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1935, file: !1936, line: 55, baseType: !86, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1935, file: !1936, line: 56, baseType: !1692, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1935, file: !1936, line: 58, baseType: !249, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1935, file: !1936, line: 59, baseType: !249, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1935, file: !1936, line: 60, baseType: !146, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1935, file: !1936, line: 62, baseType: !1628, size: 64, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1935, file: !1936, line: 63, baseType: !1945, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!195, !1615, !1635}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1935, file: !1936, line: 65, baseType: !1949, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1934}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1935, file: !1936, line: 66, baseType: !1637, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1935, file: !1936, line: 68, baseType: !1646, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1935, file: !1936, line: 70, baseType: !1402, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1935, file: !1936, line: 71, baseType: !1956, size: 64, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!128, !1615}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1935, file: !1936, line: 73, baseType: !1960, size: 64, offset: 768)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !1615, !1437, !1443}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1935, file: !1936, line: 75, baseType: !1641, size: 64, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1935, file: !1936, line: 77, baseType: !1762, size: 64, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !132, file: !30, line: 541, baseType: !249, size: 64, offset: 5248)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !132, file: !30, line: 543, baseType: !1637, size: 64, offset: 5312)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !132, file: !30, line: 544, baseType: !1968, size: 64, offset: 5376)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !132, file: !30, line: 545, baseType: !1971, size: 64, offset: 5440)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !132, file: !30, line: 547, baseType: !119, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !132, file: !30, line: 548, baseType: !119, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !132, file: !30, line: 549, baseType: !119, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !132, file: !30, line: 550, baseType: !119, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !105, file: !98, line: 116, baseType: !1978, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!119, !122, !86}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !105, file: !98, line: 118, baseType: !1982, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!179, !122, !86, !7, !76, !242}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !105, file: !98, line: 123, baseType: !1986, size: 64, offset: 384)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!179, !122, !86, !1989, !242}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !105, file: !98, line: 126, baseType: !1991, size: 64, offset: 448)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!86, !122}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !105, file: !98, line: 127, baseType: !1991, size: 64, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !105, file: !98, line: 128, baseType: !1996, size: 64, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!101, !122}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !105, file: !98, line: 130, baseType: !2000, size: 64, offset: 640)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!101, !122, !101}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !105, file: !98, line: 133, baseType: !2004, size: 64, offset: 704)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!101, !122, !86}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !105, file: !98, line: 135, baseType: !2008, size: 64, offset: 768)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!179, !122, !86, !86, !7, !7, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !98, line: 43, size: 640, elements: !2013)
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2012, file: !98, line: 44, baseType: !101, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2012, file: !98, line: 45, baseType: !7, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2012, file: !98, line: 46, baseType: !2017, size: 512, offset: 128)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 512, elements: !554)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !105, file: !98, line: 140, baseType: !2000, size: 64, offset: 832)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !105, file: !98, line: 143, baseType: !1996, size: 64, offset: 896)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !105, file: !98, line: 145, baseType: !108, size: 64, offset: 960)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !105, file: !98, line: 146, baseType: !2022, size: 64, offset: 1024)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!179, !122, !2025}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !98, line: 29, size: 128, elements: !2027)
!2027 = !{!2028, !2029, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2026, file: !98, line: 30, baseType: !7, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2026, file: !98, line: 31, baseType: !7, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2026, file: !98, line: 32, baseType: !122, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !105, file: !98, line: 148, baseType: !2032, size: 64, offset: 1088)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!179, !122, !1615}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !97, file: !98, line: 20, baseType: !1615, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !82, file: !83, line: 57, baseType: !2037, size: 64, offset: 384)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !83, line: 31, size: 704, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2038, file: !83, line: 32, baseType: !195, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2038, file: !83, line: 33, baseType: !179, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2038, file: !83, line: 34, baseType: !76, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2038, file: !83, line: 35, baseType: !2037, size: 64, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2038, file: !83, line: 43, baseType: !264, size: 448, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !82, file: !83, line: 58, baseType: !2037, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !83, line: 59, baseType: !81, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !82, file: !83, line: 60, baseType: !81, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !82, file: !83, line: 61, baseType: !81, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !82, file: !83, line: 63, baseType: !135, size: 512, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !82, file: !83, line: 65, baseType: !245, size: 64, offset: 1216)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !82, file: !83, line: 66, baseType: !76, size: 64, offset: 1280)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !78, file: !3, line: 33, baseType: !2053, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !56, line: 33, flags: DIFlagFwdDecl)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !78, file: !3, line: 34, baseType: !140, size: 128, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!2058 = !{!0, !2059, !2061, !2063, !2156, !2216}
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(name: "syscon_list_slock", scope: !2, file: !3, line: 28, type: !153, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(name: "syscon_list", scope: !2, file: !3, line: 29, type: !140, isLocal: true, isDefinition: true)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(name: "syscon_regmap_config", scope: !2, file: !3, line: 37, type: !2065, isLocal: true, isDefinition: true)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_config", file: !56, line: 347, size: 2176, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071, !2072, !2073, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2085, !2087, !2088, !2093, !2097, !2098, !2099, !2114, !2115, !2116, !2117, !2118, !2119, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2151, !2152, !2153, !2154, !2155}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !56, line: 348, baseType: !86, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "reg_bits", scope: !2066, file: !56, line: 350, baseType: !179, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "reg_stride", scope: !2066, file: !56, line: 351, baseType: !179, size: 32, offset: 96)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pad_bits", scope: !2066, file: !56, line: 352, baseType: !179, size: 32, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "val_bits", scope: !2066, file: !56, line: 353, baseType: !179, size: 32, offset: 160)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_reg", scope: !2066, file: !56, line: 355, baseType: !2074, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!119, !1615, !7}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "readable_reg", scope: !2066, file: !56, line: 356, baseType: !2074, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_reg", scope: !2066, file: !56, line: 357, baseType: !2074, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "precious_reg", scope: !2066, file: !56, line: 358, baseType: !2074, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "writeable_noinc_reg", scope: !2066, file: !56, line: 359, baseType: !2074, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "readable_noinc_reg", scope: !2066, file: !56, line: 360, baseType: !2074, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "disable_locking", scope: !2066, file: !56, line: 362, baseType: !119, size: 8, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2066, file: !56, line: 363, baseType: !2084, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_lock", file: !56, line: 226, baseType: !1426)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "unlock", scope: !2066, file: !56, line: 364, baseType: !2086, size: 64, offset: 704)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "regmap_unlock", file: !56, line: 227, baseType: !1426)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "lock_arg", scope: !2066, file: !56, line: 365, baseType: !76, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "reg_read", scope: !2066, file: !56, line: 367, baseType: !2089, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!179, !76, !7, !2092}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "reg_write", scope: !2066, file: !56, line: 368, baseType: !2094, size: 64, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!179, !76, !7, !7}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fast_io", scope: !2066, file: !56, line: 370, baseType: !119, size: 8, offset: 960)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "max_register", scope: !2066, file: !56, line: 372, baseType: !7, size: 32, offset: 992)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "wr_table", scope: !2066, file: !56, line: 373, baseType: !2100, size: 64, offset: 1024)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_access_table", file: !56, line: 219, size: 256, elements: !2103)
!2103 = !{!2104, !2111, !2112, !2113}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "yes_ranges", scope: !2102, file: !56, line: 220, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2107)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range", file: !56, line: 199, size: 64, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !2107, file: !56, line: 200, baseType: !7, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !2107, file: !56, line: 201, baseType: !7, size: 32, offset: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "n_yes_ranges", scope: !2102, file: !56, line: 221, baseType: !7, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "no_ranges", scope: !2102, file: !56, line: 222, baseType: !2105, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "n_no_ranges", scope: !2102, file: !56, line: 223, baseType: !7, size: 32, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rd_table", scope: !2066, file: !56, line: 374, baseType: !2100, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_table", scope: !2066, file: !56, line: 375, baseType: !2100, size: 64, offset: 1152)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "precious_table", scope: !2066, file: !56, line: 376, baseType: !2100, size: 64, offset: 1216)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "wr_noinc_table", scope: !2066, file: !56, line: 377, baseType: !2100, size: 64, offset: 1280)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rd_noinc_table", scope: !2066, file: !56, line: 378, baseType: !2100, size: 64, offset: 1344)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults", scope: !2066, file: !56, line: 379, baseType: !2120, size: 64, offset: 1408)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_default", file: !56, line: 56, size: 64, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2122, file: !56, line: 57, baseType: !7, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !2122, file: !56, line: 58, baseType: !7, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults", scope: !2066, file: !56, line: 380, baseType: !7, size: 32, offset: 1472)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "cache_type", scope: !2066, file: !56, line: 381, baseType: !55, size: 32, offset: 1504)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "reg_defaults_raw", scope: !2066, file: !56, line: 382, baseType: !128, size: 64, offset: 1536)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "num_reg_defaults_raw", scope: !2066, file: !56, line: 383, baseType: !7, size: 32, offset: 1600)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "read_flag_mask", scope: !2066, file: !56, line: 385, baseType: !245, size: 64, offset: 1664)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag_mask", scope: !2066, file: !56, line: 386, baseType: !245, size: 64, offset: 1728)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "zero_flag_mask", scope: !2066, file: !56, line: 387, baseType: !119, size: 8, offset: 1792)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_read", scope: !2066, file: !56, line: 389, baseType: !119, size: 8, offset: 1800)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "use_single_write", scope: !2066, file: !56, line: 390, baseType: !119, size: 8, offset: 1808)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "can_multi_write", scope: !2066, file: !56, line: 391, baseType: !119, size: 8, offset: 1816)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "reg_format_endian", scope: !2066, file: !56, line: 393, baseType: !62, size: 32, offset: 1824)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "val_format_endian", scope: !2066, file: !56, line: 394, baseType: !62, size: 32, offset: 1856)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2066, file: !56, line: 396, baseType: !2139, size: 64, offset: 1920)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regmap_range_cfg", file: !56, line: 426, size: 320, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2141, file: !56, line: 427, baseType: !86, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !2141, file: !56, line: 430, baseType: !7, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !2141, file: !56, line: 431, baseType: !7, size: 32, offset: 96)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "selector_reg", scope: !2141, file: !56, line: 434, baseType: !7, size: 32, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "selector_mask", scope: !2141, file: !56, line: 435, baseType: !7, size: 32, offset: 160)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "selector_shift", scope: !2141, file: !56, line: 436, baseType: !179, size: 32, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "window_start", scope: !2141, file: !56, line: 439, baseType: !7, size: 32, offset: 224)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "window_len", scope: !2141, file: !56, line: 440, baseType: !7, size: 32, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !2066, file: !56, line: 397, baseType: !7, size: 32, offset: 1984)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "use_hwlock", scope: !2066, file: !56, line: 399, baseType: !119, size: 8, offset: 2016)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_id", scope: !2066, file: !56, line: 400, baseType: !7, size: 32, offset: 2048)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "hwlock_mode", scope: !2066, file: !56, line: 401, baseType: !7, size: 32, offset: 2080)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "can_sleep", scope: !2066, file: !56, line: 403, baseType: !119, size: 8, offset: 2112)
!2156 = !DIGlobalVariableExpression(var: !2157, expr: !DIExpression())
!2157 = distinct !DIGlobalVariable(name: "syscon_driver", scope: !2, file: !3, line: 300, type: !2158, isLocal: true, isDefinition: true)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2159, line: 200, size: 1600, elements: !2160)
!2159 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!2160 = !{!2161, !2203, !2204, !2208, !2212, !2213, !2214, !2215}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2158, file: !2159, line: 201, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!179, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2159, line: 22, size: 6208, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2189, !2197, !2198, !2201}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2166, file: !2159, line: 23, baseType: !86, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2166, file: !2159, line: 24, baseType: !179, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2166, file: !2159, line: 25, baseType: !119, size: 8, offset: 96)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2166, file: !2159, line: 26, baseType: !132, size: 5568, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2166, file: !2159, line: 27, baseType: !314, size: 64, offset: 5696)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2166, file: !2159, line: 28, baseType: !1917, size: 128, offset: 5760)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2166, file: !2159, line: 29, baseType: !91, size: 32, offset: 5888)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2166, file: !2159, line: 30, baseType: !2176, size: 64, offset: 5952)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2178, line: 20, size: 512, elements: !2179)
!2178 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2177, file: !2178, line: 21, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !120, line: 158, baseType: !1145)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2177, file: !2178, line: 22, baseType: !2181, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2177, file: !2178, line: 23, baseType: !86, size: 64, offset: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !2178, line: 24, baseType: !245, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2177, file: !2178, line: 25, baseType: !245, size: 64, offset: 256)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2177, file: !2178, line: 26, baseType: !2176, size: 64, offset: 320)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2177, file: !2178, line: 26, baseType: !2176, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2177, file: !2178, line: 26, baseType: !2176, size: 64, offset: 448)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2166, file: !2159, line: 32, baseType: !2190, size: 64, offset: 6016)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1702, line: 586, size: 256, elements: !2193)
!2193 = !{!2194, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2192, file: !1702, line: 587, baseType: !2195, size: 160)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, elements: !1219)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2192, file: !1702, line: 588, baseType: !1722, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2166, file: !2159, line: 33, baseType: !195, size: 64, offset: 6080)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2166, file: !2159, line: 36, baseType: !2199, size: 64, offset: 6144)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2159, line: 18, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2166, file: !2159, line: 39, baseType: !2202, offset: 6208)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1924, line: 8, elements: !167)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2158, file: !2159, line: 202, baseType: !2162, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2158, file: !2159, line: 203, baseType: !2205, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !2165}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2158, file: !2159, line: 204, baseType: !2209, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!179, !2165, !1733}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2158, file: !2159, line: 205, baseType: !2162, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2158, file: !2159, line: 206, baseType: !1687, size: 1152, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2158, file: !2159, line: 207, baseType: !2190, size: 64, offset: 1472)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2158, file: !2159, line: 208, baseType: !119, size: 8, offset: 1536)
!2216 = !DIGlobalVariableExpression(var: !2217, expr: !DIExpression())
!2217 = distinct !DIGlobalVariable(name: "syscon_ids", scope: !2, file: !3, line: 295, type: !2218, isLocal: true, isDefinition: true)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2191, size: 512, elements: !990)
!2219 = !{i32 7, !"Dwarf Version", i32 4}
!2220 = !{i32 2, !"Debug Info Version", i32 3}
!2221 = !{i32 1, !"wchar_size", i32 2}
!2222 = !{i32 1, !"Code Model", i32 2}
!2223 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2224 = distinct !DISubprogram(name: "device_node_to_regmap", scope: !3, file: !3, line: 177, type: !2225, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!2053, !81}
!2227 = !DILocalVariable(name: "np", arg: 1, scope: !2224, file: !3, line: 177, type: !81)
!2228 = !DILocation(line: 177, column: 58, scope: !2224)
!2229 = !DILocation(line: 179, column: 32, scope: !2224)
!2230 = !DILocation(line: 179, column: 9, scope: !2224)
!2231 = !DILocation(line: 179, column: 2, scope: !2224)
!2232 = distinct !DISubprogram(name: "device_node_get_regmap", scope: !3, file: !3, line: 153, type: !2233, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2053, !81, !119}
!2235 = !DILocalVariable(name: "lock", arg: 1, scope: !2236, file: !2237, line: 392, type: !2240)
!2236 = distinct !DISubprogram(name: "spin_unlock", scope: !2237, file: !2237, line: 392, type: !2238, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2237 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2241 = !DILocation(line: 392, column: 53, scope: !2236, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 166, column: 2, scope: !2232)
!2243 = !DILocalVariable(name: "lock", arg: 1, scope: !2244, file: !2237, line: 352, type: !2240)
!2244 = distinct !DISubprogram(name: "spin_lock", scope: !2237, file: !2237, line: 352, type: !2238, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2245 = !DILocation(line: 352, column: 51, scope: !2244, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 158, column: 2, scope: !2232)
!2247 = !DILocalVariable(name: "np", arg: 1, scope: !2232, file: !3, line: 153, type: !81)
!2248 = !DILocation(line: 153, column: 66, scope: !2232)
!2249 = !DILocalVariable(name: "check_clk", arg: 2, scope: !2232, file: !3, line: 154, type: !119)
!2250 = !DILocation(line: 154, column: 16, scope: !2232)
!2251 = !DILocalVariable(name: "entry", scope: !2232, file: !3, line: 156, type: !77)
!2252 = !DILocation(line: 156, column: 17, scope: !2232)
!2253 = !DILocalVariable(name: "syscon", scope: !2232, file: !3, line: 156, type: !77)
!2254 = !DILocation(line: 156, column: 25, scope: !2232)
!2255 = !DILocation(line: 354, column: 2, scope: !2256, inlinedAt: !2246)
!2256 = distinct !DILexicalBlock(scope: !2244, file: !2237, line: 354, column: 2)
!2257 = !{i32 -2145569304}
!2258 = !DILocation(line: 354, column: 2, scope: !2259, inlinedAt: !2246)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !2237, line: 354, column: 2)
!2260 = !DILocalVariable(name: "__mptr", scope: !2261, file: !3, line: 160, type: !76)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 160, column: 2)
!2262 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 160, column: 2)
!2263 = !DILocation(line: 160, column: 2, scope: !2261)
!2264 = !DILocation(line: 160, column: 2, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 160, column: 2)
!2266 = !DILocation(line: 160, column: 2, scope: !2262)
!2267 = !DILocation(line: 160, column: 2, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 160, column: 2)
!2269 = !DILocation(line: 161, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 161, column: 7)
!2271 = !DILocation(line: 161, column: 14, scope: !2270)
!2272 = !DILocation(line: 161, column: 20, scope: !2270)
!2273 = !DILocation(line: 161, column: 17, scope: !2270)
!2274 = !DILocation(line: 161, column: 7, scope: !2268)
!2275 = !DILocation(line: 162, column: 13, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 161, column: 24)
!2277 = !DILocation(line: 162, column: 11, scope: !2276)
!2278 = !DILocation(line: 163, column: 4, scope: !2276)
!2279 = !DILocalVariable(name: "__mptr", scope: !2280, file: !3, line: 160, type: !76)
!2280 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 160, column: 2)
!2281 = !DILocation(line: 160, column: 2, scope: !2280)
!2282 = !DILocation(line: 160, column: 2, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 160, column: 2)
!2284 = distinct !{!2284, !2266, !2285}
!2285 = !DILocation(line: 164, column: 3, scope: !2262)
!2286 = !DILocation(line: 394, column: 2, scope: !2287, inlinedAt: !2242)
!2287 = distinct !DILexicalBlock(scope: !2236, file: !2237, line: 394, column: 2)
!2288 = !{i32 -2145566943}
!2289 = !DILocation(line: 394, column: 2, scope: !2290, inlinedAt: !2242)
!2290 = distinct !DILexicalBlock(scope: !2287, file: !2237, line: 394, column: 2)
!2291 = !DILocation(line: 168, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 168, column: 6)
!2293 = !DILocation(line: 168, column: 6, scope: !2232)
!2294 = !DILocation(line: 169, column: 31, scope: !2292)
!2295 = !DILocation(line: 169, column: 35, scope: !2292)
!2296 = !DILocation(line: 169, column: 12, scope: !2292)
!2297 = !DILocation(line: 169, column: 10, scope: !2292)
!2298 = !DILocation(line: 169, column: 3, scope: !2292)
!2299 = !DILocation(line: 171, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 171, column: 6)
!2301 = !DILocation(line: 171, column: 6, scope: !2300)
!2302 = !DILocation(line: 171, column: 6, scope: !2232)
!2303 = !DILocation(line: 172, column: 19, scope: !2300)
!2304 = !DILocation(line: 172, column: 10, scope: !2300)
!2305 = !DILocation(line: 172, column: 3, scope: !2300)
!2306 = !DILocation(line: 174, column: 9, scope: !2232)
!2307 = !DILocation(line: 174, column: 17, scope: !2232)
!2308 = !DILocation(line: 174, column: 2, scope: !2232)
!2309 = !DILocation(line: 175, column: 1, scope: !2232)
!2310 = distinct !DISubprogram(name: "syscon_node_to_regmap", scope: !3, file: !3, line: 183, type: !2225, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2311 = !DILocalVariable(name: "np", arg: 1, scope: !2310, file: !3, line: 183, type: !81)
!2312 = !DILocation(line: 183, column: 58, scope: !2310)
!2313 = !DILocation(line: 185, column: 31, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 185, column: 6)
!2315 = !DILocation(line: 185, column: 7, scope: !2314)
!2316 = !DILocation(line: 185, column: 6, scope: !2310)
!2317 = !DILocation(line: 186, column: 10, scope: !2314)
!2318 = !DILocation(line: 186, column: 3, scope: !2314)
!2319 = !DILocation(line: 188, column: 32, scope: !2310)
!2320 = !DILocation(line: 188, column: 9, scope: !2310)
!2321 = !DILocation(line: 188, column: 2, scope: !2310)
!2322 = !DILocation(line: 189, column: 1, scope: !2310)
!2323 = distinct !DISubprogram(name: "ERR_PTR", scope: !2324, file: !2324, line: 24, type: !2325, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2324 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!76, !230}
!2327 = !DILocalVariable(name: "error", arg: 1, scope: !2323, file: !2324, line: 24, type: !230)
!2328 = !DILocation(line: 24, column: 48, scope: !2323)
!2329 = !DILocation(line: 26, column: 18, scope: !2323)
!2330 = !DILocation(line: 26, column: 9, scope: !2323)
!2331 = !DILocation(line: 26, column: 2, scope: !2323)
!2332 = distinct !DISubprogram(name: "syscon_regmap_lookup_by_compatible", scope: !3, file: !3, line: 192, type: !2333, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!2053, !86}
!2335 = !DILocalVariable(name: "s", arg: 1, scope: !2332, file: !3, line: 192, type: !86)
!2336 = !DILocation(line: 192, column: 63, scope: !2332)
!2337 = !DILocalVariable(name: "syscon_np", scope: !2332, file: !3, line: 194, type: !81)
!2338 = !DILocation(line: 194, column: 22, scope: !2332)
!2339 = !DILocalVariable(name: "regmap", scope: !2332, file: !3, line: 195, type: !2053)
!2340 = !DILocation(line: 195, column: 17, scope: !2332)
!2341 = !DILocation(line: 197, column: 50, scope: !2332)
!2342 = !DILocation(line: 197, column: 14, scope: !2332)
!2343 = !DILocation(line: 197, column: 12, scope: !2332)
!2344 = !DILocation(line: 198, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 198, column: 6)
!2346 = !DILocation(line: 198, column: 6, scope: !2332)
!2347 = !DILocation(line: 199, column: 10, scope: !2345)
!2348 = !DILocation(line: 199, column: 3, scope: !2345)
!2349 = !DILocation(line: 201, column: 33, scope: !2332)
!2350 = !DILocation(line: 201, column: 11, scope: !2332)
!2351 = !DILocation(line: 201, column: 9, scope: !2332)
!2352 = !DILocation(line: 202, column: 14, scope: !2332)
!2353 = !DILocation(line: 202, column: 2, scope: !2332)
!2354 = !DILocation(line: 204, column: 9, scope: !2332)
!2355 = !DILocation(line: 204, column: 2, scope: !2332)
!2356 = !DILocation(line: 205, column: 1, scope: !2332)
!2357 = distinct !DISubprogram(name: "of_node_put", scope: !83, file: !83, line: 129, type: !2358, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !81}
!2360 = !DILocalVariable(name: "node", arg: 1, scope: !2357, file: !83, line: 129, type: !81)
!2361 = !DILocation(line: 129, column: 52, scope: !2357)
!2362 = !DILocation(line: 129, column: 60, scope: !2357)
!2363 = distinct !DISubprogram(name: "syscon_regmap_lookup_by_phandle", scope: !3, file: !3, line: 208, type: !2364, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!2053, !81, !86}
!2366 = !DILocalVariable(name: "np", arg: 1, scope: !2363, file: !3, line: 208, type: !81)
!2367 = !DILocation(line: 208, column: 68, scope: !2363)
!2368 = !DILocalVariable(name: "property", arg: 2, scope: !2363, file: !3, line: 209, type: !86)
!2369 = !DILocation(line: 209, column: 18, scope: !2363)
!2370 = !DILocalVariable(name: "syscon_np", scope: !2363, file: !3, line: 211, type: !81)
!2371 = !DILocation(line: 211, column: 22, scope: !2363)
!2372 = !DILocalVariable(name: "regmap", scope: !2363, file: !3, line: 212, type: !2053)
!2373 = !DILocation(line: 212, column: 17, scope: !2363)
!2374 = !DILocation(line: 214, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 214, column: 6)
!2376 = !DILocation(line: 214, column: 6, scope: !2363)
!2377 = !DILocation(line: 215, column: 32, scope: !2375)
!2378 = !DILocation(line: 215, column: 36, scope: !2375)
!2379 = !DILocation(line: 215, column: 15, scope: !2375)
!2380 = !DILocation(line: 215, column: 13, scope: !2375)
!2381 = !DILocation(line: 215, column: 3, scope: !2375)
!2382 = !DILocation(line: 217, column: 15, scope: !2375)
!2383 = !DILocation(line: 217, column: 13, scope: !2375)
!2384 = !DILocation(line: 219, column: 7, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 219, column: 6)
!2386 = !DILocation(line: 219, column: 6, scope: !2363)
!2387 = !DILocation(line: 220, column: 10, scope: !2385)
!2388 = !DILocation(line: 220, column: 3, scope: !2385)
!2389 = !DILocation(line: 222, column: 33, scope: !2363)
!2390 = !DILocation(line: 222, column: 11, scope: !2363)
!2391 = !DILocation(line: 222, column: 9, scope: !2363)
!2392 = !DILocation(line: 223, column: 14, scope: !2363)
!2393 = !DILocation(line: 223, column: 2, scope: !2363)
!2394 = !DILocation(line: 225, column: 9, scope: !2363)
!2395 = !DILocation(line: 225, column: 2, scope: !2363)
!2396 = !DILocation(line: 226, column: 1, scope: !2363)
!2397 = distinct !DISubprogram(name: "syscon_regmap_lookup_by_phandle_args", scope: !3, file: !3, line: 229, type: !2398, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!2053, !81, !86, !179, !2092}
!2400 = !DILocalVariable(name: "np", arg: 1, scope: !2397, file: !3, line: 229, type: !81)
!2401 = !DILocation(line: 229, column: 73, scope: !2397)
!2402 = !DILocalVariable(name: "property", arg: 2, scope: !2397, file: !3, line: 230, type: !86)
!2403 = !DILocation(line: 230, column: 18, scope: !2397)
!2404 = !DILocalVariable(name: "arg_count", arg: 3, scope: !2397, file: !3, line: 231, type: !179)
!2405 = !DILocation(line: 231, column: 10, scope: !2397)
!2406 = !DILocalVariable(name: "out_args", arg: 4, scope: !2397, file: !3, line: 232, type: !2092)
!2407 = !DILocation(line: 232, column: 20, scope: !2397)
!2408 = !DILocalVariable(name: "syscon_np", scope: !2397, file: !3, line: 234, type: !81)
!2409 = !DILocation(line: 234, column: 22, scope: !2397)
!2410 = !DILocalVariable(name: "args", scope: !2397, file: !3, line: 235, type: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !83, line: 74, size: 640, elements: !2412)
!2412 = !{!2413, !2414, !2415}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2411, file: !83, line: 75, baseType: !81, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2411, file: !83, line: 76, baseType: !179, size: 32, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2411, file: !83, line: 77, baseType: !2416, size: 512, offset: 96)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2417, size: 512, elements: !810)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !120, line: 104, baseType: !91)
!2418 = !DILocation(line: 235, column: 25, scope: !2397)
!2419 = !DILocalVariable(name: "regmap", scope: !2397, file: !3, line: 236, type: !2053)
!2420 = !DILocation(line: 236, column: 17, scope: !2397)
!2421 = !DILocalVariable(name: "index", scope: !2397, file: !3, line: 237, type: !7)
!2422 = !DILocation(line: 237, column: 15, scope: !2397)
!2423 = !DILocalVariable(name: "rc", scope: !2397, file: !3, line: 238, type: !179)
!2424 = !DILocation(line: 238, column: 6, scope: !2397)
!2425 = !DILocation(line: 240, column: 40, scope: !2397)
!2426 = !DILocation(line: 240, column: 44, scope: !2397)
!2427 = !DILocation(line: 240, column: 54, scope: !2397)
!2428 = !DILocation(line: 240, column: 7, scope: !2397)
!2429 = !DILocation(line: 240, column: 5, scope: !2397)
!2430 = !DILocation(line: 242, column: 6, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 242, column: 6)
!2432 = !DILocation(line: 242, column: 6, scope: !2397)
!2433 = !DILocation(line: 243, column: 18, scope: !2431)
!2434 = !DILocation(line: 243, column: 10, scope: !2431)
!2435 = !DILocation(line: 243, column: 3, scope: !2431)
!2436 = !DILocation(line: 245, column: 19, scope: !2397)
!2437 = !DILocation(line: 245, column: 12, scope: !2397)
!2438 = !DILocation(line: 246, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 246, column: 6)
!2440 = !DILocation(line: 246, column: 6, scope: !2397)
!2441 = !DILocation(line: 247, column: 10, scope: !2439)
!2442 = !DILocation(line: 247, column: 3, scope: !2439)
!2443 = !DILocation(line: 249, column: 33, scope: !2397)
!2444 = !DILocation(line: 249, column: 11, scope: !2397)
!2445 = !DILocation(line: 249, column: 9, scope: !2397)
!2446 = !DILocation(line: 250, column: 13, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 250, column: 2)
!2448 = !DILocation(line: 250, column: 7, scope: !2447)
!2449 = !DILocation(line: 250, column: 18, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 250, column: 2)
!2451 = !DILocation(line: 250, column: 26, scope: !2450)
!2452 = !DILocation(line: 250, column: 24, scope: !2450)
!2453 = !DILocation(line: 250, column: 2, scope: !2447)
!2454 = !DILocation(line: 251, column: 26, scope: !2450)
!2455 = !DILocation(line: 251, column: 31, scope: !2450)
!2456 = !DILocation(line: 251, column: 21, scope: !2450)
!2457 = !DILocation(line: 251, column: 3, scope: !2450)
!2458 = !DILocation(line: 251, column: 12, scope: !2450)
!2459 = !DILocation(line: 251, column: 19, scope: !2450)
!2460 = !DILocation(line: 250, column: 42, scope: !2450)
!2461 = !DILocation(line: 250, column: 2, scope: !2450)
!2462 = distinct !{!2462, !2453, !2463}
!2463 = !DILocation(line: 251, column: 36, scope: !2447)
!2464 = !DILocation(line: 252, column: 14, scope: !2397)
!2465 = !DILocation(line: 252, column: 2, scope: !2397)
!2466 = !DILocation(line: 254, column: 9, scope: !2397)
!2467 = !DILocation(line: 254, column: 2, scope: !2397)
!2468 = !DILocation(line: 255, column: 1, scope: !2397)
!2469 = distinct !DISubprogram(name: "syscon_init", scope: !3, file: !3, line: 308, type: !2470, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!179}
!2472 = !DILocation(line: 310, column: 9, scope: !2469)
!2473 = !DILocation(line: 310, column: 2, scope: !2469)
!2474 = distinct !DISubprogram(name: "of_syscon_register", scope: !3, file: !3, line: 43, type: !2475, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!77, !81, !119}
!2477 = !DILocation(line: 392, column: 53, scope: !2236, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 136, column: 2, scope: !2474)
!2479 = !DILocation(line: 352, column: 51, scope: !2244, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 134, column: 2, scope: !2474)
!2481 = !DILocalVariable(name: "np", arg: 1, scope: !2474, file: !3, line: 43, type: !81)
!2482 = !DILocation(line: 43, column: 62, scope: !2474)
!2483 = !DILocalVariable(name: "check_clk", arg: 2, scope: !2474, file: !3, line: 43, type: !119)
!2484 = !DILocation(line: 43, column: 71, scope: !2474)
!2485 = !DILocalVariable(name: "clk", scope: !2474, file: !3, line: 45, type: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2488, line: 17, flags: DIFlagFwdDecl)
!2488 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!2489 = !DILocation(line: 45, column: 14, scope: !2474)
!2490 = !DILocalVariable(name: "syscon", scope: !2474, file: !3, line: 46, type: !77)
!2491 = !DILocation(line: 46, column: 17, scope: !2474)
!2492 = !DILocalVariable(name: "regmap", scope: !2474, file: !3, line: 47, type: !2053)
!2493 = !DILocation(line: 47, column: 17, scope: !2474)
!2494 = !DILocalVariable(name: "base", scope: !2474, file: !3, line: 48, type: !76)
!2495 = !DILocation(line: 48, column: 16, scope: !2474)
!2496 = !DILocalVariable(name: "reg_io_width", scope: !2474, file: !3, line: 49, type: !91)
!2497 = !DILocation(line: 49, column: 6, scope: !2474)
!2498 = !DILocalVariable(name: "ret", scope: !2474, file: !3, line: 50, type: !179)
!2499 = !DILocation(line: 50, column: 6, scope: !2474)
!2500 = !DILocalVariable(name: "syscon_config", scope: !2474, file: !3, line: 51, type: !2066)
!2501 = !DILocation(line: 51, column: 23, scope: !2474)
!2502 = !DILocation(line: 51, column: 39, scope: !2474)
!2503 = !DILocalVariable(name: "res", scope: !2474, file: !3, line: 52, type: !2177)
!2504 = !DILocation(line: 52, column: 18, scope: !2474)
!2505 = !DILocation(line: 54, column: 11, scope: !2474)
!2506 = !DILocation(line: 54, column: 9, scope: !2474)
!2507 = !DILocation(line: 55, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 55, column: 6)
!2509 = !DILocation(line: 55, column: 6, scope: !2474)
!2510 = !DILocation(line: 56, column: 10, scope: !2508)
!2511 = !DILocation(line: 56, column: 3, scope: !2508)
!2512 = !DILocation(line: 58, column: 29, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 58, column: 6)
!2514 = !DILocation(line: 58, column: 6, scope: !2513)
!2515 = !DILocation(line: 58, column: 6, scope: !2474)
!2516 = !DILocation(line: 59, column: 7, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 58, column: 43)
!2518 = !DILocation(line: 60, column: 3, scope: !2517)
!2519 = !DILocation(line: 63, column: 21, scope: !2474)
!2520 = !DILocation(line: 63, column: 28, scope: !2474)
!2521 = !DILocation(line: 63, column: 9, scope: !2474)
!2522 = !DILocation(line: 63, column: 7, scope: !2474)
!2523 = !DILocation(line: 64, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 64, column: 6)
!2525 = !DILocation(line: 64, column: 6, scope: !2474)
!2526 = !DILocation(line: 65, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 64, column: 13)
!2528 = !DILocation(line: 66, column: 3, scope: !2527)
!2529 = !DILocation(line: 70, column: 28, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 70, column: 6)
!2531 = !DILocation(line: 70, column: 6, scope: !2530)
!2532 = !DILocation(line: 70, column: 6, scope: !2474)
!2533 = !DILocation(line: 71, column: 17, scope: !2530)
!2534 = !DILocation(line: 71, column: 35, scope: !2530)
!2535 = !DILocation(line: 71, column: 3, scope: !2530)
!2536 = !DILocation(line: 72, column: 33, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 72, column: 11)
!2538 = !DILocation(line: 72, column: 11, scope: !2537)
!2539 = !DILocation(line: 72, column: 11, scope: !2530)
!2540 = !DILocation(line: 73, column: 17, scope: !2537)
!2541 = !DILocation(line: 73, column: 35, scope: !2537)
!2542 = !DILocation(line: 73, column: 3, scope: !2537)
!2543 = !DILocation(line: 74, column: 33, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 74, column: 11)
!2545 = !DILocation(line: 74, column: 11, scope: !2544)
!2546 = !DILocation(line: 74, column: 11, scope: !2537)
!2547 = !DILocation(line: 75, column: 17, scope: !2544)
!2548 = !DILocation(line: 75, column: 35, scope: !2544)
!2549 = !DILocation(line: 75, column: 3, scope: !2544)
!2550 = !DILocation(line: 82, column: 29, scope: !2474)
!2551 = !DILocation(line: 82, column: 8, scope: !2474)
!2552 = !DILocation(line: 82, column: 6, scope: !2474)
!2553 = !DILocation(line: 83, column: 6, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 83, column: 6)
!2555 = !DILocation(line: 83, column: 6, scope: !2474)
!2556 = !DILocation(line: 84, column: 16, scope: !2554)
!2557 = !DILocation(line: 84, column: 3, scope: !2554)
!2558 = !DILocation(line: 86, column: 30, scope: !2474)
!2559 = !DILocation(line: 86, column: 8, scope: !2474)
!2560 = !DILocation(line: 86, column: 6, scope: !2474)
!2561 = !DILocation(line: 87, column: 6, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 87, column: 6)
!2563 = !DILocation(line: 87, column: 10, scope: !2562)
!2564 = !DILocation(line: 87, column: 6, scope: !2474)
!2565 = !DILocation(line: 88, column: 17, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 87, column: 62)
!2567 = !DILocation(line: 88, column: 28, scope: !2566)
!2568 = !DILocation(line: 89, column: 29, scope: !2566)
!2569 = !DILocation(line: 89, column: 17, scope: !2566)
!2570 = !DILocation(line: 89, column: 27, scope: !2566)
!2571 = !DILocation(line: 90, column: 17, scope: !2566)
!2572 = !DILocation(line: 90, column: 29, scope: !2566)
!2573 = !DILocation(line: 91, column: 2, scope: !2566)
!2574 = !DILocation(line: 91, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 91, column: 13)
!2576 = !DILocation(line: 91, column: 17, scope: !2575)
!2577 = !DILocation(line: 91, column: 13, scope: !2562)
!2578 = !DILocation(line: 92, column: 11, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 91, column: 22)
!2580 = !DILocation(line: 92, column: 3, scope: !2579)
!2581 = !DILocation(line: 95, column: 4, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 92, column: 16)
!2583 = !DILocation(line: 97, column: 4, scope: !2582)
!2584 = !DILocation(line: 100, column: 4, scope: !2582)
!2585 = !DILocation(line: 102, column: 2, scope: !2579)
!2586 = !DILocation(line: 104, column: 59, scope: !2474)
!2587 = !DILocation(line: 105, column: 21, scope: !2474)
!2588 = !DILocation(line: 104, column: 23, scope: !2474)
!2589 = !DILocation(line: 104, column: 16, scope: !2474)
!2590 = !DILocation(line: 104, column: 21, scope: !2474)
!2591 = !DILocation(line: 106, column: 29, scope: !2474)
!2592 = !DILocation(line: 106, column: 16, scope: !2474)
!2593 = !DILocation(line: 106, column: 27, scope: !2474)
!2594 = !DILocation(line: 107, column: 27, scope: !2474)
!2595 = !DILocation(line: 107, column: 40, scope: !2474)
!2596 = !DILocation(line: 107, column: 16, scope: !2474)
!2597 = !DILocation(line: 107, column: 25, scope: !2474)
!2598 = !DILocation(line: 108, column: 31, scope: !2474)
!2599 = !DILocation(line: 108, column: 53, scope: !2474)
!2600 = !DILocation(line: 108, column: 51, scope: !2474)
!2601 = !DILocation(line: 108, column: 16, scope: !2474)
!2602 = !DILocation(line: 108, column: 29, scope: !2474)
!2603 = !DILocation(line: 110, column: 11, scope: !2474)
!2604 = !DILocation(line: 110, column: 9, scope: !2474)
!2605 = !DILocation(line: 111, column: 13, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 111, column: 6)
!2607 = !DILocation(line: 111, column: 6, scope: !2606)
!2608 = !DILocation(line: 111, column: 6, scope: !2474)
!2609 = !DILocation(line: 112, column: 3, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 111, column: 22)
!2611 = !DILocation(line: 113, column: 17, scope: !2610)
!2612 = !DILocation(line: 113, column: 9, scope: !2610)
!2613 = !DILocation(line: 113, column: 7, scope: !2610)
!2614 = !DILocation(line: 114, column: 3, scope: !2610)
!2615 = !DILocation(line: 117, column: 6, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 117, column: 6)
!2617 = !DILocation(line: 117, column: 6, scope: !2474)
!2618 = !DILocation(line: 118, column: 20, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 117, column: 17)
!2620 = !DILocation(line: 118, column: 9, scope: !2619)
!2621 = !DILocation(line: 118, column: 7, scope: !2619)
!2622 = !DILocation(line: 119, column: 14, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 119, column: 7)
!2624 = !DILocation(line: 119, column: 7, scope: !2623)
!2625 = !DILocation(line: 119, column: 7, scope: !2619)
!2626 = !DILocation(line: 120, column: 18, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 119, column: 20)
!2628 = !DILocation(line: 120, column: 10, scope: !2627)
!2629 = !DILocation(line: 120, column: 8, scope: !2627)
!2630 = !DILocation(line: 122, column: 8, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 122, column: 8)
!2632 = !DILocation(line: 122, column: 12, scope: !2631)
!2633 = !DILocation(line: 122, column: 8, scope: !2627)
!2634 = !DILocation(line: 123, column: 5, scope: !2631)
!2635 = !DILocation(line: 124, column: 3, scope: !2627)
!2636 = !DILocation(line: 125, column: 33, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 124, column: 10)
!2638 = !DILocation(line: 125, column: 41, scope: !2637)
!2639 = !DILocation(line: 125, column: 10, scope: !2637)
!2640 = !DILocation(line: 125, column: 8, scope: !2637)
!2641 = !DILocation(line: 126, column: 8, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 126, column: 8)
!2643 = !DILocation(line: 126, column: 8, scope: !2637)
!2644 = !DILocation(line: 127, column: 5, scope: !2642)
!2645 = !DILocation(line: 129, column: 2, scope: !2619)
!2646 = !DILocation(line: 131, column: 19, scope: !2474)
!2647 = !DILocation(line: 131, column: 2, scope: !2474)
!2648 = !DILocation(line: 131, column: 10, scope: !2474)
!2649 = !DILocation(line: 131, column: 17, scope: !2474)
!2650 = !DILocation(line: 132, column: 15, scope: !2474)
!2651 = !DILocation(line: 132, column: 2, scope: !2474)
!2652 = !DILocation(line: 132, column: 10, scope: !2474)
!2653 = !DILocation(line: 132, column: 13, scope: !2474)
!2654 = !DILocation(line: 354, column: 2, scope: !2256, inlinedAt: !2480)
!2655 = !DILocation(line: 354, column: 2, scope: !2259, inlinedAt: !2480)
!2656 = !DILocation(line: 135, column: 17, scope: !2474)
!2657 = !DILocation(line: 135, column: 25, scope: !2474)
!2658 = !DILocation(line: 135, column: 2, scope: !2474)
!2659 = !DILocation(line: 394, column: 2, scope: !2287, inlinedAt: !2478)
!2660 = !DILocation(line: 394, column: 2, scope: !2290, inlinedAt: !2478)
!2661 = !DILocation(line: 138, column: 9, scope: !2474)
!2662 = !DILocation(line: 138, column: 2, scope: !2474)
!2663 = !DILabel(scope: !2474, name: "err_attach", file: !3, line: 140)
!2664 = !DILocation(line: 140, column: 1, scope: !2474)
!2665 = !DILocation(line: 141, column: 14, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 141, column: 6)
!2667 = !DILocation(line: 141, column: 7, scope: !2666)
!2668 = !DILocation(line: 141, column: 6, scope: !2474)
!2669 = !DILocation(line: 142, column: 11, scope: !2666)
!2670 = !DILocation(line: 142, column: 3, scope: !2666)
!2671 = !DILocation(line: 141, column: 17, scope: !2666)
!2672 = !DILabel(scope: !2474, name: "err_clk", file: !3, line: 143)
!2673 = !DILocation(line: 143, column: 1, scope: !2474)
!2674 = !DILocation(line: 144, column: 14, scope: !2474)
!2675 = !DILocation(line: 144, column: 2, scope: !2474)
!2676 = !DILabel(scope: !2474, name: "err_regmap", file: !3, line: 145)
!2677 = !DILocation(line: 145, column: 1, scope: !2474)
!2678 = !DILocation(line: 146, column: 10, scope: !2474)
!2679 = !DILocation(line: 146, column: 2, scope: !2474)
!2680 = !DILocation(line: 147, column: 22, scope: !2474)
!2681 = !DILocation(line: 147, column: 2, scope: !2474)
!2682 = !DILabel(scope: !2474, name: "err_map", file: !3, line: 148)
!2683 = !DILocation(line: 148, column: 1, scope: !2474)
!2684 = !DILocation(line: 149, column: 8, scope: !2474)
!2685 = !DILocation(line: 149, column: 2, scope: !2474)
!2686 = !DILocation(line: 150, column: 17, scope: !2474)
!2687 = !DILocation(line: 150, column: 9, scope: !2474)
!2688 = !DILocation(line: 150, column: 2, scope: !2474)
!2689 = !DILocation(line: 151, column: 1, scope: !2474)
!2690 = distinct !DISubprogram(name: "IS_ERR", scope: !2324, file: !2324, line: 34, type: !2691, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!119, !128}
!2693 = !DILocalVariable(name: "ptr", arg: 1, scope: !2690, file: !2324, line: 34, type: !128)
!2694 = !DILocation(line: 34, column: 60, scope: !2690)
!2695 = !DILocation(line: 36, column: 9, scope: !2690)
!2696 = !DILocation(line: 36, column: 2, scope: !2690)
!2697 = distinct !DISubprogram(name: "ERR_CAST", scope: !2324, file: !2324, line: 51, type: !2698, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!76, !128}
!2700 = !DILocalVariable(name: "ptr", arg: 1, scope: !2697, file: !2324, line: 51, type: !128)
!2701 = !DILocation(line: 51, column: 64, scope: !2697)
!2702 = !DILocation(line: 54, column: 18, scope: !2697)
!2703 = !DILocation(line: 54, column: 2, scope: !2697)
!2704 = distinct !DISubprogram(name: "kzalloc", scope: !69, file: !69, line: 662, type: !2705, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!76, !242, !1486}
!2707 = !DILocalVariable(name: "s", arg: 1, scope: !2708, file: !69, line: 445, type: !1066)
!2708 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !69, file: !69, line: 445, type: !2709, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!76, !1066, !1486, !242}
!2711 = !DILocation(line: 445, column: 72, scope: !2708, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 552, column: 10, scope: !2713, inlinedAt: !2716)
!2713 = distinct !DILexicalBlock(scope: !2714, file: !69, line: 540, column: 34)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !69, line: 540, column: 6)
!2715 = distinct !DISubprogram(name: "kmalloc", scope: !69, file: !69, line: 538, type: !2705, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2716 = distinct !DILocation(line: 664, column: 9, scope: !2704)
!2717 = !DILocalVariable(name: "flags", arg: 2, scope: !2708, file: !69, line: 446, type: !1486)
!2718 = !DILocation(line: 446, column: 9, scope: !2708, inlinedAt: !2712)
!2719 = !DILocalVariable(name: "size", arg: 3, scope: !2708, file: !69, line: 446, type: !242)
!2720 = !DILocation(line: 446, column: 23, scope: !2708, inlinedAt: !2712)
!2721 = !DILocalVariable(name: "ret", scope: !2708, file: !69, line: 448, type: !76)
!2722 = !DILocation(line: 448, column: 8, scope: !2708, inlinedAt: !2712)
!2723 = !DILocalVariable(name: "flags", arg: 1, scope: !2724, file: !69, line: 318, type: !1486)
!2724 = distinct !DISubprogram(name: "kmalloc_type", scope: !69, file: !69, line: 318, type: !2725, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!68, !1486}
!2727 = !DILocation(line: 318, column: 67, scope: !2724, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 553, column: 20, scope: !2713, inlinedAt: !2716)
!2729 = !DILocalVariable(name: "size", arg: 1, scope: !2730, file: !69, line: 346, type: !242)
!2730 = distinct !DISubprogram(name: "kmalloc_index", scope: !69, file: !69, line: 346, type: !2731, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!7, !242}
!2733 = !DILocation(line: 346, column: 58, scope: !2730, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 547, column: 11, scope: !2713, inlinedAt: !2716)
!2735 = !DILocalVariable(name: "size", arg: 1, scope: !2736, file: !69, line: 472, type: !242)
!2736 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !69, file: !69, line: 472, type: !2737, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!76, !242, !1486, !7}
!2739 = !DILocation(line: 472, column: 28, scope: !2736, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 481, column: 9, scope: !2741, inlinedAt: !2742)
!2741 = distinct !DISubprogram(name: "kmalloc_large", scope: !69, file: !69, line: 478, type: !2705, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2742 = distinct !DILocation(line: 545, column: 11, scope: !2743, inlinedAt: !2716)
!2743 = distinct !DILexicalBlock(scope: !2713, file: !69, line: 544, column: 7)
!2744 = !DILocalVariable(name: "flags", arg: 2, scope: !2736, file: !69, line: 472, type: !1486)
!2745 = !DILocation(line: 472, column: 40, scope: !2736, inlinedAt: !2740)
!2746 = !DILocalVariable(name: "order", arg: 3, scope: !2736, file: !69, line: 472, type: !7)
!2747 = !DILocation(line: 472, column: 60, scope: !2736, inlinedAt: !2740)
!2748 = !DILocalVariable(name: "size", arg: 1, scope: !2741, file: !69, line: 478, type: !242)
!2749 = !DILocation(line: 478, column: 51, scope: !2741, inlinedAt: !2742)
!2750 = !DILocalVariable(name: "flags", arg: 2, scope: !2741, file: !69, line: 478, type: !1486)
!2751 = !DILocation(line: 478, column: 63, scope: !2741, inlinedAt: !2742)
!2752 = !DILocalVariable(name: "order", scope: !2741, file: !69, line: 480, type: !7)
!2753 = !DILocation(line: 480, column: 15, scope: !2741, inlinedAt: !2742)
!2754 = !DILocalVariable(name: "size", arg: 1, scope: !2715, file: !69, line: 538, type: !242)
!2755 = !DILocation(line: 538, column: 45, scope: !2715, inlinedAt: !2716)
!2756 = !DILocalVariable(name: "flags", arg: 2, scope: !2715, file: !69, line: 538, type: !1486)
!2757 = !DILocation(line: 538, column: 57, scope: !2715, inlinedAt: !2716)
!2758 = !DILocalVariable(name: "index", scope: !2713, file: !69, line: 542, type: !7)
!2759 = !DILocation(line: 542, column: 16, scope: !2713, inlinedAt: !2716)
!2760 = !DILocalVariable(name: "size", arg: 1, scope: !2704, file: !69, line: 662, type: !242)
!2761 = !DILocation(line: 662, column: 36, scope: !2704)
!2762 = !DILocalVariable(name: "flags", arg: 2, scope: !2704, file: !69, line: 662, type: !1486)
!2763 = !DILocation(line: 662, column: 48, scope: !2704)
!2764 = !DILocation(line: 664, column: 17, scope: !2704)
!2765 = !DILocation(line: 664, column: 23, scope: !2704)
!2766 = !DILocation(line: 664, column: 29, scope: !2704)
!2767 = !DILocation(line: 540, column: 27, scope: !2714, inlinedAt: !2716)
!2768 = !DILocation(line: 540, column: 6, scope: !2714, inlinedAt: !2716)
!2769 = !DILocation(line: 540, column: 6, scope: !2715, inlinedAt: !2716)
!2770 = !DILocation(line: 544, column: 7, scope: !2743, inlinedAt: !2716)
!2771 = !DILocation(line: 544, column: 12, scope: !2743, inlinedAt: !2716)
!2772 = !DILocation(line: 544, column: 7, scope: !2713, inlinedAt: !2716)
!2773 = !DILocation(line: 545, column: 25, scope: !2743, inlinedAt: !2716)
!2774 = !DILocation(line: 545, column: 31, scope: !2743, inlinedAt: !2716)
!2775 = !DILocation(line: 480, column: 33, scope: !2741, inlinedAt: !2742)
!2776 = !DILocation(line: 480, column: 23, scope: !2741, inlinedAt: !2742)
!2777 = !DILocation(line: 481, column: 29, scope: !2741, inlinedAt: !2742)
!2778 = !DILocation(line: 481, column: 35, scope: !2741, inlinedAt: !2742)
!2779 = !DILocation(line: 481, column: 42, scope: !2741, inlinedAt: !2742)
!2780 = !DILocation(line: 474, column: 23, scope: !2736, inlinedAt: !2740)
!2781 = !DILocation(line: 474, column: 29, scope: !2736, inlinedAt: !2740)
!2782 = !DILocation(line: 474, column: 36, scope: !2736, inlinedAt: !2740)
!2783 = !DILocation(line: 474, column: 9, scope: !2736, inlinedAt: !2740)
!2784 = !DILocation(line: 545, column: 4, scope: !2743, inlinedAt: !2716)
!2785 = !DILocation(line: 547, column: 25, scope: !2713, inlinedAt: !2716)
!2786 = !DILocation(line: 348, column: 7, scope: !2787, inlinedAt: !2734)
!2787 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 348, column: 6)
!2788 = !DILocation(line: 348, column: 6, scope: !2730, inlinedAt: !2734)
!2789 = !DILocation(line: 349, column: 3, scope: !2787, inlinedAt: !2734)
!2790 = !DILocation(line: 351, column: 6, scope: !2791, inlinedAt: !2734)
!2791 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 351, column: 6)
!2792 = !DILocation(line: 351, column: 11, scope: !2791, inlinedAt: !2734)
!2793 = !DILocation(line: 351, column: 6, scope: !2730, inlinedAt: !2734)
!2794 = !DILocation(line: 352, column: 3, scope: !2791, inlinedAt: !2734)
!2795 = !DILocation(line: 354, column: 32, scope: !2796, inlinedAt: !2734)
!2796 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 354, column: 6)
!2797 = !DILocation(line: 354, column: 37, scope: !2796, inlinedAt: !2734)
!2798 = !DILocation(line: 354, column: 42, scope: !2796, inlinedAt: !2734)
!2799 = !DILocation(line: 354, column: 45, scope: !2796, inlinedAt: !2734)
!2800 = !DILocation(line: 354, column: 50, scope: !2796, inlinedAt: !2734)
!2801 = !DILocation(line: 354, column: 6, scope: !2730, inlinedAt: !2734)
!2802 = !DILocation(line: 355, column: 3, scope: !2796, inlinedAt: !2734)
!2803 = !DILocation(line: 356, column: 32, scope: !2804, inlinedAt: !2734)
!2804 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 356, column: 6)
!2805 = !DILocation(line: 356, column: 37, scope: !2804, inlinedAt: !2734)
!2806 = !DILocation(line: 356, column: 43, scope: !2804, inlinedAt: !2734)
!2807 = !DILocation(line: 356, column: 46, scope: !2804, inlinedAt: !2734)
!2808 = !DILocation(line: 356, column: 51, scope: !2804, inlinedAt: !2734)
!2809 = !DILocation(line: 356, column: 6, scope: !2730, inlinedAt: !2734)
!2810 = !DILocation(line: 357, column: 3, scope: !2804, inlinedAt: !2734)
!2811 = !DILocation(line: 358, column: 6, scope: !2812, inlinedAt: !2734)
!2812 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 358, column: 6)
!2813 = !DILocation(line: 358, column: 11, scope: !2812, inlinedAt: !2734)
!2814 = !DILocation(line: 358, column: 6, scope: !2730, inlinedAt: !2734)
!2815 = !DILocation(line: 358, column: 26, scope: !2812, inlinedAt: !2734)
!2816 = !DILocation(line: 359, column: 6, scope: !2817, inlinedAt: !2734)
!2817 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 359, column: 6)
!2818 = !DILocation(line: 359, column: 11, scope: !2817, inlinedAt: !2734)
!2819 = !DILocation(line: 359, column: 6, scope: !2730, inlinedAt: !2734)
!2820 = !DILocation(line: 359, column: 26, scope: !2817, inlinedAt: !2734)
!2821 = !DILocation(line: 360, column: 6, scope: !2822, inlinedAt: !2734)
!2822 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 360, column: 6)
!2823 = !DILocation(line: 360, column: 11, scope: !2822, inlinedAt: !2734)
!2824 = !DILocation(line: 360, column: 6, scope: !2730, inlinedAt: !2734)
!2825 = !DILocation(line: 360, column: 26, scope: !2822, inlinedAt: !2734)
!2826 = !DILocation(line: 361, column: 6, scope: !2827, inlinedAt: !2734)
!2827 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 361, column: 6)
!2828 = !DILocation(line: 361, column: 11, scope: !2827, inlinedAt: !2734)
!2829 = !DILocation(line: 361, column: 6, scope: !2730, inlinedAt: !2734)
!2830 = !DILocation(line: 361, column: 26, scope: !2827, inlinedAt: !2734)
!2831 = !DILocation(line: 362, column: 6, scope: !2832, inlinedAt: !2734)
!2832 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 362, column: 6)
!2833 = !DILocation(line: 362, column: 11, scope: !2832, inlinedAt: !2734)
!2834 = !DILocation(line: 362, column: 6, scope: !2730, inlinedAt: !2734)
!2835 = !DILocation(line: 362, column: 26, scope: !2832, inlinedAt: !2734)
!2836 = !DILocation(line: 363, column: 6, scope: !2837, inlinedAt: !2734)
!2837 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 363, column: 6)
!2838 = !DILocation(line: 363, column: 11, scope: !2837, inlinedAt: !2734)
!2839 = !DILocation(line: 363, column: 6, scope: !2730, inlinedAt: !2734)
!2840 = !DILocation(line: 363, column: 26, scope: !2837, inlinedAt: !2734)
!2841 = !DILocation(line: 364, column: 6, scope: !2842, inlinedAt: !2734)
!2842 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 364, column: 6)
!2843 = !DILocation(line: 364, column: 11, scope: !2842, inlinedAt: !2734)
!2844 = !DILocation(line: 364, column: 6, scope: !2730, inlinedAt: !2734)
!2845 = !DILocation(line: 364, column: 26, scope: !2842, inlinedAt: !2734)
!2846 = !DILocation(line: 365, column: 6, scope: !2847, inlinedAt: !2734)
!2847 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 365, column: 6)
!2848 = !DILocation(line: 365, column: 11, scope: !2847, inlinedAt: !2734)
!2849 = !DILocation(line: 365, column: 6, scope: !2730, inlinedAt: !2734)
!2850 = !DILocation(line: 365, column: 26, scope: !2847, inlinedAt: !2734)
!2851 = !DILocation(line: 366, column: 6, scope: !2852, inlinedAt: !2734)
!2852 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 366, column: 6)
!2853 = !DILocation(line: 366, column: 11, scope: !2852, inlinedAt: !2734)
!2854 = !DILocation(line: 366, column: 6, scope: !2730, inlinedAt: !2734)
!2855 = !DILocation(line: 366, column: 26, scope: !2852, inlinedAt: !2734)
!2856 = !DILocation(line: 367, column: 6, scope: !2857, inlinedAt: !2734)
!2857 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 367, column: 6)
!2858 = !DILocation(line: 367, column: 11, scope: !2857, inlinedAt: !2734)
!2859 = !DILocation(line: 367, column: 6, scope: !2730, inlinedAt: !2734)
!2860 = !DILocation(line: 367, column: 26, scope: !2857, inlinedAt: !2734)
!2861 = !DILocation(line: 368, column: 6, scope: !2862, inlinedAt: !2734)
!2862 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 368, column: 6)
!2863 = !DILocation(line: 368, column: 11, scope: !2862, inlinedAt: !2734)
!2864 = !DILocation(line: 368, column: 6, scope: !2730, inlinedAt: !2734)
!2865 = !DILocation(line: 368, column: 26, scope: !2862, inlinedAt: !2734)
!2866 = !DILocation(line: 369, column: 6, scope: !2867, inlinedAt: !2734)
!2867 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 369, column: 6)
!2868 = !DILocation(line: 369, column: 11, scope: !2867, inlinedAt: !2734)
!2869 = !DILocation(line: 369, column: 6, scope: !2730, inlinedAt: !2734)
!2870 = !DILocation(line: 369, column: 26, scope: !2867, inlinedAt: !2734)
!2871 = !DILocation(line: 370, column: 6, scope: !2872, inlinedAt: !2734)
!2872 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 370, column: 6)
!2873 = !DILocation(line: 370, column: 11, scope: !2872, inlinedAt: !2734)
!2874 = !DILocation(line: 370, column: 6, scope: !2730, inlinedAt: !2734)
!2875 = !DILocation(line: 370, column: 26, scope: !2872, inlinedAt: !2734)
!2876 = !DILocation(line: 371, column: 6, scope: !2877, inlinedAt: !2734)
!2877 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 371, column: 6)
!2878 = !DILocation(line: 371, column: 11, scope: !2877, inlinedAt: !2734)
!2879 = !DILocation(line: 371, column: 6, scope: !2730, inlinedAt: !2734)
!2880 = !DILocation(line: 371, column: 26, scope: !2877, inlinedAt: !2734)
!2881 = !DILocation(line: 372, column: 6, scope: !2882, inlinedAt: !2734)
!2882 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 372, column: 6)
!2883 = !DILocation(line: 372, column: 11, scope: !2882, inlinedAt: !2734)
!2884 = !DILocation(line: 372, column: 6, scope: !2730, inlinedAt: !2734)
!2885 = !DILocation(line: 372, column: 26, scope: !2882, inlinedAt: !2734)
!2886 = !DILocation(line: 373, column: 6, scope: !2887, inlinedAt: !2734)
!2887 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 373, column: 6)
!2888 = !DILocation(line: 373, column: 11, scope: !2887, inlinedAt: !2734)
!2889 = !DILocation(line: 373, column: 6, scope: !2730, inlinedAt: !2734)
!2890 = !DILocation(line: 373, column: 26, scope: !2887, inlinedAt: !2734)
!2891 = !DILocation(line: 374, column: 6, scope: !2892, inlinedAt: !2734)
!2892 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 374, column: 6)
!2893 = !DILocation(line: 374, column: 11, scope: !2892, inlinedAt: !2734)
!2894 = !DILocation(line: 374, column: 6, scope: !2730, inlinedAt: !2734)
!2895 = !DILocation(line: 374, column: 26, scope: !2892, inlinedAt: !2734)
!2896 = !DILocation(line: 375, column: 6, scope: !2897, inlinedAt: !2734)
!2897 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 375, column: 6)
!2898 = !DILocation(line: 375, column: 11, scope: !2897, inlinedAt: !2734)
!2899 = !DILocation(line: 375, column: 6, scope: !2730, inlinedAt: !2734)
!2900 = !DILocation(line: 375, column: 27, scope: !2897, inlinedAt: !2734)
!2901 = !DILocation(line: 376, column: 6, scope: !2902, inlinedAt: !2734)
!2902 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 376, column: 6)
!2903 = !DILocation(line: 376, column: 11, scope: !2902, inlinedAt: !2734)
!2904 = !DILocation(line: 376, column: 6, scope: !2730, inlinedAt: !2734)
!2905 = !DILocation(line: 376, column: 32, scope: !2902, inlinedAt: !2734)
!2906 = !DILocation(line: 377, column: 6, scope: !2907, inlinedAt: !2734)
!2907 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 377, column: 6)
!2908 = !DILocation(line: 377, column: 11, scope: !2907, inlinedAt: !2734)
!2909 = !DILocation(line: 377, column: 6, scope: !2730, inlinedAt: !2734)
!2910 = !DILocation(line: 377, column: 32, scope: !2907, inlinedAt: !2734)
!2911 = !DILocation(line: 378, column: 6, scope: !2912, inlinedAt: !2734)
!2912 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 378, column: 6)
!2913 = !DILocation(line: 378, column: 11, scope: !2912, inlinedAt: !2734)
!2914 = !DILocation(line: 378, column: 6, scope: !2730, inlinedAt: !2734)
!2915 = !DILocation(line: 378, column: 32, scope: !2912, inlinedAt: !2734)
!2916 = !DILocation(line: 379, column: 6, scope: !2917, inlinedAt: !2734)
!2917 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 379, column: 6)
!2918 = !DILocation(line: 379, column: 11, scope: !2917, inlinedAt: !2734)
!2919 = !DILocation(line: 379, column: 6, scope: !2730, inlinedAt: !2734)
!2920 = !DILocation(line: 379, column: 33, scope: !2917, inlinedAt: !2734)
!2921 = !DILocation(line: 380, column: 6, scope: !2922, inlinedAt: !2734)
!2922 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 380, column: 6)
!2923 = !DILocation(line: 380, column: 11, scope: !2922, inlinedAt: !2734)
!2924 = !DILocation(line: 380, column: 6, scope: !2730, inlinedAt: !2734)
!2925 = !DILocation(line: 380, column: 33, scope: !2922, inlinedAt: !2734)
!2926 = !DILocation(line: 381, column: 6, scope: !2927, inlinedAt: !2734)
!2927 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 381, column: 6)
!2928 = !DILocation(line: 381, column: 11, scope: !2927, inlinedAt: !2734)
!2929 = !DILocation(line: 381, column: 6, scope: !2730, inlinedAt: !2734)
!2930 = !DILocation(line: 381, column: 33, scope: !2927, inlinedAt: !2734)
!2931 = !DILocation(line: 382, column: 2, scope: !2932, inlinedAt: !2734)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !69, line: 382, column: 2)
!2933 = distinct !DILexicalBlock(scope: !2730, file: !69, line: 382, column: 2)
!2934 = !{i32 -2143350357, i32 -2143350328, i32 -2143350282, i32 -2143350224, i32 -2143350170, i32 -2143350116, i32 -2143350061, i32 -2143350030}
!2935 = !DILocation(line: 382, column: 2, scope: !2936, inlinedAt: !2734)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !69, line: 382, column: 2)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !69, line: 382, column: 2)
!2938 = !{i32 -2143349587, i32 -2143349580, i32 -2143349526, i32 -2143349495, i32 -2143349465}
!2939 = !DILocation(line: 382, column: 2, scope: !2937, inlinedAt: !2734)
!2940 = !DILocation(line: 386, column: 1, scope: !2730, inlinedAt: !2734)
!2941 = !DILocation(line: 547, column: 9, scope: !2713, inlinedAt: !2716)
!2942 = !DILocation(line: 549, column: 8, scope: !2943, inlinedAt: !2716)
!2943 = distinct !DILexicalBlock(scope: !2713, file: !69, line: 549, column: 7)
!2944 = !DILocation(line: 549, column: 7, scope: !2713, inlinedAt: !2716)
!2945 = !DILocation(line: 550, column: 4, scope: !2943, inlinedAt: !2716)
!2946 = !DILocation(line: 553, column: 33, scope: !2713, inlinedAt: !2716)
!2947 = !DILocation(line: 325, column: 6, scope: !2948, inlinedAt: !2728)
!2948 = distinct !DILexicalBlock(scope: !2724, file: !69, line: 325, column: 6)
!2949 = !DILocation(line: 325, column: 6, scope: !2724, inlinedAt: !2728)
!2950 = !DILocation(line: 326, column: 3, scope: !2948, inlinedAt: !2728)
!2951 = !DILocation(line: 332, column: 9, scope: !2724, inlinedAt: !2728)
!2952 = !DILocation(line: 332, column: 15, scope: !2724, inlinedAt: !2728)
!2953 = !DILocation(line: 332, column: 2, scope: !2724, inlinedAt: !2728)
!2954 = !DILocation(line: 336, column: 1, scope: !2724, inlinedAt: !2728)
!2955 = !DILocation(line: 553, column: 5, scope: !2713, inlinedAt: !2716)
!2956 = !DILocation(line: 553, column: 41, scope: !2713, inlinedAt: !2716)
!2957 = !DILocation(line: 554, column: 5, scope: !2713, inlinedAt: !2716)
!2958 = !DILocation(line: 554, column: 12, scope: !2713, inlinedAt: !2716)
!2959 = !DILocation(line: 448, column: 31, scope: !2708, inlinedAt: !2712)
!2960 = !DILocation(line: 448, column: 34, scope: !2708, inlinedAt: !2712)
!2961 = !DILocation(line: 448, column: 14, scope: !2708, inlinedAt: !2712)
!2962 = !DILocation(line: 450, column: 22, scope: !2708, inlinedAt: !2712)
!2963 = !DILocation(line: 450, column: 25, scope: !2708, inlinedAt: !2712)
!2964 = !DILocation(line: 450, column: 30, scope: !2708, inlinedAt: !2712)
!2965 = !DILocation(line: 450, column: 36, scope: !2708, inlinedAt: !2712)
!2966 = !DILocation(line: 450, column: 8, scope: !2708, inlinedAt: !2712)
!2967 = !DILocation(line: 450, column: 6, scope: !2708, inlinedAt: !2712)
!2968 = !DILocation(line: 451, column: 9, scope: !2708, inlinedAt: !2712)
!2969 = !DILocation(line: 552, column: 3, scope: !2713, inlinedAt: !2716)
!2970 = !DILocation(line: 557, column: 19, scope: !2715, inlinedAt: !2716)
!2971 = !DILocation(line: 557, column: 25, scope: !2715, inlinedAt: !2716)
!2972 = !DILocation(line: 557, column: 9, scope: !2715, inlinedAt: !2716)
!2973 = !DILocation(line: 557, column: 2, scope: !2715, inlinedAt: !2716)
!2974 = !DILocation(line: 558, column: 1, scope: !2715, inlinedAt: !2716)
!2975 = !DILocation(line: 664, column: 2, scope: !2704)
!2976 = distinct !DISubprogram(name: "resource_size", scope: !2178, file: !2178, line: 210, type: !2977, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2181, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2981 = !DILocalVariable(name: "res", arg: 1, scope: !2976, file: !2178, line: 210, type: !2979)
!2982 = !DILocation(line: 210, column: 68, scope: !2976)
!2983 = !DILocation(line: 212, column: 9, scope: !2976)
!2984 = !DILocation(line: 212, column: 14, scope: !2976)
!2985 = !DILocation(line: 212, column: 20, scope: !2976)
!2986 = !DILocation(line: 212, column: 25, scope: !2976)
!2987 = !DILocation(line: 212, column: 18, scope: !2976)
!2988 = !DILocation(line: 212, column: 31, scope: !2976)
!2989 = !DILocation(line: 212, column: 2, scope: !2976)
!2990 = distinct !DISubprogram(name: "of_property_read_bool", scope: !83, file: !83, line: 1192, type: !2991, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!119, !2993, !86}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!2995 = !DILocalVariable(name: "np", arg: 1, scope: !2990, file: !83, line: 1192, type: !2993)
!2996 = !DILocation(line: 1192, column: 68, scope: !2990)
!2997 = !DILocalVariable(name: "propname", arg: 2, scope: !2990, file: !83, line: 1193, type: !86)
!2998 = !DILocation(line: 1193, column: 19, scope: !2990)
!2999 = !DILocalVariable(name: "prop", scope: !2990, file: !83, line: 1195, type: !2037)
!3000 = !DILocation(line: 1195, column: 19, scope: !2990)
!3001 = !DILocation(line: 1195, column: 43, scope: !2990)
!3002 = !DILocation(line: 1195, column: 47, scope: !2990)
!3003 = !DILocation(line: 1195, column: 26, scope: !2990)
!3004 = !DILocation(line: 1197, column: 9, scope: !2990)
!3005 = !DILocation(line: 1197, column: 2, scope: !2990)
!3006 = distinct !DISubprogram(name: "of_property_read_u32", scope: !83, file: !83, line: 1214, type: !3007, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!179, !2993, !86, !649}
!3009 = !DILocalVariable(name: "np", arg: 1, scope: !3006, file: !83, line: 1214, type: !2993)
!3010 = !DILocation(line: 1214, column: 66, scope: !3006)
!3011 = !DILocalVariable(name: "propname", arg: 2, scope: !3006, file: !83, line: 1215, type: !86)
!3012 = !DILocation(line: 1215, column: 24, scope: !3006)
!3013 = !DILocalVariable(name: "out_value", arg: 3, scope: !3006, file: !83, line: 1216, type: !649)
!3014 = !DILocation(line: 1216, column: 17, scope: !3006)
!3015 = !DILocation(line: 1218, column: 36, scope: !3006)
!3016 = !DILocation(line: 1218, column: 40, scope: !3006)
!3017 = !DILocation(line: 1218, column: 50, scope: !3006)
!3018 = !DILocation(line: 1218, column: 9, scope: !3006)
!3019 = !DILocation(line: 1218, column: 2, scope: !3006)
!3020 = distinct !DISubprogram(name: "of_hwspin_lock_get_id", scope: !3021, file: !3021, line: 130, type: !3022, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3021 = !DIFile(filename: "./include/linux/hwspinlock.h", directory: "/home/lizy2001/genbc/linux")
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!179, !81, !179}
!3024 = !DILocalVariable(name: "np", arg: 1, scope: !3020, file: !3021, line: 130, type: !81)
!3025 = !DILocation(line: 130, column: 61, scope: !3020)
!3026 = !DILocalVariable(name: "index", arg: 2, scope: !3020, file: !3021, line: 130, type: !179)
!3027 = !DILocation(line: 130, column: 69, scope: !3020)
!3028 = !DILocation(line: 132, column: 2, scope: !3020)
!3029 = distinct !DISubprogram(name: "PTR_ERR", scope: !2324, file: !2324, line: 29, type: !3030, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!230, !128}
!3032 = !DILocalVariable(name: "ptr", arg: 1, scope: !3029, file: !2324, line: 29, type: !128)
!3033 = !DILocation(line: 29, column: 61, scope: !3029)
!3034 = !DILocation(line: 31, column: 16, scope: !3029)
!3035 = !DILocation(line: 31, column: 9, scope: !3029)
!3036 = !DILocation(line: 31, column: 2, scope: !3029)
!3037 = distinct !DISubprogram(name: "list_add_tail", scope: !3038, file: !3038, line: 98, type: !3039, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3038 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !143, !143}
!3041 = !DILocalVariable(name: "new", arg: 1, scope: !3037, file: !3038, line: 98, type: !143)
!3042 = !DILocation(line: 98, column: 52, scope: !3037)
!3043 = !DILocalVariable(name: "head", arg: 2, scope: !3037, file: !3038, line: 98, type: !143)
!3044 = !DILocation(line: 98, column: 75, scope: !3037)
!3045 = !DILocation(line: 100, column: 13, scope: !3037)
!3046 = !DILocation(line: 100, column: 18, scope: !3037)
!3047 = !DILocation(line: 100, column: 24, scope: !3037)
!3048 = !DILocation(line: 100, column: 30, scope: !3037)
!3049 = !DILocation(line: 100, column: 2, scope: !3037)
!3050 = !DILocation(line: 101, column: 1, scope: !3037)
!3051 = distinct !DISubprogram(name: "get_order", scope: !3052, file: !3052, line: 29, type: !3053, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3052 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!179, !245}
!3055 = !DILocalVariable(name: "x", arg: 1, scope: !3056, file: !3057, line: 366, type: !315)
!3056 = distinct !DISubprogram(name: "fls64", scope: !3057, file: !3057, line: 366, type: !3058, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3057 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!179, !315}
!3060 = !DILocation(line: 366, column: 40, scope: !3056, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 46, column: 9, scope: !3051)
!3062 = !DILocalVariable(name: "bitpos", scope: !3056, file: !3057, line: 368, type: !179)
!3063 = !DILocation(line: 368, column: 6, scope: !3056, inlinedAt: !3061)
!3064 = !DILocalVariable(name: "size", arg: 1, scope: !3051, file: !3052, line: 29, type: !245)
!3065 = !DILocation(line: 29, column: 63, scope: !3051)
!3066 = !DILocation(line: 31, column: 27, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3051, file: !3052, line: 31, column: 6)
!3068 = !DILocation(line: 31, column: 6, scope: !3067)
!3069 = !DILocation(line: 31, column: 6, scope: !3051)
!3070 = !DILocation(line: 32, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3052, line: 32, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !3052, line: 31, column: 34)
!3073 = !DILocation(line: 32, column: 7, scope: !3072)
!3074 = !DILocation(line: 33, column: 4, scope: !3071)
!3075 = !DILocation(line: 35, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !3052, line: 35, column: 7)
!3077 = !DILocation(line: 35, column: 12, scope: !3076)
!3078 = !DILocation(line: 35, column: 7, scope: !3072)
!3079 = !DILocation(line: 36, column: 4, scope: !3076)
!3080 = !DILocation(line: 38, column: 10, scope: !3072)
!3081 = !DILocation(line: 38, column: 28, scope: !3072)
!3082 = !DILocation(line: 38, column: 41, scope: !3072)
!3083 = !DILocation(line: 38, column: 3, scope: !3072)
!3084 = !DILocation(line: 41, column: 6, scope: !3051)
!3085 = !DILocation(line: 42, column: 7, scope: !3051)
!3086 = !DILocation(line: 46, column: 15, scope: !3051)
!3087 = !DILocation(line: 374, column: 2, scope: !3056, inlinedAt: !3061)
!3088 = !DILocation(line: 376, column: 14, scope: !3056, inlinedAt: !3061)
!3089 = !{i32 285741}
!3090 = !DILocation(line: 377, column: 9, scope: !3056, inlinedAt: !3061)
!3091 = !DILocation(line: 377, column: 16, scope: !3056, inlinedAt: !3061)
!3092 = !DILocation(line: 46, column: 2, scope: !3051)
!3093 = !DILocation(line: 48, column: 1, scope: !3051)
!3094 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3095, file: !3095, line: 30, type: !3096, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3095 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!179, !314}
!3098 = !DILocation(line: 366, column: 40, scope: !3056, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 32, column: 9, scope: !3094)
!3100 = !DILocation(line: 368, column: 6, scope: !3056, inlinedAt: !3099)
!3101 = !DILocalVariable(name: "n", arg: 1, scope: !3094, file: !3095, line: 30, type: !314)
!3102 = !DILocation(line: 30, column: 21, scope: !3094)
!3103 = !DILocation(line: 32, column: 15, scope: !3094)
!3104 = !DILocation(line: 374, column: 2, scope: !3056, inlinedAt: !3099)
!3105 = !DILocation(line: 376, column: 14, scope: !3056, inlinedAt: !3099)
!3106 = !DILocation(line: 377, column: 9, scope: !3056, inlinedAt: !3099)
!3107 = !DILocation(line: 377, column: 16, scope: !3056, inlinedAt: !3099)
!3108 = !DILocation(line: 32, column: 18, scope: !3094)
!3109 = !DILocation(line: 32, column: 2, scope: !3094)
!3110 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3111, file: !3111, line: 137, type: !3112, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3111 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!76, !1066, !128, !242, !1486}
!3114 = !DILocalVariable(name: "s", arg: 1, scope: !3110, file: !3111, line: 137, type: !1066)
!3115 = !DILocation(line: 137, column: 54, scope: !3110)
!3116 = !DILocalVariable(name: "object", arg: 2, scope: !3110, file: !3111, line: 137, type: !128)
!3117 = !DILocation(line: 137, column: 69, scope: !3110)
!3118 = !DILocalVariable(name: "size", arg: 3, scope: !3110, file: !3111, line: 138, type: !242)
!3119 = !DILocation(line: 138, column: 12, scope: !3110)
!3120 = !DILocalVariable(name: "flags", arg: 4, scope: !3110, file: !3111, line: 138, type: !1486)
!3121 = !DILocation(line: 138, column: 24, scope: !3110)
!3122 = !DILocation(line: 140, column: 17, scope: !3110)
!3123 = !DILocation(line: 140, column: 2, scope: !3110)
!3124 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !83, file: !83, line: 494, type: !3125, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!179, !2993, !86, !649, !242}
!3127 = !DILocalVariable(name: "np", arg: 1, scope: !3124, file: !83, line: 494, type: !2993)
!3128 = !DILocation(line: 494, column: 72, scope: !3124)
!3129 = !DILocalVariable(name: "propname", arg: 2, scope: !3124, file: !83, line: 495, type: !86)
!3130 = !DILocation(line: 495, column: 23, scope: !3124)
!3131 = !DILocalVariable(name: "out_values", arg: 3, scope: !3124, file: !83, line: 496, type: !649)
!3132 = !DILocation(line: 496, column: 16, scope: !3124)
!3133 = !DILocalVariable(name: "sz", arg: 4, scope: !3124, file: !83, line: 496, type: !242)
!3134 = !DILocation(line: 496, column: 35, scope: !3124)
!3135 = !DILocalVariable(name: "ret", scope: !3124, file: !83, line: 498, type: !179)
!3136 = !DILocation(line: 498, column: 6, scope: !3124)
!3137 = !DILocation(line: 498, column: 48, scope: !3124)
!3138 = !DILocation(line: 498, column: 52, scope: !3124)
!3139 = !DILocation(line: 498, column: 62, scope: !3124)
!3140 = !DILocation(line: 499, column: 13, scope: !3124)
!3141 = !DILocation(line: 498, column: 12, scope: !3124)
!3142 = !DILocation(line: 500, column: 6, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3124, file: !83, line: 500, column: 6)
!3144 = !DILocation(line: 500, column: 10, scope: !3143)
!3145 = !DILocation(line: 500, column: 6, scope: !3124)
!3146 = !DILocation(line: 501, column: 3, scope: !3143)
!3147 = !DILocation(line: 503, column: 10, scope: !3143)
!3148 = !DILocation(line: 503, column: 3, scope: !3143)
!3149 = !DILocation(line: 504, column: 1, scope: !3124)
!3150 = distinct !DISubprogram(name: "__list_add", scope: !3038, file: !3038, line: 63, type: !3151, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{null, !143, !143, !143}
!3153 = !DILocalVariable(name: "new", arg: 1, scope: !3150, file: !3038, line: 63, type: !143)
!3154 = !DILocation(line: 63, column: 49, scope: !3150)
!3155 = !DILocalVariable(name: "prev", arg: 2, scope: !3150, file: !3038, line: 64, type: !143)
!3156 = !DILocation(line: 64, column: 28, scope: !3150)
!3157 = !DILocalVariable(name: "next", arg: 3, scope: !3150, file: !3038, line: 65, type: !143)
!3158 = !DILocation(line: 65, column: 28, scope: !3150)
!3159 = !DILocation(line: 67, column: 24, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3150, file: !3038, line: 67, column: 6)
!3161 = !DILocation(line: 67, column: 29, scope: !3160)
!3162 = !DILocation(line: 67, column: 35, scope: !3160)
!3163 = !DILocation(line: 67, column: 7, scope: !3160)
!3164 = !DILocation(line: 67, column: 6, scope: !3150)
!3165 = !DILocation(line: 68, column: 3, scope: !3160)
!3166 = !DILocation(line: 70, column: 15, scope: !3150)
!3167 = !DILocation(line: 70, column: 2, scope: !3150)
!3168 = !DILocation(line: 70, column: 8, scope: !3150)
!3169 = !DILocation(line: 70, column: 13, scope: !3150)
!3170 = !DILocation(line: 71, column: 14, scope: !3150)
!3171 = !DILocation(line: 71, column: 2, scope: !3150)
!3172 = !DILocation(line: 71, column: 7, scope: !3150)
!3173 = !DILocation(line: 71, column: 12, scope: !3150)
!3174 = !DILocation(line: 72, column: 14, scope: !3150)
!3175 = !DILocation(line: 72, column: 2, scope: !3150)
!3176 = !DILocation(line: 72, column: 7, scope: !3150)
!3177 = !DILocation(line: 72, column: 12, scope: !3150)
!3178 = !DILocation(line: 73, column: 2, scope: !3150)
!3179 = !DILocation(line: 73, column: 2, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3150, file: !3038, line: 73, column: 2)
!3181 = !DILocation(line: 73, column: 2, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3180, file: !3038, line: 73, column: 2)
!3183 = !DILocation(line: 73, column: 2, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !3038, line: 73, column: 2)
!3185 = !DILocation(line: 74, column: 1, scope: !3150)
!3186 = distinct !DISubprogram(name: "__list_add_valid", scope: !3038, file: !3038, line: 45, type: !3187, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!119, !143, !143, !143}
!3189 = !DILocalVariable(name: "new", arg: 1, scope: !3186, file: !3038, line: 45, type: !143)
!3190 = !DILocation(line: 45, column: 55, scope: !3186)
!3191 = !DILocalVariable(name: "prev", arg: 2, scope: !3186, file: !3038, line: 46, type: !143)
!3192 = !DILocation(line: 46, column: 23, scope: !3186)
!3193 = !DILocalVariable(name: "next", arg: 3, scope: !3186, file: !3038, line: 47, type: !143)
!3194 = !DILocation(line: 47, column: 23, scope: !3186)
!3195 = !DILocation(line: 49, column: 2, scope: !3186)
!3196 = distinct !DISubprogram(name: "syscon_probe", scope: !3, file: !3, line: 258, type: !2163, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3197 = !DILocalVariable(name: "pdev", arg: 1, scope: !3196, file: !3, line: 258, type: !2165)
!3198 = !DILocation(line: 258, column: 49, scope: !3196)
!3199 = !DILocalVariable(name: "dev", scope: !3196, file: !3, line: 260, type: !1615)
!3200 = !DILocation(line: 260, column: 17, scope: !3196)
!3201 = !DILocation(line: 260, column: 24, scope: !3196)
!3202 = !DILocation(line: 260, column: 30, scope: !3196)
!3203 = !DILocalVariable(name: "pdata", scope: !3196, file: !3, line: 261, type: !3204)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscon_platform_data", file: !3206, line: 5, size: 64, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/platform_data/syscon.h", directory: "/home/lizy2001/genbc/linux")
!3207 = !{!3208}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !3205, file: !3206, line: 6, baseType: !86, size: 64)
!3209 = !DILocation(line: 261, column: 31, scope: !3196)
!3210 = !DILocation(line: 261, column: 56, scope: !3196)
!3211 = !DILocation(line: 261, column: 39, scope: !3196)
!3212 = !DILocalVariable(name: "syscon", scope: !3196, file: !3, line: 262, type: !77)
!3213 = !DILocation(line: 262, column: 17, scope: !3196)
!3214 = !DILocalVariable(name: "syscon_config", scope: !3196, file: !3, line: 263, type: !2066)
!3215 = !DILocation(line: 263, column: 23, scope: !3196)
!3216 = !DILocation(line: 263, column: 39, scope: !3196)
!3217 = !DILocalVariable(name: "res", scope: !3196, file: !3, line: 264, type: !2176)
!3218 = !DILocation(line: 264, column: 19, scope: !3196)
!3219 = !DILocalVariable(name: "base", scope: !3196, file: !3, line: 265, type: !76)
!3220 = !DILocation(line: 265, column: 16, scope: !3196)
!3221 = !DILocation(line: 267, column: 24, scope: !3196)
!3222 = !DILocation(line: 267, column: 11, scope: !3196)
!3223 = !DILocation(line: 267, column: 9, scope: !3196)
!3224 = !DILocation(line: 268, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 268, column: 6)
!3226 = !DILocation(line: 268, column: 6, scope: !3196)
!3227 = !DILocation(line: 269, column: 3, scope: !3225)
!3228 = !DILocation(line: 271, column: 30, scope: !3196)
!3229 = !DILocation(line: 271, column: 8, scope: !3196)
!3230 = !DILocation(line: 271, column: 6, scope: !3196)
!3231 = !DILocation(line: 272, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 272, column: 6)
!3233 = !DILocation(line: 272, column: 6, scope: !3196)
!3234 = !DILocation(line: 273, column: 3, scope: !3232)
!3235 = !DILocation(line: 275, column: 22, scope: !3196)
!3236 = !DILocation(line: 275, column: 27, scope: !3196)
!3237 = !DILocation(line: 275, column: 32, scope: !3196)
!3238 = !DILocation(line: 275, column: 53, scope: !3196)
!3239 = !DILocation(line: 275, column: 39, scope: !3196)
!3240 = !DILocation(line: 275, column: 9, scope: !3196)
!3241 = !DILocation(line: 275, column: 7, scope: !3196)
!3242 = !DILocation(line: 276, column: 7, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 276, column: 6)
!3244 = !DILocation(line: 276, column: 6, scope: !3196)
!3245 = !DILocation(line: 277, column: 3, scope: !3243)
!3246 = !DILocation(line: 279, column: 45, scope: !3196)
!3247 = !DILocation(line: 279, column: 31, scope: !3196)
!3248 = !DILocation(line: 279, column: 50, scope: !3196)
!3249 = !DILocation(line: 279, column: 16, scope: !3196)
!3250 = !DILocation(line: 279, column: 29, scope: !3196)
!3251 = !DILocation(line: 280, column: 6, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 280, column: 6)
!3253 = !DILocation(line: 280, column: 6, scope: !3196)
!3254 = !DILocation(line: 281, column: 24, scope: !3252)
!3255 = !DILocation(line: 281, column: 31, scope: !3252)
!3256 = !DILocation(line: 281, column: 17, scope: !3252)
!3257 = !DILocation(line: 281, column: 22, scope: !3252)
!3258 = !DILocation(line: 281, column: 3, scope: !3252)
!3259 = !DILocation(line: 282, column: 19, scope: !3196)
!3260 = !DILocation(line: 282, column: 2, scope: !3196)
!3261 = !DILocation(line: 282, column: 10, scope: !3196)
!3262 = !DILocation(line: 282, column: 17, scope: !3196)
!3263 = !DILocation(line: 283, column: 13, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 283, column: 6)
!3265 = !DILocation(line: 283, column: 21, scope: !3264)
!3266 = !DILocation(line: 283, column: 6, scope: !3264)
!3267 = !DILocation(line: 283, column: 6, scope: !3196)
!3268 = !DILocation(line: 284, column: 3, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 283, column: 30)
!3270 = !DILocation(line: 285, column: 18, scope: !3269)
!3271 = !DILocation(line: 285, column: 26, scope: !3269)
!3272 = !DILocation(line: 285, column: 10, scope: !3269)
!3273 = !DILocation(line: 285, column: 3, scope: !3269)
!3274 = !DILocation(line: 288, column: 23, scope: !3196)
!3275 = !DILocation(line: 288, column: 29, scope: !3196)
!3276 = !DILocation(line: 288, column: 2, scope: !3196)
!3277 = !DILocation(line: 292, column: 2, scope: !3196)
!3278 = !DILocation(line: 293, column: 1, scope: !3196)
!3279 = distinct !DISubprogram(name: "dev_get_platdata", scope: !30, file: !30, line: 828, type: !3280, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!76, !130}
!3282 = !DILocalVariable(name: "dev", arg: 1, scope: !3279, file: !30, line: 828, type: !130)
!3283 = !DILocation(line: 828, column: 59, scope: !3279)
!3284 = !DILocation(line: 830, column: 9, scope: !3279)
!3285 = !DILocation(line: 830, column: 14, scope: !3279)
!3286 = !DILocation(line: 830, column: 2, scope: !3279)
!3287 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !3288, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!76, !1615, !242, !1486}
!3290 = !DILocalVariable(name: "dev", arg: 1, scope: !3287, file: !30, line: 215, type: !1615)
!3291 = !DILocation(line: 215, column: 49, scope: !3287)
!3292 = !DILocalVariable(name: "size", arg: 2, scope: !3287, file: !30, line: 215, type: !242)
!3293 = !DILocation(line: 215, column: 61, scope: !3287)
!3294 = !DILocalVariable(name: "gfp", arg: 3, scope: !3287, file: !30, line: 215, type: !1486)
!3295 = !DILocation(line: 215, column: 73, scope: !3287)
!3296 = !DILocation(line: 217, column: 22, scope: !3287)
!3297 = !DILocation(line: 217, column: 27, scope: !3287)
!3298 = !DILocation(line: 217, column: 33, scope: !3287)
!3299 = !DILocation(line: 217, column: 37, scope: !3287)
!3300 = !DILocation(line: 217, column: 9, scope: !3287)
!3301 = !DILocation(line: 217, column: 2, scope: !3287)
!3302 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2159, file: !2159, line: 236, type: !3303, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{null, !2165, !76}
!3305 = !DILocalVariable(name: "pdev", arg: 1, scope: !3302, file: !2159, line: 236, type: !2165)
!3306 = !DILocation(line: 236, column: 65, scope: !3302)
!3307 = !DILocalVariable(name: "data", arg: 2, scope: !3302, file: !2159, line: 237, type: !76)
!3308 = !DILocation(line: 237, column: 12, scope: !3302)
!3309 = !DILocation(line: 239, column: 19, scope: !3302)
!3310 = !DILocation(line: 239, column: 25, scope: !3302)
!3311 = !DILocation(line: 239, column: 30, scope: !3302)
!3312 = !DILocation(line: 239, column: 2, scope: !3302)
!3313 = !DILocation(line: 240, column: 1, scope: !3302)
!3314 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3315, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !167)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !1615, !76}
!3317 = !DILocalVariable(name: "dev", arg: 1, scope: !3314, file: !30, line: 660, type: !1615)
!3318 = !DILocation(line: 660, column: 51, scope: !3314)
!3319 = !DILocalVariable(name: "data", arg: 2, scope: !3314, file: !30, line: 660, type: !76)
!3320 = !DILocation(line: 660, column: 62, scope: !3314)
!3321 = !DILocation(line: 662, column: 21, scope: !3314)
!3322 = !DILocation(line: 662, column: 2, scope: !3314)
!3323 = !DILocation(line: 662, column: 7, scope: !3314)
!3324 = !DILocation(line: 662, column: 19, scope: !3314)
!3325 = !DILocation(line: 663, column: 1, scope: !3314)
