; ModuleID = '../bcout/drivers/pnp/pnpacpi/core.llvm.bc'
source_filename = "drivers/pnp/pnpacpi/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall5.init\22, \22a\22\09"
module asm "__initcall_pnpacpi_init5:\09\09\09"
module asm ".long\09pnpacpi_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_card*, %struct.pnp_driver*, %struct.pnp_card_link*, %struct.pnp_id*, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, %struct.proc_dir_entry*, i8* }
%struct.pnp_protocol = type { %struct.list_head, i8*, {}*, {}*, {}*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnp_protocol*, %struct.pnp_id*, [50 x i8], i8, i8, i32, i8, %struct.proc_dir_entry* }
%struct.pnp_driver = type { i8*, %struct.pnp_device_id*, i32, i32 (%struct.pnp_dev*, %struct.pnp_device_id*)*, void (%struct.pnp_dev*)*, void (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, {}*, %struct.device_driver }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.pnp_card_link = type { %struct.pnp_card*, %struct.pnp_card_driver*, i8*, %struct.pm_message }
%struct.pnp_card_driver = type { %struct.list_head, i8*, %struct.pnp_card_device_id*, i32, i32 (%struct.pnp_card_link*, %struct.pnp_card_device_id*)*, void (%struct.pnp_card_link*)*, i32 (%struct.pnp_card_link*, i32)*, i32 (%struct.pnp_card_link*)*, %struct.pnp_driver }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.38] }
%struct.anon.38 = type { [8 x i8] }
%struct.pm_message = type { i32 }
%struct.pnp_id = type { [8 x i8], %struct.pnp_id* }
%struct.proc_dir_entry = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.44 }
%struct.anon.44 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.46, i32, i32, %struct.list_head }
%struct.anon.46 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.47, i8, i8, i32 }
%struct.anon.47 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_buffer = type { i64, i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_hardware_id = type { %struct.list_head, i8* }

@.str = private unnamed_addr constant [19 x i8] c"Plug and Play ACPI\00", align 1
@pnpacpi_protocol = dso_local global { %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head } { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i32 (%struct.pnp_dev*)* @pnpacpi_get_resources, i32 (%struct.pnp_dev*)* @pnpacpi_set_resources, i32 (%struct.pnp_dev*)* @pnpacpi_disable_resources, i1 (%struct.pnp_dev*)* @pnpacpi_can_wakeup, i32 (%struct.pnp_dev*, i32)* @pnpacpi_suspend, i32 (%struct.pnp_dev*)* @pnpacpi_resume, i8 0, %struct.device zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, align 8, !dbg !0
@__UNIQUE_ID___addressable_pnpacpi_init179 = internal global i8* bitcast (i32 ()* @pnpacpi_init to i8*), section ".discard.addressable", align 8, !dbg !2426
@__setup_str_pnpacpi_setup = internal constant [9 x i8] c"pnpacpi=\00", section ".init.rodata", align 1, !dbg !2443
@__setup_pnpacpi_setup = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__setup_str_pnpacpi_setup, i32 0, i32 0), i32 (i8*)* @pnpacpi_setup, i32 0 }, section ".init.setup", align 8, !dbg !2428
@pnpacpi_disabled = dso_local global i32 0, section ".init.data", align 4, !dbg !2439
@pnp_debug = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"get resources\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"set resources\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"drivers/pnp/pnpacpi/core.c\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_SRS\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1
@acpi_disabled = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"\016pnp: PnP ACPI: disabled\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\016pnp: PnP ACPI init\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\016pnp: PnP ACPI: found %d devices\0A\00", align 1
@num = internal global i32 0, align 4, !dbg !2441
@pnp_platform_devices = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [2 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pnpacpi_init179 to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_pnpacpi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_get_resources(%struct.pnp_dev* %dev) #0 !dbg !2592 {
entry:
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %tmp = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  %0 = load i32, i32* @pnp_debug, align 4, !dbg !2595
  %tobool = icmp ne i32 %0, 0, !dbg !2595
  br i1 %tobool, label %if.then, label %if.end, !dbg !2598

if.then:                                          ; preds = %entry
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2595
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 0, !dbg !2595
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.device* %dev1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2595
  br label %if.end, !dbg !2595

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %tmp, align 4, !dbg !2595
  %2 = load i32, i32* %tmp, align 4, !dbg !2598
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2599
  %call = call i32 @pnpacpi_parse_allocated_resource(%struct.pnp_dev* %3) #6, !dbg !2600
  ret i32 %call, !dbg !2601
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_set_resources(%struct.pnp_dev* %dev) #0 !dbg !2602 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %handle = alloca i8*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp3 = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp25 = alloca i64, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !2605, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !2607, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2609, metadata !DIExpression()), !dbg !2610
  store i32 0, i32* %ret, align 4, !dbg !2610
  %0 = load i32, i32* @pnp_debug, align 4, !dbg !2611
  %tobool = icmp ne i32 %0, 0, !dbg !2611
  br i1 %tobool, label %if.then, label %if.end, !dbg !2614

if.then:                                          ; preds = %entry
  %1 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2611
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %1, i32 0, i32 0, !dbg !2611
  call void (i8*, %struct.device*, i8*, ...) @dev_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.device* %dev1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2611
  br label %if.end, !dbg !2611

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %tmp, align 4, !dbg !2611
  %2 = load i32, i32* %tmp, align 4, !dbg !2614
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2615, metadata !DIExpression()), !dbg !2617
  %3 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2617
  %dev2 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %3, i32 0, i32 0, !dbg !2617
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 24, !dbg !2617
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2617
  store %struct.fwnode_handle* %4, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2617
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2617
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %5) #6, !dbg !2617
  br i1 %call, label %cond.true, label %cond.false, !dbg !2617

cond.true:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2618, metadata !DIExpression()), !dbg !2620
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2620
  %7 = bitcast %struct.fwnode_handle* %6 to i8*, !dbg !2620
  store i8* %7, i8** %__mptr, align 8, !dbg !2620
  br label %do.body, !dbg !2620

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2621

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !2620
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !2620
  %9 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2620
  store %struct.acpi_device* %9, %struct.acpi_device** %tmp4, align 8, !dbg !2621
  %10 = load %struct.acpi_device*, %struct.acpi_device** %tmp4, align 8, !dbg !2620
  br label %cond.end, !dbg !2617

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2617

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %10, %do.end ], [ null, %cond.false ], !dbg !2617
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp3, align 8, !dbg !2617
  %11 = load %struct.acpi_device*, %struct.acpi_device** %tmp3, align 8, !dbg !2617
  store %struct.acpi_device* %11, %struct.acpi_device** %acpi_dev, align 8, !dbg !2623
  %12 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2624
  %tobool5 = icmp ne %struct.acpi_device* %12, null, !dbg !2624
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2626

if.then6:                                         ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !2627
  br label %return, !dbg !2627

if.end7:                                          ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2629, metadata !DIExpression()), !dbg !2632
  %13 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2632
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2632
  %data = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 21, !dbg !2632
  %15 = load i8*, i8** %data, align 8, !dbg !2632
  %16 = bitcast i8* %15 to %struct.acpi_device*, !dbg !2632
  %cmp = icmp ne %struct.acpi_device* %13, %16, !dbg !2632
  %lnot = xor i1 %cmp, true, !dbg !2632
  %lnot8 = xor i1 %lnot, true, !dbg !2632
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !2632
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2632
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !2633
  %tobool9 = icmp ne i32 %17, 0, !dbg !2633
  %lnot10 = xor i1 %tobool9, true, !dbg !2633
  %lnot12 = xor i1 %lnot10, true, !dbg !2633
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !2633
  %conv = sext i32 %lnot.ext13 to i64, !dbg !2633
  %tobool14 = icmp ne i64 %conv, 0, !dbg !2633
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !2632

if.then15:                                        ; preds = %if.end7
  br label %do.body16, !dbg !2633

do.body16:                                        ; preds = %if.then15
  br label %do.body17, !dbg !2635

do.body17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !2637

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !2635

do.body19:                                        ; preds = %do.end18
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 63, i32 2307, i64 12) #7, !dbg !2639, !srcloc !2641
  br label %do.end20, !dbg !2639

do.end20:                                         ; preds = %do.body19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 170) #7, !dbg !2642, !srcloc !2644
  br label %do.body21, !dbg !2635

do.body21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !2645

do.end22:                                         ; preds = %do.body21
  br label %do.end23, !dbg !2635

do.end23:                                         ; preds = %do.end22
  br label %if.end24, !dbg !2635

if.end24:                                         ; preds = %do.end23, %if.end7
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !2632
  %tobool26 = icmp ne i32 %18, 0, !dbg !2632
  %lnot27 = xor i1 %tobool26, true, !dbg !2632
  %lnot29 = xor i1 %lnot27, true, !dbg !2632
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !2632
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !2632
  store i64 %conv31, i64* %tmp25, align 8, !dbg !2633
  %19 = load i64, i64* %tmp25, align 8, !dbg !2632
  %tobool32 = icmp ne i64 %19, 0, !dbg !2647
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !2648

if.then33:                                        ; preds = %if.end24
  %20 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2649
  %21 = bitcast %struct.acpi_device* %20 to i8*, !dbg !2649
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2650
  %data34 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 21, !dbg !2651
  store i8* %21, i8** %data34, align 8, !dbg !2652
  br label %if.end35, !dbg !2650

if.end35:                                         ; preds = %if.then33, %if.end24
  %23 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2653
  %handle36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 1, !dbg !2654
  %24 = load i8*, i8** %handle36, align 8, !dbg !2654
  store i8* %24, i8** %handle, align 8, !dbg !2655
  %25 = load i8*, i8** %handle, align 8, !dbg !2656
  %call37 = call zeroext i1 @acpi_has_method(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2658
  br i1 %call37, label %if.then38, label %if.end51, !dbg !2659

if.then38:                                        ; preds = %if.end35
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !2660, metadata !DIExpression()), !dbg !2667
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2668
  %call39 = call i32 @pnpacpi_build_resource_template(%struct.pnp_dev* %26, %struct.acpi_buffer* %buffer) #6, !dbg !2669
  store i32 %call39, i32* %ret, align 4, !dbg !2670
  %27 = load i32, i32* %ret, align 4, !dbg !2671
  %tobool40 = icmp ne i32 %27, 0, !dbg !2671
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2673

if.then41:                                        ; preds = %if.then38
  %28 = load i32, i32* %ret, align 4, !dbg !2674
  store i32 %28, i32* %retval, align 4, !dbg !2675
  br label %return, !dbg !2675

if.end42:                                         ; preds = %if.then38
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2676
  %call43 = call i32 @pnpacpi_encode_resources(%struct.pnp_dev* %29, %struct.acpi_buffer* %buffer) #6, !dbg !2677
  store i32 %call43, i32* %ret, align 4, !dbg !2678
  %30 = load i32, i32* %ret, align 4, !dbg !2679
  %tobool44 = icmp ne i32 %30, 0, !dbg !2679
  br i1 %tobool44, label %if.end50, label %if.then45, !dbg !2681

if.then45:                                        ; preds = %if.end42
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2682, metadata !DIExpression()), !dbg !2684
  %31 = load i8*, i8** %handle, align 8, !dbg !2685
  %call46 = call i32 @acpi_set_current_resources(i8* %31, %struct.acpi_buffer* %buffer) #6, !dbg !2686
  store i32 %call46, i32* %status, align 4, !dbg !2687
  %32 = load i32, i32* %status, align 4, !dbg !2688
  %tobool47 = icmp ne i32 %32, 0, !dbg !2688
  br i1 %tobool47, label %if.then48, label %if.end49, !dbg !2690

if.then48:                                        ; preds = %if.then45
  store i32 -5, i32* %ret, align 4, !dbg !2691
  br label %if.end49, !dbg !2692

if.end49:                                         ; preds = %if.then48, %if.then45
  br label %if.end50, !dbg !2693

if.end50:                                         ; preds = %if.end49, %if.end42
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !2694
  %33 = load i8*, i8** %pointer, align 8, !dbg !2694
  call void @kfree(i8* %33) #6, !dbg !2695
  br label %if.end51, !dbg !2696

if.end51:                                         ; preds = %if.end50, %if.end35
  %34 = load i32, i32* %ret, align 4, !dbg !2697
  %tobool52 = icmp ne i32 %34, 0, !dbg !2697
  br i1 %tobool52, label %if.end57, label %land.lhs.true, !dbg !2699

land.lhs.true:                                    ; preds = %if.end51
  %35 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2700
  %call53 = call zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %35) #6, !dbg !2701
  br i1 %call53, label %if.then55, label %if.end57, !dbg !2702

if.then55:                                        ; preds = %land.lhs.true
  %36 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2703
  %call56 = call i32 @acpi_device_set_power(%struct.acpi_device* %36, i32 0) #6, !dbg !2704
  store i32 %call56, i32* %ret, align 4, !dbg !2705
  br label %if.end57, !dbg !2706

if.end57:                                         ; preds = %if.then55, %land.lhs.true, %if.end51
  %37 = load i32, i32* %ret, align 4, !dbg !2707
  store i32 %37, i32* %retval, align 4, !dbg !2708
  br label %return, !dbg !2708

return:                                           ; preds = %if.end57, %if.then41, %if.then6
  %38 = load i32, i32* %retval, align 4, !dbg !2709
  ret i32 %38, !dbg !2709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_disable_resources(%struct.pnp_dev* %dev) #0 !dbg !2710 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %status = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2715, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2717, metadata !DIExpression()), !dbg !2719
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2719
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 0, !dbg !2719
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 24, !dbg !2719
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2719
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2719
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2719
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #6, !dbg !2719
  br i1 %call, label %cond.true, label %cond.false, !dbg !2719

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2720, metadata !DIExpression()), !dbg !2722
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2722
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !2722
  store i8* %4, i8** %__mptr, align 8, !dbg !2722
  br label %do.body, !dbg !2722

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2723

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2722
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !2722
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2722
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !2723
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !2722
  br label %cond.end, !dbg !2719

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2719

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !2719
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2719
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2719
  store %struct.acpi_device* %8, %struct.acpi_device** %acpi_dev, align 8, !dbg !2725
  %9 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2726
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !2726
  br i1 %tobool, label %if.end, label %if.then, !dbg !2728

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !2729
  br label %return, !dbg !2729

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2731
  %call3 = call zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %10) #6, !dbg !2733
  br i1 %call3, label %if.then4, label %if.end6, !dbg !2734

if.then4:                                         ; preds = %if.end
  %11 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2735
  %call5 = call i32 @acpi_device_set_power(%struct.acpi_device* %11, i32 4) #6, !dbg !2736
  br label %if.end6, !dbg !2736

if.end6:                                          ; preds = %if.then4, %if.end
  %12 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2737
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 1, !dbg !2738
  %13 = load i8*, i8** %handle, align 8, !dbg !2738
  %call7 = call i32 @acpi_evaluate_object(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* null) #6, !dbg !2739
  store i32 %call7, i32* %status, align 4, !dbg !2740
  %14 = load i32, i32* %status, align 4, !dbg !2741
  %tobool8 = icmp ne i32 %14, 0, !dbg !2741
  br i1 %tobool8, label %land.lhs.true, label %if.end10, !dbg !2743

land.lhs.true:                                    ; preds = %if.end6
  %15 = load i32, i32* %status, align 4, !dbg !2744
  %cmp = icmp ne i32 %15, 5, !dbg !2745
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !2746

if.then9:                                         ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !2747
  br label %return, !dbg !2747

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !2748
  br label %return, !dbg !2748

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !2749
  ret i32 %16, !dbg !2749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pnpacpi_can_wakeup(%struct.pnp_dev* %dev) #0 !dbg !2750 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2755, metadata !DIExpression()), !dbg !2757
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2757
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 0, !dbg !2757
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 24, !dbg !2757
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2757
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2757
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2757
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #6, !dbg !2757
  br i1 %call, label %cond.true, label %cond.false, !dbg !2757

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2758, metadata !DIExpression()), !dbg !2760
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2760
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !2760
  store i8* %4, i8** %__mptr, align 8, !dbg !2760
  br label %do.body, !dbg !2760

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2761

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2760
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !2760
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2760
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !2761
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !2760
  br label %cond.end, !dbg !2757

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2757

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !2757
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2757
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2757
  store %struct.acpi_device* %8, %struct.acpi_device** %acpi_dev, align 8, !dbg !2754
  %9 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2763
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !2763
  br i1 %tobool, label %if.end, label %if.then, !dbg !2765

if.then:                                          ; preds = %cond.end
  store i1 false, i1* %retval, align 1, !dbg !2766
  br label %return, !dbg !2766

if.end:                                           ; preds = %cond.end
  %10 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2768
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 1, !dbg !2769
  %11 = load i8*, i8** %handle, align 8, !dbg !2769
  %call3 = call zeroext i1 @acpi_bus_can_wakeup(i8* %11) #6, !dbg !2770
  store i1 %call3, i1* %retval, align 1, !dbg !2771
  br label %return, !dbg !2771

return:                                           ; preds = %if.end, %if.then
  %12 = load i1, i1* %retval, align 1, !dbg !2772
  ret i1 %12, !dbg !2772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_suspend(%struct.pnp_dev* %dev, i32 %state.coerce) #0 !dbg !2773 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  %error = alloca i32, align 4
  %power_state = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0
  store i32 %state.coerce, i32* %coerce.dive, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.declare(metadata %struct.pm_message* %state, metadata !2776, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2780, metadata !DIExpression()), !dbg !2782
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2782
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 0, !dbg !2782
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 24, !dbg !2782
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2782
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2782
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2782
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #6, !dbg !2782
  br i1 %call, label %cond.true, label %cond.false, !dbg !2782

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2783, metadata !DIExpression()), !dbg !2785
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2785
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !2785
  store i8* %4, i8** %__mptr, align 8, !dbg !2785
  br label %do.body, !dbg !2785

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2786

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2785
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !2785
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2785
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !2786
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !2785
  br label %cond.end, !dbg !2782

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2782

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !2782
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2782
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2782
  store %struct.acpi_device* %8, %struct.acpi_device** %acpi_dev, align 8, !dbg !2779
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2788, metadata !DIExpression()), !dbg !2789
  store i32 0, i32* %error, align 4, !dbg !2789
  %9 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2790
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !2790
  br i1 %tobool, label %if.end, label %if.then, !dbg !2792

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !2793
  br label %return, !dbg !2793

if.end:                                           ; preds = %cond.end
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2795
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 0, !dbg !2797
  %call4 = call zeroext i1 @device_can_wakeup(%struct.device* %dev3) #6, !dbg !2798
  br i1 %call4, label %if.then5, label %if.end13, !dbg !2799

if.then5:                                         ; preds = %if.end
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2800
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !2802
  %12 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2803
  %dev7 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %12, i32 0, i32 0, !dbg !2804
  %call8 = call zeroext i1 @device_may_wakeup(%struct.device* %dev7) #6, !dbg !2805
  %call9 = call i32 @acpi_pm_set_device_wakeup(%struct.device* %dev6, i1 zeroext %call8) #6, !dbg !2806
  store i32 %call9, i32* %error, align 4, !dbg !2807
  %13 = load i32, i32* %error, align 4, !dbg !2808
  %tobool10 = icmp ne i32 %13, 0, !dbg !2808
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2810

if.then11:                                        ; preds = %if.then5
  %14 = load i32, i32* %error, align 4, !dbg !2811
  store i32 %14, i32* %retval, align 4, !dbg !2812
  br label %return, !dbg !2812

if.end12:                                         ; preds = %if.then5
  br label %if.end13, !dbg !2813

if.end13:                                         ; preds = %if.end12, %if.end
  %15 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2814
  %call14 = call zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %15) #6, !dbg !2816
  br i1 %call14, label %if.then15, label %if.end23, !dbg !2817

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %power_state, metadata !2818, metadata !DIExpression()), !dbg !2820
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2821
  %dev16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 0, !dbg !2822
  %call17 = call i32 @acpi_pm_device_sleep_state(%struct.device* %dev16, i32* null, i32 4) #6, !dbg !2823
  store i32 %call17, i32* %power_state, align 4, !dbg !2820
  %17 = load i32, i32* %power_state, align 4, !dbg !2824
  %cmp = icmp slt i32 %17, 0, !dbg !2826
  br i1 %cmp, label %if.then18, label %if.end21, !dbg !2827

if.then18:                                        ; preds = %if.then15
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %state, i32 0, i32 0, !dbg !2828
  %18 = load i32, i32* %event, align 4, !dbg !2828
  %cmp19 = icmp eq i32 %18, 0, !dbg !2829
  %19 = zext i1 %cmp19 to i64, !dbg !2830
  %cond20 = select i1 %cmp19, i32 0, i32 4, !dbg !2830
  store i32 %cond20, i32* %power_state, align 4, !dbg !2831
  br label %if.end21, !dbg !2832

if.end21:                                         ; preds = %if.then18, %if.then15
  %20 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2833
  %21 = load i32, i32* %power_state, align 4, !dbg !2834
  %call22 = call i32 @acpi_device_set_power(%struct.acpi_device* %20, i32 %21) #6, !dbg !2835
  store i32 %call22, i32* %error, align 4, !dbg !2836
  br label %if.end23, !dbg !2837

if.end23:                                         ; preds = %if.end21, %if.end13
  %22 = load i32, i32* %error, align 4, !dbg !2838
  store i32 %22, i32* %retval, align 4, !dbg !2839
  br label %return, !dbg !2839

return:                                           ; preds = %if.end23, %if.then11, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !2840
  ret i32 %23, !dbg !2840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_resume(%struct.pnp_dev* %dev) #0 !dbg !2841 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pnp_dev*, align 8
  %acpi_dev = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  %error = alloca i32, align 4
  store %struct.pnp_dev* %dev, %struct.pnp_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev.addr, metadata !2842, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %acpi_dev, metadata !2844, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2846, metadata !DIExpression()), !dbg !2848
  %0 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2848
  %dev1 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %0, i32 0, i32 0, !dbg !2848
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 24, !dbg !2848
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2848
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2848
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2848
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #6, !dbg !2848
  br i1 %call, label %cond.true, label %cond.false, !dbg !2848

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2849, metadata !DIExpression()), !dbg !2851
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2851
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !2851
  store i8* %4, i8** %__mptr, align 8, !dbg !2851
  br label %do.body, !dbg !2851

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2852

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2851
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !2851
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2851
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !2852
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !2851
  br label %cond.end, !dbg !2848

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2848

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !2848
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2848
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2848
  store %struct.acpi_device* %8, %struct.acpi_device** %acpi_dev, align 8, !dbg !2845
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2854, metadata !DIExpression()), !dbg !2855
  store i32 0, i32* %error, align 4, !dbg !2855
  %9 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2856
  %tobool = icmp ne %struct.acpi_device* %9, null, !dbg !2856
  br i1 %tobool, label %if.end, label %if.then, !dbg !2858

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !2859
  br label %return, !dbg !2859

if.end:                                           ; preds = %cond.end
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2861
  %dev3 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 0, !dbg !2863
  %call4 = call zeroext i1 @device_may_wakeup(%struct.device* %dev3) #6, !dbg !2864
  br i1 %call4, label %if.then5, label %if.end8, !dbg !2865

if.then5:                                         ; preds = %if.end
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev.addr, align 8, !dbg !2866
  %dev6 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !2867
  %call7 = call i32 @acpi_pm_set_device_wakeup(%struct.device* %dev6, i1 zeroext false) #6, !dbg !2868
  br label %if.end8, !dbg !2868

if.end8:                                          ; preds = %if.then5, %if.end
  %12 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2869
  %call9 = call zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %12) #6, !dbg !2871
  br i1 %call9, label %if.then10, label %if.end12, !dbg !2872

if.then10:                                        ; preds = %if.end8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %acpi_dev, align 8, !dbg !2873
  %call11 = call i32 @acpi_device_set_power(%struct.acpi_device* %13, i32 0) #6, !dbg !2874
  store i32 %call11, i32* %error, align 4, !dbg !2875
  br label %if.end12, !dbg !2876

if.end12:                                         ; preds = %if.then10, %if.end8
  %14 = load i32, i32* %error, align 4, !dbg !2877
  store i32 %14, i32* %retval, align 4, !dbg !2878
  br label %return, !dbg !2878

return:                                           ; preds = %if.end12, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2879
  ret i32 %15, !dbg !2879
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_init() #1 section ".init.text" !dbg !2880 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @acpi_disabled, align 4, !dbg !2883
  %tobool = icmp ne i32 %0, 0, !dbg !2883
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2885

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @pnpacpi_disabled, align 4, !dbg !2886
  %tobool1 = icmp ne i32 %1, 0, !dbg !2886
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2887

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !2888
  store i32 0, i32* %retval, align 4, !dbg !2890
  br label %return, !dbg !2890

if.end:                                           ; preds = %lor.lhs.false
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !2891
  %call3 = call i32 @pnp_register_protocol(%struct.pnp_protocol* bitcast ({ %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }* @pnpacpi_protocol to %struct.pnp_protocol*)) #6, !dbg !2892
  %call4 = call i32 @acpi_get_devices(i8* null, i32 (i8*, i32, i8*, i8**)* @pnpacpi_add_device_handler, i8* null, i8** null) #6, !dbg !2893
  %2 = load i32, i32* @num, align 4, !dbg !2894
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %2) #5, !dbg !2895
  store i32 1, i32* @pnp_platform_devices, align 4, !dbg !2896
  store i32 0, i32* %retval, align 4, !dbg !2897
  br label %return, !dbg !2897

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !2898
  ret i32 %3, !dbg !2898
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_setup(i8* %str) #1 section ".init.text" !dbg !2899 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !2900, metadata !DIExpression()), !dbg !2901
  %0 = load i8*, i8** %str.addr, align 8, !dbg !2902
  %cmp = icmp eq i8* %0, null, !dbg !2904
  br i1 %cmp, label %if.then, label %if.end, !dbg !2905

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2906
  br label %return, !dbg !2906

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !dbg !2907
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64 3) #6, !dbg !2909
  %tobool = icmp ne i32 %call, 0, !dbg !2909
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2910

if.then1:                                         ; preds = %if.end
  store i32 1, i32* @pnpacpi_disabled, align 4, !dbg !2911
  br label %if.end2, !dbg !2912

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 1, i32* %retval, align 4, !dbg !2913
  br label %return, !dbg !2913

