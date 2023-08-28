; ModuleID = '../bcout/drivers/pnp/system.llvm.bc'
source_filename = "drivers/pnp/system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall5.init\22, \22a\22\09"
module asm "__initcall_pnp_system_init5:\09\09\09"
module asm ".long\09pnp_system_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.pnp_protocol = type { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.38] }
%struct.anon.38 = type { [8 x i8] }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.proc_dir_entry = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.kmem_cache = type opaque

@__UNIQUE_ID___addressable_pnp_system_init157 = internal global i8* bitcast (i32 ()* @pnp_system_init to i8*), section ".discard.addressable", align 8, !dbg !0
@system_pnp_driver = internal global %struct.pnp_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.pnp_device_id* getelementptr inbounds ([3 x %struct.pnp_device_id], [3 x %struct.pnp_device_id]* @pnp_dev_table, i32 0, i32 0), i32 1, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @system_pnp_probe, void (%struct.pnp_dev*)* null, void (%struct.pnp_dev*)* null, i32 (%struct.pnp_dev*, i32)* null, i32 (%struct.pnp_dev*)* null, %struct.device_driver zeroinitializer }, align 8, !dbg !62
@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1
@pnp_dev_table = internal constant [3 x %struct.pnp_device_id] [%struct.pnp_device_id { [8 x i8] c"PNP0c02\00", i64 0 }, %struct.pnp_device_id { [8 x i8] c"PNP0c01\00", i64 0 }, %struct.pnp_device_id zeroinitializer], align 16, !dbg !2055
@.str.1 = private unnamed_addr constant [7 x i8] c"pnp %s\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%pR %s reserved\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"has been\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"could not be\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pnp_system_init157 to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnp_system_init() #0 section ".init.text" !dbg !2063 {
entry:
  %call = call i32 @pnp_register_driver(%struct.pnp_driver* @system_pnp_driver) #8, !dbg !2066
  ret i32 %call, !dbg !2067
}

; Function Attrs: noredzone
declare dso_local i32 @pnp_register_driver(%struct.pnp_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @system_pnp_probe(%struct.pnp_dev* %dev, %struct.pnp_device_id* %dev_id) #2 !dbg !2068 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %dev_id.addr = alloca %struct.pnp_device_id*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2069, metadata !DIExpression()), !dbg !2070
  store %struct.pnp_device_id* %dev_id, %struct.pnp_device_id** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_device_id** %dev_id.addr, metadata !2071, metadata !DIExpression()), !dbg !2072
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2073
  call void @reserve_resources_of_dev(%struct.pnp_dev* %0) #8, !dbg !2074
  ret i32 0, !dbg !2075
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reserve_resources_of_dev(%struct.pnp_dev* %dev) #2 !dbg !2076 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %res = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2077, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2079, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2095, metadata !DIExpression()), !dbg !2096
  store i32 0, i32* %i, align 4, !dbg !2097
  br label %for.cond, !dbg !2099

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2100
  %1 = load i32, i32* %i, align 4, !dbg !2102
  %call = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %0, i64 256, i32 %1) #8, !dbg !2103
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !2104
  %tobool = icmp ne %struct.resource* %call, null, !dbg !2105
  br i1 %tobool, label %for.body, label %for.end, !dbg !2105

for.body:                                         ; preds = %for.cond
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2106
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !2109
  %3 = load i64, i64* %flags, align 8, !dbg !2109
  %and = and i64 %3, 268435456, !dbg !2110
  %tobool1 = icmp ne i64 %and, 0, !dbg !2110
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2111

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2112

if.end:                                           ; preds = %for.body
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2113
  %start = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0, !dbg !2115
  %5 = load i64, i64* %start, align 8, !dbg !2115
  %cmp = icmp eq i64 %5, 0, !dbg !2116
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2117

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !2118

if.end3:                                          ; preds = %if.end
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2119
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0, !dbg !2121
  %7 = load i64, i64* %start4, align 8, !dbg !2121
  %cmp5 = icmp ult i64 %7, 256, !dbg !2122
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2123

if.then6:                                         ; preds = %if.end3
  br label %for.inc, !dbg !2124

if.end7:                                          ; preds = %if.end3
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2125
  %end = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1, !dbg !2127
  %9 = load i64, i64* %end, align 8, !dbg !2127
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2128
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0, !dbg !2129
  %11 = load i64, i64* %start8, align 8, !dbg !2129
  %cmp9 = icmp ult i64 %9, %11, !dbg !2130
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2131

if.then10:                                        ; preds = %if.end7
  br label %for.inc, !dbg !2132

if.end11:                                         ; preds = %if.end7
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2133
  %13 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2134
  call void @reserve_range(%struct.pnp_dev* %12, %struct.resource* %13, i32 1) #8, !dbg !2135
  br label %for.inc, !dbg !2136

for.inc:                                          ; preds = %if.end11, %if.then10, %if.then6, %if.then2, %if.then
  %14 = load i32, i32* %i, align 4, !dbg !2137
  %inc = add i32 %14, 1, !dbg !2137
  store i32 %inc, i32* %i, align 4, !dbg !2137
  br label %for.cond, !dbg !2138, !llvm.loop !2139

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2141
  br label %for.cond12, !dbg !2143

for.cond12:                                       ; preds = %for.inc21, %for.end
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2144
  %16 = load i32, i32* %i, align 4, !dbg !2146
  %call13 = call %struct.resource* @pnp_get_resource(%struct.pnp_dev* %15, i64 512, i32 %16) #8, !dbg !2147
  store %struct.resource* %call13, %struct.resource** %res, align 8, !dbg !2148
  %tobool14 = icmp ne %struct.resource* %call13, null, !dbg !2149
  br i1 %tobool14, label %for.body15, label %for.end23, !dbg !2149

for.body15:                                       ; preds = %for.cond12
  %17 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2150
  %flags16 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 3, !dbg !2153
  %18 = load i64, i64* %flags16, align 8, !dbg !2153
  %and17 = and i64 %18, 268435456, !dbg !2154
  %tobool18 = icmp ne i64 %and17, 0, !dbg !2154
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2155

if.then19:                                        ; preds = %for.body15
  br label %for.inc21, !dbg !2156

if.end20:                                         ; preds = %for.body15
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2157
  %20 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2158
  call void @reserve_range(%struct.pnp_dev* %19, %struct.resource* %20, i32 0) #8, !dbg !2159
  br label %for.inc21, !dbg !2160

for.inc21:                                        ; preds = %if.end20, %if.then19
  %21 = load i32, i32* %i, align 4, !dbg !2161
  %inc22 = add i32 %21, 1, !dbg !2161
  store i32 %inc22, i32* %i, align 4, !dbg !2161
  br label %for.cond12, !dbg !2162, !llvm.loop !2163

for.end23:                                        ; preds = %for.cond12
  ret void, !dbg !2165
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @pnp_get_resource(%struct.pnp_dev*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reserve_range(%struct.pnp_dev* %dev, %struct.resource* %r, i32 %port) #2 !dbg !2166 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2169, metadata !DIExpression()), !dbg !2173
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2181, metadata !DIExpression()), !dbg !2182
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2183, metadata !DIExpression()), !dbg !2184
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2185, metadata !DIExpression()), !dbg !2186
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2187, metadata !DIExpression()), !dbg !2191
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2193, metadata !DIExpression()), !dbg !2197
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2199, metadata !DIExpression()), !dbg !2203
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2208, metadata !DIExpression()), !dbg !2209
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2210, metadata !DIExpression()), !dbg !2211
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2212, metadata !DIExpression()), !dbg !2213
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2214, metadata !DIExpression()), !dbg !2215
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2216, metadata !DIExpression()), !dbg !2217
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2218, metadata !DIExpression()), !dbg !2219
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2220, metadata !DIExpression()), !dbg !2221
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2222, metadata !DIExpression()), !dbg !2223
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %r.addr = alloca %struct.resource*, align 8
  %port.addr = alloca i32, align 4
  %regionid = alloca i8*, align 8
  %pnpid = alloca i8*, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %res = alloca %struct.resource*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2224, metadata !DIExpression()), !dbg !2225
  store %struct.resource* %r, %struct.resource** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r.addr, metadata !2226, metadata !DIExpression()), !dbg !2227
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !2228, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.declare(metadata i8** %regionid, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.declare(metadata i8** %pnpid, metadata !2232, metadata !DIExpression()), !dbg !2233
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2234
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 0, !dbg !2235
  %call = call i8* @dev_name(%struct.device* %dev1) #8, !dbg !2236
  store i8* %call, i8** %pnpid, align 8, !dbg !2233
  call void @llvm.dbg.declare(metadata i64* %start, metadata !2237, metadata !DIExpression()), !dbg !2238
  %1 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !2239
  %start2 = getelementptr inbounds %struct.resource, %struct.resource* %1, i32 0, i32 0, !dbg !2240
  %2 = load i64, i64* %start2, align 8, !dbg !2240
  store i64 %2, i64* %start, align 8, !dbg !2238
  call void @llvm.dbg.declare(metadata i64* %end, metadata !2241, metadata !DIExpression()), !dbg !2242
  %3 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !2243
  %end3 = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 1, !dbg !2244
  %4 = load i64, i64* %end3, align 8, !dbg !2244
  store i64 %4, i64* %end, align 8, !dbg !2242
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !2245, metadata !DIExpression()), !dbg !2246
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2247
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #9, !dbg !2248
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !2249

if.then.i:                                        ; preds = %entry
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !2250
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !2251
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2252

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !2253
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !2254
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !2255
  %call.i.i = call i32 @get_order(i64 %10) #10, !dbg !2256
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2217
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !2257
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2258
  %13 = load i32, i32* %order.i.i, align 4, !dbg !2259
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2260
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2261
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2262
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #11, !dbg !2263
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2263
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2263
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2263
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2263
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2264
  br label %kmalloc.exit, !dbg !2264

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !2265
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2266
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !2266
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2268

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2269
  br label %kmalloc_index.exit.i, !dbg !2269

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2270
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !2272
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2273

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2274
  br label %kmalloc_index.exit.i, !dbg !2274

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2275
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !2277
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2278

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2279
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !2280
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2281

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2282
  br label %kmalloc_index.exit.i, !dbg !2282

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2283
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !2285
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2286

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2287
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !2288
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2289

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2290
  br label %kmalloc_index.exit.i, !dbg !2290

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2291
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !2293
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2294

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2295
  br label %kmalloc_index.exit.i, !dbg !2295

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2296
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !2298
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2299

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2300
  br label %kmalloc_index.exit.i, !dbg !2300

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2301
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !2303
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2304

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2305
  br label %kmalloc_index.exit.i, !dbg !2305

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2306
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !2308
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2309

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2310
  br label %kmalloc_index.exit.i, !dbg !2310

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2311
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !2313
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2314

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2315
  br label %kmalloc_index.exit.i, !dbg !2315

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2316
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !2318
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2319

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2320
  br label %kmalloc_index.exit.i, !dbg !2320

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2321
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !2323
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2324

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2325
  br label %kmalloc_index.exit.i, !dbg !2325

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2326
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !2328
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2329

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2330
  br label %kmalloc_index.exit.i, !dbg !2330

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2331
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !2333
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2334

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2335
  br label %kmalloc_index.exit.i, !dbg !2335

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2336
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !2338
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2339

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2340
  br label %kmalloc_index.exit.i, !dbg !2340

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2341
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !2343
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2344

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2345
  br label %kmalloc_index.exit.i, !dbg !2345

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2346
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !2348
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2349

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2350
  br label %kmalloc_index.exit.i, !dbg !2350

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2351
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !2353
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2354

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2355
  br label %kmalloc_index.exit.i, !dbg !2355

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2356
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !2358
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2359

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2360
  br label %kmalloc_index.exit.i, !dbg !2360

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2361
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !2363
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2364

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2365
  br label %kmalloc_index.exit.i, !dbg !2365

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2366
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !2368
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2369

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2370
  br label %kmalloc_index.exit.i, !dbg !2370

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2371
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !2373
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2374

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2375
  br label %kmalloc_index.exit.i, !dbg !2375

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2376
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !2378
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2379

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2380
  br label %kmalloc_index.exit.i, !dbg !2380

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2381
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !2383
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2384

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2385
  br label %kmalloc_index.exit.i, !dbg !2385

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2386
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !2388
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2389

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2390
  br label %kmalloc_index.exit.i, !dbg !2390

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2391
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !2393
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2394

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2395
  br label %kmalloc_index.exit.i, !dbg !2395

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2396
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !2398
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2399

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2400
  br label %kmalloc_index.exit.i, !dbg !2400

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2401
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !2403
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2404

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2405
  br label %kmalloc_index.exit.i, !dbg !2405

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2406
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !2408
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2409

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2410
  br label %kmalloc_index.exit.i, !dbg !2410

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2411, !srcloc !2414
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #9, !dbg !2415, !srcloc !2418
  unreachable, !dbg !2419

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !2420
  store i32 %48, i32* %index.i, align 4, !dbg !2421
  %49 = load i32, i32* %index.i, align 4, !dbg !2422
  %tobool.i = icmp ne i32 %49, 0, !dbg !2422
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2424

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2425
  br label %kmalloc.exit, !dbg !2425

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !2426
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2427
  %and.i.i = and i32 %51, 17, !dbg !2427
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2427
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2427
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2427
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2427
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2429

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2430
  br label %kmalloc_type.exit.i, !dbg !2430

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2431
  %and2.i.i = and i32 %52, 1, !dbg !2432
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2431
  %53 = zext i1 %tobool3.i.i to i64, !dbg !2431
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2431
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2433
  br label %kmalloc_type.exit.i, !dbg !2433

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !2434
  %idxprom.i = zext i32 %54 to i64, !dbg !2435
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2435
  %55 = load i32, i32* %index.i, align 4, !dbg !2436
  %idxprom6.i = zext i32 %55 to i64, !dbg !2435
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2435
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2435
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !2437
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !2438
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2439
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2440
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #11, !dbg !2441
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2441
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2441
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2441
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2441
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2186
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2442
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2443
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2444
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2445
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #11, !dbg !2446
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2447
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !2448
  store i8* %65, i8** %retval.i, align 8, !dbg !2449
  br label %kmalloc.exit, !dbg !2449

if.end9.i:                                        ; preds = %entry
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !2450
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !2451
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #11, !dbg !2452
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2452
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2452
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2452
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2452
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2453
  br label %kmalloc.exit, !dbg !2453

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !2454
  store i8* %68, i8** %regionid, align 8, !dbg !2455
  %69 = load i8*, i8** %regionid, align 8, !dbg !2456
  %tobool = icmp ne i8* %69, null, !dbg !2456
  br i1 %tobool, label %if.end, label %if.then, !dbg !2458

if.then:                                          ; preds = %kmalloc.exit
  br label %return, !dbg !2459

if.end:                                           ; preds = %kmalloc.exit
  %70 = load i8*, i8** %regionid, align 8, !dbg !2460
  %71 = load i8*, i8** %pnpid, align 8, !dbg !2461
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %70, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %71) #8, !dbg !2462
  %72 = load i32, i32* %port.addr, align 4, !dbg !2463
  %tobool6 = icmp ne i32 %72, 0, !dbg !2463
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !2465

if.then7:                                         ; preds = %if.end
  %73 = load i64, i64* %start, align 8, !dbg !2466
  %74 = load i64, i64* %end, align 8, !dbg !2466
  %75 = load i64, i64* %start, align 8, !dbg !2466
  %sub = sub i64 %74, %75, !dbg !2466
  %add = add i64 %sub, 1, !dbg !2466
  %76 = load i8*, i8** %regionid, align 8, !dbg !2466
  %call8 = call %struct.resource* @__request_region(%struct.resource* @ioport_resource, i64 %73, i64 %add, i8* %76, i32 0) #8, !dbg !2466
  store %struct.resource* %call8, %struct.resource** %res, align 8, !dbg !2467
  br label %if.end12, !dbg !2468

if.else:                                          ; preds = %if.end
  %77 = load i64, i64* %start, align 8, !dbg !2469
  %78 = load i64, i64* %end, align 8, !dbg !2469
  %79 = load i64, i64* %start, align 8, !dbg !2469
  %sub9 = sub i64 %78, %79, !dbg !2469
  %add10 = add i64 %sub9, 1, !dbg !2469
  %80 = load i8*, i8** %regionid, align 8, !dbg !2469
  %call11 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %77, i64 %add10, i8* %80, i32 0) #8, !dbg !2469
  store %struct.resource* %call11, %struct.resource** %res, align 8, !dbg !2470
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  %81 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2471
  %tobool13 = icmp ne %struct.resource* %81, null, !dbg !2471
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !2473

if.then14:                                        ; preds = %if.end12
  %82 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2474
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 3, !dbg !2475
  %83 = load i64, i64* %flags, align 8, !dbg !2476
  %and = and i64 %83, 2147483647, !dbg !2476
  store i64 %and, i64* %flags, align 8, !dbg !2476
  br label %if.end16, !dbg !2474

if.else15:                                        ; preds = %if.end12
  %84 = load i8*, i8** %regionid, align 8, !dbg !2477
  call void @kfree(i8* %84) #8, !dbg !2478
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then14
  %85 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2479
  %dev17 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %85, i32 0, i32 0, !dbg !2479
  %86 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !2479
  %87 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !2479
  %tobool18 = icmp ne %struct.resource* %87, null, !dbg !2479
  %88 = zext i1 %tobool18 to i64, !dbg !2479
  %cond = select i1 %tobool18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), !dbg !2479
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %86, i8* %cond) #12, !dbg !2479
  br label %return, !dbg !2480