return:                                           ; preds = %if.end2, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2914
  ret i32 %2, !dbg !2914
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone
declare dso_local void @dev_printk(i8*, %struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pnpacpi_parse_allocated_resource(%struct.pnp_dev*) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_has_method(i8*, i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @pnpacpi_build_resource_template(%struct.pnp_dev*, %struct.acpi_buffer*) #4

; Function Attrs: noredzone
declare dso_local i32 @pnpacpi_encode_resources(%struct.pnp_dev*, %struct.acpi_buffer*) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_set_current_resources(i8*, %struct.acpi_buffer*) #4

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_device_power_manageable(%struct.acpi_device* %adev) #0 !dbg !2915 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !2918, metadata !DIExpression()), !dbg !2919
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !2920
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 9, !dbg !2921
  %1 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !2922
  %bf.load = load i32, i32* %1, align 4, !dbg !2922
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2922
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2922
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2920
  ret i1 %tobool, !dbg !2923
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_device_set_power(%struct.acpi_device*, i32) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_bus_can_wakeup(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_can_wakeup(%struct.device* %dev) #0 !dbg !2924 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2927, metadata !DIExpression()), !dbg !2928
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2929
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2930
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2931
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2931
  %bf.clear = and i16 %bf.load, 1, !dbg !2931
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2931
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2929
  ret i1 %tobool, !dbg !2932
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_pm_set_device_wakeup(%struct.device*, i1 zeroext) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !2933 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2934, metadata !DIExpression()), !dbg !2935
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2936
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2937
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2938
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2938
  %bf.clear = and i16 %bf.load, 1, !dbg !2938
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2938
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2936
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2939

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2940
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !2941
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2942
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2942
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !2943
  %lnot = xor i1 %tobool2, true, !dbg !2943
  %lnot3 = xor i1 %lnot, true, !dbg !2944
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2945
  ret i1 %3, !dbg !2946
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_pm_device_sleep_state(%struct.device*, i32*, i32) #4

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pnp_register_protocol(%struct.pnp_protocol*) #4

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_devices(i8*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_add_device_handler(i8* %handle, i32 %lvl, i8* %context, i8** %rv) #1 section ".init.text" !dbg !2947 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %rv.addr = alloca i8**, align 8
  %device = alloca %struct.acpi_device*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !2951, metadata !DIExpression()), !dbg !2952
  store i32 %lvl, i32* %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lvl.addr, metadata !2953, metadata !DIExpression()), !dbg !2954
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i8** %rv, i8*** %rv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %rv.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device, metadata !2959, metadata !DIExpression()), !dbg !2960
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !2961
  %call = call i32 @acpi_bus_get_device(i8* %0, %struct.acpi_device** %device) #6, !dbg !2963
  %tobool = icmp ne i32 %call, 0, !dbg !2963
  br i1 %tobool, label %if.then, label %if.end, !dbg !2964

if.then:                                          ; preds = %entry
  store i32 16390, i32* %retval, align 4, !dbg !2965
  br label %return, !dbg !2965

if.end:                                           ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2966
  %call1 = call zeroext i1 @acpi_is_pnp_device(%struct.acpi_device* %1) #6, !dbg !2968
  br i1 %call1, label %if.then2, label %if.end4, !dbg !2969

if.then2:                                         ; preds = %if.end
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !2970
  %call3 = call i32 @pnpacpi_add_device(%struct.acpi_device* %2) #5, !dbg !2971
  br label %if.end4, !dbg !2971

if.end4:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %retval, align 4, !dbg !2972
  br label %return, !dbg !2972

return:                                           ; preds = %if.end4, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !2973
  ret i32 %3, !dbg !2973
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_is_pnp_device(%struct.acpi_device*) #4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pnpacpi_add_device(%struct.acpi_device* %device) #1 section ".init.text" !dbg !2974 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.acpi_device*, align 8
  %dev = alloca %struct.pnp_dev*, align 8
  %pnpid = alloca i8*, align 8
  %id = alloca %struct.acpi_hardware_id*, align 8
  %error = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_hardware_id*, align 8
  %__mptr90 = alloca i8*, align 8
  %tmp95 = alloca %struct.acpi_hardware_id*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.declare(metadata %struct.pnp_dev** %dev, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata i8** %pnpid, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata %struct.acpi_hardware_id** %id, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.declare(metadata i32* %error, metadata !2983, metadata !DIExpression()), !dbg !2984
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2985
  %physical_node_count = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 22, !dbg !2987
  %1 = load i32, i32* %physical_node_count, align 8, !dbg !2987
  %tobool = icmp ne i32 %1, 0, !dbg !2985
  br i1 %tobool, label %if.then, label %if.end, !dbg !2988

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2989
  br label %return, !dbg !2989

if.end:                                           ; preds = %entry
  %2 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2990
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %2, i32 0, i32 1, !dbg !2992
  %3 = load i8*, i8** %handle, align 8, !dbg !2992
  %call = call zeroext i1 @acpi_has_method(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2993
  br i1 %call, label %if.end2, label %if.then1, !dbg !2994

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2995
  br label %return, !dbg !2995

if.end2:                                          ; preds = %if.end
  %4 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !2996
  %call3 = call i8* @pnpacpi_get_id(%struct.acpi_device* %4) #5, !dbg !2997
  store i8* %call3, i8** %pnpid, align 8, !dbg !2998
  %5 = load i8*, i8** %pnpid, align 8, !dbg !2999
  %tobool4 = icmp ne i8* %5, null, !dbg !2999
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !3001

if.then5:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !3002
  br label %return, !dbg !3002

if.end6:                                          ; preds = %if.end2
  %6 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3003
  %status = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %6, i32 0, i32 8, !dbg !3005
  %7 = bitcast %struct.acpi_device_status* %status to i32*, !dbg !3006
  %bf.load = load i32, i32* %7, align 8, !dbg !3006
  %bf.clear = and i32 %bf.load, 1, !dbg !3006
  %tobool7 = icmp ne i32 %bf.clear, 0, !dbg !3003
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3007

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4, !dbg !3008
  br label %return, !dbg !3008

if.end9:                                          ; preds = %if.end6
  %8 = load i32, i32* @num, align 4, !dbg !3009
  %9 = load i8*, i8** %pnpid, align 8, !dbg !3010
  %call10 = call %struct.pnp_dev* @pnp_alloc_dev(%struct.pnp_protocol* bitcast ({ %struct.list_head, i8*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)*, i1 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*, i32)*, i32 (%struct.pnp_dev*)*, i8, %struct.device, %struct.list_head, %struct.list_head }* @pnpacpi_protocol to %struct.pnp_protocol*), i32 %8, i8* %9) #6, !dbg !3011
  store %struct.pnp_dev* %call10, %struct.pnp_dev** %dev, align 8, !dbg !3012
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3013
  %tobool11 = icmp ne %struct.pnp_dev* %10, null, !dbg !3013
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3015

if.then12:                                        ; preds = %if.end9
  store i32 -12, i32* %retval, align 4, !dbg !3016
  br label %return, !dbg !3016

if.end13:                                         ; preds = %if.end9
  %11 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3017
  %dev14 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %11, i32 0, i32 0, !dbg !3017
  %12 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3017
  %tobool15 = icmp ne %struct.acpi_device* %12, null, !dbg !3017
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !3017

cond.true:                                        ; preds = %if.end13
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3017
  %call16 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %13) #6, !dbg !3017
  br label %cond.end, !dbg !3017

cond.false:                                       ; preds = %if.end13
  br label %cond.end, !dbg !3017

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %call16, %cond.true ], [ null, %cond.false ], !dbg !3017
  call void @set_primary_fwnode(%struct.device* %dev14, %struct.fwnode_handle* %cond) #6, !dbg !3017
  %14 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3018
  %15 = bitcast %struct.acpi_device* %14 to i8*, !dbg !3018
  %16 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3019
  %data = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %16, i32 0, i32 21, !dbg !3020
  store i8* %15, i8** %data, align 8, !dbg !3021
  %17 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3022
  %status17 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 8, !dbg !3023
  %18 = bitcast %struct.acpi_device_status* %status17 to i32*, !dbg !3024
  %bf.load18 = load i32, i32* %18, align 8, !dbg !3024
  %bf.lshr = lshr i32 %bf.load18, 1, !dbg !3024
  %bf.clear19 = and i32 %bf.lshr, 1, !dbg !3024
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3025
  %active = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 13, !dbg !3026
  store i32 %bf.clear19, i32* %active, align 8, !dbg !3027
  %20 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3028
  %handle20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 1, !dbg !3030
  %21 = load i8*, i8** %handle20, align 8, !dbg !3030
  %call21 = call zeroext i1 @acpi_has_method(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3031
  br i1 %call21, label %if.then22, label %if.end23, !dbg !3032

if.then22:                                        ; preds = %cond.end
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3033
  %capabilities = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %22, i32 0, i32 14, !dbg !3034
  %23 = load i32, i32* %capabilities, align 4, !dbg !3035
  %or = or i32 %23, 8, !dbg !3035
  store i32 %or, i32* %capabilities, align 4, !dbg !3035
  br label %if.end23, !dbg !3033

if.end23:                                         ; preds = %if.then22, %cond.end
  %24 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3036
  %capabilities24 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %24, i32 0, i32 14, !dbg !3037
  %25 = load i32, i32* %capabilities24, align 4, !dbg !3038
  %or25 = or i32 %25, 1, !dbg !3038
  store i32 %or25, i32* %capabilities24, align 4, !dbg !3038
  %26 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3039
  %flags = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 9, !dbg !3041
  %27 = bitcast %struct.acpi_device_flags* %flags to i32*, !dbg !3042
  %bf.load26 = load i32, i32* %27, align 4, !dbg !3042
  %bf.clear27 = and i32 %bf.load26, 1, !dbg !3042
  %tobool28 = icmp ne i32 %bf.clear27, 0, !dbg !3039
  br i1 %tobool28, label %land.lhs.true, label %if.end34, !dbg !3043

land.lhs.true:                                    ; preds = %if.end23
  %28 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3044
  %capabilities29 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %28, i32 0, i32 14, !dbg !3045
  %29 = load i32, i32* %capabilities29, align 4, !dbg !3045
  %and = and i32 %29, 8, !dbg !3046
  %tobool30 = icmp ne i32 %and, 0, !dbg !3046
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !3047

if.then31:                                        ; preds = %land.lhs.true
  %30 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3048
  %capabilities32 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %30, i32 0, i32 14, !dbg !3049
  %31 = load i32, i32* %capabilities32, align 4, !dbg !3050
  %or33 = or i32 %31, 2, !dbg !3050
  store i32 %or33, i32* %capabilities32, align 4, !dbg !3050
  br label %if.end34, !dbg !3048

if.end34:                                         ; preds = %if.then31, %land.lhs.true, %if.end23
  %32 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3051
  %flags35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 9, !dbg !3053
  %33 = bitcast %struct.acpi_device_flags* %flags35 to i32*, !dbg !3054
  %bf.load36 = load i32, i32* %33, align 4, !dbg !3054
  %bf.lshr37 = lshr i32 %bf.load36, 1, !dbg !3054
  %bf.clear38 = and i32 %bf.lshr37, 1, !dbg !3054
  %tobool39 = icmp ne i32 %bf.clear38, 0, !dbg !3051
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !3055

if.then40:                                        ; preds = %if.end34
  %34 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3056
  %capabilities41 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %34, i32 0, i32 14, !dbg !3057
  %35 = load i32, i32* %capabilities41, align 4, !dbg !3058
  %or42 = or i32 %35, 16, !dbg !3058
  store i32 %or42, i32* %capabilities41, align 4, !dbg !3058
  br label %if.end43, !dbg !3056

if.end43:                                         ; preds = %if.then40, %if.end34
  %36 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3059
  %handle44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 1, !dbg !3061
  %37 = load i8*, i8** %handle44, align 8, !dbg !3061
  %call45 = call zeroext i1 @acpi_has_method(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3062
  br i1 %call45, label %if.then46, label %if.end49, !dbg !3063

if.then46:                                        ; preds = %if.end43
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3064
  %capabilities47 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %38, i32 0, i32 14, !dbg !3065
  %39 = load i32, i32* %capabilities47, align 4, !dbg !3066
  %or48 = or i32 %39, 4, !dbg !3066
  store i32 %or48, i32* %capabilities47, align 4, !dbg !3066
  br label %if.end49, !dbg !3064

if.end49:                                         ; preds = %if.then46, %if.end43
  %40 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3067
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 10, !dbg !3067
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 5, !dbg !3067
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %device_name, i64 0, i64 0, !dbg !3067
  %call50 = call i64 @strlen(i8* %arraydecay) #6, !dbg !3069
  %tobool51 = icmp ne i64 %call50, 0, !dbg !3069
  br i1 %tobool51, label %if.then52, label %if.else, !dbg !3070

if.then52:                                        ; preds = %if.end49
  %41 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3071
  %name = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %41, i32 0, i32 18, !dbg !3072
  %arraydecay53 = getelementptr inbounds [50 x i8], [50 x i8]* %name, i64 0, i64 0, !dbg !3071
  %42 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3073
  %pnp54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 10, !dbg !3073
  %device_name55 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp54, i32 0, i32 5, !dbg !3073
  %arraydecay56 = getelementptr inbounds [40 x i8], [40 x i8]* %device_name55, i64 0, i64 0, !dbg !3073
  %call57 = call i8* @strncpy(i8* %arraydecay53, i8* %arraydecay56, i64 50) #6, !dbg !3074
  br label %if.end63, !dbg !3074

if.else:                                          ; preds = %if.end49
  %43 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3075
  %name58 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %43, i32 0, i32 18, !dbg !3076
  %arraydecay59 = getelementptr inbounds [50 x i8], [50 x i8]* %name58, i64 0, i64 0, !dbg !3075
  %44 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3077
  %pnp60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 10, !dbg !3077
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp60, i32 0, i32 0, !dbg !3077
  %arraydecay61 = getelementptr inbounds [8 x i8], [8 x i8]* %bus_id, i64 0, i64 0, !dbg !3077
  %call62 = call i8* @strncpy(i8* %arraydecay59, i8* %arraydecay61, i64 50) #6, !dbg !3078
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then52
  %45 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3079
  %active64 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %45, i32 0, i32 13, !dbg !3081
  %46 = load i32, i32* %active64, align 8, !dbg !3081
  %tobool65 = icmp ne i32 %46, 0, !dbg !3079
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !3082

if.then66:                                        ; preds = %if.end63
  %47 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3083
  %call67 = call i32 @pnpacpi_parse_allocated_resource(%struct.pnp_dev* %47) #6, !dbg !3084
  br label %if.end68, !dbg !3084

if.end68:                                         ; preds = %if.then66, %if.end63
  %48 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3085
  %capabilities69 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %48, i32 0, i32 14, !dbg !3087
  %49 = load i32, i32* %capabilities69, align 4, !dbg !3087
  %and70 = and i32 %49, 8, !dbg !3088
  %tobool71 = icmp ne i32 %and70, 0, !dbg !3088
  br i1 %tobool71, label %if.then72, label %if.end74, !dbg !3089

if.then72:                                        ; preds = %if.end68
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3090
  %call73 = call i32 @pnpacpi_parse_resource_option_data(%struct.pnp_dev* %50) #6, !dbg !3091
  br label %if.end74, !dbg !3091

if.end74:                                         ; preds = %if.then72, %if.end68
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3092, metadata !DIExpression()), !dbg !3095
  %51 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3095
  %pnp75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 10, !dbg !3095
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp75, i32 0, i32 4, !dbg !3095
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ids, i32 0, i32 0, !dbg !3095
  %52 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3095
  %53 = bitcast %struct.list_head* %52 to i8*, !dbg !3095
  store i8* %53, i8** %__mptr, align 8, !dbg !3095
  br label %do.body, !dbg !3095

do.body:                                          ; preds = %if.end74
  br label %do.end, !dbg !3096

do.end:                                           ; preds = %do.body
  %54 = load i8*, i8** %__mptr, align 8, !dbg !3095
  %add.ptr = getelementptr i8, i8* %54, i64 0, !dbg !3095
  %55 = bitcast i8* %add.ptr to %struct.acpi_hardware_id*, !dbg !3095
  store %struct.acpi_hardware_id* %55, %struct.acpi_hardware_id** %tmp, align 8, !dbg !3096
  %56 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp, align 8, !dbg !3095
  store %struct.acpi_hardware_id* %56, %struct.acpi_hardware_id** %id, align 8, !dbg !3098
  br label %for.cond, !dbg !3098

for.cond:                                         ; preds = %do.end94, %do.end
  %57 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3099
  %list = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %57, i32 0, i32 0, !dbg !3099
  %58 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3099
  %pnp76 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 10, !dbg !3099
  %ids77 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp76, i32 0, i32 4, !dbg !3099
  %cmp = icmp eq %struct.list_head* %list, %ids77, !dbg !3099
  %lnot = xor i1 %cmp, true, !dbg !3099
  br i1 %lnot, label %for.body, label %for.end, !dbg !3098

for.body:                                         ; preds = %for.cond
  %59 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3101
  %id78 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %59, i32 0, i32 1, !dbg !3104
  %60 = load i8*, i8** %id78, align 8, !dbg !3104
  %61 = load i8*, i8** %pnpid, align 8, !dbg !3105
  %call79 = call i32 @strcmp(i8* %60, i8* %61) #6, !dbg !3106
  %tobool80 = icmp ne i32 %call79, 0, !dbg !3106
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !3107

if.then81:                                        ; preds = %for.body
  br label %for.inc, !dbg !3108

if.end82:                                         ; preds = %for.body
  %62 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3109
  %id83 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %62, i32 0, i32 1, !dbg !3111
  %63 = load i8*, i8** %id83, align 8, !dbg !3111
  %call84 = call i32 @ispnpidacpi(i8* %63) #5, !dbg !3112
  %tobool85 = icmp ne i32 %call84, 0, !dbg !3112
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !3113

if.then86:                                        ; preds = %if.end82
  br label %for.inc, !dbg !3114

if.end87:                                         ; preds = %if.end82
  %64 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3115
  %65 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3116
  %id88 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %65, i32 0, i32 1, !dbg !3117
  %66 = load i8*, i8** %id88, align 8, !dbg !3117
  %call89 = call %struct.pnp_id* @pnp_add_id(%struct.pnp_dev* %64, i8* %66) #6, !dbg !3118
  br label %for.inc, !dbg !3119

for.inc:                                          ; preds = %if.end87, %if.then86, %if.then81
  call void @llvm.dbg.declare(metadata i8** %__mptr90, metadata !3120, metadata !DIExpression()), !dbg !3122
  %67 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3122
  %list91 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %67, i32 0, i32 0, !dbg !3122
  %next92 = getelementptr inbounds %struct.list_head, %struct.list_head* %list91, i32 0, i32 0, !dbg !3122
  %68 = load %struct.list_head*, %struct.list_head** %next92, align 8, !dbg !3122
  %69 = bitcast %struct.list_head* %68 to i8*, !dbg !3122
  store i8* %69, i8** %__mptr90, align 8, !dbg !3122
  br label %do.body93, !dbg !3122

do.body93:                                        ; preds = %for.inc
  br label %do.end94, !dbg !3123

do.end94:                                         ; preds = %do.body93
  %70 = load i8*, i8** %__mptr90, align 8, !dbg !3122
  %add.ptr96 = getelementptr i8, i8* %70, i64 0, !dbg !3122
  %71 = bitcast i8* %add.ptr96 to %struct.acpi_hardware_id*, !dbg !3122
  store %struct.acpi_hardware_id* %71, %struct.acpi_hardware_id** %tmp95, align 8, !dbg !3123
  %72 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp95, align 8, !dbg !3122
  store %struct.acpi_hardware_id* %72, %struct.acpi_hardware_id** %id, align 8, !dbg !3099
  br label %for.cond, !dbg !3099, !llvm.loop !3125

for.end:                                          ; preds = %for.cond
  %73 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3127
  %active97 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %73, i32 0, i32 13, !dbg !3129
  %74 = load i32, i32* %active97, align 8, !dbg !3129
  %tobool98 = icmp ne i32 %74, 0, !dbg !3127
  br i1 %tobool98, label %if.end100, label %if.then99, !dbg !3130

if.then99:                                        ; preds = %for.end
  %75 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3131
  call void @pnp_init_resources(%struct.pnp_dev* %75) #6, !dbg !3132
  br label %if.end100, !dbg !3132

if.end100:                                        ; preds = %if.then99, %for.end
  %76 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3133
  %call101 = call i32 @pnp_add_device(%struct.pnp_dev* %76) #6, !dbg !3134
  store i32 %call101, i32* %error, align 4, !dbg !3135
  %77 = load i32, i32* %error, align 4, !dbg !3136
  %tobool102 = icmp ne i32 %77, 0, !dbg !3136
  br i1 %tobool102, label %if.then103, label %if.end105, !dbg !3138

if.then103:                                       ; preds = %if.end100
  %78 = load %struct.pnp_dev*, %struct.pnp_dev** %dev, align 8, !dbg !3139
  %dev104 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %78, i32 0, i32 0, !dbg !3141
  call void @put_device(%struct.device* %dev104) #6, !dbg !3142
  %79 = load i32, i32* %error, align 4, !dbg !3143
  store i32 %79, i32* %retval, align 4, !dbg !3144
  br label %return, !dbg !3144

if.end105:                                        ; preds = %if.end100
  %80 = load i32, i32* @num, align 4, !dbg !3145
  %inc = add i32 %80, 1, !dbg !3145
  store i32 %inc, i32* @num, align 4, !dbg !3145
  store i32 0, i32* %retval, align 4, !dbg !3146
  br label %return, !dbg !3146

return:                                           ; preds = %if.end105, %if.then103, %if.then12, %if.then8, %if.then5, %if.then1, %if.then
  %81 = load i32, i32* %retval, align 4, !dbg !3147
  ret i32 %81, !dbg !3147
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i8* @pnpacpi_get_id(%struct.acpi_device* %device) #1 section ".init.text" !dbg !3148 {
entry:
  %retval = alloca i8*, align 8
  %device.addr = alloca %struct.acpi_device*, align 8
  %id = alloca %struct.acpi_hardware_id*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_hardware_id*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp10 = alloca %struct.acpi_hardware_id*, align 8
  store %struct.acpi_device* %device, %struct.acpi_device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %device.addr, metadata !3151, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.declare(metadata %struct.acpi_hardware_id** %id, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3155, metadata !DIExpression()), !dbg !3158
  %0 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3158
  %pnp = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 10, !dbg !3158
  %ids = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp, i32 0, i32 4, !dbg !3158
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %ids, i32 0, i32 0, !dbg !3158
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3158
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3158
  store i8* %2, i8** %__mptr, align 8, !dbg !3158
  br label %do.body, !dbg !3158

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3159

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3158
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !3158
  %4 = bitcast i8* %add.ptr to %struct.acpi_hardware_id*, !dbg !3158
  store %struct.acpi_hardware_id* %4, %struct.acpi_hardware_id** %tmp, align 8, !dbg !3159
  %5 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp, align 8, !dbg !3158
  store %struct.acpi_hardware_id* %5, %struct.acpi_hardware_id** %id, align 8, !dbg !3161
  br label %for.cond, !dbg !3161

for.cond:                                         ; preds = %do.end9, %do.end
  %6 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3162
  %list = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %6, i32 0, i32 0, !dbg !3162
  %7 = load %struct.acpi_device*, %struct.acpi_device** %device.addr, align 8, !dbg !3162
  %pnp1 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 10, !dbg !3162
  %ids2 = getelementptr inbounds %struct.acpi_device_pnp, %struct.acpi_device_pnp* %pnp1, i32 0, i32 4, !dbg !3162
  %cmp = icmp eq %struct.list_head* %list, %ids2, !dbg !3162
  %lnot = xor i1 %cmp, true, !dbg !3162
  br i1 %lnot, label %for.body, label %for.end, !dbg !3161

for.body:                                         ; preds = %for.cond
  %8 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3164
  %id3 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %8, i32 0, i32 1, !dbg !3167
  %9 = load i8*, i8** %id3, align 8, !dbg !3167
  %call = call i32 @ispnpidacpi(i8* %9) #5, !dbg !3168
  %tobool = icmp ne i32 %call, 0, !dbg !3168
  br i1 %tobool, label %if.then, label %if.end, !dbg !3169

if.then:                                          ; preds = %for.body
  %10 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3170
  %id4 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %10, i32 0, i32 1, !dbg !3171
  %11 = load i8*, i8** %id4, align 8, !dbg !3171
  store i8* %11, i8** %retval, align 8, !dbg !3172
  br label %return, !dbg !3172

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3173

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !3174, metadata !DIExpression()), !dbg !3176
  %12 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %id, align 8, !dbg !3176
  %list6 = getelementptr inbounds %struct.acpi_hardware_id, %struct.acpi_hardware_id* %12, i32 0, i32 0, !dbg !3176
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %list6, i32 0, i32 0, !dbg !3176
  %13 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !3176
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !3176
  store i8* %14, i8** %__mptr5, align 8, !dbg !3176
  br label %do.body8, !dbg !3176

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !3177

do.end9:                                          ; preds = %do.body8
  %15 = load i8*, i8** %__mptr5, align 8, !dbg !3176
  %add.ptr11 = getelementptr i8, i8* %15, i64 0, !dbg !3176
  %16 = bitcast i8* %add.ptr11 to %struct.acpi_hardware_id*, !dbg !3176
  store %struct.acpi_hardware_id* %16, %struct.acpi_hardware_id** %tmp10, align 8, !dbg !3177
  %17 = load %struct.acpi_hardware_id*, %struct.acpi_hardware_id** %tmp10, align 8, !dbg !3176
  store %struct.acpi_hardware_id* %17, %struct.acpi_hardware_id** %id, align 8, !dbg !3162
  br label %for.cond, !dbg !3162, !llvm.loop !3179

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8, !dbg !3181
  br label %return, !dbg !3181

return:                                           ; preds = %for.end, %if.then
  %18 = load i8*, i8** %retval, align 8, !dbg !3182
  ret i8* %18, !dbg !3182
}

; Function Attrs: noredzone
declare dso_local %struct.pnp_dev* @pnp_alloc_dev(%struct.pnp_protocol*, i32, i8*) #4

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !3183 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3186, metadata !DIExpression()), !dbg !3187
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3188
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !3189
  ret %struct.fwnode_handle* %fwnode, !dbg !3190
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: noredzone
declare dso_local i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: noredzone
declare dso_local i32 @pnpacpi_parse_resource_option_data(%struct.pnp_dev*) #4

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ispnpidacpi(i8* %id) #1 section ".init.text" !dbg !3191 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i8*, align 8
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !3194, metadata !DIExpression()), !dbg !3195
  %0 = load i8*, i8** %id.addr, align 8, !dbg !3196
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !3196
  %1 = load i8, i8* %arrayidx, align 1, !dbg !3196
  %conv = sext i8 %1 to i32, !dbg !3196
  %cmp = icmp sle i32 65, %conv, !dbg !3196
  br i1 %cmp, label %land.lhs.true, label %if.then, !dbg !3196

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %id.addr, align 8, !dbg !3196
  %arrayidx2 = getelementptr i8, i8* %2, i64 0, !dbg !3196
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !3196
  %conv3 = sext i8 %3 to i32, !dbg !3196
  %cmp4 = icmp sle i32 %conv3, 90, !dbg !3196
  br i1 %cmp4, label %if.end, label %if.then, !dbg !3198

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !3196
  br label %return, !dbg !3196

if.end:                                           ; preds = %land.lhs.true
  %4 = load i8*, i8** %id.addr, align 8, !dbg !3199
  %arrayidx6 = getelementptr i8, i8* %4, i64 1, !dbg !3199
  %5 = load i8, i8* %arrayidx6, align 1, !dbg !3199
  %conv7 = sext i8 %5 to i32, !dbg !3199
  %cmp8 = icmp sle i32 65, %conv7, !dbg !3199
  br i1 %cmp8, label %land.lhs.true10, label %if.then15, !dbg !3199

land.lhs.true10:                                  ; preds = %if.end
  %6 = load i8*, i8** %id.addr, align 8, !dbg !3199
  %arrayidx11 = getelementptr i8, i8* %6, i64 1, !dbg !3199
  %7 = load i8, i8* %arrayidx11, align 1, !dbg !3199
  %conv12 = sext i8 %7 to i32, !dbg !3199
  %cmp13 = icmp sle i32 %conv12, 90, !dbg !3199
  br i1 %cmp13, label %if.end16, label %if.then15, !dbg !3201

if.then15:                                        ; preds = %land.lhs.true10, %if.end
  store i32 0, i32* %retval, align 4, !dbg !3199
  br label %return, !dbg !3199

if.end16:                                         ; preds = %land.lhs.true10
  %8 = load i8*, i8** %id.addr, align 8, !dbg !3202
  %arrayidx17 = getelementptr i8, i8* %8, i64 2, !dbg !3202
  %9 = load i8, i8* %arrayidx17, align 1, !dbg !3202
  %conv18 = sext i8 %9 to i32, !dbg !3202
  %cmp19 = icmp sle i32 65, %conv18, !dbg !3202
  br i1 %cmp19, label %land.lhs.true21, label %if.then26, !dbg !3202

land.lhs.true21:                                  ; preds = %if.end16
  %10 = load i8*, i8** %id.addr, align 8, !dbg !3202
  %arrayidx22 = getelementptr i8, i8* %10, i64 2, !dbg !3202
  %11 = load i8, i8* %arrayidx22, align 1, !dbg !3202
  %conv23 = sext i8 %11 to i32, !dbg !3202
  %cmp24 = icmp sle i32 %conv23, 90, !dbg !3202
  br i1 %cmp24, label %if.end27, label %if.then26, !dbg !3204

if.then26:                                        ; preds = %land.lhs.true21, %if.end16
  store i32 0, i32* %retval, align 4, !dbg !3202
  br label %return, !dbg !3202

if.end27:                                         ; preds = %land.lhs.true21
  %12 = load i8*, i8** %id.addr, align 8, !dbg !3205
  %arrayidx28 = getelementptr i8, i8* %12, i64 3, !dbg !3205
  %13 = load i8, i8* %arrayidx28, align 1, !dbg !3205
  %conv29 = sext i8 %13 to i32, !dbg !3205
  %cmp30 = icmp sle i32 48, %conv29, !dbg !3205
  br i1 %cmp30, label %land.lhs.true32, label %lor.lhs.false, !dbg !3205

land.lhs.true32:                                  ; preds = %if.end27
  %14 = load i8*, i8** %id.addr, align 8, !dbg !3205
  %arrayidx33 = getelementptr i8, i8* %14, i64 3, !dbg !3205
  %15 = load i8, i8* %arrayidx33, align 1, !dbg !3205
  %conv34 = sext i8 %15 to i32, !dbg !3205
  %cmp35 = icmp sle i32 %conv34, 57, !dbg !3205
  br i1 %cmp35, label %if.end47, label %lor.lhs.false, !dbg !3205

lor.lhs.false:                                    ; preds = %land.lhs.true32, %if.end27
  %16 = load i8*, i8** %id.addr, align 8, !dbg !3205
  %arrayidx37 = getelementptr i8, i8* %16, i64 3, !dbg !3205
  %17 = load i8, i8* %arrayidx37, align 1, !dbg !3205
  %conv38 = sext i8 %17 to i32, !dbg !3205
  %cmp39 = icmp sle i32 65, %conv38, !dbg !3205
  br i1 %cmp39, label %land.lhs.true41, label %if.then46, !dbg !3205

land.lhs.true41:                                  ; preds = %lor.lhs.false
  %18 = load i8*, i8** %id.addr, align 8, !dbg !3205
  %arrayidx42 = getelementptr i8, i8* %18, i64 3, !dbg !3205
  %19 = load i8, i8* %arrayidx42, align 1, !dbg !3205
  %conv43 = sext i8 %19 to i32, !dbg !3205
  %cmp44 = icmp sle i32 %conv43, 70, !dbg !3205
  br i1 %cmp44, label %if.end47, label %if.then46, !dbg !3207

if.then46:                                        ; preds = %land.lhs.true41, %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !3205
  br label %return, !dbg !3205

if.end47:                                         ; preds = %land.lhs.true41, %land.lhs.true32
  %20 = load i8*, i8** %id.addr, align 8, !dbg !3208
  %arrayidx48 = getelementptr i8, i8* %20, i64 4, !dbg !3208
  %21 = load i8, i8* %arrayidx48, align 1, !dbg !3208
  %conv49 = sext i8 %21 to i32, !dbg !3208
  %cmp50 = icmp sle i32 48, %conv49, !dbg !3208
  br i1 %cmp50, label %land.lhs.true52, label %lor.lhs.false57, !dbg !3208

land.lhs.true52:                                  ; preds = %if.end47
  %22 = load i8*, i8** %id.addr, align 8, !dbg !3208
  %arrayidx53 = getelementptr i8, i8* %22, i64 4, !dbg !3208
  %23 = load i8, i8* %arrayidx53, align 1, !dbg !3208
  %conv54 = sext i8 %23 to i32, !dbg !3208
  %cmp55 = icmp sle i32 %conv54, 57, !dbg !3208
  br i1 %cmp55, label %if.end68, label %lor.lhs.false57, !dbg !3208

lor.lhs.false57:                                  ; preds = %land.lhs.true52, %if.end47
  %24 = load i8*, i8** %id.addr, align 8, !dbg !3208
  %arrayidx58 = getelementptr i8, i8* %24, i64 4, !dbg !3208
  %25 = load i8, i8* %arrayidx58, align 1, !dbg !3208
  %conv59 = sext i8 %25 to i32, !dbg !3208
  %cmp60 = icmp sle i32 65, %conv59, !dbg !3208
  br i1 %cmp60, label %land.lhs.true62, label %if.then67, !dbg !3208

land.lhs.true62:                                  ; preds = %lor.lhs.false57
  %26 = load i8*, i8** %id.addr, align 8, !dbg !3208
  %arrayidx63 = getelementptr i8, i8* %26, i64 4, !dbg !3208
  %27 = load i8, i8* %arrayidx63, align 1, !dbg !3208
  %conv64 = sext i8 %27 to i32, !dbg !3208
  %cmp65 = icmp sle i32 %conv64, 70, !dbg !3208
  br i1 %cmp65, label %if.end68, label %if.then67, !dbg !3210

if.then67:                                        ; preds = %land.lhs.true62, %lor.lhs.false57
  store i32 0, i32* %retval, align 4, !dbg !3208
  br label %return, !dbg !3208

if.end68:                                         ; preds = %land.lhs.true62, %land.lhs.true52
  %28 = load i8*, i8** %id.addr, align 8, !dbg !3211
  %arrayidx69 = getelementptr i8, i8* %28, i64 5, !dbg !3211
  %29 = load i8, i8* %arrayidx69, align 1, !dbg !3211
  %conv70 = sext i8 %29 to i32, !dbg !3211
  %cmp71 = icmp sle i32 48, %conv70, !dbg !3211
  br i1 %cmp71, label %land.lhs.true73, label %lor.lhs.false78, !dbg !3211

land.lhs.true73:                                  ; preds = %if.end68
  %30 = load i8*, i8** %id.addr, align 8, !dbg !3211
  %arrayidx74 = getelementptr i8, i8* %30, i64 5, !dbg !3211
  %31 = load i8, i8* %arrayidx74, align 1, !dbg !3211
  %conv75 = sext i8 %31 to i32, !dbg !3211
  %cmp76 = icmp sle i32 %conv75, 57, !dbg !3211
  br i1 %cmp76, label %if.end89, label %lor.lhs.false78, !dbg !3211

lor.lhs.false78:                                  ; preds = %land.lhs.true73, %if.end68
  %32 = load i8*, i8** %id.addr, align 8, !dbg !3211
  %arrayidx79 = getelementptr i8, i8* %32, i64 5, !dbg !3211
  %33 = load i8, i8* %arrayidx79, align 1, !dbg !3211
  %conv80 = sext i8 %33 to i32, !dbg !3211
  %cmp81 = icmp sle i32 65, %conv80, !dbg !3211
  br i1 %cmp81, label %land.lhs.true83, label %if.then88, !dbg !3211

land.lhs.true83:                                  ; preds = %lor.lhs.false78
  %34 = load i8*, i8** %id.addr, align 8, !dbg !3211
  %arrayidx84 = getelementptr i8, i8* %34, i64 5, !dbg !3211
  %35 = load i8, i8* %arrayidx84, align 1, !dbg !3211
  %conv85 = sext i8 %35 to i32, !dbg !3211
  %cmp86 = icmp sle i32 %conv85, 70, !dbg !3211
  br i1 %cmp86, label %if.end89, label %if.then88, !dbg !3213

if.then88:                                        ; preds = %land.lhs.true83, %lor.lhs.false78
  store i32 0, i32* %retval, align 4, !dbg !3211
  br label %return, !dbg !3211

if.end89:                                         ; preds = %land.lhs.true83, %land.lhs.true73
  %36 = load i8*, i8** %id.addr, align 8, !dbg !3214
  %arrayidx90 = getelementptr i8, i8* %36, i64 6, !dbg !3214
  %37 = load i8, i8* %arrayidx90, align 1, !dbg !3214
  %conv91 = sext i8 %37 to i32, !dbg !3214
  %cmp92 = icmp sle i32 48, %conv91, !dbg !3214
  br i1 %cmp92, label %land.lhs.true94, label %lor.lhs.false99, !dbg !3214

land.lhs.true94:                                  ; preds = %if.end89
  %38 = load i8*, i8** %id.addr, align 8, !dbg !3214
  %arrayidx95 = getelementptr i8, i8* %38, i64 6, !dbg !3214
  %39 = load i8, i8* %arrayidx95, align 1, !dbg !3214
  %conv96 = sext i8 %39 to i32, !dbg !3214
  %cmp97 = icmp sle i32 %conv96, 57, !dbg !3214
  br i1 %cmp97, label %if.end110, label %lor.lhs.false99, !dbg !3214

lor.lhs.false99:                                  ; preds = %land.lhs.true94, %if.end89
  %40 = load i8*, i8** %id.addr, align 8, !dbg !3214
  %arrayidx100 = getelementptr i8, i8* %40, i64 6, !dbg !3214
  %41 = load i8, i8* %arrayidx100, align 1, !dbg !3214
  %conv101 = sext i8 %41 to i32, !dbg !3214
  %cmp102 = icmp sle i32 65, %conv101, !dbg !3214
  br i1 %cmp102, label %land.lhs.true104, label %if.then109, !dbg !3214

land.lhs.true104:                                 ; preds = %lor.lhs.false99
  %42 = load i8*, i8** %id.addr, align 8, !dbg !3214
  %arrayidx105 = getelementptr i8, i8* %42, i64 6, !dbg !3214
  %43 = load i8, i8* %arrayidx105, align 1, !dbg !3214
  %conv106 = sext i8 %43 to i32, !dbg !3214
  %cmp107 = icmp sle i32 %conv106, 70, !dbg !3214
  br i1 %cmp107, label %if.end110, label %if.then109, !dbg !3216

if.then109:                                       ; preds = %land.lhs.true104, %lor.lhs.false99
  store i32 0, i32* %retval, align 4, !dbg !3214
  br label %return, !dbg !3214

if.end110:                                        ; preds = %land.lhs.true104, %land.lhs.true94
  %44 = load i8*, i8** %id.addr, align 8, !dbg !3217
  %arrayidx111 = getelementptr i8, i8* %44, i64 7, !dbg !3217
  %45 = load i8, i8* %arrayidx111, align 1, !dbg !3217
  %conv112 = sext i8 %45 to i32, !dbg !3217
  %cmp113 = icmp ne i32 %conv112, 0, !dbg !3219
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !3220

if.then115:                                       ; preds = %if.end110
  store i32 0, i32* %retval, align 4, !dbg !3221
  br label %return, !dbg !3221

if.end116:                                        ; preds = %if.end110
  store i32 1, i32* %retval, align 4, !dbg !3222
  br label %return, !dbg !3222

return:                                           ; preds = %if.end116, %if.then115, %if.then109, %if.then88, %if.then67, %if.then46, %if.then26, %if.then15, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !3223
  ret i32 %46, !dbg !3223
}

; Function Attrs: noredzone
declare dso_local %struct.pnp_id* @pnp_add_id(%struct.pnp_dev*, i8*) #4

; Function Attrs: noredzone
declare dso_local void @pnp_init_resources(%struct.pnp_dev*) #4