return:                                           ; preds = %if.end16, %if.then
  ret void, !dbg !2480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !2481 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2486, metadata !DIExpression()), !dbg !2487
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2488
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2490
  %1 = load i8*, i8** %init_name, align 8, !dbg !2490
  %tobool = icmp ne i8* %1, null, !dbg !2488
  br i1 %tobool, label %if.then, label %if.end, !dbg !2491

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2492
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2493
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2493
  store i8* %3, i8** %retval, align 8, !dbg !2494
  br label %return, !dbg !2494

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2495
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2496
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !2497
  store i8* %call, i8** %retval, align 8, !dbg !2498
  br label %return, !dbg !2498

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2499
  ret i8* %5, !dbg !2499
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !2500 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2507
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !2508
  %1 = load i8*, i8** %name, align 8, !dbg !2508
  ret i8* %1, !dbg !2509
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !2510 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2514, metadata !DIExpression()), !dbg !2519
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2521, metadata !DIExpression()), !dbg !2522
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  %0 = load i64, i64* %size.addr, align 8, !dbg !2525
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2527
  br i1 %1, label %if.then, label %if.end447, !dbg !2528

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2529
  %tobool = icmp ne i64 %2, 0, !dbg !2529
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2532

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2533
  br label %return, !dbg !2533

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2534
  %cmp = icmp ult i64 %3, 4096, !dbg !2536
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2537

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2538
  br label %return, !dbg !2538

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub = sub i64 %4, 1, !dbg !2539
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2539
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2539

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub4 = sub i64 %6, 1, !dbg !2539
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2539
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2539

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub6 = sub i64 %8, 1, !dbg !2539
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2539
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2539

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2539

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub9 = sub i64 %9, 1, !dbg !2539
  %and = and i64 %sub9, -9223372036854775808, !dbg !2539
  %tobool10 = icmp ne i64 %and, 0, !dbg !2539
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2539

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2539

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub13 = sub i64 %10, 1, !dbg !2539
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2539
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2539
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2539

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2539

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub18 = sub i64 %11, 1, !dbg !2539
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2539
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2539
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2539

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2539

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub23 = sub i64 %12, 1, !dbg !2539
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2539
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2539
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2539

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2539

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub28 = sub i64 %13, 1, !dbg !2539
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2539
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2539
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2539

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2539

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub33 = sub i64 %14, 1, !dbg !2539
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2539
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2539
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2539

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2539

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub38 = sub i64 %15, 1, !dbg !2539
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2539
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2539
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2539

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2539

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub43 = sub i64 %16, 1, !dbg !2539
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2539
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2539
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2539

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2539

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub48 = sub i64 %17, 1, !dbg !2539
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2539
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2539
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2539

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2539

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub53 = sub i64 %18, 1, !dbg !2539
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2539
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2539
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2539

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2539

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub58 = sub i64 %19, 1, !dbg !2539
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2539
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2539
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2539

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2539

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub63 = sub i64 %20, 1, !dbg !2539
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2539
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2539
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2539

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2539

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub68 = sub i64 %21, 1, !dbg !2539
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2539
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2539
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2539

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2539

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub73 = sub i64 %22, 1, !dbg !2539
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2539
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2539
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2539

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2539

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub78 = sub i64 %23, 1, !dbg !2539
  %and79 = and i64 %sub78, 562949953421312, !dbg !2539
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2539
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2539

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2539

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub83 = sub i64 %24, 1, !dbg !2539
  %and84 = and i64 %sub83, 281474976710656, !dbg !2539
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2539
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2539

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2539

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub88 = sub i64 %25, 1, !dbg !2539
  %and89 = and i64 %sub88, 140737488355328, !dbg !2539
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2539
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2539

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2539

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub93 = sub i64 %26, 1, !dbg !2539
  %and94 = and i64 %sub93, 70368744177664, !dbg !2539
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2539
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2539

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2539

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub98 = sub i64 %27, 1, !dbg !2539
  %and99 = and i64 %sub98, 35184372088832, !dbg !2539
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2539
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2539

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2539

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub103 = sub i64 %28, 1, !dbg !2539
  %and104 = and i64 %sub103, 17592186044416, !dbg !2539
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2539
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2539

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2539

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub108 = sub i64 %29, 1, !dbg !2539
  %and109 = and i64 %sub108, 8796093022208, !dbg !2539
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2539
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2539

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2539

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub113 = sub i64 %30, 1, !dbg !2539
  %and114 = and i64 %sub113, 4398046511104, !dbg !2539
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2539
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2539

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2539

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub118 = sub i64 %31, 1, !dbg !2539
  %and119 = and i64 %sub118, 2199023255552, !dbg !2539
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2539
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2539

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2539

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub123 = sub i64 %32, 1, !dbg !2539
  %and124 = and i64 %sub123, 1099511627776, !dbg !2539
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2539
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2539

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2539

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub128 = sub i64 %33, 1, !dbg !2539
  %and129 = and i64 %sub128, 549755813888, !dbg !2539
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2539
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2539

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2539

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub133 = sub i64 %34, 1, !dbg !2539
  %and134 = and i64 %sub133, 274877906944, !dbg !2539
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2539
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2539

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2539

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub138 = sub i64 %35, 1, !dbg !2539
  %and139 = and i64 %sub138, 137438953472, !dbg !2539
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2539
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2539

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2539

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub143 = sub i64 %36, 1, !dbg !2539
  %and144 = and i64 %sub143, 68719476736, !dbg !2539
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2539
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2539

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2539

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub148 = sub i64 %37, 1, !dbg !2539
  %and149 = and i64 %sub148, 34359738368, !dbg !2539
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2539
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2539

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2539

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub153 = sub i64 %38, 1, !dbg !2539
  %and154 = and i64 %sub153, 17179869184, !dbg !2539
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2539
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2539

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2539

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub158 = sub i64 %39, 1, !dbg !2539
  %and159 = and i64 %sub158, 8589934592, !dbg !2539
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2539
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2539

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2539

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub163 = sub i64 %40, 1, !dbg !2539
  %and164 = and i64 %sub163, 4294967296, !dbg !2539
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2539
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2539

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2539

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub168 = sub i64 %41, 1, !dbg !2539
  %and169 = and i64 %sub168, 2147483648, !dbg !2539
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2539
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2539

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2539

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub173 = sub i64 %42, 1, !dbg !2539
  %and174 = and i64 %sub173, 1073741824, !dbg !2539
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2539
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2539

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2539

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub178 = sub i64 %43, 1, !dbg !2539
  %and179 = and i64 %sub178, 536870912, !dbg !2539
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2539
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2539

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2539

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub183 = sub i64 %44, 1, !dbg !2539
  %and184 = and i64 %sub183, 268435456, !dbg !2539
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2539
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2539

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2539

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub188 = sub i64 %45, 1, !dbg !2539
  %and189 = and i64 %sub188, 134217728, !dbg !2539
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2539
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2539

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2539

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub193 = sub i64 %46, 1, !dbg !2539
  %and194 = and i64 %sub193, 67108864, !dbg !2539
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2539
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2539

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2539

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub198 = sub i64 %47, 1, !dbg !2539
  %and199 = and i64 %sub198, 33554432, !dbg !2539
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2539
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2539

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2539

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub203 = sub i64 %48, 1, !dbg !2539
  %and204 = and i64 %sub203, 16777216, !dbg !2539
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2539
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2539

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2539

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub208 = sub i64 %49, 1, !dbg !2539
  %and209 = and i64 %sub208, 8388608, !dbg !2539
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2539
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2539

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2539

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub213 = sub i64 %50, 1, !dbg !2539
  %and214 = and i64 %sub213, 4194304, !dbg !2539
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2539
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2539

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2539

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub218 = sub i64 %51, 1, !dbg !2539
  %and219 = and i64 %sub218, 2097152, !dbg !2539
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2539
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2539

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2539

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub223 = sub i64 %52, 1, !dbg !2539
  %and224 = and i64 %sub223, 1048576, !dbg !2539
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2539
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2539

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2539

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub228 = sub i64 %53, 1, !dbg !2539
  %and229 = and i64 %sub228, 524288, !dbg !2539
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2539
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2539

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2539

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub233 = sub i64 %54, 1, !dbg !2539
  %and234 = and i64 %sub233, 262144, !dbg !2539
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2539
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2539

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2539

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub238 = sub i64 %55, 1, !dbg !2539
  %and239 = and i64 %sub238, 131072, !dbg !2539
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2539
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2539

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2539

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub243 = sub i64 %56, 1, !dbg !2539
  %and244 = and i64 %sub243, 65536, !dbg !2539
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2539
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2539

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2539

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub248 = sub i64 %57, 1, !dbg !2539
  %and249 = and i64 %sub248, 32768, !dbg !2539
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2539
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2539

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2539

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub253 = sub i64 %58, 1, !dbg !2539
  %and254 = and i64 %sub253, 16384, !dbg !2539
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2539
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2539

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2539

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub258 = sub i64 %59, 1, !dbg !2539
  %and259 = and i64 %sub258, 8192, !dbg !2539
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2539
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2539

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2539

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub263 = sub i64 %60, 1, !dbg !2539
  %and264 = and i64 %sub263, 4096, !dbg !2539
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2539
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2539

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2539

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub268 = sub i64 %61, 1, !dbg !2539
  %and269 = and i64 %sub268, 2048, !dbg !2539
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2539
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2539

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2539

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub273 = sub i64 %62, 1, !dbg !2539
  %and274 = and i64 %sub273, 1024, !dbg !2539
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2539
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2539

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2539

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub278 = sub i64 %63, 1, !dbg !2539
  %and279 = and i64 %sub278, 512, !dbg !2539
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2539
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2539

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2539

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub283 = sub i64 %64, 1, !dbg !2539
  %and284 = and i64 %sub283, 256, !dbg !2539
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2539
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2539

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2539

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub288 = sub i64 %65, 1, !dbg !2539
  %and289 = and i64 %sub288, 128, !dbg !2539
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2539
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2539

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2539

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub293 = sub i64 %66, 1, !dbg !2539
  %and294 = and i64 %sub293, 64, !dbg !2539
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2539
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2539

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2539

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub298 = sub i64 %67, 1, !dbg !2539
  %and299 = and i64 %sub298, 32, !dbg !2539
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2539
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2539

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2539

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub303 = sub i64 %68, 1, !dbg !2539
  %and304 = and i64 %sub303, 16, !dbg !2539
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2539
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2539

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2539

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub308 = sub i64 %69, 1, !dbg !2539
  %and309 = and i64 %sub308, 8, !dbg !2539
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2539
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2539

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2539

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub313 = sub i64 %70, 1, !dbg !2539
  %and314 = and i64 %sub313, 4, !dbg !2539
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2539
  %71 = zext i1 %tobool315 to i64, !dbg !2539
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2539
  br label %cond.end, !dbg !2539

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2539
  br label %cond.end317, !dbg !2539

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2539
  br label %cond.end319, !dbg !2539

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2539
  br label %cond.end321, !dbg !2539

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2539
  br label %cond.end323, !dbg !2539

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2539
  br label %cond.end325, !dbg !2539

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2539
  br label %cond.end327, !dbg !2539

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2539
  br label %cond.end329, !dbg !2539

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2539
  br label %cond.end331, !dbg !2539

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2539
  br label %cond.end333, !dbg !2539

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2539
  br label %cond.end335, !dbg !2539

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2539
  br label %cond.end337, !dbg !2539

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2539
  br label %cond.end339, !dbg !2539

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2539
  br label %cond.end341, !dbg !2539

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2539
  br label %cond.end343, !dbg !2539

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2539
  br label %cond.end345, !dbg !2539

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2539
  br label %cond.end347, !dbg !2539

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2539
  br label %cond.end349, !dbg !2539

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2539
  br label %cond.end351, !dbg !2539

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2539
  br label %cond.end353, !dbg !2539

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2539
  br label %cond.end355, !dbg !2539

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2539
  br label %cond.end357, !dbg !2539

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2539
  br label %cond.end359, !dbg !2539

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2539
  br label %cond.end361, !dbg !2539

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2539
  br label %cond.end363, !dbg !2539

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2539
  br label %cond.end365, !dbg !2539

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2539
  br label %cond.end367, !dbg !2539

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2539
  br label %cond.end369, !dbg !2539

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2539
  br label %cond.end371, !dbg !2539

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2539
  br label %cond.end373, !dbg !2539

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2539
  br label %cond.end375, !dbg !2539

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2539
  br label %cond.end377, !dbg !2539

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2539
  br label %cond.end379, !dbg !2539

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2539
  br label %cond.end381, !dbg !2539

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2539
  br label %cond.end383, !dbg !2539

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2539
  br label %cond.end385, !dbg !2539

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2539
  br label %cond.end387, !dbg !2539

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2539
  br label %cond.end389, !dbg !2539

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2539
  br label %cond.end391, !dbg !2539

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2539
  br label %cond.end393, !dbg !2539

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2539
  br label %cond.end395, !dbg !2539

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2539
  br label %cond.end397, !dbg !2539

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2539
  br label %cond.end399, !dbg !2539

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2539
  br label %cond.end401, !dbg !2539

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2539
  br label %cond.end403, !dbg !2539

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2539
  br label %cond.end405, !dbg !2539

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2539
  br label %cond.end407, !dbg !2539

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2539
  br label %cond.end409, !dbg !2539

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2539
  br label %cond.end411, !dbg !2539

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2539
  br label %cond.end413, !dbg !2539

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2539
  br label %cond.end415, !dbg !2539

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2539
  br label %cond.end417, !dbg !2539

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2539
  br label %cond.end419, !dbg !2539

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2539
  br label %cond.end421, !dbg !2539

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2539
  br label %cond.end423, !dbg !2539

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2539
  br label %cond.end425, !dbg !2539

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2539
  br label %cond.end427, !dbg !2539

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2539
  br label %cond.end429, !dbg !2539

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2539
  br label %cond.end431, !dbg !2539

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2539
  br label %cond.end433, !dbg !2539

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2539
  br label %cond.end435, !dbg !2539

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2539
  br label %cond.end437, !dbg !2539

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2539
  br label %cond.end440, !dbg !2539

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2539

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2539
  br label %cond.end444, !dbg !2539

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2539
  %sub443 = sub i64 %72, 1, !dbg !2539
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2539
  br label %cond.end444, !dbg !2539

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2539
  %sub446 = sub i32 %cond445, 12, !dbg !2540
  %add = add i32 %sub446, 1, !dbg !2541
  store i32 %add, i32* %retval, align 4, !dbg !2542
  br label %return, !dbg !2542

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2543
  %dec = add i64 %73, -1, !dbg !2543
  store i64 %dec, i64* %size.addr, align 8, !dbg !2543
  %74 = load i64, i64* %size.addr, align 8, !dbg !2544
  %shr = lshr i64 %74, 12, !dbg !2544
  store i64 %shr, i64* %size.addr, align 8, !dbg !2544
  %75 = load i64, i64* %size.addr, align 8, !dbg !2545
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2522
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2546
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2547
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !2546, !srcloc !2548
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2546
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2549
  %add.i = add i32 %79, 1, !dbg !2550
  store i32 %add.i, i32* %retval, align 4, !dbg !2551
  br label %return, !dbg !2551

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2552
  ret i32 %80, !dbg !2552
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !2553 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2514, metadata !DIExpression()), !dbg !2557
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2521, metadata !DIExpression()), !dbg !2559
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2560, metadata !DIExpression()), !dbg !2561
  %0 = load i64, i64* %n.addr, align 8, !dbg !2562
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2559
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2563
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2564
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !2563, !srcloc !2548
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2563
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2565
  %add.i = add i32 %4, 1, !dbg !2566
  %sub = sub i32 %add.i, 1, !dbg !2567
  ret i32 %sub, !dbg !2568
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !2569 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2573, metadata !DIExpression()), !dbg !2574
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2575, metadata !DIExpression()), !dbg !2576
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2577, metadata !DIExpression()), !dbg !2578
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2581
  ret i8* %0, !dbg !2582
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2058, !2059, !2060, !2061}
!llvm.ident = !{!2062}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_system_init157", scope: !2, file: !3, line: 113, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !61, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/system.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !51, line: 305, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 148, baseType: !7)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !{!0, !62, !2055}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "system_pnp_driver", scope: !2, file: !3, line: 97, type: !64, isLocal: true, isDefinition: true)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !65, line: 374, size: 1664, elements: !66)
!65 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !71, !87, !88, !2047, !2051, !2052, !2053, !2054}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 375, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !64, file: !65, line: 376, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !75, line: 220, size: 128, elements: !76)
!75 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!76 = !{!77, !84}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !74, file: !75, line: 221, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !82)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !{!83}
!83 = !DISubrange(count: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !74, file: !75, line: 222, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !75, line: 14, baseType: !86)
!86 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !65, line: 377, baseType: !7, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !64, file: !65, line: 378, baseType: !89, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !93, !72}
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !65, line: 243, size: 7488, elements: !95)
!95 = !{!96, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1965, !1992, !1994, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !94, file: !65, line: 244, baseType: !97, size: 5568)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !98)
!98 = !{!99, !1567, !1569, !1572, !1573, !1624, !1719, !1720, !1721, !1722, !1723, !1732, !1837, !1850, !1853, !1854, !1858, !1860, !1861, !1862, !1866, !1872, !1873, !1876, !1880, !1883, !1886, !1887, !1888, !1889, !1921, !1922, !1923, !1926, !1929, !1930, !1931, !1932}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !97, file: !30, line: 462, baseType: !100, size: 512)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !101, line: 64, size: 512, elements: !102)
!101 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104, !110, !112, !172, !1404, !1557, !1562, !1563, !1564, !1565, !1566}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !101, line: 65, baseType: !68, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !100, file: !101, line: 66, baseType: !105, size: 128, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 178, size: 128, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !59, line: 179, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !59, line: 179, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !100, file: !101, line: 67, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !100, file: !101, line: 68, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !101, line: 192, size: 704, elements: !115)
!115 = !{!116, !117, !133, !134}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !114, file: !101, line: 193, baseType: !105, size: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !114, file: !101, line: 194, baseType: !118, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !119, line: 83, baseType: !120)
!119 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !119, line: 71, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !119, line: 72, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !119, line: 72, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !123, file: !119, line: 73, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !119, line: 20, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !126, file: !119, line: 21, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !130, line: 25, baseType: !131)
!130 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 25, elements: !132)
!132 = !{}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !114, file: !101, line: 195, baseType: !100, size: 512, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !114, file: !101, line: 196, baseType: !135, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !101, line: 156, size: 192, elements: !138)
!138 = !{!139, !144, !149}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !137, file: !101, line: 157, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!92, !113, !111}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !101, line: 158, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!68, !113, !111}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !137, file: !101, line: 159, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!92, !113, !111, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !101, line: 148, size: 20736, elements: !156)
!156 = !{!157, !162, !166, !167, !171}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !155, file: !101, line: 149, baseType: !158, size: 192)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 192, elements: !160)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !155, file: !101, line: 150, baseType: !163, size: 4096, offset: 192)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 4096, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !155, file: !101, line: 151, baseType: !92, size: 32, offset: 4288)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !155, file: !101, line: 152, baseType: !168, size: 16384, offset: 4320)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 16384, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 2048)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !155, file: !101, line: 153, baseType: !92, size: 32, offset: 20704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !100, file: !101, line: 69, baseType: !173, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !101, line: 138, size: 448, elements: !175)
!175 = !{!176, !180, !209, !211, !1350, !1383, !1387}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !174, file: !101, line: 139, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !111}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !174, file: !101, line: 140, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !184, line: 230, size: 128, elements: !185)
!184 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !202}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !183, file: !184, line: 231, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !111, !195, !159}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !59, line: 60, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !192, line: 73, baseType: !193)
!192 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !192, line: 15, baseType: !194)
!194 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !184, line: 30, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !184, line: 31, baseType: !68, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !196, file: !184, line: 32, baseType: !200, size: 16, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !59, line: 19, baseType: !201)
!201 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !183, file: !184, line: 232, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!190, !111, !195, !68, !206}
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 55, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !192, line: 72, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !192, line: 16, baseType: !86)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !174, file: !101, line: 141, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !174, file: !101, line: 142, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !184, line: 84, size: 320, elements: !216)
!216 = !{!217, !218, !222, !1347, !1348}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !184, line: 85, baseType: !68, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !215, file: !184, line: 86, baseType: !219, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!200, !111, !195, !92}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !215, file: !184, line: 88, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!200, !111, !226, !92}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !184, line: 168, size: 448, elements: !228)
!228 = !{!229, !230, !231, !232, !242, !243}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !227, file: !184, line: 169, baseType: !196, size: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !227, file: !184, line: 170, baseType: !206, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !227, file: !184, line: 171, baseType: !60, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !227, file: !184, line: 172, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!190, !236, !111, !226, !159, !239, !206}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !238, line: 526, flags: DIFlagFwdDecl)
!238 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !59, line: 46, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !192, line: 88, baseType: !241)
!241 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !227, file: !184, line: 174, baseType: !233, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !227, file: !184, line: 176, baseType: !244, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!92, !236, !111, !226, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !249, line: 305, size: 1472, elements: !250)
!249 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!250 = !{!251, !252, !253, !254, !255, !263, !264, !1321, !1327, !1328, !1333, !1334, !1337, !1341, !1342, !1343, !1344, !1345}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !248, file: !249, line: 308, baseType: !86, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !248, file: !249, line: 309, baseType: !86, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !248, file: !249, line: 313, baseType: !247, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !248, file: !249, line: 313, baseType: !247, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !248, file: !249, line: 315, baseType: !256, size: 192, align: 64, offset: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !257, line: 24, size: 192, align: 64, elements: !258)
!257 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!258 = !{!259, !260, !262}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !256, file: !257, line: 25, baseType: !86, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !256, file: !257, line: 26, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !256, file: !257, line: 27, baseType: !261, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !248, file: !249, line: 323, baseType: !86, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !248, file: !249, line: 327, baseType: !265, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !249, line: 388, size: 7296, elements: !267)
!267 = !{!268, !1317}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !249, line: 389, baseType: !269, size: 7296)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !266, file: !249, line: 389, size: 7296, elements: !270)
!270 = !{!271, !272, !276, !281, !285, !286, !287, !288, !289, !297, !302, !303, !304, !305, !314, !315, !316, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !351, !359, !362, !394, !395, !1287, !1288, !1291, !1295, !1296, !1299, !1300, !1301, !1304, !1316}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !269, file: !249, line: 390, baseType: !247, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !269, file: !249, line: 391, baseType: !273, size: 64, offset: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !257, line: 31, size: 64, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !273, file: !257, line: 32, baseType: !261, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !269, file: !249, line: 392, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !278, line: 23, baseType: !279)
!278 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !280)
!280 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !269, file: !249, line: 394, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!86, !236, !86, !86, !86, !86}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !269, file: !249, line: 398, baseType: !86, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !269, file: !249, line: 399, baseType: !86, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !269, file: !249, line: 405, baseType: !86, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !269, file: !249, line: 406, baseType: !86, size: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !269, file: !249, line: 407, baseType: !290, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !238, line: 286, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 286, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !292, file: !238, line: 286, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !296, line: 18, baseType: !86)
!296 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !269, file: !249, line: 416, baseType: !298, size: 32, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 168, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 166, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !299, file: !59, line: 167, baseType: !92, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !269, file: !249, line: 428, baseType: !298, size: 32, offset: 608)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !269, file: !249, line: 437, baseType: !298, size: 32, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !269, file: !249, line: 447, baseType: !298, size: 32, offset: 672)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !269, file: !249, line: 450, baseType: !306, size: 64, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !307, line: 13, baseType: !308)
!307 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 175, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 173, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !309, file: !59, line: 174, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !278, line: 22, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !241)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !269, file: !249, line: 452, baseType: !92, size: 32, offset: 768)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !269, file: !249, line: 454, baseType: !118, offset: 800)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !269, file: !249, line: 457, baseType: !317, size: 256, offset: 832)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !318, line: 35, size: 256, elements: !319)
!318 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !321, !322, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !317, file: !318, line: 36, baseType: !306, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !317, file: !318, line: 42, baseType: !306, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !317, file: !318, line: 46, baseType: !323, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !119, line: 29, baseType: !126)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !317, file: !318, line: 47, baseType: !105, size: 128, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !269, file: !249, line: 459, baseType: !105, size: 128, offset: 1088)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !269, file: !249, line: 466, baseType: !86, size: 64, offset: 1216)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !269, file: !249, line: 467, baseType: !86, size: 64, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !269, file: !249, line: 469, baseType: !86, size: 64, offset: 1344)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !269, file: !249, line: 470, baseType: !86, size: 64, offset: 1408)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !269, file: !249, line: 471, baseType: !308, size: 64, offset: 1472)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !269, file: !249, line: 472, baseType: !86, size: 64, offset: 1536)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !269, file: !249, line: 473, baseType: !86, size: 64, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !269, file: !249, line: 474, baseType: !86, size: 64, offset: 1664)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !269, file: !249, line: 475, baseType: !86, size: 64, offset: 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !269, file: !249, line: 477, baseType: !118, offset: 1792)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !269, file: !249, line: 478, baseType: !86, size: 64, offset: 1792)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !269, file: !249, line: 478, baseType: !86, size: 64, offset: 1856)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !269, file: !249, line: 478, baseType: !86, size: 64, offset: 1920)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !269, file: !249, line: 478, baseType: !86, size: 64, offset: 1984)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !269, file: !249, line: 479, baseType: !86, size: 64, offset: 2048)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !269, file: !249, line: 479, baseType: !86, size: 64, offset: 2112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !269, file: !249, line: 479, baseType: !86, size: 64, offset: 2176)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !269, file: !249, line: 480, baseType: !86, size: 64, offset: 2240)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !269, file: !249, line: 480, baseType: !86, size: 64, offset: 2304)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !269, file: !249, line: 480, baseType: !86, size: 64, offset: 2368)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !269, file: !249, line: 480, baseType: !86, size: 64, offset: 2432)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !269, file: !249, line: 482, baseType: !348, size: 2816, offset: 2496)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 2816, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 44)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !269, file: !249, line: 488, baseType: !352, size: 256, offset: 5312)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !353, line: 60, size: 256, elements: !354)
!353 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !352, file: !353, line: 61, baseType: !356, size: 256)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 4)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !269, file: !249, line: 490, baseType: !360, size: 64, offset: 5568)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !249, line: 490, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !269, file: !249, line: 493, baseType: !363, size: 896, offset: 5632)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !364, line: 53, baseType: !365)
!364 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 13, size: 896, elements: !366)
!366 = !{!367, !368, !369, !370, !373, !374, !381, !382, !386, !387, !390}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !365, file: !364, line: 18, baseType: !277, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !365, file: !364, line: 28, baseType: !308, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !365, file: !364, line: 31, baseType: !317, size: 256, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !365, file: !364, line: 32, baseType: !371, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !364, line: 32, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !365, file: !364, line: 37, baseType: !201, size: 16, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !365, file: !364, line: 40, baseType: !375, size: 192, offset: 512)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !376, line: 53, size: 192, elements: !377)
!376 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !375, file: !376, line: 54, baseType: !306, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !375, file: !376, line: 55, baseType: !118, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !375, file: !376, line: 59, baseType: !105, size: 128, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !365, file: !364, line: 41, baseType: !60, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !365, file: !364, line: 42, baseType: !383, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !364, line: 42, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !365, file: !364, line: 44, baseType: !298, size: 32, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !365, file: !364, line: 50, baseType: !388, size: 16, offset: 864)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !278, line: 19, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !201)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !365, file: !364, line: 51, baseType: !391, size: 16, offset: 880)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !278, line: 18, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !80, line: 23, baseType: !393)
!393 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !249, line: 495, baseType: !86, size: 64, offset: 6528)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !269, file: !249, line: 497, baseType: !396, size: 64, offset: 6592)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !249, line: 381, size: 384, elements: !398)
!398 = !{!399, !400, !1286}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !397, file: !249, line: 382, baseType: !298, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !397, file: !249, line: 383, baseType: !401, size: 128, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !249, line: 376, size: 128, elements: !402)
!402 = !{!403, !1284}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !401, file: !249, line: 377, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !406, line: 640, size: 48640, elements: !407)
!406 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !416, !418, !419, !425, !426, !427, !428, !429, !430, !431, !432, !436, !454, !465, !556, !557, !558, !569, !570, !572, !573, !574, !575, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !654, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !710, !712, !713, !714, !726, !728, !729, !730, !731, !732, !738, !739, !740, !741, !742, !743, !744, !756, !761, !765, !766, !767, !770, !774, !777, !780, !783, !786, !789, !792, !795, !801, !802, !803, !809, !810, !811, !812, !813, !822, !823, !824, !825, !826, !831, !832, !833, !836, !837, !840, !843, !846, !849, !852, !855, !856, !936, !939, !942, !943, !946, !947, !948, !954, !955, !956, !969, !970, !971, !983, !988, !991, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !405, file: !406, line: 646, baseType: !409, size: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !410, line: 56, size: 128, elements: !411)
!410 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !410, line: 57, baseType: !86, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !409, file: !410, line: 58, baseType: !414, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !278, line: 21, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !405, file: !406, line: 649, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !405, file: !406, line: 657, baseType: !60, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !405, file: !406, line: 658, baseType: !420, size: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !421, line: 113, baseType: !422)
!421 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !421, line: 111, size: 32, elements: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !422, file: !421, line: 112, baseType: !298, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !405, file: !406, line: 660, baseType: !7, size: 32, offset: 288)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !405, file: !406, line: 661, baseType: !7, size: 32, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !405, file: !406, line: 684, baseType: !92, size: 32, offset: 352)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !405, file: !406, line: 686, baseType: !92, size: 32, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !405, file: !406, line: 687, baseType: !92, size: 32, offset: 416)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !405, file: !406, line: 688, baseType: !92, size: 32, offset: 448)
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
!442 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !440, file: !406, line: 326, baseType: !86, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !440, file: !406, line: 327, baseType: !414, size: 32, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !437, file: !406, line: 454, baseType: !256, size: 192, align: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !437, file: !406, line: 455, baseType: !105, size: 128, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !437, file: !406, line: 456, baseType: !7, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !437, file: !406, line: 458, baseType: !277, size: 64, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !437, file: !406, line: 459, baseType: !277, size: 64, offset: 576)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !437, file: !406, line: 460, baseType: !277, size: 64, offset: 640)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !437, file: !406, line: 461, baseType: !277, size: 64, offset: 704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !437, file: !406, line: 463, baseType: !277, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !437, file: !406, line: 465, baseType: !453, offset: 832)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !406, line: 415, elements: !132)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !405, file: !406, line: 693, baseType: !455, size: 384, offset: 1408)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !406, line: 489, size: 384, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !455, file: !406, line: 490, baseType: !105, size: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !455, file: !406, line: 491, baseType: !86, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !455, file: !406, line: 492, baseType: !86, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !455, file: !406, line: 493, baseType: !7, size: 32, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !455, file: !406, line: 494, baseType: !201, size: 16, offset: 288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !455, file: !406, line: 495, baseType: !201, size: 16, offset: 304)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !455, file: !406, line: 497, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !405, file: !406, line: 697, baseType: !466, size: 1792, offset: 1792)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !406, line: 507, size: 1792, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !553, !554}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !466, file: !406, line: 508, baseType: !256, size: 192, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !466, file: !406, line: 515, baseType: !277, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !466, file: !406, line: 516, baseType: !277, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !466, file: !406, line: 517, baseType: !277, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !466, file: !406, line: 518, baseType: !277, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !466, file: !406, line: 519, baseType: !277, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !466, file: !406, line: 526, baseType: !312, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !466, file: !406, line: 527, baseType: !277, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !406, line: 528, baseType: !7, size: 32, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !466, file: !406, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !466, file: !406, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !466, file: !406, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !466, file: !406, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !466, file: !406, line: 563, baseType: !482, size: 512, offset: 704)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !483)
!483 = !{!484, !492, !493, !498, !548, !550, !551, !552}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !6, line: 119, baseType: !485, size: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !486, line: 9, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !486, line: 10, baseType: !256, size: 192, align: 64)
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
!501 = !{!502, !520, !521, !524, !534, !535, !543, !547}
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
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 4096, elements: !82)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !500, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !500, file: !6, line: 162, baseType: !522, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !59, line: 27, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !192, line: 96, baseType: !92)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !500, file: !6, line: 163, baseType: !525, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !526, line: 276, baseType: !527)
!526 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !526, line: 276, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !527, file: !526, line: 276, baseType: !530, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !526, line: 70, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !526, line: 65, size: 32, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !531, file: !526, line: 66, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !500, file: !6, line: 164, baseType: !497, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !500, file: !6, line: 165, baseType: !536, size: 128, offset: 256)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !486, line: 14, size: 128, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !536, file: !486, line: 15, baseType: !539, size: 128)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !257, line: 125, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !539, file: !257, line: 126, baseType: !273, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !539, file: !257, line: 127, baseType: !261, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !500, file: !6, line: 166, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!490}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !500, file: !6, line: 167, baseType: !490, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !482, file: !6, line: 123, baseType: !549, size: 8, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !278, line: 17, baseType: !79)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !482, file: !6, line: 124, baseType: !549, size: 8, offset: 456)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !482, file: !6, line: 125, baseType: !549, size: 8, offset: 464)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !482, file: !6, line: 126, baseType: !549, size: 8, offset: 472)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !466, file: !406, line: 572, baseType: !482, size: 512, offset: 1216)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !466, file: !406, line: 580, baseType: !555, size: 64, offset: 1728)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !405, file: !406, line: 721, baseType: !7, size: 32, offset: 3584)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !405, file: !406, line: 722, baseType: !92, size: 32, offset: 3616)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !405, file: !406, line: 723, baseType: !559, size: 64, offset: 3648)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !562, line: 17, baseType: !563)
!562 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !562, line: 17, size: 64, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !563, file: !562, line: 17, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 64, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 1)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !405, file: !406, line: 724, baseType: !561, size: 64, offset: 3712)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !405, file: !406, line: 749, baseType: !571, offset: 3776)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !406, line: 290, elements: !132)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !405, file: !406, line: 751, baseType: !105, size: 128, offset: 3776)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !405, file: !406, line: 757, baseType: !265, size: 64, offset: 3904)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !405, file: !406, line: 758, baseType: !265, size: 64, offset: 3968)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !405, file: !406, line: 761, baseType: !576, size: 320, offset: 4032)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !353, line: 34, size: 320, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !576, file: !353, line: 35, baseType: !277, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !576, file: !353, line: 36, baseType: !580, size: 256, offset: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 256, elements: !357)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !405, file: !406, line: 766, baseType: !92, size: 32, offset: 4352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !405, file: !406, line: 767, baseType: !92, size: 32, offset: 4384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !405, file: !406, line: 768, baseType: !92, size: 32, offset: 4416)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !405, file: !406, line: 770, baseType: !92, size: 32, offset: 4448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !405, file: !406, line: 772, baseType: !86, size: 64, offset: 4480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !405, file: !406, line: 775, baseType: !7, size: 32, offset: 4544)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !405, file: !406, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !405, file: !406, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !405, file: !406, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !405, file: !406, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !405, file: !406, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !405, file: !406, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !405, file: !406, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !405, file: !406, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !405, file: !406, line: 831, baseType: !86, size: 64, offset: 4672)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !405, file: !406, line: 833, baseType: !597, size: 384, offset: 4736)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !598)
!598 = !{!599, !604}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !597, file: !12, line: 26, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!194, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !12, line: 27, baseType: !605, size: 320, offset: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !12, line: 27, size: 320, elements: !606)
!606 = !{!607, !617, !644}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !605, file: !12, line: 36, baseType: !608, size: 320)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !12, line: 29, size: 320, elements: !609)
!609 = !{!610, !612, !613, !614, !615, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !608, file: !12, line: 30, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !608, file: !12, line: 31, baseType: !414, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !12, line: 32, baseType: !414, size: 32, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !608, file: !12, line: 33, baseType: !414, size: 32, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !608, file: !12, line: 34, baseType: !277, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !608, file: !12, line: 35, baseType: !611, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !605, file: !12, line: 46, baseType: !618, size: 192)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !12, line: 38, size: 192, elements: !619)
!619 = !{!620, !621, !622, !643}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !618, file: !12, line: 39, baseType: !522, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !12, line: 41, baseType: !623, size: 64, offset: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !12, line: 41, size: 64, elements: !624)
!624 = !{!625, !633}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !623, file: !12, line: 42, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !628, line: 7, size: 128, elements: !629)
!628 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!629 = !{!630, !632}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !627, file: !628, line: 8, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !192, line: 93, baseType: !241)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !627, file: !628, line: 9, baseType: !241, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !623, file: !12, line: 43, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !636, line: 7, size: 64, elements: !637)
!636 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !642}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !635, file: !636, line: 8, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !636, line: 5, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !278, line: 20, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !80, line: 26, baseType: !92)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !635, file: !636, line: 9, baseType: !640, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !618, file: !12, line: 45, baseType: !277, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !605, file: !12, line: 54, baseType: !645, size: 256)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !12, line: 48, size: 256, elements: !646)
!646 = !{!647, !650, !651, !652, !653}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !645, file: !12, line: 49, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !645, file: !12, line: 50, baseType: !92, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !645, file: !12, line: 51, baseType: !92, size: 32, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !645, file: !12, line: 52, baseType: !86, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !645, file: !12, line: 53, baseType: !86, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !405, file: !406, line: 835, baseType: !655, size: 32, offset: 5120)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !59, line: 22, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !192, line: 28, baseType: !92)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !405, file: !406, line: 836, baseType: !655, size: 32, offset: 5152)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !405, file: !406, line: 840, baseType: !86, size: 64, offset: 5184)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !405, file: !406, line: 849, baseType: !404, size: 64, offset: 5248)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !406, line: 852, baseType: !404, size: 64, offset: 5312)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !405, file: !406, line: 857, baseType: !105, size: 128, offset: 5376)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !405, file: !406, line: 858, baseType: !105, size: 128, offset: 5504)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !405, file: !406, line: 859, baseType: !404, size: 64, offset: 5632)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !405, file: !406, line: 867, baseType: !105, size: 128, offset: 5696)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !405, file: !406, line: 868, baseType: !105, size: 128, offset: 5824)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !405, file: !406, line: 871, baseType: !667, size: 64, offset: 5952)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !669, line: 59, size: 768, elements: !670)
!669 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!670 = !{!671, !672, !673, !674, !685, !686, !693, !702}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !669, line: 61, baseType: !420, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !668, file: !669, line: 62, baseType: !7, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !669, line: 63, baseType: !118, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !668, file: !669, line: 65, baseType: !675, size: 256, offset: 64)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 256, elements: !357)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !59, line: 182, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !676, file: !59, line: 183, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !59, line: 186, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !59, line: 187, baseType: !679, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !680, file: !59, line: 187, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !668, file: !669, line: 66, baseType: !676, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !668, file: !669, line: 68, baseType: !687, size: 128, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !688, line: 40, baseType: !689)
!688 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !688, line: 36, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !689, file: !688, line: 37, baseType: !118)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !689, file: !688, line: 38, baseType: !105, size: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !668, file: !669, line: 69, baseType: !694, size: 128, align: 64, offset: 512)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !59, line: 216, size: 128, align: 64, elements: !695)
!695 = !{!696, !698}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !59, line: 217, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !694, file: !59, line: 218, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !697}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !668, file: !669, line: 70, baseType: !703, size: 128, offset: 640)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 128, elements: !567)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !669, line: 54, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !704, file: !669, line: 55, baseType: !92, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !704, file: !669, line: 56, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !669, line: 56, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !405, file: !406, line: 872, baseType: !711, size: 512, offset: 6016)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 512, elements: !357)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !405, file: !406, line: 873, baseType: !105, size: 128, offset: 6528)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !405, file: !406, line: 874, baseType: !105, size: 128, offset: 6656)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !405, file: !406, line: 876, baseType: !715, size: 64, offset: 6784)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !717, line: 26, size: 192, elements: !718)
!717 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !716, file: !717, line: 27, baseType: !7, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !716, file: !717, line: 28, baseType: !721, size: 128, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !722, line: 43, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !722, line: 44, baseType: !323)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !721, file: !722, line: 45, baseType: !105, size: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !405, file: !406, line: 879, baseType: !727, size: 64, offset: 6848)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !405, file: !406, line: 882, baseType: !727, size: 64, offset: 6912)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !405, file: !406, line: 884, baseType: !277, size: 64, offset: 6976)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !405, file: !406, line: 885, baseType: !277, size: 64, offset: 7040)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !405, file: !406, line: 890, baseType: !277, size: 64, offset: 7104)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !405, file: !406, line: 891, baseType: !733, size: 128, offset: 7168)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !406, line: 242, size: 128, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !733, file: !406, line: 244, baseType: !277, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !733, file: !406, line: 245, baseType: !277, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !406, line: 246, baseType: !323, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !405, file: !406, line: 900, baseType: !86, size: 64, offset: 7296)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !405, file: !406, line: 901, baseType: !86, size: 64, offset: 7360)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !405, file: !406, line: 904, baseType: !277, size: 64, offset: 7424)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !405, file: !406, line: 907, baseType: !277, size: 64, offset: 7488)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !405, file: !406, line: 910, baseType: !86, size: 64, offset: 7552)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !405, file: !406, line: 911, baseType: !86, size: 64, offset: 7616)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !405, file: !406, line: 914, baseType: !745, size: 640, offset: 7680)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !746, line: 123, size: 640, elements: !747)
!746 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !754, !755}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !745, file: !746, line: 124, baseType: !749, size: 576)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 576, elements: !160)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !746, line: 108, size: 192, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !750, file: !746, line: 109, baseType: !277, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !750, file: !746, line: 110, baseType: !536, size: 128, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !745, file: !746, line: 125, baseType: !7, size: 32, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !745, file: !746, line: 126, baseType: !7, size: 32, offset: 608)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !405, file: !406, line: 917, baseType: !757, size: 192, offset: 8320)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !746, line: 134, size: 192, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !757, file: !746, line: 135, baseType: !694, size: 128, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !757, file: !746, line: 136, baseType: !7, size: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !405, file: !406, line: 923, baseType: !762, size: 64, offset: 8512)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !406, line: 923, flags: DIFlagFwdDecl)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !405, file: !406, line: 926, baseType: !762, size: 64, offset: 8576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !405, file: !406, line: 929, baseType: !762, size: 64, offset: 8640)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !405, file: !406, line: 933, baseType: !768, size: 64, offset: 8704)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !406, line: 933, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !405, file: !406, line: 943, baseType: !771, size: 128, offset: 8768)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 16)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !405, file: !406, line: 945, baseType: !775, size: 64, offset: 8896)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !406, line: 49, flags: DIFlagFwdDecl)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !405, file: !406, line: 956, baseType: !778, size: 64, offset: 8960)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !406, line: 45, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !405, file: !406, line: 959, baseType: !781, size: 64, offset: 9024)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !406, line: 959, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !405, file: !406, line: 962, baseType: !784, size: 64, offset: 9088)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !406, line: 66, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !405, file: !406, line: 966, baseType: !787, size: 64, offset: 9152)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !406, line: 50, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !405, file: !406, line: 969, baseType: !790, size: 64, offset: 9216)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !746, line: 223, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !405, file: !406, line: 970, baseType: !793, size: 64, offset: 9280)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !406, line: 62, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !405, file: !406, line: 971, baseType: !796, size: 64, offset: 9344)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !797, line: 25, baseType: !798)
!797 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !797, line: 23, size: 64, elements: !799)
!799 = !{!800}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !798, file: !797, line: 24, baseType: !566, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !405, file: !406, line: 972, baseType: !796, size: 64, offset: 9408)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !405, file: !406, line: 974, baseType: !796, size: 64, offset: 9472)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !405, file: !406, line: 975, baseType: !804, size: 192, offset: 9536)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !805, line: 30, size: 192, elements: !806)
!805 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !804, file: !805, line: 31, baseType: !105, size: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !804, file: !805, line: 32, baseType: !796, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !405, file: !406, line: 976, baseType: !86, size: 64, offset: 9728)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !405, file: !406, line: 977, baseType: !206, size: 64, offset: 9792)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !405, file: !406, line: 978, baseType: !7, size: 32, offset: 9856)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !405, file: !406, line: 980, baseType: !697, size: 64, offset: 9920)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !405, file: !406, line: 989, baseType: !814, size: 128, offset: 9984)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !815, line: 35, size: 128, elements: !816)
!815 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !814, file: !815, line: 36, baseType: !92, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !814, file: !815, line: 37, baseType: !298, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !814, file: !815, line: 38, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !815, line: 23, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !405, file: !406, line: 992, baseType: !277, size: 64, offset: 10112)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !405, file: !406, line: 993, baseType: !277, size: 64, offset: 10176)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !405, file: !406, line: 996, baseType: !118, offset: 10240)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !405, file: !406, line: 999, baseType: !323, offset: 10240)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !405, file: !406, line: 1001, baseType: !827, size: 64, offset: 10240)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !406, line: 636, size: 64, elements: !828)
!828 = !{!829}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !827, file: !406, line: 637, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !405, file: !406, line: 1005, baseType: !539, size: 128, offset: 10304)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !405, file: !406, line: 1007, baseType: !404, size: 64, offset: 10432)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !405, file: !406, line: 1009, baseType: !834, size: 64, offset: 10496)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !406, line: 1009, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !405, file: !406, line: 1043, baseType: !60, size: 64, offset: 10560)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !405, file: !406, line: 1046, baseType: !838, size: 64, offset: 10624)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !406, line: 41, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !405, file: !406, line: 1050, baseType: !841, size: 64, offset: 10688)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !406, line: 42, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !405, file: !406, line: 1054, baseType: !844, size: 64, offset: 10752)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !406, line: 55, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !405, file: !406, line: 1056, baseType: !847, size: 64, offset: 10816)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !406, line: 40, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !405, file: !406, line: 1058, baseType: !850, size: 64, offset: 10880)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !406, line: 47, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !405, file: !406, line: 1061, baseType: !853, size: 64, offset: 10944)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !406, line: 43, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !405, file: !406, line: 1064, baseType: !86, size: 64, offset: 11008)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !405, file: !406, line: 1065, baseType: !857, size: 64, offset: 11072)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !805, line: 14, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !805, line: 12, size: 384, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, scope: !859, file: !805, line: 13, baseType: !862, size: 384)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !805, line: 13, size: 384, elements: !863)
!863 = !{!864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !862, file: !805, line: 13, baseType: !92, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !862, file: !805, line: 13, baseType: !92, size: 32, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !862, file: !805, line: 13, baseType: !92, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !862, file: !805, line: 13, baseType: !868, size: 256, offset: 128)
!868 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !869, line: 32, size: 256, elements: !870)
!869 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!870 = !{!871, !877, !890, !896, !905, !925, !930}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !868, file: !869, line: 37, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 34, size: 64, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !872, file: !869, line: 35, baseType: !656, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !872, file: !869, line: 36, baseType: !876, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !192, line: 49, baseType: !7)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !868, file: !869, line: 45, baseType: !878, size: 192)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 40, size: 192, elements: !879)
!879 = !{!880, !882, !883, !889}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !878, file: !869, line: 41, baseType: !881, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !192, line: 95, baseType: !92)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !878, file: !869, line: 42, baseType: !92, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !878, file: !869, line: 43, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !869, line: 11, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !869, line: 8, size: 64, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !885, file: !869, line: 9, baseType: !92, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !885, file: !869, line: 10, baseType: !60, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !878, file: !869, line: 44, baseType: !92, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !868, file: !869, line: 52, baseType: !891, size: 128)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 48, size: 128, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !891, file: !869, line: 49, baseType: !656, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !891, file: !869, line: 50, baseType: !876, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !891, file: !869, line: 51, baseType: !884, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !868, file: !869, line: 61, baseType: !897, size: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 55, size: 256, elements: !898)
!898 = !{!899, !900, !901, !902, !904}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !897, file: !869, line: 56, baseType: !656, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !897, file: !869, line: 57, baseType: !876, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !897, file: !869, line: 58, baseType: !92, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !897, file: !869, line: 59, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !192, line: 94, baseType: !193)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !897, file: !869, line: 60, baseType: !903, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !868, file: !869, line: 95, baseType: !906, size: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 64, size: 256, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !906, file: !869, line: 65, baseType: !60, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !869, line: 77, baseType: !910, size: 192, offset: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !906, file: !869, line: 77, size: 192, elements: !911)
!911 = !{!912, !913, !920}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !910, file: !869, line: 82, baseType: !393, size: 16)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !910, file: !869, line: 88, baseType: !914, size: 192)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !869, line: 84, size: 192, elements: !915)
!915 = !{!916, !918, !919}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !914, file: !869, line: 85, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !82)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !914, file: !869, line: 86, baseType: !60, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !914, file: !869, line: 87, baseType: !60, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !910, file: !869, line: 93, baseType: !921, size: 96)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !869, line: 90, size: 96, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !921, file: !869, line: 91, baseType: !917, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !921, file: !869, line: 92, baseType: !415, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !868, file: !869, line: 101, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 98, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !926, file: !869, line: 99, baseType: !194, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !926, file: !869, line: 100, baseType: !92, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !868, file: !869, line: 108, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !869, line: 104, size: 128, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !931, file: !869, line: 105, baseType: !60, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !931, file: !869, line: 106, baseType: !92, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !931, file: !869, line: 107, baseType: !7, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !405, file: !406, line: 1067, baseType: !937, offset: 11136)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !938, line: 12, elements: !132)
!938 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!939 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !405, file: !406, line: 1099, baseType: !940, size: 64, offset: 11136)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !406, line: 56, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !405, file: !406, line: 1103, baseType: !105, size: 128, offset: 11200)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !405, file: !406, line: 1104, baseType: !944, size: 64, offset: 11328)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !406, line: 46, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !405, file: !406, line: 1105, baseType: !375, size: 192, offset: 11392)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !405, file: !406, line: 1106, baseType: !7, size: 32, offset: 11584)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !405, file: !406, line: 1109, baseType: !949, size: 128, offset: 11648)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 128, elements: !952)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !406, line: 51, flags: DIFlagFwdDecl)
!952 = !{!953}
!953 = !DISubrange(count: 2)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !405, file: !406, line: 1110, baseType: !375, size: 192, offset: 11776)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !405, file: !406, line: 1111, baseType: !105, size: 128, offset: 11968)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !405, file: !406, line: 1173, baseType: !957, size: 64, offset: 12096)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !959, line: 62, size: 256, align: 256, elements: !960)
!959 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!960 = !{!961, !962, !963, !968}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !958, file: !959, line: 75, baseType: !415, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !958, file: !959, line: 90, baseType: !415, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !958, file: !959, line: 124, baseType: !964, size: 64, offset: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !959, line: 109, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !964, file: !959, line: 110, baseType: !279, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !964, file: !959, line: 112, baseType: !279, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 144, baseType: !415, size: 32, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !405, file: !406, line: 1174, baseType: !414, size: 32, offset: 12160)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !405, file: !406, line: 1179, baseType: !86, size: 64, offset: 12224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !405, file: !406, line: 1182, baseType: !972, size: 128, offset: 12288)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !353, line: 76, size: 128, elements: !973)
!973 = !{!974, !979, !982}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !972, file: !353, line: 85, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !976, line: 7, size: 64, elements: !977)
!976 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !975, file: !976, line: 12, baseType: !563, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !972, file: !353, line: 88, baseType: !980, size: 8, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 30, baseType: !981)
!981 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !972, file: !353, line: 95, baseType: !980, size: 8, offset: 72)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !406, line: 1184, baseType: !984, size: 128, offset: 12416)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !406, line: 1184, size: 128, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !984, file: !406, line: 1185, baseType: !420, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !984, file: !406, line: 1186, baseType: !694, size: 128, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !405, file: !406, line: 1190, baseType: !989, size: 64, offset: 12544)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !406, line: 53, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !405, file: !406, line: 1192, baseType: !992, size: 128, offset: 12608)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !353, line: 64, size: 128, elements: !993)
!993 = !{!994, !1087, !1088}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !992, file: !353, line: 65, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !249, line: 68, size: 512, align: 128, elements: !997)
!997 = !{!998, !999, !1079, !1086}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !996, file: !249, line: 69, baseType: !86, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !249, line: 77, baseType: !1000, size: 320, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !249, line: 77, size: 320, elements: !1001)
!1001 = !{!1002, !1011, !1016, !1044, !1052, !1058, !1071, !1078}
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 78, baseType: !1003, size: 320)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 78, size: 320, elements: !1004)
!1004 = !{!1005, !1006, !1009, !1010}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1003, file: !249, line: 84, baseType: !105, size: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1003, file: !249, line: 86, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !249, line: 26, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1003, file: !249, line: 87, baseType: !86, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1003, file: !249, line: 94, baseType: !86, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 96, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 96, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1012, file: !249, line: 101, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !59, line: 143, baseType: !277)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 103, baseType: !1017, size: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 103, size: 320, elements: !1018)
!1018 = !{!1019, !1029, !1032, !1033}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !249, line: 104, baseType: !1020, size: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !249, line: 104, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1020, file: !249, line: 105, baseType: !105, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !249, line: 106, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !249, line: 106, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1024, file: !249, line: 107, baseType: !995, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1024, file: !249, line: 109, baseType: !92, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1024, file: !249, line: 110, baseType: !92, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1017, file: !249, line: 117, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !249, line: 117, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1017, file: !249, line: 119, baseType: !60, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !249, line: 120, baseType: !1034, size: 64, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !249, line: 120, size: 64, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1034, file: !249, line: 121, baseType: !60, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1034, file: !249, line: 122, baseType: !86, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !249, line: 123, baseType: !1039, size: 32)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !249, line: 123, size: 32, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1039, file: !249, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1039, file: !249, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1039, file: !249, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 130, baseType: !1045, size: 192)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 130, size: 192, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1045, file: !249, line: 131, baseType: !86, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1045, file: !249, line: 134, baseType: !81, size: 8, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1045, file: !249, line: 135, baseType: !81, size: 8, offset: 72)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1045, file: !249, line: 136, baseType: !298, size: 32, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1045, file: !249, line: 137, baseType: !7, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 139, baseType: !1053, size: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 139, size: 256, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1053, file: !249, line: 140, baseType: !86, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1053, file: !249, line: 141, baseType: !298, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1053, file: !249, line: 143, baseType: !105, size: 128, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 145, baseType: !1059, size: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 145, size: 256, elements: !1060)
!1060 = !{!1061, !1062, !1064, !1065, !1070}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1059, file: !249, line: 146, baseType: !86, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1059, file: !249, line: 147, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !238, line: 509, baseType: !995)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1059, file: !249, line: 148, baseType: !86, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !249, line: 149, baseType: !1066, size: 64, offset: 192)
!1066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !249, line: 149, size: 64, elements: !1067)
!1067 = !{!1068, !1069}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1066, file: !249, line: 150, baseType: !265, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1066, file: !249, line: 151, baseType: !298, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1059, file: !249, line: 156, baseType: !118, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !249, line: 159, baseType: !1072, size: 128)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1000, file: !249, line: 159, size: 128, elements: !1073)
!1073 = !{!1074, !1077}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1072, file: !249, line: 161, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !249, line: 161, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1072, file: !249, line: 162, baseType: !60, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1000, file: !249, line: 176, baseType: !694, size: 128, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !996, file: !249, line: 179, baseType: !1080, size: 32, offset: 384)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !249, line: 179, size: 32, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1080, file: !249, line: 184, baseType: !298, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1080, file: !249, line: 192, baseType: !7, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1080, file: !249, line: 194, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1080, file: !249, line: 195, baseType: !92, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !996, file: !249, line: 199, baseType: !298, size: 32, offset: 416)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !992, file: !353, line: 67, baseType: !415, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !992, file: !353, line: 68, baseType: !415, size: 32, offset: 96)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !405, file: !406, line: 1206, baseType: !92, size: 32, offset: 12736)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !405, file: !406, line: 1207, baseType: !92, size: 32, offset: 12768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !405, file: !406, line: 1209, baseType: !86, size: 64, offset: 12800)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !405, file: !406, line: 1219, baseType: !277, size: 64, offset: 12864)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !405, file: !406, line: 1220, baseType: !277, size: 64, offset: 12928)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !405, file: !406, line: 1317, baseType: !92, size: 32, offset: 12992)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !405, file: !406, line: 1319, baseType: !404, size: 64, offset: 13056)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !405, file: !406, line: 1322, baseType: !1097, size: 64, offset: 13120)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !406, line: 1322, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !405, file: !406, line: 1326, baseType: !420, size: 32, offset: 13184)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !405, file: !406, line: 1342, baseType: !60, size: 64, offset: 13248)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !405, file: !406, line: 1343, baseType: !279, size: 64, offset: 13312)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !405, file: !406, line: 1344, baseType: !277, size: 64, offset: 13376)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !405, file: !406, line: 1345, baseType: !279, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !405, file: !406, line: 1346, baseType: !279, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !405, file: !406, line: 1347, baseType: !279, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !405, file: !406, line: 1348, baseType: !694, size: 128, align: 64, offset: 13504)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !405, file: !406, line: 1358, baseType: !1108, size: 34816, offset: 13824)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1109, line: 485, size: 34816, elements: !1110)
!1109 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1140, !1141, !1142, !1143, !1144, !1145, !1148, !1149, !1150}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1108, file: !1109, line: 487, baseType: !1112, size: 192)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 192, elements: !160)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1114, line: 16, size: 64, elements: !1115)
!1114 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !{!1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1113, file: !1114, line: 17, baseType: !388, size: 16)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1113, file: !1114, line: 18, baseType: !388, size: 16, offset: 16)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1113, file: !1114, line: 19, baseType: !388, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1113, file: !1114, line: 19, baseType: !388, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1113, file: !1114, line: 19, baseType: !388, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1113, file: !1114, line: 19, baseType: !388, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1113, file: !1114, line: 19, baseType: !388, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1113, file: !1114, line: 20, baseType: !388, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1113, file: !1114, line: 20, baseType: !388, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1113, file: !1114, line: 20, baseType: !388, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1113, file: !1114, line: 20, baseType: !388, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1113, file: !1114, line: 20, baseType: !388, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1113, file: !1114, line: 20, baseType: !388, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1108, file: !1109, line: 491, baseType: !86, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1108, file: !1109, line: 495, baseType: !201, size: 16, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1108, file: !1109, line: 496, baseType: !201, size: 16, offset: 272)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1108, file: !1109, line: 497, baseType: !201, size: 16, offset: 288)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1108, file: !1109, line: 498, baseType: !201, size: 16, offset: 304)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1108, file: !1109, line: 502, baseType: !86, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1108, file: !1109, line: 503, baseType: !86, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1108, file: !1109, line: 514, baseType: !1137, size: 256, offset: 448)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 256, elements: !357)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1109, line: 483, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1108, file: !1109, line: 516, baseType: !86, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1108, file: !1109, line: 518, baseType: !86, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1108, file: !1109, line: 520, baseType: !86, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1108, file: !1109, line: 521, baseType: !86, size: 64, offset: 896)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1108, file: !1109, line: 522, baseType: !86, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1108, file: !1109, line: 528, baseType: !1146, size: 64, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1109, line: 10, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1108, file: !1109, line: 535, baseType: !86, size: 64, offset: 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1108, file: !1109, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1108, file: !1109, line: 540, baseType: !1151, size: 33280, offset: 1536)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1152, line: 317, size: 33280, elements: !1153)
!1152 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1151, file: !1152, line: 330, baseType: !7, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1151, file: !1152, line: 337, baseType: !86, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1151, file: !1152, line: 348, baseType: !1157, size: 32768, offset: 512)
!1157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1152, line: 304, size: 32768, elements: !1158)
!1158 = !{!1159, !1174, !1213, !1263, !1280}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1157, file: !1152, line: 305, baseType: !1160, size: 896)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1152, line: 12, size: 896, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1173}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1160, file: !1152, line: 13, baseType: !414, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1160, file: !1152, line: 14, baseType: !414, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1160, file: !1152, line: 15, baseType: !414, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1160, file: !1152, line: 16, baseType: !414, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1160, file: !1152, line: 17, baseType: !414, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1160, file: !1152, line: 18, baseType: !414, size: 32, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1160, file: !1152, line: 19, baseType: !414, size: 32, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1160, file: !1152, line: 22, baseType: !1170, size: 640, offset: 224)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 640, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 20)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1160, file: !1152, line: 25, baseType: !414, size: 32, offset: 864)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1157, file: !1152, line: 306, baseType: !1175, size: 4096, align: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1152, line: 34, size: 4096, align: 128, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1196, !1197, !1198, !1202, !1204, !1208}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1175, file: !1152, line: 35, baseType: !388, size: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1175, file: !1152, line: 36, baseType: !388, size: 16, offset: 16)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1175, file: !1152, line: 37, baseType: !388, size: 16, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1175, file: !1152, line: 38, baseType: !388, size: 16, offset: 48)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1152, line: 39, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1152, line: 39, size: 128, elements: !1183)
!1183 = !{!1184, !1189}
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1152, line: 40, baseType: !1185, size: 128)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1152, line: 40, size: 128, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1185, file: !1152, line: 41, baseType: !277, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1185, file: !1152, line: 42, baseType: !277, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !1152, line: 44, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !1152, line: 44, size: 128, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1190, file: !1152, line: 45, baseType: !414, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1190, file: !1152, line: 46, baseType: !414, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1190, file: !1152, line: 47, baseType: !414, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1190, file: !1152, line: 48, baseType: !414, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1175, file: !1152, line: 51, baseType: !414, size: 32, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1175, file: !1152, line: 52, baseType: !414, size: 32, offset: 224)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1175, file: !1152, line: 55, baseType: !1199, size: 1024, offset: 256)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1175, file: !1152, line: 58, baseType: !1203, size: 2048, offset: 1280)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, elements: !164)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1175, file: !1152, line: 60, baseType: !1205, size: 384, offset: 3328)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 12)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1152, line: 62, baseType: !1209, size: 384, offset: 3712)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1152, line: 62, size: 384, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1209, file: !1152, line: 63, baseType: !1205, size: 384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1209, file: !1152, line: 64, baseType: !1205, size: 384)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1157, file: !1152, line: 307, baseType: !1214, size: 1088)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1152, line: 79, size: 1088, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1262}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1214, file: !1152, line: 80, baseType: !414, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1214, file: !1152, line: 81, baseType: !414, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1214, file: !1152, line: 82, baseType: !414, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1214, file: !1152, line: 83, baseType: !414, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1214, file: !1152, line: 84, baseType: !414, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1214, file: !1152, line: 85, baseType: !414, size: 32, offset: 160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1214, file: !1152, line: 86, baseType: !414, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1214, file: !1152, line: 88, baseType: !1170, size: 640, offset: 224)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1214, file: !1152, line: 89, baseType: !549, size: 8, offset: 864)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1214, file: !1152, line: 90, baseType: !549, size: 8, offset: 872)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1214, file: !1152, line: 91, baseType: !549, size: 8, offset: 880)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1214, file: !1152, line: 92, baseType: !549, size: 8, offset: 888)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1214, file: !1152, line: 93, baseType: !549, size: 8, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1214, file: !1152, line: 94, baseType: !549, size: 8, offset: 904)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1214, file: !1152, line: 95, baseType: !1231, size: 64, offset: 960)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1233, line: 11, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1232, file: !1233, line: 12, baseType: !194, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1232, file: !1233, line: 13, baseType: !1237, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1239, line: 56, size: 1344, elements: !1240)
!1239 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1238, file: !1239, line: 61, baseType: !86, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1238, file: !1239, line: 62, baseType: !86, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1238, file: !1239, line: 63, baseType: !86, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1238, file: !1239, line: 64, baseType: !86, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1238, file: !1239, line: 65, baseType: !86, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1238, file: !1239, line: 66, baseType: !86, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1238, file: !1239, line: 68, baseType: !86, size: 64, offset: 384)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1238, file: !1239, line: 69, baseType: !86, size: 64, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1238, file: !1239, line: 70, baseType: !86, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1238, file: !1239, line: 71, baseType: !86, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1238, file: !1239, line: 72, baseType: !86, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1238, file: !1239, line: 73, baseType: !86, size: 64, offset: 704)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1238, file: !1239, line: 74, baseType: !86, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1238, file: !1239, line: 75, baseType: !86, size: 64, offset: 832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1238, file: !1239, line: 76, baseType: !86, size: 64, offset: 896)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1238, file: !1239, line: 81, baseType: !86, size: 64, offset: 960)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1238, file: !1239, line: 83, baseType: !86, size: 64, offset: 1024)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1238, file: !1239, line: 84, baseType: !86, size: 64, offset: 1088)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !1239, line: 85, baseType: !86, size: 64, offset: 1152)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1238, file: !1239, line: 86, baseType: !86, size: 64, offset: 1216)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1238, file: !1239, line: 87, baseType: !86, size: 64, offset: 1280)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1214, file: !1152, line: 96, baseType: !414, size: 32, offset: 1024)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1157, file: !1152, line: 308, baseType: !1264, size: 4608, align: 512)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1152, line: 289, size: 4608, align: 512, elements: !1265)
!1265 = !{!1266, !1267, !1276}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1264, file: !1152, line: 290, baseType: !1175, size: 4096, align: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1264, file: !1152, line: 291, baseType: !1268, size: 512, offset: 4096)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1152, line: 268, size: 512, elements: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1268, file: !1152, line: 269, baseType: !277, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1268, file: !1152, line: 270, baseType: !277, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1268, file: !1152, line: 271, baseType: !1273, size: 384, offset: 128)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 384, elements: !1274)
!1274 = !{!1275}
!1275 = !DISubrange(count: 6)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1264, file: !1152, line: 292, baseType: !1277, offset: 4608)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 0)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1157, file: !1152, line: 309, baseType: !1281, size: 32768)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 32768, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 4096)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !249, line: 378, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !397, file: !249, line: 384, baseType: !716, size: 192, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !269, file: !249, line: 500, baseType: !118, offset: 6656)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !269, file: !249, line: 501, baseType: !1289, size: 64, offset: 6656)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !249, line: 387, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !269, file: !249, line: 516, baseType: !1292, size: 64, offset: 6720)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1294, line: 18, flags: DIFlagFwdDecl)
!1294 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !269, file: !249, line: 519, baseType: !236, size: 64, offset: 6784)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !269, file: !249, line: 521, baseType: !1297, size: 64, offset: 6848)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !249, line: 521, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !269, file: !249, line: 545, baseType: !298, size: 32, offset: 6912)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !269, file: !249, line: 548, baseType: !980, size: 8, offset: 6944)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !269, file: !249, line: 550, baseType: !1302, offset: 6952)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1303, line: 142, elements: !132)
!1303 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !269, file: !249, line: 554, baseType: !1305, size: 256, offset: 6976)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1306, line: 102, size: 256, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1309, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1305, file: !1306, line: 103, baseType: !306, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1305, file: !1306, line: 104, baseType: !105, size: 128, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1305, file: !1306, line: 105, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1306, line: 21, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !269, file: !249, line: 557, baseType: !414, size: 32, offset: 7232)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !266, file: !249, line: 565, baseType: !1318, offset: 7296)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: -1)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !248, file: !249, line: 333, baseType: !1322, size: 64, offset: 576)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !238, line: 284, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !238, line: 284, size: 64, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1323, file: !238, line: 284, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !296, line: 19, baseType: !86)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !248, file: !249, line: 334, baseType: !86, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !248, file: !249, line: 343, baseType: !1329, size: 256, offset: 704)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !249, line: 340, size: 256, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1329, file: !249, line: 341, baseType: !256, size: 192, align: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1329, file: !249, line: 342, baseType: !86, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !248, file: !249, line: 351, baseType: !105, size: 128, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !248, file: !249, line: 353, baseType: !1335, size: 64, offset: 1088)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !249, line: 353, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !248, file: !249, line: 356, baseType: !1338, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !249, line: 356, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !248, file: !249, line: 359, baseType: !86, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !248, file: !249, line: 361, baseType: !236, size: 64, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !248, file: !249, line: 362, baseType: !60, size: 64, offset: 1344)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !248, file: !249, line: 365, baseType: !306, size: 64, offset: 1408)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !248, file: !249, line: 373, baseType: !1346, offset: 1472)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !249, line: 296, elements: !132)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !215, file: !184, line: 90, baseType: !210, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !215, file: !184, line: 91, baseType: !1349, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !174, file: !101, line: 143, baseType: !1351, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !111}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1357)
!1357 = !{!1358, !1359, !1363, !1367, !1375, !1379}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1356, file: !18, line: 40, baseType: !17, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1356, file: !18, line: 41, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!980}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1356, file: !18, line: 42, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!60}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1356, file: !18, line: 43, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1371, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1356, file: !18, line: 44, baseType: !1376, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1371}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1356, file: !18, line: 45, baseType: !1380, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !60}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !174, file: !101, line: 144, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1371, !111}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !174, file: !101, line: 145, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !111, !1391, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1294, line: 23, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 21, size: 32, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1393, file: !1294, line: 22, baseType: !1396, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !59, line: 32, baseType: !876)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1294, line: 28, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1294, line: 26, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1399, file: !1294, line: 27, baseType: !1402, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !59, line: 33, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !192, line: 50, baseType: !7)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !100, file: !101, line: 70, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1407, line: 123, size: 1024, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1550, !1551, !1552, !1553, !1554}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !1407, line: 124, baseType: !298, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1406, file: !1407, line: 125, baseType: !298, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1406, file: !1407, line: 135, baseType: !1405, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !1407, line: 136, baseType: !68, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1406, file: !1407, line: 138, baseType: !256, size: 192, align: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1406, file: !1407, line: 140, baseType: !1371, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1406, file: !1407, line: 141, baseType: !7, size: 32, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 142, baseType: !1417, size: 256, offset: 512)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 142, size: 256, elements: !1418)
!1418 = !{!1419, !1473, !1477}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1417, file: !1407, line: 143, baseType: !1420, size: 192)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1407, line: 91, size: 192, elements: !1421)
!1421 = !{!1422, !1423, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1420, file: !1407, line: 92, baseType: !86, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1420, file: !1407, line: 94, baseType: !273, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1420, file: !1407, line: 100, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1407, line: 180, size: 704, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1443, !1444, !1445, !1471, !1472}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1426, file: !1407, line: 182, baseType: !1405, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !1407, line: 183, baseType: !7, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1426, file: !1407, line: 186, baseType: !1431, size: 192, offset: 128)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1432, line: 19, size: 192, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1441, !1442}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1431, file: !1432, line: 20, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1436, line: 292, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439, !1440}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1435, file: !1436, line: 293, baseType: !118)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1435, file: !1436, line: 295, baseType: !58, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1435, file: !1436, line: 296, baseType: !60, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1431, file: !1432, line: 21, baseType: !7, size: 32, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1431, file: !1432, line: 22, baseType: !7, size: 32, offset: 160)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1426, file: !1407, line: 187, baseType: !414, size: 32, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1426, file: !1407, line: 188, baseType: !414, size: 32, offset: 352)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1426, file: !1407, line: 189, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1407, line: 168, size: 320, elements: !1448)
!1448 = !{!1449, !1455, !1459, !1463, !1467}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1447, file: !1407, line: 169, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!92, !1453, !1425}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !238, line: 539, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1447, file: !1407, line: 171, baseType: !1456, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!92, !1405, !68, !200}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1447, file: !1407, line: 173, baseType: !1460, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!92, !1405}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1447, file: !1407, line: 174, baseType: !1464, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!92, !1405, !1405, !68}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1447, file: !1407, line: 176, baseType: !1468, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!92, !1453, !1405, !1425}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1426, file: !1407, line: 192, baseType: !105, size: 128, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1426, file: !1407, line: 194, baseType: !687, size: 128, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1417, file: !1407, line: 144, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1407, line: 103, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1474, file: !1407, line: 104, baseType: !1405, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1417, file: !1407, line: 145, baseType: !1478, size: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1407, line: 107, size: 256, elements: !1479)
!1479 = !{!1480, !1545, !1548, !1549}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1478, file: !1407, line: 108, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1407, line: 217, size: 768, elements: !1484)
!1484 = !{!1485, !1505, !1509, !1513, !1518, !1522, !1526, !1530, !1531, !1532, !1533, !1541}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1483, file: !1407, line: 222, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!92, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1407, line: 197, size: 1088, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1490, file: !1407, line: 199, baseType: !1405, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1490, file: !1407, line: 200, baseType: !236, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1490, file: !1407, line: 201, baseType: !1453, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1490, file: !1407, line: 202, baseType: !60, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1490, file: !1407, line: 205, baseType: !375, size: 192, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1490, file: !1407, line: 206, baseType: !375, size: 192, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1490, file: !1407, line: 207, baseType: !92, size: 32, offset: 640)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1490, file: !1407, line: 208, baseType: !105, size: 128, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1490, file: !1407, line: 209, baseType: !159, size: 64, offset: 832)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1490, file: !1407, line: 211, baseType: !206, size: 64, offset: 896)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1490, file: !1407, line: 212, baseType: !980, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1490, file: !1407, line: 213, baseType: !980, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1490, file: !1407, line: 214, baseType: !1338, size: 64, offset: 1024)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1483, file: !1407, line: 223, baseType: !1506, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1489}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1483, file: !1407, line: 236, baseType: !1510, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!92, !1453, !60}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1483, file: !1407, line: 238, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!60, !1453, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1483, file: !1407, line: 239, baseType: !1519, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!60, !1453, !60, !1517}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1483, file: !1407, line: 240, baseType: !1523, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1453, !60}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1483, file: !1407, line: 242, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!190, !1489, !159, !206, !239}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1483, file: !1407, line: 252, baseType: !206, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1483, file: !1407, line: 259, baseType: !980, size: 8, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1483, file: !1407, line: 260, baseType: !1527, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1483, file: !1407, line: 263, baseType: !1534, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!1537, !1489, !1539}
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1538, line: 52, baseType: !7)
!1538 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1407, line: 27, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1483, file: !1407, line: 266, baseType: !1542, size: 64, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!92, !1489, !247}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1478, file: !1407, line: 109, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1407, line: 31, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1478, file: !1407, line: 110, baseType: !239, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1478, file: !1407, line: 111, baseType: !1405, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1406, file: !1407, line: 148, baseType: !60, size: 64, offset: 768)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1406, file: !1407, line: 154, baseType: !277, size: 64, offset: 832)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1407, line: 156, baseType: !201, size: 16, offset: 896)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1406, file: !1407, line: 157, baseType: !200, size: 16, offset: 912)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1406, file: !1407, line: 158, baseType: !1555, size: 64, offset: 960)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1407, line: 32, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !100, file: !101, line: 71, baseType: !1558, size: 32, offset: 448)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1559, line: 19, size: 32, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1558, file: !1559, line: 20, baseType: !420, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !100, file: !101, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !100, file: !101, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !100, file: !101, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !100, file: !101, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !100, file: !101, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !30, line: 463, baseType: !1568, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !97, file: !30, line: 465, baseType: !1570, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !97, file: !30, line: 467, baseType: !68, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !30, line: 468, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1584, !1589, !1593}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1576, file: !30, line: 88, baseType: !68, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1576, file: !30, line: 89, baseType: !212, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1576, file: !30, line: 90, baseType: !1581, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!92, !1568, !154}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1576, file: !30, line: 91, baseType: !1585, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!159, !1568, !1588, !1391, !1397}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1576, file: !30, line: 93, baseType: !1590, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1568}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1576, file: !30, line: 95, baseType: !1594, size: 64, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1597)
!1597 = !{!1598, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1596, file: !37, line: 279, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!92, !1568}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1596, file: !37, line: 280, baseType: !1590, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1596, file: !37, line: 281, baseType: !1599, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1596, file: !37, line: 282, baseType: !1599, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1596, file: !37, line: 283, baseType: !1599, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1596, file: !37, line: 284, baseType: !1599, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1596, file: !37, line: 285, baseType: !1599, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1596, file: !37, line: 286, baseType: !1599, size: 64, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1596, file: !37, line: 287, baseType: !1599, size: 64, offset: 512)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1596, file: !37, line: 288, baseType: !1599, size: 64, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1596, file: !37, line: 289, baseType: !1599, size: 64, offset: 640)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1596, file: !37, line: 290, baseType: !1599, size: 64, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1596, file: !37, line: 291, baseType: !1599, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1596, file: !37, line: 292, baseType: !1599, size: 64, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1596, file: !37, line: 293, baseType: !1599, size: 64, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1596, file: !37, line: 294, baseType: !1599, size: 64, offset: 960)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1596, file: !37, line: 295, baseType: !1599, size: 64, offset: 1024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1596, file: !37, line: 296, baseType: !1599, size: 64, offset: 1088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1596, file: !37, line: 297, baseType: !1599, size: 64, offset: 1152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1596, file: !37, line: 298, baseType: !1599, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1596, file: !37, line: 299, baseType: !1599, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1596, file: !37, line: 300, baseType: !1599, size: 64, offset: 1344)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1596, file: !37, line: 301, baseType: !1599, size: 64, offset: 1408)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !97, file: !30, line: 470, baseType: !1625, size: 64, offset: 768)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1627, line: 82, size: 1408, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1712, !1715, !1718}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1626, file: !1627, line: 83, baseType: !68, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1626, file: !1627, line: 84, baseType: !68, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1626, file: !1627, line: 85, baseType: !1568, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1626, file: !1627, line: 86, baseType: !212, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1626, file: !1627, line: 87, baseType: !212, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1626, file: !1627, line: 88, baseType: !212, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1626, file: !1627, line: 90, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!92, !1568, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1648, !1649, !1650, !1651, !1664, !1676, !1677, !1678, !1679, !1680, !1688, !1689, !1690, !1691, !1692, !1693}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !24, line: 96, baseType: !68, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1640, file: !24, line: 97, baseType: !1625, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1640, file: !24, line: 99, baseType: !1645, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1647, line: 76, flags: DIFlagFwdDecl)
!1647 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1640, file: !24, line: 100, baseType: !68, size: 64, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1640, file: !24, line: 102, baseType: !980, size: 8, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1640, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1640, file: !24, line: 105, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !75, line: 262, size: 1600, elements: !1655)
!1655 = !{!1656, !1658, !1659, !1663}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1654, file: !75, line: 263, baseType: !1657, size: 256)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !1200)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1654, file: !75, line: 264, baseType: !1657, size: 256, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1654, file: !75, line: 265, baseType: !1660, size: 1024, offset: 512)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1024, elements: !1661)
!1661 = !{!1662}
!1662 = !DISubrange(count: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1654, file: !75, line: 266, baseType: !1371, size: 64, offset: 1536)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1640, file: !24, line: 106, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !75, line: 210, size: 256, elements: !1668)
!1668 = !{!1669, !1673, !1674, !1675}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1667, file: !75, line: 211, baseType: !1670, size: 72)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 72, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 9)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1667, file: !75, line: 212, baseType: !85, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1667, file: !75, line: 213, baseType: !415, size: 32, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1667, file: !75, line: 214, baseType: !415, size: 32, offset: 224)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1640, file: !24, line: 108, baseType: !1599, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1640, file: !24, line: 109, baseType: !1590, size: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1640, file: !24, line: 110, baseType: !1599, size: 64, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1640, file: !24, line: 111, baseType: !1590, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1640, file: !24, line: 112, baseType: !1681, size: 64, offset: 704)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!92, !1568, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1685)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1685, file: !37, line: 51, baseType: !92, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1640, file: !24, line: 113, baseType: !1599, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1640, file: !24, line: 114, baseType: !212, size: 64, offset: 832)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1640, file: !24, line: 115, baseType: !212, size: 64, offset: 896)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1640, file: !24, line: 117, baseType: !1594, size: 64, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1640, file: !24, line: 118, baseType: !1590, size: 64, offset: 1024)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1640, file: !24, line: 120, baseType: !1694, size: 64, offset: 1088)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1626, file: !1627, line: 91, baseType: !1581, size: 64, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1626, file: !1627, line: 92, baseType: !1599, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1626, file: !1627, line: 93, baseType: !1590, size: 64, offset: 576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1626, file: !1627, line: 94, baseType: !1599, size: 64, offset: 640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1626, file: !1627, line: 95, baseType: !1590, size: 64, offset: 704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1626, file: !1627, line: 97, baseType: !1599, size: 64, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1626, file: !1627, line: 98, baseType: !1599, size: 64, offset: 832)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1626, file: !1627, line: 100, baseType: !1681, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1626, file: !1627, line: 101, baseType: !1599, size: 64, offset: 960)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1626, file: !1627, line: 103, baseType: !1599, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1626, file: !1627, line: 105, baseType: !1599, size: 64, offset: 1088)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1626, file: !1627, line: 107, baseType: !1594, size: 64, offset: 1152)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1626, file: !1627, line: 109, baseType: !1709, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1711)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1627, line: 109, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1626, file: !1627, line: 111, baseType: !1713, size: 64, offset: 1280)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1627, line: 111, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1626, file: !1627, line: 112, baseType: !1716, offset: 1344)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1717, line: 187, elements: !132)
!1717 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1626, file: !1627, line: 114, baseType: !980, size: 8, offset: 1344)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !97, file: !30, line: 471, baseType: !1639, size: 64, offset: 832)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !97, file: !30, line: 473, baseType: !60, size: 64, offset: 896)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !97, file: !30, line: 475, baseType: !60, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !97, file: !30, line: 480, baseType: !375, size: 192, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !97, file: !30, line: 484, baseType: !1724, size: 576, offset: 1216)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1724, file: !30, line: 362, baseType: !105, size: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1724, file: !30, line: 363, baseType: !105, size: 128, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1724, file: !30, line: 364, baseType: !105, size: 128, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1724, file: !30, line: 365, baseType: !105, size: 128, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1724, file: !30, line: 366, baseType: !980, size: 8, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1724, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !97, file: !30, line: 485, baseType: !1733, size: 2304, offset: 1792)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1830, !1834}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1733, file: !37, line: 566, baseType: !1684, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1733, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1733, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1733, file: !37, line: 569, baseType: !980, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1733, file: !37, line: 570, baseType: !980, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1733, file: !37, line: 571, baseType: !980, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1733, file: !37, line: 572, baseType: !980, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1733, file: !37, line: 573, baseType: !980, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1733, file: !37, line: 574, baseType: !980, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1733, file: !37, line: 575, baseType: !980, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1733, file: !37, line: 576, baseType: !980, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1733, file: !37, line: 577, baseType: !414, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1733, file: !37, line: 578, baseType: !118, offset: 96)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1733, file: !37, line: 580, baseType: !105, size: 128, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1733, file: !37, line: 581, baseType: !716, size: 192, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1733, file: !37, line: 582, baseType: !1751, size: 64, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1753, line: 43, size: 1472, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1762, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1752, file: !1753, line: 44, baseType: !68, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1752, file: !1753, line: 45, baseType: !92, size: 32, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1752, file: !1753, line: 46, baseType: !105, size: 128, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1752, file: !1753, line: 47, baseType: !118, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1752, file: !1753, line: 48, baseType: !1760, size: 64, offset: 256)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1752, file: !1753, line: 49, baseType: !1763, size: 320, offset: 320)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1764, line: 11, size: 320, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !{!1766, !1767, !1768, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1763, file: !1764, line: 16, baseType: !680, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1763, file: !1764, line: 17, baseType: !86, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1763, file: !1764, line: 18, baseType: !1769, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !1772}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !1764, line: 19, baseType: !414, size: 32, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1752, file: !1753, line: 50, baseType: !86, size: 64, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1752, file: !1753, line: 51, baseType: !490, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1752, file: !1753, line: 52, baseType: !490, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1752, file: !1753, line: 53, baseType: !490, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1752, file: !1753, line: 54, baseType: !490, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1752, file: !1753, line: 55, baseType: !490, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1752, file: !1753, line: 56, baseType: !86, size: 64, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1752, file: !1753, line: 57, baseType: !86, size: 64, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1752, file: !1753, line: 58, baseType: !86, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1752, file: !1753, line: 59, baseType: !86, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1752, file: !1753, line: 60, baseType: !86, size: 64, offset: 1280)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1752, file: !1753, line: 61, baseType: !1568, size: 64, offset: 1344)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1752, file: !1753, line: 62, baseType: !980, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1752, file: !1753, line: 63, baseType: !980, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1733, file: !37, line: 583, baseType: !980, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1733, file: !37, line: 584, baseType: !980, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1733, file: !37, line: 585, baseType: !980, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1733, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1733, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1733, file: !37, line: 592, baseType: !482, size: 512, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1733, file: !37, line: 593, baseType: !277, size: 64, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1733, file: !37, line: 594, baseType: !1305, size: 256, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1733, file: !37, line: 595, baseType: !687, size: 128, offset: 1408)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1733, file: !37, line: 596, baseType: !1760, size: 64, offset: 1536)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1733, file: !37, line: 597, baseType: !298, size: 32, offset: 1600)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1733, file: !37, line: 598, baseType: !298, size: 32, offset: 1632)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1733, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1733, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1733, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1733, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1733, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1733, file: !37, line: 604, baseType: !980, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1733, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1733, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1733, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1733, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1733, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1733, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1733, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1733, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1733, file: !37, line: 613, baseType: !92, size: 32, offset: 1792)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1733, file: !37, line: 614, baseType: !92, size: 32, offset: 1824)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1733, file: !37, line: 615, baseType: !277, size: 64, offset: 1856)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1733, file: !37, line: 616, baseType: !277, size: 64, offset: 1920)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1733, file: !37, line: 617, baseType: !277, size: 64, offset: 1984)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1733, file: !37, line: 618, baseType: !277, size: 64, offset: 2048)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1733, file: !37, line: 620, baseType: !1821, size: 64, offset: 2112)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1823)
!1823 = !{!1824, !1825, !1826, !1827}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !37, line: 537, baseType: !118)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1822, file: !37, line: 538, baseType: !7, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1822, file: !37, line: 540, baseType: !105, size: 128, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1822, file: !37, line: 543, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1733, file: !37, line: 621, baseType: !1831, size: 64, offset: 2176)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1568, !640}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1733, file: !37, line: 622, baseType: !1835, size: 64, offset: 2240)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !97, file: !30, line: 486, baseType: !1838, size: 64, offset: 4096)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1847, !1848, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1839, file: !37, line: 643, baseType: !1596, size: 1472)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1839, file: !37, line: 644, baseType: !1599, size: 64, offset: 1472)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1839, file: !37, line: 645, baseType: !1844, size: 64, offset: 1536)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1568, !980}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1839, file: !37, line: 646, baseType: !1599, size: 64, offset: 1600)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1839, file: !37, line: 647, baseType: !1590, size: 64, offset: 1664)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1839, file: !37, line: 648, baseType: !1590, size: 64, offset: 1728)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !97, file: !30, line: 493, baseType: !1851, size: 64, offset: 4160)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !97, file: !30, line: 499, baseType: !105, size: 128, offset: 4224)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !97, file: !30, line: 502, baseType: !1855, size: 64, offset: 4352)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !97, file: !30, line: 504, baseType: !1859, size: 64, offset: 4416)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !97, file: !30, line: 505, baseType: !277, size: 64, offset: 4480)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !97, file: !30, line: 510, baseType: !277, size: 64, offset: 4544)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !97, file: !30, line: 511, baseType: !1863, size: 64, offset: 4608)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !97, file: !30, line: 513, baseType: !1867, size: 64, offset: 4672)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1868, file: !30, line: 293, baseType: !7, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1868, file: !30, line: 294, baseType: !86, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !97, file: !30, line: 515, baseType: !105, size: 128, offset: 4736)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !97, file: !30, line: 526, baseType: !1874, offset: 4864)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1875, line: 5, elements: !132)
!1875 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !97, file: !30, line: 528, baseType: !1877, size: 64, offset: 4864)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1879, line: 14, flags: DIFlagFwdDecl)
!1879 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !97, file: !30, line: 529, baseType: !1881, size: 64, offset: 4928)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1627, line: 22, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !97, file: !30, line: 534, baseType: !1884, size: 32, offset: 4992)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !59, line: 16, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !59, line: 13, baseType: !414)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !97, file: !30, line: 535, baseType: !414, size: 32, offset: 5024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !97, file: !30, line: 537, baseType: !118, offset: 5056)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !97, file: !30, line: 538, baseType: !105, size: 128, offset: 5056)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !97, file: !30, line: 540, baseType: !1890, size: 64, offset: 5184)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1892, line: 54, size: 960, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !{!1894, !1895, !1896, !1897, !1898, !1899, !1900, !1904, !1908, !1909, !1910, !1911, !1915, !1919, !1920}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1891, file: !1892, line: 55, baseType: !68, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1891, file: !1892, line: 56, baseType: !1645, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1891, file: !1892, line: 58, baseType: !212, size: 64, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1891, file: !1892, line: 59, baseType: !212, size: 64, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1891, file: !1892, line: 60, baseType: !111, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1891, file: !1892, line: 62, baseType: !1581, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1891, file: !1892, line: 63, baseType: !1901, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!159, !1568, !1588}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1891, file: !1892, line: 65, baseType: !1905, size: 64, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1890}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1891, file: !1892, line: 66, baseType: !1590, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1891, file: !1892, line: 68, baseType: !1599, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1891, file: !1892, line: 70, baseType: !1354, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1891, file: !1892, line: 71, baseType: !1912, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1371, !1568}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1891, file: !1892, line: 73, baseType: !1916, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1568, !1391, !1397}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1891, file: !1892, line: 75, baseType: !1594, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1891, file: !1892, line: 77, baseType: !1713, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !97, file: !30, line: 541, baseType: !212, size: 64, offset: 5248)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !97, file: !30, line: 543, baseType: !1590, size: 64, offset: 5312)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !97, file: !30, line: 544, baseType: !1924, size: 64, offset: 5376)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !97, file: !30, line: 545, baseType: !1927, size: 64, offset: 5440)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !97, file: !30, line: 547, baseType: !980, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !97, file: !30, line: 548, baseType: !980, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !97, file: !30, line: 549, baseType: !980, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !97, file: !30, line: 550, baseType: !980, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !94, file: !65, line: 245, baseType: !277, size: 64, offset: 5568)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !94, file: !65, line: 246, baseType: !7, size: 32, offset: 5632)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !94, file: !65, line: 247, baseType: !92, size: 32, offset: 5664)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !94, file: !65, line: 249, baseType: !105, size: 128, offset: 5696)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !94, file: !65, line: 250, baseType: !105, size: 128, offset: 5824)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !94, file: !65, line: 251, baseType: !105, size: 128, offset: 5952)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !94, file: !65, line: 252, baseType: !105, size: 128, offset: 6080)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !94, file: !65, line: 254, baseType: !1941, size: 64, offset: 6208)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !65, line: 411, size: 6464, elements: !1943)
!1943 = !{!1944, !1945, !1946, !1950, !1951, !1952, !1956, !1960, !1961, !1962, !1963, !1964}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1942, file: !65, line: 412, baseType: !105, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1942, file: !65, line: 413, baseType: !159, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1942, file: !65, line: 416, baseType: !1947, size: 64, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!92, !93}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1942, file: !65, line: 417, baseType: !1947, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1942, file: !65, line: 418, baseType: !1947, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1942, file: !65, line: 421, baseType: !1953, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!980, !93}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1942, file: !65, line: 422, baseType: !1957, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!92, !93, !1684}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1942, file: !65, line: 423, baseType: !1947, size: 64, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1942, file: !65, line: 426, baseType: !81, size: 8, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1942, file: !65, line: 427, baseType: !97, size: 5568, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1942, file: !65, line: 428, baseType: !105, size: 128, offset: 6208)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1942, file: !65, line: 429, baseType: !105, size: 128, offset: 6336)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !94, file: !65, line: 255, baseType: !1966, size: 64, offset: 6272)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !65, line: 202, size: 6720, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975, !1981, !1985, !1986, !1987, !1988, !1989}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1967, file: !65, line: 203, baseType: !97, size: 5568)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1967, file: !65, line: 204, baseType: !81, size: 8, offset: 5568)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1967, file: !65, line: 205, baseType: !105, size: 128, offset: 5632)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1967, file: !65, line: 206, baseType: !105, size: 128, offset: 5760)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1967, file: !65, line: 207, baseType: !105, size: 128, offset: 5888)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1967, file: !65, line: 209, baseType: !1941, size: 64, offset: 6016)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1967, file: !65, line: 210, baseType: !1976, size: 64, offset: 6080)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !65, line: 369, size: 128, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1977, file: !65, line: 370, baseType: !917, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1977, file: !65, line: 371, baseType: !1976, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1967, file: !65, line: 212, baseType: !1982, size: 400, offset: 6144)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 400, elements: !1983)
!1983 = !{!1984}
!1984 = !DISubrange(count: 50)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1967, file: !65, line: 213, baseType: !81, size: 8, offset: 6544)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1967, file: !65, line: 214, baseType: !81, size: 8, offset: 6552)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1967, file: !65, line: 215, baseType: !7, size: 32, offset: 6560)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1967, file: !65, line: 216, baseType: !81, size: 8, offset: 6592)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1967, file: !65, line: 217, baseType: !1990, size: 64, offset: 6656)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !65, line: 217, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !94, file: !65, line: 256, baseType: !1993, size: 64, offset: 6336)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !94, file: !65, line: 257, baseType: !1995, size: 64, offset: 6400)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !65, line: 226, size: 256, elements: !1997)
!1997 = !{!1998, !1999, !2035, !2036}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1996, file: !65, line: 227, baseType: !1966, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1996, file: !65, line: 228, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !65, line: 388, size: 2240, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2017, !2018, !2022, !2026, !2030, !2034}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2001, file: !65, line: 389, baseType: !105, size: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2001, file: !65, line: 390, baseType: !159, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2001, file: !65, line: 391, baseType: !2006, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !75, line: 225, size: 640, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2008, file: !75, line: 226, baseType: !78, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2008, file: !75, line: 227, baseType: !85, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2008, file: !75, line: 230, baseType: !2013, size: 512, offset: 128)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2014, size: 512, elements: !82)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2008, file: !75, line: 228, size: 64, elements: !2015)
!2015 = !{!2016}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2014, file: !75, line: 229, baseType: !78, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2001, file: !65, line: 392, baseType: !7, size: 32, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2001, file: !65, line: 393, baseType: !2019, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!92, !1995, !2006}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2001, file: !65, line: 395, baseType: !2023, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !1995}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2001, file: !65, line: 396, baseType: !2027, size: 64, offset: 448)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!92, !1995, !1684}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2001, file: !65, line: 397, baseType: !2031, size: 64, offset: 512)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!92, !1995}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2001, file: !65, line: 398, baseType: !64, size: 1664, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1996, file: !65, line: 229, baseType: !60, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1996, file: !65, line: 230, baseType: !1684, size: 32, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !94, file: !65, line: 259, baseType: !1976, size: 64, offset: 6464)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !94, file: !65, line: 261, baseType: !92, size: 32, offset: 6528)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !94, file: !65, line: 262, baseType: !92, size: 32, offset: 6560)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !94, file: !65, line: 263, baseType: !7, size: 32, offset: 6592)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !94, file: !65, line: 264, baseType: !105, size: 128, offset: 6656)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !94, file: !65, line: 265, baseType: !105, size: 128, offset: 6784)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !65, line: 267, baseType: !1982, size: 400, offset: 6912)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !65, line: 268, baseType: !92, size: 32, offset: 7328)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !94, file: !65, line: 269, baseType: !1990, size: 64, offset: 7360)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !94, file: !65, line: 270, baseType: !60, size: 64, offset: 7424)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !64, file: !65, line: 379, baseType: !2048, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !93}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !64, file: !65, line: 380, baseType: !2048, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !64, file: !65, line: 381, baseType: !1957, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !64, file: !65, line: 382, baseType: !1947, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !64, file: !65, line: 383, baseType: !1640, size: 1152, offset: 512)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "pnp_dev_table", scope: !2, file: !3, line: 18, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 384, elements: !160)
!2058 = !{i32 7, !"Dwarf Version", i32 4}
!2059 = !{i32 2, !"Debug Info Version", i32 3}
!2060 = !{i32 1, !"wchar_size", i32 2}
!2061 = !{i32 1, !"Code Model", i32 2}
!2062 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2063 = distinct !DISubprogram(name: "pnp_system_init", scope: !3, file: !3, line: 104, type: !2064, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!92}
!2066 = !DILocation(line: 106, column: 9, scope: !2063)
!2067 = !DILocation(line: 106, column: 2, scope: !2063)
!2068 = distinct !DISubprogram(name: "system_pnp_probe", scope: !3, file: !3, line: 90, type: !90, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2069 = !DILocalVariable(name: "dev", arg: 1, scope: !2068, file: !3, line: 90, type: !93)
!2070 = !DILocation(line: 90, column: 45, scope: !2068)
!2071 = !DILocalVariable(name: "dev_id", arg: 2, scope: !2068, file: !3, line: 91, type: !72)
!2072 = !DILocation(line: 91, column: 36, scope: !2068)
!2073 = !DILocation(line: 93, column: 27, scope: !2068)
!2074 = !DILocation(line: 93, column: 2, scope: !2068)
!2075 = !DILocation(line: 94, column: 2, scope: !2068)
!2076 = distinct !DISubprogram(name: "reserve_resources_of_dev", scope: !3, file: !3, line: 56, type: !2049, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2077 = !DILocalVariable(name: "dev", arg: 1, scope: !2076, file: !3, line: 56, type: !93)
!2078 = !DILocation(line: 56, column: 54, scope: !2076)
!2079 = !DILocalVariable(name: "res", scope: !2076, file: !3, line: 58, type: !2080)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2082, line: 20, size: 512, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2081, file: !2082, line: 21, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !59, line: 158, baseType: !2086)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !59, line: 153, baseType: !277)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2081, file: !2082, line: 22, baseType: !2085, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2081, file: !2082, line: 23, baseType: !68, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2081, file: !2082, line: 24, baseType: !86, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2081, file: !2082, line: 25, baseType: !86, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2081, file: !2082, line: 26, baseType: !2080, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2081, file: !2082, line: 26, baseType: !2080, size: 64, offset: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2081, file: !2082, line: 26, baseType: !2080, size: 64, offset: 448)
!2094 = !DILocation(line: 58, column: 19, scope: !2076)
!2095 = !DILocalVariable(name: "i", scope: !2076, file: !3, line: 59, type: !92)
!2096 = !DILocation(line: 59, column: 6, scope: !2076)
!2097 = !DILocation(line: 61, column: 9, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 61, column: 2)
!2099 = !DILocation(line: 61, column: 7, scope: !2098)
!2100 = !DILocation(line: 61, column: 38, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 61, column: 2)
!2102 = !DILocation(line: 61, column: 58, scope: !2101)
!2103 = !DILocation(line: 61, column: 21, scope: !2101)
!2104 = !DILocation(line: 61, column: 19, scope: !2101)
!2105 = !DILocation(line: 61, column: 2, scope: !2098)
!2106 = !DILocation(line: 62, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 62, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 61, column: 68)
!2109 = !DILocation(line: 62, column: 12, scope: !2107)
!2110 = !DILocation(line: 62, column: 18, scope: !2107)
!2111 = !DILocation(line: 62, column: 7, scope: !2108)
!2112 = !DILocation(line: 63, column: 4, scope: !2107)
!2113 = !DILocation(line: 64, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 64, column: 7)
!2115 = !DILocation(line: 64, column: 12, scope: !2114)
!2116 = !DILocation(line: 64, column: 18, scope: !2114)
!2117 = !DILocation(line: 64, column: 7, scope: !2108)
!2118 = !DILocation(line: 65, column: 4, scope: !2114)
!2119 = !DILocation(line: 66, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 66, column: 7)
!2121 = !DILocation(line: 66, column: 12, scope: !2120)
!2122 = !DILocation(line: 66, column: 18, scope: !2120)
!2123 = !DILocation(line: 66, column: 7, scope: !2108)
!2124 = !DILocation(line: 75, column: 4, scope: !2120)
!2125 = !DILocation(line: 76, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 76, column: 7)
!2127 = !DILocation(line: 76, column: 12, scope: !2126)
!2128 = !DILocation(line: 76, column: 18, scope: !2126)
!2129 = !DILocation(line: 76, column: 23, scope: !2126)
!2130 = !DILocation(line: 76, column: 16, scope: !2126)
!2131 = !DILocation(line: 76, column: 7, scope: !2108)
!2132 = !DILocation(line: 77, column: 4, scope: !2126)
!2133 = !DILocation(line: 79, column: 17, scope: !2108)
!2134 = !DILocation(line: 79, column: 22, scope: !2108)
!2135 = !DILocation(line: 79, column: 3, scope: !2108)
!2136 = !DILocation(line: 80, column: 2, scope: !2108)
!2137 = !DILocation(line: 61, column: 64, scope: !2101)
!2138 = !DILocation(line: 61, column: 2, scope: !2101)
!2139 = distinct !{!2139, !2105, !2140}
!2140 = !DILocation(line: 80, column: 2, scope: !2098)
!2141 = !DILocation(line: 82, column: 9, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2076, file: !3, line: 82, column: 2)
!2143 = !DILocation(line: 82, column: 7, scope: !2142)
!2144 = !DILocation(line: 82, column: 38, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 82, column: 2)
!2146 = !DILocation(line: 82, column: 59, scope: !2145)
!2147 = !DILocation(line: 82, column: 21, scope: !2145)
!2148 = !DILocation(line: 82, column: 19, scope: !2145)
!2149 = !DILocation(line: 82, column: 2, scope: !2142)
!2150 = !DILocation(line: 83, column: 7, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 83, column: 7)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 82, column: 69)
!2153 = !DILocation(line: 83, column: 12, scope: !2151)
!2154 = !DILocation(line: 83, column: 18, scope: !2151)
!2155 = !DILocation(line: 83, column: 7, scope: !2152)
!2156 = !DILocation(line: 84, column: 4, scope: !2151)
!2157 = !DILocation(line: 86, column: 17, scope: !2152)
!2158 = !DILocation(line: 86, column: 22, scope: !2152)
!2159 = !DILocation(line: 86, column: 3, scope: !2152)
!2160 = !DILocation(line: 87, column: 2, scope: !2152)
!2161 = !DILocation(line: 82, column: 65, scope: !2145)
!2162 = !DILocation(line: 82, column: 2, scope: !2145)
!2163 = distinct !{!2163, !2149, !2164}
!2164 = !DILocation(line: 87, column: 2, scope: !2142)
!2165 = !DILocation(line: 88, column: 1, scope: !2076)
!2166 = distinct !DISubprogram(name: "reserve_range", scope: !3, file: !3, line: 26, type: !2167, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{null, !93, !2080, !92}
!2169 = !DILocalVariable(name: "s", arg: 1, scope: !2170, file: !51, line: 445, type: !1030)
!2170 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !2171, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!60, !1030, !58, !206}
!2173 = !DILocation(line: 445, column: 72, scope: !2170, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 552, column: 10, scope: !2175, inlinedAt: !2180)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !51, line: 540, column: 34)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !51, line: 540, column: 6)
!2177 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !2178, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!60, !206, !58}
!2180 = distinct !DILocation(line: 33, column: 13, scope: !2166)
!2181 = !DILocalVariable(name: "flags", arg: 2, scope: !2170, file: !51, line: 446, type: !58)
!2182 = !DILocation(line: 446, column: 9, scope: !2170, inlinedAt: !2174)
!2183 = !DILocalVariable(name: "size", arg: 3, scope: !2170, file: !51, line: 446, type: !206)
!2184 = !DILocation(line: 446, column: 23, scope: !2170, inlinedAt: !2174)
!2185 = !DILocalVariable(name: "ret", scope: !2170, file: !51, line: 448, type: !60)
!2186 = !DILocation(line: 448, column: 8, scope: !2170, inlinedAt: !2174)
!2187 = !DILocalVariable(name: "flags", arg: 1, scope: !2188, file: !51, line: 318, type: !58)
!2188 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !2189, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!50, !58}
!2191 = !DILocation(line: 318, column: 67, scope: !2188, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 553, column: 20, scope: !2175, inlinedAt: !2180)
!2193 = !DILocalVariable(name: "size", arg: 1, scope: !2194, file: !51, line: 346, type: !206)
!2194 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !2195, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!7, !206}
!2197 = !DILocation(line: 346, column: 58, scope: !2194, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 547, column: 11, scope: !2175, inlinedAt: !2180)
!2199 = !DILocalVariable(name: "size", arg: 1, scope: !2200, file: !51, line: 472, type: !206)
!2200 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !2201, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!60, !206, !58, !7}
!2203 = !DILocation(line: 472, column: 28, scope: !2200, inlinedAt: !2204)
!2204 = distinct !DILocation(line: 481, column: 9, scope: !2205, inlinedAt: !2206)
!2205 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !2178, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2206 = distinct !DILocation(line: 545, column: 11, scope: !2207, inlinedAt: !2180)
!2207 = distinct !DILexicalBlock(scope: !2175, file: !51, line: 544, column: 7)
!2208 = !DILocalVariable(name: "flags", arg: 2, scope: !2200, file: !51, line: 472, type: !58)
!2209 = !DILocation(line: 472, column: 40, scope: !2200, inlinedAt: !2204)
!2210 = !DILocalVariable(name: "order", arg: 3, scope: !2200, file: !51, line: 472, type: !7)
!2211 = !DILocation(line: 472, column: 60, scope: !2200, inlinedAt: !2204)
!2212 = !DILocalVariable(name: "size", arg: 1, scope: !2205, file: !51, line: 478, type: !206)
!2213 = !DILocation(line: 478, column: 51, scope: !2205, inlinedAt: !2206)
!2214 = !DILocalVariable(name: "flags", arg: 2, scope: !2205, file: !51, line: 478, type: !58)
!2215 = !DILocation(line: 478, column: 63, scope: !2205, inlinedAt: !2206)
!2216 = !DILocalVariable(name: "order", scope: !2205, file: !51, line: 480, type: !7)
!2217 = !DILocation(line: 480, column: 15, scope: !2205, inlinedAt: !2206)
!2218 = !DILocalVariable(name: "size", arg: 1, scope: !2177, file: !51, line: 538, type: !206)
!2219 = !DILocation(line: 538, column: 45, scope: !2177, inlinedAt: !2180)
!2220 = !DILocalVariable(name: "flags", arg: 2, scope: !2177, file: !51, line: 538, type: !58)
!2221 = !DILocation(line: 538, column: 57, scope: !2177, inlinedAt: !2180)
!2222 = !DILocalVariable(name: "index", scope: !2175, file: !51, line: 542, type: !7)
!2223 = !DILocation(line: 542, column: 16, scope: !2175, inlinedAt: !2180)
!2224 = !DILocalVariable(name: "dev", arg: 1, scope: !2166, file: !3, line: 26, type: !93)
!2225 = !DILocation(line: 26, column: 43, scope: !2166)
!2226 = !DILocalVariable(name: "r", arg: 2, scope: !2166, file: !3, line: 26, type: !2080)
!2227 = !DILocation(line: 26, column: 65, scope: !2166)
!2228 = !DILocalVariable(name: "port", arg: 3, scope: !2166, file: !3, line: 26, type: !92)
!2229 = !DILocation(line: 26, column: 72, scope: !2166)
!2230 = !DILocalVariable(name: "regionid", scope: !2166, file: !3, line: 28, type: !159)
!2231 = !DILocation(line: 28, column: 8, scope: !2166)
!2232 = !DILocalVariable(name: "pnpid", scope: !2166, file: !3, line: 29, type: !68)
!2233 = !DILocation(line: 29, column: 14, scope: !2166)
!2234 = !DILocation(line: 29, column: 32, scope: !2166)
!2235 = !DILocation(line: 29, column: 37, scope: !2166)
!2236 = !DILocation(line: 29, column: 22, scope: !2166)
!2237 = !DILocalVariable(name: "start", scope: !2166, file: !3, line: 30, type: !2085)
!2238 = !DILocation(line: 30, column: 18, scope: !2166)
!2239 = !DILocation(line: 30, column: 26, scope: !2166)
!2240 = !DILocation(line: 30, column: 29, scope: !2166)
!2241 = !DILocalVariable(name: "end", scope: !2166, file: !3, line: 30, type: !2085)
!2242 = !DILocation(line: 30, column: 36, scope: !2166)
!2243 = !DILocation(line: 30, column: 42, scope: !2166)
!2244 = !DILocation(line: 30, column: 45, scope: !2166)
!2245 = !DILocalVariable(name: "res", scope: !2166, file: !3, line: 31, type: !2080)
!2246 = !DILocation(line: 31, column: 19, scope: !2166)
!2247 = !DILocation(line: 540, column: 27, scope: !2176, inlinedAt: !2180)
!2248 = !DILocation(line: 540, column: 6, scope: !2176, inlinedAt: !2180)
!2249 = !DILocation(line: 540, column: 6, scope: !2177, inlinedAt: !2180)
!2250 = !DILocation(line: 544, column: 7, scope: !2207, inlinedAt: !2180)
!2251 = !DILocation(line: 544, column: 12, scope: !2207, inlinedAt: !2180)
!2252 = !DILocation(line: 544, column: 7, scope: !2175, inlinedAt: !2180)
!2253 = !DILocation(line: 545, column: 25, scope: !2207, inlinedAt: !2180)
!2254 = !DILocation(line: 545, column: 31, scope: !2207, inlinedAt: !2180)
!2255 = !DILocation(line: 480, column: 33, scope: !2205, inlinedAt: !2206)
!2256 = !DILocation(line: 480, column: 23, scope: !2205, inlinedAt: !2206)
!2257 = !DILocation(line: 481, column: 29, scope: !2205, inlinedAt: !2206)
!2258 = !DILocation(line: 481, column: 35, scope: !2205, inlinedAt: !2206)
!2259 = !DILocation(line: 481, column: 42, scope: !2205, inlinedAt: !2206)
!2260 = !DILocation(line: 474, column: 23, scope: !2200, inlinedAt: !2204)
!2261 = !DILocation(line: 474, column: 29, scope: !2200, inlinedAt: !2204)
!2262 = !DILocation(line: 474, column: 36, scope: !2200, inlinedAt: !2204)
!2263 = !DILocation(line: 474, column: 9, scope: !2200, inlinedAt: !2204)
!2264 = !DILocation(line: 545, column: 4, scope: !2207, inlinedAt: !2180)
!2265 = !DILocation(line: 547, column: 25, scope: !2175, inlinedAt: !2180)
!2266 = !DILocation(line: 348, column: 7, scope: !2267, inlinedAt: !2198)
!2267 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 348, column: 6)
!2268 = !DILocation(line: 348, column: 6, scope: !2194, inlinedAt: !2198)
!2269 = !DILocation(line: 349, column: 3, scope: !2267, inlinedAt: !2198)
!2270 = !DILocation(line: 351, column: 6, scope: !2271, inlinedAt: !2198)
!2271 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 351, column: 6)
!2272 = !DILocation(line: 351, column: 11, scope: !2271, inlinedAt: !2198)
!2273 = !DILocation(line: 351, column: 6, scope: !2194, inlinedAt: !2198)
!2274 = !DILocation(line: 352, column: 3, scope: !2271, inlinedAt: !2198)
!2275 = !DILocation(line: 354, column: 32, scope: !2276, inlinedAt: !2198)
!2276 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 354, column: 6)
!2277 = !DILocation(line: 354, column: 37, scope: !2276, inlinedAt: !2198)
!2278 = !DILocation(line: 354, column: 42, scope: !2276, inlinedAt: !2198)
!2279 = !DILocation(line: 354, column: 45, scope: !2276, inlinedAt: !2198)
!2280 = !DILocation(line: 354, column: 50, scope: !2276, inlinedAt: !2198)
!2281 = !DILocation(line: 354, column: 6, scope: !2194, inlinedAt: !2198)
!2282 = !DILocation(line: 355, column: 3, scope: !2276, inlinedAt: !2198)
!2283 = !DILocation(line: 356, column: 32, scope: !2284, inlinedAt: !2198)
!2284 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 356, column: 6)
!2285 = !DILocation(line: 356, column: 37, scope: !2284, inlinedAt: !2198)
!2286 = !DILocation(line: 356, column: 43, scope: !2284, inlinedAt: !2198)
!2287 = !DILocation(line: 356, column: 46, scope: !2284, inlinedAt: !2198)
!2288 = !DILocation(line: 356, column: 51, scope: !2284, inlinedAt: !2198)
!2289 = !DILocation(line: 356, column: 6, scope: !2194, inlinedAt: !2198)
!2290 = !DILocation(line: 357, column: 3, scope: !2284, inlinedAt: !2198)
!2291 = !DILocation(line: 358, column: 6, scope: !2292, inlinedAt: !2198)
!2292 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 358, column: 6)
!2293 = !DILocation(line: 358, column: 11, scope: !2292, inlinedAt: !2198)
!2294 = !DILocation(line: 358, column: 6, scope: !2194, inlinedAt: !2198)
!2295 = !DILocation(line: 358, column: 26, scope: !2292, inlinedAt: !2198)
!2296 = !DILocation(line: 359, column: 6, scope: !2297, inlinedAt: !2198)
!2297 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 359, column: 6)
!2298 = !DILocation(line: 359, column: 11, scope: !2297, inlinedAt: !2198)
!2299 = !DILocation(line: 359, column: 6, scope: !2194, inlinedAt: !2198)
!2300 = !DILocation(line: 359, column: 26, scope: !2297, inlinedAt: !2198)
!2301 = !DILocation(line: 360, column: 6, scope: !2302, inlinedAt: !2198)
!2302 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 360, column: 6)
!2303 = !DILocation(line: 360, column: 11, scope: !2302, inlinedAt: !2198)
!2304 = !DILocation(line: 360, column: 6, scope: !2194, inlinedAt: !2198)
!2305 = !DILocation(line: 360, column: 26, scope: !2302, inlinedAt: !2198)
!2306 = !DILocation(line: 361, column: 6, scope: !2307, inlinedAt: !2198)
!2307 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 361, column: 6)
!2308 = !DILocation(line: 361, column: 11, scope: !2307, inlinedAt: !2198)
!2309 = !DILocation(line: 361, column: 6, scope: !2194, inlinedAt: !2198)
!2310 = !DILocation(line: 361, column: 26, scope: !2307, inlinedAt: !2198)
!2311 = !DILocation(line: 362, column: 6, scope: !2312, inlinedAt: !2198)
!2312 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 362, column: 6)
!2313 = !DILocation(line: 362, column: 11, scope: !2312, inlinedAt: !2198)
!2314 = !DILocation(line: 362, column: 6, scope: !2194, inlinedAt: !2198)
!2315 = !DILocation(line: 362, column: 26, scope: !2312, inlinedAt: !2198)
!2316 = !DILocation(line: 363, column: 6, scope: !2317, inlinedAt: !2198)
!2317 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 363, column: 6)
!2318 = !DILocation(line: 363, column: 11, scope: !2317, inlinedAt: !2198)
!2319 = !DILocation(line: 363, column: 6, scope: !2194, inlinedAt: !2198)
!2320 = !DILocation(line: 363, column: 26, scope: !2317, inlinedAt: !2198)
!2321 = !DILocation(line: 364, column: 6, scope: !2322, inlinedAt: !2198)
!2322 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 364, column: 6)
!2323 = !DILocation(line: 364, column: 11, scope: !2322, inlinedAt: !2198)
!2324 = !DILocation(line: 364, column: 6, scope: !2194, inlinedAt: !2198)
!2325 = !DILocation(line: 364, column: 26, scope: !2322, inlinedAt: !2198)
!2326 = !DILocation(line: 365, column: 6, scope: !2327, inlinedAt: !2198)
!2327 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 365, column: 6)
!2328 = !DILocation(line: 365, column: 11, scope: !2327, inlinedAt: !2198)
!2329 = !DILocation(line: 365, column: 6, scope: !2194, inlinedAt: !2198)
!2330 = !DILocation(line: 365, column: 26, scope: !2327, inlinedAt: !2198)
!2331 = !DILocation(line: 366, column: 6, scope: !2332, inlinedAt: !2198)
!2332 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 366, column: 6)
!2333 = !DILocation(line: 366, column: 11, scope: !2332, inlinedAt: !2198)
!2334 = !DILocation(line: 366, column: 6, scope: !2194, inlinedAt: !2198)
!2335 = !DILocation(line: 366, column: 26, scope: !2332, inlinedAt: !2198)
!2336 = !DILocation(line: 367, column: 6, scope: !2337, inlinedAt: !2198)
!2337 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 367, column: 6)
!2338 = !DILocation(line: 367, column: 11, scope: !2337, inlinedAt: !2198)
!2339 = !DILocation(line: 367, column: 6, scope: !2194, inlinedAt: !2198)
!2340 = !DILocation(line: 367, column: 26, scope: !2337, inlinedAt: !2198)
!2341 = !DILocation(line: 368, column: 6, scope: !2342, inlinedAt: !2198)
!2342 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 368, column: 6)
!2343 = !DILocation(line: 368, column: 11, scope: !2342, inlinedAt: !2198)
!2344 = !DILocation(line: 368, column: 6, scope: !2194, inlinedAt: !2198)
!2345 = !DILocation(line: 368, column: 26, scope: !2342, inlinedAt: !2198)
!2346 = !DILocation(line: 369, column: 6, scope: !2347, inlinedAt: !2198)
!2347 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 369, column: 6)
!2348 = !DILocation(line: 369, column: 11, scope: !2347, inlinedAt: !2198)
!2349 = !DILocation(line: 369, column: 6, scope: !2194, inlinedAt: !2198)
!2350 = !DILocation(line: 369, column: 26, scope: !2347, inlinedAt: !2198)
!2351 = !DILocation(line: 370, column: 6, scope: !2352, inlinedAt: !2198)
!2352 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 370, column: 6)
!2353 = !DILocation(line: 370, column: 11, scope: !2352, inlinedAt: !2198)
!2354 = !DILocation(line: 370, column: 6, scope: !2194, inlinedAt: !2198)
!2355 = !DILocation(line: 370, column: 26, scope: !2352, inlinedAt: !2198)
!2356 = !DILocation(line: 371, column: 6, scope: !2357, inlinedAt: !2198)
!2357 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 371, column: 6)
!2358 = !DILocation(line: 371, column: 11, scope: !2357, inlinedAt: !2198)
!2359 = !DILocation(line: 371, column: 6, scope: !2194, inlinedAt: !2198)
!2360 = !DILocation(line: 371, column: 26, scope: !2357, inlinedAt: !2198)
!2361 = !DILocation(line: 372, column: 6, scope: !2362, inlinedAt: !2198)
!2362 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 372, column: 6)
!2363 = !DILocation(line: 372, column: 11, scope: !2362, inlinedAt: !2198)
!2364 = !DILocation(line: 372, column: 6, scope: !2194, inlinedAt: !2198)
!2365 = !DILocation(line: 372, column: 26, scope: !2362, inlinedAt: !2198)
!2366 = !DILocation(line: 373, column: 6, scope: !2367, inlinedAt: !2198)
!2367 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 373, column: 6)
!2368 = !DILocation(line: 373, column: 11, scope: !2367, inlinedAt: !2198)
!2369 = !DILocation(line: 373, column: 6, scope: !2194, inlinedAt: !2198)
!2370 = !DILocation(line: 373, column: 26, scope: !2367, inlinedAt: !2198)
!2371 = !DILocation(line: 374, column: 6, scope: !2372, inlinedAt: !2198)
!2372 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 374, column: 6)
!2373 = !DILocation(line: 374, column: 11, scope: !2372, inlinedAt: !2198)
!2374 = !DILocation(line: 374, column: 6, scope: !2194, inlinedAt: !2198)
!2375 = !DILocation(line: 374, column: 26, scope: !2372, inlinedAt: !2198)
!2376 = !DILocation(line: 375, column: 6, scope: !2377, inlinedAt: !2198)
!2377 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 375, column: 6)
!2378 = !DILocation(line: 375, column: 11, scope: !2377, inlinedAt: !2198)
!2379 = !DILocation(line: 375, column: 6, scope: !2194, inlinedAt: !2198)
!2380 = !DILocation(line: 375, column: 27, scope: !2377, inlinedAt: !2198)
!2381 = !DILocation(line: 376, column: 6, scope: !2382, inlinedAt: !2198)
!2382 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 376, column: 6)
!2383 = !DILocation(line: 376, column: 11, scope: !2382, inlinedAt: !2198)
!2384 = !DILocation(line: 376, column: 6, scope: !2194, inlinedAt: !2198)
!2385 = !DILocation(line: 376, column: 32, scope: !2382, inlinedAt: !2198)
!2386 = !DILocation(line: 377, column: 6, scope: !2387, inlinedAt: !2198)
!2387 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 377, column: 6)
!2388 = !DILocation(line: 377, column: 11, scope: !2387, inlinedAt: !2198)
!2389 = !DILocation(line: 377, column: 6, scope: !2194, inlinedAt: !2198)
!2390 = !DILocation(line: 377, column: 32, scope: !2387, inlinedAt: !2198)
!2391 = !DILocation(line: 378, column: 6, scope: !2392, inlinedAt: !2198)
!2392 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 378, column: 6)
!2393 = !DILocation(line: 378, column: 11, scope: !2392, inlinedAt: !2198)
!2394 = !DILocation(line: 378, column: 6, scope: !2194, inlinedAt: !2198)
!2395 = !DILocation(line: 378, column: 32, scope: !2392, inlinedAt: !2198)
!2396 = !DILocation(line: 379, column: 6, scope: !2397, inlinedAt: !2198)
!2397 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 379, column: 6)
!2398 = !DILocation(line: 379, column: 11, scope: !2397, inlinedAt: !2198)
!2399 = !DILocation(line: 379, column: 6, scope: !2194, inlinedAt: !2198)
!2400 = !DILocation(line: 379, column: 33, scope: !2397, inlinedAt: !2198)
!2401 = !DILocation(line: 380, column: 6, scope: !2402, inlinedAt: !2198)
!2402 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 380, column: 6)
!2403 = !DILocation(line: 380, column: 11, scope: !2402, inlinedAt: !2198)
!2404 = !DILocation(line: 380, column: 6, scope: !2194, inlinedAt: !2198)
!2405 = !DILocation(line: 380, column: 33, scope: !2402, inlinedAt: !2198)
!2406 = !DILocation(line: 381, column: 6, scope: !2407, inlinedAt: !2198)
!2407 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 381, column: 6)
!2408 = !DILocation(line: 381, column: 11, scope: !2407, inlinedAt: !2198)
!2409 = !DILocation(line: 381, column: 6, scope: !2194, inlinedAt: !2198)
!2410 = !DILocation(line: 381, column: 33, scope: !2407, inlinedAt: !2198)
!2411 = !DILocation(line: 382, column: 2, scope: !2412, inlinedAt: !2198)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !51, line: 382, column: 2)
!2413 = distinct !DILexicalBlock(scope: !2194, file: !51, line: 382, column: 2)
!2414 = !{i32 -2143680573, i32 -2143680544, i32 -2143680498, i32 -2143680440, i32 -2143680386, i32 -2143680332, i32 -2143680277, i32 -2143680246}
!2415 = !DILocation(line: 382, column: 2, scope: !2416, inlinedAt: !2198)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !51, line: 382, column: 2)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !51, line: 382, column: 2)
!2418 = !{i32 -2143679803, i32 -2143679796, i32 -2143679742, i32 -2143679711, i32 -2143679681}
!2419 = !DILocation(line: 382, column: 2, scope: !2417, inlinedAt: !2198)
!2420 = !DILocation(line: 386, column: 1, scope: !2194, inlinedAt: !2198)
!2421 = !DILocation(line: 547, column: 9, scope: !2175, inlinedAt: !2180)
!2422 = !DILocation(line: 549, column: 8, scope: !2423, inlinedAt: !2180)
!2423 = distinct !DILexicalBlock(scope: !2175, file: !51, line: 549, column: 7)
!2424 = !DILocation(line: 549, column: 7, scope: !2175, inlinedAt: !2180)
!2425 = !DILocation(line: 550, column: 4, scope: !2423, inlinedAt: !2180)
!2426 = !DILocation(line: 553, column: 33, scope: !2175, inlinedAt: !2180)
!2427 = !DILocation(line: 325, column: 6, scope: !2428, inlinedAt: !2192)
!2428 = distinct !DILexicalBlock(scope: !2188, file: !51, line: 325, column: 6)
!2429 = !DILocation(line: 325, column: 6, scope: !2188, inlinedAt: !2192)
!2430 = !DILocation(line: 326, column: 3, scope: !2428, inlinedAt: !2192)
!2431 = !DILocation(line: 332, column: 9, scope: !2188, inlinedAt: !2192)
!2432 = !DILocation(line: 332, column: 15, scope: !2188, inlinedAt: !2192)
!2433 = !DILocation(line: 332, column: 2, scope: !2188, inlinedAt: !2192)
!2434 = !DILocation(line: 336, column: 1, scope: !2188, inlinedAt: !2192)
!2435 = !DILocation(line: 553, column: 5, scope: !2175, inlinedAt: !2180)
!2436 = !DILocation(line: 553, column: 41, scope: !2175, inlinedAt: !2180)
!2437 = !DILocation(line: 554, column: 5, scope: !2175, inlinedAt: !2180)
!2438 = !DILocation(line: 554, column: 12, scope: !2175, inlinedAt: !2180)
!2439 = !DILocation(line: 448, column: 31, scope: !2170, inlinedAt: !2174)
!2440 = !DILocation(line: 448, column: 34, scope: !2170, inlinedAt: !2174)
!2441 = !DILocation(line: 448, column: 14, scope: !2170, inlinedAt: !2174)
!2442 = !DILocation(line: 450, column: 22, scope: !2170, inlinedAt: !2174)
!2443 = !DILocation(line: 450, column: 25, scope: !2170, inlinedAt: !2174)
!2444 = !DILocation(line: 450, column: 30, scope: !2170, inlinedAt: !2174)
!2445 = !DILocation(line: 450, column: 36, scope: !2170, inlinedAt: !2174)
!2446 = !DILocation(line: 450, column: 8, scope: !2170, inlinedAt: !2174)
!2447 = !DILocation(line: 450, column: 6, scope: !2170, inlinedAt: !2174)
!2448 = !DILocation(line: 451, column: 9, scope: !2170, inlinedAt: !2174)
!2449 = !DILocation(line: 552, column: 3, scope: !2175, inlinedAt: !2180)
!2450 = !DILocation(line: 557, column: 19, scope: !2177, inlinedAt: !2180)
!2451 = !DILocation(line: 557, column: 25, scope: !2177, inlinedAt: !2180)
!2452 = !DILocation(line: 557, column: 9, scope: !2177, inlinedAt: !2180)
!2453 = !DILocation(line: 557, column: 2, scope: !2177, inlinedAt: !2180)
!2454 = !DILocation(line: 558, column: 1, scope: !2177, inlinedAt: !2180)
!2455 = !DILocation(line: 33, column: 11, scope: !2166)
!2456 = !DILocation(line: 34, column: 7, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 34, column: 6)
!2458 = !DILocation(line: 34, column: 6, scope: !2166)
!2459 = !DILocation(line: 35, column: 3, scope: !2457)
!2460 = !DILocation(line: 37, column: 11, scope: !2166)
!2461 = !DILocation(line: 37, column: 35, scope: !2166)
!2462 = !DILocation(line: 37, column: 2, scope: !2166)
!2463 = !DILocation(line: 38, column: 6, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 38, column: 6)
!2465 = !DILocation(line: 38, column: 6, scope: !2166)
!2466 = !DILocation(line: 39, column: 9, scope: !2464)
!2467 = !DILocation(line: 39, column: 7, scope: !2464)
!2468 = !DILocation(line: 39, column: 3, scope: !2464)
!2469 = !DILocation(line: 41, column: 9, scope: !2464)
!2470 = !DILocation(line: 41, column: 7, scope: !2464)
!2471 = !DILocation(line: 42, column: 6, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 42, column: 6)
!2473 = !DILocation(line: 42, column: 6, scope: !2166)
!2474 = !DILocation(line: 43, column: 3, scope: !2472)
!2475 = !DILocation(line: 43, column: 8, scope: !2472)
!2476 = !DILocation(line: 43, column: 14, scope: !2472)
!2477 = !DILocation(line: 45, column: 9, scope: !2472)
!2478 = !DILocation(line: 45, column: 3, scope: !2472)
!2479 = !DILocation(line: 52, column: 2, scope: !2166)
!2480 = !DILocation(line: 54, column: 1, scope: !2166)
!2481 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2482, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!68, !2484}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!2486 = !DILocalVariable(name: "dev", arg: 1, scope: !2481, file: !30, line: 609, type: !2484)
!2487 = !DILocation(line: 609, column: 57, scope: !2481)
!2488 = !DILocation(line: 612, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2481, file: !30, line: 612, column: 6)
!2490 = !DILocation(line: 612, column: 11, scope: !2489)
!2491 = !DILocation(line: 612, column: 6, scope: !2481)
!2492 = !DILocation(line: 613, column: 10, scope: !2489)
!2493 = !DILocation(line: 613, column: 15, scope: !2489)
!2494 = !DILocation(line: 613, column: 3, scope: !2489)
!2495 = !DILocation(line: 615, column: 23, scope: !2481)
!2496 = !DILocation(line: 615, column: 28, scope: !2481)
!2497 = !DILocation(line: 615, column: 9, scope: !2481)
!2498 = !DILocation(line: 615, column: 2, scope: !2481)
!2499 = !DILocation(line: 616, column: 1, scope: !2481)
!2500 = distinct !DISubprogram(name: "kobject_name", scope: !101, file: !101, line: 88, type: !2501, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!68, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!2505 = !DILocalVariable(name: "kobj", arg: 1, scope: !2500, file: !101, line: 88, type: !2503)
!2506 = !DILocation(line: 88, column: 62, scope: !2500)
!2507 = !DILocation(line: 90, column: 9, scope: !2500)
!2508 = !DILocation(line: 90, column: 15, scope: !2500)
!2509 = !DILocation(line: 90, column: 2, scope: !2500)
!2510 = distinct !DISubprogram(name: "get_order", scope: !2511, file: !2511, line: 29, type: !2512, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2511 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!92, !86}
!2514 = !DILocalVariable(name: "x", arg: 1, scope: !2515, file: !2516, line: 366, type: !279)
!2515 = distinct !DISubprogram(name: "fls64", scope: !2516, file: !2516, line: 366, type: !2517, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2516 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!92, !279}
!2519 = !DILocation(line: 366, column: 40, scope: !2515, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 46, column: 9, scope: !2510)
!2521 = !DILocalVariable(name: "bitpos", scope: !2515, file: !2516, line: 368, type: !92)
!2522 = !DILocation(line: 368, column: 6, scope: !2515, inlinedAt: !2520)
!2523 = !DILocalVariable(name: "size", arg: 1, scope: !2510, file: !2511, line: 29, type: !86)
!2524 = !DILocation(line: 29, column: 63, scope: !2510)
!2525 = !DILocation(line: 31, column: 27, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2510, file: !2511, line: 31, column: 6)
!2527 = !DILocation(line: 31, column: 6, scope: !2526)
!2528 = !DILocation(line: 31, column: 6, scope: !2510)
!2529 = !DILocation(line: 32, column: 8, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !2511, line: 32, column: 7)
!2531 = distinct !DILexicalBlock(scope: !2526, file: !2511, line: 31, column: 34)
!2532 = !DILocation(line: 32, column: 7, scope: !2531)
!2533 = !DILocation(line: 33, column: 4, scope: !2530)
!2534 = !DILocation(line: 35, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !2511, line: 35, column: 7)
!2536 = !DILocation(line: 35, column: 12, scope: !2535)
!2537 = !DILocation(line: 35, column: 7, scope: !2531)
!2538 = !DILocation(line: 36, column: 4, scope: !2535)
!2539 = !DILocation(line: 38, column: 10, scope: !2531)
!2540 = !DILocation(line: 38, column: 28, scope: !2531)
!2541 = !DILocation(line: 38, column: 41, scope: !2531)
!2542 = !DILocation(line: 38, column: 3, scope: !2531)
!2543 = !DILocation(line: 41, column: 6, scope: !2510)
!2544 = !DILocation(line: 42, column: 7, scope: !2510)
!2545 = !DILocation(line: 46, column: 15, scope: !2510)
!2546 = !DILocation(line: 374, column: 2, scope: !2515, inlinedAt: !2520)
!2547 = !DILocation(line: 376, column: 14, scope: !2515, inlinedAt: !2520)
!2548 = !{i32 393248}
!2549 = !DILocation(line: 377, column: 9, scope: !2515, inlinedAt: !2520)
!2550 = !DILocation(line: 377, column: 16, scope: !2515, inlinedAt: !2520)
!2551 = !DILocation(line: 46, column: 2, scope: !2510)
!2552 = !DILocation(line: 48, column: 1, scope: !2510)
!2553 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2554, file: !2554, line: 30, type: !2555, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2554 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!92, !277}
!2557 = !DILocation(line: 366, column: 40, scope: !2515, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 32, column: 9, scope: !2553)
!2559 = !DILocation(line: 368, column: 6, scope: !2515, inlinedAt: !2558)
!2560 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !2554, line: 30, type: !277)
!2561 = !DILocation(line: 30, column: 21, scope: !2553)
!2562 = !DILocation(line: 32, column: 15, scope: !2553)
!2563 = !DILocation(line: 374, column: 2, scope: !2515, inlinedAt: !2558)
!2564 = !DILocation(line: 376, column: 14, scope: !2515, inlinedAt: !2558)
!2565 = !DILocation(line: 377, column: 9, scope: !2515, inlinedAt: !2558)
!2566 = !DILocation(line: 377, column: 16, scope: !2515, inlinedAt: !2558)
!2567 = !DILocation(line: 32, column: 18, scope: !2553)
!2568 = !DILocation(line: 32, column: 2, scope: !2553)
!2569 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2570, file: !2570, line: 137, type: !2571, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !132)
!2570 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!60, !1030, !1371, !206, !58}
!2573 = !DILocalVariable(name: "s", arg: 1, scope: !2569, file: !2570, line: 137, type: !1030)
!2574 = !DILocation(line: 137, column: 54, scope: !2569)
!2575 = !DILocalVariable(name: "object", arg: 2, scope: !2569, file: !2570, line: 137, type: !1371)
!2576 = !DILocation(line: 137, column: 69, scope: !2569)
!2577 = !DILocalVariable(name: "size", arg: 3, scope: !2569, file: !2570, line: 138, type: !206)
!2578 = !DILocation(line: 138, column: 12, scope: !2569)
!2579 = !DILocalVariable(name: "flags", arg: 4, scope: !2569, file: !2570, line: 138, type: !58)
!2580 = !DILocation(line: 138, column: 24, scope: !2569)
!2581 = !DILocation(line: 140, column: 17, scope: !2569)
!2582 = !DILocation(line: 140, column: 2, scope: !2569)