; Function Attrs: noredzone
declare dso_local i32 @pnp_add_device(%struct.pnp_dev*) #4

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #4

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2587, !2588, !2589, !2590}
!llvm.ident = !{!2591}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnpacpi_protocol", scope: !2, file: !3, line: 184, type: !2446, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !69, globals: !2425, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/pnpacpi/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !51, line: 76, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!53 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 10, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!69 = !{!70, !71, !591, !2419, !2420}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !73, line: 351, size: 10880, elements: !74)
!73 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !77, !80, !2146, !2147, !2148, !2149, !2150, !2151, !2160, !2177, !2251, !2280, !2304, !2325, !2331, !2340, !2372, !2386, !2408, !2412, !2413, !2414, !2415, !2416, !2417, !2418}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !72, file: !73, line: 352, baseType: !76, size: 32)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !72, file: !73, line: 353, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !79, line: 424, baseType: !70)
!79 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !72, file: !73, line: 354, baseType: !81, size: 192, offset: 128)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !82, line: 17, size: 192, elements: !83)
!82 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !86, !2145}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !81, file: !82, line: 18, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !81, file: !82, line: 19, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !82, line: 110, size: 1152, elements: !90)
!90 = !{!91, !95, !99, !108, !2087, !2091, !2095, !2100, !2104, !2105, !2109, !2113, !2117, !2128, !2129, !2130, !2131, !2141}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !89, file: !82, line: 111, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!85, !85}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !89, file: !82, line: 112, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !85}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !89, file: !82, line: 113, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !106}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !104, line: 30, baseType: !105)
!104 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !89, file: !82, line: 114, baseType: !109, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !106, !114}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !117)
!117 = !{!118, !1620, !1622, !1625, !1626, !1677, !1774, !1775, !1776, !1777, !1778, !1787, !1892, !1905, !2012, !2013, !2017, !2019, !2020, !2021, !2025, !2031, !2032, !2035, !2036, !2037, !2040, !2041, !2042, !2043, !2075, !2076, !2077, !2080, !2083, !2084, !2085, !2086}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !116, file: !30, line: 462, baseType: !119, size: 512)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !120, line: 64, size: 512, elements: !121)
!120 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !126, !132, !134, !194, !1456, !1610, !1615, !1616, !1617, !1618, !1619}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 65, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !119, file: !120, line: 66, baseType: !127, size: 128, offset: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !104, line: 178, size: 128, elements: !128)
!128 = !{!129, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !104, line: 179, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !127, file: !104, line: 179, baseType: !130, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !120, line: 67, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !119, file: !120, line: 68, baseType: !135, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !120, line: 192, size: 704, elements: !137)
!137 = !{!138, !139, !155, !156}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !136, file: !120, line: 193, baseType: !127, size: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !136, file: !120, line: 194, baseType: !140, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !141, line: 83, baseType: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !141, line: 71, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !141, line: 72, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !141, line: 72, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !145, file: !141, line: 73, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !141, line: 20, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !148, file: !141, line: 21, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !152, line: 25, baseType: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 25, elements: !154)
!154 = !{}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !136, file: !120, line: 195, baseType: !119, size: 512, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !136, file: !120, line: 196, baseType: !157, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !120, line: 156, size: 192, elements: !160)
!160 = !{!161, !166, !171}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !159, file: !120, line: 157, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!76, !135, !133}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !120, line: 158, baseType: !167, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!123, !135, !133}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !159, file: !120, line: 159, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!76, !135, !133, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !120, line: 148, size: 20736, elements: !178)
!178 = !{!179, !184, !188, !189, !193}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !177, file: !120, line: 149, baseType: !180, size: 192)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 192, elements: !182)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!182 = !{!183}
!183 = !DISubrange(count: 3)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !177, file: !120, line: 150, baseType: !185, size: 4096, offset: 192)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 4096, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !177, file: !120, line: 151, baseType: !76, size: 32, offset: 4288)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !177, file: !120, line: 152, baseType: !190, size: 16384, offset: 4320)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 16384, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 2048)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !177, file: !120, line: 153, baseType: !76, size: 32, offset: 20704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !119, file: !120, line: 69, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !120, line: 138, size: 448, elements: !197)
!197 = !{!198, !202, !232, !234, !1403, !1434, !1438}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !196, file: !120, line: 139, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !133}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !196, file: !120, line: 140, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !206, line: 230, size: 128, elements: !207)
!206 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!207 = !{!208, !224}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !205, file: !206, line: 231, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !133, !217, !181}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !104, line: 60, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !214, line: 73, baseType: !215)
!214 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !214, line: 15, baseType: !216)
!216 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !206, line: 30, size: 128, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !206, line: 31, baseType: !123, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !218, file: !206, line: 32, baseType: !222, size: 16, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !104, line: 19, baseType: !223)
!223 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !205, file: !206, line: 232, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!212, !133, !217, !123, !228}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 55, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !214, line: 72, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !214, line: 16, baseType: !231)
!231 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !196, file: !120, line: 141, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !196, file: !120, line: 142, baseType: !235, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !206, line: 84, size: 320, elements: !239)
!239 = !{!240, !241, !245, !1400, !1401}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !206, line: 85, baseType: !123, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !238, file: !206, line: 86, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!222, !133, !217, !76}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !238, file: !206, line: 88, baseType: !246, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!222, !133, !249, !76}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !206, line: 168, size: 448, elements: !251)
!251 = !{!252, !253, !254, !255, !265, !266}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !250, file: !206, line: 169, baseType: !218, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !206, line: 170, baseType: !228, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !250, file: !206, line: 171, baseType: !70, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !250, file: !206, line: 172, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!212, !259, !133, !249, !181, !262, !228}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !261, line: 526, flags: DIFlagFwdDecl)
!261 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !104, line: 46, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !214, line: 88, baseType: !264)
!264 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !250, file: !206, line: 174, baseType: !256, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !250, file: !206, line: 176, baseType: !267, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!76, !259, !133, !249, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !272, line: 305, size: 1472, elements: !273)
!272 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !275, !276, !277, !278, !286, !287, !1374, !1380, !1381, !1386, !1387, !1390, !1394, !1395, !1396, !1397, !1398}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !271, file: !272, line: 308, baseType: !231, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !271, file: !272, line: 309, baseType: !231, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !271, file: !272, line: 313, baseType: !270, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !271, file: !272, line: 313, baseType: !270, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !271, file: !272, line: 315, baseType: !279, size: 192, align: 64, offset: 256)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !280, line: 24, size: 192, align: 64, elements: !281)
!280 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!281 = !{!282, !283, !285}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !279, file: !280, line: 25, baseType: !231, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !279, file: !280, line: 26, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !279, file: !280, line: 27, baseType: !284, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !271, file: !272, line: 323, baseType: !231, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !271, file: !272, line: 327, baseType: !288, size: 64, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !272, line: 388, size: 7296, elements: !290)
!290 = !{!291, !1370}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !272, line: 389, baseType: !292, size: 7296)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !272, line: 389, size: 7296, elements: !293)
!293 = !{!294, !295, !299, !305, !309, !310, !311, !312, !313, !321, !326, !327, !328, !329, !338, !339, !340, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !375, !383, !386, !434, !435, !1341, !1342, !1345, !1348, !1349, !1352, !1353, !1354, !1357, !1369}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !292, file: !272, line: 390, baseType: !270, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !292, file: !272, line: 391, baseType: !296, size: 64, offset: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !280, line: 31, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !296, file: !280, line: 32, baseType: !284, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !292, file: !272, line: 392, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !301, line: 23, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !303, line: 31, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !292, file: !272, line: 394, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!231, !259, !231, !231, !231, !231}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !292, file: !272, line: 398, baseType: !231, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !292, file: !272, line: 399, baseType: !231, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !292, file: !272, line: 405, baseType: !231, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !292, file: !272, line: 406, baseType: !231, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !292, file: !272, line: 407, baseType: !314, size: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !261, line: 286, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 286, size: 64, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !316, file: !261, line: 286, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !320, line: 18, baseType: !231)
!320 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !292, file: !272, line: 416, baseType: !322, size: 32, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !104, line: 168, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 166, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !323, file: !104, line: 167, baseType: !76, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !292, file: !272, line: 428, baseType: !322, size: 32, offset: 608)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !292, file: !272, line: 437, baseType: !322, size: 32, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !292, file: !272, line: 447, baseType: !322, size: 32, offset: 672)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !292, file: !272, line: 450, baseType: !330, size: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !331, line: 13, baseType: !332)
!331 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !104, line: 175, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 173, size: 64, elements: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !333, file: !104, line: 174, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !301, line: 22, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !303, line: 30, baseType: !264)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !292, file: !272, line: 452, baseType: !76, size: 32, offset: 768)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !292, file: !272, line: 454, baseType: !140, offset: 800)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !292, file: !272, line: 457, baseType: !341, size: 256, offset: 832)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !342, line: 35, size: 256, elements: !343)
!342 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !345, !346, !348}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !341, file: !342, line: 36, baseType: !330, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !341, file: !342, line: 42, baseType: !330, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !341, file: !342, line: 46, baseType: !347, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !141, line: 29, baseType: !148)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !341, file: !342, line: 47, baseType: !127, size: 128, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !292, file: !272, line: 459, baseType: !127, size: 128, offset: 1088)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !292, file: !272, line: 466, baseType: !231, size: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !292, file: !272, line: 467, baseType: !231, size: 64, offset: 1280)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !292, file: !272, line: 469, baseType: !231, size: 64, offset: 1344)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !292, file: !272, line: 470, baseType: !231, size: 64, offset: 1408)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !292, file: !272, line: 471, baseType: !332, size: 64, offset: 1472)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !292, file: !272, line: 472, baseType: !231, size: 64, offset: 1536)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !292, file: !272, line: 473, baseType: !231, size: 64, offset: 1600)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !292, file: !272, line: 474, baseType: !231, size: 64, offset: 1664)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !292, file: !272, line: 475, baseType: !231, size: 64, offset: 1728)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !292, file: !272, line: 477, baseType: !140, offset: 1792)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !292, file: !272, line: 478, baseType: !231, size: 64, offset: 1792)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !292, file: !272, line: 478, baseType: !231, size: 64, offset: 1856)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !292, file: !272, line: 478, baseType: !231, size: 64, offset: 1920)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !292, file: !272, line: 478, baseType: !231, size: 64, offset: 1984)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !292, file: !272, line: 479, baseType: !231, size: 64, offset: 2048)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !292, file: !272, line: 479, baseType: !231, size: 64, offset: 2112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !292, file: !272, line: 479, baseType: !231, size: 64, offset: 2176)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !292, file: !272, line: 480, baseType: !231, size: 64, offset: 2240)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !292, file: !272, line: 480, baseType: !231, size: 64, offset: 2304)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !292, file: !272, line: 480, baseType: !231, size: 64, offset: 2368)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !292, file: !272, line: 480, baseType: !231, size: 64, offset: 2432)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !292, file: !272, line: 482, baseType: !372, size: 2816, offset: 2496)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 2816, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 44)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !292, file: !272, line: 488, baseType: !376, size: 256, offset: 5312)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !377, line: 60, size: 256, elements: !378)
!377 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !376, file: !377, line: 61, baseType: !380, size: 256)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 4)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !292, file: !272, line: 490, baseType: !384, size: 64, offset: 5568)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !272, line: 490, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !292, file: !272, line: 493, baseType: !387, size: 896, offset: 5632)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !388, line: 53, baseType: !389)
!388 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 13, size: 896, elements: !390)
!390 = !{!391, !392, !393, !394, !397, !398, !405, !406, !426, !427, !430}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !389, file: !388, line: 18, baseType: !300, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !389, file: !388, line: 28, baseType: !332, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !389, file: !388, line: 31, baseType: !341, size: 256, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !389, file: !388, line: 32, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !388, line: 32, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !389, file: !388, line: 37, baseType: !223, size: 16, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !389, file: !388, line: 40, baseType: !399, size: 192, offset: 512)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !400, line: 53, size: 192, elements: !401)
!400 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!401 = !{!402, !403, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !399, file: !400, line: 54, baseType: !330, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !399, file: !400, line: 55, baseType: !140, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !399, file: !400, line: 59, baseType: !127, size: 128, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !389, file: !388, line: 41, baseType: !70, size: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !389, file: !388, line: 42, baseType: !407, size: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !410, line: 13, size: 896, elements: !411)
!410 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !409, file: !410, line: 14, baseType: !70, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !409, file: !410, line: 15, baseType: !231, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !409, file: !410, line: 17, baseType: !231, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !409, file: !410, line: 17, baseType: !231, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !409, file: !410, line: 19, baseType: !216, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !409, file: !410, line: 21, baseType: !216, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !409, file: !410, line: 22, baseType: !216, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !409, file: !410, line: 23, baseType: !216, size: 64, offset: 448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !409, file: !410, line: 24, baseType: !216, size: 64, offset: 512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !409, file: !410, line: 25, baseType: !216, size: 64, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !409, file: !410, line: 26, baseType: !216, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !409, file: !410, line: 27, baseType: !216, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !409, file: !410, line: 28, baseType: !216, size: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !409, file: !410, line: 29, baseType: !216, size: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !389, file: !388, line: 44, baseType: !322, size: 32, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !389, file: !388, line: 50, baseType: !428, size: 16, offset: 864)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !301, line: 19, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !303, line: 24, baseType: !223)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !389, file: !388, line: 51, baseType: !431, size: 16, offset: 880)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !301, line: 18, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !303, line: 23, baseType: !433)
!433 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !272, line: 495, baseType: !231, size: 64, offset: 6528)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !292, file: !272, line: 497, baseType: !436, size: 64, offset: 6592)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !272, line: 381, size: 384, elements: !438)
!438 = !{!439, !440, !1340}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !437, file: !272, line: 382, baseType: !322, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !437, file: !272, line: 383, baseType: !441, size: 128, offset: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !272, line: 376, size: 128, elements: !442)
!442 = !{!443, !1338}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !441, file: !272, line: 377, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !446, line: 640, size: 48640, elements: !447)
!446 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!447 = !{!448, !456, !458, !459, !465, !466, !467, !468, !469, !470, !471, !472, !476, !494, !505, !600, !601, !602, !613, !614, !616, !617, !618, !619, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !698, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !754, !756, !757, !758, !770, !772, !773, !774, !775, !776, !782, !783, !784, !785, !786, !787, !788, !800, !805, !809, !810, !811, !814, !818, !821, !824, !827, !830, !833, !836, !839, !845, !846, !847, !853, !854, !855, !856, !857, !866, !867, !868, !869, !870, !875, !876, !877, !880, !881, !884, !887, !890, !893, !896, !899, !900, !980, !983, !986, !987, !990, !991, !992, !998, !999, !1000, !1013, !1014, !1015, !1025, !1030, !1033, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !445, file: !446, line: 646, baseType: !449, size: 128)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !450, line: 56, size: 128, elements: !451)
!450 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !449, file: !450, line: 57, baseType: !231, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !449, file: !450, line: 58, baseType: !454, size: 32, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !301, line: 21, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !303, line: 27, baseType: !7)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !445, file: !446, line: 649, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !216)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !445, file: !446, line: 657, baseType: !70, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !445, file: !446, line: 658, baseType: !460, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !461, line: 113, baseType: !462)
!461 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !461, line: 111, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !462, file: !461, line: 112, baseType: !322, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !446, line: 660, baseType: !7, size: 32, offset: 288)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !445, file: !446, line: 661, baseType: !7, size: 32, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !445, file: !446, line: 684, baseType: !76, size: 32, offset: 352)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !445, file: !446, line: 686, baseType: !76, size: 32, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !445, file: !446, line: 687, baseType: !76, size: 32, offset: 416)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !445, file: !446, line: 688, baseType: !76, size: 32, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !445, file: !446, line: 689, baseType: !7, size: 32, offset: 480)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !445, file: !446, line: 691, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !446, line: 691, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !445, file: !446, line: 692, baseType: !477, size: 832, offset: 576)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !446, line: 451, size: 832, elements: !478)
!478 = !{!479, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !477, file: !446, line: 453, baseType: !480, size: 128)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !446, line: 325, size: 128, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !480, file: !446, line: 326, baseType: !231, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !480, file: !446, line: 327, baseType: !454, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !477, file: !446, line: 454, baseType: !279, size: 192, align: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !477, file: !446, line: 455, baseType: !127, size: 128, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !477, file: !446, line: 456, baseType: !7, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !477, file: !446, line: 458, baseType: !300, size: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !477, file: !446, line: 459, baseType: !300, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !477, file: !446, line: 460, baseType: !300, size: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !477, file: !446, line: 461, baseType: !300, size: 64, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !477, file: !446, line: 463, baseType: !300, size: 64, offset: 768)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !477, file: !446, line: 465, baseType: !493, offset: 832)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !446, line: 415, elements: !154)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !445, file: !446, line: 693, baseType: !495, size: 384, offset: 1408)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !446, line: 489, size: 384, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !495, file: !446, line: 490, baseType: !127, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !495, file: !446, line: 491, baseType: !231, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !495, file: !446, line: 492, baseType: !231, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !495, file: !446, line: 493, baseType: !7, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !495, file: !446, line: 494, baseType: !223, size: 16, offset: 288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !495, file: !446, line: 495, baseType: !223, size: 16, offset: 304)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !495, file: !446, line: 497, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !445, file: !446, line: 697, baseType: !506, size: 1792, offset: 1792)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !446, line: 507, size: 1792, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !597, !598}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !506, file: !446, line: 508, baseType: !279, size: 192, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !506, file: !446, line: 515, baseType: !300, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !506, file: !446, line: 516, baseType: !300, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !506, file: !446, line: 517, baseType: !300, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !506, file: !446, line: 518, baseType: !300, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !506, file: !446, line: 519, baseType: !300, size: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !506, file: !446, line: 526, baseType: !336, size: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !506, file: !446, line: 527, baseType: !300, size: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !446, line: 528, baseType: !7, size: 32, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !506, file: !446, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !506, file: !446, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !506, file: !446, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !506, file: !446, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !506, file: !446, line: 563, baseType: !522, size: 512, offset: 704)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !523)
!523 = !{!524, !532, !533, !538, !590, !594, !595, !596}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !522, file: !6, line: 119, baseType: !525, size: 256)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !526, line: 9, size: 256, elements: !527)
!526 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !526, line: 10, baseType: !279, size: 192, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !525, file: !526, line: 11, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !531, line: 29, baseType: !336)
!531 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !522, file: !6, line: 120, baseType: !530, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !522, file: !6, line: 121, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!5, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !522, file: !6, line: 122, baseType: !539, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !541)
!541 = !{!542, !562, !563, !566, !576, !577, !585, !589}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !540, file: !6, line: 160, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !544, file: !6, line: 215, baseType: !347)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !544, file: !6, line: 216, baseType: !7, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !544, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !544, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !544, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !544, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !544, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !544, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !544, file: !6, line: 233, baseType: !530, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !544, file: !6, line: 234, baseType: !537, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !544, file: !6, line: 235, baseType: !530, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !544, file: !6, line: 236, baseType: !537, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !544, file: !6, line: 237, baseType: !559, size: 4096, offset: 512)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 4096, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 8)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !540, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !540, file: !6, line: 162, baseType: !564, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !104, line: 27, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !214, line: 96, baseType: !76)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !540, file: !6, line: 163, baseType: !567, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !568, line: 276, baseType: !569)
!568 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !568, line: 276, size: 32, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !569, file: !568, line: 276, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !568, line: 70, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !568, line: 65, size: 32, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !573, file: !568, line: 66, baseType: !7, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !540, file: !6, line: 164, baseType: !537, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !540, file: !6, line: 165, baseType: !578, size: 128, offset: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !526, line: 14, size: 128, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !578, file: !526, line: 15, baseType: !581, size: 128)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !280, line: 125, size: 128, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !581, file: !280, line: 126, baseType: !296, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !581, file: !280, line: 127, baseType: !284, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !540, file: !6, line: 166, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!530}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !540, file: !6, line: 167, baseType: !530, size: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !522, file: !6, line: 123, baseType: !591, size: 8, offset: 448)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !301, line: 17, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !303, line: 21, baseType: !593)
!593 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !522, file: !6, line: 124, baseType: !591, size: 8, offset: 456)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !522, file: !6, line: 125, baseType: !591, size: 8, offset: 464)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !522, file: !6, line: 126, baseType: !591, size: 8, offset: 472)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !506, file: !446, line: 572, baseType: !522, size: 512, offset: 1216)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !506, file: !446, line: 580, baseType: !599, size: 64, offset: 1728)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !445, file: !446, line: 721, baseType: !7, size: 32, offset: 3584)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !445, file: !446, line: 722, baseType: !76, size: 32, offset: 3616)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !445, file: !446, line: 723, baseType: !603, size: 64, offset: 3648)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !606, line: 17, baseType: !607)
!606 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !606, line: 17, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !607, file: !606, line: 17, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 1)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !445, file: !446, line: 724, baseType: !605, size: 64, offset: 3712)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !445, file: !446, line: 749, baseType: !615, offset: 3776)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !446, line: 290, elements: !154)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !445, file: !446, line: 751, baseType: !127, size: 128, offset: 3776)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !445, file: !446, line: 757, baseType: !288, size: 64, offset: 3904)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !445, file: !446, line: 758, baseType: !288, size: 64, offset: 3968)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !445, file: !446, line: 761, baseType: !620, size: 320, offset: 4032)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !377, line: 34, size: 320, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !620, file: !377, line: 35, baseType: !300, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !620, file: !377, line: 36, baseType: !624, size: 256, offset: 64)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !381)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !445, file: !446, line: 766, baseType: !76, size: 32, offset: 4352)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !445, file: !446, line: 767, baseType: !76, size: 32, offset: 4384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !445, file: !446, line: 768, baseType: !76, size: 32, offset: 4416)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !445, file: !446, line: 770, baseType: !76, size: 32, offset: 4448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !445, file: !446, line: 772, baseType: !231, size: 64, offset: 4480)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !445, file: !446, line: 775, baseType: !7, size: 32, offset: 4544)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !445, file: !446, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !445, file: !446, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !445, file: !446, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !445, file: !446, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !445, file: !446, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !445, file: !446, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !445, file: !446, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !445, file: !446, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !445, file: !446, line: 831, baseType: !231, size: 64, offset: 4672)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !445, file: !446, line: 833, baseType: !641, size: 384, offset: 4736)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !642)
!642 = !{!643, !648}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !641, file: !12, line: 26, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!216, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !12, line: 27, baseType: !649, size: 320, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !12, line: 27, size: 320, elements: !650)
!650 = !{!651, !661, !688}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !649, file: !12, line: 36, baseType: !652, size: 320)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !12, line: 29, size: 320, elements: !653)
!653 = !{!654, !656, !657, !658, !659, !660}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !652, file: !12, line: 30, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !652, file: !12, line: 31, baseType: !454, size: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !12, line: 32, baseType: !454, size: 32, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !652, file: !12, line: 33, baseType: !454, size: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !652, file: !12, line: 34, baseType: !300, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !652, file: !12, line: 35, baseType: !655, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !649, file: !12, line: 46, baseType: !662, size: 192)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !12, line: 38, size: 192, elements: !663)
!663 = !{!664, !665, !666, !687}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !662, file: !12, line: 39, baseType: !564, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !12, line: 41, baseType: !667, size: 64, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !12, line: 41, size: 64, elements: !668)
!668 = !{!669, !677}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !667, file: !12, line: 42, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !672, line: 7, size: 128, elements: !673)
!672 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!673 = !{!674, !676}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !671, file: !672, line: 8, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !214, line: 93, baseType: !264)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !671, file: !672, line: 9, baseType: !264, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !667, file: !12, line: 43, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !680, line: 7, size: 64, elements: !681)
!680 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!681 = !{!682, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !679, file: !680, line: 8, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !680, line: 5, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !301, line: 20, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !303, line: 26, baseType: !76)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !679, file: !680, line: 9, baseType: !684, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !662, file: !12, line: 45, baseType: !300, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !649, file: !12, line: 54, baseType: !689, size: 256)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !12, line: 48, size: 256, elements: !690)
!690 = !{!691, !694, !695, !696, !697}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !689, file: !12, line: 49, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !689, file: !12, line: 50, baseType: !76, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !689, file: !12, line: 51, baseType: !76, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !689, file: !12, line: 52, baseType: !231, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !689, file: !12, line: 53, baseType: !231, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !445, file: !446, line: 835, baseType: !699, size: 32, offset: 5120)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !104, line: 22, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !214, line: 28, baseType: !76)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !445, file: !446, line: 836, baseType: !699, size: 32, offset: 5152)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !445, file: !446, line: 840, baseType: !231, size: 64, offset: 5184)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !445, file: !446, line: 849, baseType: !444, size: 64, offset: 5248)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !445, file: !446, line: 852, baseType: !444, size: 64, offset: 5312)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !445, file: !446, line: 857, baseType: !127, size: 128, offset: 5376)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !445, file: !446, line: 858, baseType: !127, size: 128, offset: 5504)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !445, file: !446, line: 859, baseType: !444, size: 64, offset: 5632)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !445, file: !446, line: 867, baseType: !127, size: 128, offset: 5696)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !445, file: !446, line: 868, baseType: !127, size: 128, offset: 5824)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !445, file: !446, line: 871, baseType: !711, size: 64, offset: 5952)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !713, line: 59, size: 768, elements: !714)
!713 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716, !717, !718, !729, !730, !737, !746}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !712, file: !713, line: 61, baseType: !460, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !712, file: !713, line: 62, baseType: !7, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !712, file: !713, line: 63, baseType: !140, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !712, file: !713, line: 65, baseType: !719, size: 256, offset: 64)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 256, elements: !381)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !104, line: 182, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !720, file: !104, line: 183, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !104, line: 186, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !104, line: 187, baseType: !723, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !724, file: !104, line: 187, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !712, file: !713, line: 66, baseType: !720, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !712, file: !713, line: 68, baseType: !731, size: 128, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !732, line: 40, baseType: !733)
!732 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !732, line: 36, size: 128, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !732, line: 37, baseType: !140)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !733, file: !732, line: 38, baseType: !127, size: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !712, file: !713, line: 69, baseType: !738, size: 128, align: 64, offset: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !104, line: 216, size: 128, align: 64, elements: !739)
!739 = !{!740, !742}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !104, line: 217, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !738, file: !104, line: 218, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !741}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !712, file: !713, line: 70, baseType: !747, size: 128, offset: 640)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 128, elements: !611)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !713, line: 54, size: 128, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !748, file: !713, line: 55, baseType: !76, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !748, file: !713, line: 56, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !713, line: 56, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !445, file: !446, line: 872, baseType: !755, size: 512, offset: 6016)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 512, elements: !381)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !445, file: !446, line: 873, baseType: !127, size: 128, offset: 6528)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !445, file: !446, line: 874, baseType: !127, size: 128, offset: 6656)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !445, file: !446, line: 876, baseType: !759, size: 64, offset: 6784)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !761, line: 26, size: 192, elements: !762)
!761 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !760, file: !761, line: 27, baseType: !7, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !760, file: !761, line: 28, baseType: !765, size: 128, offset: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !766, line: 43, size: 128, elements: !767)
!766 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !766, line: 44, baseType: !347)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !765, file: !766, line: 45, baseType: !127, size: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !445, file: !446, line: 879, baseType: !771, size: 64, offset: 6848)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !445, file: !446, line: 882, baseType: !771, size: 64, offset: 6912)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !445, file: !446, line: 884, baseType: !300, size: 64, offset: 6976)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !445, file: !446, line: 885, baseType: !300, size: 64, offset: 7040)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !445, file: !446, line: 890, baseType: !300, size: 64, offset: 7104)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !445, file: !446, line: 891, baseType: !777, size: 128, offset: 7168)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !446, line: 242, size: 128, elements: !778)
!778 = !{!779, !780, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !777, file: !446, line: 244, baseType: !300, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !777, file: !446, line: 245, baseType: !300, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !777, file: !446, line: 246, baseType: !347, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !445, file: !446, line: 900, baseType: !231, size: 64, offset: 7296)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !445, file: !446, line: 901, baseType: !231, size: 64, offset: 7360)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !445, file: !446, line: 904, baseType: !300, size: 64, offset: 7424)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !445, file: !446, line: 907, baseType: !300, size: 64, offset: 7488)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !445, file: !446, line: 910, baseType: !231, size: 64, offset: 7552)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !445, file: !446, line: 911, baseType: !231, size: 64, offset: 7616)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !445, file: !446, line: 914, baseType: !789, size: 640, offset: 7680)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !790, line: 123, size: 640, elements: !791)
!790 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!791 = !{!792, !798, !799}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !789, file: !790, line: 124, baseType: !793, size: 576)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 576, elements: !182)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !790, line: 108, size: 192, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !794, file: !790, line: 109, baseType: !300, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !794, file: !790, line: 110, baseType: !578, size: 128, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !789, file: !790, line: 125, baseType: !7, size: 32, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !789, file: !790, line: 126, baseType: !7, size: 32, offset: 608)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !445, file: !446, line: 917, baseType: !801, size: 192, offset: 8320)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !790, line: 134, size: 192, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !801, file: !790, line: 135, baseType: !738, size: 128, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !801, file: !790, line: 136, baseType: !7, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !445, file: !446, line: 923, baseType: !806, size: 64, offset: 8512)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !446, line: 923, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !445, file: !446, line: 926, baseType: !806, size: 64, offset: 8576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !445, file: !446, line: 929, baseType: !806, size: 64, offset: 8640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !445, file: !446, line: 933, baseType: !812, size: 64, offset: 8704)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !446, line: 933, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !445, file: !446, line: 943, baseType: !815, size: 128, offset: 8768)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 16)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !445, file: !446, line: 945, baseType: !819, size: 64, offset: 8896)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !446, line: 49, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !445, file: !446, line: 956, baseType: !822, size: 64, offset: 8960)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !446, line: 45, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !445, file: !446, line: 959, baseType: !825, size: 64, offset: 9024)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !446, line: 959, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !445, file: !446, line: 962, baseType: !828, size: 64, offset: 9088)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !446, line: 66, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !445, file: !446, line: 966, baseType: !831, size: 64, offset: 9152)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !446, line: 50, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !445, file: !446, line: 969, baseType: !834, size: 64, offset: 9216)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !790, line: 223, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !445, file: !446, line: 970, baseType: !837, size: 64, offset: 9280)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !446, line: 62, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !445, file: !446, line: 971, baseType: !840, size: 64, offset: 9344)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !841, line: 25, baseType: !842)
!841 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !841, line: 23, size: 64, elements: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !842, file: !841, line: 24, baseType: !610, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !445, file: !446, line: 972, baseType: !840, size: 64, offset: 9408)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !445, file: !446, line: 974, baseType: !840, size: 64, offset: 9472)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !445, file: !446, line: 975, baseType: !848, size: 192, offset: 9536)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !849, line: 30, size: 192, elements: !850)
!849 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !848, file: !849, line: 31, baseType: !127, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !848, file: !849, line: 32, baseType: !840, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !445, file: !446, line: 976, baseType: !231, size: 64, offset: 9728)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !445, file: !446, line: 977, baseType: !228, size: 64, offset: 9792)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !445, file: !446, line: 978, baseType: !7, size: 32, offset: 9856)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !445, file: !446, line: 980, baseType: !741, size: 64, offset: 9920)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !445, file: !446, line: 989, baseType: !858, size: 128, offset: 9984)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !859, line: 35, size: 128, elements: !860)
!859 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !858, file: !859, line: 36, baseType: !76, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !858, file: !859, line: 37, baseType: !322, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !858, file: !859, line: 38, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !859, line: 23, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !445, file: !446, line: 992, baseType: !300, size: 64, offset: 10112)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !445, file: !446, line: 993, baseType: !300, size: 64, offset: 10176)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !445, file: !446, line: 996, baseType: !140, offset: 10240)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !445, file: !446, line: 999, baseType: !347, offset: 10240)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !445, file: !446, line: 1001, baseType: !871, size: 64, offset: 10240)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !446, line: 636, size: 64, elements: !872)
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !446, line: 637, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !445, file: !446, line: 1005, baseType: !581, size: 128, offset: 10304)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !445, file: !446, line: 1007, baseType: !444, size: 64, offset: 10432)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !445, file: !446, line: 1009, baseType: !878, size: 64, offset: 10496)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !446, line: 1009, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !445, file: !446, line: 1043, baseType: !70, size: 64, offset: 10560)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !445, file: !446, line: 1046, baseType: !882, size: 64, offset: 10624)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !446, line: 41, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !445, file: !446, line: 1050, baseType: !885, size: 64, offset: 10688)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !446, line: 42, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !445, file: !446, line: 1054, baseType: !888, size: 64, offset: 10752)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !446, line: 55, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !445, file: !446, line: 1056, baseType: !891, size: 64, offset: 10816)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !446, line: 40, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !445, file: !446, line: 1058, baseType: !894, size: 64, offset: 10880)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !446, line: 47, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !445, file: !446, line: 1061, baseType: !897, size: 64, offset: 10944)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !446, line: 43, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !445, file: !446, line: 1064, baseType: !231, size: 64, offset: 11008)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !445, file: !446, line: 1065, baseType: !901, size: 64, offset: 11072)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !849, line: 14, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !849, line: 12, size: 384, elements: !904)
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !849, line: 13, baseType: !906, size: 384)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !903, file: !849, line: 13, size: 384, elements: !907)
!907 = !{!908, !909, !910, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !906, file: !849, line: 13, baseType: !76, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !906, file: !849, line: 13, baseType: !76, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !906, file: !849, line: 13, baseType: !76, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !906, file: !849, line: 13, baseType: !912, size: 256, offset: 128)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !913, line: 32, size: 256, elements: !914)
!913 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !921, !934, !940, !949, !969, !974}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !912, file: !913, line: 37, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 34, size: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !916, file: !913, line: 35, baseType: !700, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !916, file: !913, line: 36, baseType: !920, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !214, line: 49, baseType: !7)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !912, file: !913, line: 45, baseType: !922, size: 192)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 40, size: 192, elements: !923)
!923 = !{!924, !926, !927, !933}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !922, file: !913, line: 41, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !214, line: 95, baseType: !76)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !922, file: !913, line: 42, baseType: !76, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !922, file: !913, line: 43, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !913, line: 11, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !913, line: 8, size: 64, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !929, file: !913, line: 9, baseType: !76, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !929, file: !913, line: 10, baseType: !70, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !922, file: !913, line: 44, baseType: !76, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !912, file: !913, line: 52, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 48, size: 128, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !935, file: !913, line: 49, baseType: !700, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !935, file: !913, line: 50, baseType: !920, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !935, file: !913, line: 51, baseType: !928, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !912, file: !913, line: 61, baseType: !941, size: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 55, size: 256, elements: !942)
!942 = !{!943, !944, !945, !946, !948}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !941, file: !913, line: 56, baseType: !700, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !941, file: !913, line: 57, baseType: !920, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !941, file: !913, line: 58, baseType: !76, size: 32, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !941, file: !913, line: 59, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !214, line: 94, baseType: !215)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !941, file: !913, line: 60, baseType: !947, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !912, file: !913, line: 95, baseType: !950, size: 256)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 64, size: 256, elements: !951)
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !950, file: !913, line: 65, baseType: !70, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !913, line: 77, baseType: !954, size: 192, offset: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !950, file: !913, line: 77, size: 192, elements: !955)
!955 = !{!956, !957, !964}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !954, file: !913, line: 82, baseType: !433, size: 16)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !954, file: !913, line: 88, baseType: !958, size: 192)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !913, line: 84, size: 192, elements: !959)
!959 = !{!960, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !958, file: !913, line: 85, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !560)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !958, file: !913, line: 86, baseType: !70, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !958, file: !913, line: 87, baseType: !70, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !954, file: !913, line: 93, baseType: !965, size: 96)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !913, line: 90, size: 96, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !965, file: !913, line: 91, baseType: !961, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !965, file: !913, line: 92, baseType: !455, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !912, file: !913, line: 101, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 98, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !970, file: !913, line: 99, baseType: !216, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !970, file: !913, line: 100, baseType: !76, size: 32, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !912, file: !913, line: 108, baseType: !975, size: 128)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !912, file: !913, line: 104, size: 128, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !975, file: !913, line: 105, baseType: !70, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !975, file: !913, line: 106, baseType: !76, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !975, file: !913, line: 107, baseType: !7, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !445, file: !446, line: 1067, baseType: !981, offset: 11136)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !982, line: 12, elements: !154)
!982 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!983 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !445, file: !446, line: 1099, baseType: !984, size: 64, offset: 11136)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !446, line: 56, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !445, file: !446, line: 1103, baseType: !127, size: 128, offset: 11200)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !445, file: !446, line: 1104, baseType: !988, size: 64, offset: 11328)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !446, line: 46, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !445, file: !446, line: 1105, baseType: !399, size: 192, offset: 11392)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !445, file: !446, line: 1106, baseType: !7, size: 32, offset: 11584)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !445, file: !446, line: 1109, baseType: !993, size: 128, offset: 11648)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 128, elements: !996)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !446, line: 51, flags: DIFlagFwdDecl)
!996 = !{!997}
!997 = !DISubrange(count: 2)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !445, file: !446, line: 1110, baseType: !399, size: 192, offset: 11776)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !445, file: !446, line: 1111, baseType: !127, size: 128, offset: 11968)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !445, file: !446, line: 1173, baseType: !1001, size: 64, offset: 12096)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1003, line: 62, size: 256, align: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !{!1005, !1006, !1007, !1012}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1002, file: !1003, line: 75, baseType: !455, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1002, file: !1003, line: 90, baseType: !455, size: 32, offset: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1002, file: !1003, line: 124, baseType: !1008, size: 64, offset: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !1003, line: 109, size: 64, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1008, file: !1003, line: 110, baseType: !302, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1008, file: !1003, line: 112, baseType: !302, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !1003, line: 144, baseType: !455, size: 32, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !445, file: !446, line: 1174, baseType: !454, size: 32, offset: 12160)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !445, file: !446, line: 1179, baseType: !231, size: 64, offset: 12224)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !445, file: !446, line: 1182, baseType: !1016, size: 128, offset: 12288)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !377, line: 76, size: 128, elements: !1017)
!1017 = !{!1018, !1023, !1024}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1016, file: !377, line: 85, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1020, line: 7, size: 64, elements: !1021)
!1020 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1019, file: !1020, line: 12, baseType: !607, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1016, file: !377, line: 88, baseType: !103, size: 8, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1016, file: !377, line: 95, baseType: !103, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !446, line: 1184, baseType: !1026, size: 128, offset: 12416)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 1184, size: 128, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1026, file: !446, line: 1185, baseType: !460, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1026, file: !446, line: 1186, baseType: !738, size: 128, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !445, file: !446, line: 1190, baseType: !1031, size: 64, offset: 12544)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !446, line: 53, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !445, file: !446, line: 1192, baseType: !1034, size: 128, offset: 12608)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !377, line: 64, size: 128, elements: !1035)
!1035 = !{!1036, !1129, !1130}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1034, file: !377, line: 65, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !272, line: 68, size: 512, align: 128, elements: !1039)
!1039 = !{!1040, !1041, !1121, !1128}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !272, line: 69, baseType: !231, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !272, line: 77, baseType: !1042, size: 320, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !272, line: 77, size: 320, elements: !1043)
!1043 = !{!1044, !1053, !1058, !1086, !1094, !1100, !1113, !1120}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 78, baseType: !1045, size: 320)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 78, size: 320, elements: !1046)
!1046 = !{!1047, !1048, !1051, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1045, file: !272, line: 84, baseType: !127, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1045, file: !272, line: 86, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !272, line: 26, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1045, file: !272, line: 87, baseType: !231, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1045, file: !272, line: 94, baseType: !231, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 96, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 96, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1054, file: !272, line: 101, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !104, line: 143, baseType: !300)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 103, baseType: !1059, size: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 103, size: 320, elements: !1060)
!1060 = !{!1061, !1071, !1074, !1075}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !272, line: 104, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !272, line: 104, size: 128, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1062, file: !272, line: 105, baseType: !127, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !272, line: 106, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !272, line: 106, size: 128, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1066, file: !272, line: 107, baseType: !1037, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1066, file: !272, line: 109, baseType: !76, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1066, file: !272, line: 110, baseType: !76, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1059, file: !272, line: 117, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !272, line: 117, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1059, file: !272, line: 119, baseType: !70, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !272, line: 120, baseType: !1076, size: 64, offset: 256)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !272, line: 120, size: 64, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1076, file: !272, line: 121, baseType: !70, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1076, file: !272, line: 122, baseType: !231, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !272, line: 123, baseType: !1081, size: 32)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !272, line: 123, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1081, file: !272, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1081, file: !272, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1081, file: !272, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 130, baseType: !1087, size: 192)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 130, size: 192, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1087, file: !272, line: 131, baseType: !231, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1087, file: !272, line: 134, baseType: !593, size: 8, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1087, file: !272, line: 135, baseType: !593, size: 8, offset: 72)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1087, file: !272, line: 136, baseType: !322, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1087, file: !272, line: 137, baseType: !7, size: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 139, baseType: !1095, size: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 139, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1095, file: !272, line: 140, baseType: !231, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1095, file: !272, line: 141, baseType: !322, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1095, file: !272, line: 143, baseType: !127, size: 128, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 145, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 145, size: 256, elements: !1102)
!1102 = !{!1103, !1104, !1106, !1107, !1112}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1101, file: !272, line: 146, baseType: !231, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1101, file: !272, line: 147, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !261, line: 509, baseType: !1037)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1101, file: !272, line: 148, baseType: !231, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !272, line: 149, baseType: !1108, size: 64, offset: 192)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !272, line: 149, size: 64, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1108, file: !272, line: 150, baseType: !288, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1108, file: !272, line: 151, baseType: !322, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1101, file: !272, line: 156, baseType: !140, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 159, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 159, size: 128, elements: !1115)
!1115 = !{!1116, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1114, file: !272, line: 161, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !272, line: 161, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1114, file: !272, line: 162, baseType: !70, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1042, file: !272, line: 176, baseType: !738, size: 128, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !272, line: 179, baseType: !1122, size: 32, offset: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !272, line: 179, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1122, file: !272, line: 184, baseType: !322, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1122, file: !272, line: 192, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1122, file: !272, line: 194, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1122, file: !272, line: 195, baseType: !76, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1038, file: !272, line: 199, baseType: !322, size: 32, offset: 416)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1034, file: !377, line: 67, baseType: !455, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !377, line: 68, baseType: !455, size: 32, offset: 96)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !445, file: !446, line: 1206, baseType: !76, size: 32, offset: 12736)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !445, file: !446, line: 1207, baseType: !76, size: 32, offset: 12768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !445, file: !446, line: 1209, baseType: !231, size: 64, offset: 12800)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !445, file: !446, line: 1219, baseType: !300, size: 64, offset: 12864)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !445, file: !446, line: 1220, baseType: !300, size: 64, offset: 12928)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !445, file: !446, line: 1317, baseType: !76, size: 32, offset: 12992)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !445, file: !446, line: 1319, baseType: !444, size: 64, offset: 13056)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !445, file: !446, line: 1322, baseType: !1139, size: 64, offset: 13120)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1141, line: 56, size: 512, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1149, !1150, !1152}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1140, file: !1141, line: 57, baseType: !1139, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1140, file: !1141, line: 58, baseType: !70, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1140, file: !1141, line: 59, baseType: !231, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 60, baseType: !231, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1140, file: !1141, line: 61, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1140, file: !1141, line: 62, baseType: !7, size: 32, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1140, file: !1141, line: 63, baseType: !1151, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !104, line: 153, baseType: !300)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1140, file: !1141, line: 64, baseType: !112, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !445, file: !446, line: 1326, baseType: !460, size: 32, offset: 13184)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !445, file: !446, line: 1342, baseType: !70, size: 64, offset: 13248)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !445, file: !446, line: 1343, baseType: !302, size: 64, offset: 13312)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !445, file: !446, line: 1344, baseType: !300, size: 64, offset: 13376)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !445, file: !446, line: 1345, baseType: !302, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !445, file: !446, line: 1346, baseType: !302, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !445, file: !446, line: 1347, baseType: !302, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !445, file: !446, line: 1348, baseType: !738, size: 128, align: 64, offset: 13504)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !445, file: !446, line: 1358, baseType: !1162, size: 34816, offset: 13824)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1163, line: 485, size: 34816, elements: !1164)
!1163 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !{!1165, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1194, !1195, !1196, !1197, !1198, !1199, !1202, !1203, !1204}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1162, file: !1163, line: 487, baseType: !1166, size: 192)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 192, elements: !182)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1168, line: 16, size: 64, elements: !1169)
!1168 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1167, file: !1168, line: 17, baseType: !428, size: 16)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1167, file: !1168, line: 18, baseType: !428, size: 16, offset: 16)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1167, file: !1168, line: 19, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1167, file: !1168, line: 19, baseType: !428, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1167, file: !1168, line: 19, baseType: !428, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1167, file: !1168, line: 19, baseType: !428, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1167, file: !1168, line: 19, baseType: !428, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1167, file: !1168, line: 20, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1167, file: !1168, line: 20, baseType: !428, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1167, file: !1168, line: 20, baseType: !428, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1167, file: !1168, line: 20, baseType: !428, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1167, file: !1168, line: 20, baseType: !428, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1167, file: !1168, line: 20, baseType: !428, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1162, file: !1163, line: 491, baseType: !231, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1162, file: !1163, line: 495, baseType: !223, size: 16, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1162, file: !1163, line: 496, baseType: !223, size: 16, offset: 272)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1162, file: !1163, line: 497, baseType: !223, size: 16, offset: 288)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1162, file: !1163, line: 498, baseType: !223, size: 16, offset: 304)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1162, file: !1163, line: 502, baseType: !231, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1162, file: !1163, line: 503, baseType: !231, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1162, file: !1163, line: 514, baseType: !1191, size: 256, offset: 448)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 256, elements: !381)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1163, line: 483, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1162, file: !1163, line: 516, baseType: !231, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1162, file: !1163, line: 518, baseType: !231, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1162, file: !1163, line: 520, baseType: !231, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1162, file: !1163, line: 521, baseType: !231, size: 64, offset: 896)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1162, file: !1163, line: 522, baseType: !231, size: 64, offset: 960)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1162, file: !1163, line: 528, baseType: !1200, size: 64, offset: 1024)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1163, line: 10, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1162, file: !1163, line: 535, baseType: !231, size: 64, offset: 1088)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1162, file: !1163, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1162, file: !1163, line: 540, baseType: !1205, size: 33280, offset: 1536)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1206, line: 317, size: 33280, elements: !1207)
!1206 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1205, file: !1206, line: 330, baseType: !7, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1205, file: !1206, line: 337, baseType: !231, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1205, file: !1206, line: 348, baseType: !1211, size: 32768, offset: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1206, line: 304, size: 32768, elements: !1212)
!1212 = !{!1213, !1228, !1267, !1317, !1334}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1211, file: !1206, line: 305, baseType: !1214, size: 896)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1206, line: 12, size: 896, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1227}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1214, file: !1206, line: 13, baseType: !454, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1214, file: !1206, line: 14, baseType: !454, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1214, file: !1206, line: 15, baseType: !454, size: 32, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1214, file: !1206, line: 16, baseType: !454, size: 32, offset: 96)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1214, file: !1206, line: 17, baseType: !454, size: 32, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1214, file: !1206, line: 18, baseType: !454, size: 32, offset: 160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1214, file: !1206, line: 19, baseType: !454, size: 32, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1214, file: !1206, line: 22, baseType: !1224, size: 640, offset: 224)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 640, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 20)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1214, file: !1206, line: 25, baseType: !454, size: 32, offset: 864)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1211, file: !1206, line: 306, baseType: !1229, size: 4096, align: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1206, line: 34, size: 4096, align: 128, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1250, !1251, !1252, !1256, !1258, !1262}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1229, file: !1206, line: 35, baseType: !428, size: 16)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1229, file: !1206, line: 36, baseType: !428, size: 16, offset: 16)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1229, file: !1206, line: 37, baseType: !428, size: 16, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1229, file: !1206, line: 38, baseType: !428, size: 16, offset: 48)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !1206, line: 39, baseType: !1236, size: 128, offset: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !1206, line: 39, size: 128, elements: !1237)
!1237 = !{!1238, !1243}
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !1206, line: 40, baseType: !1239, size: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !1206, line: 40, size: 128, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1239, file: !1206, line: 41, baseType: !300, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1239, file: !1206, line: 42, baseType: !300, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1236, file: !1206, line: 44, baseType: !1244, size: 128)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1236, file: !1206, line: 44, size: 128, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1244, file: !1206, line: 45, baseType: !454, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1244, file: !1206, line: 46, baseType: !454, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1244, file: !1206, line: 47, baseType: !454, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1244, file: !1206, line: 48, baseType: !454, size: 32, offset: 96)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1229, file: !1206, line: 51, baseType: !454, size: 32, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1229, file: !1206, line: 52, baseType: !454, size: 32, offset: 224)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1229, file: !1206, line: 55, baseType: !1253, size: 1024, offset: 256)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 1024, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1229, file: !1206, line: 58, baseType: !1257, size: 2048, offset: 1280)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 2048, elements: !186)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1229, file: !1206, line: 60, baseType: !1259, size: 384, offset: 3328)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 384, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 12)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1229, file: !1206, line: 62, baseType: !1263, size: 384, offset: 3712)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1229, file: !1206, line: 62, size: 384, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1263, file: !1206, line: 63, baseType: !1259, size: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1263, file: !1206, line: 64, baseType: !1259, size: 384)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1211, file: !1206, line: 307, baseType: !1268, size: 1088)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1206, line: 79, size: 1088, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1316}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1268, file: !1206, line: 80, baseType: !454, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1268, file: !1206, line: 81, baseType: !454, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1268, file: !1206, line: 82, baseType: !454, size: 32, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1268, file: !1206, line: 83, baseType: !454, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1268, file: !1206, line: 84, baseType: !454, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1268, file: !1206, line: 85, baseType: !454, size: 32, offset: 160)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1268, file: !1206, line: 86, baseType: !454, size: 32, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1268, file: !1206, line: 88, baseType: !1224, size: 640, offset: 224)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1268, file: !1206, line: 89, baseType: !591, size: 8, offset: 864)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1268, file: !1206, line: 90, baseType: !591, size: 8, offset: 872)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1268, file: !1206, line: 91, baseType: !591, size: 8, offset: 880)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1268, file: !1206, line: 92, baseType: !591, size: 8, offset: 888)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1268, file: !1206, line: 93, baseType: !591, size: 8, offset: 896)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1268, file: !1206, line: 94, baseType: !591, size: 8, offset: 904)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1268, file: !1206, line: 95, baseType: !1285, size: 64, offset: 960)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1287, line: 11, size: 128, elements: !1288)
!1287 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1290}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1286, file: !1287, line: 12, baseType: !216, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1286, file: !1287, line: 13, baseType: !1291, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1293, line: 56, size: 1344, elements: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1292, file: !1293, line: 61, baseType: !231, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1292, file: !1293, line: 62, baseType: !231, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1292, file: !1293, line: 63, baseType: !231, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1292, file: !1293, line: 64, baseType: !231, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1292, file: !1293, line: 65, baseType: !231, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1292, file: !1293, line: 66, baseType: !231, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1292, file: !1293, line: 68, baseType: !231, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1292, file: !1293, line: 69, baseType: !231, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1292, file: !1293, line: 70, baseType: !231, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1292, file: !1293, line: 71, baseType: !231, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1292, file: !1293, line: 72, baseType: !231, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1292, file: !1293, line: 73, baseType: !231, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1292, file: !1293, line: 74, baseType: !231, size: 64, offset: 768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1292, file: !1293, line: 75, baseType: !231, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1292, file: !1293, line: 76, baseType: !231, size: 64, offset: 896)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1292, file: !1293, line: 81, baseType: !231, size: 64, offset: 960)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1292, file: !1293, line: 83, baseType: !231, size: 64, offset: 1024)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1292, file: !1293, line: 84, baseType: !231, size: 64, offset: 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !1293, line: 85, baseType: !231, size: 64, offset: 1152)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1292, file: !1293, line: 86, baseType: !231, size: 64, offset: 1216)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1292, file: !1293, line: 87, baseType: !231, size: 64, offset: 1280)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1268, file: !1206, line: 96, baseType: !454, size: 32, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1211, file: !1206, line: 308, baseType: !1318, size: 4608, align: 512)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1206, line: 289, size: 4608, align: 512, elements: !1319)
!1319 = !{!1320, !1321, !1330}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1318, file: !1206, line: 290, baseType: !1229, size: 4096, align: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1318, file: !1206, line: 291, baseType: !1322, size: 512, offset: 4096)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1206, line: 268, size: 512, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1322, file: !1206, line: 269, baseType: !300, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1322, file: !1206, line: 270, baseType: !300, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1322, file: !1206, line: 271, baseType: !1327, size: 384, offset: 128)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 384, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 6)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1318, file: !1206, line: 292, baseType: !1331, offset: 4608)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 0)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1211, file: !1206, line: 309, baseType: !1335, size: 32768)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 32768, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 4096)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !272, line: 378, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !437, file: !272, line: 384, baseType: !760, size: 192, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !292, file: !272, line: 500, baseType: !140, offset: 6656)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !292, file: !272, line: 501, baseType: !1343, size: 64, offset: 6656)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !272, line: 387, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !292, file: !272, line: 516, baseType: !1346, size: 64, offset: 6720)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !272, line: 516, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !292, file: !272, line: 519, baseType: !259, size: 64, offset: 6784)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !292, file: !272, line: 521, baseType: !1350, size: 64, offset: 6848)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !272, line: 521, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !292, file: !272, line: 545, baseType: !322, size: 32, offset: 6912)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !292, file: !272, line: 548, baseType: !103, size: 8, offset: 6944)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !292, file: !272, line: 550, baseType: !1355, offset: 6952)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1356, line: 142, elements: !154)
!1356 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !292, file: !272, line: 554, baseType: !1358, size: 256, offset: 6976)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1359, line: 102, size: 256, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1358, file: !1359, line: 103, baseType: !330, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1358, file: !1359, line: 104, baseType: !127, size: 128, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1358, file: !1359, line: 105, baseType: !1364, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1359, line: 21, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !292, file: !272, line: 557, baseType: !454, size: 32, offset: 7232)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !289, file: !272, line: 565, baseType: !1371, offset: 7296)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: -1)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !271, file: !272, line: 333, baseType: !1375, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !261, line: 284, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !261, line: 284, size: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1376, file: !261, line: 284, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !320, line: 19, baseType: !231)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !271, file: !272, line: 334, baseType: !231, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !271, file: !272, line: 343, baseType: !1382, size: 256, offset: 704)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !272, line: 340, size: 256, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1382, file: !272, line: 341, baseType: !279, size: 192, align: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1382, file: !272, line: 342, baseType: !231, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !271, file: !272, line: 351, baseType: !127, size: 128, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !271, file: !272, line: 353, baseType: !1388, size: 64, offset: 1088)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !272, line: 353, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !271, file: !272, line: 356, baseType: !1391, size: 64, offset: 1152)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !272, line: 356, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !271, file: !272, line: 359, baseType: !231, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !271, file: !272, line: 361, baseType: !259, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !271, file: !272, line: 362, baseType: !70, size: 64, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !271, file: !272, line: 365, baseType: !330, size: 64, offset: 1408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !271, file: !272, line: 373, baseType: !1399, offset: 1472)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !272, line: 296, elements: !154)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !238, file: !206, line: 90, baseType: !233, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !238, file: !206, line: 91, baseType: !1402, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !196, file: !120, line: 143, baseType: !1404, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1407, !133}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1410)
!1410 = !{!1411, !1412, !1416, !1420, !1426, !1430}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1409, file: !18, line: 40, baseType: !17, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1409, file: !18, line: 41, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!103}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1409, file: !18, line: 42, baseType: !1417, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!70}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1409, file: !18, line: 43, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!112, !1424}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1409, file: !18, line: 44, baseType: !1427, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!112}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1409, file: !18, line: 45, baseType: !1431, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !70}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !196, file: !120, line: 144, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!112, !133}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !196, file: !120, line: 145, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !133, !1442, !1449}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1444, line: 23, baseType: !1445)
!1444 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 21, size: 32, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1445, file: !1444, line: 22, baseType: !1448, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !104, line: 32, baseType: !920)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1444, line: 28, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1444, line: 26, size: 32, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1451, file: !1444, line: 27, baseType: !1454, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !104, line: 33, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !214, line: 50, baseType: !7)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !119, file: !120, line: 70, baseType: !1457, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1459, line: 123, size: 1024, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1603, !1604, !1605, !1606, !1607}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1458, file: !1459, line: 124, baseType: !322, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1458, file: !1459, line: 125, baseType: !322, size: 32, offset: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1458, file: !1459, line: 135, baseType: !1457, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1458, file: !1459, line: 136, baseType: !123, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1458, file: !1459, line: 138, baseType: !279, size: 192, align: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1458, file: !1459, line: 140, baseType: !112, size: 64, offset: 384)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1458, file: !1459, line: 141, baseType: !7, size: 32, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1459, line: 142, baseType: !1469, size: 256, offset: 512)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1458, file: !1459, line: 142, size: 256, elements: !1470)
!1470 = !{!1471, !1526, !1530}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1469, file: !1459, line: 143, baseType: !1472, size: 192)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1459, line: 91, size: 192, elements: !1473)
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1472, file: !1459, line: 92, baseType: !231, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1472, file: !1459, line: 94, baseType: !296, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1472, file: !1459, line: 100, baseType: !1477, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1459, line: 180, size: 704, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1496, !1497, !1498, !1524, !1525}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1478, file: !1459, line: 182, baseType: !1457, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1478, file: !1459, line: 183, baseType: !7, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1478, file: !1459, line: 186, baseType: !1483, size: 192, offset: 128)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1484, line: 19, size: 192, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1485 = !{!1486, !1494, !1495}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1483, file: !1484, line: 20, baseType: !1487, size: 128)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1488, line: 292, size: 128, elements: !1489)
!1488 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1489 = !{!1490, !1491, !1493}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1487, file: !1488, line: 293, baseType: !140)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1487, file: !1488, line: 295, baseType: !1492, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !104, line: 148, baseType: !7)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1487, file: !1488, line: 296, baseType: !70, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1483, file: !1484, line: 21, baseType: !7, size: 32, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1483, file: !1484, line: 22, baseType: !7, size: 32, offset: 160)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1478, file: !1459, line: 187, baseType: !454, size: 32, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1478, file: !1459, line: 188, baseType: !454, size: 32, offset: 352)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1478, file: !1459, line: 189, baseType: !1499, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1459, line: 168, size: 320, elements: !1501)
!1501 = !{!1502, !1508, !1512, !1516, !1520}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1500, file: !1459, line: 169, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!76, !1506, !1477}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !261, line: 539, flags: DIFlagFwdDecl)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1500, file: !1459, line: 171, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!76, !1457, !123, !222}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1500, file: !1459, line: 173, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!76, !1457}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1500, file: !1459, line: 174, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!76, !1457, !1457, !123}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1500, file: !1459, line: 176, baseType: !1521, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!76, !1506, !1457, !1477}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1478, file: !1459, line: 192, baseType: !127, size: 128, offset: 448)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1478, file: !1459, line: 194, baseType: !731, size: 128, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1469, file: !1459, line: 144, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1459, line: 103, size: 64, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1527, file: !1459, line: 104, baseType: !1457, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1469, file: !1459, line: 145, baseType: !1531, size: 256)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1459, line: 107, size: 256, elements: !1532)
!1532 = !{!1533, !1598, !1601, !1602}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1531, file: !1459, line: 108, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1459, line: 217, size: 768, elements: !1537)
!1537 = !{!1538, !1558, !1562, !1566, !1571, !1575, !1579, !1583, !1584, !1585, !1586, !1594}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1536, file: !1459, line: 222, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!76, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1459, line: 197, size: 1088, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1543, file: !1459, line: 199, baseType: !1457, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1543, file: !1459, line: 200, baseType: !259, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1543, file: !1459, line: 201, baseType: !1506, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1543, file: !1459, line: 202, baseType: !70, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1543, file: !1459, line: 205, baseType: !399, size: 192, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1543, file: !1459, line: 206, baseType: !399, size: 192, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1543, file: !1459, line: 207, baseType: !76, size: 32, offset: 640)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1543, file: !1459, line: 208, baseType: !127, size: 128, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1543, file: !1459, line: 209, baseType: !181, size: 64, offset: 832)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1543, file: !1459, line: 211, baseType: !228, size: 64, offset: 896)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1543, file: !1459, line: 212, baseType: !103, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1543, file: !1459, line: 213, baseType: !103, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1543, file: !1459, line: 214, baseType: !1391, size: 64, offset: 1024)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1536, file: !1459, line: 223, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !1542}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1536, file: !1459, line: 236, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!76, !1506, !70}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1536, file: !1459, line: 238, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!70, !1506, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1536, file: !1459, line: 239, baseType: !1572, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!70, !1506, !70, !1570}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1536, file: !1459, line: 240, baseType: !1576, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !1506, !70}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1536, file: !1459, line: 242, baseType: !1580, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!212, !1542, !181, !228, !262}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1536, file: !1459, line: 252, baseType: !228, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1536, file: !1459, line: 259, baseType: !103, size: 8, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1536, file: !1459, line: 260, baseType: !1580, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1536, file: !1459, line: 263, baseType: !1587, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1590, !1542, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1591, line: 52, baseType: !7)
!1591 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1459, line: 27, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1536, file: !1459, line: 266, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!76, !1542, !270}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1531, file: !1459, line: 109, baseType: !1599, size: 64, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1459, line: 31, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1531, file: !1459, line: 110, baseType: !262, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1531, file: !1459, line: 111, baseType: !1457, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1458, file: !1459, line: 148, baseType: !70, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1458, file: !1459, line: 154, baseType: !300, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1458, file: !1459, line: 156, baseType: !223, size: 16, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1458, file: !1459, line: 157, baseType: !222, size: 16, offset: 912)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1458, file: !1459, line: 158, baseType: !1608, size: 64, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1459, line: 32, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !119, file: !120, line: 71, baseType: !1611, size: 32, offset: 448)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1612, line: 19, size: 32, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1611, file: !1612, line: 20, baseType: !460, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !119, file: !120, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !119, file: !120, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !119, file: !120, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !119, file: !120, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !119, file: !120, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !30, line: 463, baseType: !1621, size: 64, offset: 512)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !116, file: !30, line: 465, baseType: !1623, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !116, file: !30, line: 467, baseType: !123, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !30, line: 468, baseType: !1627, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1637, !1642, !1646}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !30, line: 88, baseType: !123, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1629, file: !30, line: 89, baseType: !235, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1629, file: !30, line: 90, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!76, !1621, !176}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1629, file: !30, line: 91, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!181, !1621, !1641, !1442, !1449}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1629, file: !30, line: 93, baseType: !1643, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1621}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1629, file: !30, line: 95, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1650)
!1650 = !{!1651, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1649, file: !37, line: 279, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!76, !1621}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1649, file: !37, line: 280, baseType: !1643, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1649, file: !37, line: 281, baseType: !1652, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1649, file: !37, line: 282, baseType: !1652, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1649, file: !37, line: 283, baseType: !1652, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1649, file: !37, line: 284, baseType: !1652, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1649, file: !37, line: 285, baseType: !1652, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1649, file: !37, line: 286, baseType: !1652, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1649, file: !37, line: 287, baseType: !1652, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1649, file: !37, line: 288, baseType: !1652, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1649, file: !37, line: 289, baseType: !1652, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1649, file: !37, line: 290, baseType: !1652, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1649, file: !37, line: 291, baseType: !1652, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1649, file: !37, line: 292, baseType: !1652, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1649, file: !37, line: 293, baseType: !1652, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1649, file: !37, line: 294, baseType: !1652, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1649, file: !37, line: 295, baseType: !1652, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1649, file: !37, line: 296, baseType: !1652, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1649, file: !37, line: 297, baseType: !1652, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1649, file: !37, line: 298, baseType: !1652, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1649, file: !37, line: 299, baseType: !1652, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1649, file: !37, line: 300, baseType: !1652, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1649, file: !37, line: 301, baseType: !1652, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !116, file: !30, line: 470, baseType: !1678, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1680, line: 82, size: 1408, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1767, !1770, !1773}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1679, file: !1680, line: 83, baseType: !123, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1679, file: !1680, line: 84, baseType: !123, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1679, file: !1680, line: 85, baseType: !1621, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1679, file: !1680, line: 86, baseType: !235, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1679, file: !1680, line: 87, baseType: !235, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1679, file: !1680, line: 88, baseType: !235, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1679, file: !1680, line: 90, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!76, !1621, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1701, !1702, !1703, !1704, !1718, !1731, !1732, !1733, !1734, !1735, !1743, !1744, !1745, !1746, !1747, !1748}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !24, line: 96, baseType: !123, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1693, file: !24, line: 97, baseType: !1678, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1693, file: !24, line: 99, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1700, line: 76, flags: DIFlagFwdDecl)
!1700 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1693, file: !24, line: 100, baseType: !123, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1693, file: !24, line: 102, baseType: !103, size: 8, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1693, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1693, file: !24, line: 105, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1708, line: 262, size: 1600, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1712, !1713, !1717}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1707, file: !1708, line: 263, baseType: !1711, size: 256)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1254)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1707, file: !1708, line: 264, baseType: !1711, size: 256, offset: 256)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1707, file: !1708, line: 265, baseType: !1714, size: 1024, offset: 512)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 1024, elements: !1715)
!1715 = !{!1716}
!1716 = !DISubrange(count: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1707, file: !1708, line: 266, baseType: !112, size: 64, offset: 1536)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1693, file: !24, line: 106, baseType: !1719, size: 64, offset: 384)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1708, line: 210, size: 256, elements: !1722)
!1722 = !{!1723, !1727, !1729, !1730}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1721, file: !1708, line: 211, baseType: !1724, size: 72)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 72, elements: !1725)
!1725 = !{!1726}
!1726 = !DISubrange(count: 9)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1721, file: !1708, line: 212, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1708, line: 14, baseType: !231)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1721, file: !1708, line: 213, baseType: !455, size: 32, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1721, file: !1708, line: 214, baseType: !455, size: 32, offset: 224)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1693, file: !24, line: 108, baseType: !1652, size: 64, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1693, file: !24, line: 109, baseType: !1643, size: 64, offset: 512)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1693, file: !24, line: 110, baseType: !1652, size: 64, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1693, file: !24, line: 111, baseType: !1643, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1693, file: !24, line: 112, baseType: !1736, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!76, !1621, !1739}
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1740, file: !37, line: 51, baseType: !76, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1693, file: !24, line: 113, baseType: !1652, size: 64, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1693, file: !24, line: 114, baseType: !235, size: 64, offset: 832)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1693, file: !24, line: 115, baseType: !235, size: 64, offset: 896)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1693, file: !24, line: 117, baseType: !1647, size: 64, offset: 960)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1693, file: !24, line: 118, baseType: !1643, size: 64, offset: 1024)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1693, file: !24, line: 120, baseType: !1749, size: 64, offset: 1088)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1679, file: !1680, line: 91, baseType: !1634, size: 64, offset: 448)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1679, file: !1680, line: 92, baseType: !1652, size: 64, offset: 512)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1679, file: !1680, line: 93, baseType: !1643, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1679, file: !1680, line: 94, baseType: !1652, size: 64, offset: 640)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1679, file: !1680, line: 95, baseType: !1643, size: 64, offset: 704)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1679, file: !1680, line: 97, baseType: !1652, size: 64, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1679, file: !1680, line: 98, baseType: !1652, size: 64, offset: 832)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1679, file: !1680, line: 100, baseType: !1736, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1679, file: !1680, line: 101, baseType: !1652, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1679, file: !1680, line: 103, baseType: !1652, size: 64, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1679, file: !1680, line: 105, baseType: !1652, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1679, file: !1680, line: 107, baseType: !1647, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1679, file: !1680, line: 109, baseType: !1764, size: 64, offset: 1216)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1680, line: 109, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1679, file: !1680, line: 111, baseType: !1768, size: 64, offset: 1280)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1680, line: 111, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1679, file: !1680, line: 112, baseType: !1771, offset: 1344)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1772, line: 187, elements: !154)
!1772 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1679, file: !1680, line: 114, baseType: !103, size: 8, offset: 1344)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !116, file: !30, line: 471, baseType: !1692, size: 64, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !116, file: !30, line: 473, baseType: !70, size: 64, offset: 896)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !116, file: !30, line: 475, baseType: !70, size: 64, offset: 960)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !116, file: !30, line: 480, baseType: !399, size: 192, offset: 1024)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !116, file: !30, line: 484, baseType: !1779, size: 576, offset: 1216)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1779, file: !30, line: 362, baseType: !127, size: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1779, file: !30, line: 363, baseType: !127, size: 128, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1779, file: !30, line: 364, baseType: !127, size: 128, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1779, file: !30, line: 365, baseType: !127, size: 128, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1779, file: !30, line: 366, baseType: !103, size: 8, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1779, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !116, file: !30, line: 485, baseType: !1788, size: 2304, offset: 1792)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1885, !1889}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1788, file: !37, line: 566, baseType: !1739, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1788, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1788, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1788, file: !37, line: 569, baseType: !103, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1788, file: !37, line: 570, baseType: !103, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1788, file: !37, line: 571, baseType: !103, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1788, file: !37, line: 572, baseType: !103, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1788, file: !37, line: 573, baseType: !103, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1788, file: !37, line: 574, baseType: !103, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1788, file: !37, line: 575, baseType: !103, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1788, file: !37, line: 576, baseType: !103, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1788, file: !37, line: 577, baseType: !454, size: 32, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1788, file: !37, line: 578, baseType: !140, offset: 96)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !37, line: 580, baseType: !127, size: 128, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1788, file: !37, line: 581, baseType: !760, size: 192, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1788, file: !37, line: 582, baseType: !1806, size: 64, offset: 448)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1808, line: 43, size: 1472, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1817, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1807, file: !1808, line: 44, baseType: !123, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1807, file: !1808, line: 45, baseType: !76, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1807, file: !1808, line: 46, baseType: !127, size: 128, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !1808, line: 47, baseType: !140, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1807, file: !1808, line: 48, baseType: !1815, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1807, file: !1808, line: 49, baseType: !1818, size: 320, offset: 320)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1819, line: 11, size: 320, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1820 = !{!1821, !1822, !1823, !1828}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1818, file: !1819, line: 16, baseType: !724, size: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1818, file: !1819, line: 17, baseType: !231, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1818, file: !1819, line: 18, baseType: !1824, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1827}
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1818, file: !1819, line: 19, baseType: !454, size: 32, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1807, file: !1808, line: 50, baseType: !231, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1807, file: !1808, line: 51, baseType: !530, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1807, file: !1808, line: 52, baseType: !530, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1807, file: !1808, line: 53, baseType: !530, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1807, file: !1808, line: 54, baseType: !530, size: 64, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1807, file: !1808, line: 55, baseType: !530, size: 64, offset: 960)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1807, file: !1808, line: 56, baseType: !231, size: 64, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1807, file: !1808, line: 57, baseType: !231, size: 64, offset: 1088)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1807, file: !1808, line: 58, baseType: !231, size: 64, offset: 1152)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1807, file: !1808, line: 59, baseType: !231, size: 64, offset: 1216)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1807, file: !1808, line: 60, baseType: !231, size: 64, offset: 1280)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1807, file: !1808, line: 61, baseType: !1621, size: 64, offset: 1344)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1807, file: !1808, line: 62, baseType: !103, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1807, file: !1808, line: 63, baseType: !103, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1788, file: !37, line: 583, baseType: !103, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1788, file: !37, line: 584, baseType: !103, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1788, file: !37, line: 585, baseType: !103, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1788, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1788, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1788, file: !37, line: 592, baseType: !522, size: 512, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1788, file: !37, line: 593, baseType: !300, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1788, file: !37, line: 594, baseType: !1358, size: 256, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1788, file: !37, line: 595, baseType: !731, size: 128, offset: 1408)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1788, file: !37, line: 596, baseType: !1815, size: 64, offset: 1536)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1788, file: !37, line: 597, baseType: !322, size: 32, offset: 1600)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1788, file: !37, line: 598, baseType: !322, size: 32, offset: 1632)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1788, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1788, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1788, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1788, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1788, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1788, file: !37, line: 604, baseType: !103, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1788, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1788, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1788, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1788, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1788, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1788, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1788, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1788, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1788, file: !37, line: 613, baseType: !76, size: 32, offset: 1792)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1788, file: !37, line: 614, baseType: !76, size: 32, offset: 1824)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1788, file: !37, line: 615, baseType: !300, size: 64, offset: 1856)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1788, file: !37, line: 616, baseType: !300, size: 64, offset: 1920)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1788, file: !37, line: 617, baseType: !300, size: 64, offset: 1984)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1788, file: !37, line: 618, baseType: !300, size: 64, offset: 2048)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1788, file: !37, line: 620, baseType: !1876, size: 64, offset: 2112)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1878)
!1878 = !{!1879, !1880, !1881, !1882}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1877, file: !37, line: 537, baseType: !140)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1877, file: !37, line: 538, baseType: !7, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1877, file: !37, line: 540, baseType: !127, size: 128, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1877, file: !37, line: 543, baseType: !1883, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1788, file: !37, line: 621, baseType: !1886, size: 64, offset: 2176)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{null, !1621, !684}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1788, file: !37, line: 622, baseType: !1890, size: 64, offset: 2240)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !116, file: !30, line: 486, baseType: !1893, size: 64, offset: 4096)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1902, !1903, !1904}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1894, file: !37, line: 643, baseType: !1649, size: 1472)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1894, file: !37, line: 644, baseType: !1652, size: 64, offset: 1472)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1894, file: !37, line: 645, baseType: !1899, size: 64, offset: 1536)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !1621, !103}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1894, file: !37, line: 646, baseType: !1652, size: 64, offset: 1600)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1894, file: !37, line: 647, baseType: !1643, size: 64, offset: 1664)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1894, file: !37, line: 648, baseType: !1643, size: 64, offset: 1728)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !116, file: !30, line: 493, baseType: !1906, size: 64, offset: 4160)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1996, !1997, !1998, !1999, !2000, !2001, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1907, file: !51, line: 163, baseType: !127, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1907, file: !51, line: 164, baseType: !123, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1907, file: !51, line: 165, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1915)
!1915 = !{!1916, !1945, !1956, !1961, !1965, !1973, !1977, !1981, !1988, !1992}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1914, file: !51, line: 106, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!76, !1906, !1920, !50}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1922, line: 51, size: 1344, elements: !1923)
!1922 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !{!1924, !1925, !1927, !1928, !1929, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1921, file: !1922, line: 52, baseType: !123, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1921, file: !1922, line: 53, baseType: !1926, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1922, line: 28, baseType: !454)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1921, file: !1922, line: 54, baseType: !123, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1921, file: !1922, line: 55, baseType: !81, size: 192, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1921, file: !1922, line: 57, baseType: !1930, size: 64, offset: 384)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1922, line: 31, size: 704, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1936, !1937}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1931, file: !1922, line: 32, baseType: !181, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1931, file: !1922, line: 33, baseType: !76, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1931, file: !1922, line: 34, baseType: !70, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1931, file: !1922, line: 35, baseType: !1930, size: 64, offset: 192)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1931, file: !1922, line: 43, baseType: !250, size: 448, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1921, file: !1922, line: 58, baseType: !1930, size: 64, offset: 448)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1921, file: !1922, line: 59, baseType: !1920, size: 64, offset: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1921, file: !1922, line: 60, baseType: !1920, size: 64, offset: 576)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1921, file: !1922, line: 61, baseType: !1920, size: 64, offset: 640)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1921, file: !1922, line: 63, baseType: !119, size: 512, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1921, file: !1922, line: 65, baseType: !231, size: 64, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1921, file: !1922, line: 66, baseType: !70, size: 64, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1914, file: !51, line: 108, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!76, !1906, !1949, !50}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1950, file: !51, line: 64, baseType: !85, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1950, file: !51, line: 65, baseType: !76, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1950, file: !51, line: 66, baseType: !1955, size: 512, offset: 96)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 512, elements: !816)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1914, file: !51, line: 110, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!76, !1906, !7, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !104, line: 164, baseType: !231)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1914, file: !51, line: 111, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !1906, !7}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1914, file: !51, line: 112, baseType: !1966, size: 64, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!76, !1906, !1920, !1969, !7, !1971, !1972}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1914, file: !51, line: 117, baseType: !1974, size: 64, offset: 320)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!76, !1906, !7, !7, !70}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1914, file: !51, line: 119, baseType: !1978, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !1906, !7, !7}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1914, file: !51, line: 121, baseType: !1982, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!76, !1906, !1985, !103}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !1987, line: 11, flags: DIFlagFwdDecl)
!1987 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1914, file: !51, line: 122, baseType: !1989, size: 64, offset: 512)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{null, !1906, !1985}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1914, file: !51, line: 123, baseType: !1993, size: 64, offset: 576)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!76, !1906, !1949, !1971, !1972}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1907, file: !51, line: 166, baseType: !70, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1907, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1907, file: !51, line: 171, baseType: !85, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1907, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1907, file: !51, line: 173, baseType: !2002, size: 64, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1907, file: !51, line: 175, baseType: !1906, size: 64, offset: 576)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1907, file: !51, line: 182, baseType: !1960, size: 64, offset: 640)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1907, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1907, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1907, file: !51, line: 185, baseType: !1487, size: 128, offset: 768)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1907, file: !51, line: 186, baseType: !399, size: 192, offset: 896)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1907, file: !51, line: 187, baseType: !2011, offset: 1088)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1372)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !116, file: !30, line: 499, baseType: !127, size: 128, offset: 4224)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !116, file: !30, line: 502, baseType: !2014, size: 64, offset: 4352)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !116, file: !30, line: 504, baseType: !2018, size: 64, offset: 4416)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !116, file: !30, line: 505, baseType: !300, size: 64, offset: 4480)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !116, file: !30, line: 510, baseType: !300, size: 64, offset: 4544)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !116, file: !30, line: 511, baseType: !2022, size: 64, offset: 4608)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !116, file: !30, line: 513, baseType: !2026, size: 64, offset: 4672)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2027, file: !30, line: 293, baseType: !7, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2027, file: !30, line: 294, baseType: !231, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !116, file: !30, line: 515, baseType: !127, size: 128, offset: 4736)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !116, file: !30, line: 526, baseType: !2033, offset: 4864)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2034, line: 5, elements: !154)
!2034 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !116, file: !30, line: 528, baseType: !1920, size: 64, offset: 4864)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !116, file: !30, line: 529, baseType: !85, size: 64, offset: 4928)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !116, file: !30, line: 534, baseType: !2038, size: 32, offset: 4992)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !104, line: 16, baseType: !2039)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !104, line: 13, baseType: !454)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !116, file: !30, line: 535, baseType: !454, size: 32, offset: 5024)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !116, file: !30, line: 537, baseType: !140, offset: 5056)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !116, file: !30, line: 538, baseType: !127, size: 128, offset: 5056)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !116, file: !30, line: 540, baseType: !2044, size: 64, offset: 5184)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2046, line: 54, size: 960, elements: !2047)
!2046 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2058, !2062, !2063, !2064, !2065, !2069, !2073, !2074}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2045, file: !2046, line: 55, baseType: !123, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2045, file: !2046, line: 56, baseType: !1698, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2045, file: !2046, line: 58, baseType: !235, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2045, file: !2046, line: 59, baseType: !235, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2045, file: !2046, line: 60, baseType: !133, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2045, file: !2046, line: 62, baseType: !1634, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2045, file: !2046, line: 63, baseType: !2055, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!181, !1621, !1641}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2045, file: !2046, line: 65, baseType: !2059, size: 64, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2044}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2045, file: !2046, line: 66, baseType: !1643, size: 64, offset: 512)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2045, file: !2046, line: 68, baseType: !1652, size: 64, offset: 576)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2045, file: !2046, line: 70, baseType: !1407, size: 64, offset: 640)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2045, file: !2046, line: 71, baseType: !2066, size: 64, offset: 704)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!112, !1621}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2045, file: !2046, line: 73, baseType: !2070, size: 64, offset: 768)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !1621, !1442, !1449}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2045, file: !2046, line: 75, baseType: !1647, size: 64, offset: 832)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2045, file: !2046, line: 77, baseType: !1768, size: 64, offset: 896)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !116, file: !30, line: 541, baseType: !235, size: 64, offset: 5248)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !116, file: !30, line: 543, baseType: !1643, size: 64, offset: 5312)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !116, file: !30, line: 544, baseType: !2078, size: 64, offset: 5376)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !116, file: !30, line: 545, baseType: !2081, size: 64, offset: 5440)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !116, file: !30, line: 547, baseType: !103, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !116, file: !30, line: 548, baseType: !103, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !116, file: !30, line: 549, baseType: !103, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !116, file: !30, line: 550, baseType: !103, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !89, file: !82, line: 116, baseType: !2088, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!103, !106, !123}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !89, file: !82, line: 118, baseType: !2092, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!76, !106, !123, !7, !70, !228}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !89, file: !82, line: 123, baseType: !2096, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!76, !106, !123, !2099, !228}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !89, file: !82, line: 126, baseType: !2101, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!123, !106}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !89, file: !82, line: 127, baseType: !2101, size: 64, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !89, file: !82, line: 128, baseType: !2106, size: 64, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!85, !106}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !89, file: !82, line: 130, baseType: !2110, size: 64, offset: 640)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!85, !106, !85}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !89, file: !82, line: 133, baseType: !2114, size: 64, offset: 704)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!85, !106, !123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !89, file: !82, line: 135, baseType: !2118, size: 64, offset: 768)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!76, !106, !123, !123, !7, !7, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !82, line: 43, size: 640, elements: !2123)
!2123 = !{!2124, !2125, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2122, file: !82, line: 44, baseType: !85, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2122, file: !82, line: 45, baseType: !7, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2122, file: !82, line: 46, baseType: !2127, size: 512, offset: 128)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 512, elements: !560)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !89, file: !82, line: 140, baseType: !2110, size: 64, offset: 832)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !89, file: !82, line: 143, baseType: !2106, size: 64, offset: 896)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !89, file: !82, line: 145, baseType: !92, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !89, file: !82, line: 146, baseType: !2132, size: 64, offset: 1024)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!76, !106, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !82, line: 29, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2136, file: !82, line: 30, baseType: !7, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2136, file: !82, line: 31, baseType: !7, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2136, file: !82, line: 32, baseType: !106, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !89, file: !82, line: 148, baseType: !2142, size: 64, offset: 1088)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!76, !106, !1621}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !81, file: !82, line: 20, baseType: !1621, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !72, file: !73, line: 355, baseType: !71, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !72, file: !73, line: 356, baseType: !127, size: 128, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !72, file: !73, line: 357, baseType: !127, size: 128, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !72, file: !73, line: 358, baseType: !127, size: 128, offset: 640)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !72, file: !73, line: 359, baseType: !127, size: 128, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !72, file: !73, line: 360, baseType: !2152, size: 32, offset: 896)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !73, line: 179, size: 32, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2152, file: !73, line: 180, baseType: !454, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2152, file: !73, line: 181, baseType: !454, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2152, file: !73, line: 182, baseType: !454, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2152, file: !73, line: 183, baseType: !454, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2152, file: !73, line: 184, baseType: !454, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2152, file: !73, line: 185, baseType: !454, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 361, baseType: !2161, size: 32, offset: 928)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !73, line: 190, size: 32, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2161, file: !73, line: 191, baseType: !454, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2161, file: !73, line: 192, baseType: !454, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2161, file: !73, line: 193, baseType: !454, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2161, file: !73, line: 194, baseType: !454, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2161, file: !73, line: 195, baseType: !454, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2161, file: !73, line: 196, baseType: !454, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2161, file: !73, line: 197, baseType: !454, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2161, file: !73, line: 198, baseType: !454, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2161, file: !73, line: 199, baseType: !454, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2161, file: !73, line: 200, baseType: !454, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2161, file: !73, line: 201, baseType: !454, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2161, file: !73, line: 202, baseType: !454, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2161, file: !73, line: 203, baseType: !454, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2161, file: !73, line: 204, baseType: !454, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !72, file: !73, line: 362, baseType: !2178, size: 960, offset: 960)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !73, line: 234, size: 960, elements: !2179)
!2179 = !{!2180, !2182, !2189, !2191, !2192, !2193, !2198, !2201}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2178, file: !73, line: 235, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !73, line: 217, baseType: !961)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2178, file: !73, line: 236, baseType: !2183, size: 32, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !73, line: 227, size: 32, elements: !2184)
!2184 = !{!2185, !2186, !2187, !2188}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2183, file: !73, line: 228, baseType: !454, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2183, file: !73, line: 229, baseType: !454, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2183, file: !73, line: 230, baseType: !454, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2183, file: !73, line: 231, baseType: !454, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2178, file: !73, line: 237, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !73, line: 218, baseType: !300)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2178, file: !73, line: 238, baseType: !181, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2178, file: !73, line: 239, baseType: !127, size: 128, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2178, file: !73, line: 240, baseType: !2194, size: 320, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !73, line: 219, baseType: !2195)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 320, elements: !2196)
!2196 = !{!2197}
!2197 = !DISubrange(count: 40)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2178, file: !73, line: 241, baseType: !2199, size: 160, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !73, line: 220, baseType: !2200)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 160, elements: !1225)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2178, file: !73, line: 242, baseType: !2202, size: 64, offset: 896)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !79, line: 899, size: 192, elements: !2204)
!2204 = !{!2205, !2207, !2212, !2218, !2225, !2231, !2237, !2245}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2203, file: !79, line: 900, baseType: !2206, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !79, line: 635, baseType: !454)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2203, file: !79, line: 904, baseType: !2208, size: 128)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 901, size: 128, elements: !2209)
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2208, file: !79, line: 902, baseType: !2206, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2208, file: !79, line: 903, baseType: !300, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2203, file: !79, line: 910, baseType: !2213, size: 128)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 906, size: 128, elements: !2214)
!2214 = !{!2215, !2216, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2213, file: !79, line: 907, baseType: !2206, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2213, file: !79, line: 908, baseType: !454, size: 32, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2213, file: !79, line: 909, baseType: !181, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2203, file: !79, line: 916, baseType: !2219, size: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 912, size: 128, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !79, line: 913, baseType: !2206, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2219, file: !79, line: 914, baseType: !454, size: 32, offset: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2219, file: !79, line: 915, baseType: !2224, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2203, file: !79, line: 922, baseType: !2226, size: 128)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 918, size: 128, elements: !2227)
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2226, file: !79, line: 919, baseType: !2206, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2226, file: !79, line: 920, baseType: !454, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2226, file: !79, line: 921, baseType: !2202, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2203, file: !79, line: 928, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 924, size: 128, elements: !2233)
!2233 = !{!2234, !2235, !2236}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2232, file: !79, line: 925, baseType: !2206, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2232, file: !79, line: 926, baseType: !2206, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2232, file: !79, line: 927, baseType: !78, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2203, file: !79, line: 935, baseType: !2238, size: 192)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 930, size: 192, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2244}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2238, file: !79, line: 931, baseType: !2206, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2238, file: !79, line: 932, baseType: !454, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2238, file: !79, line: 933, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !79, line: 128, baseType: !300)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2238, file: !79, line: 934, baseType: !454, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2203, file: !79, line: 941, baseType: !2246, size: 96)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2203, file: !79, line: 937, size: 96, elements: !2247)
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2246, file: !79, line: 938, baseType: !2206, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2246, file: !79, line: 939, baseType: !454, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2246, file: !79, line: 940, baseType: !454, size: 32, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !72, file: !73, line: 363, baseType: !2252, size: 1344, offset: 1920)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !73, line: 275, size: 1344, elements: !2253)
!2253 = !{!2254, !2255, !2265}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2252, file: !73, line: 276, baseType: !76, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !73, line: 277, baseType: !2256, size: 32, offset: 32)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !73, line: 254, size: 32, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2256, file: !73, line: 255, baseType: !454, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2256, file: !73, line: 256, baseType: !454, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2256, file: !73, line: 257, baseType: !454, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2256, file: !73, line: 258, baseType: !454, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2256, file: !73, line: 259, baseType: !454, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2256, file: !73, line: 260, baseType: !454, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2256, file: !73, line: 261, baseType: !454, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2252, file: !73, line: 278, baseType: !2266, size: 1280, offset: 64)
!2266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2267, size: 1280, elements: !2278)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !73, line: 264, size: 256, elements: !2268)
!2268 = !{!2269, !2275, !2276, !2277}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2267, file: !73, line: 269, baseType: !2270, size: 8)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2267, file: !73, line: 265, size: 8, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2270, file: !73, line: 266, baseType: !591, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2270, file: !73, line: 267, baseType: !591, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2270, file: !73, line: 268, baseType: !591, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2267, file: !73, line: 270, baseType: !76, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2267, file: !73, line: 271, baseType: !76, size: 32, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2267, file: !73, line: 272, baseType: !127, size: 128, offset: 128)
!2278 = !{!2279}
!2279 = !DISubrange(count: 5)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !72, file: !73, line: 364, baseType: !2281, size: 640, offset: 3264)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !73, line: 315, size: 640, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2292, !2301, !2302, !2303}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2281, file: !73, line: 316, baseType: !78, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2281, file: !73, line: 317, baseType: !300, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2281, file: !73, line: 318, baseType: !300, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2281, file: !73, line: 319, baseType: !127, size: 128, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !73, line: 320, baseType: !2288, size: 8, offset: 320)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !73, line: 305, size: 8, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2288, file: !73, line: 306, baseType: !591, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2288, file: !73, line: 307, baseType: !591, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2281, file: !73, line: 321, baseType: !2293, size: 128, offset: 384)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !73, line: 310, size: 128, elements: !2294)
!2294 = !{!2295, !2300}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2293, file: !73, line: 311, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2293, file: !73, line: 312, baseType: !1621, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2281, file: !73, line: 322, baseType: !1806, size: 64, offset: 512)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2281, file: !73, line: 323, baseType: !76, size: 32, offset: 576)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2281, file: !73, line: 324, baseType: !76, size: 32, offset: 608)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !72, file: !73, line: 365, baseType: !2305, size: 192, offset: 3904)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !73, line: 297, size: 192, elements: !2306)
!2306 = !{!2307, !2308, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2305, file: !73, line: 298, baseType: !76, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2305, file: !73, line: 299, baseType: !2309, size: 8, offset: 32)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !73, line: 283, size: 8, elements: !2310)
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2309, file: !73, line: 284, baseType: !591, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2305, file: !73, line: 300, baseType: !76, size: 32, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2305, file: !73, line: 301, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !73, line: 287, size: 64, elements: !2316)
!2316 = !{!2317, !2322, !2323, !2324}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !73, line: 291, baseType: !2318, size: 8)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2315, file: !73, line: 288, size: 8, elements: !2319)
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2318, file: !73, line: 289, baseType: !591, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2318, file: !73, line: 290, baseType: !591, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2315, file: !73, line: 292, baseType: !591, size: 8, offset: 8)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2315, file: !73, line: 293, baseType: !591, size: 8, offset: 16)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2315, file: !73, line: 294, baseType: !76, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !72, file: !73, line: 366, baseType: !2326, size: 64, offset: 4096)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !73, line: 209, size: 64, elements: !2327)
!2327 = !{!2328}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2326, file: !73, line: 210, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !73, line: 84, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !72, file: !73, line: 367, baseType: !2332, size: 384, offset: 4160)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !73, line: 341, size: 384, elements: !2333)
!2333 = !{!2334, !2337, !2338, !2339}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2332, file: !73, line: 342, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2332, file: !73, line: 343, baseType: !127, size: 128, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2332, file: !73, line: 344, baseType: !2335, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2332, file: !73, line: 345, baseType: !127, size: 128, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !72, file: !73, line: 368, baseType: !2341, size: 64, offset: 4544)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !73, line: 122, size: 1216, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2351, !2355, !2359, !2360, !2361}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2342, file: !73, line: 123, baseType: !1719, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2342, file: !73, line: 124, baseType: !127, size: 128, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2342, file: !73, line: 125, baseType: !2347, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!103, !123, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2342, file: !73, line: 126, baseType: !2352, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!76, !71, !1719}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2342, file: !73, line: 127, baseType: !2356, size: 64, offset: 320)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !71}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2342, file: !73, line: 128, baseType: !1643, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2342, file: !73, line: 129, baseType: !1643, size: 64, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2342, file: !73, line: 130, baseType: !2362, size: 704, offset: 512)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !73, line: 108, size: 704, elements: !2363)
!2363 = !{!2364, !2365, !2369, !2370, !2371}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2362, file: !73, line: 109, baseType: !119, size: 512)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2362, file: !73, line: 110, baseType: !2366, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!76, !71}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2362, file: !73, line: 111, baseType: !2356, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2362, file: !73, line: 112, baseType: !103, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2362, file: !73, line: 113, baseType: !103, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !72, file: !73, line: 369, baseType: !2373, size: 64, offset: 4608)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !73, line: 138, size: 256, elements: !2375)
!2375 = !{!2376, !2377, !2381, !2385}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2374, file: !73, line: 139, baseType: !71, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2374, file: !73, line: 140, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!76, !71, !454}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2374, file: !73, line: 141, baseType: !2382, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !71, !454}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2374, file: !73, line: 142, baseType: !2356, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !72, file: !73, line: 370, baseType: !2387, size: 64, offset: 4672)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !73, line: 162, size: 2816, elements: !2389)
!2389 = !{!2390, !2394, !2395, !2396, !2397, !2406, !2407}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2388, file: !73, line: 163, baseType: !2391, size: 640)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 640, elements: !2392)
!2392 = !{!2393}
!2393 = !DISubrange(count: 80)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2388, file: !73, line: 164, baseType: !2391, size: 640, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2388, file: !73, line: 165, baseType: !1719, size: 64, offset: 1280)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !73, line: 166, baseType: !7, size: 32, offset: 1344)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2388, file: !73, line: 167, baseType: !2398, size: 192, offset: 1408)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !73, line: 154, size: 192, elements: !2399)
!2399 = !{!2400, !2402, !2404}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2398, file: !73, line: 155, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !73, line: 150, baseType: !2366)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2398, file: !73, line: 156, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !73, line: 151, baseType: !2366)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2398, file: !73, line: 157, baseType: !2405, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !73, line: 152, baseType: !2382)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2388, file: !73, line: 168, baseType: !1693, size: 1152, offset: 1600)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2388, file: !73, line: 169, baseType: !1698, size: 64, offset: 2752)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !72, file: !73, line: 371, baseType: !2409, size: 64, offset: 4736)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2411)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !73, line: 348, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !72, file: !73, line: 372, baseType: !70, size: 64, offset: 4800)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !72, file: !73, line: 373, baseType: !116, size: 5568, offset: 4864)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !72, file: !73, line: 374, baseType: !7, size: 32, offset: 10432)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !72, file: !73, line: 375, baseType: !7, size: 32, offset: 10464)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !72, file: !73, line: 376, baseType: !127, size: 128, offset: 10496)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !72, file: !73, line: 377, baseType: !399, size: 192, offset: 10624)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !72, file: !73, line: 378, baseType: !2356, size: 64, offset: 10816)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !79, line: 421, baseType: !454)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hardware_id", file: !73, line: 222, size: 192, elements: !2422)
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2421, file: !73, line: 223, baseType: !127, size: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2421, file: !73, line: 224, baseType: !123, size: 64, offset: 128)
!2425 = !{!0, !2426, !2428, !2439, !2441, !2443}
!2426 = !DIGlobalVariableExpression(var: !2427, expr: !DIExpression())
!2427 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnpacpi_init179", scope: !2, file: !3, line: 314, type: !70, isLocal: true, isDefinition: true)
!2428 = !DIGlobalVariableExpression(var: !2429, expr: !DIExpression())
!2429 = distinct !DIGlobalVariable(name: "__setup_pnpacpi_setup", scope: !2, file: !3, line: 325, type: !2430, isLocal: true, isDefinition: true, align: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !2431, line: 241, size: 192, elements: !2432)
!2431 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2432 = !{!2433, !2434, !2438}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2430, file: !2431, line: 242, baseType: !123, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !2430, file: !2431, line: 243, baseType: !2435, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!76, !181}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !2430, file: !2431, line: 244, baseType: !76, size: 32, offset: 128)
!2439 = !DIGlobalVariableExpression(var: !2440, expr: !DIExpression())
!2440 = distinct !DIGlobalVariable(name: "pnpacpi_disabled", scope: !2, file: !3, line: 299, type: !76, isLocal: false, isDefinition: true)
!2441 = !DIGlobalVariableExpression(var: !2442, expr: !DIExpression())
!2442 = distinct !DIGlobalVariable(name: "num", scope: !2, file: !3, line: 18, type: !76, isLocal: true, isDefinition: true)
!2443 = !DIGlobalVariableExpression(var: !2444, expr: !DIExpression())
!2444 = distinct !DIGlobalVariable(name: "__setup_str_pnpacpi_setup", scope: !2, file: !3, line: 325, type: !2445, isLocal: true, isDefinition: true, align: 8)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 72, elements: !1725)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !2447, line: 411, size: 6464, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450, !2451, !2575, !2576, !2577, !2581, !2582, !2583, !2584, !2585, !2586}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2446, file: !2447, line: 412, baseType: !127, size: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2446, file: !2447, line: 413, baseType: !181, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2446, file: !2447, line: 416, baseType: !2452, size: 64, offset: 192)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!76, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !2447, line: 243, size: 7488, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2468, !2493, !2522, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2456, file: !2447, line: 244, baseType: !116, size: 5568)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2456, file: !2447, line: 245, baseType: !300, size: 64, offset: 5568)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2456, file: !2447, line: 246, baseType: !7, size: 32, offset: 5632)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2456, file: !2447, line: 247, baseType: !76, size: 32, offset: 5664)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2456, file: !2447, line: 249, baseType: !127, size: 128, offset: 5696)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2456, file: !2447, line: 250, baseType: !127, size: 128, offset: 5824)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !2456, file: !2447, line: 251, baseType: !127, size: 128, offset: 5952)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !2456, file: !2447, line: 252, baseType: !127, size: 128, offset: 6080)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2456, file: !2447, line: 254, baseType: !2467, size: 64, offset: 6208)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2456, file: !2447, line: 255, baseType: !2469, size: 64, offset: 6272)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !2447, line: 202, size: 6720, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475, !2476, !2477, !2478, !2484, !2488, !2489, !2490, !2491, !2492}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2470, file: !2447, line: 203, baseType: !116, size: 5568)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2470, file: !2447, line: 204, baseType: !593, size: 8, offset: 5568)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2470, file: !2447, line: 205, baseType: !127, size: 128, offset: 5632)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !2470, file: !2447, line: 206, baseType: !127, size: 128, offset: 5760)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2470, file: !2447, line: 207, baseType: !127, size: 128, offset: 5888)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2470, file: !2447, line: 209, baseType: !2467, size: 64, offset: 6016)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2470, file: !2447, line: 210, baseType: !2479, size: 64, offset: 6080)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !2447, line: 369, size: 128, elements: !2481)
!2481 = !{!2482, !2483}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2480, file: !2447, line: 370, baseType: !961, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2480, file: !2447, line: 371, baseType: !2479, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2470, file: !2447, line: 212, baseType: !2485, size: 400, offset: 6144)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 400, elements: !2486)
!2486 = !{!2487}
!2487 = !DISubrange(count: 50)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !2470, file: !2447, line: 213, baseType: !593, size: 8, offset: 6544)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !2470, file: !2447, line: 214, baseType: !593, size: 8, offset: 6552)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2470, file: !2447, line: 215, baseType: !7, size: 32, offset: 6560)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2470, file: !2447, line: 216, baseType: !593, size: 8, offset: 6592)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !2470, file: !2447, line: 217, baseType: !2329, size: 64, offset: 6656)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2456, file: !2447, line: 256, baseType: !2494, size: 64, offset: 6336)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !2447, line: 374, size: 1664, elements: !2496)
!2496 = !{!2497, !2498, !2506, !2507, !2511, !2515, !2516, !2520, !2521}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2495, file: !2447, line: 375, baseType: !123, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2495, file: !2447, line: 376, baseType: !2499, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2501)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1708, line: 220, size: 128, elements: !2502)
!2502 = !{!2503, !2505}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2501, file: !1708, line: 221, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 64, elements: !560)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2501, file: !1708, line: 222, baseType: !1728, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2495, file: !2447, line: 377, baseType: !7, size: 32, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2495, file: !2447, line: 378, baseType: !2508, size: 64, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!76, !2455, !2499}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2495, file: !2447, line: 379, baseType: !2512, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !2455}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2495, file: !2447, line: 380, baseType: !2512, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2495, file: !2447, line: 381, baseType: !2517, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!76, !2455, !1739}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2495, file: !2447, line: 382, baseType: !2452, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2495, file: !2447, line: 383, baseType: !1693, size: 1152, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !2456, file: !2447, line: 257, baseType: !2523, size: 64, offset: 6400)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !2447, line: 226, size: 256, elements: !2525)
!2525 = !{!2526, !2527, !2563, !2564}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !2524, file: !2447, line: 227, baseType: !2469, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2524, file: !2447, line: 228, baseType: !2528, size: 64, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !2447, line: 388, size: 2240, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2545, !2546, !2550, !2554, !2558, !2562}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !2529, file: !2447, line: 389, baseType: !127, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2529, file: !2447, line: 390, baseType: !181, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2529, file: !2447, line: 391, baseType: !2534, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1708, line: 225, size: 640, elements: !2537)
!2537 = !{!2538, !2539, !2540}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2536, file: !1708, line: 226, baseType: !2504, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2536, file: !1708, line: 227, baseType: !1728, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !2536, file: !1708, line: 230, baseType: !2541, size: 512, offset: 128)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2542, size: 512, elements: !560)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2536, file: !1708, line: 228, size: 64, elements: !2543)
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2542, file: !1708, line: 229, baseType: !2504, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2529, file: !2447, line: 392, baseType: !7, size: 32, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2529, file: !2447, line: 393, baseType: !2547, size: 64, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!76, !2523, !2534}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2529, file: !2447, line: 395, baseType: !2551, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !2523}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2529, file: !2447, line: 396, baseType: !2555, size: 64, offset: 448)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!76, !2523, !1739}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2529, file: !2447, line: 397, baseType: !2559, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!76, !2523}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2529, file: !2447, line: 398, baseType: !2495, size: 1664, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2524, file: !2447, line: 229, baseType: !70, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !2524, file: !2447, line: 230, baseType: !1739, size: 32, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2456, file: !2447, line: 259, baseType: !2479, size: 64, offset: 6464)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2456, file: !2447, line: 261, baseType: !76, size: 32, offset: 6528)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2456, file: !2447, line: 262, baseType: !76, size: 32, offset: 6560)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !2456, file: !2447, line: 263, baseType: !7, size: 32, offset: 6592)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2456, file: !2447, line: 264, baseType: !127, size: 128, offset: 6656)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2456, file: !2447, line: 265, baseType: !127, size: 128, offset: 6784)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2456, file: !2447, line: 267, baseType: !2485, size: 400, offset: 6912)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !2447, line: 268, baseType: !76, size: 32, offset: 7328)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !2456, file: !2447, line: 269, baseType: !2329, size: 64, offset: 7360)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2456, file: !2447, line: 270, baseType: !70, size: 64, offset: 7424)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2446, file: !2447, line: 417, baseType: !2452, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2446, file: !2447, line: 418, baseType: !2452, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2446, file: !2447, line: 421, baseType: !2578, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!103, !2455}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2446, file: !2447, line: 422, baseType: !2517, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2446, file: !2447, line: 423, baseType: !2452, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !2446, file: !2447, line: 426, baseType: !593, size: 8, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2446, file: !2447, line: 427, baseType: !116, size: 5568, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !2446, file: !2447, line: 428, baseType: !127, size: 128, offset: 6208)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !2446, file: !2447, line: 429, baseType: !127, size: 128, offset: 6336)
!2587 = !{i32 7, !"Dwarf Version", i32 4}
!2588 = !{i32 2, !"Debug Info Version", i32 3}
!2589 = !{i32 1, !"wchar_size", i32 2}
!2590 = !{i32 1, !"Code Model", i32 2}
!2591 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2592 = distinct !DISubprogram(name: "pnpacpi_get_resources", scope: !3, file: !3, line: 43, type: !2453, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2593 = !DILocalVariable(name: "dev", arg: 1, scope: !2592, file: !3, line: 43, type: !2455)
!2594 = !DILocation(line: 43, column: 50, scope: !2592)
!2595 = !DILocation(line: 45, column: 2, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 45, column: 2)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 45, column: 2)
!2598 = !DILocation(line: 45, column: 2, scope: !2597)
!2599 = !DILocation(line: 46, column: 42, scope: !2592)
!2600 = !DILocation(line: 46, column: 9, scope: !2592)
!2601 = !DILocation(line: 46, column: 2, scope: !2592)
!2602 = distinct !DISubprogram(name: "pnpacpi_set_resources", scope: !3, file: !3, line: 49, type: !2453, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2603 = !DILocalVariable(name: "dev", arg: 1, scope: !2602, file: !3, line: 49, type: !2455)
!2604 = !DILocation(line: 49, column: 50, scope: !2602)
!2605 = !DILocalVariable(name: "acpi_dev", scope: !2602, file: !3, line: 51, type: !71)
!2606 = !DILocation(line: 51, column: 22, scope: !2602)
!2607 = !DILocalVariable(name: "handle", scope: !2602, file: !3, line: 52, type: !78)
!2608 = !DILocation(line: 52, column: 14, scope: !2602)
!2609 = !DILocalVariable(name: "ret", scope: !2602, file: !3, line: 53, type: !76)
!2610 = !DILocation(line: 53, column: 6, scope: !2602)
!2611 = !DILocation(line: 55, column: 2, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 55, column: 2)
!2613 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 55, column: 2)
!2614 = !DILocation(line: 55, column: 2, scope: !2613)
!2615 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2616, file: !3, line: 57, type: !85)
!2616 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 57, column: 13)
!2617 = !DILocation(line: 57, column: 13, scope: !2616)
!2618 = !DILocalVariable(name: "__mptr", scope: !2619, file: !3, line: 57, type: !70)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 57, column: 13)
!2620 = !DILocation(line: 57, column: 13, scope: !2619)
!2621 = !DILocation(line: 57, column: 13, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 57, column: 13)
!2623 = !DILocation(line: 57, column: 11, scope: !2602)
!2624 = !DILocation(line: 58, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 58, column: 6)
!2626 = !DILocation(line: 58, column: 6, scope: !2602)
!2627 = !DILocation(line: 60, column: 3, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 58, column: 17)
!2629 = !DILocalVariable(name: "__ret_warn_on", scope: !2630, file: !3, line: 63, type: !76)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 63, column: 6)
!2631 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 63, column: 6)
!2632 = !DILocation(line: 63, column: 6, scope: !2630)
!2633 = !DILocation(line: 63, column: 6, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 63, column: 6)
!2635 = !DILocation(line: 63, column: 6, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 63, column: 6)
!2637 = !DILocation(line: 63, column: 6, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 63, column: 6)
!2639 = !DILocation(line: 63, column: 6, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 63, column: 6)
!2641 = !{i32 -2142775805, i32 -2142775776, i32 -2142775730, i32 -2142775672, i32 -2142775618, i32 -2142775564, i32 -2142775509, i32 -2142775478}
!2642 = !DILocation(line: 63, column: 6, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 63, column: 6)
!2644 = !{i32 -2142775060, i32 -2142775053, i32 -2142775001, i32 -2142774970, i32 -2142774940}
!2645 = !DILocation(line: 63, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 63, column: 6)
!2647 = !DILocation(line: 63, column: 6, scope: !2631)
!2648 = !DILocation(line: 63, column: 6, scope: !2602)
!2649 = !DILocation(line: 64, column: 15, scope: !2631)
!2650 = !DILocation(line: 64, column: 3, scope: !2631)
!2651 = !DILocation(line: 64, column: 8, scope: !2631)
!2652 = !DILocation(line: 64, column: 13, scope: !2631)
!2653 = !DILocation(line: 66, column: 11, scope: !2602)
!2654 = !DILocation(line: 66, column: 21, scope: !2602)
!2655 = !DILocation(line: 66, column: 9, scope: !2602)
!2656 = !DILocation(line: 67, column: 22, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 67, column: 6)
!2658 = !DILocation(line: 67, column: 6, scope: !2657)
!2659 = !DILocation(line: 67, column: 6, scope: !2602)
!2660 = !DILocalVariable(name: "buffer", scope: !2661, file: !3, line: 68, type: !2662)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !3, line: 67, column: 49)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !79, line: 969, size: 128, elements: !2663)
!2663 = !{!2664, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2662, file: !79, line: 970, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !79, line: 127, baseType: !300)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2662, file: !79, line: 971, baseType: !70, size: 64, offset: 64)
!2667 = !DILocation(line: 68, column: 22, scope: !2661)
!2668 = !DILocation(line: 70, column: 41, scope: !2661)
!2669 = !DILocation(line: 70, column: 9, scope: !2661)
!2670 = !DILocation(line: 70, column: 7, scope: !2661)
!2671 = !DILocation(line: 71, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 71, column: 7)
!2673 = !DILocation(line: 71, column: 7, scope: !2661)
!2674 = !DILocation(line: 72, column: 11, scope: !2672)
!2675 = !DILocation(line: 72, column: 4, scope: !2672)
!2676 = !DILocation(line: 74, column: 34, scope: !2661)
!2677 = !DILocation(line: 74, column: 9, scope: !2661)
!2678 = !DILocation(line: 74, column: 7, scope: !2661)
!2679 = !DILocation(line: 75, column: 8, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 75, column: 7)
!2681 = !DILocation(line: 75, column: 7, scope: !2661)
!2682 = !DILocalVariable(name: "status", scope: !2683, file: !3, line: 76, type: !2419)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 75, column: 13)
!2684 = !DILocation(line: 76, column: 16, scope: !2683)
!2685 = !DILocation(line: 78, column: 40, scope: !2683)
!2686 = !DILocation(line: 78, column: 13, scope: !2683)
!2687 = !DILocation(line: 78, column: 11, scope: !2683)
!2688 = !DILocation(line: 79, column: 8, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 79, column: 8)
!2690 = !DILocation(line: 79, column: 8, scope: !2683)
!2691 = !DILocation(line: 80, column: 9, scope: !2689)
!2692 = !DILocation(line: 80, column: 5, scope: !2689)
!2693 = !DILocation(line: 81, column: 3, scope: !2683)
!2694 = !DILocation(line: 82, column: 16, scope: !2661)
!2695 = !DILocation(line: 82, column: 3, scope: !2661)
!2696 = !DILocation(line: 83, column: 2, scope: !2661)
!2697 = !DILocation(line: 84, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 84, column: 6)
!2699 = !DILocation(line: 84, column: 11, scope: !2698)
!2700 = !DILocation(line: 84, column: 43, scope: !2698)
!2701 = !DILocation(line: 84, column: 14, scope: !2698)
!2702 = !DILocation(line: 84, column: 6, scope: !2602)
!2703 = !DILocation(line: 85, column: 31, scope: !2698)
!2704 = !DILocation(line: 85, column: 9, scope: !2698)
!2705 = !DILocation(line: 85, column: 7, scope: !2698)
!2706 = !DILocation(line: 85, column: 3, scope: !2698)
!2707 = !DILocation(line: 87, column: 9, scope: !2602)
!2708 = !DILocation(line: 87, column: 2, scope: !2602)
!2709 = !DILocation(line: 88, column: 1, scope: !2602)
!2710 = distinct !DISubprogram(name: "pnpacpi_disable_resources", scope: !3, file: !3, line: 90, type: !2453, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2711 = !DILocalVariable(name: "dev", arg: 1, scope: !2710, file: !3, line: 90, type: !2455)
!2712 = !DILocation(line: 90, column: 54, scope: !2710)
!2713 = !DILocalVariable(name: "acpi_dev", scope: !2710, file: !3, line: 92, type: !71)
!2714 = !DILocation(line: 92, column: 22, scope: !2710)
!2715 = !DILocalVariable(name: "status", scope: !2710, file: !3, line: 93, type: !2419)
!2716 = !DILocation(line: 93, column: 14, scope: !2710)
!2717 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2718, file: !3, line: 97, type: !85)
!2718 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 97, column: 13)
!2719 = !DILocation(line: 97, column: 13, scope: !2718)
!2720 = !DILocalVariable(name: "__mptr", scope: !2721, file: !3, line: 97, type: !70)
!2721 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 97, column: 13)
!2722 = !DILocation(line: 97, column: 13, scope: !2721)
!2723 = !DILocation(line: 97, column: 13, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 97, column: 13)
!2725 = !DILocation(line: 97, column: 11, scope: !2710)
!2726 = !DILocation(line: 98, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 98, column: 6)
!2728 = !DILocation(line: 98, column: 6, scope: !2710)
!2729 = !DILocation(line: 100, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 98, column: 17)
!2731 = !DILocation(line: 104, column: 35, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 104, column: 6)
!2733 = !DILocation(line: 104, column: 6, scope: !2732)
!2734 = !DILocation(line: 104, column: 6, scope: !2710)
!2735 = !DILocation(line: 105, column: 25, scope: !2732)
!2736 = !DILocation(line: 105, column: 3, scope: !2732)
!2737 = !DILocation(line: 108, column: 32, scope: !2710)
!2738 = !DILocation(line: 108, column: 42, scope: !2710)
!2739 = !DILocation(line: 108, column: 11, scope: !2710)
!2740 = !DILocation(line: 108, column: 9, scope: !2710)
!2741 = !DILocation(line: 109, column: 6, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 109, column: 6)
!2743 = !DILocation(line: 109, column: 27, scope: !2742)
!2744 = !DILocation(line: 109, column: 30, scope: !2742)
!2745 = !DILocation(line: 109, column: 37, scope: !2742)
!2746 = !DILocation(line: 109, column: 6, scope: !2710)
!2747 = !DILocation(line: 110, column: 3, scope: !2742)
!2748 = !DILocation(line: 112, column: 2, scope: !2710)
!2749 = !DILocation(line: 113, column: 1, scope: !2710)
!2750 = distinct !DISubprogram(name: "pnpacpi_can_wakeup", scope: !3, file: !3, line: 116, type: !2579, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2751 = !DILocalVariable(name: "dev", arg: 1, scope: !2750, file: !3, line: 116, type: !2455)
!2752 = !DILocation(line: 116, column: 48, scope: !2750)
!2753 = !DILocalVariable(name: "acpi_dev", scope: !2750, file: !3, line: 118, type: !71)
!2754 = !DILocation(line: 118, column: 22, scope: !2750)
!2755 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2756, file: !3, line: 118, type: !85)
!2756 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 118, column: 33)
!2757 = !DILocation(line: 118, column: 33, scope: !2756)
!2758 = !DILocalVariable(name: "__mptr", scope: !2759, file: !3, line: 118, type: !70)
!2759 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 118, column: 33)
!2760 = !DILocation(line: 118, column: 33, scope: !2759)
!2761 = !DILocation(line: 118, column: 33, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 118, column: 33)
!2763 = !DILocation(line: 120, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 120, column: 6)
!2765 = !DILocation(line: 120, column: 6, scope: !2750)
!2766 = !DILocation(line: 122, column: 3, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 120, column: 17)
!2768 = !DILocation(line: 125, column: 29, scope: !2750)
!2769 = !DILocation(line: 125, column: 39, scope: !2750)
!2770 = !DILocation(line: 125, column: 9, scope: !2750)
!2771 = !DILocation(line: 125, column: 2, scope: !2750)
!2772 = !DILocation(line: 126, column: 1, scope: !2750)
!2773 = distinct !DISubprogram(name: "pnpacpi_suspend", scope: !3, file: !3, line: 128, type: !2518, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2774 = !DILocalVariable(name: "dev", arg: 1, scope: !2773, file: !3, line: 128, type: !2455)
!2775 = !DILocation(line: 128, column: 44, scope: !2773)
!2776 = !DILocalVariable(name: "state", arg: 2, scope: !2773, file: !3, line: 128, type: !1739)
!2777 = !DILocation(line: 128, column: 62, scope: !2773)
!2778 = !DILocalVariable(name: "acpi_dev", scope: !2773, file: !3, line: 130, type: !71)
!2779 = !DILocation(line: 130, column: 22, scope: !2773)
!2780 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2781, file: !3, line: 130, type: !85)
!2781 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 130, column: 33)
!2782 = !DILocation(line: 130, column: 33, scope: !2781)
!2783 = !DILocalVariable(name: "__mptr", scope: !2784, file: !3, line: 130, type: !70)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 130, column: 33)
!2785 = !DILocation(line: 130, column: 33, scope: !2784)
!2786 = !DILocation(line: 130, column: 33, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 130, column: 33)
!2788 = !DILocalVariable(name: "error", scope: !2773, file: !3, line: 131, type: !76)
!2789 = !DILocation(line: 131, column: 6, scope: !2773)
!2790 = !DILocation(line: 133, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 133, column: 6)
!2792 = !DILocation(line: 133, column: 6, scope: !2773)
!2793 = !DILocation(line: 135, column: 3, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !3, line: 133, column: 17)
!2795 = !DILocation(line: 138, column: 25, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 138, column: 6)
!2797 = !DILocation(line: 138, column: 30, scope: !2796)
!2798 = !DILocation(line: 138, column: 6, scope: !2796)
!2799 = !DILocation(line: 138, column: 6, scope: !2773)
!2800 = !DILocation(line: 139, column: 38, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 138, column: 36)
!2802 = !DILocation(line: 139, column: 43, scope: !2801)
!2803 = !DILocation(line: 140, column: 31, scope: !2801)
!2804 = !DILocation(line: 140, column: 36, scope: !2801)
!2805 = !DILocation(line: 140, column: 12, scope: !2801)
!2806 = !DILocation(line: 139, column: 11, scope: !2801)
!2807 = !DILocation(line: 139, column: 9, scope: !2801)
!2808 = !DILocation(line: 141, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 141, column: 7)
!2810 = !DILocation(line: 141, column: 7, scope: !2801)
!2811 = !DILocation(line: 142, column: 11, scope: !2809)
!2812 = !DILocation(line: 142, column: 4, scope: !2809)
!2813 = !DILocation(line: 143, column: 2, scope: !2801)
!2814 = !DILocation(line: 145, column: 35, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 145, column: 6)
!2816 = !DILocation(line: 145, column: 6, scope: !2815)
!2817 = !DILocation(line: 145, column: 6, scope: !2773)
!2818 = !DILocalVariable(name: "power_state", scope: !2819, file: !3, line: 146, type: !76)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 145, column: 46)
!2820 = !DILocation(line: 146, column: 7, scope: !2819)
!2821 = !DILocation(line: 146, column: 49, scope: !2819)
!2822 = !DILocation(line: 146, column: 54, scope: !2819)
!2823 = !DILocation(line: 146, column: 21, scope: !2819)
!2824 = !DILocation(line: 148, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 148, column: 7)
!2826 = !DILocation(line: 148, column: 19, scope: !2825)
!2827 = !DILocation(line: 148, column: 7, scope: !2819)
!2828 = !DILocation(line: 149, column: 25, scope: !2825)
!2829 = !DILocation(line: 149, column: 31, scope: !2825)
!2830 = !DILocation(line: 149, column: 18, scope: !2825)
!2831 = !DILocation(line: 149, column: 16, scope: !2825)
!2832 = !DILocation(line: 149, column: 4, scope: !2825)
!2833 = !DILocation(line: 158, column: 33, scope: !2819)
!2834 = !DILocation(line: 158, column: 43, scope: !2819)
!2835 = !DILocation(line: 158, column: 11, scope: !2819)
!2836 = !DILocation(line: 158, column: 9, scope: !2819)
!2837 = !DILocation(line: 159, column: 2, scope: !2819)
!2838 = !DILocation(line: 161, column: 9, scope: !2773)
!2839 = !DILocation(line: 161, column: 2, scope: !2773)
!2840 = !DILocation(line: 162, column: 1, scope: !2773)
!2841 = distinct !DISubprogram(name: "pnpacpi_resume", scope: !3, file: !3, line: 164, type: !2453, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2842 = !DILocalVariable(name: "dev", arg: 1, scope: !2841, file: !3, line: 164, type: !2455)
!2843 = !DILocation(line: 164, column: 43, scope: !2841)
!2844 = !DILocalVariable(name: "acpi_dev", scope: !2841, file: !3, line: 166, type: !71)
!2845 = !DILocation(line: 166, column: 22, scope: !2841)
!2846 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2847, file: !3, line: 166, type: !85)
!2847 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 166, column: 33)
!2848 = !DILocation(line: 166, column: 33, scope: !2847)
!2849 = !DILocalVariable(name: "__mptr", scope: !2850, file: !3, line: 166, type: !70)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 166, column: 33)
!2851 = !DILocation(line: 166, column: 33, scope: !2850)
!2852 = !DILocation(line: 166, column: 33, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 166, column: 33)
!2854 = !DILocalVariable(name: "error", scope: !2841, file: !3, line: 167, type: !76)
!2855 = !DILocation(line: 167, column: 6, scope: !2841)
!2856 = !DILocation(line: 169, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 169, column: 6)
!2858 = !DILocation(line: 169, column: 6, scope: !2841)
!2859 = !DILocation(line: 171, column: 3, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 169, column: 17)
!2861 = !DILocation(line: 174, column: 25, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 174, column: 6)
!2863 = !DILocation(line: 174, column: 30, scope: !2862)
!2864 = !DILocation(line: 174, column: 6, scope: !2862)
!2865 = !DILocation(line: 174, column: 6, scope: !2841)
!2866 = !DILocation(line: 175, column: 30, scope: !2862)
!2867 = !DILocation(line: 175, column: 35, scope: !2862)
!2868 = !DILocation(line: 175, column: 3, scope: !2862)
!2869 = !DILocation(line: 177, column: 35, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2841, file: !3, line: 177, column: 6)
!2871 = !DILocation(line: 177, column: 6, scope: !2870)
!2872 = !DILocation(line: 177, column: 6, scope: !2841)
!2873 = !DILocation(line: 178, column: 33, scope: !2870)
!2874 = !DILocation(line: 178, column: 11, scope: !2870)
!2875 = !DILocation(line: 178, column: 9, scope: !2870)
!2876 = !DILocation(line: 178, column: 3, scope: !2870)
!2877 = !DILocation(line: 180, column: 9, scope: !2841)
!2878 = !DILocation(line: 180, column: 2, scope: !2841)
!2879 = !DILocation(line: 181, column: 1, scope: !2841)
!2880 = distinct !DISubprogram(name: "pnpacpi_init", scope: !3, file: !3, line: 300, type: !2881, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!76}
!2883 = !DILocation(line: 302, column: 6, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 302, column: 6)
!2885 = !DILocation(line: 302, column: 20, scope: !2884)
!2886 = !DILocation(line: 302, column: 23, scope: !2884)
!2887 = !DILocation(line: 302, column: 6, scope: !2880)
!2888 = !DILocation(line: 303, column: 3, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 302, column: 41)
!2890 = !DILocation(line: 304, column: 3, scope: !2889)
!2891 = !DILocation(line: 306, column: 2, scope: !2880)
!2892 = !DILocation(line: 307, column: 2, scope: !2880)
!2893 = !DILocation(line: 308, column: 2, scope: !2880)
!2894 = !DILocation(line: 309, column: 56, scope: !2880)
!2895 = !DILocation(line: 309, column: 2, scope: !2880)
!2896 = !DILocation(line: 310, column: 23, scope: !2880)
!2897 = !DILocation(line: 311, column: 2, scope: !2880)
!2898 = !DILocation(line: 312, column: 1, scope: !2880)
!2899 = distinct !DISubprogram(name: "pnpacpi_setup", scope: !3, file: !3, line: 316, type: !2436, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2900 = !DILocalVariable(name: "str", arg: 1, scope: !2899, file: !3, line: 316, type: !181)
!2901 = !DILocation(line: 316, column: 39, scope: !2899)
!2902 = !DILocation(line: 318, column: 6, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 318, column: 6)
!2904 = !DILocation(line: 318, column: 10, scope: !2903)
!2905 = !DILocation(line: 318, column: 6, scope: !2899)
!2906 = !DILocation(line: 319, column: 3, scope: !2903)
!2907 = !DILocation(line: 320, column: 15, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 320, column: 6)
!2909 = !DILocation(line: 320, column: 7, scope: !2908)
!2910 = !DILocation(line: 320, column: 6, scope: !2899)
!2911 = !DILocation(line: 321, column: 20, scope: !2908)
!2912 = !DILocation(line: 321, column: 3, scope: !2908)
!2913 = !DILocation(line: 322, column: 2, scope: !2899)
!2914 = !DILocation(line: 323, column: 1, scope: !2899)
!2915 = distinct !DISubprogram(name: "acpi_device_power_manageable", scope: !73, file: !73, line: 672, type: !2916, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!103, !71}
!2918 = !DILocalVariable(name: "adev", arg: 1, scope: !2915, file: !73, line: 672, type: !71)
!2919 = !DILocation(line: 672, column: 69, scope: !2915)
!2920 = !DILocation(line: 674, column: 9, scope: !2915)
!2921 = !DILocation(line: 674, column: 15, scope: !2915)
!2922 = !DILocation(line: 674, column: 21, scope: !2915)
!2923 = !DILocation(line: 674, column: 2, scope: !2915)
!2924 = distinct !DISubprogram(name: "device_can_wakeup", scope: !1808, file: !1808, line: 77, type: !2925, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!103, !1621}
!2927 = !DILocalVariable(name: "dev", arg: 1, scope: !2924, file: !1808, line: 77, type: !1621)
!2928 = !DILocation(line: 77, column: 53, scope: !2924)
!2929 = !DILocation(line: 79, column: 9, scope: !2924)
!2930 = !DILocation(line: 79, column: 14, scope: !2924)
!2931 = !DILocation(line: 79, column: 20, scope: !2924)
!2932 = !DILocation(line: 79, column: 2, scope: !2924)
!2933 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1808, file: !1808, line: 82, type: !2925, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2934 = !DILocalVariable(name: "dev", arg: 1, scope: !2933, file: !1808, line: 82, type: !1621)
!2935 = !DILocation(line: 82, column: 53, scope: !2933)
!2936 = !DILocation(line: 84, column: 9, scope: !2933)
!2937 = !DILocation(line: 84, column: 14, scope: !2933)
!2938 = !DILocation(line: 84, column: 20, scope: !2933)
!2939 = !DILocation(line: 84, column: 31, scope: !2933)
!2940 = !DILocation(line: 84, column: 36, scope: !2933)
!2941 = !DILocation(line: 84, column: 41, scope: !2933)
!2942 = !DILocation(line: 84, column: 47, scope: !2933)
!2943 = !DILocation(line: 84, column: 35, scope: !2933)
!2944 = !DILocation(line: 84, column: 34, scope: !2933)
!2945 = !DILocation(line: 0, scope: !2933)
!2946 = !DILocation(line: 84, column: 2, scope: !2933)
!2947 = distinct !DISubprogram(name: "pnpacpi_add_device_handler", scope: !3, file: !3, line: 286, type: !2948, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!2419, !78, !454, !70, !2950}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2951 = !DILocalVariable(name: "handle", arg: 1, scope: !2947, file: !3, line: 286, type: !78)
!2952 = !DILocation(line: 286, column: 66, scope: !2947)
!2953 = !DILocalVariable(name: "lvl", arg: 2, scope: !2947, file: !3, line: 287, type: !454)
!2954 = !DILocation(line: 287, column: 16, scope: !2947)
!2955 = !DILocalVariable(name: "context", arg: 3, scope: !2947, file: !3, line: 287, type: !70)
!2956 = !DILocation(line: 287, column: 27, scope: !2947)
!2957 = !DILocalVariable(name: "rv", arg: 4, scope: !2947, file: !3, line: 288, type: !2950)
!2958 = !DILocation(line: 288, column: 19, scope: !2947)
!2959 = !DILocalVariable(name: "device", scope: !2947, file: !3, line: 290, type: !71)
!2960 = !DILocation(line: 290, column: 22, scope: !2947)
!2961 = !DILocation(line: 292, column: 26, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 292, column: 6)
!2963 = !DILocation(line: 292, column: 6, scope: !2962)
!2964 = !DILocation(line: 292, column: 6, scope: !2947)
!2965 = !DILocation(line: 293, column: 3, scope: !2962)
!2966 = !DILocation(line: 294, column: 25, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 294, column: 6)
!2968 = !DILocation(line: 294, column: 6, scope: !2967)
!2969 = !DILocation(line: 294, column: 6, scope: !2947)
!2970 = !DILocation(line: 295, column: 22, scope: !2967)
!2971 = !DILocation(line: 295, column: 3, scope: !2967)
!2972 = !DILocation(line: 296, column: 2, scope: !2947)
!2973 = !DILocation(line: 297, column: 1, scope: !2947)
!2974 = distinct !DISubprogram(name: "pnpacpi_add_device", scope: !3, file: !3, line: 209, type: !2367, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!2975 = !DILocalVariable(name: "device", arg: 1, scope: !2974, file: !3, line: 209, type: !71)
!2976 = !DILocation(line: 209, column: 58, scope: !2974)
!2977 = !DILocalVariable(name: "dev", scope: !2974, file: !3, line: 211, type: !2455)
!2978 = !DILocation(line: 211, column: 18, scope: !2974)
!2979 = !DILocalVariable(name: "pnpid", scope: !2974, file: !3, line: 212, type: !123)
!2980 = !DILocation(line: 212, column: 14, scope: !2974)
!2981 = !DILocalVariable(name: "id", scope: !2974, file: !3, line: 213, type: !2420)
!2982 = !DILocation(line: 213, column: 27, scope: !2974)
!2983 = !DILocalVariable(name: "error", scope: !2974, file: !3, line: 214, type: !76)
!2984 = !DILocation(line: 214, column: 6, scope: !2974)
!2985 = !DILocation(line: 217, column: 6, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 217, column: 6)
!2987 = !DILocation(line: 217, column: 14, scope: !2986)
!2988 = !DILocation(line: 217, column: 6, scope: !2974)
!2989 = !DILocation(line: 218, column: 3, scope: !2986)
!2990 = !DILocation(line: 224, column: 23, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 224, column: 6)
!2992 = !DILocation(line: 224, column: 31, scope: !2991)
!2993 = !DILocation(line: 224, column: 7, scope: !2991)
!2994 = !DILocation(line: 224, column: 6, scope: !2974)
!2995 = !DILocation(line: 225, column: 3, scope: !2991)
!2996 = !DILocation(line: 227, column: 25, scope: !2974)
!2997 = !DILocation(line: 227, column: 10, scope: !2974)
!2998 = !DILocation(line: 227, column: 8, scope: !2974)
!2999 = !DILocation(line: 228, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 228, column: 6)
!3001 = !DILocation(line: 228, column: 6, scope: !2974)
!3002 = !DILocation(line: 229, column: 3, scope: !3000)
!3003 = !DILocation(line: 231, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 231, column: 6)
!3005 = !DILocation(line: 231, column: 15, scope: !3004)
!3006 = !DILocation(line: 231, column: 22, scope: !3004)
!3007 = !DILocation(line: 231, column: 6, scope: !2974)
!3008 = !DILocation(line: 232, column: 3, scope: !3004)
!3009 = !DILocation(line: 234, column: 41, scope: !2974)
!3010 = !DILocation(line: 234, column: 46, scope: !2974)
!3011 = !DILocation(line: 234, column: 8, scope: !2974)
!3012 = !DILocation(line: 234, column: 6, scope: !2974)
!3013 = !DILocation(line: 235, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 235, column: 6)
!3015 = !DILocation(line: 235, column: 6, scope: !2974)
!3016 = !DILocation(line: 236, column: 3, scope: !3014)
!3017 = !DILocation(line: 238, column: 2, scope: !2974)
!3018 = !DILocation(line: 239, column: 14, scope: !2974)
!3019 = !DILocation(line: 239, column: 2, scope: !2974)
!3020 = !DILocation(line: 239, column: 7, scope: !2974)
!3021 = !DILocation(line: 239, column: 12, scope: !2974)
!3022 = !DILocation(line: 241, column: 16, scope: !2974)
!3023 = !DILocation(line: 241, column: 24, scope: !2974)
!3024 = !DILocation(line: 241, column: 31, scope: !2974)
!3025 = !DILocation(line: 241, column: 2, scope: !2974)
!3026 = !DILocation(line: 241, column: 7, scope: !2974)
!3027 = !DILocation(line: 241, column: 14, scope: !2974)
!3028 = !DILocation(line: 242, column: 22, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 242, column: 6)
!3030 = !DILocation(line: 242, column: 30, scope: !3029)
!3031 = !DILocation(line: 242, column: 6, scope: !3029)
!3032 = !DILocation(line: 242, column: 6, scope: !2974)
!3033 = !DILocation(line: 243, column: 3, scope: !3029)
!3034 = !DILocation(line: 243, column: 8, scope: !3029)
!3035 = !DILocation(line: 243, column: 21, scope: !3029)
!3036 = !DILocation(line: 244, column: 2, scope: !2974)
!3037 = !DILocation(line: 244, column: 7, scope: !2974)
!3038 = !DILocation(line: 244, column: 20, scope: !2974)
!3039 = !DILocation(line: 245, column: 6, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 245, column: 6)
!3041 = !DILocation(line: 245, column: 14, scope: !3040)
!3042 = !DILocation(line: 245, column: 20, scope: !3040)
!3043 = !DILocation(line: 245, column: 35, scope: !3040)
!3044 = !DILocation(line: 245, column: 39, scope: !3040)
!3045 = !DILocation(line: 245, column: 44, scope: !3040)
!3046 = !DILocation(line: 245, column: 57, scope: !3040)
!3047 = !DILocation(line: 245, column: 6, scope: !2974)
!3048 = !DILocation(line: 246, column: 3, scope: !3040)
!3049 = !DILocation(line: 246, column: 8, scope: !3040)
!3050 = !DILocation(line: 246, column: 21, scope: !3040)
!3051 = !DILocation(line: 247, column: 6, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 247, column: 6)
!3053 = !DILocation(line: 247, column: 14, scope: !3052)
!3054 = !DILocation(line: 247, column: 20, scope: !3052)
!3055 = !DILocation(line: 247, column: 6, scope: !2974)
!3056 = !DILocation(line: 248, column: 3, scope: !3052)
!3057 = !DILocation(line: 248, column: 8, scope: !3052)
!3058 = !DILocation(line: 248, column: 21, scope: !3052)
!3059 = !DILocation(line: 249, column: 22, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 249, column: 6)
!3061 = !DILocation(line: 249, column: 30, scope: !3060)
!3062 = !DILocation(line: 249, column: 6, scope: !3060)
!3063 = !DILocation(line: 249, column: 6, scope: !2974)
!3064 = !DILocation(line: 250, column: 3, scope: !3060)
!3065 = !DILocation(line: 250, column: 8, scope: !3060)
!3066 = !DILocation(line: 250, column: 21, scope: !3060)
!3067 = !DILocation(line: 252, column: 13, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 252, column: 6)
!3069 = !DILocation(line: 252, column: 6, scope: !3068)
!3070 = !DILocation(line: 252, column: 6, scope: !2974)
!3071 = !DILocation(line: 253, column: 11, scope: !3068)
!3072 = !DILocation(line: 253, column: 16, scope: !3068)
!3073 = !DILocation(line: 253, column: 22, scope: !3068)
!3074 = !DILocation(line: 253, column: 3, scope: !3068)
!3075 = !DILocation(line: 255, column: 11, scope: !3068)
!3076 = !DILocation(line: 255, column: 16, scope: !3068)
!3077 = !DILocation(line: 255, column: 22, scope: !3068)
!3078 = !DILocation(line: 255, column: 3, scope: !3068)
!3079 = !DILocation(line: 257, column: 6, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 257, column: 6)
!3081 = !DILocation(line: 257, column: 11, scope: !3080)
!3082 = !DILocation(line: 257, column: 6, scope: !2974)
!3083 = !DILocation(line: 258, column: 36, scope: !3080)
!3084 = !DILocation(line: 258, column: 3, scope: !3080)
!3085 = !DILocation(line: 260, column: 6, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 260, column: 6)
!3087 = !DILocation(line: 260, column: 11, scope: !3086)
!3088 = !DILocation(line: 260, column: 24, scope: !3086)
!3089 = !DILocation(line: 260, column: 6, scope: !2974)
!3090 = !DILocation(line: 261, column: 38, scope: !3086)
!3091 = !DILocation(line: 261, column: 3, scope: !3086)
!3092 = !DILocalVariable(name: "__mptr", scope: !3093, file: !3, line: 263, type: !70)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 263, column: 2)
!3094 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 263, column: 2)
!3095 = !DILocation(line: 263, column: 2, scope: !3093)
!3096 = !DILocation(line: 263, column: 2, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 263, column: 2)
!3098 = !DILocation(line: 263, column: 2, scope: !3094)
!3099 = !DILocation(line: 263, column: 2, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 263, column: 2)
!3101 = !DILocation(line: 264, column: 15, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 264, column: 7)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 263, column: 50)
!3104 = !DILocation(line: 264, column: 19, scope: !3102)
!3105 = !DILocation(line: 264, column: 23, scope: !3102)
!3106 = !DILocation(line: 264, column: 8, scope: !3102)
!3107 = !DILocation(line: 264, column: 7, scope: !3103)
!3108 = !DILocation(line: 265, column: 4, scope: !3102)
!3109 = !DILocation(line: 266, column: 20, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 266, column: 7)
!3111 = !DILocation(line: 266, column: 24, scope: !3110)
!3112 = !DILocation(line: 266, column: 8, scope: !3110)
!3113 = !DILocation(line: 266, column: 7, scope: !3103)
!3114 = !DILocation(line: 267, column: 4, scope: !3110)
!3115 = !DILocation(line: 268, column: 14, scope: !3103)
!3116 = !DILocation(line: 268, column: 19, scope: !3103)
!3117 = !DILocation(line: 268, column: 23, scope: !3103)
!3118 = !DILocation(line: 268, column: 3, scope: !3103)
!3119 = !DILocation(line: 269, column: 2, scope: !3103)
!3120 = !DILocalVariable(name: "__mptr", scope: !3121, file: !3, line: 263, type: !70)
!3121 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 263, column: 2)
!3122 = !DILocation(line: 263, column: 2, scope: !3121)
!3123 = !DILocation(line: 263, column: 2, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 263, column: 2)
!3125 = distinct !{!3125, !3098, !3126}
!3126 = !DILocation(line: 269, column: 2, scope: !3094)
!3127 = !DILocation(line: 272, column: 7, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 272, column: 6)
!3129 = !DILocation(line: 272, column: 12, scope: !3128)
!3130 = !DILocation(line: 272, column: 6, scope: !2974)
!3131 = !DILocation(line: 273, column: 22, scope: !3128)
!3132 = !DILocation(line: 273, column: 3, scope: !3128)
!3133 = !DILocation(line: 275, column: 25, scope: !2974)
!3134 = !DILocation(line: 275, column: 10, scope: !2974)
!3135 = !DILocation(line: 275, column: 8, scope: !2974)
!3136 = !DILocation(line: 276, column: 6, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 276, column: 6)
!3138 = !DILocation(line: 276, column: 6, scope: !2974)
!3139 = !DILocation(line: 277, column: 15, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 276, column: 13)
!3141 = !DILocation(line: 277, column: 20, scope: !3140)
!3142 = !DILocation(line: 277, column: 3, scope: !3140)
!3143 = !DILocation(line: 278, column: 10, scope: !3140)
!3144 = !DILocation(line: 278, column: 3, scope: !3140)
!3145 = !DILocation(line: 281, column: 5, scope: !2974)
!3146 = !DILocation(line: 283, column: 2, scope: !2974)
!3147 = !DILocation(line: 284, column: 1, scope: !2974)
!3148 = distinct !DISubprogram(name: "pnpacpi_get_id", scope: !3, file: !3, line: 197, type: !3149, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!123, !71}
!3151 = !DILocalVariable(name: "device", arg: 1, scope: !3148, file: !3, line: 197, type: !71)
!3152 = !DILocation(line: 197, column: 62, scope: !3148)
!3153 = !DILocalVariable(name: "id", scope: !3148, file: !3, line: 199, type: !2420)
!3154 = !DILocation(line: 199, column: 27, scope: !3148)
!3155 = !DILocalVariable(name: "__mptr", scope: !3156, file: !3, line: 201, type: !70)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 201, column: 2)
!3157 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 201, column: 2)
!3158 = !DILocation(line: 201, column: 2, scope: !3156)
!3159 = !DILocation(line: 201, column: 2, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 201, column: 2)
!3161 = !DILocation(line: 201, column: 2, scope: !3157)
!3162 = !DILocation(line: 201, column: 2, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 201, column: 2)
!3164 = !DILocation(line: 202, column: 19, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 202, column: 7)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 201, column: 50)
!3167 = !DILocation(line: 202, column: 23, scope: !3165)
!3168 = !DILocation(line: 202, column: 7, scope: !3165)
!3169 = !DILocation(line: 202, column: 7, scope: !3166)
!3170 = !DILocation(line: 203, column: 11, scope: !3165)
!3171 = !DILocation(line: 203, column: 15, scope: !3165)
!3172 = !DILocation(line: 203, column: 4, scope: !3165)
!3173 = !DILocation(line: 204, column: 2, scope: !3166)
!3174 = !DILocalVariable(name: "__mptr", scope: !3175, file: !3, line: 201, type: !70)
!3175 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 201, column: 2)
!3176 = !DILocation(line: 201, column: 2, scope: !3175)
!3177 = !DILocation(line: 201, column: 2, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 201, column: 2)
!3179 = distinct !{!3179, !3161, !3180}
!3180 = !DILocation(line: 204, column: 2, scope: !3157)
!3181 = !DILocation(line: 206, column: 2, scope: !3148)
!3182 = !DILocation(line: 207, column: 1, scope: !3148)
!3183 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !73, file: !73, line: 438, type: !3184, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!85, !71}
!3186 = !DILocalVariable(name: "adev", arg: 1, scope: !3183, file: !73, line: 438, type: !71)
!3187 = !DILocation(line: 438, column: 76, scope: !3183)
!3188 = !DILocation(line: 440, column: 10, scope: !3183)
!3189 = !DILocation(line: 440, column: 16, scope: !3183)
!3190 = !DILocation(line: 440, column: 2, scope: !3183)
!3191 = distinct !DISubprogram(name: "ispnpidacpi", scope: !3, file: !3, line: 29, type: !3192, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !154)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!76, !123}
!3194 = !DILocalVariable(name: "id", arg: 1, scope: !3191, file: !3, line: 29, type: !123)
!3195 = !DILocation(line: 29, column: 43, scope: !3191)
!3196 = !DILocation(line: 31, column: 2, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 31, column: 2)
!3198 = !DILocation(line: 31, column: 2, scope: !3191)
!3199 = !DILocation(line: 32, column: 2, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 32, column: 2)
!3201 = !DILocation(line: 32, column: 2, scope: !3191)
!3202 = !DILocation(line: 33, column: 2, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 33, column: 2)
!3204 = !DILocation(line: 33, column: 2, scope: !3191)
!3205 = !DILocation(line: 34, column: 2, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 34, column: 2)
!3207 = !DILocation(line: 34, column: 2, scope: !3191)
!3208 = !DILocation(line: 35, column: 2, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 35, column: 2)
!3210 = !DILocation(line: 35, column: 2, scope: !3191)
!3211 = !DILocation(line: 36, column: 2, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 36, column: 2)
!3213 = !DILocation(line: 36, column: 2, scope: !3191)
!3214 = !DILocation(line: 37, column: 2, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 37, column: 2)
!3216 = !DILocation(line: 37, column: 2, scope: !3191)
!3217 = !DILocation(line: 38, column: 6, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 38, column: 6)
!3219 = !DILocation(line: 38, column: 12, scope: !3218)
!3220 = !DILocation(line: 38, column: 6, scope: !3191)
!3221 = !DILocation(line: 39, column: 3, scope: !3218)
!3222 = !DILocation(line: 40, column: 2, scope: !3191)
!3223 = !DILocation(line: 41, column: 1, scope: !3191)
