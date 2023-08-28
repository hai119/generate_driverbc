; ModuleID = '../bcout/drivers/of/irq.llvm.bc'
source_filename = "drivers/of/irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.cpumask = type { [1 x i64] }
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, {}*, {}*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.seq_file = type opaque
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type opaque
%struct.proc_dir_entry = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.of_intc_desc = type { %struct.list_head, i32 (%struct.device_node*, %struct.device_node*)*, %struct.device_node*, %struct.device_node* }

@.str = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drivers/of/irq.c\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"interrupt-map-mask\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"of_irq_init: no init function for %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\013OF: of_irq_init: children remain, but no parents\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"msi-map-mask\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @irq_of_parse_and_map(%struct.device_node* %dev, i32 %index) #0 !dbg !2406 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %oirq = alloca %struct.of_phandle_args, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !2409, metadata !DIExpression()), !dbg !2410
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %oirq, metadata !2413, metadata !DIExpression()), !dbg !2421
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !2422
  %1 = load i32, i32* %index.addr, align 4, !dbg !2424
  %call = call i32 @of_irq_parse_one(%struct.device_node* %0, i32 %1, %struct.of_phandle_args* %oirq) #9, !dbg !2425
  %tobool = icmp ne i32 %call, 0, !dbg !2425
  br i1 %tobool, label %if.then, label %if.end, !dbg !2426

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2427
  br label %return, !dbg !2427

if.end:                                           ; preds = %entry
  %call1 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* %oirq) #9, !dbg !2428
  store i32 %call1, i32* %retval, align 4, !dbg !2429
  br label %return, !dbg !2429

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !2430
  ret i32 %2, !dbg !2430
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_parse_one(%struct.device_node* %device, i32 %index, %struct.of_phandle_args* %out_irq) #0 !dbg !2431 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %out_irq.addr = alloca %struct.of_phandle_args*, align 8
  %p = alloca %struct.device_node*, align 8
  %addr = alloca i32*, align 8
  %intsize = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  store %struct.device_node* %device, %struct.device_node** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %device.addr, metadata !2435, metadata !DIExpression()), !dbg !2436
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  store %struct.of_phandle_args* %out_irq, %struct.of_phandle_args** %out_irq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %out_irq.addr, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.device_node** %p, metadata !2441, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata i32** %addr, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata i32* %intsize, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.declare(metadata i32* %res, metadata !2451, metadata !DIExpression()), !dbg !2452
  store i32 0, i32* %tmp, align 4, !dbg !2453
  %0 = load i32, i32* %tmp, align 4, !dbg !2456
  %1 = load %struct.device_node*, %struct.device_node** %device.addr, align 8, !dbg !2457
  %call = call i8* @of_get_property(%struct.device_node* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* null) #9, !dbg !2458
  %2 = bitcast i8* %call to i32*, !dbg !2458
  store i32* %2, i32** %addr, align 8, !dbg !2459
  %3 = load %struct.device_node*, %struct.device_node** %device.addr, align 8, !dbg !2460
  %4 = load i32, i32* %index.addr, align 4, !dbg !2461
  %5 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2462
  %call1 = call i32 @of_parse_phandle_with_args(%struct.device_node* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %4, %struct.of_phandle_args* %5) #9, !dbg !2463
  store i32 %call1, i32* %res, align 4, !dbg !2464
  %6 = load i32, i32* %res, align 4, !dbg !2465
  %tobool = icmp ne i32 %6, 0, !dbg !2465
  br i1 %tobool, label %if.end, label %if.then, !dbg !2467

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %addr, align 8, !dbg !2468
  %8 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2469
  %call2 = call i32 @of_irq_parse_raw(i32* %7, %struct.of_phandle_args* %8) #9, !dbg !2470
  store i32 %call2, i32* %retval, align 4, !dbg !2471
  br label %return, !dbg !2471

if.end:                                           ; preds = %entry
  %9 = load %struct.device_node*, %struct.device_node** %device.addr, align 8, !dbg !2472
  %call3 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %9) #9, !dbg !2473
  store %struct.device_node* %call3, %struct.device_node** %p, align 8, !dbg !2474
  %10 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2475
  %cmp = icmp eq %struct.device_node* %10, null, !dbg !2477
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2478

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2479
  br label %return, !dbg !2479

if.end5:                                          ; preds = %if.end
  %11 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2480
  %call6 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %intsize) #9, !dbg !2482
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2482
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2483

if.then8:                                         ; preds = %if.end5
  store i32 -22, i32* %res, align 4, !dbg !2484
  br label %out, !dbg !2486

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %tmp10, align 4, !dbg !2487
  %12 = load i32, i32* %tmp10, align 4, !dbg !2490
  %13 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2491
  %14 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2492
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %14, i32 0, i32 0, !dbg !2493
  store %struct.device_node* %13, %struct.device_node** %np, align 8, !dbg !2494
  %15 = load i32, i32* %intsize, align 4, !dbg !2495
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2496
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 1, !dbg !2497
  store i32 %15, i32* %args_count, align 8, !dbg !2498
  store i32 0, i32* %i, align 4, !dbg !2499
  br label %for.cond, !dbg !2501

for.cond:                                         ; preds = %for.inc, %if.end9
  %17 = load i32, i32* %i, align 4, !dbg !2502
  %18 = load i32, i32* %intsize, align 4, !dbg !2504
  %cmp11 = icmp ult i32 %17, %18, !dbg !2505
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2506

for.body:                                         ; preds = %for.cond
  %19 = load %struct.device_node*, %struct.device_node** %device.addr, align 8, !dbg !2507
  %20 = load i32, i32* %index.addr, align 4, !dbg !2509
  %21 = load i32, i32* %intsize, align 4, !dbg !2510
  %mul = mul i32 %20, %21, !dbg !2511
  %22 = load i32, i32* %i, align 4, !dbg !2512
  %add = add i32 %mul, %22, !dbg !2513
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2514
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 2, !dbg !2515
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %args, i64 0, i64 0, !dbg !2514
  %24 = load i32, i32* %i, align 4, !dbg !2516
  %idx.ext = sext i32 %24 to i64, !dbg !2517
  %add.ptr = getelementptr i32, i32* %arraydecay, i64 %idx.ext, !dbg !2517
  %call12 = call i32 @of_property_read_u32_index(%struct.device_node* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %add, i32* %add.ptr) #9, !dbg !2518
  store i32 %call12, i32* %res, align 4, !dbg !2519
  %25 = load i32, i32* %res, align 4, !dbg !2520
  %tobool13 = icmp ne i32 %25, 0, !dbg !2520
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2522

if.then14:                                        ; preds = %for.body
  br label %out, !dbg !2523

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !2524

for.inc:                                          ; preds = %if.end15
  %26 = load i32, i32* %i, align 4, !dbg !2525
  %inc = add i32 %26, 1, !dbg !2525
  store i32 %inc, i32* %i, align 4, !dbg !2525
  br label %for.cond, !dbg !2526, !llvm.loop !2527

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %tmp16, align 4, !dbg !2529
  %27 = load i32, i32* %tmp16, align 4, !dbg !2532
  %28 = load i32*, i32** %addr, align 8, !dbg !2533
  %29 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2534
  %call17 = call i32 @of_irq_parse_raw(i32* %28, %struct.of_phandle_args* %29) #9, !dbg !2535
  store i32 %call17, i32* %res, align 4, !dbg !2536
  br label %out, !dbg !2537

out:                                              ; preds = %for.end, %if.then14, %if.then8
  call void @llvm.dbg.label(metadata !2538), !dbg !2539
  %30 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2540
  call void @of_node_put(%struct.device_node* %30) #9, !dbg !2541
  %31 = load i32, i32* %res, align 4, !dbg !2542
  store i32 %31, i32* %retval, align 4, !dbg !2543
  br label %return, !dbg !2543

return:                                           ; preds = %out, %if.then4, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !2544
  ret i32 %32, !dbg !2544
}

; Function Attrs: noredzone
declare dso_local i32 @irq_create_of_mapping(%struct.of_phandle_args*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node* %child) #0 !dbg !2545 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %child.addr = alloca %struct.device_node*, align 8
  %p = alloca %struct.device_node*, align 8
  %parent = alloca i32, align 4
  store %struct.device_node* %child, %struct.device_node** %child.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %child.addr, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata %struct.device_node** %p, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata i32* %parent, metadata !2552, metadata !DIExpression()), !dbg !2553
  %0 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !2554
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %0) #9, !dbg !2556
  %tobool = icmp ne %struct.device_node* %call, null, !dbg !2556
  br i1 %tobool, label %if.end, label %if.then, !dbg !2557

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !2558
  br label %return, !dbg !2558

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2559

do.body:                                          ; preds = %land.end, %if.end
  %1 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !2560
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %parent) #9, !dbg !2563
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2563
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !2564

if.then3:                                         ; preds = %do.body
  %2 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !2565
  %call4 = call %struct.device_node* @of_get_parent(%struct.device_node* %2) #9, !dbg !2567
  store %struct.device_node* %call4, %struct.device_node** %p, align 8, !dbg !2568
  br label %if.end6, !dbg !2569

if.else:                                          ; preds = %do.body
  %3 = load i32, i32* %parent, align 4, !dbg !2570
  %call5 = call %struct.device_node* @of_find_node_by_phandle(i32 %3) #9, !dbg !2573
  store %struct.device_node* %call5, %struct.device_node** %p, align 8, !dbg !2574
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %4 = load %struct.device_node*, %struct.device_node** %child.addr, align 8, !dbg !2575
  call void @of_node_put(%struct.device_node* %4) #9, !dbg !2576
  %5 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2577
  store %struct.device_node* %5, %struct.device_node** %child.addr, align 8, !dbg !2578
  br label %do.cond, !dbg !2579

do.cond:                                          ; preds = %if.end6
  %6 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2580
  %tobool7 = icmp ne %struct.device_node* %6, null, !dbg !2580
  br i1 %tobool7, label %land.rhs, label %land.end, !dbg !2581

land.rhs:                                         ; preds = %do.cond
  %7 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2582
  %call8 = call i8* @of_get_property(%struct.device_node* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null) #9, !dbg !2583
  %cmp = icmp eq i8* %call8, null, !dbg !2584
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %8 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !2585
  br i1 %8, label %do.body, label %do.end, !dbg !2579, !llvm.loop !2586

do.end:                                           ; preds = %land.end
  %9 = load %struct.device_node*, %struct.device_node** %p, align 8, !dbg !2588
  store %struct.device_node* %9, %struct.device_node** %retval, align 8, !dbg !2589
  br label %return, !dbg !2589

return:                                           ; preds = %do.end, %if.then
  %10 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !2590
  ret %struct.device_node* %10, !dbg !2590
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !2591 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2592, metadata !DIExpression()), !dbg !2593
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2594
  ret %struct.device_node* %0, !dbg !2595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2596 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2603, metadata !DIExpression()), !dbg !2604
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2605, metadata !DIExpression()), !dbg !2606
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2607
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2608
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2609
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #9, !dbg !2610
  ret i32 %call, !dbg !2611
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2612 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  ret void, !dbg !2617
}

; Function Attrs: noredzone
declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_parse_raw(i32* %addr, %struct.of_phandle_args* %out_irq) #0 !dbg !2618 {
entry:
  %p.addr.i.i266 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i266, metadata !2621, metadata !DIExpression()), !dbg !2628
  %p.addr.i267 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i267, metadata !2638, metadata !DIExpression()), !dbg !2639
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !2621, metadata !DIExpression()), !dbg !2640
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !2638, metadata !DIExpression()), !dbg !2645
  %retval = alloca i32, align 4
  %addr.addr = alloca i32*, align 8
  %out_irq.addr = alloca %struct.of_phandle_args*, align 8
  %ipar = alloca %struct.device_node*, align 8
  %tnode = alloca %struct.device_node*, align 8
  %old = alloca %struct.device_node*, align 8
  %newpar = alloca %struct.device_node*, align 8
  %initial_match_array = alloca [16 x i32], align 16
  %match_array = alloca i32*, align 8
  %tmp = alloca i32*, align 8
  %imap = alloca i32*, align 8
  %imask = alloca i32*, align 8
  %dummy_imask = alloca [17 x i32], align 16
  %intsize = alloca i32, align 4
  %addrsize = alloca i32, align 4
  %newintsize = alloca i32, align 4
  %newaddrsize = alloca i32, align 4
  %imaplen = alloca i32, align 4
  %match = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp55 = alloca i64, align 8
  %tmp121 = alloca i32, align 4
  %tmp126 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %tmp170 = alloca i32, align 4
  %tmp178 = alloca i32, align 4
  %tmp186 = alloca i32, align 4
  %tmp192 = alloca i32, align 4
  %__ret_warn_on193 = alloca i32, align 4
  %tmp222 = alloca i64, align 8
  %tmp237 = alloca i32, align 4
  %tmp264 = alloca i32, align 4
  store i32* %addr, i32** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %addr.addr, metadata !2646, metadata !DIExpression()), !dbg !2647
  store %struct.of_phandle_args* %out_irq, %struct.of_phandle_args** %out_irq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args** %out_irq.addr, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.device_node** %ipar, metadata !2650, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.declare(metadata %struct.device_node** %tnode, metadata !2652, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.declare(metadata %struct.device_node** %old, metadata !2654, metadata !DIExpression()), !dbg !2655
  store %struct.device_node* null, %struct.device_node** %old, align 8, !dbg !2655
  call void @llvm.dbg.declare(metadata %struct.device_node** %newpar, metadata !2656, metadata !DIExpression()), !dbg !2657
  store %struct.device_node* null, %struct.device_node** %newpar, align 8, !dbg !2657
  call void @llvm.dbg.declare(metadata [16 x i32]* %initial_match_array, metadata !2658, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.declare(metadata i32** %match_array, metadata !2661, metadata !DIExpression()), !dbg !2662
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 0, !dbg !2663
  store i32* %arraydecay, i32** %match_array, align 8, !dbg !2662
  call void @llvm.dbg.declare(metadata i32** %tmp, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.declare(metadata i32** %imap, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.declare(metadata i32** %imask, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata [17 x i32]* %dummy_imask, metadata !2670, metadata !DIExpression()), !dbg !2674
  %0 = bitcast [17 x i32]* %dummy_imask to i8*, !dbg !2674
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 -1, i64 68, i1 false), !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %intsize, metadata !2675, metadata !DIExpression()), !dbg !2676
  store i32 1, i32* %intsize, align 4, !dbg !2676
  call void @llvm.dbg.declare(metadata i32* %addrsize, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata i32* %newintsize, metadata !2679, metadata !DIExpression()), !dbg !2680
  store i32 0, i32* %newintsize, align 4, !dbg !2680
  call void @llvm.dbg.declare(metadata i32* %newaddrsize, metadata !2681, metadata !DIExpression()), !dbg !2682
  store i32 0, i32* %newaddrsize, align 4, !dbg !2682
  call void @llvm.dbg.declare(metadata i32* %imaplen, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.declare(metadata i32* %match, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2687, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2689, metadata !DIExpression()), !dbg !2690
  store i32 -22, i32* %rc, align 4, !dbg !2690
  %1 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2691
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %1, i32 0, i32 0, !dbg !2692
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2692
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %2) #9, !dbg !2693
  store %struct.device_node* %call, %struct.device_node** %ipar, align 8, !dbg !2694
  br label %do.body, !dbg !2695

do.body:                                          ; preds = %do.cond, %entry
  %3 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2696
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %intsize) #9, !dbg !2699
  %tobool = icmp ne i32 %call1, 0, !dbg !2699
  br i1 %tobool, label %if.end, label %if.then, !dbg !2700

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !2701

if.end:                                           ; preds = %do.body
  %4 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2702
  store %struct.device_node* %4, %struct.device_node** %tnode, align 8, !dbg !2703
  %5 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2704
  %call2 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %5) #9, !dbg !2705
  store %struct.device_node* %call2, %struct.device_node** %ipar, align 8, !dbg !2706
  %6 = load %struct.device_node*, %struct.device_node** %tnode, align 8, !dbg !2707
  call void @of_node_put(%struct.device_node* %6) #9, !dbg !2708
  br label %do.cond, !dbg !2709

do.cond:                                          ; preds = %if.end
  %7 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2710
  %tobool3 = icmp ne %struct.device_node* %7, null, !dbg !2709
  br i1 %tobool3, label %do.body, label %do.end, !dbg !2709, !llvm.loop !2711

do.end:                                           ; preds = %do.cond, %if.then
  %8 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2713
  %cmp = icmp eq %struct.device_node* %8, null, !dbg !2715
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !2716

if.then4:                                         ; preds = %do.end
  store i32 0, i32* %tmp5, align 4, !dbg !2717
  %9 = load i32, i32* %tmp5, align 4, !dbg !2721
  br label %fail, !dbg !2722

if.end6:                                          ; preds = %do.end
  store i32 0, i32* %tmp7, align 4, !dbg !2723
  %10 = load i32, i32* %tmp7, align 4, !dbg !2726
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2727
  %args_count = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 1, !dbg !2729
  %12 = load i32, i32* %args_count, align 8, !dbg !2729
  %13 = load i32, i32* %intsize, align 4, !dbg !2730
  %cmp8 = icmp ne i32 %12, %13, !dbg !2731
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2732

if.then9:                                         ; preds = %if.end6
  br label %fail, !dbg !2733

if.end10:                                         ; preds = %if.end6
  %14 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2734
  %call11 = call %struct.device_node* @of_node_get(%struct.device_node* %14) #9, !dbg !2735
  store %struct.device_node* %call11, %struct.device_node** %old, align 8, !dbg !2736
  br label %do.body12, !dbg !2737

do.body12:                                        ; preds = %land.end, %if.end10
  %15 = load %struct.device_node*, %struct.device_node** %old, align 8, !dbg !2738
  %call13 = call i8* @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null) #9, !dbg !2740
  %16 = bitcast i8* %call13 to i32*, !dbg !2740
  store i32* %16, i32** %tmp, align 8, !dbg !2741
  %17 = load %struct.device_node*, %struct.device_node** %old, align 8, !dbg !2742
  %call14 = call %struct.device_node* @of_get_parent(%struct.device_node* %17) #9, !dbg !2743
  store %struct.device_node* %call14, %struct.device_node** %tnode, align 8, !dbg !2744
  %18 = load %struct.device_node*, %struct.device_node** %old, align 8, !dbg !2745
  call void @of_node_put(%struct.device_node* %18) #9, !dbg !2746
  %19 = load %struct.device_node*, %struct.device_node** %tnode, align 8, !dbg !2747
  store %struct.device_node* %19, %struct.device_node** %old, align 8, !dbg !2748
  br label %do.cond15, !dbg !2749

do.cond15:                                        ; preds = %do.body12
  %20 = load %struct.device_node*, %struct.device_node** %old, align 8, !dbg !2750
  %tobool16 = icmp ne %struct.device_node* %20, null, !dbg !2750
  br i1 %tobool16, label %land.rhs, label %land.end, !dbg !2751

land.rhs:                                         ; preds = %do.cond15
  %21 = load i32*, i32** %tmp, align 8, !dbg !2752
  %cmp17 = icmp eq i32* %21, null, !dbg !2753
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond15
  %22 = phi i1 [ false, %do.cond15 ], [ %cmp17, %land.rhs ], !dbg !2754
  br i1 %22, label %do.body12, label %do.end18, !dbg !2749, !llvm.loop !2755

do.end18:                                         ; preds = %land.end
  %23 = load %struct.device_node*, %struct.device_node** %old, align 8, !dbg !2757
  call void @of_node_put(%struct.device_node* %23) #9, !dbg !2758
  store %struct.device_node* null, %struct.device_node** %old, align 8, !dbg !2759
  %24 = load i32*, i32** %tmp, align 8, !dbg !2760
  %cmp19 = icmp eq i32* %24, null, !dbg !2761
  br i1 %cmp19, label %cond.true, label %cond.false, !dbg !2762

cond.true:                                        ; preds = %do.end18
  br label %cond.end30, !dbg !2762

cond.false:                                       ; preds = %do.end18
  %25 = load i32*, i32** %tmp, align 8, !dbg !2763
  %26 = load i32, i32* %25, align 4, !dbg !2763
  %27 = call i1 @llvm.is.constant.i32(i32 %26), !dbg !2763
  br i1 %27, label %cond.true20, label %cond.false28, !dbg !2763

cond.true20:                                      ; preds = %cond.false
  %28 = load i32*, i32** %tmp, align 8, !dbg !2763
  %29 = load i32, i32* %28, align 4, !dbg !2763
  %and = and i32 %29, 255, !dbg !2763
  %shl = shl i32 %and, 24, !dbg !2763
  %30 = load i32*, i32** %tmp, align 8, !dbg !2763
  %31 = load i32, i32* %30, align 4, !dbg !2763
  %and21 = and i32 %31, 65280, !dbg !2763
  %shl22 = shl i32 %and21, 8, !dbg !2763
  %or = or i32 %shl, %shl22, !dbg !2763
  %32 = load i32*, i32** %tmp, align 8, !dbg !2763
  %33 = load i32, i32* %32, align 4, !dbg !2763
  %and23 = and i32 %33, 16711680, !dbg !2763
  %shr = lshr i32 %and23, 8, !dbg !2763
  %or24 = or i32 %or, %shr, !dbg !2763
  %34 = load i32*, i32** %tmp, align 8, !dbg !2763
  %35 = load i32, i32* %34, align 4, !dbg !2763
  %and25 = and i32 %35, -16777216, !dbg !2763
  %shr26 = lshr i32 %and25, 24, !dbg !2763
  %or27 = or i32 %or24, %shr26, !dbg !2763
  br label %cond.end, !dbg !2763

cond.false28:                                     ; preds = %cond.false
  %36 = load i32*, i32** %tmp, align 8, !dbg !2763
  %37 = load i32, i32* %36, align 4, !dbg !2763
  %call29 = call i32 @__fswab32(i32 %37) #10, !dbg !2763
  br label %cond.end, !dbg !2763

cond.end:                                         ; preds = %cond.false28, %cond.true20
  %cond = phi i32 [ %or27, %cond.true20 ], [ %call29, %cond.false28 ], !dbg !2763
  br label %cond.end30, !dbg !2762

cond.end30:                                       ; preds = %cond.end, %cond.true
  %cond31 = phi i32 [ 2, %cond.true ], [ %cond, %cond.end ], !dbg !2762
  store i32 %cond31, i32* %addrsize, align 4, !dbg !2764
  store i32 0, i32* %tmp32, align 4, !dbg !2765
  %38 = load i32, i32* %tmp32, align 4, !dbg !2768
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2769, metadata !DIExpression()), !dbg !2772
  %39 = load i32, i32* %addrsize, align 4, !dbg !2772
  %40 = load i32, i32* %intsize, align 4, !dbg !2772
  %add = add i32 %39, %40, !dbg !2772
  %cmp33 = icmp ugt i32 %add, 16, !dbg !2772
  %lnot = xor i1 %cmp33, true, !dbg !2772
  %lnot34 = xor i1 %lnot, true, !dbg !2772
  %lnot.ext = zext i1 %lnot34 to i32, !dbg !2772
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2772
  %41 = load i32, i32* %__ret_warn_on, align 4, !dbg !2773
  %tobool35 = icmp ne i32 %41, 0, !dbg !2773
  %lnot36 = xor i1 %tobool35, true, !dbg !2773
  %lnot38 = xor i1 %lnot36, true, !dbg !2773
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !2773
  %conv = sext i32 %lnot.ext39 to i64, !dbg !2773
  %tobool40 = icmp ne i64 %conv, 0, !dbg !2773
  br i1 %tobool40, label %if.then41, label %if.end54, !dbg !2772

if.then41:                                        ; preds = %cond.end30
  br label %do.body42, !dbg !2773

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !2775

do.body43:                                        ; preds = %do.body42
  br label %do.end45, !dbg !2777

do.end45:                                         ; preds = %do.body43
  br label %do.body46, !dbg !2775

do.body46:                                        ; preds = %do.end45
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 146, i32 2305, i64 12) #11, !dbg !2779, !srcloc !2781
  br label %do.end48, !dbg !2779

do.end48:                                         ; preds = %do.body46
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #11, !dbg !2782, !srcloc !2784
  br label %do.body49, !dbg !2775

do.body49:                                        ; preds = %do.end48
  br label %do.end51, !dbg !2785

do.end51:                                         ; preds = %do.body49
  br label %do.end53, !dbg !2775

do.end53:                                         ; preds = %do.end51
  br label %if.end54, !dbg !2775

if.end54:                                         ; preds = %do.end53, %cond.end30
  %42 = load i32, i32* %__ret_warn_on, align 4, !dbg !2772
  %tobool56 = icmp ne i32 %42, 0, !dbg !2772
  %lnot57 = xor i1 %tobool56, true, !dbg !2772
  %lnot59 = xor i1 %lnot57, true, !dbg !2772
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !2772
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !2772
  store i64 %conv61, i64* %tmp55, align 8, !dbg !2773
  %43 = load i64, i64* %tmp55, align 8, !dbg !2772
  %tobool62 = icmp ne i64 %43, 0, !dbg !2787
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !2788

if.then63:                                        ; preds = %if.end54
  store i32 -14, i32* %rc, align 4, !dbg !2789
  br label %fail, !dbg !2791

if.end64:                                         ; preds = %if.end54
  store i32 0, i32* %i, align 4, !dbg !2792
  br label %for.cond, !dbg !2794

for.cond:                                         ; preds = %for.inc, %if.end64
  %44 = load i32, i32* %i, align 4, !dbg !2795
  %45 = load i32, i32* %addrsize, align 4, !dbg !2797
  %cmp65 = icmp ult i32 %44, %45, !dbg !2798
  br i1 %cmp65, label %for.body, label %for.end, !dbg !2799

for.body:                                         ; preds = %for.cond
  %46 = load i32*, i32** %addr.addr, align 8, !dbg !2800
  %tobool67 = icmp ne i32* %46, null, !dbg !2800
  br i1 %tobool67, label %cond.true68, label %cond.false69, !dbg !2800

cond.true68:                                      ; preds = %for.body
  %47 = load i32*, i32** %addr.addr, align 8, !dbg !2801
  %48 = load i32, i32* %i, align 4, !dbg !2802
  %idxprom = sext i32 %48 to i64, !dbg !2801
  %arrayidx = getelementptr i32, i32* %47, i64 %idxprom, !dbg !2801
  %49 = load i32, i32* %arrayidx, align 4, !dbg !2801
  br label %cond.end70, !dbg !2800

cond.false69:                                     ; preds = %for.body
  br label %cond.end70, !dbg !2800

cond.end70:                                       ; preds = %cond.false69, %cond.true68
  %cond71 = phi i32 [ %49, %cond.true68 ], [ 0, %cond.false69 ], !dbg !2800
  %50 = load i32, i32* %i, align 4, !dbg !2803
  %idxprom72 = sext i32 %50 to i64, !dbg !2804
  %arrayidx73 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %idxprom72, !dbg !2804
  store i32 %cond71, i32* %arrayidx73, align 4, !dbg !2805
  br label %for.inc, !dbg !2804

for.inc:                                          ; preds = %cond.end70
  %51 = load i32, i32* %i, align 4, !dbg !2806
  %inc = add i32 %51, 1, !dbg !2806
  store i32 %inc, i32* %i, align 4, !dbg !2806
  br label %for.cond, !dbg !2807, !llvm.loop !2808

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2810
  br label %for.cond74, !dbg !2812

for.cond74:                                       ; preds = %for.inc114, %for.end
  %52 = load i32, i32* %i, align 4, !dbg !2813
  %53 = load i32, i32* %intsize, align 4, !dbg !2815
  %cmp75 = icmp ult i32 %52, %53, !dbg !2816
  br i1 %cmp75, label %for.body77, label %for.end116, !dbg !2817

for.body77:                                       ; preds = %for.cond74
  %54 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2818
  %args = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %54, i32 0, i32 2, !dbg !2818
  %55 = load i32, i32* %i, align 4, !dbg !2818
  %idxprom78 = sext i32 %55 to i64, !dbg !2818
  %arrayidx79 = getelementptr [16 x i32], [16 x i32]* %args, i64 0, i64 %idxprom78, !dbg !2818
  %56 = load i32, i32* %arrayidx79, align 4, !dbg !2818
  %57 = call i1 @llvm.is.constant.i32(i32 %56), !dbg !2818
  br i1 %57, label %cond.true80, label %cond.false104, !dbg !2818

cond.true80:                                      ; preds = %for.body77
  %58 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2818
  %args81 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %58, i32 0, i32 2, !dbg !2818
  %59 = load i32, i32* %i, align 4, !dbg !2818
  %idxprom82 = sext i32 %59 to i64, !dbg !2818
  %arrayidx83 = getelementptr [16 x i32], [16 x i32]* %args81, i64 0, i64 %idxprom82, !dbg !2818
  %60 = load i32, i32* %arrayidx83, align 4, !dbg !2818
  %and84 = and i32 %60, 255, !dbg !2818
  %shl85 = shl i32 %and84, 24, !dbg !2818
  %61 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2818
  %args86 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %61, i32 0, i32 2, !dbg !2818
  %62 = load i32, i32* %i, align 4, !dbg !2818
  %idxprom87 = sext i32 %62 to i64, !dbg !2818
  %arrayidx88 = getelementptr [16 x i32], [16 x i32]* %args86, i64 0, i64 %idxprom87, !dbg !2818
  %63 = load i32, i32* %arrayidx88, align 4, !dbg !2818
  %and89 = and i32 %63, 65280, !dbg !2818
  %shl90 = shl i32 %and89, 8, !dbg !2818
  %or91 = or i32 %shl85, %shl90, !dbg !2818
  %64 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2818
  %args92 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %64, i32 0, i32 2, !dbg !2818
  %65 = load i32, i32* %i, align 4, !dbg !2818
  %idxprom93 = sext i32 %65 to i64, !dbg !2818
  %arrayidx94 = getelementptr [16 x i32], [16 x i32]* %args92, i64 0, i64 %idxprom93, !dbg !2818
  %66 = load i32, i32* %arrayidx94, align 4, !dbg !2818
  %and95 = and i32 %66, 16711680, !dbg !2818
  %shr96 = lshr i32 %and95, 8, !dbg !2818
  %or97 = or i32 %or91, %shr96, !dbg !2818
  %67 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2818
  %args98 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %67, i32 0, i32 2, !dbg !2818
  %68 = load i32, i32* %i, align 4, !dbg !2818
  %idxprom99 = sext i32 %68 to i64, !dbg !2818
  %arrayidx100 = getelementptr [16 x i32], [16 x i32]* %args98, i64 0, i64 %idxprom99, !dbg !2818
  %69 = load i32, i32* %arrayidx100, align 4, !dbg !2818
  %and101 = and i32 %69, -16777216, !dbg !2818
  %shr102 = lshr i32 %and101, 24, !dbg !2818
  %or103 = or i32 %or97, %shr102, !dbg !2818
  br label %cond.end109, !dbg !2818

cond.false104:                                    ; preds = %for.body77
  %70 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !2818
  %args105 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %70, i32 0, i32 2, !dbg !2818
  %71 = load i32, i32* %i, align 4, !dbg !2818
  %idxprom106 = sext i32 %71 to i64, !dbg !2818
  %arrayidx107 = getelementptr [16 x i32], [16 x i32]* %args105, i64 0, i64 %idxprom106, !dbg !2818
  %72 = load i32, i32* %arrayidx107, align 4, !dbg !2818
  %call108 = call i32 @__fswab32(i32 %72) #10, !dbg !2818
  br label %cond.end109, !dbg !2818

cond.end109:                                      ; preds = %cond.false104, %cond.true80
  %cond110 = phi i32 [ %or103, %cond.true80 ], [ %call108, %cond.false104 ], !dbg !2818
  %73 = load i32, i32* %addrsize, align 4, !dbg !2819
  %74 = load i32, i32* %i, align 4, !dbg !2820
  %add111 = add i32 %73, %74, !dbg !2821
  %idxprom112 = zext i32 %add111 to i64, !dbg !2822
  %arrayidx113 = getelementptr [16 x i32], [16 x i32]* %initial_match_array, i64 0, i64 %idxprom112, !dbg !2822
  store i32 %cond110, i32* %arrayidx113, align 4, !dbg !2823
  br label %for.inc114, !dbg !2822

for.inc114:                                       ; preds = %cond.end109
  %75 = load i32, i32* %i, align 4, !dbg !2824
  %inc115 = add i32 %75, 1, !dbg !2824
  store i32 %inc115, i32* %i, align 4, !dbg !2824
  br label %for.cond74, !dbg !2825, !llvm.loop !2826

for.end116:                                       ; preds = %for.cond74
  br label %while.cond, !dbg !2828

while.cond:                                       ; preds = %skiplevel, %for.end116
  %76 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2829
  %cmp117 = icmp ne %struct.device_node* %76, null, !dbg !2830
  br i1 %cmp117, label %while.body, label %while.end265, !dbg !2828

while.body:                                       ; preds = %while.cond
  %77 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2831
  %call119 = call zeroext i1 @of_property_read_bool(%struct.device_node* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !2833
  br i1 %call119, label %if.then120, label %if.end122, !dbg !2834

if.then120:                                       ; preds = %while.body
  store i32 0, i32* %tmp121, align 4, !dbg !2835
  %78 = load i32, i32* %tmp121, align 4, !dbg !2839
  store i32 0, i32* %retval, align 4, !dbg !2840
  br label %return, !dbg !2840

if.end122:                                        ; preds = %while.body
  %79 = load i32, i32* %addrsize, align 4, !dbg !2841
  %tobool123 = icmp ne i32 %79, 0, !dbg !2841
  br i1 %tobool123, label %land.lhs.true, label %if.end127, !dbg !2843

land.lhs.true:                                    ; preds = %if.end122
  %80 = load i32*, i32** %addr.addr, align 8, !dbg !2844
  %tobool124 = icmp ne i32* %80, null, !dbg !2844
  br i1 %tobool124, label %if.end127, label %if.then125, !dbg !2845

if.then125:                                       ; preds = %land.lhs.true
  store i32 0, i32* %tmp126, align 4, !dbg !2846
  %81 = load i32, i32* %tmp126, align 4, !dbg !2850
  br label %fail, !dbg !2851

if.end127:                                        ; preds = %land.lhs.true, %if.end122
  %82 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2852
  %call128 = call i8* @of_get_property(%struct.device_node* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %imaplen) #9, !dbg !2853
  %83 = bitcast i8* %call128 to i32*, !dbg !2853
  store i32* %83, i32** %imap, align 8, !dbg !2854
  %84 = load i32*, i32** %imap, align 8, !dbg !2855
  %cmp129 = icmp eq i32* %84, null, !dbg !2857
  br i1 %cmp129, label %if.then131, label %if.end134, !dbg !2858

if.then131:                                       ; preds = %if.end127
  store i32 0, i32* %tmp132, align 4, !dbg !2859
  %85 = load i32, i32* %tmp132, align 4, !dbg !2863
  %86 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2864
  %call133 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %86) #9, !dbg !2865
  store %struct.device_node* %call133, %struct.device_node** %newpar, align 8, !dbg !2866
  br label %skiplevel, !dbg !2867

if.end134:                                        ; preds = %if.end127
  %87 = load i32, i32* %imaplen, align 4, !dbg !2868
  %conv135 = sext i32 %87 to i64, !dbg !2868
  %div = udiv i64 %conv135, 4, !dbg !2868
  %conv136 = trunc i64 %div to i32, !dbg !2868
  store i32 %conv136, i32* %imaplen, align 4, !dbg !2868
  %88 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !2869
  %call137 = call i8* @of_get_property(%struct.device_node* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* null) #9, !dbg !2870
  %89 = bitcast i8* %call137 to i32*, !dbg !2870
  store i32* %89, i32** %imask, align 8, !dbg !2871
  %90 = load i32*, i32** %imask, align 8, !dbg !2872
  %tobool138 = icmp ne i32* %90, null, !dbg !2872
  br i1 %tobool138, label %if.end141, label %if.then139, !dbg !2874

if.then139:                                       ; preds = %if.end134
  %arraydecay140 = getelementptr inbounds [17 x i32], [17 x i32]* %dummy_imask, i64 0, i64 0, !dbg !2875
  store i32* %arraydecay140, i32** %imask, align 8, !dbg !2876
  br label %if.end141, !dbg !2877

if.end141:                                        ; preds = %if.then139, %if.end134
  store i32 0, i32* %match, align 4, !dbg !2878
  br label %while.cond142, !dbg !2879

while.cond142:                                    ; preds = %if.end234, %if.end141
  %91 = load i32, i32* %imaplen, align 4, !dbg !2880
  %92 = load i32, i32* %addrsize, align 4, !dbg !2881
  %93 = load i32, i32* %intsize, align 4, !dbg !2882
  %add143 = add i32 %92, %93, !dbg !2883
  %add144 = add i32 %add143, 1, !dbg !2884
  %cmp145 = icmp ugt i32 %91, %add144, !dbg !2885
  br i1 %cmp145, label %land.rhs147, label %land.end151, !dbg !2886

land.rhs147:                                      ; preds = %while.cond142
  %94 = load i32, i32* %match, align 4, !dbg !2887
  %tobool148 = icmp ne i32 %94, 0, !dbg !2888
  %lnot149 = xor i1 %tobool148, true, !dbg !2888
  br label %land.end151

land.end151:                                      ; preds = %land.rhs147, %while.cond142
  %95 = phi i1 [ false, %while.cond142 ], [ %lnot149, %land.rhs147 ], !dbg !2889
  br i1 %95, label %while.body152, label %while.end, !dbg !2879

while.body152:                                    ; preds = %land.end151
  store i32 1, i32* %match, align 4, !dbg !2890
  store i32 0, i32* %i, align 4, !dbg !2891
  br label %for.cond153, !dbg !2893

for.cond153:                                      ; preds = %for.inc167, %while.body152
  %96 = load i32, i32* %i, align 4, !dbg !2894
  %97 = load i32, i32* %addrsize, align 4, !dbg !2896
  %98 = load i32, i32* %intsize, align 4, !dbg !2897
  %add154 = add i32 %97, %98, !dbg !2898
  %cmp155 = icmp ult i32 %96, %add154, !dbg !2899
  br i1 %cmp155, label %for.body157, label %for.end169, !dbg !2900

for.body157:                                      ; preds = %for.cond153
  %99 = load i32*, i32** %match_array, align 8, !dbg !2901
  %100 = load i32, i32* %i, align 4, !dbg !2902
  %idxprom158 = sext i32 %100 to i64, !dbg !2901
  %arrayidx159 = getelementptr i32, i32* %99, i64 %idxprom158, !dbg !2901
  %101 = load i32, i32* %arrayidx159, align 4, !dbg !2901
  %102 = load i32*, i32** %imap, align 8, !dbg !2903
  %incdec.ptr = getelementptr i32, i32* %102, i32 1, !dbg !2903
  store i32* %incdec.ptr, i32** %imap, align 8, !dbg !2903
  %103 = load i32, i32* %102, align 4, !dbg !2904
  %xor = xor i32 %101, %103, !dbg !2905
  %104 = load i32*, i32** %imask, align 8, !dbg !2906
  %105 = load i32, i32* %i, align 4, !dbg !2907
  %idxprom160 = sext i32 %105 to i64, !dbg !2906
  %arrayidx161 = getelementptr i32, i32* %104, i64 %idxprom160, !dbg !2906
  %106 = load i32, i32* %arrayidx161, align 4, !dbg !2906
  %and162 = and i32 %xor, %106, !dbg !2908
  %tobool163 = icmp ne i32 %and162, 0, !dbg !2909
  %lnot164 = xor i1 %tobool163, true, !dbg !2909
  %lnot.ext165 = zext i1 %lnot164 to i32, !dbg !2909
  %107 = load i32, i32* %match, align 4, !dbg !2910
  %and166 = and i32 %107, %lnot.ext165, !dbg !2910
  store i32 %and166, i32* %match, align 4, !dbg !2910
  br label %for.inc167, !dbg !2911

for.inc167:                                       ; preds = %for.body157
  %108 = load i32, i32* %i, align 4, !dbg !2912
  %inc168 = add i32 %108, 1, !dbg !2912
  store i32 %inc168, i32* %i, align 4, !dbg !2912
  %109 = load i32, i32* %imaplen, align 4, !dbg !2913
  %dec = add i32 %109, -1, !dbg !2913
  store i32 %dec, i32* %imaplen, align 4, !dbg !2913
  br label %for.cond153, !dbg !2914, !llvm.loop !2915

for.end169:                                       ; preds = %for.cond153
  store i32 0, i32* %tmp170, align 4, !dbg !2917
  %110 = load i32, i32* %tmp170, align 4, !dbg !2920
  %111 = load i32*, i32** %imap, align 8, !dbg !2921
  store i32* %111, i32** %p.addr.i, align 8
  %112 = load i32*, i32** %p.addr.i, align 8, !dbg !2922
  store i32* %112, i32** %p.addr.i.i, align 8
  %113 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2923
  %114 = load i32, i32* %113, align 4, !dbg !2923
  %115 = call i1 @llvm.is.constant.i32(i32 %114) #11, !dbg !2923
  br i1 %115, label %cond.true.i.i, label %cond.false.i.i, !dbg !2923

cond.true.i.i:                                    ; preds = %for.end169
  %116 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2923
  %117 = load i32, i32* %116, align 4, !dbg !2923
  %and.i.i = and i32 %117, 255, !dbg !2923
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !2923
  %118 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2923
  %119 = load i32, i32* %118, align 4, !dbg !2923
  %and1.i.i = and i32 %119, 65280, !dbg !2923
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !2923
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !2923
  %120 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2923
  %121 = load i32, i32* %120, align 4, !dbg !2923
  %and3.i.i = and i32 %121, 16711680, !dbg !2923
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !2923
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !2923
  %122 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2923
  %123 = load i32, i32* %122, align 4, !dbg !2923
  %and5.i.i = and i32 %123, -16777216, !dbg !2923
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !2923
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !2923
  br label %__be32_to_cpup.exit, !dbg !2923

cond.false.i.i:                                   ; preds = %for.end169
  %124 = load i32*, i32** %p.addr.i.i, align 8, !dbg !2923
  %125 = load i32, i32* %124, align 4, !dbg !2923
  %call.i.i = call i32 @__fswab32(i32 %125) #10, !dbg !2923
  br label %__be32_to_cpup.exit, !dbg !2923

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !2923
  %call172 = call %struct.device_node* @of_find_node_by_phandle(i32 %cond.i.i) #9, !dbg !2924
  store %struct.device_node* %call172, %struct.device_node** %newpar, align 8, !dbg !2925
  %126 = load i32*, i32** %imap, align 8, !dbg !2926
  %incdec.ptr173 = getelementptr i32, i32* %126, i32 1, !dbg !2926
  store i32* %incdec.ptr173, i32** %imap, align 8, !dbg !2926
  %127 = load i32, i32* %imaplen, align 4, !dbg !2927
  %dec174 = add i32 %127, -1, !dbg !2927
  store i32 %dec174, i32* %imaplen, align 4, !dbg !2927
  %128 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !2928
  %cmp175 = icmp eq %struct.device_node* %128, null, !dbg !2930
  br i1 %cmp175, label %if.then177, label %if.end179, !dbg !2931

if.then177:                                       ; preds = %__be32_to_cpup.exit
  store i32 0, i32* %tmp178, align 4, !dbg !2932
  %129 = load i32, i32* %tmp178, align 4, !dbg !2936
  br label %fail, !dbg !2937

if.end179:                                        ; preds = %__be32_to_cpup.exit
  %130 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !2938
  %call180 = call zeroext i1 @of_device_is_available(%struct.device_node* %130) #9, !dbg !2940
  br i1 %call180, label %if.end182, label %if.then181, !dbg !2941

if.then181:                                       ; preds = %if.end179
  store i32 0, i32* %match, align 4, !dbg !2942
  br label %if.end182, !dbg !2943

if.end182:                                        ; preds = %if.then181, %if.end179
  %131 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !2944
  %call183 = call i32 @of_property_read_u32(%struct.device_node* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %newintsize) #9, !dbg !2946
  %tobool184 = icmp ne i32 %call183, 0, !dbg !2946
  br i1 %tobool184, label %if.then185, label %if.end187, !dbg !2947

if.then185:                                       ; preds = %if.end182
  store i32 0, i32* %tmp186, align 4, !dbg !2948
  %132 = load i32, i32* %tmp186, align 4, !dbg !2952
  br label %fail, !dbg !2953

if.end187:                                        ; preds = %if.end182
  %133 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !2954
  %call188 = call i32 @of_property_read_u32(%struct.device_node* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %newaddrsize) #9, !dbg !2956
  %tobool189 = icmp ne i32 %call188, 0, !dbg !2956
  br i1 %tobool189, label %if.then190, label %if.end191, !dbg !2957

if.then190:                                       ; preds = %if.end187
  store i32 0, i32* %newaddrsize, align 4, !dbg !2958
  br label %if.end191, !dbg !2959

if.end191:                                        ; preds = %if.then190, %if.end187
  store i32 0, i32* %tmp192, align 4, !dbg !2960
  %134 = load i32, i32* %tmp192, align 4, !dbg !2963
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on193, metadata !2964, metadata !DIExpression()), !dbg !2967
  %135 = load i32, i32* %newaddrsize, align 4, !dbg !2967
  %136 = load i32, i32* %newintsize, align 4, !dbg !2967
  %add194 = add i32 %135, %136, !dbg !2967
  %cmp195 = icmp ugt i32 %add194, 16, !dbg !2967
  %lnot197 = xor i1 %cmp195, true, !dbg !2967
  %lnot199 = xor i1 %lnot197, true, !dbg !2967
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !2967
  store i32 %lnot.ext200, i32* %__ret_warn_on193, align 4, !dbg !2967
  %137 = load i32, i32* %__ret_warn_on193, align 4, !dbg !2968
  %tobool201 = icmp ne i32 %137, 0, !dbg !2968
  %lnot202 = xor i1 %tobool201, true, !dbg !2968
  %lnot204 = xor i1 %lnot202, true, !dbg !2968
  %lnot.ext205 = zext i1 %lnot204 to i32, !dbg !2968
  %conv206 = sext i32 %lnot.ext205 to i64, !dbg !2968
  %tobool207 = icmp ne i64 %conv206, 0, !dbg !2968
  br i1 %tobool207, label %if.then208, label %if.end221, !dbg !2967

if.then208:                                       ; preds = %if.end191
  br label %do.body209, !dbg !2968

do.body209:                                       ; preds = %if.then208
  br label %do.body210, !dbg !2970

do.body210:                                       ; preds = %do.body209
  br label %do.end212, !dbg !2972

do.end212:                                        ; preds = %do.body210
  br label %do.body213, !dbg !2970

do.body213:                                       ; preds = %do.end212
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 234, i32 2305, i64 12) #11, !dbg !2974, !srcloc !2976
  br label %do.end215, !dbg !2974

do.end215:                                        ; preds = %do.body213
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 165) #11, !dbg !2977, !srcloc !2979
  br label %do.body216, !dbg !2970

do.body216:                                       ; preds = %do.end215
  br label %do.end218, !dbg !2980

do.end218:                                        ; preds = %do.body216
  br label %do.end220, !dbg !2970

do.end220:                                        ; preds = %do.end218
  br label %if.end221, !dbg !2970

if.end221:                                        ; preds = %do.end220, %if.end191
  %138 = load i32, i32* %__ret_warn_on193, align 4, !dbg !2967
  %tobool223 = icmp ne i32 %138, 0, !dbg !2967
  %lnot224 = xor i1 %tobool223, true, !dbg !2967
  %lnot226 = xor i1 %lnot224, true, !dbg !2967
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !2967
  %conv228 = sext i32 %lnot.ext227 to i64, !dbg !2967
  store i64 %conv228, i64* %tmp222, align 8, !dbg !2968
  %139 = load i64, i64* %tmp222, align 8, !dbg !2967
  %tobool229 = icmp ne i64 %139, 0, !dbg !2982
  br i1 %tobool229, label %if.then233, label %lor.lhs.false, !dbg !2983

lor.lhs.false:                                    ; preds = %if.end221
  %140 = load i32, i32* %imaplen, align 4, !dbg !2984
  %141 = load i32, i32* %newaddrsize, align 4, !dbg !2985
  %142 = load i32, i32* %newintsize, align 4, !dbg !2986
  %add230 = add i32 %141, %142, !dbg !2987
  %cmp231 = icmp ult i32 %140, %add230, !dbg !2988
  br i1 %cmp231, label %if.then233, label %if.end234, !dbg !2989

if.then233:                                       ; preds = %lor.lhs.false, %if.end221
  store i32 -14, i32* %rc, align 4, !dbg !2990
  br label %fail, !dbg !2992

if.end234:                                        ; preds = %lor.lhs.false
  %143 = load i32, i32* %newaddrsize, align 4, !dbg !2993
  %144 = load i32, i32* %newintsize, align 4, !dbg !2994
  %add235 = add i32 %143, %144, !dbg !2995
  %145 = load i32*, i32** %imap, align 8, !dbg !2996
  %idx.ext = zext i32 %add235 to i64, !dbg !2996
  %add.ptr = getelementptr i32, i32* %145, i64 %idx.ext, !dbg !2996
  store i32* %add.ptr, i32** %imap, align 8, !dbg !2996
  %146 = load i32, i32* %newaddrsize, align 4, !dbg !2997
  %147 = load i32, i32* %newintsize, align 4, !dbg !2998
  %add236 = add i32 %146, %147, !dbg !2999
  %148 = load i32, i32* %imaplen, align 4, !dbg !3000
  %sub = sub i32 %148, %add236, !dbg !3000
  store i32 %sub, i32* %imaplen, align 4, !dbg !3000
  store i32 0, i32* %tmp237, align 4, !dbg !3001
  %149 = load i32, i32* %tmp237, align 4, !dbg !3004
  br label %while.cond142, !dbg !2879, !llvm.loop !3005

while.end:                                        ; preds = %land.end151
  %150 = load i32, i32* %match, align 4, !dbg !3007
  %tobool238 = icmp ne i32 %150, 0, !dbg !3007
  br i1 %tobool238, label %if.end240, label %if.then239, !dbg !3009

if.then239:                                       ; preds = %while.end
  br label %fail, !dbg !3010

if.end240:                                        ; preds = %while.end
  %151 = load i32*, i32** %imap, align 8, !dbg !3011
  %152 = load i32, i32* %newaddrsize, align 4, !dbg !3012
  %idx.ext241 = zext i32 %152 to i64, !dbg !3013
  %idx.neg = sub i64 0, %idx.ext241, !dbg !3013
  %add.ptr242 = getelementptr i32, i32* %151, i64 %idx.neg, !dbg !3013
  %153 = load i32, i32* %newintsize, align 4, !dbg !3014
  %idx.ext243 = zext i32 %153 to i64, !dbg !3015
  %idx.neg244 = sub i64 0, %idx.ext243, !dbg !3015
  %add.ptr245 = getelementptr i32, i32* %add.ptr242, i64 %idx.neg244, !dbg !3015
  store i32* %add.ptr245, i32** %match_array, align 8, !dbg !3016
  store i32 0, i32* %i, align 4, !dbg !3017
  br label %for.cond246, !dbg !3018

for.cond246:                                      ; preds = %for.inc259, %if.end240
  %154 = load i32, i32* %i, align 4, !dbg !3019
  %155 = load i32, i32* %newintsize, align 4, !dbg !3020
  %cmp247 = icmp ult i32 %154, %155, !dbg !3021
  br i1 %cmp247, label %for.body249, label %for.end261, !dbg !3022

for.body249:                                      ; preds = %for.cond246
  %156 = load i32*, i32** %imap, align 8, !dbg !3023
  %157 = load i32, i32* %newintsize, align 4, !dbg !3024
  %idx.ext250 = zext i32 %157 to i64, !dbg !3025
  %idx.neg251 = sub i64 0, %idx.ext250, !dbg !3025
  %add.ptr252 = getelementptr i32, i32* %156, i64 %idx.neg251, !dbg !3025
  %158 = load i32, i32* %i, align 4, !dbg !3026
  %idx.ext253 = sext i32 %158 to i64, !dbg !3027
  %add.ptr254 = getelementptr i32, i32* %add.ptr252, i64 %idx.ext253, !dbg !3027
  store i32* %add.ptr254, i32** %p.addr.i267, align 8
  %159 = load i32*, i32** %p.addr.i267, align 8, !dbg !3028
  store i32* %159, i32** %p.addr.i.i266, align 8
  %160 = load i32*, i32** %p.addr.i.i266, align 8, !dbg !3029
  %161 = load i32, i32* %160, align 4, !dbg !3029
  %162 = call i1 @llvm.is.constant.i32(i32 %161) #11, !dbg !3029
  br i1 %162, label %cond.true.i.i279, label %cond.false.i.i281, !dbg !3029

cond.true.i.i279:                                 ; preds = %for.body249
  %163 = load i32*, i32** %p.addr.i.i266, align 8, !dbg !3029
  %164 = load i32, i32* %163, align 4, !dbg !3029
  %and.i.i268 = and i32 %164, 255, !dbg !3029
  %shl.i.i269 = shl i32 %and.i.i268, 24, !dbg !3029
  %165 = load i32*, i32** %p.addr.i.i266, align 8, !dbg !3029
  %166 = load i32, i32* %165, align 4, !dbg !3029
  %and1.i.i270 = and i32 %166, 65280, !dbg !3029
  %shl2.i.i271 = shl i32 %and1.i.i270, 8, !dbg !3029
  %or.i.i272 = or i32 %shl.i.i269, %shl2.i.i271, !dbg !3029
  %167 = load i32*, i32** %p.addr.i.i266, align 8, !dbg !3029
  %168 = load i32, i32* %167, align 4, !dbg !3029
  %and3.i.i273 = and i32 %168, 16711680, !dbg !3029
  %shr.i.i274 = lshr i32 %and3.i.i273, 8, !dbg !3029
  %or4.i.i275 = or i32 %or.i.i272, %shr.i.i274, !dbg !3029
  %169 = load i32*, i32** %p.addr.i.i266, align 8, !dbg !3029
  %170 = load i32, i32* %169, align 4, !dbg !3029
  %and5.i.i276 = and i32 %170, -16777216, !dbg !3029
  %shr6.i.i277 = lshr i32 %and5.i.i276, 24, !dbg !3029
  %or7.i.i278 = or i32 %or4.i.i275, %shr6.i.i277, !dbg !3029
  br label %__be32_to_cpup.exit283, !dbg !3029

cond.false.i.i281:                                ; preds = %for.body249
  %171 = load i32*, i32** %p.addr.i.i266, align 8, !dbg !3029
  %172 = load i32, i32* %171, align 4, !dbg !3029
  %call.i.i280 = call i32 @__fswab32(i32 %172) #10, !dbg !3029
  br label %__be32_to_cpup.exit283, !dbg !3029

__be32_to_cpup.exit283:                           ; preds = %cond.true.i.i279, %cond.false.i.i281
  %cond.i.i282 = phi i32 [ %or7.i.i278, %cond.true.i.i279 ], [ %call.i.i280, %cond.false.i.i281 ], !dbg !3029
  %173 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !3030
  %args256 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %173, i32 0, i32 2, !dbg !3031
  %174 = load i32, i32* %i, align 4, !dbg !3032
  %idxprom257 = sext i32 %174 to i64, !dbg !3030
  %arrayidx258 = getelementptr [16 x i32], [16 x i32]* %args256, i64 0, i64 %idxprom257, !dbg !3030
  store i32 %cond.i.i282, i32* %arrayidx258, align 4, !dbg !3033
  br label %for.inc259, !dbg !3030

for.inc259:                                       ; preds = %__be32_to_cpup.exit283
  %175 = load i32, i32* %i, align 4, !dbg !3034
  %inc260 = add i32 %175, 1, !dbg !3034
  store i32 %inc260, i32* %i, align 4, !dbg !3034
  br label %for.cond246, !dbg !3035, !llvm.loop !3036

for.end261:                                       ; preds = %for.cond246
  %176 = load i32, i32* %newintsize, align 4, !dbg !3038
  store i32 %176, i32* %intsize, align 4, !dbg !3039
  %177 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !3040
  %args_count262 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %177, i32 0, i32 1, !dbg !3041
  store i32 %176, i32* %args_count262, align 8, !dbg !3042
  %178 = load i32, i32* %newaddrsize, align 4, !dbg !3043
  store i32 %178, i32* %addrsize, align 4, !dbg !3044
  br label %skiplevel, !dbg !3045

skiplevel:                                        ; preds = %for.end261, %if.then131
  call void @llvm.dbg.label(metadata !3046), !dbg !3047
  %179 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !3048
  %180 = load %struct.of_phandle_args*, %struct.of_phandle_args** %out_irq.addr, align 8, !dbg !3049
  %np263 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %180, i32 0, i32 0, !dbg !3050
  store %struct.device_node* %179, %struct.device_node** %np263, align 8, !dbg !3051
  store i32 0, i32* %tmp264, align 4, !dbg !3052
  %181 = load i32, i32* %tmp264, align 4, !dbg !3055
  %182 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !3056
  call void @of_node_put(%struct.device_node* %182) #9, !dbg !3057
  %183 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !3058
  store %struct.device_node* %183, %struct.device_node** %ipar, align 8, !dbg !3059
  store %struct.device_node* null, %struct.device_node** %newpar, align 8, !dbg !3060
  br label %while.cond, !dbg !2828, !llvm.loop !3061

while.end265:                                     ; preds = %while.cond
  store i32 -2, i32* %rc, align 4, !dbg !3063
  br label %fail, !dbg !3064

fail:                                             ; preds = %while.end265, %if.then239, %if.then233, %if.then185, %if.then177, %if.then125, %if.then63, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !3065), !dbg !3066
  %184 = load %struct.device_node*, %struct.device_node** %ipar, align 8, !dbg !3067
  call void @of_node_put(%struct.device_node* %184) #9, !dbg !3068
  %185 = load %struct.device_node*, %struct.device_node** %newpar, align 8, !dbg !3069
  call void @of_node_put(%struct.device_node* %185) #9, !dbg !3070
  %186 = load i32, i32* %rc, align 4, !dbg !3071
  store i32 %186, i32* %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

return:                                           ; preds = %fail, %if.then120
  %187 = load i32, i32* %retval, align 4, !dbg !3073
  ret i32 %187, !dbg !3073
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #5 !dbg !3074 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  %0 = load i32, i32* %val.addr, align 4, !dbg !3079
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !3080
  ret i32 %call, !dbg !3081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !3082 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !3089, metadata !DIExpression()), !dbg !3090
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3091
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3092
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #9, !dbg !3093
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !3090
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3094
  %tobool = icmp ne %struct.property* %2, null, !dbg !3094
  %3 = zext i1 %tobool to i64, !dbg !3094
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3094
  %tobool1 = icmp ne i32 %cond, 0, !dbg !3094
  ret i1 %tobool1, !dbg !3095
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_device_is_available(%struct.device_node*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_to_resource(%struct.device_node* %dev, i32 %index, %struct.resource* %r) #0 !dbg !3096 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %r.addr = alloca %struct.resource*, align 8
  %irq = alloca i32, align 4
  %name = alloca i8*, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !3112, metadata !DIExpression()), !dbg !3113
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3114, metadata !DIExpression()), !dbg !3115
  store %struct.resource* %r, %struct.resource** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %r.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !3118, metadata !DIExpression()), !dbg !3119
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3120
  %1 = load i32, i32* %index.addr, align 4, !dbg !3121
  %call = call i32 @of_irq_get(%struct.device_node* %0, i32 %1) #9, !dbg !3122
  store i32 %call, i32* %irq, align 4, !dbg !3119
  %2 = load i32, i32* %irq, align 4, !dbg !3123
  %cmp = icmp slt i32 %2, 0, !dbg !3125
  br i1 %cmp, label %if.then, label %if.end, !dbg !3126

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %irq, align 4, !dbg !3127
  store i32 %3, i32* %retval, align 4, !dbg !3128
  br label %return, !dbg !3128

if.end:                                           ; preds = %entry
  %4 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !3129
  %tobool = icmp ne %struct.resource* %4, null, !dbg !3129
  br i1 %tobool, label %land.lhs.true, label %if.end10, !dbg !3131

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %irq, align 4, !dbg !3132
  %tobool1 = icmp ne i32 %5, 0, !dbg !3132
  br i1 %tobool1, label %if.then2, label %if.end10, !dbg !3133

if.then2:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %name, metadata !3134, metadata !DIExpression()), !dbg !3136
  store i8* null, i8** %name, align 8, !dbg !3136
  %6 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !3137
  %7 = bitcast %struct.resource* %6 to i8*, !dbg !3138
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 64, i1 false), !dbg !3138
  %8 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3139
  %9 = load i32, i32* %index.addr, align 4, !dbg !3140
  %call3 = call i32 @of_property_read_string_index(%struct.device_node* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %9, i8** %name) #9, !dbg !3141
  %10 = load i32, i32* %irq, align 4, !dbg !3142
  %conv = sext i32 %10 to i64, !dbg !3142
  %11 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !3143
  %end = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 1, !dbg !3144
  store i64 %conv, i64* %end, align 8, !dbg !3145
  %12 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !3146
  %start = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0, !dbg !3147
  store i64 %conv, i64* %start, align 8, !dbg !3148
  %13 = load i32, i32* %irq, align 4, !dbg !3149
  %call4 = call %struct.irq_data* @irq_get_irq_data(i32 %13) #9, !dbg !3150
  %call5 = call i32 @irqd_get_trigger_type(%struct.irq_data* %call4) #9, !dbg !3151
  %or = or i32 1024, %call5, !dbg !3152
  %conv6 = zext i32 %or to i64, !dbg !3153
  %14 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !3154
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 3, !dbg !3155
  store i64 %conv6, i64* %flags, align 8, !dbg !3156
  %15 = load i8*, i8** %name, align 8, !dbg !3157
  %tobool7 = icmp ne i8* %15, null, !dbg !3157
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !3157

cond.true:                                        ; preds = %if.then2
  %16 = load i8*, i8** %name, align 8, !dbg !3158
  br label %cond.end, !dbg !3157

cond.false:                                       ; preds = %if.then2
  %17 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3159
  %call8 = call i8* @of_node_full_name(%struct.device_node* %17) #9, !dbg !3160
  br label %cond.end, !dbg !3157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ %call8, %cond.false ], !dbg !3157
  %18 = load %struct.resource*, %struct.resource** %r.addr, align 8, !dbg !3161
  %name9 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 2, !dbg !3162
  store i8* %cond, i8** %name9, align 8, !dbg !3163
  br label %if.end10, !dbg !3164

if.end10:                                         ; preds = %cond.end, %land.lhs.true, %if.end
  %19 = load i32, i32* %irq, align 4, !dbg !3165
  store i32 %19, i32* %retval, align 4, !dbg !3166
  br label %return, !dbg !3166

return:                                           ; preds = %if.end10, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !3167
  ret i32 %20, !dbg !3167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_get(%struct.device_node* %dev, i32 %index) #0 !dbg !3168 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %oirq = alloca %struct.of_phandle_args, align 8
  %domain = alloca %struct.irq_domain*, align 8
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !3171, metadata !DIExpression()), !dbg !3172
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %oirq, metadata !3177, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %domain, metadata !3179, metadata !DIExpression()), !dbg !3180
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3181
  %1 = load i32, i32* %index.addr, align 4, !dbg !3182
  %call = call i32 @of_irq_parse_one(%struct.device_node* %0, i32 %1, %struct.of_phandle_args* %oirq) #9, !dbg !3183
  store i32 %call, i32* %rc, align 4, !dbg !3184
  %2 = load i32, i32* %rc, align 4, !dbg !3185
  %tobool = icmp ne i32 %2, 0, !dbg !3185
  br i1 %tobool, label %if.then, label %if.end, !dbg !3187

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !3188
  store i32 %3, i32* %retval, align 4, !dbg !3189
  br label %return, !dbg !3189

if.end:                                           ; preds = %entry
  %np = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %oirq, i32 0, i32 0, !dbg !3190
  %4 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3190
  %call1 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %4) #9, !dbg !3191
  store %struct.irq_domain* %call1, %struct.irq_domain** %domain, align 8, !dbg !3192
  %5 = load %struct.irq_domain*, %struct.irq_domain** %domain, align 8, !dbg !3193
  %tobool2 = icmp ne %struct.irq_domain* %5, null, !dbg !3193
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3195

if.then3:                                         ; preds = %if.end
  store i32 -517, i32* %retval, align 4, !dbg !3196
  br label %return, !dbg !3196

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* %oirq) #9, !dbg !3197
  store i32 %call5, i32* %retval, align 4, !dbg !3198
  br label %return, !dbg !3198

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3199
  ret i32 %6, !dbg !3199
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_string_index(%struct.device_node* %np, i8* %propname, i32 %index, i8** %output) #0 !dbg !3200 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %output.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3203, metadata !DIExpression()), !dbg !3204
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  store i8** %output, i8*** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %output.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3211, metadata !DIExpression()), !dbg !3212
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3213
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3214
  %2 = load i8**, i8*** %output.addr, align 8, !dbg !3215
  %3 = load i32, i32* %index.addr, align 4, !dbg !3216
  %call = call i32 @of_property_read_string_helper(%struct.device_node* %0, i8* %1, i8** %2, i64 1, i32 %3) #9, !dbg !3217
  store i32 %call, i32* %rc, align 4, !dbg !3212
  %4 = load i32, i32* %rc, align 4, !dbg !3218
  %cmp = icmp slt i32 %4, 0, !dbg !3219
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3218

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %rc, align 4, !dbg !3220
  br label %cond.end, !dbg !3218

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ 0, %cond.false ], !dbg !3218
  ret i32 %cond, !dbg !3221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @irqd_get_trigger_type(%struct.irq_data* %d) #0 !dbg !3222 {
entry:
  %d.addr = alloca %struct.irq_data*, align 8
  store %struct.irq_data* %d, %struct.irq_data** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_data** %d.addr, metadata !3225, metadata !DIExpression()), !dbg !3226
  %0 = load %struct.irq_data*, %struct.irq_data** %d.addr, align 8, !dbg !3227
  %common = getelementptr inbounds %struct.irq_data, %struct.irq_data* %0, i32 0, i32 3, !dbg !3227
  %1 = load %struct.irq_common_data*, %struct.irq_common_data** %common, align 8, !dbg !3227
  %state_use_accessors = getelementptr inbounds %struct.irq_common_data, %struct.irq_common_data* %1, i32 0, i32 0, !dbg !3227
  %2 = load i32, i32* %state_use_accessors, align 8, !dbg !3227
  %and = and i32 %2, 15, !dbg !3228
  ret i32 %and, !dbg !3229
}

; Function Attrs: noredzone
declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @of_node_full_name(%struct.device_node* %np) #0 !dbg !3230 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3233, metadata !DIExpression()), !dbg !3234
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3235
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !3235
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3235

cond.true:                                        ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3236
  %full_name = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 2, !dbg !3237
  %2 = load i8*, i8** %full_name, align 8, !dbg !3237
  br label %cond.end, !dbg !3235

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), %cond.false ], !dbg !3235
  ret i8* %cond, !dbg !3238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_find_host(%struct.device_node* %node) #0 !dbg !3239 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %d = alloca %struct.irq_domain*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d, metadata !3244, metadata !DIExpression()), !dbg !3245
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3246
  %call = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %0, i32 1) #9, !dbg !3247
  store %struct.irq_domain* %call, %struct.irq_domain** %d, align 8, !dbg !3248
  %1 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !3249
  %tobool = icmp ne %struct.irq_domain* %1, null, !dbg !3249
  br i1 %tobool, label %if.end, label %if.then, !dbg !3251

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !3252
  %call1 = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %2, i32 0) #9, !dbg !3253
  store %struct.irq_domain* %call1, %struct.irq_domain** %d, align 8, !dbg !3254
  br label %if.end, !dbg !3255

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !3256
  ret %struct.irq_domain* %3, !dbg !3257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_get_byname(%struct.device_node* %dev, i8* %name) #0 !dbg !3258 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device_node*, align 8
  %name.addr = alloca i8*, align 8
  %index = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3265, metadata !DIExpression()), !dbg !3266
  %0 = load i8*, i8** %name.addr, align 8, !dbg !3267
  %tobool = icmp ne i8* %0, null, !dbg !3267
  %lnot = xor i1 %tobool, true, !dbg !3267
  %lnot1 = xor i1 %lnot, true, !dbg !3267
  %lnot2 = xor i1 %lnot1, true, !dbg !3267
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3267
  %conv = sext i32 %lnot.ext to i64, !dbg !3267
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3267
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3269

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3270
  br label %return, !dbg !3270

if.end:                                           ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3271
  %2 = load i8*, i8** %name.addr, align 8, !dbg !3272
  %call = call i32 @of_property_match_string(%struct.device_node* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %2) #9, !dbg !3273
  store i32 %call, i32* %index, align 4, !dbg !3274
  %3 = load i32, i32* %index, align 4, !dbg !3275
  %cmp = icmp slt i32 %3, 0, !dbg !3277
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3278

if.then5:                                         ; preds = %if.end
  %4 = load i32, i32* %index, align 4, !dbg !3279
  store i32 %4, i32* %retval, align 4, !dbg !3280
  br label %return, !dbg !3280

if.end6:                                          ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3281
  %6 = load i32, i32* %index, align 4, !dbg !3282
  %call7 = call i32 @of_irq_get(%struct.device_node* %5, i32 %6) #9, !dbg !3283
  store i32 %call7, i32* %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3285
  ret i32 %7, !dbg !3285
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_count(%struct.device_node* %dev) #0 !dbg !3286 {
entry:
  %dev.addr = alloca %struct.device_node*, align 8
  %irq = alloca %struct.of_phandle_args, align 8
  %nr = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %irq, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !3293, metadata !DIExpression()), !dbg !3294
  store i32 0, i32* %nr, align 4, !dbg !3294
  br label %while.cond, !dbg !3295

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3296
  %1 = load i32, i32* %nr, align 4, !dbg !3297
  %call = call i32 @of_irq_parse_one(%struct.device_node* %0, i32 %1, %struct.of_phandle_args* %irq) #9, !dbg !3298
  %cmp = icmp eq i32 %call, 0, !dbg !3299
  br i1 %cmp, label %while.body, label %while.end, !dbg !3295

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %nr, align 4, !dbg !3300
  %inc = add i32 %2, 1, !dbg !3300
  store i32 %inc, i32* %nr, align 4, !dbg !3300
  br label %while.cond, !dbg !3295, !llvm.loop !3301

while.end:                                        ; preds = %while.cond
  %3 = load i32, i32* %nr, align 4, !dbg !3302
  ret i32 %3, !dbg !3303
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_irq_to_resource_table(%struct.device_node* %dev, %struct.resource* %res, i32 %nr_irqs) #0 !dbg !3304 {
entry:
  %dev.addr = alloca %struct.device_node*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %nr_irqs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.device_node* %dev, %struct.device_node** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %dev.addr, metadata !3307, metadata !DIExpression()), !dbg !3308
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !3309, metadata !DIExpression()), !dbg !3310
  store i32 %nr_irqs, i32* %nr_irqs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_irqs.addr, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3313, metadata !DIExpression()), !dbg !3314
  store i32 0, i32* %i, align 4, !dbg !3315
  br label %for.cond, !dbg !3317

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3318
  %1 = load i32, i32* %nr_irqs.addr, align 4, !dbg !3320
  %cmp = icmp slt i32 %0, %1, !dbg !3321
  br i1 %cmp, label %for.body, label %for.end, !dbg !3322

for.body:                                         ; preds = %for.cond
  %2 = load %struct.device_node*, %struct.device_node** %dev.addr, align 8, !dbg !3323
  %3 = load i32, i32* %i, align 4, !dbg !3325
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3326
  %call = call i32 @of_irq_to_resource(%struct.device_node* %2, i32 %3, %struct.resource* %4) #9, !dbg !3327
  %cmp1 = icmp sle i32 %call, 0, !dbg !3328
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3329

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3330

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3331

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4, !dbg !3332
  %inc = add i32 %5, 1, !dbg !3332
  store i32 %inc, i32* %i, align 4, !dbg !3332
  %6 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !3333
  %incdec.ptr = getelementptr %struct.resource, %struct.resource* %6, i32 1, !dbg !3333
  store %struct.resource* %incdec.ptr, %struct.resource** %res.addr, align 8, !dbg !3333
  br label %for.cond, !dbg !3334, !llvm.loop !3335

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !3337
  ret i32 %7, !dbg !3338
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @of_irq_init(%struct.of_device_id* %matches) #6 section ".init.text" !dbg !3339 {
entry:
  %matches.addr = alloca %struct.of_device_id*, align 8
  %match = alloca %struct.of_device_id*, align 8
  %np = alloca %struct.device_node*, align 8
  %parent = alloca %struct.device_node*, align 8
  %desc = alloca %struct.of_intc_desc*, align 8
  %temp_desc = alloca %struct.of_intc_desc*, align 8
  %intc_desc_list = alloca %struct.list_head, align 8
  %intc_parent_list = alloca %struct.list_head, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp54 = alloca %struct.of_intc_desc*, align 8
  %__mptr55 = alloca i8*, align 8
  %tmp60 = alloca %struct.of_intc_desc*, align 8
  %ret = alloca i32, align 4
  %tmp76 = alloca i32, align 4
  %__mptr87 = alloca i8*, align 8
  %tmp92 = alloca %struct.of_intc_desc*, align 8
  %head__ = alloca %struct.list_head*, align 8
  %pos__ = alloca %struct.list_head*, align 8
  %tmp97 = alloca %struct.list_head*, align 8
  %tmp99 = alloca %struct.of_intc_desc*, align 8
  %__mptr102 = alloca i8*, align 8
  %tmp105 = alloca %struct.of_intc_desc*, align 8
  %__mptr113 = alloca i8*, align 8
  %tmp117 = alloca %struct.of_intc_desc*, align 8
  %__mptr119 = alloca i8*, align 8
  %tmp124 = alloca %struct.of_intc_desc*, align 8
  %__mptr135 = alloca i8*, align 8
  %tmp140 = alloca %struct.of_intc_desc*, align 8
  %__mptr143 = alloca i8*, align 8
  %tmp147 = alloca %struct.of_intc_desc*, align 8
  %__mptr149 = alloca i8*, align 8
  %tmp154 = alloca %struct.of_intc_desc*, align 8
  %__mptr166 = alloca i8*, align 8
  %tmp171 = alloca %struct.of_intc_desc*, align 8
  store %struct.of_device_id* %matches, %struct.of_device_id** %matches.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %matches.addr, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %match, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3346, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.declare(metadata %struct.device_node** %parent, metadata !3348, metadata !DIExpression()), !dbg !3349
  store %struct.device_node* null, %struct.device_node** %parent, align 8, !dbg !3349
  call void @llvm.dbg.declare(metadata %struct.of_intc_desc** %desc, metadata !3350, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.declare(metadata %struct.of_intc_desc** %temp_desc, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.declare(metadata %struct.list_head* %intc_desc_list, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.declare(metadata %struct.list_head* %intc_parent_list, metadata !3356, metadata !DIExpression()), !dbg !3357
  call void @INIT_LIST_HEAD(%struct.list_head* %intc_desc_list) #9, !dbg !3358
  call void @INIT_LIST_HEAD(%struct.list_head* %intc_parent_list) #9, !dbg !3359
  %0 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !3360
  %call = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* null, %struct.of_device_id* %0, %struct.of_device_id** %match) #9, !dbg !3360
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3360
  br label %for.cond, !dbg !3360

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3362
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3360
  br i1 %tobool, label %for.body, label %for.end, !dbg !3360

for.body:                                         ; preds = %for.cond
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3364
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !3367
  br i1 %call1, label %lor.lhs.false, label %if.then, !dbg !3368

lor.lhs.false:                                    ; preds = %for.body
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3369
  %call2 = call zeroext i1 @of_device_is_available(%struct.device_node* %3) #9, !dbg !3370
  br i1 %call2, label %if.end, label %if.then, !dbg !3371

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !3372

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3373, metadata !DIExpression()), !dbg !3376
  %4 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8, !dbg !3376
  %data = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %4, i32 0, i32 3, !dbg !3376
  %5 = load i8*, i8** %data, align 8, !dbg !3376
  %tobool3 = icmp ne i8* %5, null, !dbg !3376
  %lnot = xor i1 %tobool3, true, !dbg !3376
  %lnot4 = xor i1 %lnot, true, !dbg !3376
  %lnot5 = xor i1 %lnot4, true, !dbg !3376
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !3376
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3376
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !3377
  %tobool6 = icmp ne i32 %6, 0, !dbg !3377
  %lnot7 = xor i1 %tobool6, true, !dbg !3377
  %lnot9 = xor i1 %lnot7, true, !dbg !3377
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !3377
  %conv = sext i32 %lnot.ext10 to i64, !dbg !3377
  %tobool11 = icmp ne i64 %conv, 0, !dbg !3377
  br i1 %tobool11, label %if.then12, label %if.end25, !dbg !3376

if.then12:                                        ; preds = %if.end
  br label %do.body, !dbg !3377

do.body:                                          ; preds = %if.then12
  br label %do.body13, !dbg !3379

do.body13:                                        ; preds = %do.body
  br label %do.end, !dbg !3381

do.end:                                           ; preds = %do.body13
  %7 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8, !dbg !3379
  %compatible = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %7, i32 0, i32 2, !dbg !3379
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %compatible, i64 0, i64 0, !dbg !3379
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %arraydecay) #9, !dbg !3379
  br label %do.body14, !dbg !3379

do.body14:                                        ; preds = %do.end
  br label %do.body15, !dbg !3383

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !3385

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !3383

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 495, i32 2313, i64 12) #11, !dbg !3387, !srcloc !3389
  br label %do.end18, !dbg !3387

do.end18:                                         ; preds = %do.body17
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 166) #11, !dbg !3390, !srcloc !3392
  br label %do.body19, !dbg !3383

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3393

do.end20:                                         ; preds = %do.body19
  br label %do.end21, !dbg !3383

do.end21:                                         ; preds = %do.end20
  br label %do.body22, !dbg !3379

do.body22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !3395

do.end23:                                         ; preds = %do.body22
  br label %do.end24, !dbg !3379

do.end24:                                         ; preds = %do.end23
  br label %if.end25, !dbg !3379

if.end25:                                         ; preds = %do.end24, %if.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !3376
  %tobool26 = icmp ne i32 %8, 0, !dbg !3376
  %lnot27 = xor i1 %tobool26, true, !dbg !3376
  %lnot29 = xor i1 %lnot27, true, !dbg !3376
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !3376
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !3376
  store i64 %conv31, i64* %tmp, align 8, !dbg !3377
  %9 = load i64, i64* %tmp, align 8, !dbg !3376
  %tobool32 = icmp ne i64 %9, 0, !dbg !3397
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !3398

if.then33:                                        ; preds = %if.end25
  br label %for.inc, !dbg !3399

if.end34:                                         ; preds = %if.end25
  %call35 = call i8* @kzalloc(i64 40, i32 3264) #9, !dbg !3400
  %10 = bitcast i8* %call35 to %struct.of_intc_desc*, !dbg !3400
  store %struct.of_intc_desc* %10, %struct.of_intc_desc** %desc, align 8, !dbg !3401
  %11 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3402
  %tobool36 = icmp ne %struct.of_intc_desc* %11, null, !dbg !3402
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !3404

if.then37:                                        ; preds = %if.end34
  %12 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3405
  call void @of_node_put(%struct.device_node* %12) #9, !dbg !3407
  br label %err, !dbg !3408

if.end38:                                         ; preds = %if.end34
  %13 = load %struct.of_device_id*, %struct.of_device_id** %match, align 8, !dbg !3409
  %data39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %13, i32 0, i32 3, !dbg !3410
  %14 = load i8*, i8** %data39, align 8, !dbg !3410
  %15 = bitcast i8* %14 to i32 (%struct.device_node*, %struct.device_node*)*, !dbg !3409
  %16 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3411
  %irq_init_cb = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %16, i32 0, i32 1, !dbg !3412
  store i32 (%struct.device_node*, %struct.device_node*)* %15, i32 (%struct.device_node*, %struct.device_node*)** %irq_init_cb, align 8, !dbg !3413
  %17 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3414
  %call40 = call %struct.device_node* @of_node_get(%struct.device_node* %17) #9, !dbg !3415
  %18 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3416
  %dev = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %18, i32 0, i32 2, !dbg !3417
  store %struct.device_node* %call40, %struct.device_node** %dev, align 8, !dbg !3418
  %19 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3419
  %call41 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %19) #9, !dbg !3420
  %20 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3421
  %interrupt_parent = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %20, i32 0, i32 3, !dbg !3422
  store %struct.device_node* %call41, %struct.device_node** %interrupt_parent, align 8, !dbg !3423
  %21 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3424
  %interrupt_parent42 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %21, i32 0, i32 3, !dbg !3426
  %22 = load %struct.device_node*, %struct.device_node** %interrupt_parent42, align 8, !dbg !3426
  %23 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3427
  %cmp = icmp eq %struct.device_node* %22, %23, !dbg !3428
  br i1 %cmp, label %if.then44, label %if.end46, !dbg !3429

if.then44:                                        ; preds = %if.end38
  %24 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3430
  %interrupt_parent45 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %24, i32 0, i32 3, !dbg !3431
  store %struct.device_node* null, %struct.device_node** %interrupt_parent45, align 8, !dbg !3432
  br label %if.end46, !dbg !3430

if.end46:                                         ; preds = %if.then44, %if.end38
  %25 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3433
  %list = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %25, i32 0, i32 0, !dbg !3434
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %intc_desc_list) #9, !dbg !3435
  br label %for.inc, !dbg !3436

for.inc:                                          ; preds = %if.end46, %if.then33, %if.then
  %26 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3362
  %27 = load %struct.of_device_id*, %struct.of_device_id** %matches.addr, align 8, !dbg !3362
  %call47 = call %struct.device_node* @of_find_matching_node_and_match(%struct.device_node* %26, %struct.of_device_id* %27, %struct.of_device_id** %match) #9, !dbg !3362
  store %struct.device_node* %call47, %struct.device_node** %np, align 8, !dbg !3362
  br label %for.cond, !dbg !3362, !llvm.loop !3437

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !3439

while.cond:                                       ; preds = %if.end110, %for.end
  %call48 = call i32 @list_empty(%struct.list_head* %intc_desc_list) #9, !dbg !3440
  %tobool49 = icmp ne i32 %call48, 0, !dbg !3441
  %lnot50 = xor i1 %tobool49, true, !dbg !3441
  br i1 %lnot50, label %while.body, label %while.end, !dbg !3439

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3442, metadata !DIExpression()), !dbg !3446
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %intc_desc_list, i32 0, i32 0, !dbg !3446
  %28 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3446
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !3446
  store i8* %29, i8** %__mptr, align 8, !dbg !3446
  br label %do.body52, !dbg !3446

do.body52:                                        ; preds = %while.body
  br label %do.end53, !dbg !3447

do.end53:                                         ; preds = %do.body52
  %30 = load i8*, i8** %__mptr, align 8, !dbg !3446
  %add.ptr = getelementptr i8, i8* %30, i64 0, !dbg !3446
  %31 = bitcast i8* %add.ptr to %struct.of_intc_desc*, !dbg !3446
  store %struct.of_intc_desc* %31, %struct.of_intc_desc** %tmp54, align 8, !dbg !3447
  %32 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp54, align 8, !dbg !3446
  store %struct.of_intc_desc* %32, %struct.of_intc_desc** %desc, align 8, !dbg !3449
  call void @llvm.dbg.declare(metadata i8** %__mptr55, metadata !3450, metadata !DIExpression()), !dbg !3452
  %33 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3452
  %list56 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %33, i32 0, i32 0, !dbg !3452
  %next57 = getelementptr inbounds %struct.list_head, %struct.list_head* %list56, i32 0, i32 0, !dbg !3452
  %34 = load %struct.list_head*, %struct.list_head** %next57, align 8, !dbg !3452
  %35 = bitcast %struct.list_head* %34 to i8*, !dbg !3452
  store i8* %35, i8** %__mptr55, align 8, !dbg !3452
  br label %do.body58, !dbg !3452

do.body58:                                        ; preds = %do.end53
  br label %do.end59, !dbg !3453

do.end59:                                         ; preds = %do.body58
  %36 = load i8*, i8** %__mptr55, align 8, !dbg !3452
  %add.ptr61 = getelementptr i8, i8* %36, i64 0, !dbg !3452
  %37 = bitcast i8* %add.ptr61 to %struct.of_intc_desc*, !dbg !3452
  store %struct.of_intc_desc* %37, %struct.of_intc_desc** %tmp60, align 8, !dbg !3453
  %38 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp60, align 8, !dbg !3452
  store %struct.of_intc_desc* %38, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3449
  br label %for.cond62, !dbg !3449

for.cond62:                                       ; preds = %do.end91, %do.end59
  %39 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3455
  %list63 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %39, i32 0, i32 0, !dbg !3455
  %cmp64 = icmp eq %struct.list_head* %list63, %intc_desc_list, !dbg !3455
  %lnot66 = xor i1 %cmp64, true, !dbg !3455
  br i1 %lnot66, label %for.body68, label %for.end94, !dbg !3449

for.body68:                                       ; preds = %for.cond62
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3457, metadata !DIExpression()), !dbg !3459
  %40 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3460
  %interrupt_parent69 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %40, i32 0, i32 3, !dbg !3462
  %41 = load %struct.device_node*, %struct.device_node** %interrupt_parent69, align 8, !dbg !3462
  %42 = load %struct.device_node*, %struct.device_node** %parent, align 8, !dbg !3463
  %cmp70 = icmp ne %struct.device_node* %41, %42, !dbg !3464
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !3465

if.then72:                                        ; preds = %for.body68
  br label %for.inc86, !dbg !3466

if.end73:                                         ; preds = %for.body68
  %43 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3467
  %list74 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %43, i32 0, i32 0, !dbg !3468
  call void @list_del(%struct.list_head* %list74) #9, !dbg !3469
  %44 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3470
  %dev75 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %44, i32 0, i32 2, !dbg !3471
  %45 = load %struct.device_node*, %struct.device_node** %dev75, align 8, !dbg !3471
  call void @of_node_set_flag(%struct.device_node* %45, i64 3) #9, !dbg !3472
  store i32 0, i32* %tmp76, align 4, !dbg !3473
  %46 = load i32, i32* %tmp76, align 4, !dbg !3476
  %47 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3477
  %irq_init_cb77 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %47, i32 0, i32 1, !dbg !3478
  %48 = load i32 (%struct.device_node*, %struct.device_node*)*, i32 (%struct.device_node*, %struct.device_node*)** %irq_init_cb77, align 8, !dbg !3478
  %49 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3479
  %dev78 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %49, i32 0, i32 2, !dbg !3480
  %50 = load %struct.device_node*, %struct.device_node** %dev78, align 8, !dbg !3480
  %51 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3481
  %interrupt_parent79 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %51, i32 0, i32 3, !dbg !3482
  %52 = load %struct.device_node*, %struct.device_node** %interrupt_parent79, align 8, !dbg !3482
  %call80 = call i32 %48(%struct.device_node* %50, %struct.device_node* %52) #9, !dbg !3477
  store i32 %call80, i32* %ret, align 4, !dbg !3483
  %53 = load i32, i32* %ret, align 4, !dbg !3484
  %tobool81 = icmp ne i32 %53, 0, !dbg !3484
  br i1 %tobool81, label %if.then82, label %if.end84, !dbg !3486

if.then82:                                        ; preds = %if.end73
  %54 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3487
  %dev83 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %54, i32 0, i32 2, !dbg !3489
  %55 = load %struct.device_node*, %struct.device_node** %dev83, align 8, !dbg !3489
  call void @of_node_clear_flag(%struct.device_node* %55, i64 3) #9, !dbg !3490
  %56 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3491
  %57 = bitcast %struct.of_intc_desc* %56 to i8*, !dbg !3491
  call void @kfree(i8* %57) #9, !dbg !3492
  br label %for.inc86, !dbg !3493

if.end84:                                         ; preds = %if.end73
  %58 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3494
  %list85 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %58, i32 0, i32 0, !dbg !3495
  call void @list_add_tail(%struct.list_head* %list85, %struct.list_head* %intc_parent_list) #9, !dbg !3496
  br label %for.inc86, !dbg !3497

for.inc86:                                        ; preds = %if.end84, %if.then82, %if.then72
  %59 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3455
  store %struct.of_intc_desc* %59, %struct.of_intc_desc** %desc, align 8, !dbg !3455
  call void @llvm.dbg.declare(metadata i8** %__mptr87, metadata !3498, metadata !DIExpression()), !dbg !3500
  %60 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3500
  %list88 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %60, i32 0, i32 0, !dbg !3500
  %next89 = getelementptr inbounds %struct.list_head, %struct.list_head* %list88, i32 0, i32 0, !dbg !3500
  %61 = load %struct.list_head*, %struct.list_head** %next89, align 8, !dbg !3500
  %62 = bitcast %struct.list_head* %61 to i8*, !dbg !3500
  store i8* %62, i8** %__mptr87, align 8, !dbg !3500
  br label %do.body90, !dbg !3500

do.body90:                                        ; preds = %for.inc86
  br label %do.end91, !dbg !3501

do.end91:                                         ; preds = %do.body90
  %63 = load i8*, i8** %__mptr87, align 8, !dbg !3500
  %add.ptr93 = getelementptr i8, i8* %63, i64 0, !dbg !3500
  %64 = bitcast i8* %add.ptr93 to %struct.of_intc_desc*, !dbg !3500
  store %struct.of_intc_desc* %64, %struct.of_intc_desc** %tmp92, align 8, !dbg !3501
  %65 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp92, align 8, !dbg !3500
  store %struct.of_intc_desc* %65, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3455
  br label %for.cond62, !dbg !3455, !llvm.loop !3503

for.end94:                                        ; preds = %for.cond62
  call void @llvm.dbg.declare(metadata %struct.list_head** %head__, metadata !3505, metadata !DIExpression()), !dbg !3507
  store %struct.list_head* %intc_parent_list, %struct.list_head** %head__, align 8, !dbg !3507
  call void @llvm.dbg.declare(metadata %struct.list_head** %pos__, metadata !3508, metadata !DIExpression()), !dbg !3507
  br label %do.body95, !dbg !3509

do.body95:                                        ; preds = %for.end94
  br label %do.end96, !dbg !3511

do.end96:                                         ; preds = %do.body95
  %66 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !3509
  %next98 = getelementptr inbounds %struct.list_head, %struct.list_head* %66, i32 0, i32 0, !dbg !3509
  %67 = load volatile %struct.list_head*, %struct.list_head** %next98, align 8, !dbg !3509
  store %struct.list_head* %67, %struct.list_head** %tmp97, align 8, !dbg !3511
  %68 = load %struct.list_head*, %struct.list_head** %tmp97, align 8, !dbg !3509
  store %struct.list_head* %68, %struct.list_head** %pos__, align 8, !dbg !3507
  %69 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !3507
  %70 = load %struct.list_head*, %struct.list_head** %head__, align 8, !dbg !3507
  %cmp100 = icmp ne %struct.list_head* %69, %70, !dbg !3507
  br i1 %cmp100, label %cond.true, label %cond.false, !dbg !3507

cond.true:                                        ; preds = %do.end96
  call void @llvm.dbg.declare(metadata i8** %__mptr102, metadata !3513, metadata !DIExpression()), !dbg !3515
  %71 = load %struct.list_head*, %struct.list_head** %pos__, align 8, !dbg !3515
  %72 = bitcast %struct.list_head* %71 to i8*, !dbg !3515
  store i8* %72, i8** %__mptr102, align 8, !dbg !3515
  br label %do.body103, !dbg !3515

do.body103:                                       ; preds = %cond.true
  br label %do.end104, !dbg !3516

do.end104:                                        ; preds = %do.body103
  %73 = load i8*, i8** %__mptr102, align 8, !dbg !3515
  %add.ptr106 = getelementptr i8, i8* %73, i64 0, !dbg !3515
  %74 = bitcast i8* %add.ptr106 to %struct.of_intc_desc*, !dbg !3515
  store %struct.of_intc_desc* %74, %struct.of_intc_desc** %tmp105, align 8, !dbg !3516
  %75 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp105, align 8, !dbg !3515
  br label %cond.end, !dbg !3507

cond.false:                                       ; preds = %do.end96
  br label %cond.end, !dbg !3507

cond.end:                                         ; preds = %cond.false, %do.end104
  %cond = phi %struct.of_intc_desc* [ %75, %do.end104 ], [ null, %cond.false ], !dbg !3507
  store %struct.of_intc_desc* %cond, %struct.of_intc_desc** %tmp99, align 8, !dbg !3507
  %76 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp99, align 8, !dbg !3507
  store %struct.of_intc_desc* %76, %struct.of_intc_desc** %desc, align 8, !dbg !3518
  %77 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3519
  %tobool107 = icmp ne %struct.of_intc_desc* %77, null, !dbg !3519
  br i1 %tobool107, label %if.end110, label %if.then108, !dbg !3521

if.then108:                                       ; preds = %cond.end
  %call109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !3522
  br label %while.end, !dbg !3524

if.end110:                                        ; preds = %cond.end
  %78 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3525
  %list111 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %78, i32 0, i32 0, !dbg !3526
  call void @list_del(%struct.list_head* %list111) #9, !dbg !3527
  %79 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3528
  %dev112 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %79, i32 0, i32 2, !dbg !3529
  %80 = load %struct.device_node*, %struct.device_node** %dev112, align 8, !dbg !3529
  store %struct.device_node* %80, %struct.device_node** %parent, align 8, !dbg !3530
  %81 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3531
  %82 = bitcast %struct.of_intc_desc* %81 to i8*, !dbg !3531
  call void @kfree(i8* %82) #9, !dbg !3532
  br label %while.cond, !dbg !3439, !llvm.loop !3533

while.end:                                        ; preds = %if.then108, %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr113, metadata !3535, metadata !DIExpression()), !dbg !3538
  %next114 = getelementptr inbounds %struct.list_head, %struct.list_head* %intc_parent_list, i32 0, i32 0, !dbg !3538
  %83 = load %struct.list_head*, %struct.list_head** %next114, align 8, !dbg !3538
  %84 = bitcast %struct.list_head* %83 to i8*, !dbg !3538
  store i8* %84, i8** %__mptr113, align 8, !dbg !3538
  br label %do.body115, !dbg !3538

do.body115:                                       ; preds = %while.end
  br label %do.end116, !dbg !3539

do.end116:                                        ; preds = %do.body115
  %85 = load i8*, i8** %__mptr113, align 8, !dbg !3538
  %add.ptr118 = getelementptr i8, i8* %85, i64 0, !dbg !3538
  %86 = bitcast i8* %add.ptr118 to %struct.of_intc_desc*, !dbg !3538
  store %struct.of_intc_desc* %86, %struct.of_intc_desc** %tmp117, align 8, !dbg !3539
  %87 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp117, align 8, !dbg !3538
  store %struct.of_intc_desc* %87, %struct.of_intc_desc** %desc, align 8, !dbg !3541
  call void @llvm.dbg.declare(metadata i8** %__mptr119, metadata !3542, metadata !DIExpression()), !dbg !3544
  %88 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3544
  %list120 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %88, i32 0, i32 0, !dbg !3544
  %next121 = getelementptr inbounds %struct.list_head, %struct.list_head* %list120, i32 0, i32 0, !dbg !3544
  %89 = load %struct.list_head*, %struct.list_head** %next121, align 8, !dbg !3544
  %90 = bitcast %struct.list_head* %89 to i8*, !dbg !3544
  store i8* %90, i8** %__mptr119, align 8, !dbg !3544
  br label %do.body122, !dbg !3544

do.body122:                                       ; preds = %do.end116
  br label %do.end123, !dbg !3545

do.end123:                                        ; preds = %do.body122
  %91 = load i8*, i8** %__mptr119, align 8, !dbg !3544
  %add.ptr125 = getelementptr i8, i8* %91, i64 0, !dbg !3544
  %92 = bitcast i8* %add.ptr125 to %struct.of_intc_desc*, !dbg !3544
  store %struct.of_intc_desc* %92, %struct.of_intc_desc** %tmp124, align 8, !dbg !3545
  %93 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp124, align 8, !dbg !3544
  store %struct.of_intc_desc* %93, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3541
  br label %for.cond126, !dbg !3541

for.cond126:                                      ; preds = %do.end139, %do.end123
  %94 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3547
  %list127 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %94, i32 0, i32 0, !dbg !3547
  %cmp128 = icmp eq %struct.list_head* %list127, %intc_parent_list, !dbg !3547
  %lnot130 = xor i1 %cmp128, true, !dbg !3547
  br i1 %lnot130, label %for.body132, label %for.end142, !dbg !3541

for.body132:                                      ; preds = %for.cond126
  %95 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3549
  %list133 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %95, i32 0, i32 0, !dbg !3551
  call void @list_del(%struct.list_head* %list133) #9, !dbg !3552
  %96 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3553
  %97 = bitcast %struct.of_intc_desc* %96 to i8*, !dbg !3553
  call void @kfree(i8* %97) #9, !dbg !3554
  br label %for.inc134, !dbg !3555

for.inc134:                                       ; preds = %for.body132
  %98 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3547
  store %struct.of_intc_desc* %98, %struct.of_intc_desc** %desc, align 8, !dbg !3547
  call void @llvm.dbg.declare(metadata i8** %__mptr135, metadata !3556, metadata !DIExpression()), !dbg !3558
  %99 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3558
  %list136 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %99, i32 0, i32 0, !dbg !3558
  %next137 = getelementptr inbounds %struct.list_head, %struct.list_head* %list136, i32 0, i32 0, !dbg !3558
  %100 = load %struct.list_head*, %struct.list_head** %next137, align 8, !dbg !3558
  %101 = bitcast %struct.list_head* %100 to i8*, !dbg !3558
  store i8* %101, i8** %__mptr135, align 8, !dbg !3558
  br label %do.body138, !dbg !3558

do.body138:                                       ; preds = %for.inc134
  br label %do.end139, !dbg !3559

do.end139:                                        ; preds = %do.body138
  %102 = load i8*, i8** %__mptr135, align 8, !dbg !3558
  %add.ptr141 = getelementptr i8, i8* %102, i64 0, !dbg !3558
  %103 = bitcast i8* %add.ptr141 to %struct.of_intc_desc*, !dbg !3558
  store %struct.of_intc_desc* %103, %struct.of_intc_desc** %tmp140, align 8, !dbg !3559
  %104 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp140, align 8, !dbg !3558
  store %struct.of_intc_desc* %104, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3547
  br label %for.cond126, !dbg !3547, !llvm.loop !3561

for.end142:                                       ; preds = %for.cond126
  br label %err, !dbg !3562

err:                                              ; preds = %for.end142, %if.then37
  call void @llvm.dbg.label(metadata !3563), !dbg !3564
  call void @llvm.dbg.declare(metadata i8** %__mptr143, metadata !3565, metadata !DIExpression()), !dbg !3568
  %next144 = getelementptr inbounds %struct.list_head, %struct.list_head* %intc_desc_list, i32 0, i32 0, !dbg !3568
  %105 = load %struct.list_head*, %struct.list_head** %next144, align 8, !dbg !3568
  %106 = bitcast %struct.list_head* %105 to i8*, !dbg !3568
  store i8* %106, i8** %__mptr143, align 8, !dbg !3568
  br label %do.body145, !dbg !3568

do.body145:                                       ; preds = %err
  br label %do.end146, !dbg !3569

do.end146:                                        ; preds = %do.body145
  %107 = load i8*, i8** %__mptr143, align 8, !dbg !3568
  %add.ptr148 = getelementptr i8, i8* %107, i64 0, !dbg !3568
  %108 = bitcast i8* %add.ptr148 to %struct.of_intc_desc*, !dbg !3568
  store %struct.of_intc_desc* %108, %struct.of_intc_desc** %tmp147, align 8, !dbg !3569
  %109 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp147, align 8, !dbg !3568
  store %struct.of_intc_desc* %109, %struct.of_intc_desc** %desc, align 8, !dbg !3571
  call void @llvm.dbg.declare(metadata i8** %__mptr149, metadata !3572, metadata !DIExpression()), !dbg !3574
  %110 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3574
  %list150 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %110, i32 0, i32 0, !dbg !3574
  %next151 = getelementptr inbounds %struct.list_head, %struct.list_head* %list150, i32 0, i32 0, !dbg !3574
  %111 = load %struct.list_head*, %struct.list_head** %next151, align 8, !dbg !3574
  %112 = bitcast %struct.list_head* %111 to i8*, !dbg !3574
  store i8* %112, i8** %__mptr149, align 8, !dbg !3574
  br label %do.body152, !dbg !3574

do.body152:                                       ; preds = %do.end146
  br label %do.end153, !dbg !3575

do.end153:                                        ; preds = %do.body152
  %113 = load i8*, i8** %__mptr149, align 8, !dbg !3574
  %add.ptr155 = getelementptr i8, i8* %113, i64 0, !dbg !3574
  %114 = bitcast i8* %add.ptr155 to %struct.of_intc_desc*, !dbg !3574
  store %struct.of_intc_desc* %114, %struct.of_intc_desc** %tmp154, align 8, !dbg !3575
  %115 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp154, align 8, !dbg !3574
  store %struct.of_intc_desc* %115, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3571
  br label %for.cond156, !dbg !3571

for.cond156:                                      ; preds = %do.end170, %do.end153
  %116 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3577
  %list157 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %116, i32 0, i32 0, !dbg !3577
  %cmp158 = icmp eq %struct.list_head* %list157, %intc_desc_list, !dbg !3577
  %lnot160 = xor i1 %cmp158, true, !dbg !3577
  br i1 %lnot160, label %for.body162, label %for.end173, !dbg !3571

for.body162:                                      ; preds = %for.cond156
  %117 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3579
  %list163 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %117, i32 0, i32 0, !dbg !3581
  call void @list_del(%struct.list_head* %list163) #9, !dbg !3582
  %118 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3583
  %dev164 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %118, i32 0, i32 2, !dbg !3584
  %119 = load %struct.device_node*, %struct.device_node** %dev164, align 8, !dbg !3584
  call void @of_node_put(%struct.device_node* %119) #9, !dbg !3585
  %120 = load %struct.of_intc_desc*, %struct.of_intc_desc** %desc, align 8, !dbg !3586
  %121 = bitcast %struct.of_intc_desc* %120 to i8*, !dbg !3586
  call void @kfree(i8* %121) #9, !dbg !3587
  br label %for.inc165, !dbg !3588

for.inc165:                                       ; preds = %for.body162
  %122 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3577
  store %struct.of_intc_desc* %122, %struct.of_intc_desc** %desc, align 8, !dbg !3577
  call void @llvm.dbg.declare(metadata i8** %__mptr166, metadata !3589, metadata !DIExpression()), !dbg !3591
  %123 = load %struct.of_intc_desc*, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3591
  %list167 = getelementptr inbounds %struct.of_intc_desc, %struct.of_intc_desc* %123, i32 0, i32 0, !dbg !3591
  %next168 = getelementptr inbounds %struct.list_head, %struct.list_head* %list167, i32 0, i32 0, !dbg !3591
  %124 = load %struct.list_head*, %struct.list_head** %next168, align 8, !dbg !3591
  %125 = bitcast %struct.list_head* %124 to i8*, !dbg !3591
  store i8* %125, i8** %__mptr166, align 8, !dbg !3591
  br label %do.body169, !dbg !3591

do.body169:                                       ; preds = %for.inc165
  br label %do.end170, !dbg !3592

do.end170:                                        ; preds = %do.body169
  %126 = load i8*, i8** %__mptr166, align 8, !dbg !3591
  %add.ptr172 = getelementptr i8, i8* %126, i64 0, !dbg !3591
  %127 = bitcast i8* %add.ptr172 to %struct.of_intc_desc*, !dbg !3591
  store %struct.of_intc_desc* %127, %struct.of_intc_desc** %tmp171, align 8, !dbg !3592
  %128 = load %struct.of_intc_desc*, %struct.of_intc_desc** %tmp171, align 8, !dbg !3591
  store %struct.of_intc_desc* %128, %struct.of_intc_desc** %temp_desc, align 8, !dbg !3577
  br label %for.cond156, !dbg !3577, !llvm.loop !3594

for.end173:                                       ; preds = %for.cond156
  ret void, !dbg !3596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3597 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3601, metadata !DIExpression()), !dbg !3602
  br label %do.body, !dbg !3603

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3604

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3606

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3604

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3608
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3608
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3608
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3608
  br label %do.end3, !dbg !3608

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3604

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3610
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3611
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3612
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3613
  ret void, !dbg !3614
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_find_matching_node_and_match(%struct.device_node*, %struct.of_device_id*, %struct.of_device_id**) #2

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3615 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3618, metadata !DIExpression()), !dbg !3622
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3628, metadata !DIExpression()), !dbg !3629
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3630, metadata !DIExpression()), !dbg !3631
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3632, metadata !DIExpression()), !dbg !3633
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3634, metadata !DIExpression()), !dbg !3638
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3640, metadata !DIExpression()), !dbg !3644
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3646, metadata !DIExpression()), !dbg !3650
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3655, metadata !DIExpression()), !dbg !3656
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3657, metadata !DIExpression()), !dbg !3658
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3659, metadata !DIExpression()), !dbg !3660
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3661, metadata !DIExpression()), !dbg !3662
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3663, metadata !DIExpression()), !dbg !3664
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3665, metadata !DIExpression()), !dbg !3666
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3667, metadata !DIExpression()), !dbg !3668
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3669, metadata !DIExpression()), !dbg !3670
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3673, metadata !DIExpression()), !dbg !3674
  %0 = load i64, i64* %size.addr, align 8, !dbg !3675
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3676
  %or = or i32 %1, 256, !dbg !3677
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3678
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !3679
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3680

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3681
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3682
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3683

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3684
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3685
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3686
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !3687
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3664
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3688
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3689
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3690
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3691
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3692
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3693
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !3694
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3694
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3694
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3694
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3694
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3695
  br label %kmalloc.exit, !dbg !3695

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3696
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3697
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3697
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3699

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3700
  br label %kmalloc_index.exit.i, !dbg !3700

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3701
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3703
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3704

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3705
  br label %kmalloc_index.exit.i, !dbg !3705

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3706
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3708
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3709

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3710
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3711
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3712

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3713
  br label %kmalloc_index.exit.i, !dbg !3713

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3714
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3716
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3717

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3718
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3719
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3720

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3721
  br label %kmalloc_index.exit.i, !dbg !3721

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3722
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3724
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3725

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3726
  br label %kmalloc_index.exit.i, !dbg !3726

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3727
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3729
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3730

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3731
  br label %kmalloc_index.exit.i, !dbg !3731

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3732
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3734
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3735

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3736
  br label %kmalloc_index.exit.i, !dbg !3736

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3737
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3739
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3740

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3741
  br label %kmalloc_index.exit.i, !dbg !3741

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3742
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3744
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3745

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3746
  br label %kmalloc_index.exit.i, !dbg !3746

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3747
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3749
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3750

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3751
  br label %kmalloc_index.exit.i, !dbg !3751

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3752
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3754
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3755

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3756
  br label %kmalloc_index.exit.i, !dbg !3756

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3757
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3759
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3760

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3761
  br label %kmalloc_index.exit.i, !dbg !3761

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3762
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3764
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3765

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3766
  br label %kmalloc_index.exit.i, !dbg !3766

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3767
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3769
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3770

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3771
  br label %kmalloc_index.exit.i, !dbg !3771

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3772
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3774
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3775

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3776
  br label %kmalloc_index.exit.i, !dbg !3776

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3777
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3779
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3780

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3781
  br label %kmalloc_index.exit.i, !dbg !3781

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3782
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3784
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3785

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3786
  br label %kmalloc_index.exit.i, !dbg !3786

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3787
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3789
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3790

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3791
  br label %kmalloc_index.exit.i, !dbg !3791

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3792
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3794
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3795

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3796
  br label %kmalloc_index.exit.i, !dbg !3796

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3797
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3799
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3800

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3801
  br label %kmalloc_index.exit.i, !dbg !3801

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3802
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3804
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3805

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3806
  br label %kmalloc_index.exit.i, !dbg !3806

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3807
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3809
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3810

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3811
  br label %kmalloc_index.exit.i, !dbg !3811

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3812
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3814
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3815

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3816
  br label %kmalloc_index.exit.i, !dbg !3816

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3817
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3819
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3820

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3821
  br label %kmalloc_index.exit.i, !dbg !3821

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3822
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3824
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3825

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3826
  br label %kmalloc_index.exit.i, !dbg !3826

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3827
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3829
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3830

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3831
  br label %kmalloc_index.exit.i, !dbg !3831

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3832
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3834
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3835

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3836
  br label %kmalloc_index.exit.i, !dbg !3836

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3837
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3839
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3840

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3841
  br label %kmalloc_index.exit.i, !dbg !3841

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3842, !srcloc !3845
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #11, !dbg !3846, !srcloc !3849
  unreachable, !dbg !3850

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3851
  store i32 %45, i32* %index.i, align 4, !dbg !3852
  %46 = load i32, i32* %index.i, align 4, !dbg !3853
  %tobool.i = icmp ne i32 %46, 0, !dbg !3853
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3855

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3856
  br label %kmalloc.exit, !dbg !3856

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3857
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3858
  %and.i.i = and i32 %48, 17, !dbg !3858
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3858
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3858
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3858
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3858
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3860

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3861
  br label %kmalloc_type.exit.i, !dbg !3861

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3862
  %and2.i.i = and i32 %49, 1, !dbg !3863
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3862
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3862
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3862
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3864
  br label %kmalloc_type.exit.i, !dbg !3864

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3865
  %idxprom.i = zext i32 %51 to i64, !dbg !3866
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3866
  %52 = load i32, i32* %index.i, align 4, !dbg !3867
  %idxprom6.i = zext i32 %52 to i64, !dbg !3866
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3866
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3866
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3868
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3869
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3870
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3871
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3872
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3872
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3872
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3872
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3872
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3633
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3873
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3874
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3875
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3876
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3877
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3878
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3879
  store i8* %62, i8** %retval.i, align 8, !dbg !3880
  br label %kmalloc.exit, !dbg !3880

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3881
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3882
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3883
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3883
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3883
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3883
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3883
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3884
  br label %kmalloc.exit, !dbg !3884

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3885
  ret i8* %65, !dbg !3886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3887 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3890, metadata !DIExpression()), !dbg !3891
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3892, metadata !DIExpression()), !dbg !3893
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3894
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3895
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3896
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3896
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3897
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !3898
  ret void, !dbg !3899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !3900 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3905, metadata !DIExpression()), !dbg !3906
  br label %do.body, !dbg !3907

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3909

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3907
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !3907
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3907
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !3909
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !3907
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3911
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !3912
  %conv = zext i1 %cmp to i32, !dbg !3912
  ret i32 %conv, !dbg !3913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3914 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3915, metadata !DIExpression()), !dbg !3916
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3917
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !3918
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3919
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3920
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3921
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3922
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3923
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3924
  ret void, !dbg !3925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_set_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !3926 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  %0 = load i64, i64* %flag.addr, align 8, !dbg !3933
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !3934
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !3935
  call void @set_bit(i64 %0, i64* %_flags) #9, !dbg !3936
  ret void, !dbg !3937
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_clear_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !3938 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !3939, metadata !DIExpression()), !dbg !3940
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !3941, metadata !DIExpression()), !dbg !3942
  %0 = load i64, i64* %flag.addr, align 8, !dbg !3943
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !3944
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !3945
  call void @clear_bit(i64 %0, i64* %_flags) #9, !dbg !3946
  ret void, !dbg !3947
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_msi_map_id(%struct.device* %dev, %struct.device_node* %msi_np, i32 %id_in) #0 !dbg !3948 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %msi_np.addr = alloca %struct.device_node*, align 8
  %id_in.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3951, metadata !DIExpression()), !dbg !3952
  store %struct.device_node* %msi_np, %struct.device_node** %msi_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %msi_np.addr, metadata !3953, metadata !DIExpression()), !dbg !3954
  store i32 %id_in, i32* %id_in.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id_in.addr, metadata !3955, metadata !DIExpression()), !dbg !3956
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3957
  %1 = load i32, i32* %id_in.addr, align 4, !dbg !3958
  %call = call i32 @__of_msi_map_id(%struct.device* %0, %struct.device_node** %msi_np.addr, i32 %1) #9, !dbg !3959
  ret i32 %call, !dbg !3960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__of_msi_map_id(%struct.device* %dev, %struct.device_node** %np, i32 %id_in) #0 !dbg !3961 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node**, align 8
  %id_in.addr = alloca i32, align 4
  %parent_dev = alloca %struct.device*, align 8
  %id_out = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  store %struct.device_node** %np, %struct.device_node*** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node*** %np.addr, metadata !3967, metadata !DIExpression()), !dbg !3968
  store i32 %id_in, i32* %id_in.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id_in.addr, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata %struct.device** %parent_dev, metadata !3971, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.declare(metadata i32* %id_out, metadata !3973, metadata !DIExpression()), !dbg !3974
  %0 = load i32, i32* %id_in.addr, align 4, !dbg !3975
  store i32 %0, i32* %id_out, align 4, !dbg !3974
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3976
  store %struct.device* %1, %struct.device** %parent_dev, align 8, !dbg !3978
  br label %for.cond, !dbg !3979

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.device*, %struct.device** %parent_dev, align 8, !dbg !3980
  %tobool = icmp ne %struct.device* %2, null, !dbg !3982
  br i1 %tobool, label %for.body, label %for.end, !dbg !3982

for.body:                                         ; preds = %for.cond
  %3 = load %struct.device*, %struct.device** %parent_dev, align 8, !dbg !3983
  %of_node = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !3985
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3985
  %5 = load i32, i32* %id_in.addr, align 4, !dbg !3986
  %6 = load %struct.device_node**, %struct.device_node*** %np.addr, align 8, !dbg !3987
  %call = call i32 @of_map_id(%struct.device_node* %4, i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), %struct.device_node** %6, i32* %id_out) #9, !dbg !3988
  %tobool1 = icmp ne i32 %call, 0, !dbg !3988
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3989

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !3990

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3991

for.inc:                                          ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %parent_dev, align 8, !dbg !3992
  %parent = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1, !dbg !3993
  %8 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3993
  store %struct.device* %8, %struct.device** %parent_dev, align 8, !dbg !3994
  br label %for.cond, !dbg !3995, !llvm.loop !3996

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %id_out, align 4, !dbg !3998
  ret i32 %9, !dbg !3999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.irq_domain* @of_msi_map_get_device_domain(%struct.device* %dev, i32 %id, i32 %bus_token) #0 !dbg !4000 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i32, align 4
  %bus_token.addr = alloca i32, align 4
  %np = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4003, metadata !DIExpression()), !dbg !4004
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4005, metadata !DIExpression()), !dbg !4006
  store i32 %bus_token, i32* %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_token.addr, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4009, metadata !DIExpression()), !dbg !4010
  store %struct.device_node* null, %struct.device_node** %np, align 8, !dbg !4010
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4011
  %1 = load i32, i32* %id.addr, align 4, !dbg !4012
  %call = call i32 @__of_msi_map_id(%struct.device* %0, %struct.device_node** %np, i32 %1) #9, !dbg !4013
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4014
  %3 = load i32, i32* %bus_token.addr, align 4, !dbg !4015
  %call1 = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %2, i32 %3) #9, !dbg !4016
  ret %struct.irq_domain* %call1, !dbg !4017
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %node, i32 %bus_token) #0 !dbg !4018 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  %bus_token.addr = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4021, metadata !DIExpression()), !dbg !4022
  store i32 %bus_token, i32* %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_token.addr, metadata !4023, metadata !DIExpression()), !dbg !4024
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4025
  %call = call %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* %0) #9, !dbg !4026
  %1 = load i32, i32* %bus_token.addr, align 4, !dbg !4027
  %call1 = call %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* %call, i32 %1) #9, !dbg !4028
  ret %struct.irq_domain* %call1, !dbg !4029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.irq_domain* @of_msi_get_domain(%struct.device* %dev, %struct.device_node* %np, i32 %token) #0 !dbg !4030 {
entry:
  %retval = alloca %struct.irq_domain*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %token.addr = alloca i32, align 4
  %msi_np = alloca %struct.device_node*, align 8
  %d = alloca %struct.irq_domain*, align 8
  %args = alloca %struct.of_phandle_args, align 8
  %index = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i32 %token, i32* %token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %token.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata %struct.device_node** %msi_np, metadata !4039, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d, metadata !4041, metadata !DIExpression()), !dbg !4042
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4043
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 0) #9, !dbg !4044
  store %struct.device_node* %call, %struct.device_node** %msi_np, align 8, !dbg !4045
  %1 = load %struct.device_node*, %struct.device_node** %msi_np, align 8, !dbg !4046
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4046
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !4048

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %msi_np, align 8, !dbg !4049
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !4050
  br i1 %call1, label %if.end5, label %if.then, !dbg !4051

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.device_node*, %struct.device_node** %msi_np, align 8, !dbg !4052
  %4 = load i32, i32* %token.addr, align 4, !dbg !4054
  %call2 = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %3, i32 %4) #9, !dbg !4055
  store %struct.irq_domain* %call2, %struct.irq_domain** %d, align 8, !dbg !4056
  %5 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4057
  %tobool3 = icmp ne %struct.irq_domain* %5, null, !dbg !4057
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !4059

if.then4:                                         ; preds = %if.then
  %6 = load %struct.device_node*, %struct.device_node** %msi_np, align 8, !dbg !4060
  call void @of_node_put(%struct.device_node* %6) #9, !dbg !4061
  br label %if.end, !dbg !4061

if.end:                                           ; preds = %if.then4, %if.then
  %7 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4062
  store %struct.irq_domain* %7, %struct.irq_domain** %retval, align 8, !dbg !4063
  br label %return, !dbg !4063

if.end5:                                          ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %token.addr, align 4, !dbg !4064
  %cmp = icmp eq i32 %8, 4, !dbg !4066
  br i1 %cmp, label %if.then6, label %if.end15, !dbg !4067

if.then6:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata %struct.of_phandle_args* %args, metadata !4068, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.declare(metadata i32* %index, metadata !4071, metadata !DIExpression()), !dbg !4072
  store i32 0, i32* %index, align 4, !dbg !4072
  br label %while.cond, !dbg !4073

while.cond:                                       ; preds = %if.end13, %if.then6
  %9 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4074
  %10 = load i32, i32* %index, align 4, !dbg !4075
  %call7 = call i32 @of_parse_phandle_with_args(%struct.device_node* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %10, %struct.of_phandle_args* %args) #9, !dbg !4076
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4077
  %lnot = xor i1 %tobool8, true, !dbg !4077
  br i1 %lnot, label %while.body, label %while.end, !dbg !4073

while.body:                                       ; preds = %while.cond
  %np9 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 0, !dbg !4078
  %11 = load %struct.device_node*, %struct.device_node** %np9, align 8, !dbg !4078
  %12 = load i32, i32* %token.addr, align 4, !dbg !4080
  %call10 = call %struct.irq_domain* @irq_find_matching_host(%struct.device_node* %11, i32 %12) #9, !dbg !4081
  store %struct.irq_domain* %call10, %struct.irq_domain** %d, align 8, !dbg !4082
  %13 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4083
  %tobool11 = icmp ne %struct.irq_domain* %13, null, !dbg !4083
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4085

if.then12:                                        ; preds = %while.body
  %14 = load %struct.irq_domain*, %struct.irq_domain** %d, align 8, !dbg !4086
  store %struct.irq_domain* %14, %struct.irq_domain** %retval, align 8, !dbg !4087
  br label %return, !dbg !4087

if.end13:                                         ; preds = %while.body
  %np14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %args, i32 0, i32 0, !dbg !4088
  %15 = load %struct.device_node*, %struct.device_node** %np14, align 8, !dbg !4088
  call void @of_node_put(%struct.device_node* %15) #9, !dbg !4089
  %16 = load i32, i32* %index, align 4, !dbg !4090
  %inc = add i32 %16, 1, !dbg !4090
  store i32 %inc, i32* %index, align 4, !dbg !4090
  br label %while.cond, !dbg !4073, !llvm.loop !4091

while.end:                                        ; preds = %while.cond
  br label %if.end15, !dbg !4093

if.end15:                                         ; preds = %while.end, %if.end5
  store %struct.irq_domain* null, %struct.irq_domain** %retval, align 8, !dbg !4094
  br label %return, !dbg !4094

return:                                           ; preds = %if.end15, %if.then12, %if.end
  %17 = load %struct.irq_domain*, %struct.irq_domain** %retval, align 8, !dbg !4095
  ret %struct.irq_domain* %17, !dbg !4095
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @of_msi_configure(%struct.device* %dev, %struct.device_node* %np) #0 !dbg !4096 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4099, metadata !DIExpression()), !dbg !4100
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4101, metadata !DIExpression()), !dbg !4102
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4103
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4104
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4105
  %call = call %struct.irq_domain* @of_msi_get_domain(%struct.device* %1, %struct.device_node* %2, i32 4) #9, !dbg !4106
  call void @dev_set_msi_domain(%struct.device* %0, %struct.irq_domain* %call) #9, !dbg !4107
  ret void, !dbg !4108
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_msi_domain(%struct.device* %dev, %struct.irq_domain* %d) #0 !dbg !4109 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %d.addr = alloca %struct.irq_domain*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4112, metadata !DIExpression()), !dbg !4113
  store %struct.irq_domain* %d, %struct.irq_domain** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.irq_domain** %d.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  %0 = load %struct.irq_domain*, %struct.irq_domain** %d.addr, align 8, !dbg !4116
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4117
  %msi_domain = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 13, !dbg !4118
  store %struct.irq_domain* %0, %struct.irq_domain** %msi_domain, align 8, !dbg !4119
  ret void, !dbg !4120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !4121 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4124, metadata !DIExpression()), !dbg !4125
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4126, metadata !DIExpression()), !dbg !4127
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !4130, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4132, metadata !DIExpression()), !dbg !4133
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4134
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4135
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !4136
  %3 = load i64, i64* %sz.addr, align 8, !dbg !4137
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #9, !dbg !4138
  store i32 %call, i32* %ret, align 4, !dbg !4133
  %4 = load i32, i32* %ret, align 4, !dbg !4139
  %cmp = icmp sge i32 %4, 0, !dbg !4141
  br i1 %cmp, label %if.then, label %if.else, !dbg !4142

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4143
  br label %return, !dbg !4143

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4144
  store i32 %5, i32* %retval, align 4, !dbg !4145
  br label %return, !dbg !4145

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4146
  ret i32 %6, !dbg !4146
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #5 !dbg !4147 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4149, metadata !DIExpression()), !dbg !4150
  %0 = load i32, i32* %val.addr, align 4, !dbg !4151
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !4152, !srcloc !4153
  store i32 %1, i32* %val.addr, align 4, !dbg !4152
  %2 = load i32, i32* %val.addr, align 4, !dbg !4154
  ret i32 %2, !dbg !4155
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string_helper(%struct.device_node*, i8*, i8**, i64, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !4156 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4160, metadata !DIExpression()), !dbg !4165
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4167, metadata !DIExpression()), !dbg !4168
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4169, metadata !DIExpression()), !dbg !4170
  %0 = load i64, i64* %size.addr, align 8, !dbg !4171
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4173
  br i1 %1, label %if.then, label %if.end447, !dbg !4174

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4175
  %tobool = icmp ne i64 %2, 0, !dbg !4175
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4178

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4179
  br label %return, !dbg !4179

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4180
  %cmp = icmp ult i64 %3, 4096, !dbg !4182
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4183

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4184
  br label %return, !dbg !4184

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub = sub i64 %4, 1, !dbg !4185
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4185
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4185

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub4 = sub i64 %6, 1, !dbg !4185
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4185
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4185

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub6 = sub i64 %8, 1, !dbg !4185
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4185
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4185

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4185

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub9 = sub i64 %9, 1, !dbg !4185
  %and = and i64 %sub9, -9223372036854775808, !dbg !4185
  %tobool10 = icmp ne i64 %and, 0, !dbg !4185
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4185

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4185

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub13 = sub i64 %10, 1, !dbg !4185
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4185
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4185
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4185

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4185

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub18 = sub i64 %11, 1, !dbg !4185
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4185
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4185
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4185

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4185

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub23 = sub i64 %12, 1, !dbg !4185
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4185
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4185
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4185

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4185

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub28 = sub i64 %13, 1, !dbg !4185
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4185
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4185
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4185

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4185

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub33 = sub i64 %14, 1, !dbg !4185
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4185
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4185
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4185

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4185

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub38 = sub i64 %15, 1, !dbg !4185
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4185
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4185
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4185

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4185

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub43 = sub i64 %16, 1, !dbg !4185
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4185
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4185
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4185

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4185

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub48 = sub i64 %17, 1, !dbg !4185
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4185
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4185
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4185

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4185

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub53 = sub i64 %18, 1, !dbg !4185
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4185
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4185
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4185

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4185

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub58 = sub i64 %19, 1, !dbg !4185
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4185
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4185
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4185

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4185

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub63 = sub i64 %20, 1, !dbg !4185
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4185
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4185
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4185

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4185

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub68 = sub i64 %21, 1, !dbg !4185
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4185
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4185
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4185

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4185

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub73 = sub i64 %22, 1, !dbg !4185
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4185
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4185
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4185

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4185

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub78 = sub i64 %23, 1, !dbg !4185
  %and79 = and i64 %sub78, 562949953421312, !dbg !4185
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4185
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4185

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4185

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub83 = sub i64 %24, 1, !dbg !4185
  %and84 = and i64 %sub83, 281474976710656, !dbg !4185
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4185
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4185

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4185

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub88 = sub i64 %25, 1, !dbg !4185
  %and89 = and i64 %sub88, 140737488355328, !dbg !4185
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4185
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4185

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4185

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub93 = sub i64 %26, 1, !dbg !4185
  %and94 = and i64 %sub93, 70368744177664, !dbg !4185
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4185
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4185

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4185

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub98 = sub i64 %27, 1, !dbg !4185
  %and99 = and i64 %sub98, 35184372088832, !dbg !4185
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4185
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4185

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4185

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub103 = sub i64 %28, 1, !dbg !4185
  %and104 = and i64 %sub103, 17592186044416, !dbg !4185
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4185
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4185

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4185

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub108 = sub i64 %29, 1, !dbg !4185
  %and109 = and i64 %sub108, 8796093022208, !dbg !4185
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4185
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4185

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4185

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub113 = sub i64 %30, 1, !dbg !4185
  %and114 = and i64 %sub113, 4398046511104, !dbg !4185
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4185
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4185

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4185

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub118 = sub i64 %31, 1, !dbg !4185
  %and119 = and i64 %sub118, 2199023255552, !dbg !4185
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4185
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4185

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4185

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub123 = sub i64 %32, 1, !dbg !4185
  %and124 = and i64 %sub123, 1099511627776, !dbg !4185
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4185
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4185

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4185

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub128 = sub i64 %33, 1, !dbg !4185
  %and129 = and i64 %sub128, 549755813888, !dbg !4185
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4185
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4185

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4185

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub133 = sub i64 %34, 1, !dbg !4185
  %and134 = and i64 %sub133, 274877906944, !dbg !4185
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4185
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4185

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4185

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub138 = sub i64 %35, 1, !dbg !4185
  %and139 = and i64 %sub138, 137438953472, !dbg !4185
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4185
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4185

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4185

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub143 = sub i64 %36, 1, !dbg !4185
  %and144 = and i64 %sub143, 68719476736, !dbg !4185
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4185
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4185

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4185

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub148 = sub i64 %37, 1, !dbg !4185
  %and149 = and i64 %sub148, 34359738368, !dbg !4185
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4185
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4185

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4185

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub153 = sub i64 %38, 1, !dbg !4185
  %and154 = and i64 %sub153, 17179869184, !dbg !4185
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4185
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4185

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4185

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub158 = sub i64 %39, 1, !dbg !4185
  %and159 = and i64 %sub158, 8589934592, !dbg !4185
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4185
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4185

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4185

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub163 = sub i64 %40, 1, !dbg !4185
  %and164 = and i64 %sub163, 4294967296, !dbg !4185
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4185
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4185

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4185

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub168 = sub i64 %41, 1, !dbg !4185
  %and169 = and i64 %sub168, 2147483648, !dbg !4185
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4185
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4185

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4185

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub173 = sub i64 %42, 1, !dbg !4185
  %and174 = and i64 %sub173, 1073741824, !dbg !4185
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4185
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4185

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4185

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub178 = sub i64 %43, 1, !dbg !4185
  %and179 = and i64 %sub178, 536870912, !dbg !4185
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4185
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4185

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4185

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub183 = sub i64 %44, 1, !dbg !4185
  %and184 = and i64 %sub183, 268435456, !dbg !4185
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4185
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4185

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4185

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub188 = sub i64 %45, 1, !dbg !4185
  %and189 = and i64 %sub188, 134217728, !dbg !4185
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4185
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4185

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4185

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub193 = sub i64 %46, 1, !dbg !4185
  %and194 = and i64 %sub193, 67108864, !dbg !4185
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4185
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4185

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4185

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub198 = sub i64 %47, 1, !dbg !4185
  %and199 = and i64 %sub198, 33554432, !dbg !4185
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4185
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4185

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4185

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub203 = sub i64 %48, 1, !dbg !4185
  %and204 = and i64 %sub203, 16777216, !dbg !4185
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4185
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4185

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4185

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub208 = sub i64 %49, 1, !dbg !4185
  %and209 = and i64 %sub208, 8388608, !dbg !4185
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4185
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4185

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4185

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub213 = sub i64 %50, 1, !dbg !4185
  %and214 = and i64 %sub213, 4194304, !dbg !4185
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4185
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4185

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4185

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub218 = sub i64 %51, 1, !dbg !4185
  %and219 = and i64 %sub218, 2097152, !dbg !4185
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4185
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4185

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4185

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub223 = sub i64 %52, 1, !dbg !4185
  %and224 = and i64 %sub223, 1048576, !dbg !4185
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4185
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4185

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4185

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub228 = sub i64 %53, 1, !dbg !4185
  %and229 = and i64 %sub228, 524288, !dbg !4185
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4185
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4185

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4185

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub233 = sub i64 %54, 1, !dbg !4185
  %and234 = and i64 %sub233, 262144, !dbg !4185
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4185
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4185

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4185

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub238 = sub i64 %55, 1, !dbg !4185
  %and239 = and i64 %sub238, 131072, !dbg !4185
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4185
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4185

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4185

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub243 = sub i64 %56, 1, !dbg !4185
  %and244 = and i64 %sub243, 65536, !dbg !4185
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4185
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4185

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4185

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub248 = sub i64 %57, 1, !dbg !4185
  %and249 = and i64 %sub248, 32768, !dbg !4185
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4185
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4185

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4185

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub253 = sub i64 %58, 1, !dbg !4185
  %and254 = and i64 %sub253, 16384, !dbg !4185
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4185
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4185

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4185

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub258 = sub i64 %59, 1, !dbg !4185
  %and259 = and i64 %sub258, 8192, !dbg !4185
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4185
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4185

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4185

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub263 = sub i64 %60, 1, !dbg !4185
  %and264 = and i64 %sub263, 4096, !dbg !4185
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4185
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4185

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4185

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub268 = sub i64 %61, 1, !dbg !4185
  %and269 = and i64 %sub268, 2048, !dbg !4185
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4185
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4185

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4185

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub273 = sub i64 %62, 1, !dbg !4185
  %and274 = and i64 %sub273, 1024, !dbg !4185
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4185
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4185

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4185

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub278 = sub i64 %63, 1, !dbg !4185
  %and279 = and i64 %sub278, 512, !dbg !4185
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4185
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4185

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4185

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub283 = sub i64 %64, 1, !dbg !4185
  %and284 = and i64 %sub283, 256, !dbg !4185
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4185
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4185

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4185

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub288 = sub i64 %65, 1, !dbg !4185
  %and289 = and i64 %sub288, 128, !dbg !4185
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4185
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4185

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4185

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub293 = sub i64 %66, 1, !dbg !4185
  %and294 = and i64 %sub293, 64, !dbg !4185
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4185
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4185

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4185

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub298 = sub i64 %67, 1, !dbg !4185
  %and299 = and i64 %sub298, 32, !dbg !4185
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4185
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4185

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4185

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub303 = sub i64 %68, 1, !dbg !4185
  %and304 = and i64 %sub303, 16, !dbg !4185
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4185
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4185

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4185

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub308 = sub i64 %69, 1, !dbg !4185
  %and309 = and i64 %sub308, 8, !dbg !4185
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4185
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4185

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4185

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub313 = sub i64 %70, 1, !dbg !4185
  %and314 = and i64 %sub313, 4, !dbg !4185
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4185
  %71 = zext i1 %tobool315 to i64, !dbg !4185
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4185
  br label %cond.end, !dbg !4185

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4185
  br label %cond.end317, !dbg !4185

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4185
  br label %cond.end319, !dbg !4185

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4185
  br label %cond.end321, !dbg !4185

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4185
  br label %cond.end323, !dbg !4185

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4185
  br label %cond.end325, !dbg !4185

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4185
  br label %cond.end327, !dbg !4185

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4185
  br label %cond.end329, !dbg !4185

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4185
  br label %cond.end331, !dbg !4185

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4185
  br label %cond.end333, !dbg !4185

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4185
  br label %cond.end335, !dbg !4185

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4185
  br label %cond.end337, !dbg !4185

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4185
  br label %cond.end339, !dbg !4185

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4185
  br label %cond.end341, !dbg !4185

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4185
  br label %cond.end343, !dbg !4185

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4185
  br label %cond.end345, !dbg !4185

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4185
  br label %cond.end347, !dbg !4185

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4185
  br label %cond.end349, !dbg !4185

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4185
  br label %cond.end351, !dbg !4185

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4185
  br label %cond.end353, !dbg !4185

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4185
  br label %cond.end355, !dbg !4185

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4185
  br label %cond.end357, !dbg !4185

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4185
  br label %cond.end359, !dbg !4185

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4185
  br label %cond.end361, !dbg !4185

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4185
  br label %cond.end363, !dbg !4185

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4185
  br label %cond.end365, !dbg !4185

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4185
  br label %cond.end367, !dbg !4185

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4185
  br label %cond.end369, !dbg !4185

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4185
  br label %cond.end371, !dbg !4185

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4185
  br label %cond.end373, !dbg !4185

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4185
  br label %cond.end375, !dbg !4185

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4185
  br label %cond.end377, !dbg !4185

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4185
  br label %cond.end379, !dbg !4185

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4185
  br label %cond.end381, !dbg !4185

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4185
  br label %cond.end383, !dbg !4185

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4185
  br label %cond.end385, !dbg !4185

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4185
  br label %cond.end387, !dbg !4185

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4185
  br label %cond.end389, !dbg !4185

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4185
  br label %cond.end391, !dbg !4185

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4185
  br label %cond.end393, !dbg !4185

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4185
  br label %cond.end395, !dbg !4185

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4185
  br label %cond.end397, !dbg !4185

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4185
  br label %cond.end399, !dbg !4185

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4185
  br label %cond.end401, !dbg !4185

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4185
  br label %cond.end403, !dbg !4185

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4185
  br label %cond.end405, !dbg !4185

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4185
  br label %cond.end407, !dbg !4185

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4185
  br label %cond.end409, !dbg !4185

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4185
  br label %cond.end411, !dbg !4185

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4185
  br label %cond.end413, !dbg !4185

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4185
  br label %cond.end415, !dbg !4185

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4185
  br label %cond.end417, !dbg !4185

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4185
  br label %cond.end419, !dbg !4185

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4185
  br label %cond.end421, !dbg !4185

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4185
  br label %cond.end423, !dbg !4185

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4185
  br label %cond.end425, !dbg !4185

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4185
  br label %cond.end427, !dbg !4185

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4185
  br label %cond.end429, !dbg !4185

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4185
  br label %cond.end431, !dbg !4185

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4185
  br label %cond.end433, !dbg !4185

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4185
  br label %cond.end435, !dbg !4185

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4185
  br label %cond.end437, !dbg !4185

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4185
  br label %cond.end440, !dbg !4185

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4185

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4185
  br label %cond.end444, !dbg !4185

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4185
  %sub443 = sub i64 %72, 1, !dbg !4185
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4185
  br label %cond.end444, !dbg !4185

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4185
  %sub446 = sub i32 %cond445, 12, !dbg !4186
  %add = add i32 %sub446, 1, !dbg !4187
  store i32 %add, i32* %retval, align 4, !dbg !4188
  br label %return, !dbg !4188

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4189
  %dec = add i64 %73, -1, !dbg !4189
  store i64 %dec, i64* %size.addr, align 8, !dbg !4189
  %74 = load i64, i64* %size.addr, align 8, !dbg !4190
  %shr = lshr i64 %74, 12, !dbg !4190
  store i64 %shr, i64* %size.addr, align 8, !dbg !4190
  %75 = load i64, i64* %size.addr, align 8, !dbg !4191
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4168
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4192
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4193
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #15, !dbg !4192, !srcloc !4194
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4192
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4195
  %add.i = add i32 %79, 1, !dbg !4196
  store i32 %add.i, i32* %retval, align 4, !dbg !4197
  br label %return, !dbg !4197

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4198
  ret i32 %80, !dbg !4198
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !4199 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4160, metadata !DIExpression()), !dbg !4203
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4167, metadata !DIExpression()), !dbg !4205
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  %0 = load i64, i64* %n.addr, align 8, !dbg !4208
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4205
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4209
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4210
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #15, !dbg !4209, !srcloc !4194
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4209
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4211
  %add.i = add i32 %4, 1, !dbg !4212
  %sub = sub i32 %add.i, 1, !dbg !4213
  ret i32 %sub, !dbg !4214
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4215 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4227
  ret i8* %0, !dbg !4228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4229 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4234, metadata !DIExpression()), !dbg !4235
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4236, metadata !DIExpression()), !dbg !4237
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4238
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4240
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4241
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !4242
  br i1 %call, label %if.end, label %if.then, !dbg !4243

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4244

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4245
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4246
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4247
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4248
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4249
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4250
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4251
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4252
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4253
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4254
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4255
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4256
  br label %do.body, !dbg !4257

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4258

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4260

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4258

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4262
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4262
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4262
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4262
  br label %do.end7, !dbg !4262

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4258

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4265 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4268, metadata !DIExpression()), !dbg !4269
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4270, metadata !DIExpression()), !dbg !4271
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4272, metadata !DIExpression()), !dbg !4273
  ret i1 true, !dbg !4274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4275 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4276, metadata !DIExpression()), !dbg !4277
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4278
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !4280
  br i1 %call, label %if.end, label %if.then, !dbg !4281

if.then:                                          ; preds = %entry
  br label %return, !dbg !4282

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4283
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4284
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4284
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4285
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4286
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4286
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !4287
  br label %return, !dbg !4288

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4289 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4292, metadata !DIExpression()), !dbg !4293
  ret i1 true, !dbg !4294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4295 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4300
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4301
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4302
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4303
  br label %do.body, !dbg !4304

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4305

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4307

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4305

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4309
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4309
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4309
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4309
  br label %do.end5, !dbg !4309

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4305

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4312 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4318, metadata !DIExpression()), !dbg !4320
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4322, metadata !DIExpression()), !dbg !4323
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4324, metadata !DIExpression()), !dbg !4332
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4334, metadata !DIExpression()), !dbg !4335
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4340
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4341
  %div = sdiv i64 %1, 64, !dbg !4341
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4342
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4340
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4343
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4344
  %conv.i = trunc i64 %4 to i32, !dbg !4344
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !4345
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4346
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4346
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !4346
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4347
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4348
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4349
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #11, !dbg !4351
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4352

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4353
  %12 = bitcast i64* %11 to i8*, !dbg !4353
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4353
  %shr.i = ashr i64 %13, 3, !dbg !4353
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4353
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4355
  %and.i = and i64 %14, 7, !dbg !4355
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4355
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4355
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #11, !dbg !4356, !srcloc !4357
  br label %arch_set_bit.exit, !dbg !4358

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4359
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4361
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #11, !dbg !4362, !srcloc !4363
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4365 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4369, metadata !DIExpression()), !dbg !4370
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4371, metadata !DIExpression()), !dbg !4372
  ret i1 true, !dbg !4373
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4374 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4378, metadata !DIExpression()), !dbg !4379
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4380, metadata !DIExpression()), !dbg !4381
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  ret void, !dbg !4384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4385 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4386, metadata !DIExpression()), !dbg !4388
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4390, metadata !DIExpression()), !dbg !4391
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4324, metadata !DIExpression()), !dbg !4392
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4334, metadata !DIExpression()), !dbg !4394
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4397, metadata !DIExpression()), !dbg !4398
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4399
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4400
  %div = sdiv i64 %1, 64, !dbg !4400
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4401
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4399
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4402
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4403
  %conv.i = trunc i64 %4 to i32, !dbg !4403
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !4404
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4405
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4405
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #13, !dbg !4405
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4406
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4407
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4408
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #11, !dbg !4410
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4411

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4412
  %12 = bitcast i64* %11 to i8*, !dbg !4412
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4412
  %shr.i = ashr i64 %13, 3, !dbg !4412
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4412
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4414
  %and.i = and i64 %14, 7, !dbg !4414
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4414
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4414
  %neg.i = xor i32 %shl.i, -1, !dbg !4415
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #11, !dbg !4416, !srcloc !4417
  br label %arch_clear_bit.exit, !dbg !4418

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4419
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4421
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #11, !dbg !4422, !srcloc !4423
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4424
}

; Function Attrs: noredzone
declare dso_local i32 @of_map_id(%struct.device_node*, i32, i8*, i8*, %struct.device_node**, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.irq_domain* @irq_find_matching_fwnode(%struct.fwnode_handle* %fwnode, i32 %bus_token) #0 !dbg !4425 {
entry:
  %fwnode.addr = alloca %struct.fwnode_handle*, align 8
  %bus_token.addr = alloca i32, align 4
  %fwspec = alloca %struct.irq_fwspec, align 8
  store %struct.fwnode_handle* %fwnode, %struct.fwnode_handle** %fwnode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %fwnode.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  store i32 %bus_token, i32* %bus_token.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bus_token.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.declare(metadata %struct.irq_fwspec* %fwspec, metadata !4432, metadata !DIExpression()), !dbg !4433
  %0 = bitcast %struct.irq_fwspec* %fwspec to i8*, !dbg !4433
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 80, i1 false), !dbg !4433
  %fwnode1 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %fwspec, i32 0, i32 0, !dbg !4434
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode.addr, align 8, !dbg !4435
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %fwnode1, align 8, !dbg !4434
  %2 = load i32, i32* %bus_token.addr, align 4, !dbg !4436
  %call = call %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec* %fwspec, i32 %2) #9, !dbg !4437
  ret %struct.irq_domain* %call, !dbg !4438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @of_node_to_fwnode(%struct.device_node* %node) #0 !dbg !4439 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4442, metadata !DIExpression()), !dbg !4443
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4444
  %tobool = icmp ne %struct.device_node* %0, null, !dbg !4444
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4444

cond.true:                                        ; preds = %entry
  %1 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4445
  %fwnode = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 3, !dbg !4446
  br label %cond.end, !dbg !4444

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4444

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.fwnode_handle* [ %fwnode, %cond.true ], [ null, %cond.false ], !dbg !4444
  ret %struct.fwnode_handle* %cond, !dbg !4447
}

; Function Attrs: noredzone
declare dso_local %struct.irq_domain* @irq_find_matching_fwspec(%struct.irq_fwspec*, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2401, !2402, !2403, !2404}
!llvm.ident = !{!2405}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !108, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/of/irq.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !62, !70, !75, !101}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !10, line: 16, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !16, line: 26, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !19, !20}
!18 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !22, line: 44, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !28, line: 343, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !35, line: 524, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40, !41}
!37 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !35, line: 502, baseType: !5, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !49, line: 76, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!51 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!55 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!57 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!58 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !63, line: 1084, baseType: !5, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68, !69}
!65 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!68 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!69 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 10, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 223, baseType: !5, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!77 = !DIEnumerator(name: "IRQD_TRIGGER_MASK", value: 15, isUnsigned: true)
!78 = !DIEnumerator(name: "IRQD_SETAFFINITY_PENDING", value: 256, isUnsigned: true)
!79 = !DIEnumerator(name: "IRQD_ACTIVATED", value: 512, isUnsigned: true)
!80 = !DIEnumerator(name: "IRQD_NO_BALANCING", value: 1024, isUnsigned: true)
!81 = !DIEnumerator(name: "IRQD_PER_CPU", value: 2048, isUnsigned: true)
!82 = !DIEnumerator(name: "IRQD_AFFINITY_SET", value: 4096, isUnsigned: true)
!83 = !DIEnumerator(name: "IRQD_LEVEL", value: 8192, isUnsigned: true)
!84 = !DIEnumerator(name: "IRQD_WAKEUP_STATE", value: 16384, isUnsigned: true)
!85 = !DIEnumerator(name: "IRQD_MOVE_PCNTXT", value: 32768, isUnsigned: true)
!86 = !DIEnumerator(name: "IRQD_IRQ_DISABLED", value: 65536, isUnsigned: true)
!87 = !DIEnumerator(name: "IRQD_IRQ_MASKED", value: 131072, isUnsigned: true)
!88 = !DIEnumerator(name: "IRQD_IRQ_INPROGRESS", value: 262144, isUnsigned: true)
!89 = !DIEnumerator(name: "IRQD_WAKEUP_ARMED", value: 524288, isUnsigned: true)
!90 = !DIEnumerator(name: "IRQD_FORWARDED_TO_VCPU", value: 1048576, isUnsigned: true)
!91 = !DIEnumerator(name: "IRQD_AFFINITY_MANAGED", value: 2097152, isUnsigned: true)
!92 = !DIEnumerator(name: "IRQD_IRQ_STARTED", value: 4194304, isUnsigned: true)
!93 = !DIEnumerator(name: "IRQD_MANAGED_SHUTDOWN", value: 8388608, isUnsigned: true)
!94 = !DIEnumerator(name: "IRQD_SINGLE_TARGET", value: 16777216, isUnsigned: true)
!95 = !DIEnumerator(name: "IRQD_DEFAULT_TRIGGER_SET", value: 33554432, isUnsigned: true)
!96 = !DIEnumerator(name: "IRQD_CAN_RESERVE", value: 67108864, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQD_MSI_NOMASK_QUIRK", value: 134217728, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQD_HANDLE_ENFORCE_IRQCTX", value: 268435456, isUnsigned: true)
!99 = !DIEnumerator(name: "IRQD_AFFINITY_ON_ACTIVATE", value: 536870912, isUnsigned: true)
!100 = !DIEnumerator(name: "IRQD_IRQ_ENABLED_ON_SUSPEND", value: 1073741824, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !102, line: 305, baseType: !5, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!108 = !{!109, !110, !112, !114, !116, !2393, !2396, !2397, !2398, !2400}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !5)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !113, line: 32, baseType: !110)
!113 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !115, line: 148, baseType: !5)
!115 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_intc_desc", file: !1, line: 465, size: 320, elements: !118)
!118 = !{!119, !125, !2391, !2392}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !117, file: !1, line: 466, baseType: !120, size: 128)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !115, line: 178, size: 128, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !115, line: 179, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !120, file: !115, line: 179, baseType: !123, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "irq_init_cb", scope: !117, file: !1, line: 467, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "of_irq_init_cb_t", file: !127, line: 12, baseType: !128)
!127 = !DIFile(filename: "./include/linux/of_irq.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !132, !132}
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !134, line: 51, size: 1344, elements: !135)
!134 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !140, !144, !145, !2375, !2384, !2385, !2386, !2387, !2388, !2389, !2390}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 52, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !133, file: !134, line: 53, baseType: !141, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !134, line: 28, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 21, baseType: !110)
!143 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !133, file: !134, line: 54, baseType: !137, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !133, file: !134, line: 55, baseType: !146, size: 192, offset: 192)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !147, line: 17, size: 192, elements: !148)
!147 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !151, !2374}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !146, file: !147, line: 18, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !146, file: !147, line: 19, baseType: !152, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !147, line: 110, size: 1152, elements: !155)
!155 = !{!156, !160, !164, !172, !2316, !2320, !2324, !2329, !2333, !2334, !2338, !2342, !2346, !2357, !2358, !2359, !2360, !2370}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !154, file: !147, line: 111, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!150, !150}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !154, file: !147, line: 112, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !150}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !154, file: !147, line: 113, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !115, line: 30, baseType: !169)
!169 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !154, file: !147, line: 114, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !170, !178}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !181)
!181 = !{!182, !1670, !1672, !1675, !1676, !1727, !1824, !1825, !1826, !1827, !1828, !1837, !1942, !1955, !2241, !2242, !2246, !2248, !2249, !2250, !2254, !2260, !2261, !2264, !2265, !2266, !2269, !2270, !2271, !2272, !2304, !2305, !2306, !2309, !2312, !2313, !2314, !2315}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !180, file: !28, line: 462, baseType: !183, size: 512)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !184, line: 64, size: 512, elements: !185)
!184 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !190, !250, !1508, !1660, !1665, !1666, !1667, !1668, !1669}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !184, line: 65, baseType: !137, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !183, file: !184, line: 66, baseType: !120, size: 128, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !184, line: 67, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !183, file: !184, line: 68, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !184, line: 192, size: 704, elements: !193)
!193 = !{!194, !195, !211, !212}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !192, file: !184, line: 193, baseType: !120, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !192, file: !184, line: 194, baseType: !196, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !197, line: 83, baseType: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !197, line: 71, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !197, line: 72, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !197, line: 72, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !201, file: !197, line: 73, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !197, line: 20, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !204, file: !197, line: 21, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !208, line: 25, baseType: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 25, elements: !210)
!210 = !{}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !192, file: !184, line: 195, baseType: !183, size: 512, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !192, file: !184, line: 196, baseType: !213, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !184, line: 156, size: 192, elements: !216)
!216 = !{!217, !222, !227}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !215, file: !184, line: 157, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!131, !191, !189}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !184, line: 158, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!137, !191, !189}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !215, file: !184, line: 159, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!131, !191, !189, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !184, line: 148, size: 20736, elements: !234)
!234 = !{!235, !240, !244, !245, !249}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !233, file: !184, line: 149, baseType: !236, size: 192)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 192, elements: !238)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!238 = !{!239}
!239 = !DISubrange(count: 3)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !233, file: !184, line: 150, baseType: !241, size: 4096, offset: 192)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 4096, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !233, file: !184, line: 151, baseType: !131, size: 32, offset: 4288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !233, file: !184, line: 152, baseType: !246, size: 16384, offset: 4320)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16384, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 2048)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !233, file: !184, line: 153, baseType: !131, size: 32, offset: 20704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !183, file: !184, line: 69, baseType: !251, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !184, line: 138, size: 448, elements: !253)
!253 = !{!254, !258, !288, !290, !1456, !1487, !1491}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !252, file: !184, line: 139, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !189}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !252, file: !184, line: 140, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !262, line: 230, size: 128, elements: !263)
!262 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!263 = !{!264, !280}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !261, file: !262, line: 231, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !189, !273, !237}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 60, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !270, line: 73, baseType: !271)
!270 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !270, line: 15, baseType: !272)
!272 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !262, line: 30, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !262, line: 31, baseType: !137, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !274, file: !262, line: 32, baseType: !278, size: 16, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !115, line: 19, baseType: !279)
!279 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !261, file: !262, line: 232, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!268, !189, !273, !137, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 55, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !270, line: 72, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !270, line: 16, baseType: !287)
!287 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !252, file: !184, line: 141, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !252, file: !184, line: 142, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !262, line: 84, size: 320, elements: !295)
!295 = !{!296, !297, !301, !1453, !1454}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !262, line: 85, baseType: !137, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !294, file: !262, line: 86, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!278, !189, !273, !131}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !294, file: !262, line: 88, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!278, !189, !305, !131}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !262, line: 168, size: 448, elements: !307)
!307 = !{!308, !309, !310, !311, !321, !322}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !306, file: !262, line: 169, baseType: !274, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !262, line: 170, baseType: !284, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !306, file: !262, line: 171, baseType: !109, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !306, file: !262, line: 172, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!268, !315, !189, !305, !237, !318, !284}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !317, line: 526, flags: DIFlagFwdDecl)
!317 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !115, line: 46, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !270, line: 88, baseType: !320)
!320 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !306, file: !262, line: 174, baseType: !312, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !306, file: !262, line: 176, baseType: !323, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!131, !315, !189, !305, !326}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !328, line: 305, size: 1472, elements: !329)
!328 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!329 = !{!330, !331, !332, !333, !334, !342, !343, !1427, !1433, !1434, !1439, !1440, !1443, !1447, !1448, !1449, !1450, !1451}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !327, file: !328, line: 308, baseType: !287, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !327, file: !328, line: 309, baseType: !287, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !327, file: !328, line: 313, baseType: !326, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !327, file: !328, line: 313, baseType: !326, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !327, file: !328, line: 315, baseType: !335, size: 192, align: 64, offset: 256)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !336, line: 24, size: 192, align: 64, elements: !337)
!336 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!337 = !{!338, !339, !341}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !335, file: !336, line: 25, baseType: !287, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !335, file: !336, line: 26, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !335, file: !336, line: 27, baseType: !340, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !327, file: !328, line: 323, baseType: !287, size: 64, offset: 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !327, file: !328, line: 327, baseType: !344, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !328, line: 388, size: 7296, elements: !346)
!346 = !{!347, !1423}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !328, line: 389, baseType: !348, size: 7296)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !328, line: 389, size: 7296, elements: !349)
!349 = !{!350, !351, !355, !359, !363, !364, !365, !366, !367, !375, !380, !381, !382, !383, !392, !393, !394, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !429, !437, !440, !488, !489, !1393, !1394, !1397, !1401, !1402, !1405, !1406, !1407, !1410, !1422}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !348, file: !328, line: 390, baseType: !326, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !348, file: !328, line: 391, baseType: !352, size: 64, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !336, line: 31, size: 64, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !352, file: !336, line: 32, baseType: !340, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !348, file: !328, line: 392, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 23, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !358)
!358 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !348, file: !328, line: 394, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!287, !315, !287, !287, !287, !287}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !348, file: !328, line: 398, baseType: !287, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !348, file: !328, line: 399, baseType: !287, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !348, file: !328, line: 405, baseType: !287, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !348, file: !328, line: 406, baseType: !287, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !348, file: !328, line: 407, baseType: !368, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !317, line: 286, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 286, size: 64, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !370, file: !317, line: 286, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !374, line: 18, baseType: !287)
!374 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !348, file: !328, line: 416, baseType: !376, size: 32, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !115, line: 168, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 166, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !377, file: !115, line: 167, baseType: !131, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !348, file: !328, line: 428, baseType: !376, size: 32, offset: 608)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !348, file: !328, line: 437, baseType: !376, size: 32, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !348, file: !328, line: 447, baseType: !376, size: 32, offset: 672)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !348, file: !328, line: 450, baseType: !384, size: 64, offset: 704)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !385, line: 13, baseType: !386)
!385 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !115, line: 175, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 173, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !387, file: !115, line: 174, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 22, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !348, file: !328, line: 452, baseType: !131, size: 32, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !348, file: !328, line: 454, baseType: !196, offset: 800)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !348, file: !328, line: 457, baseType: !395, size: 256, offset: 832)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !396, line: 35, size: 256, elements: !397)
!396 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!397 = !{!398, !399, !400, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !395, file: !396, line: 36, baseType: !384, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !395, file: !396, line: 42, baseType: !384, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !395, file: !396, line: 46, baseType: !401, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !197, line: 29, baseType: !204)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !395, file: !396, line: 47, baseType: !120, size: 128, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !348, file: !328, line: 459, baseType: !120, size: 128, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !348, file: !328, line: 466, baseType: !287, size: 64, offset: 1216)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !348, file: !328, line: 467, baseType: !287, size: 64, offset: 1280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !348, file: !328, line: 469, baseType: !287, size: 64, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !348, file: !328, line: 470, baseType: !287, size: 64, offset: 1408)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !348, file: !328, line: 471, baseType: !386, size: 64, offset: 1472)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !348, file: !328, line: 472, baseType: !287, size: 64, offset: 1536)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !348, file: !328, line: 473, baseType: !287, size: 64, offset: 1600)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !348, file: !328, line: 474, baseType: !287, size: 64, offset: 1664)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !348, file: !328, line: 475, baseType: !287, size: 64, offset: 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !348, file: !328, line: 477, baseType: !196, offset: 1792)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !348, file: !328, line: 478, baseType: !287, size: 64, offset: 1792)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !348, file: !328, line: 478, baseType: !287, size: 64, offset: 1856)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !348, file: !328, line: 478, baseType: !287, size: 64, offset: 1920)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !348, file: !328, line: 478, baseType: !287, size: 64, offset: 1984)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !348, file: !328, line: 479, baseType: !287, size: 64, offset: 2048)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !348, file: !328, line: 479, baseType: !287, size: 64, offset: 2112)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !348, file: !328, line: 479, baseType: !287, size: 64, offset: 2176)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !348, file: !328, line: 480, baseType: !287, size: 64, offset: 2240)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !348, file: !328, line: 480, baseType: !287, size: 64, offset: 2304)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !348, file: !328, line: 480, baseType: !287, size: 64, offset: 2368)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !348, file: !328, line: 480, baseType: !287, size: 64, offset: 2432)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !348, file: !328, line: 482, baseType: !426, size: 2816, offset: 2496)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 2816, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 44)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !348, file: !328, line: 488, baseType: !430, size: 256, offset: 5312)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !431, line: 60, size: 256, elements: !432)
!431 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !430, file: !431, line: 61, baseType: !434, size: 256)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 256, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 4)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !348, file: !328, line: 490, baseType: !438, size: 64, offset: 5568)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !328, line: 490, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !348, file: !328, line: 493, baseType: !441, size: 896, offset: 5632)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !442, line: 53, baseType: !443)
!442 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 13, size: 896, elements: !444)
!444 = !{!445, !446, !447, !448, !451, !452, !459, !460, !480, !481, !484}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !443, file: !442, line: 18, baseType: !356, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !443, file: !442, line: 28, baseType: !386, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !443, file: !442, line: 31, baseType: !395, size: 256, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !443, file: !442, line: 32, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !442, line: 32, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !443, file: !442, line: 37, baseType: !279, size: 16, offset: 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !443, file: !442, line: 40, baseType: !453, size: 192, offset: 512)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !454, line: 53, size: 192, elements: !455)
!454 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!455 = !{!456, !457, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !453, file: !454, line: 54, baseType: !384, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !453, file: !454, line: 55, baseType: !196, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !453, file: !454, line: 59, baseType: !120, size: 128, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !443, file: !442, line: 41, baseType: !109, size: 64, offset: 704)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !443, file: !442, line: 42, baseType: !461, size: 64, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !464, line: 13, size: 896, elements: !465)
!464 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !463, file: !464, line: 14, baseType: !109, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !463, file: !464, line: 15, baseType: !287, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !463, file: !464, line: 17, baseType: !287, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !463, file: !464, line: 17, baseType: !287, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !463, file: !464, line: 19, baseType: !272, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !463, file: !464, line: 21, baseType: !272, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !463, file: !464, line: 22, baseType: !272, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !463, file: !464, line: 23, baseType: !272, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !463, file: !464, line: 24, baseType: !272, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !463, file: !464, line: 25, baseType: !272, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !463, file: !464, line: 26, baseType: !272, size: 64, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !463, file: !464, line: 27, baseType: !272, size: 64, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !463, file: !464, line: 28, baseType: !272, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !463, file: !464, line: 29, baseType: !272, size: 64, offset: 832)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !443, file: !442, line: 44, baseType: !376, size: 32, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !443, file: !442, line: 50, baseType: !482, size: 16, offset: 864)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !279)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !443, file: !442, line: 51, baseType: !485, size: 16, offset: 880)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !487)
!487 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !328, line: 495, baseType: !287, size: 64, offset: 6528)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !348, file: !328, line: 497, baseType: !490, size: 64, offset: 6592)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !328, line: 381, size: 384, elements: !492)
!492 = !{!493, !494, !1392}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !491, file: !328, line: 382, baseType: !376, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !491, file: !328, line: 383, baseType: !495, size: 128, offset: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !328, line: 376, size: 128, elements: !496)
!496 = !{!497, !1390}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !495, file: !328, line: 377, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !500, line: 640, size: 48640, elements: !501)
!500 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !508, !510, !511, !517, !518, !519, !520, !521, !522, !523, !524, !528, !546, !557, !652, !653, !654, !665, !666, !668, !669, !670, !671, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !750, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !806, !808, !809, !810, !822, !824, !825, !826, !827, !828, !834, !835, !836, !837, !838, !839, !840, !852, !857, !861, !862, !863, !866, !870, !873, !876, !879, !882, !885, !888, !891, !897, !898, !899, !905, !906, !907, !908, !909, !918, !919, !920, !921, !922, !927, !928, !929, !932, !933, !936, !939, !942, !945, !948, !951, !952, !1032, !1035, !1038, !1039, !1042, !1043, !1044, !1050, !1051, !1052, !1065, !1066, !1067, !1077, !1082, !1085, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !499, file: !500, line: 646, baseType: !503, size: 128)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !504, line: 56, size: 128, elements: !505)
!504 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !504, line: 57, baseType: !287, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !503, file: !504, line: 58, baseType: !142, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !499, file: !500, line: 649, baseType: !509, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !272)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !499, file: !500, line: 657, baseType: !109, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !499, file: !500, line: 658, baseType: !512, size: 32, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !513, line: 113, baseType: !514)
!513 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !513, line: 111, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !514, file: !513, line: 112, baseType: !376, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !500, line: 660, baseType: !5, size: 32, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !499, file: !500, line: 661, baseType: !5, size: 32, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !499, file: !500, line: 684, baseType: !131, size: 32, offset: 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !499, file: !500, line: 686, baseType: !131, size: 32, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !499, file: !500, line: 687, baseType: !131, size: 32, offset: 416)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !499, file: !500, line: 688, baseType: !131, size: 32, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !499, file: !500, line: 689, baseType: !5, size: 32, offset: 480)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !499, file: !500, line: 691, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !500, line: 691, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !499, file: !500, line: 692, baseType: !529, size: 832, offset: 576)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !500, line: 451, size: 832, elements: !530)
!530 = !{!531, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !529, file: !500, line: 453, baseType: !532, size: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !500, line: 325, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !532, file: !500, line: 326, baseType: !287, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !532, file: !500, line: 327, baseType: !142, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !529, file: !500, line: 454, baseType: !335, size: 192, align: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !529, file: !500, line: 455, baseType: !120, size: 128, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !529, file: !500, line: 456, baseType: !5, size: 32, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !529, file: !500, line: 458, baseType: !356, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !529, file: !500, line: 459, baseType: !356, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !529, file: !500, line: 460, baseType: !356, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !529, file: !500, line: 461, baseType: !356, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !529, file: !500, line: 463, baseType: !356, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !529, file: !500, line: 465, baseType: !545, offset: 832)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !500, line: 415, elements: !210)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !499, file: !500, line: 693, baseType: !547, size: 384, offset: 1408)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !500, line: 489, size: 384, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !547, file: !500, line: 490, baseType: !120, size: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !547, file: !500, line: 491, baseType: !287, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !547, file: !500, line: 492, baseType: !287, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !547, file: !500, line: 493, baseType: !5, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !547, file: !500, line: 494, baseType: !279, size: 16, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !547, file: !500, line: 495, baseType: !279, size: 16, offset: 304)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !547, file: !500, line: 497, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !499, file: !500, line: 697, baseType: !558, size: 1792, offset: 1792)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !500, line: 507, size: 1792, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !649, !650}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !558, file: !500, line: 508, baseType: !335, size: 192, align: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !558, file: !500, line: 515, baseType: !356, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !558, file: !500, line: 516, baseType: !356, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !558, file: !500, line: 517, baseType: !356, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !558, file: !500, line: 518, baseType: !356, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !558, file: !500, line: 519, baseType: !356, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !558, file: !500, line: 526, baseType: !390, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !558, file: !500, line: 527, baseType: !356, size: 64, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !500, line: 528, baseType: !5, size: 32, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !558, file: !500, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !558, file: !500, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !558, file: !500, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !558, file: !500, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !558, file: !500, line: 563, baseType: !574, size: 512, offset: 704)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !575)
!575 = !{!576, !584, !585, !590, !642, !646, !647, !648}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !574, file: !4, line: 119, baseType: !577, size: 256)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !578, line: 9, size: 256, elements: !579)
!578 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !577, file: !578, line: 10, baseType: !335, size: 192, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !577, file: !578, line: 11, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !583, line: 29, baseType: !390)
!583 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !574, file: !4, line: 120, baseType: !582, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !574, file: !4, line: 121, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!3, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !574, file: !4, line: 122, baseType: !591, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !593)
!593 = !{!594, !614, !615, !618, !628, !629, !637, !641}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !592, file: !4, line: 160, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !4, line: 215, baseType: !401)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !596, file: !4, line: 216, baseType: !5, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !596, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !596, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !596, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !596, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !596, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !596, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !596, file: !4, line: 233, baseType: !582, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !596, file: !4, line: 234, baseType: !589, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !596, file: !4, line: 235, baseType: !582, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !596, file: !4, line: 236, baseType: !589, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !596, file: !4, line: 237, baseType: !611, size: 4096, offset: 512)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 4096, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 8)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !592, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !592, file: !4, line: 162, baseType: !616, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !115, line: 27, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !270, line: 96, baseType: !131)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !592, file: !4, line: 163, baseType: !619, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !620, line: 276, baseType: !621)
!620 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !620, line: 276, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !621, file: !620, line: 276, baseType: !624, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !620, line: 70, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !620, line: 65, size: 32, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !625, file: !620, line: 66, baseType: !5, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !592, file: !4, line: 164, baseType: !589, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !592, file: !4, line: 165, baseType: !630, size: 128, offset: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !578, line: 14, size: 128, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !630, file: !578, line: 15, baseType: !633, size: 128)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !336, line: 125, size: 128, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !633, file: !336, line: 126, baseType: !352, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !633, file: !336, line: 127, baseType: !340, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !592, file: !4, line: 166, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!582}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !592, file: !4, line: 167, baseType: !582, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !574, file: !4, line: 123, baseType: !643, size: 8, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 17, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !645)
!645 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !574, file: !4, line: 124, baseType: !643, size: 8, offset: 456)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !574, file: !4, line: 125, baseType: !643, size: 8, offset: 464)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !574, file: !4, line: 126, baseType: !643, size: 8, offset: 472)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !558, file: !500, line: 572, baseType: !574, size: 512, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !558, file: !500, line: 580, baseType: !651, size: 64, offset: 1728)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !499, file: !500, line: 721, baseType: !5, size: 32, offset: 3584)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !499, file: !500, line: 722, baseType: !131, size: 32, offset: 3616)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !499, file: !500, line: 723, baseType: !655, size: 64, offset: 3648)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !658, line: 17, baseType: !659)
!658 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !658, line: 17, size: 64, elements: !660)
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !659, file: !658, line: 17, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 1)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !499, file: !500, line: 724, baseType: !657, size: 64, offset: 3712)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !499, file: !500, line: 749, baseType: !667, offset: 3776)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !500, line: 290, elements: !210)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !499, file: !500, line: 751, baseType: !120, size: 128, offset: 3776)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !499, file: !500, line: 757, baseType: !344, size: 64, offset: 3904)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !499, file: !500, line: 758, baseType: !344, size: 64, offset: 3968)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !499, file: !500, line: 761, baseType: !672, size: 320, offset: 4032)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !431, line: 34, size: 320, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !672, file: !431, line: 35, baseType: !356, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !672, file: !431, line: 36, baseType: !676, size: 256, offset: 64)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !435)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !499, file: !500, line: 766, baseType: !131, size: 32, offset: 4352)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !499, file: !500, line: 767, baseType: !131, size: 32, offset: 4384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !499, file: !500, line: 768, baseType: !131, size: 32, offset: 4416)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !499, file: !500, line: 770, baseType: !131, size: 32, offset: 4448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !499, file: !500, line: 772, baseType: !287, size: 64, offset: 4480)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !499, file: !500, line: 775, baseType: !5, size: 32, offset: 4544)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !499, file: !500, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !499, file: !500, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !499, file: !500, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !499, file: !500, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !499, file: !500, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !499, file: !500, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !499, file: !500, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !499, file: !500, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !499, file: !500, line: 831, baseType: !287, size: 64, offset: 4672)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !499, file: !500, line: 833, baseType: !693, size: 384, offset: 4736)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !694)
!694 = !{!695, !700}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !693, file: !10, line: 26, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!272, !699}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !10, line: 27, baseType: !701, size: 320, offset: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !693, file: !10, line: 27, size: 320, elements: !702)
!702 = !{!703, !713, !740}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !701, file: !10, line: 36, baseType: !704, size: 320)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !10, line: 29, size: 320, elements: !705)
!705 = !{!706, !708, !709, !710, !711, !712}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !704, file: !10, line: 30, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !704, file: !10, line: 31, baseType: !142, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !10, line: 32, baseType: !142, size: 32, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !704, file: !10, line: 33, baseType: !142, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !704, file: !10, line: 34, baseType: !356, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !704, file: !10, line: 35, baseType: !707, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !701, file: !10, line: 46, baseType: !714, size: 192)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !10, line: 38, size: 192, elements: !715)
!715 = !{!716, !717, !718, !739}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !714, file: !10, line: 39, baseType: !616, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !714, file: !10, line: 41, baseType: !719, size: 64, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !10, line: 41, size: 64, elements: !720)
!720 = !{!721, !729}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !719, file: !10, line: 42, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !724, line: 7, size: 128, elements: !725)
!724 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !728}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !723, file: !724, line: 8, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !270, line: 93, baseType: !320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !723, file: !724, line: 9, baseType: !320, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !719, file: !10, line: 43, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !732, line: 7, size: 64, elements: !733)
!732 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !731, file: !732, line: 8, baseType: !735, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !732, line: 5, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 20, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !131)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !731, file: !732, line: 9, baseType: !736, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !714, file: !10, line: 45, baseType: !356, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !701, file: !10, line: 54, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !10, line: 48, size: 256, elements: !742)
!742 = !{!743, !746, !747, !748, !749}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !741, file: !10, line: 49, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !741, file: !10, line: 50, baseType: !131, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !741, file: !10, line: 51, baseType: !131, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !741, file: !10, line: 52, baseType: !287, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !741, file: !10, line: 53, baseType: !287, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !499, file: !500, line: 835, baseType: !751, size: 32, offset: 5120)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !115, line: 22, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !270, line: 28, baseType: !131)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !499, file: !500, line: 836, baseType: !751, size: 32, offset: 5152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !499, file: !500, line: 840, baseType: !287, size: 64, offset: 5184)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !499, file: !500, line: 849, baseType: !498, size: 64, offset: 5248)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !499, file: !500, line: 852, baseType: !498, size: 64, offset: 5312)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !499, file: !500, line: 857, baseType: !120, size: 128, offset: 5376)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !499, file: !500, line: 858, baseType: !120, size: 128, offset: 5504)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !499, file: !500, line: 859, baseType: !498, size: 64, offset: 5632)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !499, file: !500, line: 867, baseType: !120, size: 128, offset: 5696)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !499, file: !500, line: 868, baseType: !120, size: 128, offset: 5824)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !499, file: !500, line: 871, baseType: !763, size: 64, offset: 5952)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !765, line: 59, size: 768, elements: !766)
!765 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !769, !770, !781, !782, !789, !798}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 61, baseType: !512, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !764, file: !765, line: 62, baseType: !5, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !764, file: !765, line: 63, baseType: !196, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !764, file: !765, line: 65, baseType: !771, size: 256, offset: 64)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 256, elements: !435)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !115, line: 182, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !772, file: !115, line: 183, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !115, line: 186, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !115, line: 187, baseType: !775, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !776, file: !115, line: 187, baseType: !780, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !764, file: !765, line: 66, baseType: !772, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !764, file: !765, line: 68, baseType: !783, size: 128, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !784, line: 40, baseType: !785)
!784 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !784, line: 36, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !785, file: !784, line: 37, baseType: !196)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !785, file: !784, line: 38, baseType: !120, size: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !764, file: !765, line: 69, baseType: !790, size: 128, align: 64, offset: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !115, line: 216, size: 128, align: 64, elements: !791)
!791 = !{!792, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !790, file: !115, line: 217, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !790, file: !115, line: 218, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !793}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !764, file: !765, line: 70, baseType: !799, size: 128, offset: 640)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 128, elements: !663)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !765, line: 54, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !800, file: !765, line: 55, baseType: !131, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !800, file: !765, line: 56, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !765, line: 56, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !499, file: !500, line: 872, baseType: !807, size: 512, offset: 6016)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 512, elements: !435)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !499, file: !500, line: 873, baseType: !120, size: 128, offset: 6528)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !499, file: !500, line: 874, baseType: !120, size: 128, offset: 6656)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !499, file: !500, line: 876, baseType: !811, size: 64, offset: 6784)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !813, line: 26, size: 192, elements: !814)
!813 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !812, file: !813, line: 27, baseType: !5, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !812, file: !813, line: 28, baseType: !817, size: 128, offset: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !818, line: 43, size: 128, elements: !819)
!818 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !818, line: 44, baseType: !401)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !817, file: !818, line: 45, baseType: !120, size: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !499, file: !500, line: 879, baseType: !823, size: 64, offset: 6848)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !499, file: !500, line: 882, baseType: !823, size: 64, offset: 6912)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !499, file: !500, line: 884, baseType: !356, size: 64, offset: 6976)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !499, file: !500, line: 885, baseType: !356, size: 64, offset: 7040)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !499, file: !500, line: 890, baseType: !356, size: 64, offset: 7104)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !499, file: !500, line: 891, baseType: !829, size: 128, offset: 7168)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !500, line: 242, size: 128, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !829, file: !500, line: 244, baseType: !356, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !829, file: !500, line: 245, baseType: !356, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !829, file: !500, line: 246, baseType: !401, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !499, file: !500, line: 900, baseType: !287, size: 64, offset: 7296)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !499, file: !500, line: 901, baseType: !287, size: 64, offset: 7360)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !499, file: !500, line: 904, baseType: !356, size: 64, offset: 7424)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !499, file: !500, line: 907, baseType: !356, size: 64, offset: 7488)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !499, file: !500, line: 910, baseType: !287, size: 64, offset: 7552)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !499, file: !500, line: 911, baseType: !287, size: 64, offset: 7616)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !499, file: !500, line: 914, baseType: !841, size: 640, offset: 7680)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !842, line: 123, size: 640, elements: !843)
!842 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844, !850, !851}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !841, file: !842, line: 124, baseType: !845, size: 576)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 576, elements: !238)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !842, line: 108, size: 192, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !846, file: !842, line: 109, baseType: !356, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !846, file: !842, line: 110, baseType: !630, size: 128, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !841, file: !842, line: 125, baseType: !5, size: 32, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !841, file: !842, line: 126, baseType: !5, size: 32, offset: 608)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !499, file: !500, line: 917, baseType: !853, size: 192, offset: 8320)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !842, line: 134, size: 192, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !853, file: !842, line: 135, baseType: !790, size: 128, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !853, file: !842, line: 136, baseType: !5, size: 32, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !499, file: !500, line: 923, baseType: !858, size: 64, offset: 8512)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !500, line: 923, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !499, file: !500, line: 926, baseType: !858, size: 64, offset: 8576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !499, file: !500, line: 929, baseType: !858, size: 64, offset: 8640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !499, file: !500, line: 933, baseType: !864, size: 64, offset: 8704)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !500, line: 933, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !499, file: !500, line: 943, baseType: !867, size: 128, offset: 8768)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 16)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !499, file: !500, line: 945, baseType: !871, size: 64, offset: 8896)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !500, line: 49, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !499, file: !500, line: 956, baseType: !874, size: 64, offset: 8960)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !500, line: 45, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !499, file: !500, line: 959, baseType: !877, size: 64, offset: 9024)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !500, line: 959, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !499, file: !500, line: 962, baseType: !880, size: 64, offset: 9088)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !500, line: 66, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !499, file: !500, line: 966, baseType: !883, size: 64, offset: 9152)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !500, line: 50, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !499, file: !500, line: 969, baseType: !886, size: 64, offset: 9216)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !842, line: 223, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !499, file: !500, line: 970, baseType: !889, size: 64, offset: 9280)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !500, line: 62, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !499, file: !500, line: 971, baseType: !892, size: 64, offset: 9344)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !893, line: 25, baseType: !894)
!893 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !893, line: 23, size: 64, elements: !895)
!895 = !{!896}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !894, file: !893, line: 24, baseType: !662, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !499, file: !500, line: 972, baseType: !892, size: 64, offset: 9408)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !499, file: !500, line: 974, baseType: !892, size: 64, offset: 9472)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !499, file: !500, line: 975, baseType: !900, size: 192, offset: 9536)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !901, line: 30, size: 192, elements: !902)
!901 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !900, file: !901, line: 31, baseType: !120, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !900, file: !901, line: 32, baseType: !892, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !499, file: !500, line: 976, baseType: !287, size: 64, offset: 9728)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !499, file: !500, line: 977, baseType: !284, size: 64, offset: 9792)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !499, file: !500, line: 978, baseType: !5, size: 32, offset: 9856)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !499, file: !500, line: 980, baseType: !793, size: 64, offset: 9920)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !499, file: !500, line: 989, baseType: !910, size: 128, offset: 9984)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !911, line: 35, size: 128, elements: !912)
!911 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !910, file: !911, line: 36, baseType: !131, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !910, file: !911, line: 37, baseType: !376, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !910, file: !911, line: 38, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !911, line: 23, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !499, file: !500, line: 992, baseType: !356, size: 64, offset: 10112)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !499, file: !500, line: 993, baseType: !356, size: 64, offset: 10176)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !499, file: !500, line: 996, baseType: !196, offset: 10240)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !499, file: !500, line: 999, baseType: !401, offset: 10240)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !499, file: !500, line: 1001, baseType: !923, size: 64, offset: 10240)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !500, line: 636, size: 64, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !500, line: 637, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !499, file: !500, line: 1005, baseType: !633, size: 128, offset: 10304)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !499, file: !500, line: 1007, baseType: !498, size: 64, offset: 10432)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !499, file: !500, line: 1009, baseType: !930, size: 64, offset: 10496)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !500, line: 1009, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !499, file: !500, line: 1043, baseType: !109, size: 64, offset: 10560)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !499, file: !500, line: 1046, baseType: !934, size: 64, offset: 10624)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !500, line: 41, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !499, file: !500, line: 1050, baseType: !937, size: 64, offset: 10688)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !500, line: 42, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !499, file: !500, line: 1054, baseType: !940, size: 64, offset: 10752)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !500, line: 55, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !499, file: !500, line: 1056, baseType: !943, size: 64, offset: 10816)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !500, line: 40, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !499, file: !500, line: 1058, baseType: !946, size: 64, offset: 10880)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !500, line: 47, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !499, file: !500, line: 1061, baseType: !949, size: 64, offset: 10944)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !500, line: 43, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !499, file: !500, line: 1064, baseType: !287, size: 64, offset: 11008)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !499, file: !500, line: 1065, baseType: !953, size: 64, offset: 11072)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !901, line: 14, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !901, line: 12, size: 384, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !955, file: !901, line: 13, baseType: !958, size: 384)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !901, line: 13, size: 384, elements: !959)
!959 = !{!960, !961, !962, !963}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !958, file: !901, line: 13, baseType: !131, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !958, file: !901, line: 13, baseType: !131, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !958, file: !901, line: 13, baseType: !131, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !958, file: !901, line: 13, baseType: !964, size: 256, offset: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !965, line: 32, size: 256, elements: !966)
!965 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!966 = !{!967, !973, !986, !992, !1001, !1021, !1026}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !964, file: !965, line: 37, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 34, size: 64, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !968, file: !965, line: 35, baseType: !752, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !968, file: !965, line: 36, baseType: !972, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !270, line: 49, baseType: !5)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !964, file: !965, line: 45, baseType: !974, size: 192)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 40, size: 192, elements: !975)
!975 = !{!976, !978, !979, !985}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !974, file: !965, line: 41, baseType: !977, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !270, line: 95, baseType: !131)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !974, file: !965, line: 42, baseType: !131, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !974, file: !965, line: 43, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !965, line: 11, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !965, line: 8, size: 64, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !981, file: !965, line: 9, baseType: !131, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !981, file: !965, line: 10, baseType: !109, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !974, file: !965, line: 44, baseType: !131, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !964, file: !965, line: 52, baseType: !987, size: 128)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 48, size: 128, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !987, file: !965, line: 49, baseType: !752, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !987, file: !965, line: 50, baseType: !972, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !987, file: !965, line: 51, baseType: !980, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !964, file: !965, line: 61, baseType: !993, size: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 55, size: 256, elements: !994)
!994 = !{!995, !996, !997, !998, !1000}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !993, file: !965, line: 56, baseType: !752, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !993, file: !965, line: 57, baseType: !972, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !993, file: !965, line: 58, baseType: !131, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !993, file: !965, line: 59, baseType: !999, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !270, line: 94, baseType: !271)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !993, file: !965, line: 60, baseType: !999, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !964, file: !965, line: 95, baseType: !1002, size: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 64, size: 256, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1002, file: !965, line: 65, baseType: !109, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !965, line: 77, baseType: !1006, size: 192, offset: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1002, file: !965, line: 77, size: 192, elements: !1007)
!1007 = !{!1008, !1009, !1016}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1006, file: !965, line: 82, baseType: !487, size: 16)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1006, file: !965, line: 88, baseType: !1010, size: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1006, file: !965, line: 84, size: 192, elements: !1011)
!1011 = !{!1012, !1014, !1015}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1010, file: !965, line: 85, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !612)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1010, file: !965, line: 86, baseType: !109, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1010, file: !965, line: 87, baseType: !109, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1006, file: !965, line: 93, baseType: !1017, size: 96)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1006, file: !965, line: 90, size: 96, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1017, file: !965, line: 91, baseType: !1013, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1017, file: !965, line: 92, baseType: !110, size: 32, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !964, file: !965, line: 101, baseType: !1022, size: 128)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 98, size: 128, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1022, file: !965, line: 99, baseType: !272, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1022, file: !965, line: 100, baseType: !131, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !964, file: !965, line: 108, baseType: !1027, size: 128)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !965, line: 104, size: 128, elements: !1028)
!1028 = !{!1029, !1030, !1031}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1027, file: !965, line: 105, baseType: !109, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1027, file: !965, line: 106, baseType: !131, size: 32, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1027, file: !965, line: 107, baseType: !5, size: 32, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !499, file: !500, line: 1067, baseType: !1033, offset: 11136)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1034, line: 12, elements: !210)
!1034 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !499, file: !500, line: 1099, baseType: !1036, size: 64, offset: 11136)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !500, line: 56, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !499, file: !500, line: 1103, baseType: !120, size: 128, offset: 11200)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !499, file: !500, line: 1104, baseType: !1040, size: 64, offset: 11328)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !500, line: 46, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !499, file: !500, line: 1105, baseType: !453, size: 192, offset: 11392)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !499, file: !500, line: 1106, baseType: !5, size: 32, offset: 11584)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !499, file: !500, line: 1109, baseType: !1045, size: 128, offset: 11648)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 128, elements: !1048)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !500, line: 51, flags: DIFlagFwdDecl)
!1048 = !{!1049}
!1049 = !DISubrange(count: 2)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !499, file: !500, line: 1110, baseType: !453, size: 192, offset: 11776)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !499, file: !500, line: 1111, baseType: !120, size: 128, offset: 11968)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !499, file: !500, line: 1173, baseType: !1053, size: 64, offset: 12096)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1055, line: 62, size: 256, align: 256, elements: !1056)
!1055 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1056 = !{!1057, !1058, !1059, !1064}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1054, file: !1055, line: 75, baseType: !110, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1054, file: !1055, line: 90, baseType: !110, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1054, file: !1055, line: 124, baseType: !1060, size: 64, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !1055, line: 109, size: 64, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1060, file: !1055, line: 110, baseType: !357, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1060, file: !1055, line: 112, baseType: !357, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 144, baseType: !110, size: 32, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !499, file: !500, line: 1174, baseType: !142, size: 32, offset: 12160)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !499, file: !500, line: 1179, baseType: !287, size: 64, offset: 12224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !499, file: !500, line: 1182, baseType: !1068, size: 128, offset: 12288)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !431, line: 76, size: 128, elements: !1069)
!1069 = !{!1070, !1075, !1076}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1068, file: !431, line: 85, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1072, line: 7, size: 64, elements: !1073)
!1072 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1071, file: !1072, line: 12, baseType: !659, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1068, file: !431, line: 88, baseType: !168, size: 8, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1068, file: !431, line: 95, baseType: !168, size: 8, offset: 72)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !500, line: 1184, baseType: !1078, size: 128, offset: 12416)
!1078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 1184, size: 128, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1078, file: !500, line: 1185, baseType: !512, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1078, file: !500, line: 1186, baseType: !790, size: 128, align: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !499, file: !500, line: 1190, baseType: !1083, size: 64, offset: 12544)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !500, line: 53, flags: DIFlagFwdDecl)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !499, file: !500, line: 1192, baseType: !1086, size: 128, offset: 12608)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !431, line: 64, size: 128, elements: !1087)
!1087 = !{!1088, !1181, !1182}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1086, file: !431, line: 65, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !328, line: 68, size: 512, align: 128, elements: !1091)
!1091 = !{!1092, !1093, !1173, !1180}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !328, line: 69, baseType: !287, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !328, line: 77, baseType: !1094, size: 320, offset: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !328, line: 77, size: 320, elements: !1095)
!1095 = !{!1096, !1105, !1110, !1138, !1146, !1152, !1165, !1172}
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 78, baseType: !1097, size: 320)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 78, size: 320, elements: !1098)
!1098 = !{!1099, !1100, !1103, !1104}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1097, file: !328, line: 84, baseType: !120, size: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1097, file: !328, line: 86, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !328, line: 26, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1097, file: !328, line: 87, baseType: !287, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1097, file: !328, line: 94, baseType: !287, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 96, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 96, size: 64, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1106, file: !328, line: 101, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !115, line: 143, baseType: !356)
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 103, baseType: !1111, size: 320)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 103, size: 320, elements: !1112)
!1112 = !{!1113, !1123, !1126, !1127}
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !328, line: 104, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !328, line: 104, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1114, file: !328, line: 105, baseType: !120, size: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1114, file: !328, line: 106, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1114, file: !328, line: 106, size: 128, elements: !1119)
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1118, file: !328, line: 107, baseType: !1089, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1118, file: !328, line: 109, baseType: !131, size: 32, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1118, file: !328, line: 110, baseType: !131, size: 32, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1111, file: !328, line: 117, baseType: !1124, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !328, line: 117, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1111, file: !328, line: 119, baseType: !109, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !328, line: 120, baseType: !1128, size: 64, offset: 256)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !328, line: 120, size: 64, elements: !1129)
!1129 = !{!1130, !1131, !1132}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1128, file: !328, line: 121, baseType: !109, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1128, file: !328, line: 122, baseType: !287, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !328, line: 123, baseType: !1133, size: 32)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !328, line: 123, size: 32, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1133, file: !328, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1133, file: !328, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1133, file: !328, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1138 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 130, baseType: !1139, size: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 130, size: 192, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1139, file: !328, line: 131, baseType: !287, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1139, file: !328, line: 134, baseType: !645, size: 8, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1139, file: !328, line: 135, baseType: !645, size: 8, offset: 72)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1139, file: !328, line: 136, baseType: !376, size: 32, offset: 96)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1139, file: !328, line: 137, baseType: !5, size: 32, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 139, baseType: !1147, size: 256)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 139, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1147, file: !328, line: 140, baseType: !287, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1147, file: !328, line: 141, baseType: !376, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1147, file: !328, line: 143, baseType: !120, size: 128, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 145, baseType: !1153, size: 256)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 145, size: 256, elements: !1154)
!1154 = !{!1155, !1156, !1158, !1159, !1164}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1153, file: !328, line: 146, baseType: !287, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1153, file: !328, line: 147, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !317, line: 509, baseType: !1089)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1153, file: !328, line: 148, baseType: !287, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !328, line: 149, baseType: !1160, size: 64, offset: 192)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !328, line: 149, size: 64, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1160, file: !328, line: 150, baseType: !344, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1160, file: !328, line: 151, baseType: !376, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1153, file: !328, line: 156, baseType: !196, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !328, line: 159, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !328, line: 159, size: 128, elements: !1167)
!1167 = !{!1168, !1171}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1166, file: !328, line: 161, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !328, line: 161, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1166, file: !328, line: 162, baseType: !109, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1094, file: !328, line: 176, baseType: !790, size: 128, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1090, file: !328, line: 179, baseType: !1174, size: 32, offset: 384)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !328, line: 179, size: 32, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1174, file: !328, line: 184, baseType: !376, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1174, file: !328, line: 192, baseType: !5, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1174, file: !328, line: 194, baseType: !5, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1174, file: !328, line: 195, baseType: !131, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1090, file: !328, line: 199, baseType: !376, size: 32, offset: 416)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1086, file: !431, line: 67, baseType: !110, size: 32, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1086, file: !431, line: 68, baseType: !110, size: 32, offset: 96)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !499, file: !500, line: 1206, baseType: !131, size: 32, offset: 12736)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !499, file: !500, line: 1207, baseType: !131, size: 32, offset: 12768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !499, file: !500, line: 1209, baseType: !287, size: 64, offset: 12800)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !499, file: !500, line: 1219, baseType: !356, size: 64, offset: 12864)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !499, file: !500, line: 1220, baseType: !356, size: 64, offset: 12928)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !499, file: !500, line: 1317, baseType: !131, size: 32, offset: 12992)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !499, file: !500, line: 1319, baseType: !498, size: 64, offset: 13056)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !499, file: !500, line: 1322, baseType: !1191, size: 64, offset: 13120)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1193, line: 56, size: 512, elements: !1194)
!1193 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1201, !1202, !1204}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1192, file: !1193, line: 57, baseType: !1191, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1192, file: !1193, line: 58, baseType: !109, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1192, file: !1193, line: 59, baseType: !287, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !1193, line: 60, baseType: !287, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1192, file: !1193, line: 61, baseType: !1200, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1192, file: !1193, line: 62, baseType: !5, size: 32, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1192, file: !1193, line: 63, baseType: !1203, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !115, line: 153, baseType: !356)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1192, file: !1193, line: 64, baseType: !176, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !499, file: !500, line: 1326, baseType: !512, size: 32, offset: 13184)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !499, file: !500, line: 1342, baseType: !109, size: 64, offset: 13248)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !499, file: !500, line: 1343, baseType: !357, size: 64, offset: 13312)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !499, file: !500, line: 1344, baseType: !356, size: 64, offset: 13376)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !499, file: !500, line: 1345, baseType: !357, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !499, file: !500, line: 1346, baseType: !357, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !499, file: !500, line: 1347, baseType: !357, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !499, file: !500, line: 1348, baseType: !790, size: 128, align: 64, offset: 13504)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !499, file: !500, line: 1358, baseType: !1214, size: 34816, offset: 13824)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1215, line: 485, size: 34816, elements: !1216)
!1215 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1246, !1247, !1248, !1249, !1250, !1251, !1254, !1255, !1256}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1214, file: !1215, line: 487, baseType: !1218, size: 192)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 192, elements: !238)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1220, line: 16, size: 64, elements: !1221)
!1220 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1219, file: !1220, line: 17, baseType: !482, size: 16)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1219, file: !1220, line: 18, baseType: !482, size: 16, offset: 16)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1219, file: !1220, line: 19, baseType: !482, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1219, file: !1220, line: 19, baseType: !482, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1219, file: !1220, line: 19, baseType: !482, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1219, file: !1220, line: 19, baseType: !482, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1219, file: !1220, line: 19, baseType: !482, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1219, file: !1220, line: 20, baseType: !482, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1219, file: !1220, line: 20, baseType: !482, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1219, file: !1220, line: 20, baseType: !482, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1219, file: !1220, line: 20, baseType: !482, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1219, file: !1220, line: 20, baseType: !482, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1219, file: !1220, line: 20, baseType: !482, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1214, file: !1215, line: 491, baseType: !287, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1214, file: !1215, line: 495, baseType: !279, size: 16, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1214, file: !1215, line: 496, baseType: !279, size: 16, offset: 272)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1214, file: !1215, line: 497, baseType: !279, size: 16, offset: 288)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1214, file: !1215, line: 498, baseType: !279, size: 16, offset: 304)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1214, file: !1215, line: 502, baseType: !287, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1214, file: !1215, line: 503, baseType: !287, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1214, file: !1215, line: 514, baseType: !1243, size: 256, offset: 448)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1244, size: 256, elements: !435)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1215, line: 483, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1214, file: !1215, line: 516, baseType: !287, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1214, file: !1215, line: 518, baseType: !287, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1214, file: !1215, line: 520, baseType: !287, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1214, file: !1215, line: 521, baseType: !287, size: 64, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1214, file: !1215, line: 522, baseType: !287, size: 64, offset: 960)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1214, file: !1215, line: 528, baseType: !1252, size: 64, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1215, line: 10, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1214, file: !1215, line: 535, baseType: !287, size: 64, offset: 1088)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1214, file: !1215, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1214, file: !1215, line: 540, baseType: !1257, size: 33280, offset: 1536)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1258, line: 317, size: 33280, elements: !1259)
!1258 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1257, file: !1258, line: 330, baseType: !5, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1257, file: !1258, line: 337, baseType: !287, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1257, file: !1258, line: 348, baseType: !1263, size: 32768, offset: 512)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1258, line: 304, size: 32768, elements: !1264)
!1264 = !{!1265, !1280, !1319, !1369, !1386}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1263, file: !1258, line: 305, baseType: !1266, size: 896)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1258, line: 12, size: 896, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1279}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1266, file: !1258, line: 13, baseType: !142, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1266, file: !1258, line: 14, baseType: !142, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1266, file: !1258, line: 15, baseType: !142, size: 32, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1266, file: !1258, line: 16, baseType: !142, size: 32, offset: 96)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1266, file: !1258, line: 17, baseType: !142, size: 32, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1266, file: !1258, line: 18, baseType: !142, size: 32, offset: 160)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1266, file: !1258, line: 19, baseType: !142, size: 32, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1266, file: !1258, line: 22, baseType: !1276, size: 640, offset: 224)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 640, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 20)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1266, file: !1258, line: 25, baseType: !142, size: 32, offset: 864)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1263, file: !1258, line: 306, baseType: !1281, size: 4096, align: 128)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1258, line: 34, size: 4096, align: 128, elements: !1282)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1302, !1303, !1304, !1308, !1310, !1314}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1281, file: !1258, line: 35, baseType: !482, size: 16)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1281, file: !1258, line: 36, baseType: !482, size: 16, offset: 16)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1281, file: !1258, line: 37, baseType: !482, size: 16, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1281, file: !1258, line: 38, baseType: !482, size: 16, offset: 48)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1258, line: 39, baseType: !1288, size: 128, offset: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1258, line: 39, size: 128, elements: !1289)
!1289 = !{!1290, !1295}
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1258, line: 40, baseType: !1291, size: 128)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1258, line: 40, size: 128, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1291, file: !1258, line: 41, baseType: !356, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1291, file: !1258, line: 42, baseType: !356, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !1258, line: 44, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1288, file: !1258, line: 44, size: 128, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1296, file: !1258, line: 45, baseType: !142, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1296, file: !1258, line: 46, baseType: !142, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1296, file: !1258, line: 47, baseType: !142, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1296, file: !1258, line: 48, baseType: !142, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1281, file: !1258, line: 51, baseType: !142, size: 32, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1281, file: !1258, line: 52, baseType: !142, size: 32, offset: 224)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1281, file: !1258, line: 55, baseType: !1305, size: 1024, offset: 256)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1024, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1281, file: !1258, line: 58, baseType: !1309, size: 2048, offset: 1280)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2048, elements: !242)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1281, file: !1258, line: 60, baseType: !1311, size: 384, offset: 3328)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 384, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 12)
!1314 = !DIDerivedType(tag: DW_TAG_member, scope: !1281, file: !1258, line: 62, baseType: !1315, size: 384, offset: 3712)
!1315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1281, file: !1258, line: 62, size: 384, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1315, file: !1258, line: 63, baseType: !1311, size: 384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1315, file: !1258, line: 64, baseType: !1311, size: 384)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1263, file: !1258, line: 307, baseType: !1320, size: 1088)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1258, line: 79, size: 1088, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1368}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1320, file: !1258, line: 80, baseType: !142, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1320, file: !1258, line: 81, baseType: !142, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1320, file: !1258, line: 82, baseType: !142, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1320, file: !1258, line: 83, baseType: !142, size: 32, offset: 96)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1320, file: !1258, line: 84, baseType: !142, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1320, file: !1258, line: 85, baseType: !142, size: 32, offset: 160)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1320, file: !1258, line: 86, baseType: !142, size: 32, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1320, file: !1258, line: 88, baseType: !1276, size: 640, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1320, file: !1258, line: 89, baseType: !643, size: 8, offset: 864)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1320, file: !1258, line: 90, baseType: !643, size: 8, offset: 872)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1320, file: !1258, line: 91, baseType: !643, size: 8, offset: 880)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1320, file: !1258, line: 92, baseType: !643, size: 8, offset: 888)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1320, file: !1258, line: 93, baseType: !643, size: 8, offset: 896)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1320, file: !1258, line: 94, baseType: !643, size: 8, offset: 904)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1320, file: !1258, line: 95, baseType: !1337, size: 64, offset: 960)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1339, line: 11, size: 128, elements: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1338, file: !1339, line: 12, baseType: !272, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1338, file: !1339, line: 13, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1345, line: 56, size: 1344, elements: !1346)
!1345 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1344, file: !1345, line: 61, baseType: !287, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1344, file: !1345, line: 62, baseType: !287, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1344, file: !1345, line: 63, baseType: !287, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1344, file: !1345, line: 64, baseType: !287, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1344, file: !1345, line: 65, baseType: !287, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1344, file: !1345, line: 66, baseType: !287, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1344, file: !1345, line: 68, baseType: !287, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1344, file: !1345, line: 69, baseType: !287, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1344, file: !1345, line: 70, baseType: !287, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1344, file: !1345, line: 71, baseType: !287, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1344, file: !1345, line: 72, baseType: !287, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1344, file: !1345, line: 73, baseType: !287, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1344, file: !1345, line: 74, baseType: !287, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1344, file: !1345, line: 75, baseType: !287, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1344, file: !1345, line: 76, baseType: !287, size: 64, offset: 896)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1344, file: !1345, line: 81, baseType: !287, size: 64, offset: 960)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1344, file: !1345, line: 83, baseType: !287, size: 64, offset: 1024)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1344, file: !1345, line: 84, baseType: !287, size: 64, offset: 1088)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1344, file: !1345, line: 85, baseType: !287, size: 64, offset: 1152)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1344, file: !1345, line: 86, baseType: !287, size: 64, offset: 1216)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1344, file: !1345, line: 87, baseType: !287, size: 64, offset: 1280)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1320, file: !1258, line: 96, baseType: !142, size: 32, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1263, file: !1258, line: 308, baseType: !1370, size: 4608, align: 512)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1258, line: 289, size: 4608, align: 512, elements: !1371)
!1371 = !{!1372, !1373, !1382}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1370, file: !1258, line: 290, baseType: !1281, size: 4096, align: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1370, file: !1258, line: 291, baseType: !1374, size: 512, offset: 4096)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1258, line: 268, size: 512, elements: !1375)
!1375 = !{!1376, !1377, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1374, file: !1258, line: 269, baseType: !356, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1374, file: !1258, line: 270, baseType: !356, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1374, file: !1258, line: 271, baseType: !1379, size: 384, offset: 128)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 384, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 6)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1370, file: !1258, line: 292, baseType: !1383, offset: 4608)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 0)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1263, file: !1258, line: 309, baseType: !1387, size: 32768)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 32768, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 4096)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !328, line: 378, baseType: !1391, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !491, file: !328, line: 384, baseType: !812, size: 192, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !348, file: !328, line: 500, baseType: !196, offset: 6656)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !348, file: !328, line: 501, baseType: !1395, size: 64, offset: 6656)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !328, line: 387, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !348, file: !328, line: 516, baseType: !1398, size: 64, offset: 6720)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1400, line: 18, flags: DIFlagFwdDecl)
!1400 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !348, file: !328, line: 519, baseType: !315, size: 64, offset: 6784)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !348, file: !328, line: 521, baseType: !1403, size: 64, offset: 6848)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !328, line: 521, flags: DIFlagFwdDecl)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !348, file: !328, line: 545, baseType: !376, size: 32, offset: 6912)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !348, file: !328, line: 548, baseType: !168, size: 8, offset: 6944)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !348, file: !328, line: 550, baseType: !1408, offset: 6952)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1409, line: 142, elements: !210)
!1409 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !348, file: !328, line: 554, baseType: !1411, size: 256, offset: 6976)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1412, line: 102, size: 256, elements: !1413)
!1412 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1411, file: !1412, line: 103, baseType: !384, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1411, file: !1412, line: 104, baseType: !120, size: 128, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1411, file: !1412, line: 105, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1412, line: 21, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !348, file: !328, line: 557, baseType: !142, size: 32, offset: 7232)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !345, file: !328, line: 565, baseType: !1424, offset: 7296)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: -1)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !327, file: !328, line: 333, baseType: !1428, size: 64, offset: 576)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !317, line: 284, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !317, line: 284, size: 64, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1429, file: !317, line: 284, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !374, line: 19, baseType: !287)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !327, file: !328, line: 334, baseType: !287, size: 64, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !327, file: !328, line: 343, baseType: !1435, size: 256, offset: 704)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !327, file: !328, line: 340, size: 256, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1435, file: !328, line: 341, baseType: !335, size: 192, align: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1435, file: !328, line: 342, baseType: !287, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !327, file: !328, line: 351, baseType: !120, size: 128, offset: 960)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !327, file: !328, line: 353, baseType: !1441, size: 64, offset: 1088)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !328, line: 353, flags: DIFlagFwdDecl)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !327, file: !328, line: 356, baseType: !1444, size: 64, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1446)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !328, line: 356, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !327, file: !328, line: 359, baseType: !287, size: 64, offset: 1216)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !327, file: !328, line: 361, baseType: !315, size: 64, offset: 1280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !327, file: !328, line: 362, baseType: !109, size: 64, offset: 1344)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !327, file: !328, line: 365, baseType: !384, size: 64, offset: 1408)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !327, file: !328, line: 373, baseType: !1452, offset: 1472)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !328, line: 296, elements: !210)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !294, file: !262, line: 90, baseType: !289, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !294, file: !262, line: 91, baseType: !1455, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !252, file: !184, line: 143, baseType: !1457, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!1460, !189}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1463)
!1463 = !{!1464, !1465, !1469, !1473, !1479, !1483}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !16, line: 40, baseType: !15, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1462, file: !16, line: 41, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!168}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1462, file: !16, line: 42, baseType: !1470, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!109}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1462, file: !16, line: 43, baseType: !1474, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!176, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1462, file: !16, line: 44, baseType: !1480, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!176}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1462, file: !16, line: 45, baseType: !1484, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !109}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !252, file: !184, line: 144, baseType: !1488, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!176, !189}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !252, file: !184, line: 145, baseType: !1492, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !189, !1495, !1501}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1400, line: 23, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1400, line: 21, size: 32, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1497, file: !1400, line: 22, baseType: !1500, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !115, line: 32, baseType: !972)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1400, line: 28, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1400, line: 26, size: 32, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1503, file: !1400, line: 27, baseType: !1506, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !115, line: 33, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !270, line: 50, baseType: !5)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !183, file: !184, line: 70, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1511, line: 123, size: 1024, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1653, !1654, !1655, !1656, !1657}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1510, file: !1511, line: 124, baseType: !376, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1510, file: !1511, line: 125, baseType: !376, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1510, file: !1511, line: 135, baseType: !1509, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1510, file: !1511, line: 136, baseType: !137, size: 64, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1510, file: !1511, line: 138, baseType: !335, size: 192, align: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1510, file: !1511, line: 140, baseType: !176, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1510, file: !1511, line: 141, baseType: !5, size: 32, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1511, line: 142, baseType: !1521, size: 256, offset: 512)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !1511, line: 142, size: 256, elements: !1522)
!1522 = !{!1523, !1577, !1581}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1521, file: !1511, line: 143, baseType: !1524, size: 192)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1511, line: 91, size: 192, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1524, file: !1511, line: 92, baseType: !287, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1524, file: !1511, line: 94, baseType: !352, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1524, file: !1511, line: 100, baseType: !1529, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1511, line: 180, size: 704, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1547, !1548, !1549, !1575, !1576}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1530, file: !1511, line: 182, baseType: !1509, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1530, file: !1511, line: 183, baseType: !5, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1530, file: !1511, line: 186, baseType: !1535, size: 192, offset: 128)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1536, line: 19, size: 192, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1545, !1546}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1535, file: !1536, line: 20, baseType: !1539, size: 128)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1540, line: 292, size: 128, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542, !1543, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1539, file: !1540, line: 293, baseType: !196)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1539, file: !1540, line: 295, baseType: !114, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1539, file: !1540, line: 296, baseType: !109, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1535, file: !1536, line: 21, baseType: !5, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1535, file: !1536, line: 22, baseType: !5, size: 32, offset: 160)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1530, file: !1511, line: 187, baseType: !142, size: 32, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1530, file: !1511, line: 188, baseType: !142, size: 32, offset: 352)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1530, file: !1511, line: 189, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1511, line: 168, size: 320, elements: !1552)
!1552 = !{!1553, !1559, !1563, !1567, !1571}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1551, file: !1511, line: 169, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!131, !1557, !1529}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !317, line: 539, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1551, file: !1511, line: 171, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!131, !1509, !137, !278}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1551, file: !1511, line: 173, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!131, !1509}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1551, file: !1511, line: 174, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!131, !1509, !1509, !137}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1551, file: !1511, line: 176, baseType: !1572, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!131, !1557, !1509, !1529}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1530, file: !1511, line: 192, baseType: !120, size: 128, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1530, file: !1511, line: 194, baseType: !783, size: 128, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1521, file: !1511, line: 144, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1511, line: 103, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1578, file: !1511, line: 104, baseType: !1509, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1521, file: !1511, line: 145, baseType: !1582, size: 256)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1511, line: 107, size: 256, elements: !1583)
!1583 = !{!1584, !1648, !1651, !1652}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1582, file: !1511, line: 108, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1511, line: 217, size: 768, elements: !1588)
!1588 = !{!1589, !1609, !1613, !1617, !1622, !1626, !1630, !1634, !1635, !1636, !1637, !1644}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1587, file: !1511, line: 222, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!131, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1511, line: 197, size: 1088, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1594, file: !1511, line: 199, baseType: !1509, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1594, file: !1511, line: 200, baseType: !315, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1594, file: !1511, line: 201, baseType: !1557, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1594, file: !1511, line: 202, baseType: !109, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1594, file: !1511, line: 205, baseType: !453, size: 192, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1594, file: !1511, line: 206, baseType: !453, size: 192, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1594, file: !1511, line: 207, baseType: !131, size: 32, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1594, file: !1511, line: 208, baseType: !120, size: 128, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1594, file: !1511, line: 209, baseType: !237, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1594, file: !1511, line: 211, baseType: !284, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1594, file: !1511, line: 212, baseType: !168, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1594, file: !1511, line: 213, baseType: !168, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1594, file: !1511, line: 214, baseType: !1444, size: 64, offset: 1024)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1587, file: !1511, line: 223, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !1593}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1587, file: !1511, line: 236, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!131, !1557, !109}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1587, file: !1511, line: 238, baseType: !1618, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!109, !1557, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1587, file: !1511, line: 239, baseType: !1623, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!109, !1557, !109, !1621}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1587, file: !1511, line: 240, baseType: !1627, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1557, !109}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1587, file: !1511, line: 242, baseType: !1631, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!268, !1593, !237, !284, !318}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1587, file: !1511, line: 252, baseType: !284, size: 64, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1587, file: !1511, line: 259, baseType: !168, size: 8, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1587, file: !1511, line: 260, baseType: !1631, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1587, file: !1511, line: 263, baseType: !1638, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1641, !1593, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !113, line: 52, baseType: !5)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1511, line: 27, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1587, file: !1511, line: 266, baseType: !1645, size: 64, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!131, !1593, !326}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1582, file: !1511, line: 109, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1511, line: 31, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1582, file: !1511, line: 110, baseType: !318, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1582, file: !1511, line: 111, baseType: !1509, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1510, file: !1511, line: 148, baseType: !109, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1510, file: !1511, line: 154, baseType: !356, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1510, file: !1511, line: 156, baseType: !279, size: 16, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1510, file: !1511, line: 157, baseType: !278, size: 16, offset: 912)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1510, file: !1511, line: 158, baseType: !1658, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1511, line: 32, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !183, file: !184, line: 71, baseType: !1661, size: 32, offset: 448)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1662, line: 19, size: 32, elements: !1663)
!1662 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1661, file: !1662, line: 20, baseType: !512, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !183, file: !184, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !183, file: !184, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !183, file: !184, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !183, file: !184, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !183, file: !184, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !28, line: 463, baseType: !1671, size: 64, offset: 512)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !180, file: !28, line: 465, baseType: !1673, size: 64, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !180, file: !28, line: 467, baseType: !137, size: 64, offset: 640)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !28, line: 468, baseType: !1677, size: 64, offset: 704)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1687, !1692, !1696}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1679, file: !28, line: 88, baseType: !137, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1679, file: !28, line: 89, baseType: !291, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1679, file: !28, line: 90, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!131, !1671, !232}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1679, file: !28, line: 91, baseType: !1688, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!237, !1671, !1691, !1495, !1501}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1679, file: !28, line: 93, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1671}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1679, file: !28, line: 95, baseType: !1697, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1700)
!1700 = !{!1701, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1699, file: !35, line: 279, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!131, !1671}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1699, file: !35, line: 280, baseType: !1693, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1699, file: !35, line: 281, baseType: !1702, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1699, file: !35, line: 282, baseType: !1702, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1699, file: !35, line: 283, baseType: !1702, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1699, file: !35, line: 284, baseType: !1702, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1699, file: !35, line: 285, baseType: !1702, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1699, file: !35, line: 286, baseType: !1702, size: 64, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1699, file: !35, line: 287, baseType: !1702, size: 64, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1699, file: !35, line: 288, baseType: !1702, size: 64, offset: 576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1699, file: !35, line: 289, baseType: !1702, size: 64, offset: 640)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1699, file: !35, line: 290, baseType: !1702, size: 64, offset: 704)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1699, file: !35, line: 291, baseType: !1702, size: 64, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1699, file: !35, line: 292, baseType: !1702, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1699, file: !35, line: 293, baseType: !1702, size: 64, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1699, file: !35, line: 294, baseType: !1702, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1699, file: !35, line: 295, baseType: !1702, size: 64, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1699, file: !35, line: 296, baseType: !1702, size: 64, offset: 1088)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1699, file: !35, line: 297, baseType: !1702, size: 64, offset: 1152)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1699, file: !35, line: 298, baseType: !1702, size: 64, offset: 1216)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1699, file: !35, line: 299, baseType: !1702, size: 64, offset: 1280)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1699, file: !35, line: 300, baseType: !1702, size: 64, offset: 1344)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1699, file: !35, line: 301, baseType: !1702, size: 64, offset: 1408)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !180, file: !28, line: 470, baseType: !1728, size: 64, offset: 768)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1730, line: 82, size: 1408, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1817, !1820, !1823}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1729, file: !1730, line: 83, baseType: !137, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1729, file: !1730, line: 84, baseType: !137, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1729, file: !1730, line: 85, baseType: !1671, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1729, file: !1730, line: 86, baseType: !291, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1729, file: !1730, line: 87, baseType: !291, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1729, file: !1730, line: 88, baseType: !291, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1729, file: !1730, line: 90, baseType: !1739, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!131, !1671, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1751, !1752, !1753, !1754, !1768, !1781, !1782, !1783, !1784, !1785, !1793, !1794, !1795, !1796, !1797, !1798}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1743, file: !22, line: 96, baseType: !137, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1743, file: !22, line: 97, baseType: !1728, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1743, file: !22, line: 99, baseType: !1748, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1750, line: 76, flags: DIFlagFwdDecl)
!1750 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1743, file: !22, line: 100, baseType: !137, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1743, file: !22, line: 102, baseType: !168, size: 8, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1743, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1743, file: !22, line: 105, baseType: !1755, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1758, line: 262, size: 1600, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1762, !1763, !1767}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !1758, line: 263, baseType: !1761, size: 256)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !1306)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1757, file: !1758, line: 264, baseType: !1761, size: 256, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1757, file: !1758, line: 265, baseType: !1764, size: 1024, offset: 512)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !1765)
!1765 = !{!1766}
!1766 = !DISubrange(count: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1757, file: !1758, line: 266, baseType: !176, size: 64, offset: 1536)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1743, file: !22, line: 106, baseType: !1769, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1758, line: 210, size: 256, elements: !1772)
!1772 = !{!1773, !1777, !1779, !1780}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1771, file: !1758, line: 211, baseType: !1774, size: 72)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 72, elements: !1775)
!1775 = !{!1776}
!1776 = !DISubrange(count: 9)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1771, file: !1758, line: 212, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1758, line: 14, baseType: !287)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1771, file: !1758, line: 213, baseType: !110, size: 32, offset: 192)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1771, file: !1758, line: 214, baseType: !110, size: 32, offset: 224)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1743, file: !22, line: 108, baseType: !1702, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1743, file: !22, line: 109, baseType: !1693, size: 64, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1743, file: !22, line: 110, baseType: !1702, size: 64, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1743, file: !22, line: 111, baseType: !1693, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1743, file: !22, line: 112, baseType: !1786, size: 64, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!131, !1671, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1791)
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1790, file: !35, line: 51, baseType: !131, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1743, file: !22, line: 113, baseType: !1702, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1743, file: !22, line: 114, baseType: !291, size: 64, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1743, file: !22, line: 115, baseType: !291, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1743, file: !22, line: 117, baseType: !1697, size: 64, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1743, file: !22, line: 118, baseType: !1693, size: 64, offset: 1024)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1743, file: !22, line: 120, baseType: !1799, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1729, file: !1730, line: 91, baseType: !1684, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1729, file: !1730, line: 92, baseType: !1702, size: 64, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1729, file: !1730, line: 93, baseType: !1693, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1729, file: !1730, line: 94, baseType: !1702, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1729, file: !1730, line: 95, baseType: !1693, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1729, file: !1730, line: 97, baseType: !1702, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1729, file: !1730, line: 98, baseType: !1702, size: 64, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1729, file: !1730, line: 100, baseType: !1786, size: 64, offset: 896)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1729, file: !1730, line: 101, baseType: !1702, size: 64, offset: 960)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1729, file: !1730, line: 103, baseType: !1702, size: 64, offset: 1024)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1729, file: !1730, line: 105, baseType: !1702, size: 64, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1729, file: !1730, line: 107, baseType: !1697, size: 64, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1729, file: !1730, line: 109, baseType: !1814, size: 64, offset: 1216)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1730, line: 109, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1729, file: !1730, line: 111, baseType: !1818, size: 64, offset: 1280)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1730, line: 111, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1729, file: !1730, line: 112, baseType: !1821, offset: 1344)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1822, line: 187, elements: !210)
!1822 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1729, file: !1730, line: 114, baseType: !168, size: 8, offset: 1344)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !180, file: !28, line: 471, baseType: !1742, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !180, file: !28, line: 473, baseType: !109, size: 64, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !180, file: !28, line: 475, baseType: !109, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !180, file: !28, line: 480, baseType: !453, size: 192, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !180, file: !28, line: 484, baseType: !1829, size: 576, offset: 1216)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1829, file: !28, line: 362, baseType: !120, size: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1829, file: !28, line: 363, baseType: !120, size: 128, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1829, file: !28, line: 364, baseType: !120, size: 128, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1829, file: !28, line: 365, baseType: !120, size: 128, offset: 384)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1829, file: !28, line: 366, baseType: !168, size: 8, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1829, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !180, file: !28, line: 485, baseType: !1838, size: 2304, offset: 1792)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1839)
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1935, !1939}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1838, file: !35, line: 566, baseType: !1789, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1838, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1838, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1838, file: !35, line: 569, baseType: !168, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1838, file: !35, line: 570, baseType: !168, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1838, file: !35, line: 571, baseType: !168, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1838, file: !35, line: 572, baseType: !168, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1838, file: !35, line: 573, baseType: !168, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1838, file: !35, line: 574, baseType: !168, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1838, file: !35, line: 575, baseType: !168, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1838, file: !35, line: 576, baseType: !168, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1838, file: !35, line: 577, baseType: !142, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1838, file: !35, line: 578, baseType: !196, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1838, file: !35, line: 580, baseType: !120, size: 128, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1838, file: !35, line: 581, baseType: !812, size: 192, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1838, file: !35, line: 582, baseType: !1856, size: 64, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1858, line: 43, size: 1472, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1867, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !1858, line: 44, baseType: !137, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1857, file: !1858, line: 45, baseType: !131, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1857, file: !1858, line: 46, baseType: !120, size: 128, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !1858, line: 47, baseType: !196, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1857, file: !1858, line: 48, baseType: !1865, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1857, file: !1858, line: 49, baseType: !1868, size: 320, offset: 320)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1869, line: 11, size: 320, elements: !1870)
!1869 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !{!1871, !1872, !1873, !1878}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1868, file: !1869, line: 16, baseType: !776, size: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1868, file: !1869, line: 17, baseType: !287, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1868, file: !1869, line: 18, baseType: !1874, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !1869, line: 19, baseType: !142, size: 32, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1857, file: !1858, line: 50, baseType: !287, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1857, file: !1858, line: 51, baseType: !582, size: 64, offset: 704)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1857, file: !1858, line: 52, baseType: !582, size: 64, offset: 768)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1857, file: !1858, line: 53, baseType: !582, size: 64, offset: 832)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1857, file: !1858, line: 54, baseType: !582, size: 64, offset: 896)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1857, file: !1858, line: 55, baseType: !582, size: 64, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1857, file: !1858, line: 56, baseType: !287, size: 64, offset: 1024)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1857, file: !1858, line: 57, baseType: !287, size: 64, offset: 1088)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1857, file: !1858, line: 58, baseType: !287, size: 64, offset: 1152)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1857, file: !1858, line: 59, baseType: !287, size: 64, offset: 1216)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1857, file: !1858, line: 60, baseType: !287, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1857, file: !1858, line: 61, baseType: !1671, size: 64, offset: 1344)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1857, file: !1858, line: 62, baseType: !168, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1857, file: !1858, line: 63, baseType: !168, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1838, file: !35, line: 583, baseType: !168, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1838, file: !35, line: 584, baseType: !168, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1838, file: !35, line: 585, baseType: !168, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1838, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1838, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1838, file: !35, line: 592, baseType: !574, size: 512, offset: 576)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1838, file: !35, line: 593, baseType: !356, size: 64, offset: 1088)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1838, file: !35, line: 594, baseType: !1411, size: 256, offset: 1152)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1838, file: !35, line: 595, baseType: !783, size: 128, offset: 1408)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1838, file: !35, line: 596, baseType: !1865, size: 64, offset: 1536)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1838, file: !35, line: 597, baseType: !376, size: 32, offset: 1600)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1838, file: !35, line: 598, baseType: !376, size: 32, offset: 1632)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1838, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1838, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1838, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1838, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1838, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1838, file: !35, line: 604, baseType: !168, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1838, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1838, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1838, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1838, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1838, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1838, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1838, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1838, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1838, file: !35, line: 613, baseType: !131, size: 32, offset: 1792)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1838, file: !35, line: 614, baseType: !131, size: 32, offset: 1824)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1838, file: !35, line: 615, baseType: !356, size: 64, offset: 1856)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1838, file: !35, line: 616, baseType: !356, size: 64, offset: 1920)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1838, file: !35, line: 617, baseType: !356, size: 64, offset: 1984)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1838, file: !35, line: 618, baseType: !356, size: 64, offset: 2048)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1838, file: !35, line: 620, baseType: !1926, size: 64, offset: 2112)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1928)
!1928 = !{!1929, !1930, !1931, !1932}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1927, file: !35, line: 537, baseType: !196)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1927, file: !35, line: 538, baseType: !5, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1927, file: !35, line: 540, baseType: !120, size: 128, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1927, file: !35, line: 543, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1838, file: !35, line: 621, baseType: !1936, size: 64, offset: 2176)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1671, !736}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1838, file: !35, line: 622, baseType: !1940, size: 64, offset: 2240)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !180, file: !28, line: 486, baseType: !1943, size: 64, offset: 4096)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1952, !1953, !1954}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1944, file: !35, line: 643, baseType: !1699, size: 1472)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1944, file: !35, line: 644, baseType: !1702, size: 64, offset: 1472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1944, file: !35, line: 645, baseType: !1949, size: 64, offset: 1536)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1671, !168}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1944, file: !35, line: 646, baseType: !1702, size: 64, offset: 1600)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1944, file: !35, line: 647, baseType: !1693, size: 64, offset: 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1944, file: !35, line: 648, baseType: !1693, size: 64, offset: 1728)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !180, file: !28, line: 493, baseType: !1956, size: 64, offset: 4160)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !49, line: 162, size: 1088, elements: !1958)
!1958 = !{!1959, !1960, !1961, !2121, !2122, !2123, !2124, !2125, !2126, !2233, !2234, !2235, !2236, !2237, !2238, !2239}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1957, file: !49, line: 163, baseType: !120, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1957, file: !49, line: 164, baseType: !137, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1957, file: !49, line: 165, baseType: !1962, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !49, line: 105, size: 640, elements: !1965)
!1965 = !{!1966, !1970, !1981, !1986, !1990, !1998, !2002, !2006, !2113, !2117}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1964, file: !49, line: 106, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!131, !1956, !132, !48}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1964, file: !49, line: 108, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!131, !1956, !1974, !48}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !49, line: 63, size: 640, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1975, file: !49, line: 64, baseType: !150, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1975, file: !49, line: 65, baseType: !131, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1975, file: !49, line: 66, baseType: !1980, size: 512, offset: 96)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 512, elements: !868)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1964, file: !49, line: 110, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!131, !1956, !5, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !115, line: 164, baseType: !287)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1964, file: !49, line: 111, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1956, !5}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1964, file: !49, line: 112, baseType: !1991, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!131, !1956, !132, !1994, !5, !1996, !1997}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1964, file: !49, line: 117, baseType: !1999, size: 64, offset: 320)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!131, !1956, !5, !5, !109}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1964, file: !49, line: 119, baseType: !2003, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !1956, !5, !5}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1964, file: !49, line: 121, baseType: !2007, size: 64, offset: 448)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!131, !1956, !2010, !168}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !63, line: 175, size: 448, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2028, !2110, !2111, !2112}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2011, file: !63, line: 176, baseType: !142, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2011, file: !63, line: 177, baseType: !5, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !2011, file: !63, line: 178, baseType: !287, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2011, file: !63, line: 179, baseType: !2017, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !63, line: 145, size: 256, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2025}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !2018, file: !63, line: 146, baseType: !5, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !2018, file: !63, line: 150, baseType: !109, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !2018, file: !63, line: 151, baseType: !2023, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !63, line: 127, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !2018, file: !63, line: 152, baseType: !2026, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !658, line: 756, baseType: !2027)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !659, size: 64, elements: !663)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2011, file: !63, line: 180, baseType: !2029, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !63, line: 503, size: 2304, elements: !2031)
!2031 = !{!2032, !2033, !2034, !2038, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2055, !2059, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2076, !2077, !2078, !2084, !2085, !2091, !2095, !2099, !2103, !2107, !2108, !2109}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !2030, file: !63, line: 504, baseType: !1671, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2030, file: !63, line: 505, baseType: !137, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !2030, file: !63, line: 506, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!5, !2010}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !2030, file: !63, line: 507, baseType: !2039, size: 64, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{null, !2010}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !2030, file: !63, line: 508, baseType: !2039, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !2030, file: !63, line: 509, baseType: !2039, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !2030, file: !63, line: 511, baseType: !2039, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !2030, file: !63, line: 512, baseType: !2039, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !2030, file: !63, line: 513, baseType: !2039, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !2030, file: !63, line: 514, baseType: !2039, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !2030, file: !63, line: 515, baseType: !2039, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !2030, file: !63, line: 517, baseType: !2050, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!131, !2010, !2053, !168}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !2030, file: !63, line: 518, baseType: !2056, size: 64, offset: 768)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!131, !2010}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !2030, file: !63, line: 519, baseType: !2060, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!131, !2010, !5}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !2030, file: !63, line: 520, baseType: !2060, size: 64, offset: 896)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !2030, file: !63, line: 522, baseType: !2039, size: 64, offset: 960)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !2030, file: !63, line: 523, baseType: !2039, size: 64, offset: 1024)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !2030, file: !63, line: 525, baseType: !2039, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !2030, file: !63, line: 526, baseType: !2039, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !2030, file: !63, line: 528, baseType: !2039, size: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !2030, file: !63, line: 529, baseType: !2039, size: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !2030, file: !63, line: 530, baseType: !2039, size: 64, offset: 1344)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !2030, file: !63, line: 532, baseType: !2039, size: 64, offset: 1408)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !2030, file: !63, line: 534, baseType: !2073, size: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{null, !2010, !1557}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !2030, file: !63, line: 535, baseType: !2056, size: 64, offset: 1536)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !2030, file: !63, line: 536, baseType: !2039, size: 64, offset: 1600)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !2030, file: !63, line: 538, baseType: !2079, size: 64, offset: 1664)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2010, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !63, line: 29, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !2030, file: !63, line: 539, baseType: !2079, size: 64, offset: 1728)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !2030, file: !63, line: 541, baseType: !2086, size: 64, offset: 1792)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!131, !2010, !2089, !2090}
!2089 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !63, line: 31, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !2030, file: !63, line: 542, baseType: !2092, size: 64, offset: 1856)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!131, !2010, !2089, !168}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !2030, file: !63, line: 544, baseType: !2096, size: 64, offset: 1920)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!131, !2010, !109}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !2030, file: !63, line: 546, baseType: !2100, size: 64, offset: 1984)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !2010, !5}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !2030, file: !63, line: 547, baseType: !2104, size: 64, offset: 2048)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !2010, !2053}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !2030, file: !63, line: 549, baseType: !2056, size: 64, offset: 2112)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !2030, file: !63, line: 550, baseType: !2039, size: 64, offset: 2176)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !63, line: 552, baseType: !287, size: 64, offset: 2240)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2011, file: !63, line: 181, baseType: !1956, size: 64, offset: 256)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !2011, file: !63, line: 183, baseType: !2010, size: 64, offset: 320)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !2011, file: !63, line: 185, baseType: !109, size: 64, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1964, file: !49, line: 122, baseType: !2114, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !1956, !2010}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1964, file: !49, line: 123, baseType: !2118, size: 64, offset: 576)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!131, !1956, !1974, !1996, !1997}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1957, file: !49, line: 166, baseType: !109, size: 64, offset: 256)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1957, file: !49, line: 167, baseType: !5, size: 32, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1957, file: !49, line: 168, baseType: !5, size: 32, offset: 352)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1957, file: !49, line: 171, baseType: !150, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1957, file: !49, line: 172, baseType: !48, size: 32, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1957, file: !49, line: 173, baseType: !2127, size: 64, offset: 512)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !63, line: 1101, size: 192, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !2128, file: !63, line: 1102, baseType: !5, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !2128, file: !63, line: 1103, baseType: !5, size: 32, offset: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !2128, file: !63, line: 1104, baseType: !5, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !2128, file: !63, line: 1105, baseType: !5, size: 32, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !2128, file: !63, line: 1106, baseType: !62, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2128, file: !63, line: 1107, baseType: !2136, offset: 192)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, elements: !1425)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !63, line: 1051, size: 960, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2146, !2150, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2138, file: !63, line: 1052, baseType: !401)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !2138, file: !63, line: 1053, baseType: !109, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !2138, file: !63, line: 1054, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!142, !109}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !2138, file: !63, line: 1055, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !142, !109}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2138, file: !63, line: 1056, baseType: !2151, size: 64, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !2137}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2138, file: !63, line: 1057, baseType: !2151, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !2138, file: !63, line: 1058, baseType: !5, size: 32, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !2138, file: !63, line: 1059, baseType: !5, size: 32, offset: 352)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2138, file: !63, line: 1060, baseType: !142, size: 32, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !2138, file: !63, line: 1061, baseType: !142, size: 32, offset: 416)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !2138, file: !63, line: 1062, baseType: !142, size: 32, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !2138, file: !63, line: 1063, baseType: !142, size: 32, offset: 480)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !2138, file: !63, line: 1064, baseType: !142, size: 32, offset: 512)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !2138, file: !63, line: 1065, baseType: !5, size: 32, offset: 544)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2138, file: !63, line: 1066, baseType: !109, size: 64, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !2138, file: !63, line: 1067, baseType: !287, size: 64, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2138, file: !63, line: 1068, baseType: !287, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2138, file: !63, line: 1069, baseType: !1956, size: 64, offset: 768)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2138, file: !63, line: 1070, baseType: !120, size: 128, offset: 832)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !2138, file: !63, line: 1071, baseType: !2169, offset: 960)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2170, elements: !1425)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !63, line: 1009, size: 2944, elements: !2171)
!2171 = !{!2172, !2173, !2183, !2230, !2231, !2232}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !2170, file: !63, line: 1010, baseType: !2030, size: 2304)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2170, file: !63, line: 1011, baseType: !2174, size: 448, offset: 2304)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !63, line: 986, size: 448, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !2174, file: !63, line: 987, baseType: !287, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !2174, file: !63, line: 988, baseType: !287, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2174, file: !63, line: 989, baseType: !287, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !2174, file: !63, line: 990, baseType: !287, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !2174, file: !63, line: 991, baseType: !287, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2174, file: !63, line: 992, baseType: !287, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2174, file: !63, line: 993, baseType: !287, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2170, file: !63, line: 1012, baseType: !2184, size: 64, offset: 2752)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !2185, line: 12, baseType: !2186)
!2185 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !2191, line: 55, size: 2880, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2224, !2225, !2226, !2227, !2228, !2229}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !2190, file: !2191, line: 56, baseType: !2018, size: 256)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !2190, file: !2191, line: 57, baseType: !2011, size: 448, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !2190, file: !2191, line: 58, baseType: !1997, size: 64, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !2190, file: !2191, line: 59, baseType: !2184, size: 64, offset: 768)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2190, file: !2191, line: 60, baseType: !2198, size: 64, offset: 832)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !2191, line: 60, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !2190, file: !2191, line: 61, baseType: !5, size: 32, offset: 896)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !2190, file: !2191, line: 62, baseType: !5, size: 32, offset: 928)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2190, file: !2191, line: 63, baseType: !5, size: 32, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !2190, file: !2191, line: 64, baseType: !5, size: 32, offset: 992)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !2190, file: !2191, line: 65, baseType: !5, size: 32, offset: 1024)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2190, file: !2191, line: 66, baseType: !5, size: 32, offset: 1056)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !2190, file: !2191, line: 67, baseType: !287, size: 64, offset: 1088)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !2190, file: !2191, line: 68, baseType: !5, size: 32, offset: 1152)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !2190, file: !2191, line: 69, baseType: !376, size: 32, offset: 1184)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !2190, file: !2191, line: 70, baseType: !131, size: 32, offset: 1216)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2190, file: !2191, line: 71, baseType: !401, offset: 1248)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !2190, file: !2191, line: 72, baseType: !2212, size: 64, offset: 1280)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !2190, file: !2191, line: 73, baseType: !2053, size: 64, offset: 1344)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !2190, file: !2191, line: 81, baseType: !287, size: 64, offset: 1408)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !2190, file: !2191, line: 82, baseType: !376, size: 32, offset: 1472)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !2190, file: !2191, line: 83, baseType: !783, size: 128, offset: 1536)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !2190, file: !2191, line: 85, baseType: !5, size: 32, offset: 1664)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !2190, file: !2191, line: 86, baseType: !5, size: 32, offset: 1696)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !2190, file: !2191, line: 87, baseType: !5, size: 32, offset: 1728)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !2190, file: !2191, line: 88, baseType: !5, size: 32, offset: 1760)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2190, file: !2191, line: 91, baseType: !2222, size: 64, offset: 1792)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2191, line: 14, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2190, file: !2191, line: 98, baseType: !790, size: 128, align: 64, offset: 1856)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2190, file: !2191, line: 99, baseType: !183, size: 512, offset: 1984)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !2190, file: !2191, line: 101, baseType: !453, size: 192, offset: 2496)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !2190, file: !2191, line: 102, baseType: !131, size: 32, offset: 2688)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2190, file: !2191, line: 103, baseType: !1748, size: 64, offset: 2752)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2190, file: !2191, line: 104, baseType: !137, size: 64, offset: 2816)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2170, file: !63, line: 1013, baseType: !142, size: 32, offset: 2816)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !2170, file: !63, line: 1014, baseType: !142, size: 32, offset: 2848)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !2170, file: !63, line: 1015, baseType: !707, size: 64, offset: 2880)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1957, file: !49, line: 175, baseType: !1956, size: 64, offset: 576)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1957, file: !49, line: 182, baseType: !1985, size: 64, offset: 640)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1957, file: !49, line: 183, baseType: !5, size: 32, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1957, file: !49, line: 184, baseType: !5, size: 32, offset: 736)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1957, file: !49, line: 185, baseType: !1539, size: 128, offset: 768)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1957, file: !49, line: 186, baseType: !453, size: 192, offset: 896)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1957, file: !49, line: 187, baseType: !2240, offset: 1088)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !1425)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !180, file: !28, line: 499, baseType: !120, size: 128, offset: 4224)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !180, file: !28, line: 502, baseType: !2243, size: 64, offset: 4352)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2245)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !180, file: !28, line: 504, baseType: !2247, size: 64, offset: 4416)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !180, file: !28, line: 505, baseType: !356, size: 64, offset: 4480)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !180, file: !28, line: 510, baseType: !356, size: 64, offset: 4544)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !180, file: !28, line: 511, baseType: !2251, size: 64, offset: 4608)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2253)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !180, file: !28, line: 513, baseType: !2255, size: 64, offset: 4672)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2256, file: !28, line: 293, baseType: !5, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2256, file: !28, line: 294, baseType: !287, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !180, file: !28, line: 515, baseType: !120, size: 128, offset: 4736)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !180, file: !28, line: 526, baseType: !2262, offset: 4864)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2263, line: 5, elements: !210)
!2263 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !180, file: !28, line: 528, baseType: !132, size: 64, offset: 4864)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !180, file: !28, line: 529, baseType: !150, size: 64, offset: 4928)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !180, file: !28, line: 534, baseType: !2267, size: 32, offset: 4992)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !115, line: 16, baseType: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !115, line: 13, baseType: !142)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !180, file: !28, line: 535, baseType: !142, size: 32, offset: 5024)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !180, file: !28, line: 537, baseType: !196, offset: 5056)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !180, file: !28, line: 538, baseType: !120, size: 128, offset: 5056)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !180, file: !28, line: 540, baseType: !2273, size: 64, offset: 5184)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2275, line: 54, size: 960, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2282, !2283, !2287, !2291, !2292, !2293, !2294, !2298, !2302, !2303}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2274, file: !2275, line: 55, baseType: !137, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2274, file: !2275, line: 56, baseType: !1748, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2274, file: !2275, line: 58, baseType: !291, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2274, file: !2275, line: 59, baseType: !291, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2274, file: !2275, line: 60, baseType: !189, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2274, file: !2275, line: 62, baseType: !1684, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2274, file: !2275, line: 63, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!237, !1671, !1691}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2274, file: !2275, line: 65, baseType: !2288, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !2273}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2274, file: !2275, line: 66, baseType: !1693, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2274, file: !2275, line: 68, baseType: !1702, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2274, file: !2275, line: 70, baseType: !1460, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2274, file: !2275, line: 71, baseType: !2295, size: 64, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!176, !1671}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2274, file: !2275, line: 73, baseType: !2299, size: 64, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !1671, !1495, !1501}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2274, file: !2275, line: 75, baseType: !1697, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2274, file: !2275, line: 77, baseType: !1818, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !180, file: !28, line: 541, baseType: !291, size: 64, offset: 5248)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !180, file: !28, line: 543, baseType: !1693, size: 64, offset: 5312)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !180, file: !28, line: 544, baseType: !2307, size: 64, offset: 5376)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !180, file: !28, line: 545, baseType: !2310, size: 64, offset: 5440)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !180, file: !28, line: 547, baseType: !168, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !180, file: !28, line: 548, baseType: !168, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !180, file: !28, line: 549, baseType: !168, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !180, file: !28, line: 550, baseType: !168, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !154, file: !147, line: 116, baseType: !2317, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!168, !170, !137}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !154, file: !147, line: 118, baseType: !2321, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!131, !170, !137, !5, !109, !284}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !154, file: !147, line: 123, baseType: !2325, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!131, !170, !137, !2328, !284}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !154, file: !147, line: 126, baseType: !2330, size: 64, offset: 448)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!137, !170}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !154, file: !147, line: 127, baseType: !2330, size: 64, offset: 512)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !154, file: !147, line: 128, baseType: !2335, size: 64, offset: 576)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!150, !170}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !154, file: !147, line: 130, baseType: !2339, size: 64, offset: 640)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!150, !170, !150}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !154, file: !147, line: 133, baseType: !2343, size: 64, offset: 704)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!150, !170, !137}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !154, file: !147, line: 135, baseType: !2347, size: 64, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!131, !170, !137, !137, !5, !5, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !147, line: 43, size: 640, elements: !2352)
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2351, file: !147, line: 44, baseType: !150, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2351, file: !147, line: 45, baseType: !5, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2351, file: !147, line: 46, baseType: !2356, size: 512, offset: 128)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 512, elements: !612)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !154, file: !147, line: 140, baseType: !2339, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !154, file: !147, line: 143, baseType: !2335, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !154, file: !147, line: 145, baseType: !157, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !154, file: !147, line: 146, baseType: !2361, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!131, !170, !2364}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !147, line: 29, size: 128, elements: !2366)
!2366 = !{!2367, !2368, !2369}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2365, file: !147, line: 30, baseType: !5, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2365, file: !147, line: 31, baseType: !5, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2365, file: !147, line: 32, baseType: !170, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !154, file: !147, line: 148, baseType: !2371, size: 64, offset: 1088)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!131, !170, !1671}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !146, file: !147, line: 20, baseType: !1671, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !133, file: !134, line: 57, baseType: !2376, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !134, line: 31, size: 704, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2377, file: !134, line: 32, baseType: !237, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2377, file: !134, line: 33, baseType: !131, size: 32, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2377, file: !134, line: 34, baseType: !109, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2377, file: !134, line: 35, baseType: !2376, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2377, file: !134, line: 43, baseType: !306, size: 448, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !133, file: !134, line: 58, baseType: !2376, size: 64, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !134, line: 59, baseType: !132, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !133, file: !134, line: 60, baseType: !132, size: 64, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !133, file: !134, line: 61, baseType: !132, size: 64, offset: 640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !133, file: !134, line: 63, baseType: !183, size: 512, offset: 704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !133, file: !134, line: 65, baseType: !287, size: 64, offset: 1216)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !134, line: 66, baseType: !109, size: 64, offset: 1280)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !117, file: !1, line: 468, baseType: !132, size: 64, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_parent", scope: !117, file: !1, line: 469, baseType: !132, size: 64, offset: 256)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !139)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!2401 = !{i32 7, !"Dwarf Version", i32 4}
!2402 = !{i32 2, !"Debug Info Version", i32 3}
!2403 = !{i32 1, !"wchar_size", i32 2}
!2404 = !{i32 1, !"Code Model", i32 2}
!2405 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2406 = distinct !DISubprogram(name: "irq_of_parse_and_map", scope: !1, file: !1, line: 36, type: !2407, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!5, !132, !131}
!2409 = !DILocalVariable(name: "dev", arg: 1, scope: !2406, file: !1, line: 36, type: !132)
!2410 = !DILocation(line: 36, column: 55, scope: !2406)
!2411 = !DILocalVariable(name: "index", arg: 2, scope: !2406, file: !1, line: 36, type: !131)
!2412 = !DILocation(line: 36, column: 64, scope: !2406)
!2413 = !DILocalVariable(name: "oirq", scope: !2406, file: !1, line: 38, type: !2414)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_phandle_args", file: !134, line: 74, size: 640, elements: !2415)
!2415 = !{!2416, !2417, !2418}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2414, file: !134, line: 75, baseType: !132, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "args_count", scope: !2414, file: !134, line: 76, baseType: !131, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2414, file: !134, line: 77, baseType: !2419, size: 512, offset: 96)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2420, size: 512, elements: !868)
!2420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !115, line: 104, baseType: !142)
!2421 = !DILocation(line: 38, column: 25, scope: !2406)
!2422 = !DILocation(line: 40, column: 23, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 40, column: 6)
!2424 = !DILocation(line: 40, column: 28, scope: !2423)
!2425 = !DILocation(line: 40, column: 6, scope: !2423)
!2426 = !DILocation(line: 40, column: 6, scope: !2406)
!2427 = !DILocation(line: 41, column: 3, scope: !2423)
!2428 = !DILocation(line: 43, column: 9, scope: !2406)
!2429 = !DILocation(line: 43, column: 2, scope: !2406)
!2430 = !DILocation(line: 44, column: 1, scope: !2406)
!2431 = distinct !DISubprogram(name: "of_irq_parse_one", scope: !1, file: !1, line: 286, type: !2432, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!131, !132, !131, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2435 = !DILocalVariable(name: "device", arg: 1, scope: !2431, file: !1, line: 286, type: !132)
!2436 = !DILocation(line: 286, column: 42, scope: !2431)
!2437 = !DILocalVariable(name: "index", arg: 2, scope: !2431, file: !1, line: 286, type: !131)
!2438 = !DILocation(line: 286, column: 54, scope: !2431)
!2439 = !DILocalVariable(name: "out_irq", arg: 3, scope: !2431, file: !1, line: 286, type: !2434)
!2440 = !DILocation(line: 286, column: 85, scope: !2431)
!2441 = !DILocalVariable(name: "p", scope: !2431, file: !1, line: 288, type: !132)
!2442 = !DILocation(line: 288, column: 22, scope: !2431)
!2443 = !DILocalVariable(name: "addr", scope: !2431, file: !1, line: 289, type: !2444)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!2446 = !DILocation(line: 289, column: 16, scope: !2431)
!2447 = !DILocalVariable(name: "intsize", scope: !2431, file: !1, line: 290, type: !142)
!2448 = !DILocation(line: 290, column: 6, scope: !2431)
!2449 = !DILocalVariable(name: "i", scope: !2431, file: !1, line: 291, type: !131)
!2450 = !DILocation(line: 291, column: 6, scope: !2431)
!2451 = !DILocalVariable(name: "res", scope: !2431, file: !1, line: 291, type: !131)
!2452 = !DILocation(line: 291, column: 9, scope: !2431)
!2453 = !DILocation(line: 293, column: 2, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !1, line: 293, column: 2)
!2455 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 293, column: 2)
!2456 = !DILocation(line: 293, column: 2, scope: !2455)
!2457 = !DILocation(line: 300, column: 25, scope: !2431)
!2458 = !DILocation(line: 300, column: 9, scope: !2431)
!2459 = !DILocation(line: 300, column: 7, scope: !2431)
!2460 = !DILocation(line: 303, column: 35, scope: !2431)
!2461 = !DILocation(line: 304, column: 26, scope: !2431)
!2462 = !DILocation(line: 304, column: 33, scope: !2431)
!2463 = !DILocation(line: 303, column: 8, scope: !2431)
!2464 = !DILocation(line: 303, column: 6, scope: !2431)
!2465 = !DILocation(line: 305, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 305, column: 6)
!2467 = !DILocation(line: 305, column: 6, scope: !2431)
!2468 = !DILocation(line: 306, column: 27, scope: !2466)
!2469 = !DILocation(line: 306, column: 33, scope: !2466)
!2470 = !DILocation(line: 306, column: 10, scope: !2466)
!2471 = !DILocation(line: 306, column: 3, scope: !2466)
!2472 = !DILocation(line: 309, column: 25, scope: !2431)
!2473 = !DILocation(line: 309, column: 6, scope: !2431)
!2474 = !DILocation(line: 309, column: 4, scope: !2431)
!2475 = !DILocation(line: 310, column: 6, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 310, column: 6)
!2477 = !DILocation(line: 310, column: 8, scope: !2476)
!2478 = !DILocation(line: 310, column: 6, scope: !2431)
!2479 = !DILocation(line: 311, column: 3, scope: !2476)
!2480 = !DILocation(line: 314, column: 27, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 314, column: 6)
!2482 = !DILocation(line: 314, column: 6, scope: !2481)
!2483 = !DILocation(line: 314, column: 6, scope: !2431)
!2484 = !DILocation(line: 315, column: 7, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 314, column: 61)
!2486 = !DILocation(line: 316, column: 3, scope: !2485)
!2487 = !DILocation(line: 319, column: 2, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 319, column: 2)
!2489 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 319, column: 2)
!2490 = !DILocation(line: 319, column: 2, scope: !2489)
!2491 = !DILocation(line: 322, column: 16, scope: !2431)
!2492 = !DILocation(line: 322, column: 2, scope: !2431)
!2493 = !DILocation(line: 322, column: 11, scope: !2431)
!2494 = !DILocation(line: 322, column: 14, scope: !2431)
!2495 = !DILocation(line: 323, column: 24, scope: !2431)
!2496 = !DILocation(line: 323, column: 2, scope: !2431)
!2497 = !DILocation(line: 323, column: 11, scope: !2431)
!2498 = !DILocation(line: 323, column: 22, scope: !2431)
!2499 = !DILocation(line: 324, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 324, column: 2)
!2501 = !DILocation(line: 324, column: 7, scope: !2500)
!2502 = !DILocation(line: 324, column: 14, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 324, column: 2)
!2504 = !DILocation(line: 324, column: 18, scope: !2503)
!2505 = !DILocation(line: 324, column: 16, scope: !2503)
!2506 = !DILocation(line: 324, column: 2, scope: !2500)
!2507 = !DILocation(line: 325, column: 36, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 324, column: 32)
!2509 = !DILocation(line: 326, column: 9, scope: !2508)
!2510 = !DILocation(line: 326, column: 17, scope: !2508)
!2511 = !DILocation(line: 326, column: 15, scope: !2508)
!2512 = !DILocation(line: 326, column: 28, scope: !2508)
!2513 = !DILocation(line: 326, column: 26, scope: !2508)
!2514 = !DILocation(line: 327, column: 8, scope: !2508)
!2515 = !DILocation(line: 327, column: 17, scope: !2508)
!2516 = !DILocation(line: 327, column: 24, scope: !2508)
!2517 = !DILocation(line: 327, column: 22, scope: !2508)
!2518 = !DILocation(line: 325, column: 9, scope: !2508)
!2519 = !DILocation(line: 325, column: 7, scope: !2508)
!2520 = !DILocation(line: 328, column: 7, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 328, column: 7)
!2522 = !DILocation(line: 328, column: 7, scope: !2508)
!2523 = !DILocation(line: 329, column: 4, scope: !2521)
!2524 = !DILocation(line: 330, column: 2, scope: !2508)
!2525 = !DILocation(line: 324, column: 28, scope: !2503)
!2526 = !DILocation(line: 324, column: 2, scope: !2503)
!2527 = distinct !{!2527, !2506, !2528}
!2528 = !DILocation(line: 330, column: 2, scope: !2500)
!2529 = !DILocation(line: 332, column: 2, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 332, column: 2)
!2531 = distinct !DILexicalBlock(scope: !2431, file: !1, line: 332, column: 2)
!2532 = !DILocation(line: 332, column: 2, scope: !2531)
!2533 = !DILocation(line: 336, column: 25, scope: !2431)
!2534 = !DILocation(line: 336, column: 31, scope: !2431)
!2535 = !DILocation(line: 336, column: 8, scope: !2431)
!2536 = !DILocation(line: 336, column: 6, scope: !2431)
!2537 = !DILocation(line: 336, column: 2, scope: !2431)
!2538 = !DILabel(scope: !2431, name: "out", file: !1, line: 337)
!2539 = !DILocation(line: 337, column: 2, scope: !2431)
!2540 = !DILocation(line: 338, column: 14, scope: !2431)
!2541 = !DILocation(line: 338, column: 2, scope: !2431)
!2542 = !DILocation(line: 339, column: 9, scope: !2431)
!2543 = !DILocation(line: 339, column: 2, scope: !2431)
!2544 = !DILocation(line: 340, column: 1, scope: !2431)
!2545 = distinct !DISubprogram(name: "of_irq_find_parent", scope: !1, file: !1, line: 54, type: !2546, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!132, !132}
!2548 = !DILocalVariable(name: "child", arg: 1, scope: !2545, file: !1, line: 54, type: !132)
!2549 = !DILocation(line: 54, column: 60, scope: !2545)
!2550 = !DILocalVariable(name: "p", scope: !2545, file: !1, line: 56, type: !132)
!2551 = !DILocation(line: 56, column: 22, scope: !2545)
!2552 = !DILocalVariable(name: "parent", scope: !2545, file: !1, line: 57, type: !141)
!2553 = !DILocation(line: 57, column: 10, scope: !2545)
!2554 = !DILocation(line: 59, column: 19, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 59, column: 6)
!2556 = !DILocation(line: 59, column: 7, scope: !2555)
!2557 = !DILocation(line: 59, column: 6, scope: !2545)
!2558 = !DILocation(line: 60, column: 3, scope: !2555)
!2559 = !DILocation(line: 62, column: 2, scope: !2545)
!2560 = !DILocation(line: 63, column: 28, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 63, column: 7)
!2562 = distinct !DILexicalBlock(scope: !2545, file: !1, line: 62, column: 5)
!2563 = !DILocation(line: 63, column: 7, scope: !2561)
!2564 = !DILocation(line: 63, column: 7, scope: !2562)
!2565 = !DILocation(line: 64, column: 22, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 63, column: 65)
!2567 = !DILocation(line: 64, column: 8, scope: !2566)
!2568 = !DILocation(line: 64, column: 6, scope: !2566)
!2569 = !DILocation(line: 65, column: 3, scope: !2566)
!2570 = !DILocation(line: 69, column: 33, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !1, line: 66, column: 8)
!2572 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 65, column: 10)
!2573 = !DILocation(line: 69, column: 9, scope: !2571)
!2574 = !DILocation(line: 69, column: 7, scope: !2571)
!2575 = !DILocation(line: 71, column: 15, scope: !2562)
!2576 = !DILocation(line: 71, column: 3, scope: !2562)
!2577 = !DILocation(line: 72, column: 11, scope: !2562)
!2578 = !DILocation(line: 72, column: 9, scope: !2562)
!2579 = !DILocation(line: 73, column: 2, scope: !2562)
!2580 = !DILocation(line: 73, column: 11, scope: !2545)
!2581 = !DILocation(line: 73, column: 13, scope: !2545)
!2582 = !DILocation(line: 73, column: 32, scope: !2545)
!2583 = !DILocation(line: 73, column: 16, scope: !2545)
!2584 = !DILocation(line: 73, column: 61, scope: !2545)
!2585 = !DILocation(line: 0, scope: !2545)
!2586 = distinct !{!2586, !2559, !2587}
!2587 = !DILocation(line: 73, column: 68, scope: !2545)
!2588 = !DILocation(line: 75, column: 9, scope: !2545)
!2589 = !DILocation(line: 75, column: 2, scope: !2545)
!2590 = !DILocation(line: 76, column: 1, scope: !2545)
!2591 = distinct !DISubprogram(name: "of_node_get", scope: !134, file: !134, line: 125, type: !2546, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2592 = !DILocalVariable(name: "node", arg: 1, scope: !2591, file: !134, line: 125, type: !132)
!2593 = !DILocation(line: 125, column: 67, scope: !2591)
!2594 = !DILocation(line: 127, column: 9, scope: !2591)
!2595 = !DILocation(line: 127, column: 2, scope: !2591)
!2596 = distinct !DISubprogram(name: "of_property_read_u32", scope: !134, file: !134, line: 1214, type: !2597, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!131, !2599, !137, !707}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!2601 = !DILocalVariable(name: "np", arg: 1, scope: !2596, file: !134, line: 1214, type: !2599)
!2602 = !DILocation(line: 1214, column: 66, scope: !2596)
!2603 = !DILocalVariable(name: "propname", arg: 2, scope: !2596, file: !134, line: 1215, type: !137)
!2604 = !DILocation(line: 1215, column: 24, scope: !2596)
!2605 = !DILocalVariable(name: "out_value", arg: 3, scope: !2596, file: !134, line: 1216, type: !707)
!2606 = !DILocation(line: 1216, column: 17, scope: !2596)
!2607 = !DILocation(line: 1218, column: 36, scope: !2596)
!2608 = !DILocation(line: 1218, column: 40, scope: !2596)
!2609 = !DILocation(line: 1218, column: 50, scope: !2596)
!2610 = !DILocation(line: 1218, column: 9, scope: !2596)
!2611 = !DILocation(line: 1218, column: 2, scope: !2596)
!2612 = distinct !DISubprogram(name: "of_node_put", scope: !134, file: !134, line: 129, type: !2613, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !132}
!2615 = !DILocalVariable(name: "node", arg: 1, scope: !2612, file: !134, line: 129, type: !132)
!2616 = !DILocation(line: 129, column: 52, scope: !2612)
!2617 = !DILocation(line: 129, column: 60, scope: !2612)
!2618 = distinct !DISubprogram(name: "of_irq_parse_raw", scope: !1, file: !1, line: 93, type: !2619, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!131, !2444, !2434}
!2621 = !DILocalVariable(name: "p", arg: 1, scope: !2622, file: !2623, line: 184, type: !2626)
!2622 = distinct !DISubprogram(name: "__swab32p", scope: !2623, file: !2623, line: 184, type: !2624, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2623 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!110, !2626}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!2628 = !DILocation(line: 184, column: 53, scope: !2622, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 82, column: 9, scope: !2630, inlinedAt: !2634)
!2630 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !2631, file: !2631, line: 80, type: !2632, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!2631 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!110, !2444}
!2634 = distinct !DILocation(line: 254, column: 23, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !1, line: 253, column: 3)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 253, column: 3)
!2637 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 158, column: 23)
!2638 = !DILocalVariable(name: "p", arg: 1, scope: !2630, file: !2631, line: 80, type: !2444)
!2639 = !DILocation(line: 80, column: 59, scope: !2630, inlinedAt: !2634)
!2640 = !DILocation(line: 184, column: 53, scope: !2622, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 82, column: 9, scope: !2630, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 205, column: 38, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 202, column: 8)
!2644 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 193, column: 56)
!2645 = !DILocation(line: 80, column: 59, scope: !2630, inlinedAt: !2642)
!2646 = !DILocalVariable(name: "addr", arg: 1, scope: !2618, file: !1, line: 93, type: !2444)
!2647 = !DILocation(line: 93, column: 36, scope: !2618)
!2648 = !DILocalVariable(name: "out_irq", arg: 2, scope: !2618, file: !1, line: 93, type: !2434)
!2649 = !DILocation(line: 93, column: 66, scope: !2618)
!2650 = !DILocalVariable(name: "ipar", scope: !2618, file: !1, line: 95, type: !132)
!2651 = !DILocation(line: 95, column: 22, scope: !2618)
!2652 = !DILocalVariable(name: "tnode", scope: !2618, file: !1, line: 95, type: !132)
!2653 = !DILocation(line: 95, column: 29, scope: !2618)
!2654 = !DILocalVariable(name: "old", scope: !2618, file: !1, line: 95, type: !132)
!2655 = !DILocation(line: 95, column: 37, scope: !2618)
!2656 = !DILocalVariable(name: "newpar", scope: !2618, file: !1, line: 95, type: !132)
!2657 = !DILocation(line: 95, column: 50, scope: !2618)
!2658 = !DILocalVariable(name: "initial_match_array", scope: !2618, file: !1, line: 96, type: !2659)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 512, elements: !868)
!2660 = !DILocation(line: 96, column: 9, scope: !2618)
!2661 = !DILocalVariable(name: "match_array", scope: !2618, file: !1, line: 97, type: !2444)
!2662 = !DILocation(line: 97, column: 16, scope: !2618)
!2663 = !DILocation(line: 97, column: 30, scope: !2618)
!2664 = !DILocalVariable(name: "tmp", scope: !2618, file: !1, line: 98, type: !2444)
!2665 = !DILocation(line: 98, column: 16, scope: !2618)
!2666 = !DILocalVariable(name: "imap", scope: !2618, file: !1, line: 98, type: !2444)
!2667 = !DILocation(line: 98, column: 22, scope: !2618)
!2668 = !DILocalVariable(name: "imask", scope: !2618, file: !1, line: 98, type: !2444)
!2669 = !DILocation(line: 98, column: 29, scope: !2618)
!2670 = !DILocalVariable(name: "dummy_imask", scope: !2618, file: !1, line: 98, type: !2671)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2445, size: 544, elements: !2672)
!2672 = !{!2673}
!2673 = !DISubrange(count: 17)
!2674 = !DILocation(line: 98, column: 36, scope: !2618)
!2675 = !DILocalVariable(name: "intsize", scope: !2618, file: !1, line: 99, type: !142)
!2676 = !DILocation(line: 99, column: 6, scope: !2618)
!2677 = !DILocalVariable(name: "addrsize", scope: !2618, file: !1, line: 99, type: !142)
!2678 = !DILocation(line: 99, column: 19, scope: !2618)
!2679 = !DILocalVariable(name: "newintsize", scope: !2618, file: !1, line: 99, type: !142)
!2680 = !DILocation(line: 99, column: 29, scope: !2618)
!2681 = !DILocalVariable(name: "newaddrsize", scope: !2618, file: !1, line: 99, type: !142)
!2682 = !DILocation(line: 99, column: 45, scope: !2618)
!2683 = !DILocalVariable(name: "imaplen", scope: !2618, file: !1, line: 100, type: !131)
!2684 = !DILocation(line: 100, column: 6, scope: !2618)
!2685 = !DILocalVariable(name: "match", scope: !2618, file: !1, line: 100, type: !131)
!2686 = !DILocation(line: 100, column: 15, scope: !2618)
!2687 = !DILocalVariable(name: "i", scope: !2618, file: !1, line: 100, type: !131)
!2688 = !DILocation(line: 100, column: 22, scope: !2618)
!2689 = !DILocalVariable(name: "rc", scope: !2618, file: !1, line: 100, type: !131)
!2690 = !DILocation(line: 100, column: 25, scope: !2618)
!2691 = !DILocation(line: 106, column: 21, scope: !2618)
!2692 = !DILocation(line: 106, column: 30, scope: !2618)
!2693 = !DILocation(line: 106, column: 9, scope: !2618)
!2694 = !DILocation(line: 106, column: 7, scope: !2618)
!2695 = !DILocation(line: 112, column: 2, scope: !2618)
!2696 = !DILocation(line: 113, column: 29, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 113, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 112, column: 5)
!2699 = !DILocation(line: 113, column: 8, scope: !2697)
!2700 = !DILocation(line: 113, column: 7, scope: !2698)
!2701 = !DILocation(line: 114, column: 4, scope: !2697)
!2702 = !DILocation(line: 115, column: 11, scope: !2698)
!2703 = !DILocation(line: 115, column: 9, scope: !2698)
!2704 = !DILocation(line: 116, column: 29, scope: !2698)
!2705 = !DILocation(line: 116, column: 10, scope: !2698)
!2706 = !DILocation(line: 116, column: 8, scope: !2698)
!2707 = !DILocation(line: 117, column: 15, scope: !2698)
!2708 = !DILocation(line: 117, column: 3, scope: !2698)
!2709 = !DILocation(line: 118, column: 2, scope: !2698)
!2710 = !DILocation(line: 118, column: 11, scope: !2618)
!2711 = distinct !{!2711, !2695, !2712}
!2712 = !DILocation(line: 118, column: 15, scope: !2618)
!2713 = !DILocation(line: 119, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 119, column: 6)
!2715 = !DILocation(line: 119, column: 11, scope: !2714)
!2716 = !DILocation(line: 119, column: 6, scope: !2618)
!2717 = !DILocation(line: 120, column: 3, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !1, line: 120, column: 3)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !1, line: 120, column: 3)
!2720 = distinct !DILexicalBlock(scope: !2714, file: !1, line: 119, column: 20)
!2721 = !DILocation(line: 120, column: 3, scope: !2719)
!2722 = !DILocation(line: 121, column: 3, scope: !2720)
!2723 = !DILocation(line: 124, column: 2, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 124, column: 2)
!2725 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 124, column: 2)
!2726 = !DILocation(line: 124, column: 2, scope: !2725)
!2727 = !DILocation(line: 126, column: 6, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 126, column: 6)
!2729 = !DILocation(line: 126, column: 15, scope: !2728)
!2730 = !DILocation(line: 126, column: 29, scope: !2728)
!2731 = !DILocation(line: 126, column: 26, scope: !2728)
!2732 = !DILocation(line: 126, column: 6, scope: !2618)
!2733 = !DILocation(line: 127, column: 3, scope: !2728)
!2734 = !DILocation(line: 132, column: 20, scope: !2618)
!2735 = !DILocation(line: 132, column: 8, scope: !2618)
!2736 = !DILocation(line: 132, column: 6, scope: !2618)
!2737 = !DILocation(line: 133, column: 2, scope: !2618)
!2738 = !DILocation(line: 134, column: 25, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 133, column: 5)
!2740 = !DILocation(line: 134, column: 9, scope: !2739)
!2741 = !DILocation(line: 134, column: 7, scope: !2739)
!2742 = !DILocation(line: 135, column: 25, scope: !2739)
!2743 = !DILocation(line: 135, column: 11, scope: !2739)
!2744 = !DILocation(line: 135, column: 9, scope: !2739)
!2745 = !DILocation(line: 136, column: 15, scope: !2739)
!2746 = !DILocation(line: 136, column: 3, scope: !2739)
!2747 = !DILocation(line: 137, column: 9, scope: !2739)
!2748 = !DILocation(line: 137, column: 7, scope: !2739)
!2749 = !DILocation(line: 138, column: 2, scope: !2739)
!2750 = !DILocation(line: 138, column: 11, scope: !2618)
!2751 = !DILocation(line: 138, column: 15, scope: !2618)
!2752 = !DILocation(line: 138, column: 18, scope: !2618)
!2753 = !DILocation(line: 138, column: 22, scope: !2618)
!2754 = !DILocation(line: 0, scope: !2618)
!2755 = distinct !{!2755, !2737, !2756}
!2756 = !DILocation(line: 138, column: 29, scope: !2618)
!2757 = !DILocation(line: 139, column: 14, scope: !2618)
!2758 = !DILocation(line: 139, column: 2, scope: !2618)
!2759 = !DILocation(line: 140, column: 6, scope: !2618)
!2760 = !DILocation(line: 141, column: 14, scope: !2618)
!2761 = !DILocation(line: 141, column: 18, scope: !2618)
!2762 = !DILocation(line: 141, column: 13, scope: !2618)
!2763 = !DILocation(line: 141, column: 33, scope: !2618)
!2764 = !DILocation(line: 141, column: 11, scope: !2618)
!2765 = !DILocation(line: 143, column: 2, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 143, column: 2)
!2767 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 143, column: 2)
!2768 = !DILocation(line: 143, column: 2, scope: !2767)
!2769 = !DILocalVariable(name: "__ret_warn_on", scope: !2770, file: !1, line: 146, type: !131)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !1, line: 146, column: 6)
!2771 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 146, column: 6)
!2772 = !DILocation(line: 146, column: 6, scope: !2770)
!2773 = !DILocation(line: 146, column: 6, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2770, file: !1, line: 146, column: 6)
!2775 = !DILocation(line: 146, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 146, column: 6)
!2777 = !DILocation(line: 146, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 146, column: 6)
!2779 = !DILocation(line: 146, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 146, column: 6)
!2781 = !{i32 -2143197534, i32 -2143197505, i32 -2143197459, i32 -2143197401, i32 -2143197347, i32 -2143197293, i32 -2143197238, i32 -2143197207}
!2782 = !DILocation(line: 146, column: 6, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 146, column: 6)
!2784 = !{i32 -2143196809, i32 -2143196802, i32 -2143196750, i32 -2143196719, i32 -2143196689}
!2785 = !DILocation(line: 146, column: 6, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2776, file: !1, line: 146, column: 6)
!2787 = !DILocation(line: 146, column: 6, scope: !2771)
!2788 = !DILocation(line: 146, column: 6, scope: !2618)
!2789 = !DILocation(line: 147, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2771, file: !1, line: 146, column: 54)
!2791 = !DILocation(line: 148, column: 3, scope: !2790)
!2792 = !DILocation(line: 152, column: 9, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 152, column: 2)
!2794 = !DILocation(line: 152, column: 7, scope: !2793)
!2795 = !DILocation(line: 152, column: 14, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !1, line: 152, column: 2)
!2797 = !DILocation(line: 152, column: 18, scope: !2796)
!2798 = !DILocation(line: 152, column: 16, scope: !2796)
!2799 = !DILocation(line: 152, column: 2, scope: !2793)
!2800 = !DILocation(line: 153, column: 28, scope: !2796)
!2801 = !DILocation(line: 153, column: 35, scope: !2796)
!2802 = !DILocation(line: 153, column: 40, scope: !2796)
!2803 = !DILocation(line: 153, column: 23, scope: !2796)
!2804 = !DILocation(line: 153, column: 3, scope: !2796)
!2805 = !DILocation(line: 153, column: 26, scope: !2796)
!2806 = !DILocation(line: 152, column: 29, scope: !2796)
!2807 = !DILocation(line: 152, column: 2, scope: !2796)
!2808 = distinct !{!2808, !2799, !2809}
!2809 = !DILocation(line: 153, column: 45, scope: !2793)
!2810 = !DILocation(line: 154, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 154, column: 2)
!2812 = !DILocation(line: 154, column: 7, scope: !2811)
!2813 = !DILocation(line: 154, column: 14, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2811, file: !1, line: 154, column: 2)
!2815 = !DILocation(line: 154, column: 18, scope: !2814)
!2816 = !DILocation(line: 154, column: 16, scope: !2814)
!2817 = !DILocation(line: 154, column: 2, scope: !2811)
!2818 = !DILocation(line: 155, column: 39, scope: !2814)
!2819 = !DILocation(line: 155, column: 23, scope: !2814)
!2820 = !DILocation(line: 155, column: 34, scope: !2814)
!2821 = !DILocation(line: 155, column: 32, scope: !2814)
!2822 = !DILocation(line: 155, column: 3, scope: !2814)
!2823 = !DILocation(line: 155, column: 37, scope: !2814)
!2824 = !DILocation(line: 154, column: 28, scope: !2814)
!2825 = !DILocation(line: 154, column: 2, scope: !2814)
!2826 = distinct !{!2826, !2817, !2827}
!2827 = !DILocation(line: 155, column: 39, scope: !2811)
!2828 = !DILocation(line: 158, column: 2, scope: !2618)
!2829 = !DILocation(line: 158, column: 9, scope: !2618)
!2830 = !DILocation(line: 158, column: 14, scope: !2618)
!2831 = !DILocation(line: 162, column: 29, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 162, column: 7)
!2833 = !DILocation(line: 162, column: 7, scope: !2832)
!2834 = !DILocation(line: 162, column: 7, scope: !2637)
!2835 = !DILocation(line: 163, column: 4, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !1, line: 163, column: 4)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !1, line: 163, column: 4)
!2838 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 162, column: 60)
!2839 = !DILocation(line: 163, column: 4, scope: !2837)
!2840 = !DILocation(line: 164, column: 4, scope: !2838)
!2841 = !DILocation(line: 171, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 171, column: 7)
!2843 = !DILocation(line: 171, column: 16, scope: !2842)
!2844 = !DILocation(line: 171, column: 20, scope: !2842)
!2845 = !DILocation(line: 171, column: 7, scope: !2637)
!2846 = !DILocation(line: 172, column: 4, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !1, line: 172, column: 4)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 172, column: 4)
!2849 = distinct !DILexicalBlock(scope: !2842, file: !1, line: 171, column: 26)
!2850 = !DILocation(line: 172, column: 4, scope: !2848)
!2851 = !DILocation(line: 173, column: 4, scope: !2849)
!2852 = !DILocation(line: 177, column: 26, scope: !2637)
!2853 = !DILocation(line: 177, column: 10, scope: !2637)
!2854 = !DILocation(line: 177, column: 8, scope: !2637)
!2855 = !DILocation(line: 179, column: 7, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 179, column: 7)
!2857 = !DILocation(line: 179, column: 12, scope: !2856)
!2858 = !DILocation(line: 179, column: 7, scope: !2637)
!2859 = !DILocation(line: 180, column: 4, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 180, column: 4)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 180, column: 4)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !1, line: 179, column: 21)
!2863 = !DILocation(line: 180, column: 4, scope: !2861)
!2864 = !DILocation(line: 181, column: 32, scope: !2862)
!2865 = !DILocation(line: 181, column: 13, scope: !2862)
!2866 = !DILocation(line: 181, column: 11, scope: !2862)
!2867 = !DILocation(line: 182, column: 4, scope: !2862)
!2868 = !DILocation(line: 184, column: 11, scope: !2637)
!2869 = !DILocation(line: 187, column: 27, scope: !2637)
!2870 = !DILocation(line: 187, column: 11, scope: !2637)
!2871 = !DILocation(line: 187, column: 9, scope: !2637)
!2872 = !DILocation(line: 188, column: 8, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 188, column: 7)
!2874 = !DILocation(line: 188, column: 7, scope: !2637)
!2875 = !DILocation(line: 189, column: 12, scope: !2873)
!2876 = !DILocation(line: 189, column: 10, scope: !2873)
!2877 = !DILocation(line: 189, column: 4, scope: !2873)
!2878 = !DILocation(line: 192, column: 9, scope: !2637)
!2879 = !DILocation(line: 193, column: 3, scope: !2637)
!2880 = !DILocation(line: 193, column: 10, scope: !2637)
!2881 = !DILocation(line: 193, column: 21, scope: !2637)
!2882 = !DILocation(line: 193, column: 32, scope: !2637)
!2883 = !DILocation(line: 193, column: 30, scope: !2637)
!2884 = !DILocation(line: 193, column: 40, scope: !2637)
!2885 = !DILocation(line: 193, column: 18, scope: !2637)
!2886 = !DILocation(line: 193, column: 45, scope: !2637)
!2887 = !DILocation(line: 193, column: 49, scope: !2637)
!2888 = !DILocation(line: 193, column: 48, scope: !2637)
!2889 = !DILocation(line: 0, scope: !2637)
!2890 = !DILocation(line: 195, column: 10, scope: !2644)
!2891 = !DILocation(line: 196, column: 11, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 196, column: 4)
!2893 = !DILocation(line: 196, column: 9, scope: !2892)
!2894 = !DILocation(line: 196, column: 16, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !1, line: 196, column: 4)
!2896 = !DILocation(line: 196, column: 21, scope: !2895)
!2897 = !DILocation(line: 196, column: 32, scope: !2895)
!2898 = !DILocation(line: 196, column: 30, scope: !2895)
!2899 = !DILocation(line: 196, column: 18, scope: !2895)
!2900 = !DILocation(line: 196, column: 4, scope: !2892)
!2901 = !DILocation(line: 197, column: 17, scope: !2895)
!2902 = !DILocation(line: 197, column: 29, scope: !2895)
!2903 = !DILocation(line: 197, column: 39, scope: !2895)
!2904 = !DILocation(line: 197, column: 34, scope: !2895)
!2905 = !DILocation(line: 197, column: 32, scope: !2895)
!2906 = !DILocation(line: 197, column: 45, scope: !2895)
!2907 = !DILocation(line: 197, column: 51, scope: !2895)
!2908 = !DILocation(line: 197, column: 43, scope: !2895)
!2909 = !DILocation(line: 197, column: 14, scope: !2895)
!2910 = !DILocation(line: 197, column: 11, scope: !2895)
!2911 = !DILocation(line: 197, column: 5, scope: !2895)
!2912 = !DILocation(line: 196, column: 43, scope: !2895)
!2913 = !DILocation(line: 196, column: 54, scope: !2895)
!2914 = !DILocation(line: 196, column: 4, scope: !2895)
!2915 = distinct !{!2915, !2900, !2916}
!2916 = !DILocation(line: 197, column: 53, scope: !2892)
!2917 = !DILocation(line: 199, column: 4, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !1, line: 199, column: 4)
!2919 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 199, column: 4)
!2920 = !DILocation(line: 199, column: 4, scope: !2919)
!2921 = !DILocation(line: 205, column: 51, scope: !2643)
!2922 = !DILocation(line: 82, column: 28, scope: !2630, inlinedAt: !2642)
!2923 = !DILocation(line: 189, column: 9, scope: !2622, inlinedAt: !2641)
!2924 = !DILocation(line: 205, column: 14, scope: !2643)
!2925 = !DILocation(line: 205, column: 12, scope: !2643)
!2926 = !DILocation(line: 206, column: 8, scope: !2644)
!2927 = !DILocation(line: 207, column: 4, scope: !2644)
!2928 = !DILocation(line: 210, column: 8, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 210, column: 8)
!2930 = !DILocation(line: 210, column: 15, scope: !2929)
!2931 = !DILocation(line: 210, column: 8, scope: !2644)
!2932 = !DILocation(line: 211, column: 5, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !1, line: 211, column: 5)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !1, line: 211, column: 5)
!2935 = distinct !DILexicalBlock(scope: !2929, file: !1, line: 210, column: 24)
!2936 = !DILocation(line: 211, column: 5, scope: !2934)
!2937 = !DILocation(line: 212, column: 5, scope: !2935)
!2938 = !DILocation(line: 215, column: 32, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 215, column: 8)
!2940 = !DILocation(line: 215, column: 9, scope: !2939)
!2941 = !DILocation(line: 215, column: 8, scope: !2644)
!2942 = !DILocation(line: 216, column: 11, scope: !2939)
!2943 = !DILocation(line: 216, column: 5, scope: !2939)
!2944 = !DILocation(line: 221, column: 29, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 221, column: 8)
!2946 = !DILocation(line: 221, column: 8, scope: !2945)
!2947 = !DILocation(line: 221, column: 8, scope: !2644)
!2948 = !DILocation(line: 223, column: 5, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 223, column: 5)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !1, line: 223, column: 5)
!2951 = distinct !DILexicalBlock(scope: !2945, file: !1, line: 222, column: 22)
!2952 = !DILocation(line: 223, column: 5, scope: !2950)
!2953 = !DILocation(line: 224, column: 5, scope: !2951)
!2954 = !DILocation(line: 226, column: 29, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 226, column: 8)
!2956 = !DILocation(line: 226, column: 8, scope: !2955)
!2957 = !DILocation(line: 226, column: 8, scope: !2644)
!2958 = !DILocation(line: 228, column: 17, scope: !2955)
!2959 = !DILocation(line: 228, column: 5, scope: !2955)
!2960 = !DILocation(line: 230, column: 4, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 230, column: 4)
!2962 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 230, column: 4)
!2963 = !DILocation(line: 230, column: 4, scope: !2962)
!2964 = !DILocalVariable(name: "__ret_warn_on", scope: !2965, file: !1, line: 234, type: !131)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 234, column: 8)
!2966 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 234, column: 8)
!2967 = !DILocation(line: 234, column: 8, scope: !2965)
!2968 = !DILocation(line: 234, column: 8, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !1, line: 234, column: 8)
!2970 = !DILocation(line: 234, column: 8, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 234, column: 8)
!2972 = !DILocation(line: 234, column: 8, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 234, column: 8)
!2974 = !DILocation(line: 234, column: 8, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 234, column: 8)
!2976 = !{i32 -2143193518, i32 -2143193489, i32 -2143193443, i32 -2143193385, i32 -2143193331, i32 -2143193277, i32 -2143193222, i32 -2143193191}
!2977 = !DILocation(line: 234, column: 8, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 234, column: 8)
!2979 = !{i32 -2143192793, i32 -2143192786, i32 -2143192734, i32 -2143192703, i32 -2143192673}
!2980 = !DILocation(line: 234, column: 8, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 234, column: 8)
!2982 = !DILocation(line: 234, column: 8, scope: !2966)
!2983 = !DILocation(line: 235, column: 8, scope: !2966)
!2984 = !DILocation(line: 235, column: 12, scope: !2966)
!2985 = !DILocation(line: 235, column: 23, scope: !2966)
!2986 = !DILocation(line: 235, column: 37, scope: !2966)
!2987 = !DILocation(line: 235, column: 35, scope: !2966)
!2988 = !DILocation(line: 235, column: 20, scope: !2966)
!2989 = !DILocation(line: 234, column: 8, scope: !2644)
!2990 = !DILocation(line: 236, column: 8, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 235, column: 51)
!2992 = !DILocation(line: 237, column: 5, scope: !2991)
!2993 = !DILocation(line: 240, column: 12, scope: !2644)
!2994 = !DILocation(line: 240, column: 26, scope: !2644)
!2995 = !DILocation(line: 240, column: 24, scope: !2644)
!2996 = !DILocation(line: 240, column: 9, scope: !2644)
!2997 = !DILocation(line: 241, column: 15, scope: !2644)
!2998 = !DILocation(line: 241, column: 29, scope: !2644)
!2999 = !DILocation(line: 241, column: 27, scope: !2644)
!3000 = !DILocation(line: 241, column: 12, scope: !2644)
!3001 = !DILocation(line: 243, column: 4, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 243, column: 4)
!3003 = distinct !DILexicalBlock(scope: !2644, file: !1, line: 243, column: 4)
!3004 = !DILocation(line: 243, column: 4, scope: !3003)
!3005 = distinct !{!3005, !2879, !3006}
!3006 = !DILocation(line: 244, column: 3, scope: !2637)
!3007 = !DILocation(line: 245, column: 8, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 245, column: 7)
!3009 = !DILocation(line: 245, column: 7, scope: !2637)
!3010 = !DILocation(line: 246, column: 4, scope: !3008)
!3011 = !DILocation(line: 252, column: 17, scope: !2637)
!3012 = !DILocation(line: 252, column: 24, scope: !2637)
!3013 = !DILocation(line: 252, column: 22, scope: !2637)
!3014 = !DILocation(line: 252, column: 38, scope: !2637)
!3015 = !DILocation(line: 252, column: 36, scope: !2637)
!3016 = !DILocation(line: 252, column: 15, scope: !2637)
!3017 = !DILocation(line: 253, column: 10, scope: !2636)
!3018 = !DILocation(line: 253, column: 8, scope: !2636)
!3019 = !DILocation(line: 253, column: 15, scope: !2635)
!3020 = !DILocation(line: 253, column: 19, scope: !2635)
!3021 = !DILocation(line: 253, column: 17, scope: !2635)
!3022 = !DILocation(line: 253, column: 3, scope: !2636)
!3023 = !DILocation(line: 254, column: 36, scope: !2635)
!3024 = !DILocation(line: 254, column: 43, scope: !2635)
!3025 = !DILocation(line: 254, column: 41, scope: !2635)
!3026 = !DILocation(line: 254, column: 56, scope: !2635)
!3027 = !DILocation(line: 254, column: 54, scope: !2635)
!3028 = !DILocation(line: 82, column: 28, scope: !2630, inlinedAt: !2634)
!3029 = !DILocation(line: 189, column: 9, scope: !2622, inlinedAt: !2629)
!3030 = !DILocation(line: 254, column: 4, scope: !2635)
!3031 = !DILocation(line: 254, column: 13, scope: !2635)
!3032 = !DILocation(line: 254, column: 18, scope: !2635)
!3033 = !DILocation(line: 254, column: 21, scope: !2635)
!3034 = !DILocation(line: 253, column: 32, scope: !2635)
!3035 = !DILocation(line: 253, column: 3, scope: !2635)
!3036 = distinct !{!3036, !3022, !3037}
!3037 = !DILocation(line: 254, column: 57, scope: !2636)
!3038 = !DILocation(line: 255, column: 35, scope: !2637)
!3039 = !DILocation(line: 255, column: 33, scope: !2637)
!3040 = !DILocation(line: 255, column: 3, scope: !2637)
!3041 = !DILocation(line: 255, column: 12, scope: !2637)
!3042 = !DILocation(line: 255, column: 23, scope: !2637)
!3043 = !DILocation(line: 256, column: 14, scope: !2637)
!3044 = !DILocation(line: 256, column: 12, scope: !2637)
!3045 = !DILocation(line: 256, column: 3, scope: !2637)
!3046 = !DILabel(scope: !2637, name: "skiplevel", file: !1, line: 258)
!3047 = !DILocation(line: 258, column: 2, scope: !2637)
!3048 = !DILocation(line: 260, column: 17, scope: !2637)
!3049 = !DILocation(line: 260, column: 3, scope: !2637)
!3050 = !DILocation(line: 260, column: 12, scope: !2637)
!3051 = !DILocation(line: 260, column: 15, scope: !2637)
!3052 = !DILocation(line: 261, column: 3, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !1, line: 261, column: 3)
!3054 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 261, column: 3)
!3055 = !DILocation(line: 261, column: 3, scope: !3054)
!3056 = !DILocation(line: 262, column: 15, scope: !2637)
!3057 = !DILocation(line: 262, column: 3, scope: !2637)
!3058 = !DILocation(line: 263, column: 10, scope: !2637)
!3059 = !DILocation(line: 263, column: 8, scope: !2637)
!3060 = !DILocation(line: 264, column: 10, scope: !2637)
!3061 = distinct !{!3061, !2828, !3062}
!3062 = !DILocation(line: 265, column: 2, scope: !2618)
!3063 = !DILocation(line: 266, column: 5, scope: !2618)
!3064 = !DILocation(line: 266, column: 2, scope: !2618)
!3065 = !DILabel(scope: !2618, name: "fail", file: !1, line: 268)
!3066 = !DILocation(line: 268, column: 2, scope: !2618)
!3067 = !DILocation(line: 269, column: 14, scope: !2618)
!3068 = !DILocation(line: 269, column: 2, scope: !2618)
!3069 = !DILocation(line: 270, column: 14, scope: !2618)
!3070 = !DILocation(line: 270, column: 2, scope: !2618)
!3071 = !DILocation(line: 272, column: 9, scope: !2618)
!3072 = !DILocation(line: 272, column: 2, scope: !2618)
!3073 = !DILocation(line: 273, column: 1, scope: !2618)
!3074 = distinct !DISubprogram(name: "__fswab32", scope: !2623, file: !2623, line: 57, type: !3075, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!110, !110}
!3077 = !DILocalVariable(name: "val", arg: 1, scope: !3074, file: !2623, line: 57, type: !110)
!3078 = !DILocation(line: 57, column: 57, scope: !3074)
!3079 = !DILocation(line: 60, column: 23, scope: !3074)
!3080 = !DILocation(line: 60, column: 9, scope: !3074)
!3081 = !DILocation(line: 60, column: 2, scope: !3074)
!3082 = distinct !DISubprogram(name: "of_property_read_bool", scope: !134, file: !134, line: 1192, type: !3083, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!168, !2599, !137}
!3085 = !DILocalVariable(name: "np", arg: 1, scope: !3082, file: !134, line: 1192, type: !2599)
!3086 = !DILocation(line: 1192, column: 68, scope: !3082)
!3087 = !DILocalVariable(name: "propname", arg: 2, scope: !3082, file: !134, line: 1193, type: !137)
!3088 = !DILocation(line: 1193, column: 19, scope: !3082)
!3089 = !DILocalVariable(name: "prop", scope: !3082, file: !134, line: 1195, type: !2376)
!3090 = !DILocation(line: 1195, column: 19, scope: !3082)
!3091 = !DILocation(line: 1195, column: 43, scope: !3082)
!3092 = !DILocation(line: 1195, column: 47, scope: !3082)
!3093 = !DILocation(line: 1195, column: 26, scope: !3082)
!3094 = !DILocation(line: 1197, column: 9, scope: !3082)
!3095 = !DILocation(line: 1197, column: 2, scope: !3082)
!3096 = distinct !DISubprogram(name: "of_irq_to_resource", scope: !1, file: !1, line: 349, type: !3097, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!131, !132, !131, !3099}
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3101, line: 20, size: 512, elements: !3102)
!3101 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3102 = !{!3103, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3100, file: !3101, line: 21, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !115, line: 158, baseType: !1203)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3100, file: !3101, line: 22, baseType: !3104, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3100, file: !3101, line: 23, baseType: !137, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3100, file: !3101, line: 24, baseType: !287, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3100, file: !3101, line: 25, baseType: !287, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3100, file: !3101, line: 26, baseType: !3099, size: 64, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3100, file: !3101, line: 26, baseType: !3099, size: 64, offset: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3100, file: !3101, line: 26, baseType: !3099, size: 64, offset: 448)
!3112 = !DILocalVariable(name: "dev", arg: 1, scope: !3096, file: !1, line: 349, type: !132)
!3113 = !DILocation(line: 349, column: 44, scope: !3096)
!3114 = !DILocalVariable(name: "index", arg: 2, scope: !3096, file: !1, line: 349, type: !131)
!3115 = !DILocation(line: 349, column: 53, scope: !3096)
!3116 = !DILocalVariable(name: "r", arg: 3, scope: !3096, file: !1, line: 349, type: !3099)
!3117 = !DILocation(line: 349, column: 77, scope: !3096)
!3118 = !DILocalVariable(name: "irq", scope: !3096, file: !1, line: 351, type: !131)
!3119 = !DILocation(line: 351, column: 6, scope: !3096)
!3120 = !DILocation(line: 351, column: 23, scope: !3096)
!3121 = !DILocation(line: 351, column: 28, scope: !3096)
!3122 = !DILocation(line: 351, column: 12, scope: !3096)
!3123 = !DILocation(line: 353, column: 6, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 353, column: 6)
!3125 = !DILocation(line: 353, column: 10, scope: !3124)
!3126 = !DILocation(line: 353, column: 6, scope: !3096)
!3127 = !DILocation(line: 354, column: 10, scope: !3124)
!3128 = !DILocation(line: 354, column: 3, scope: !3124)
!3129 = !DILocation(line: 358, column: 6, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 358, column: 6)
!3131 = !DILocation(line: 358, column: 8, scope: !3130)
!3132 = !DILocation(line: 358, column: 11, scope: !3130)
!3133 = !DILocation(line: 358, column: 6, scope: !3096)
!3134 = !DILocalVariable(name: "name", scope: !3135, file: !1, line: 359, type: !137)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !1, line: 358, column: 16)
!3136 = !DILocation(line: 359, column: 15, scope: !3135)
!3137 = !DILocation(line: 361, column: 10, scope: !3135)
!3138 = !DILocation(line: 361, column: 3, scope: !3135)
!3139 = !DILocation(line: 366, column: 33, scope: !3135)
!3140 = !DILocation(line: 366, column: 57, scope: !3135)
!3141 = !DILocation(line: 366, column: 3, scope: !3135)
!3142 = !DILocation(line: 369, column: 23, scope: !3135)
!3143 = !DILocation(line: 369, column: 14, scope: !3135)
!3144 = !DILocation(line: 369, column: 17, scope: !3135)
!3145 = !DILocation(line: 369, column: 21, scope: !3135)
!3146 = !DILocation(line: 369, column: 3, scope: !3135)
!3147 = !DILocation(line: 369, column: 6, scope: !3135)
!3148 = !DILocation(line: 369, column: 12, scope: !3135)
!3149 = !DILocation(line: 370, column: 70, scope: !3135)
!3150 = !DILocation(line: 370, column: 53, scope: !3135)
!3151 = !DILocation(line: 370, column: 31, scope: !3135)
!3152 = !DILocation(line: 370, column: 29, scope: !3135)
!3153 = !DILocation(line: 370, column: 14, scope: !3135)
!3154 = !DILocation(line: 370, column: 3, scope: !3135)
!3155 = !DILocation(line: 370, column: 6, scope: !3135)
!3156 = !DILocation(line: 370, column: 12, scope: !3135)
!3157 = !DILocation(line: 371, column: 13, scope: !3135)
!3158 = !DILocation(line: 371, column: 20, scope: !3135)
!3159 = !DILocation(line: 371, column: 45, scope: !3135)
!3160 = !DILocation(line: 371, column: 27, scope: !3135)
!3161 = !DILocation(line: 371, column: 3, scope: !3135)
!3162 = !DILocation(line: 371, column: 6, scope: !3135)
!3163 = !DILocation(line: 371, column: 11, scope: !3135)
!3164 = !DILocation(line: 372, column: 2, scope: !3135)
!3165 = !DILocation(line: 374, column: 9, scope: !3096)
!3166 = !DILocation(line: 374, column: 2, scope: !3096)
!3167 = !DILocation(line: 375, column: 1, scope: !3096)
!3168 = distinct !DISubprogram(name: "of_irq_get", scope: !1, file: !1, line: 387, type: !3169, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!131, !132, !131}
!3171 = !DILocalVariable(name: "dev", arg: 1, scope: !3168, file: !1, line: 387, type: !132)
!3172 = !DILocation(line: 387, column: 36, scope: !3168)
!3173 = !DILocalVariable(name: "index", arg: 2, scope: !3168, file: !1, line: 387, type: !131)
!3174 = !DILocation(line: 387, column: 45, scope: !3168)
!3175 = !DILocalVariable(name: "rc", scope: !3168, file: !1, line: 389, type: !131)
!3176 = !DILocation(line: 389, column: 6, scope: !3168)
!3177 = !DILocalVariable(name: "oirq", scope: !3168, file: !1, line: 390, type: !2414)
!3178 = !DILocation(line: 390, column: 25, scope: !3168)
!3179 = !DILocalVariable(name: "domain", scope: !3168, file: !1, line: 391, type: !1956)
!3180 = !DILocation(line: 391, column: 21, scope: !3168)
!3181 = !DILocation(line: 393, column: 24, scope: !3168)
!3182 = !DILocation(line: 393, column: 29, scope: !3168)
!3183 = !DILocation(line: 393, column: 7, scope: !3168)
!3184 = !DILocation(line: 393, column: 5, scope: !3168)
!3185 = !DILocation(line: 394, column: 6, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3168, file: !1, line: 394, column: 6)
!3187 = !DILocation(line: 394, column: 6, scope: !3168)
!3188 = !DILocation(line: 395, column: 10, scope: !3186)
!3189 = !DILocation(line: 395, column: 3, scope: !3186)
!3190 = !DILocation(line: 397, column: 30, scope: !3168)
!3191 = !DILocation(line: 397, column: 11, scope: !3168)
!3192 = !DILocation(line: 397, column: 9, scope: !3168)
!3193 = !DILocation(line: 398, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3168, file: !1, line: 398, column: 6)
!3195 = !DILocation(line: 398, column: 6, scope: !3168)
!3196 = !DILocation(line: 399, column: 3, scope: !3194)
!3197 = !DILocation(line: 401, column: 9, scope: !3168)
!3198 = !DILocation(line: 401, column: 2, scope: !3168)
!3199 = !DILocation(line: 402, column: 1, scope: !3168)
!3200 = distinct !DISubprogram(name: "of_property_read_string_index", scope: !134, file: !134, line: 1176, type: !3201, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!131, !2599, !137, !131, !2328}
!3203 = !DILocalVariable(name: "np", arg: 1, scope: !3200, file: !134, line: 1176, type: !2599)
!3204 = !DILocation(line: 1176, column: 75, scope: !3200)
!3205 = !DILocalVariable(name: "propname", arg: 2, scope: !3200, file: !134, line: 1177, type: !137)
!3206 = !DILocation(line: 1177, column: 19, scope: !3200)
!3207 = !DILocalVariable(name: "index", arg: 3, scope: !3200, file: !134, line: 1178, type: !131)
!3208 = !DILocation(line: 1178, column: 11, scope: !3200)
!3209 = !DILocalVariable(name: "output", arg: 4, scope: !3200, file: !134, line: 1178, type: !2328)
!3210 = !DILocation(line: 1178, column: 31, scope: !3200)
!3211 = !DILocalVariable(name: "rc", scope: !3200, file: !134, line: 1180, type: !131)
!3212 = !DILocation(line: 1180, column: 6, scope: !3200)
!3213 = !DILocation(line: 1180, column: 42, scope: !3200)
!3214 = !DILocation(line: 1180, column: 46, scope: !3200)
!3215 = !DILocation(line: 1180, column: 56, scope: !3200)
!3216 = !DILocation(line: 1180, column: 67, scope: !3200)
!3217 = !DILocation(line: 1180, column: 11, scope: !3200)
!3218 = !DILocation(line: 1181, column: 9, scope: !3200)
!3219 = !DILocation(line: 1181, column: 12, scope: !3200)
!3220 = !DILocation(line: 1181, column: 18, scope: !3200)
!3221 = !DILocation(line: 1181, column: 2, scope: !3200)
!3222 = distinct !DISubprogram(name: "irqd_get_trigger_type", scope: !63, file: !63, line: 282, type: !3223, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!142, !2010}
!3225 = !DILocalVariable(name: "d", arg: 1, scope: !3222, file: !63, line: 282, type: !2010)
!3226 = !DILocation(line: 282, column: 58, scope: !3222)
!3227 = !DILocation(line: 284, column: 9, scope: !3222)
!3228 = !DILocation(line: 284, column: 28, scope: !3222)
!3229 = !DILocation(line: 284, column: 2, scope: !3222)
!3230 = distinct !DISubprogram(name: "of_node_full_name", scope: !134, file: !134, line: 259, type: !3231, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!137, !2599}
!3233 = !DILocalVariable(name: "np", arg: 1, scope: !3230, file: !134, line: 259, type: !2599)
!3234 = !DILocation(line: 259, column: 71, scope: !3230)
!3235 = !DILocation(line: 261, column: 9, scope: !3230)
!3236 = !DILocation(line: 261, column: 14, scope: !3230)
!3237 = !DILocation(line: 261, column: 18, scope: !3230)
!3238 = !DILocation(line: 261, column: 2, scope: !3230)
!3239 = distinct !DISubprogram(name: "irq_find_host", scope: !49, file: !49, line: 315, type: !3240, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!1956, !132}
!3242 = !DILocalVariable(name: "node", arg: 1, scope: !3239, file: !49, line: 315, type: !132)
!3243 = !DILocation(line: 315, column: 68, scope: !3239)
!3244 = !DILocalVariable(name: "d", scope: !3239, file: !49, line: 317, type: !1956)
!3245 = !DILocation(line: 317, column: 21, scope: !3239)
!3246 = !DILocation(line: 319, column: 29, scope: !3239)
!3247 = !DILocation(line: 319, column: 6, scope: !3239)
!3248 = !DILocation(line: 319, column: 4, scope: !3239)
!3249 = !DILocation(line: 320, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3239, file: !49, line: 320, column: 6)
!3251 = !DILocation(line: 320, column: 6, scope: !3239)
!3252 = !DILocation(line: 321, column: 30, scope: !3250)
!3253 = !DILocation(line: 321, column: 7, scope: !3250)
!3254 = !DILocation(line: 321, column: 5, scope: !3250)
!3255 = !DILocation(line: 321, column: 3, scope: !3250)
!3256 = !DILocation(line: 323, column: 9, scope: !3239)
!3257 = !DILocation(line: 323, column: 2, scope: !3239)
!3258 = distinct !DISubprogram(name: "of_irq_get_byname", scope: !1, file: !1, line: 414, type: !3259, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!131, !132, !137}
!3261 = !DILocalVariable(name: "dev", arg: 1, scope: !3258, file: !1, line: 414, type: !132)
!3262 = !DILocation(line: 414, column: 43, scope: !3258)
!3263 = !DILocalVariable(name: "name", arg: 2, scope: !3258, file: !1, line: 414, type: !137)
!3264 = !DILocation(line: 414, column: 60, scope: !3258)
!3265 = !DILocalVariable(name: "index", scope: !3258, file: !1, line: 416, type: !131)
!3266 = !DILocation(line: 416, column: 6, scope: !3258)
!3267 = !DILocation(line: 418, column: 6, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3258, file: !1, line: 418, column: 6)
!3269 = !DILocation(line: 418, column: 6, scope: !3258)
!3270 = !DILocation(line: 419, column: 3, scope: !3268)
!3271 = !DILocation(line: 421, column: 35, scope: !3258)
!3272 = !DILocation(line: 421, column: 59, scope: !3258)
!3273 = !DILocation(line: 421, column: 10, scope: !3258)
!3274 = !DILocation(line: 421, column: 8, scope: !3258)
!3275 = !DILocation(line: 422, column: 6, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3258, file: !1, line: 422, column: 6)
!3277 = !DILocation(line: 422, column: 12, scope: !3276)
!3278 = !DILocation(line: 422, column: 6, scope: !3258)
!3279 = !DILocation(line: 423, column: 10, scope: !3276)
!3280 = !DILocation(line: 423, column: 3, scope: !3276)
!3281 = !DILocation(line: 425, column: 20, scope: !3258)
!3282 = !DILocation(line: 425, column: 25, scope: !3258)
!3283 = !DILocation(line: 425, column: 9, scope: !3258)
!3284 = !DILocation(line: 425, column: 2, scope: !3258)
!3285 = !DILocation(line: 426, column: 1, scope: !3258)
!3286 = distinct !DISubprogram(name: "of_irq_count", scope: !1, file: !1, line: 433, type: !3287, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!131, !132}
!3289 = !DILocalVariable(name: "dev", arg: 1, scope: !3286, file: !1, line: 433, type: !132)
!3290 = !DILocation(line: 433, column: 38, scope: !3286)
!3291 = !DILocalVariable(name: "irq", scope: !3286, file: !1, line: 435, type: !2414)
!3292 = !DILocation(line: 435, column: 25, scope: !3286)
!3293 = !DILocalVariable(name: "nr", scope: !3286, file: !1, line: 436, type: !131)
!3294 = !DILocation(line: 436, column: 6, scope: !3286)
!3295 = !DILocation(line: 438, column: 2, scope: !3286)
!3296 = !DILocation(line: 438, column: 26, scope: !3286)
!3297 = !DILocation(line: 438, column: 31, scope: !3286)
!3298 = !DILocation(line: 438, column: 9, scope: !3286)
!3299 = !DILocation(line: 438, column: 41, scope: !3286)
!3300 = !DILocation(line: 439, column: 5, scope: !3286)
!3301 = distinct !{!3301, !3295, !3300}
!3302 = !DILocation(line: 441, column: 9, scope: !3286)
!3303 = !DILocation(line: 441, column: 2, scope: !3286)
!3304 = distinct !DISubprogram(name: "of_irq_to_resource_table", scope: !1, file: !1, line: 452, type: !3305, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!131, !132, !3099, !131}
!3307 = !DILocalVariable(name: "dev", arg: 1, scope: !3304, file: !1, line: 452, type: !132)
!3308 = !DILocation(line: 452, column: 50, scope: !3304)
!3309 = !DILocalVariable(name: "res", arg: 2, scope: !3304, file: !1, line: 452, type: !3099)
!3310 = !DILocation(line: 452, column: 72, scope: !3304)
!3311 = !DILocalVariable(name: "nr_irqs", arg: 3, scope: !3304, file: !1, line: 453, type: !131)
!3312 = !DILocation(line: 453, column: 7, scope: !3304)
!3313 = !DILocalVariable(name: "i", scope: !3304, file: !1, line: 455, type: !131)
!3314 = !DILocation(line: 455, column: 6, scope: !3304)
!3315 = !DILocation(line: 457, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3304, file: !1, line: 457, column: 2)
!3317 = !DILocation(line: 457, column: 7, scope: !3316)
!3318 = !DILocation(line: 457, column: 14, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !1, line: 457, column: 2)
!3320 = !DILocation(line: 457, column: 18, scope: !3319)
!3321 = !DILocation(line: 457, column: 16, scope: !3319)
!3322 = !DILocation(line: 457, column: 2, scope: !3316)
!3323 = !DILocation(line: 458, column: 26, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !1, line: 458, column: 7)
!3325 = !DILocation(line: 458, column: 31, scope: !3324)
!3326 = !DILocation(line: 458, column: 34, scope: !3324)
!3327 = !DILocation(line: 458, column: 7, scope: !3324)
!3328 = !DILocation(line: 458, column: 39, scope: !3324)
!3329 = !DILocation(line: 458, column: 7, scope: !3319)
!3330 = !DILocation(line: 459, column: 4, scope: !3324)
!3331 = !DILocation(line: 458, column: 42, scope: !3324)
!3332 = !DILocation(line: 457, column: 28, scope: !3319)
!3333 = !DILocation(line: 457, column: 35, scope: !3319)
!3334 = !DILocation(line: 457, column: 2, scope: !3319)
!3335 = distinct !{!3335, !3322, !3336}
!3336 = !DILocation(line: 459, column: 4, scope: !3316)
!3337 = !DILocation(line: 461, column: 9, scope: !3304)
!3338 = !DILocation(line: 461, column: 2, scope: !3304)
!3339 = distinct !DISubprogram(name: "of_irq_init", scope: !1, file: !1, line: 479, type: !3340, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !1755}
!3342 = !DILocalVariable(name: "matches", arg: 1, scope: !3339, file: !1, line: 479, type: !1755)
!3343 = !DILocation(line: 479, column: 52, scope: !3339)
!3344 = !DILocalVariable(name: "match", scope: !3339, file: !1, line: 481, type: !1755)
!3345 = !DILocation(line: 481, column: 29, scope: !3339)
!3346 = !DILocalVariable(name: "np", scope: !3339, file: !1, line: 482, type: !132)
!3347 = !DILocation(line: 482, column: 22, scope: !3339)
!3348 = !DILocalVariable(name: "parent", scope: !3339, file: !1, line: 482, type: !132)
!3349 = !DILocation(line: 482, column: 27, scope: !3339)
!3350 = !DILocalVariable(name: "desc", scope: !3339, file: !1, line: 483, type: !116)
!3351 = !DILocation(line: 483, column: 23, scope: !3339)
!3352 = !DILocalVariable(name: "temp_desc", scope: !3339, file: !1, line: 483, type: !116)
!3353 = !DILocation(line: 483, column: 30, scope: !3339)
!3354 = !DILocalVariable(name: "intc_desc_list", scope: !3339, file: !1, line: 484, type: !120)
!3355 = !DILocation(line: 484, column: 19, scope: !3339)
!3356 = !DILocalVariable(name: "intc_parent_list", scope: !3339, file: !1, line: 484, type: !120)
!3357 = !DILocation(line: 484, column: 35, scope: !3339)
!3358 = !DILocation(line: 486, column: 2, scope: !3339)
!3359 = !DILocation(line: 487, column: 2, scope: !3339)
!3360 = !DILocation(line: 489, column: 2, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 489, column: 2)
!3362 = !DILocation(line: 489, column: 2, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3361, file: !1, line: 489, column: 2)
!3364 = !DILocation(line: 490, column: 30, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 490, column: 7)
!3366 = distinct !DILexicalBlock(scope: !3363, file: !1, line: 489, column: 56)
!3367 = !DILocation(line: 490, column: 8, scope: !3365)
!3368 = !DILocation(line: 490, column: 58, scope: !3365)
!3369 = !DILocation(line: 491, column: 29, scope: !3365)
!3370 = !DILocation(line: 491, column: 6, scope: !3365)
!3371 = !DILocation(line: 490, column: 7, scope: !3366)
!3372 = !DILocation(line: 492, column: 4, scope: !3365)
!3373 = !DILocalVariable(name: "__ret_warn_on", scope: !3374, file: !1, line: 494, type: !131)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !1, line: 494, column: 7)
!3375 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 494, column: 7)
!3376 = !DILocation(line: 494, column: 7, scope: !3374)
!3377 = !DILocation(line: 494, column: 7, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !1, line: 494, column: 7)
!3379 = !DILocation(line: 494, column: 7, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3378, file: !1, line: 494, column: 7)
!3381 = !DILocation(line: 494, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 494, column: 7)
!3383 = !DILocation(line: 494, column: 7, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 494, column: 7)
!3385 = !DILocation(line: 494, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3384, file: !1, line: 494, column: 7)
!3387 = !DILocation(line: 494, column: 7, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !1, line: 494, column: 7)
!3389 = !{i32 -2143189313, i32 -2143189284, i32 -2143189238, i32 -2143189180, i32 -2143189126, i32 -2143189072, i32 -2143189017, i32 -2143188986}
!3390 = !DILocation(line: 494, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3384, file: !1, line: 494, column: 7)
!3392 = !{i32 -2143188577, i32 -2143188570, i32 -2143188518, i32 -2143188487, i32 -2143188457}
!3393 = !DILocation(line: 494, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3384, file: !1, line: 494, column: 7)
!3395 = !DILocation(line: 494, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3380, file: !1, line: 494, column: 7)
!3397 = !DILocation(line: 494, column: 7, scope: !3375)
!3398 = !DILocation(line: 494, column: 7, scope: !3366)
!3399 = !DILocation(line: 496, column: 4, scope: !3375)
!3400 = !DILocation(line: 502, column: 10, scope: !3366)
!3401 = !DILocation(line: 502, column: 8, scope: !3366)
!3402 = !DILocation(line: 503, column: 8, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 503, column: 7)
!3404 = !DILocation(line: 503, column: 7, scope: !3366)
!3405 = !DILocation(line: 504, column: 16, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3403, file: !1, line: 503, column: 14)
!3407 = !DILocation(line: 504, column: 4, scope: !3406)
!3408 = !DILocation(line: 505, column: 4, scope: !3406)
!3409 = !DILocation(line: 508, column: 23, scope: !3366)
!3410 = !DILocation(line: 508, column: 30, scope: !3366)
!3411 = !DILocation(line: 508, column: 3, scope: !3366)
!3412 = !DILocation(line: 508, column: 9, scope: !3366)
!3413 = !DILocation(line: 508, column: 21, scope: !3366)
!3414 = !DILocation(line: 509, column: 27, scope: !3366)
!3415 = !DILocation(line: 509, column: 15, scope: !3366)
!3416 = !DILocation(line: 509, column: 3, scope: !3366)
!3417 = !DILocation(line: 509, column: 9, scope: !3366)
!3418 = !DILocation(line: 509, column: 13, scope: !3366)
!3419 = !DILocation(line: 510, column: 47, scope: !3366)
!3420 = !DILocation(line: 510, column: 28, scope: !3366)
!3421 = !DILocation(line: 510, column: 3, scope: !3366)
!3422 = !DILocation(line: 510, column: 9, scope: !3366)
!3423 = !DILocation(line: 510, column: 26, scope: !3366)
!3424 = !DILocation(line: 511, column: 7, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 511, column: 7)
!3426 = !DILocation(line: 511, column: 13, scope: !3425)
!3427 = !DILocation(line: 511, column: 33, scope: !3425)
!3428 = !DILocation(line: 511, column: 30, scope: !3425)
!3429 = !DILocation(line: 511, column: 7, scope: !3366)
!3430 = !DILocation(line: 512, column: 4, scope: !3425)
!3431 = !DILocation(line: 512, column: 10, scope: !3425)
!3432 = !DILocation(line: 512, column: 27, scope: !3425)
!3433 = !DILocation(line: 513, column: 18, scope: !3366)
!3434 = !DILocation(line: 513, column: 24, scope: !3366)
!3435 = !DILocation(line: 513, column: 3, scope: !3366)
!3436 = !DILocation(line: 514, column: 2, scope: !3366)
!3437 = distinct !{!3437, !3360, !3438}
!3438 = !DILocation(line: 514, column: 2, scope: !3361)
!3439 = !DILocation(line: 521, column: 2, scope: !3339)
!3440 = !DILocation(line: 521, column: 10, scope: !3339)
!3441 = !DILocation(line: 521, column: 9, scope: !3339)
!3442 = !DILocalVariable(name: "__mptr", scope: !3443, file: !1, line: 527, type: !109)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !1, line: 527, column: 3)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !1, line: 527, column: 3)
!3445 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 521, column: 39)
!3446 = !DILocation(line: 527, column: 3, scope: !3443)
!3447 = !DILocation(line: 527, column: 3, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3443, file: !1, line: 527, column: 3)
!3449 = !DILocation(line: 527, column: 3, scope: !3444)
!3450 = !DILocalVariable(name: "__mptr", scope: !3451, file: !1, line: 527, type: !109)
!3451 = distinct !DILexicalBlock(scope: !3444, file: !1, line: 527, column: 3)
!3452 = !DILocation(line: 527, column: 3, scope: !3451)
!3453 = !DILocation(line: 527, column: 3, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !1, line: 527, column: 3)
!3455 = !DILocation(line: 527, column: 3, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3444, file: !1, line: 527, column: 3)
!3457 = !DILocalVariable(name: "ret", scope: !3458, file: !1, line: 528, type: !131)
!3458 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 527, column: 68)
!3459 = !DILocation(line: 528, column: 8, scope: !3458)
!3460 = !DILocation(line: 530, column: 8, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3458, file: !1, line: 530, column: 8)
!3462 = !DILocation(line: 530, column: 14, scope: !3461)
!3463 = !DILocation(line: 530, column: 34, scope: !3461)
!3464 = !DILocation(line: 530, column: 31, scope: !3461)
!3465 = !DILocation(line: 530, column: 8, scope: !3458)
!3466 = !DILocation(line: 531, column: 5, scope: !3461)
!3467 = !DILocation(line: 533, column: 14, scope: !3458)
!3468 = !DILocation(line: 533, column: 20, scope: !3458)
!3469 = !DILocation(line: 533, column: 4, scope: !3458)
!3470 = !DILocation(line: 535, column: 21, scope: !3458)
!3471 = !DILocation(line: 535, column: 27, scope: !3458)
!3472 = !DILocation(line: 535, column: 4, scope: !3458)
!3473 = !DILocation(line: 537, column: 4, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !1, line: 537, column: 4)
!3475 = distinct !DILexicalBlock(scope: !3458, file: !1, line: 537, column: 4)
!3476 = !DILocation(line: 537, column: 4, scope: !3475)
!3477 = !DILocation(line: 540, column: 10, scope: !3458)
!3478 = !DILocation(line: 540, column: 16, scope: !3458)
!3479 = !DILocation(line: 540, column: 28, scope: !3458)
!3480 = !DILocation(line: 540, column: 34, scope: !3458)
!3481 = !DILocation(line: 541, column: 7, scope: !3458)
!3482 = !DILocation(line: 541, column: 13, scope: !3458)
!3483 = !DILocation(line: 540, column: 8, scope: !3458)
!3484 = !DILocation(line: 542, column: 8, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3458, file: !1, line: 542, column: 8)
!3486 = !DILocation(line: 542, column: 8, scope: !3458)
!3487 = !DILocation(line: 543, column: 24, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3485, file: !1, line: 542, column: 13)
!3489 = !DILocation(line: 543, column: 30, scope: !3488)
!3490 = !DILocation(line: 543, column: 5, scope: !3488)
!3491 = !DILocation(line: 544, column: 11, scope: !3488)
!3492 = !DILocation(line: 544, column: 5, scope: !3488)
!3493 = !DILocation(line: 545, column: 5, scope: !3488)
!3494 = !DILocation(line: 552, column: 19, scope: !3458)
!3495 = !DILocation(line: 552, column: 25, scope: !3458)
!3496 = !DILocation(line: 552, column: 4, scope: !3458)
!3497 = !DILocation(line: 553, column: 3, scope: !3458)
!3498 = !DILocalVariable(name: "__mptr", scope: !3499, file: !1, line: 527, type: !109)
!3499 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 527, column: 3)
!3500 = !DILocation(line: 527, column: 3, scope: !3499)
!3501 = !DILocation(line: 527, column: 3, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 527, column: 3)
!3503 = distinct !{!3503, !3449, !3504}
!3504 = !DILocation(line: 553, column: 3, scope: !3444)
!3505 = !DILocalVariable(name: "head__", scope: !3506, file: !1, line: 556, type: !123)
!3506 = distinct !DILexicalBlock(scope: !3445, file: !1, line: 556, column: 10)
!3507 = !DILocation(line: 556, column: 10, scope: !3506)
!3508 = !DILocalVariable(name: "pos__", scope: !3506, file: !1, line: 556, type: !123)
!3509 = !DILocation(line: 556, column: 10, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 556, column: 10)
!3511 = !DILocation(line: 556, column: 10, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 556, column: 10)
!3513 = !DILocalVariable(name: "__mptr", scope: !3514, file: !1, line: 556, type: !109)
!3514 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 556, column: 10)
!3515 = !DILocation(line: 556, column: 10, scope: !3514)
!3516 = !DILocation(line: 556, column: 10, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !1, line: 556, column: 10)
!3518 = !DILocation(line: 556, column: 8, scope: !3445)
!3519 = !DILocation(line: 558, column: 8, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3445, file: !1, line: 558, column: 7)
!3521 = !DILocation(line: 558, column: 7, scope: !3445)
!3522 = !DILocation(line: 559, column: 4, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3520, file: !1, line: 558, column: 14)
!3524 = !DILocation(line: 560, column: 4, scope: !3523)
!3525 = !DILocation(line: 562, column: 13, scope: !3445)
!3526 = !DILocation(line: 562, column: 19, scope: !3445)
!3527 = !DILocation(line: 562, column: 3, scope: !3445)
!3528 = !DILocation(line: 563, column: 12, scope: !3445)
!3529 = !DILocation(line: 563, column: 18, scope: !3445)
!3530 = !DILocation(line: 563, column: 10, scope: !3445)
!3531 = !DILocation(line: 564, column: 9, scope: !3445)
!3532 = !DILocation(line: 564, column: 3, scope: !3445)
!3533 = distinct !{!3533, !3439, !3534}
!3534 = !DILocation(line: 565, column: 2, scope: !3339)
!3535 = !DILocalVariable(name: "__mptr", scope: !3536, file: !1, line: 567, type: !109)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !1, line: 567, column: 2)
!3537 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 567, column: 2)
!3538 = !DILocation(line: 567, column: 2, scope: !3536)
!3539 = !DILocation(line: 567, column: 2, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3536, file: !1, line: 567, column: 2)
!3541 = !DILocation(line: 567, column: 2, scope: !3537)
!3542 = !DILocalVariable(name: "__mptr", scope: !3543, file: !1, line: 567, type: !109)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !1, line: 567, column: 2)
!3544 = !DILocation(line: 567, column: 2, scope: !3543)
!3545 = !DILocation(line: 567, column: 2, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !1, line: 567, column: 2)
!3547 = !DILocation(line: 567, column: 2, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3537, file: !1, line: 567, column: 2)
!3549 = !DILocation(line: 568, column: 13, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3548, file: !1, line: 567, column: 69)
!3551 = !DILocation(line: 568, column: 19, scope: !3550)
!3552 = !DILocation(line: 568, column: 3, scope: !3550)
!3553 = !DILocation(line: 569, column: 9, scope: !3550)
!3554 = !DILocation(line: 569, column: 3, scope: !3550)
!3555 = !DILocation(line: 570, column: 2, scope: !3550)
!3556 = !DILocalVariable(name: "__mptr", scope: !3557, file: !1, line: 567, type: !109)
!3557 = distinct !DILexicalBlock(scope: !3548, file: !1, line: 567, column: 2)
!3558 = !DILocation(line: 567, column: 2, scope: !3557)
!3559 = !DILocation(line: 567, column: 2, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3557, file: !1, line: 567, column: 2)
!3561 = distinct !{!3561, !3541, !3562}
!3562 = !DILocation(line: 570, column: 2, scope: !3537)
!3563 = !DILabel(scope: !3339, name: "err", file: !1, line: 571)
!3564 = !DILocation(line: 571, column: 1, scope: !3339)
!3565 = !DILocalVariable(name: "__mptr", scope: !3566, file: !1, line: 572, type: !109)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 572, column: 2)
!3567 = distinct !DILexicalBlock(scope: !3339, file: !1, line: 572, column: 2)
!3568 = !DILocation(line: 572, column: 2, scope: !3566)
!3569 = !DILocation(line: 572, column: 2, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !1, line: 572, column: 2)
!3571 = !DILocation(line: 572, column: 2, scope: !3567)
!3572 = !DILocalVariable(name: "__mptr", scope: !3573, file: !1, line: 572, type: !109)
!3573 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 572, column: 2)
!3574 = !DILocation(line: 572, column: 2, scope: !3573)
!3575 = !DILocation(line: 572, column: 2, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !1, line: 572, column: 2)
!3577 = !DILocation(line: 572, column: 2, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3567, file: !1, line: 572, column: 2)
!3579 = !DILocation(line: 573, column: 13, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3578, file: !1, line: 572, column: 67)
!3581 = !DILocation(line: 573, column: 19, scope: !3580)
!3582 = !DILocation(line: 573, column: 3, scope: !3580)
!3583 = !DILocation(line: 574, column: 15, scope: !3580)
!3584 = !DILocation(line: 574, column: 21, scope: !3580)
!3585 = !DILocation(line: 574, column: 3, scope: !3580)
!3586 = !DILocation(line: 575, column: 9, scope: !3580)
!3587 = !DILocation(line: 575, column: 3, scope: !3580)
!3588 = !DILocation(line: 576, column: 2, scope: !3580)
!3589 = !DILocalVariable(name: "__mptr", scope: !3590, file: !1, line: 572, type: !109)
!3590 = distinct !DILexicalBlock(scope: !3578, file: !1, line: 572, column: 2)
!3591 = !DILocation(line: 572, column: 2, scope: !3590)
!3592 = !DILocation(line: 572, column: 2, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !1, line: 572, column: 2)
!3594 = distinct !{!3594, !3571, !3595}
!3595 = !DILocation(line: 576, column: 2, scope: !3567)
!3596 = !DILocation(line: 577, column: 1, scope: !3339)
!3597 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3598, file: !3598, line: 33, type: !3599, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3598 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !123}
!3601 = !DILocalVariable(name: "list", arg: 1, scope: !3597, file: !3598, line: 33, type: !123)
!3602 = !DILocation(line: 33, column: 53, scope: !3597)
!3603 = !DILocation(line: 35, column: 2, scope: !3597)
!3604 = !DILocation(line: 35, column: 2, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !3598, line: 35, column: 2)
!3606 = !DILocation(line: 35, column: 2, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3605, file: !3598, line: 35, column: 2)
!3608 = !DILocation(line: 35, column: 2, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3605, file: !3598, line: 35, column: 2)
!3610 = !DILocation(line: 36, column: 15, scope: !3597)
!3611 = !DILocation(line: 36, column: 2, scope: !3597)
!3612 = !DILocation(line: 36, column: 8, scope: !3597)
!3613 = !DILocation(line: 36, column: 13, scope: !3597)
!3614 = !DILocation(line: 37, column: 1, scope: !3597)
!3615 = distinct !DISubprogram(name: "kzalloc", scope: !102, file: !102, line: 662, type: !3616, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!109, !284, !114}
!3618 = !DILocalVariable(name: "s", arg: 1, scope: !3619, file: !102, line: 445, type: !1124)
!3619 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !102, file: !102, line: 445, type: !3620, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!109, !1124, !114, !284}
!3622 = !DILocation(line: 445, column: 72, scope: !3619, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 552, column: 10, scope: !3624, inlinedAt: !3627)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !102, line: 540, column: 34)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !102, line: 540, column: 6)
!3626 = distinct !DISubprogram(name: "kmalloc", scope: !102, file: !102, line: 538, type: !3616, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3627 = distinct !DILocation(line: 664, column: 9, scope: !3615)
!3628 = !DILocalVariable(name: "flags", arg: 2, scope: !3619, file: !102, line: 446, type: !114)
!3629 = !DILocation(line: 446, column: 9, scope: !3619, inlinedAt: !3623)
!3630 = !DILocalVariable(name: "size", arg: 3, scope: !3619, file: !102, line: 446, type: !284)
!3631 = !DILocation(line: 446, column: 23, scope: !3619, inlinedAt: !3623)
!3632 = !DILocalVariable(name: "ret", scope: !3619, file: !102, line: 448, type: !109)
!3633 = !DILocation(line: 448, column: 8, scope: !3619, inlinedAt: !3623)
!3634 = !DILocalVariable(name: "flags", arg: 1, scope: !3635, file: !102, line: 318, type: !114)
!3635 = distinct !DISubprogram(name: "kmalloc_type", scope: !102, file: !102, line: 318, type: !3636, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!101, !114}
!3638 = !DILocation(line: 318, column: 67, scope: !3635, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 553, column: 20, scope: !3624, inlinedAt: !3627)
!3640 = !DILocalVariable(name: "size", arg: 1, scope: !3641, file: !102, line: 346, type: !284)
!3641 = distinct !DISubprogram(name: "kmalloc_index", scope: !102, file: !102, line: 346, type: !3642, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!5, !284}
!3644 = !DILocation(line: 346, column: 58, scope: !3641, inlinedAt: !3645)
!3645 = distinct !DILocation(line: 547, column: 11, scope: !3624, inlinedAt: !3627)
!3646 = !DILocalVariable(name: "size", arg: 1, scope: !3647, file: !102, line: 472, type: !284)
!3647 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !102, file: !102, line: 472, type: !3648, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!109, !284, !114, !5}
!3650 = !DILocation(line: 472, column: 28, scope: !3647, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 481, column: 9, scope: !3652, inlinedAt: !3653)
!3652 = distinct !DISubprogram(name: "kmalloc_large", scope: !102, file: !102, line: 478, type: !3616, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3653 = distinct !DILocation(line: 545, column: 11, scope: !3654, inlinedAt: !3627)
!3654 = distinct !DILexicalBlock(scope: !3624, file: !102, line: 544, column: 7)
!3655 = !DILocalVariable(name: "flags", arg: 2, scope: !3647, file: !102, line: 472, type: !114)
!3656 = !DILocation(line: 472, column: 40, scope: !3647, inlinedAt: !3651)
!3657 = !DILocalVariable(name: "order", arg: 3, scope: !3647, file: !102, line: 472, type: !5)
!3658 = !DILocation(line: 472, column: 60, scope: !3647, inlinedAt: !3651)
!3659 = !DILocalVariable(name: "size", arg: 1, scope: !3652, file: !102, line: 478, type: !284)
!3660 = !DILocation(line: 478, column: 51, scope: !3652, inlinedAt: !3653)
!3661 = !DILocalVariable(name: "flags", arg: 2, scope: !3652, file: !102, line: 478, type: !114)
!3662 = !DILocation(line: 478, column: 63, scope: !3652, inlinedAt: !3653)
!3663 = !DILocalVariable(name: "order", scope: !3652, file: !102, line: 480, type: !5)
!3664 = !DILocation(line: 480, column: 15, scope: !3652, inlinedAt: !3653)
!3665 = !DILocalVariable(name: "size", arg: 1, scope: !3626, file: !102, line: 538, type: !284)
!3666 = !DILocation(line: 538, column: 45, scope: !3626, inlinedAt: !3627)
!3667 = !DILocalVariable(name: "flags", arg: 2, scope: !3626, file: !102, line: 538, type: !114)
!3668 = !DILocation(line: 538, column: 57, scope: !3626, inlinedAt: !3627)
!3669 = !DILocalVariable(name: "index", scope: !3624, file: !102, line: 542, type: !5)
!3670 = !DILocation(line: 542, column: 16, scope: !3624, inlinedAt: !3627)
!3671 = !DILocalVariable(name: "size", arg: 1, scope: !3615, file: !102, line: 662, type: !284)
!3672 = !DILocation(line: 662, column: 36, scope: !3615)
!3673 = !DILocalVariable(name: "flags", arg: 2, scope: !3615, file: !102, line: 662, type: !114)
!3674 = !DILocation(line: 662, column: 48, scope: !3615)
!3675 = !DILocation(line: 664, column: 17, scope: !3615)
!3676 = !DILocation(line: 664, column: 23, scope: !3615)
!3677 = !DILocation(line: 664, column: 29, scope: !3615)
!3678 = !DILocation(line: 540, column: 27, scope: !3625, inlinedAt: !3627)
!3679 = !DILocation(line: 540, column: 6, scope: !3625, inlinedAt: !3627)
!3680 = !DILocation(line: 540, column: 6, scope: !3626, inlinedAt: !3627)
!3681 = !DILocation(line: 544, column: 7, scope: !3654, inlinedAt: !3627)
!3682 = !DILocation(line: 544, column: 12, scope: !3654, inlinedAt: !3627)
!3683 = !DILocation(line: 544, column: 7, scope: !3624, inlinedAt: !3627)
!3684 = !DILocation(line: 545, column: 25, scope: !3654, inlinedAt: !3627)
!3685 = !DILocation(line: 545, column: 31, scope: !3654, inlinedAt: !3627)
!3686 = !DILocation(line: 480, column: 33, scope: !3652, inlinedAt: !3653)
!3687 = !DILocation(line: 480, column: 23, scope: !3652, inlinedAt: !3653)
!3688 = !DILocation(line: 481, column: 29, scope: !3652, inlinedAt: !3653)
!3689 = !DILocation(line: 481, column: 35, scope: !3652, inlinedAt: !3653)
!3690 = !DILocation(line: 481, column: 42, scope: !3652, inlinedAt: !3653)
!3691 = !DILocation(line: 474, column: 23, scope: !3647, inlinedAt: !3651)
!3692 = !DILocation(line: 474, column: 29, scope: !3647, inlinedAt: !3651)
!3693 = !DILocation(line: 474, column: 36, scope: !3647, inlinedAt: !3651)
!3694 = !DILocation(line: 474, column: 9, scope: !3647, inlinedAt: !3651)
!3695 = !DILocation(line: 545, column: 4, scope: !3654, inlinedAt: !3627)
!3696 = !DILocation(line: 547, column: 25, scope: !3624, inlinedAt: !3627)
!3697 = !DILocation(line: 348, column: 7, scope: !3698, inlinedAt: !3645)
!3698 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 348, column: 6)
!3699 = !DILocation(line: 348, column: 6, scope: !3641, inlinedAt: !3645)
!3700 = !DILocation(line: 349, column: 3, scope: !3698, inlinedAt: !3645)
!3701 = !DILocation(line: 351, column: 6, scope: !3702, inlinedAt: !3645)
!3702 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 351, column: 6)
!3703 = !DILocation(line: 351, column: 11, scope: !3702, inlinedAt: !3645)
!3704 = !DILocation(line: 351, column: 6, scope: !3641, inlinedAt: !3645)
!3705 = !DILocation(line: 352, column: 3, scope: !3702, inlinedAt: !3645)
!3706 = !DILocation(line: 354, column: 32, scope: !3707, inlinedAt: !3645)
!3707 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 354, column: 6)
!3708 = !DILocation(line: 354, column: 37, scope: !3707, inlinedAt: !3645)
!3709 = !DILocation(line: 354, column: 42, scope: !3707, inlinedAt: !3645)
!3710 = !DILocation(line: 354, column: 45, scope: !3707, inlinedAt: !3645)
!3711 = !DILocation(line: 354, column: 50, scope: !3707, inlinedAt: !3645)
!3712 = !DILocation(line: 354, column: 6, scope: !3641, inlinedAt: !3645)
!3713 = !DILocation(line: 355, column: 3, scope: !3707, inlinedAt: !3645)
!3714 = !DILocation(line: 356, column: 32, scope: !3715, inlinedAt: !3645)
!3715 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 356, column: 6)
!3716 = !DILocation(line: 356, column: 37, scope: !3715, inlinedAt: !3645)
!3717 = !DILocation(line: 356, column: 43, scope: !3715, inlinedAt: !3645)
!3718 = !DILocation(line: 356, column: 46, scope: !3715, inlinedAt: !3645)
!3719 = !DILocation(line: 356, column: 51, scope: !3715, inlinedAt: !3645)
!3720 = !DILocation(line: 356, column: 6, scope: !3641, inlinedAt: !3645)
!3721 = !DILocation(line: 357, column: 3, scope: !3715, inlinedAt: !3645)
!3722 = !DILocation(line: 358, column: 6, scope: !3723, inlinedAt: !3645)
!3723 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 358, column: 6)
!3724 = !DILocation(line: 358, column: 11, scope: !3723, inlinedAt: !3645)
!3725 = !DILocation(line: 358, column: 6, scope: !3641, inlinedAt: !3645)
!3726 = !DILocation(line: 358, column: 26, scope: !3723, inlinedAt: !3645)
!3727 = !DILocation(line: 359, column: 6, scope: !3728, inlinedAt: !3645)
!3728 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 359, column: 6)
!3729 = !DILocation(line: 359, column: 11, scope: !3728, inlinedAt: !3645)
!3730 = !DILocation(line: 359, column: 6, scope: !3641, inlinedAt: !3645)
!3731 = !DILocation(line: 359, column: 26, scope: !3728, inlinedAt: !3645)
!3732 = !DILocation(line: 360, column: 6, scope: !3733, inlinedAt: !3645)
!3733 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 360, column: 6)
!3734 = !DILocation(line: 360, column: 11, scope: !3733, inlinedAt: !3645)
!3735 = !DILocation(line: 360, column: 6, scope: !3641, inlinedAt: !3645)
!3736 = !DILocation(line: 360, column: 26, scope: !3733, inlinedAt: !3645)
!3737 = !DILocation(line: 361, column: 6, scope: !3738, inlinedAt: !3645)
!3738 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 361, column: 6)
!3739 = !DILocation(line: 361, column: 11, scope: !3738, inlinedAt: !3645)
!3740 = !DILocation(line: 361, column: 6, scope: !3641, inlinedAt: !3645)
!3741 = !DILocation(line: 361, column: 26, scope: !3738, inlinedAt: !3645)
!3742 = !DILocation(line: 362, column: 6, scope: !3743, inlinedAt: !3645)
!3743 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 362, column: 6)
!3744 = !DILocation(line: 362, column: 11, scope: !3743, inlinedAt: !3645)
!3745 = !DILocation(line: 362, column: 6, scope: !3641, inlinedAt: !3645)
!3746 = !DILocation(line: 362, column: 26, scope: !3743, inlinedAt: !3645)
!3747 = !DILocation(line: 363, column: 6, scope: !3748, inlinedAt: !3645)
!3748 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 363, column: 6)
!3749 = !DILocation(line: 363, column: 11, scope: !3748, inlinedAt: !3645)
!3750 = !DILocation(line: 363, column: 6, scope: !3641, inlinedAt: !3645)
!3751 = !DILocation(line: 363, column: 26, scope: !3748, inlinedAt: !3645)
!3752 = !DILocation(line: 364, column: 6, scope: !3753, inlinedAt: !3645)
!3753 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 364, column: 6)
!3754 = !DILocation(line: 364, column: 11, scope: !3753, inlinedAt: !3645)
!3755 = !DILocation(line: 364, column: 6, scope: !3641, inlinedAt: !3645)
!3756 = !DILocation(line: 364, column: 26, scope: !3753, inlinedAt: !3645)
!3757 = !DILocation(line: 365, column: 6, scope: !3758, inlinedAt: !3645)
!3758 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 365, column: 6)
!3759 = !DILocation(line: 365, column: 11, scope: !3758, inlinedAt: !3645)
!3760 = !DILocation(line: 365, column: 6, scope: !3641, inlinedAt: !3645)
!3761 = !DILocation(line: 365, column: 26, scope: !3758, inlinedAt: !3645)
!3762 = !DILocation(line: 366, column: 6, scope: !3763, inlinedAt: !3645)
!3763 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 366, column: 6)
!3764 = !DILocation(line: 366, column: 11, scope: !3763, inlinedAt: !3645)
!3765 = !DILocation(line: 366, column: 6, scope: !3641, inlinedAt: !3645)
!3766 = !DILocation(line: 366, column: 26, scope: !3763, inlinedAt: !3645)
!3767 = !DILocation(line: 367, column: 6, scope: !3768, inlinedAt: !3645)
!3768 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 367, column: 6)
!3769 = !DILocation(line: 367, column: 11, scope: !3768, inlinedAt: !3645)
!3770 = !DILocation(line: 367, column: 6, scope: !3641, inlinedAt: !3645)
!3771 = !DILocation(line: 367, column: 26, scope: !3768, inlinedAt: !3645)
!3772 = !DILocation(line: 368, column: 6, scope: !3773, inlinedAt: !3645)
!3773 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 368, column: 6)
!3774 = !DILocation(line: 368, column: 11, scope: !3773, inlinedAt: !3645)
!3775 = !DILocation(line: 368, column: 6, scope: !3641, inlinedAt: !3645)
!3776 = !DILocation(line: 368, column: 26, scope: !3773, inlinedAt: !3645)
!3777 = !DILocation(line: 369, column: 6, scope: !3778, inlinedAt: !3645)
!3778 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 369, column: 6)
!3779 = !DILocation(line: 369, column: 11, scope: !3778, inlinedAt: !3645)
!3780 = !DILocation(line: 369, column: 6, scope: !3641, inlinedAt: !3645)
!3781 = !DILocation(line: 369, column: 26, scope: !3778, inlinedAt: !3645)
!3782 = !DILocation(line: 370, column: 6, scope: !3783, inlinedAt: !3645)
!3783 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 370, column: 6)
!3784 = !DILocation(line: 370, column: 11, scope: !3783, inlinedAt: !3645)
!3785 = !DILocation(line: 370, column: 6, scope: !3641, inlinedAt: !3645)
!3786 = !DILocation(line: 370, column: 26, scope: !3783, inlinedAt: !3645)
!3787 = !DILocation(line: 371, column: 6, scope: !3788, inlinedAt: !3645)
!3788 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 371, column: 6)
!3789 = !DILocation(line: 371, column: 11, scope: !3788, inlinedAt: !3645)
!3790 = !DILocation(line: 371, column: 6, scope: !3641, inlinedAt: !3645)
!3791 = !DILocation(line: 371, column: 26, scope: !3788, inlinedAt: !3645)
!3792 = !DILocation(line: 372, column: 6, scope: !3793, inlinedAt: !3645)
!3793 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 372, column: 6)
!3794 = !DILocation(line: 372, column: 11, scope: !3793, inlinedAt: !3645)
!3795 = !DILocation(line: 372, column: 6, scope: !3641, inlinedAt: !3645)
!3796 = !DILocation(line: 372, column: 26, scope: !3793, inlinedAt: !3645)
!3797 = !DILocation(line: 373, column: 6, scope: !3798, inlinedAt: !3645)
!3798 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 373, column: 6)
!3799 = !DILocation(line: 373, column: 11, scope: !3798, inlinedAt: !3645)
!3800 = !DILocation(line: 373, column: 6, scope: !3641, inlinedAt: !3645)
!3801 = !DILocation(line: 373, column: 26, scope: !3798, inlinedAt: !3645)
!3802 = !DILocation(line: 374, column: 6, scope: !3803, inlinedAt: !3645)
!3803 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 374, column: 6)
!3804 = !DILocation(line: 374, column: 11, scope: !3803, inlinedAt: !3645)
!3805 = !DILocation(line: 374, column: 6, scope: !3641, inlinedAt: !3645)
!3806 = !DILocation(line: 374, column: 26, scope: !3803, inlinedAt: !3645)
!3807 = !DILocation(line: 375, column: 6, scope: !3808, inlinedAt: !3645)
!3808 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 375, column: 6)
!3809 = !DILocation(line: 375, column: 11, scope: !3808, inlinedAt: !3645)
!3810 = !DILocation(line: 375, column: 6, scope: !3641, inlinedAt: !3645)
!3811 = !DILocation(line: 375, column: 27, scope: !3808, inlinedAt: !3645)
!3812 = !DILocation(line: 376, column: 6, scope: !3813, inlinedAt: !3645)
!3813 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 376, column: 6)
!3814 = !DILocation(line: 376, column: 11, scope: !3813, inlinedAt: !3645)
!3815 = !DILocation(line: 376, column: 6, scope: !3641, inlinedAt: !3645)
!3816 = !DILocation(line: 376, column: 32, scope: !3813, inlinedAt: !3645)
!3817 = !DILocation(line: 377, column: 6, scope: !3818, inlinedAt: !3645)
!3818 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 377, column: 6)
!3819 = !DILocation(line: 377, column: 11, scope: !3818, inlinedAt: !3645)
!3820 = !DILocation(line: 377, column: 6, scope: !3641, inlinedAt: !3645)
!3821 = !DILocation(line: 377, column: 32, scope: !3818, inlinedAt: !3645)
!3822 = !DILocation(line: 378, column: 6, scope: !3823, inlinedAt: !3645)
!3823 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 378, column: 6)
!3824 = !DILocation(line: 378, column: 11, scope: !3823, inlinedAt: !3645)
!3825 = !DILocation(line: 378, column: 6, scope: !3641, inlinedAt: !3645)
!3826 = !DILocation(line: 378, column: 32, scope: !3823, inlinedAt: !3645)
!3827 = !DILocation(line: 379, column: 6, scope: !3828, inlinedAt: !3645)
!3828 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 379, column: 6)
!3829 = !DILocation(line: 379, column: 11, scope: !3828, inlinedAt: !3645)
!3830 = !DILocation(line: 379, column: 6, scope: !3641, inlinedAt: !3645)
!3831 = !DILocation(line: 379, column: 33, scope: !3828, inlinedAt: !3645)
!3832 = !DILocation(line: 380, column: 6, scope: !3833, inlinedAt: !3645)
!3833 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 380, column: 6)
!3834 = !DILocation(line: 380, column: 11, scope: !3833, inlinedAt: !3645)
!3835 = !DILocation(line: 380, column: 6, scope: !3641, inlinedAt: !3645)
!3836 = !DILocation(line: 380, column: 33, scope: !3833, inlinedAt: !3645)
!3837 = !DILocation(line: 381, column: 6, scope: !3838, inlinedAt: !3645)
!3838 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 381, column: 6)
!3839 = !DILocation(line: 381, column: 11, scope: !3838, inlinedAt: !3645)
!3840 = !DILocation(line: 381, column: 6, scope: !3641, inlinedAt: !3645)
!3841 = !DILocation(line: 381, column: 33, scope: !3838, inlinedAt: !3645)
!3842 = !DILocation(line: 382, column: 2, scope: !3843, inlinedAt: !3645)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !102, line: 382, column: 2)
!3844 = distinct !DILexicalBlock(scope: !3641, file: !102, line: 382, column: 2)
!3845 = !{i32 -2143315035, i32 -2143315006, i32 -2143314960, i32 -2143314902, i32 -2143314848, i32 -2143314794, i32 -2143314739, i32 -2143314708}
!3846 = !DILocation(line: 382, column: 2, scope: !3847, inlinedAt: !3645)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !102, line: 382, column: 2)
!3848 = distinct !DILexicalBlock(scope: !3844, file: !102, line: 382, column: 2)
!3849 = !{i32 -2143314265, i32 -2143314258, i32 -2143314204, i32 -2143314173, i32 -2143314143}
!3850 = !DILocation(line: 382, column: 2, scope: !3848, inlinedAt: !3645)
!3851 = !DILocation(line: 386, column: 1, scope: !3641, inlinedAt: !3645)
!3852 = !DILocation(line: 547, column: 9, scope: !3624, inlinedAt: !3627)
!3853 = !DILocation(line: 549, column: 8, scope: !3854, inlinedAt: !3627)
!3854 = distinct !DILexicalBlock(scope: !3624, file: !102, line: 549, column: 7)
!3855 = !DILocation(line: 549, column: 7, scope: !3624, inlinedAt: !3627)
!3856 = !DILocation(line: 550, column: 4, scope: !3854, inlinedAt: !3627)
!3857 = !DILocation(line: 553, column: 33, scope: !3624, inlinedAt: !3627)
!3858 = !DILocation(line: 325, column: 6, scope: !3859, inlinedAt: !3639)
!3859 = distinct !DILexicalBlock(scope: !3635, file: !102, line: 325, column: 6)
!3860 = !DILocation(line: 325, column: 6, scope: !3635, inlinedAt: !3639)
!3861 = !DILocation(line: 326, column: 3, scope: !3859, inlinedAt: !3639)
!3862 = !DILocation(line: 332, column: 9, scope: !3635, inlinedAt: !3639)
!3863 = !DILocation(line: 332, column: 15, scope: !3635, inlinedAt: !3639)
!3864 = !DILocation(line: 332, column: 2, scope: !3635, inlinedAt: !3639)
!3865 = !DILocation(line: 336, column: 1, scope: !3635, inlinedAt: !3639)
!3866 = !DILocation(line: 553, column: 5, scope: !3624, inlinedAt: !3627)
!3867 = !DILocation(line: 553, column: 41, scope: !3624, inlinedAt: !3627)
!3868 = !DILocation(line: 554, column: 5, scope: !3624, inlinedAt: !3627)
!3869 = !DILocation(line: 554, column: 12, scope: !3624, inlinedAt: !3627)
!3870 = !DILocation(line: 448, column: 31, scope: !3619, inlinedAt: !3623)
!3871 = !DILocation(line: 448, column: 34, scope: !3619, inlinedAt: !3623)
!3872 = !DILocation(line: 448, column: 14, scope: !3619, inlinedAt: !3623)
!3873 = !DILocation(line: 450, column: 22, scope: !3619, inlinedAt: !3623)
!3874 = !DILocation(line: 450, column: 25, scope: !3619, inlinedAt: !3623)
!3875 = !DILocation(line: 450, column: 30, scope: !3619, inlinedAt: !3623)
!3876 = !DILocation(line: 450, column: 36, scope: !3619, inlinedAt: !3623)
!3877 = !DILocation(line: 450, column: 8, scope: !3619, inlinedAt: !3623)
!3878 = !DILocation(line: 450, column: 6, scope: !3619, inlinedAt: !3623)
!3879 = !DILocation(line: 451, column: 9, scope: !3619, inlinedAt: !3623)
!3880 = !DILocation(line: 552, column: 3, scope: !3624, inlinedAt: !3627)
!3881 = !DILocation(line: 557, column: 19, scope: !3626, inlinedAt: !3627)
!3882 = !DILocation(line: 557, column: 25, scope: !3626, inlinedAt: !3627)
!3883 = !DILocation(line: 557, column: 9, scope: !3626, inlinedAt: !3627)
!3884 = !DILocation(line: 557, column: 2, scope: !3626, inlinedAt: !3627)
!3885 = !DILocation(line: 558, column: 1, scope: !3626, inlinedAt: !3627)
!3886 = !DILocation(line: 664, column: 2, scope: !3615)
!3887 = distinct !DISubprogram(name: "list_add_tail", scope: !3598, file: !3598, line: 98, type: !3888, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !123, !123}
!3890 = !DILocalVariable(name: "new", arg: 1, scope: !3887, file: !3598, line: 98, type: !123)
!3891 = !DILocation(line: 98, column: 52, scope: !3887)
!3892 = !DILocalVariable(name: "head", arg: 2, scope: !3887, file: !3598, line: 98, type: !123)
!3893 = !DILocation(line: 98, column: 75, scope: !3887)
!3894 = !DILocation(line: 100, column: 13, scope: !3887)
!3895 = !DILocation(line: 100, column: 18, scope: !3887)
!3896 = !DILocation(line: 100, column: 24, scope: !3887)
!3897 = !DILocation(line: 100, column: 30, scope: !3887)
!3898 = !DILocation(line: 100, column: 2, scope: !3887)
!3899 = !DILocation(line: 101, column: 1, scope: !3887)
!3900 = distinct !DISubprogram(name: "list_empty", scope: !3598, file: !3598, line: 280, type: !3901, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!131, !3903}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!3905 = !DILocalVariable(name: "head", arg: 1, scope: !3900, file: !3598, line: 280, type: !3903)
!3906 = !DILocation(line: 280, column: 54, scope: !3900)
!3907 = !DILocation(line: 282, column: 9, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3900, file: !3598, line: 282, column: 9)
!3909 = !DILocation(line: 282, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3908, file: !3598, line: 282, column: 9)
!3911 = !DILocation(line: 282, column: 34, scope: !3900)
!3912 = !DILocation(line: 282, column: 31, scope: !3900)
!3913 = !DILocation(line: 282, column: 2, scope: !3900)
!3914 = distinct !DISubprogram(name: "list_del", scope: !3598, file: !3598, line: 144, type: !3599, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3915 = !DILocalVariable(name: "entry", arg: 1, scope: !3914, file: !3598, line: 144, type: !123)
!3916 = !DILocation(line: 144, column: 47, scope: !3914)
!3917 = !DILocation(line: 146, column: 19, scope: !3914)
!3918 = !DILocation(line: 146, column: 2, scope: !3914)
!3919 = !DILocation(line: 147, column: 2, scope: !3914)
!3920 = !DILocation(line: 147, column: 9, scope: !3914)
!3921 = !DILocation(line: 147, column: 14, scope: !3914)
!3922 = !DILocation(line: 148, column: 2, scope: !3914)
!3923 = !DILocation(line: 148, column: 9, scope: !3914)
!3924 = !DILocation(line: 148, column: 14, scope: !3914)
!3925 = !DILocation(line: 149, column: 1, scope: !3914)
!3926 = distinct !DISubprogram(name: "of_node_set_flag", scope: !134, file: !134, line: 199, type: !3927, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !132, !287}
!3929 = !DILocalVariable(name: "n", arg: 1, scope: !3926, file: !134, line: 199, type: !132)
!3930 = !DILocation(line: 199, column: 57, scope: !3926)
!3931 = !DILocalVariable(name: "flag", arg: 2, scope: !3926, file: !134, line: 199, type: !287)
!3932 = !DILocation(line: 199, column: 74, scope: !3926)
!3933 = !DILocation(line: 201, column: 10, scope: !3926)
!3934 = !DILocation(line: 201, column: 17, scope: !3926)
!3935 = !DILocation(line: 201, column: 20, scope: !3926)
!3936 = !DILocation(line: 201, column: 2, scope: !3926)
!3937 = !DILocation(line: 202, column: 1, scope: !3926)
!3938 = distinct !DISubprogram(name: "of_node_clear_flag", scope: !134, file: !134, line: 204, type: !3927, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3939 = !DILocalVariable(name: "n", arg: 1, scope: !3938, file: !134, line: 204, type: !132)
!3940 = !DILocation(line: 204, column: 59, scope: !3938)
!3941 = !DILocalVariable(name: "flag", arg: 2, scope: !3938, file: !134, line: 204, type: !287)
!3942 = !DILocation(line: 204, column: 76, scope: !3938)
!3943 = !DILocation(line: 206, column: 12, scope: !3938)
!3944 = !DILocation(line: 206, column: 19, scope: !3938)
!3945 = !DILocation(line: 206, column: 22, scope: !3938)
!3946 = !DILocation(line: 206, column: 2, scope: !3938)
!3947 = !DILocation(line: 207, column: 1, scope: !3938)
!3948 = distinct !DISubprogram(name: "of_msi_map_id", scope: !1, file: !1, line: 607, type: !3949, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!142, !1671, !132, !142}
!3951 = !DILocalVariable(name: "dev", arg: 1, scope: !3948, file: !1, line: 607, type: !1671)
!3952 = !DILocation(line: 607, column: 34, scope: !3948)
!3953 = !DILocalVariable(name: "msi_np", arg: 2, scope: !3948, file: !1, line: 607, type: !132)
!3954 = !DILocation(line: 607, column: 59, scope: !3948)
!3955 = !DILocalVariable(name: "id_in", arg: 3, scope: !3948, file: !1, line: 607, type: !142)
!3956 = !DILocation(line: 607, column: 71, scope: !3948)
!3957 = !DILocation(line: 609, column: 25, scope: !3948)
!3958 = !DILocation(line: 609, column: 39, scope: !3948)
!3959 = !DILocation(line: 609, column: 9, scope: !3948)
!3960 = !DILocation(line: 609, column: 2, scope: !3948)
!3961 = distinct !DISubprogram(name: "__of_msi_map_id", scope: !1, file: !1, line: 579, type: !3962, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!142, !1671, !3964, !142}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3965 = !DILocalVariable(name: "dev", arg: 1, scope: !3961, file: !1, line: 579, type: !1671)
!3966 = !DILocation(line: 579, column: 43, scope: !3961)
!3967 = !DILocalVariable(name: "np", arg: 2, scope: !3961, file: !1, line: 579, type: !3964)
!3968 = !DILocation(line: 579, column: 69, scope: !3961)
!3969 = !DILocalVariable(name: "id_in", arg: 3, scope: !3961, file: !1, line: 580, type: !142)
!3970 = !DILocation(line: 580, column: 12, scope: !3961)
!3971 = !DILocalVariable(name: "parent_dev", scope: !3961, file: !1, line: 582, type: !1671)
!3972 = !DILocation(line: 582, column: 17, scope: !3961)
!3973 = !DILocalVariable(name: "id_out", scope: !3961, file: !1, line: 583, type: !142)
!3974 = !DILocation(line: 583, column: 6, scope: !3961)
!3975 = !DILocation(line: 583, column: 15, scope: !3961)
!3976 = !DILocation(line: 589, column: 20, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3961, file: !1, line: 589, column: 2)
!3978 = !DILocation(line: 589, column: 18, scope: !3977)
!3979 = !DILocation(line: 589, column: 7, scope: !3977)
!3980 = !DILocation(line: 589, column: 25, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !1, line: 589, column: 2)
!3982 = !DILocation(line: 589, column: 2, scope: !3977)
!3983 = !DILocation(line: 590, column: 18, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !1, line: 590, column: 7)
!3985 = !DILocation(line: 590, column: 30, scope: !3984)
!3986 = !DILocation(line: 590, column: 39, scope: !3984)
!3987 = !DILocation(line: 591, column: 21, scope: !3984)
!3988 = !DILocation(line: 590, column: 8, scope: !3984)
!3989 = !DILocation(line: 590, column: 7, scope: !3981)
!3990 = !DILocation(line: 592, column: 4, scope: !3984)
!3991 = !DILocation(line: 591, column: 32, scope: !3984)
!3992 = !DILocation(line: 589, column: 50, scope: !3981)
!3993 = !DILocation(line: 589, column: 62, scope: !3981)
!3994 = !DILocation(line: 589, column: 48, scope: !3981)
!3995 = !DILocation(line: 589, column: 2, scope: !3981)
!3996 = distinct !{!3996, !3982, !3997}
!3997 = !DILocation(line: 592, column: 4, scope: !3977)
!3998 = !DILocation(line: 593, column: 9, scope: !3961)
!3999 = !DILocation(line: 593, column: 2, scope: !3961)
!4000 = distinct !DISubprogram(name: "of_msi_map_get_device_domain", scope: !1, file: !1, line: 623, type: !4001, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!1956, !1671, !142, !142}
!4003 = !DILocalVariable(name: "dev", arg: 1, scope: !4000, file: !1, line: 623, type: !1671)
!4004 = !DILocation(line: 623, column: 64, scope: !4000)
!4005 = !DILocalVariable(name: "id", arg: 2, scope: !4000, file: !1, line: 623, type: !142)
!4006 = !DILocation(line: 623, column: 73, scope: !4000)
!4007 = !DILocalVariable(name: "bus_token", arg: 3, scope: !4000, file: !1, line: 624, type: !142)
!4008 = !DILocation(line: 624, column: 11, scope: !4000)
!4009 = !DILocalVariable(name: "np", scope: !4000, file: !1, line: 626, type: !132)
!4010 = !DILocation(line: 626, column: 22, scope: !4000)
!4011 = !DILocation(line: 628, column: 18, scope: !4000)
!4012 = !DILocation(line: 628, column: 28, scope: !4000)
!4013 = !DILocation(line: 628, column: 2, scope: !4000)
!4014 = !DILocation(line: 629, column: 32, scope: !4000)
!4015 = !DILocation(line: 629, column: 36, scope: !4000)
!4016 = !DILocation(line: 629, column: 9, scope: !4000)
!4017 = !DILocation(line: 629, column: 2, scope: !4000)
!4018 = distinct !DISubprogram(name: "irq_find_matching_host", scope: !49, file: !49, line: 309, type: !4019, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!1956, !132, !48}
!4021 = !DILocalVariable(name: "node", arg: 1, scope: !4018, file: !49, line: 309, type: !132)
!4022 = !DILocation(line: 309, column: 77, scope: !4018)
!4023 = !DILocalVariable(name: "bus_token", arg: 2, scope: !4018, file: !49, line: 310, type: !48)
!4024 = !DILocation(line: 310, column: 34, scope: !4018)
!4025 = !DILocation(line: 312, column: 52, scope: !4018)
!4026 = !DILocation(line: 312, column: 34, scope: !4018)
!4027 = !DILocation(line: 312, column: 59, scope: !4018)
!4028 = !DILocation(line: 312, column: 9, scope: !4018)
!4029 = !DILocation(line: 312, column: 2, scope: !4018)
!4030 = distinct !DISubprogram(name: "of_msi_get_domain", scope: !1, file: !1, line: 643, type: !4031, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!1956, !1671, !132, !48}
!4033 = !DILocalVariable(name: "dev", arg: 1, scope: !4030, file: !1, line: 643, type: !1671)
!4034 = !DILocation(line: 643, column: 53, scope: !4030)
!4035 = !DILocalVariable(name: "np", arg: 2, scope: !4030, file: !1, line: 644, type: !132)
!4036 = !DILocation(line: 644, column: 30, scope: !4030)
!4037 = !DILocalVariable(name: "token", arg: 3, scope: !4030, file: !1, line: 645, type: !48)
!4038 = !DILocation(line: 645, column: 36, scope: !4030)
!4039 = !DILocalVariable(name: "msi_np", scope: !4030, file: !1, line: 647, type: !132)
!4040 = !DILocation(line: 647, column: 22, scope: !4030)
!4041 = !DILocalVariable(name: "d", scope: !4030, file: !1, line: 648, type: !1956)
!4042 = !DILocation(line: 648, column: 21, scope: !4030)
!4043 = !DILocation(line: 651, column: 28, scope: !4030)
!4044 = !DILocation(line: 651, column: 11, scope: !4030)
!4045 = !DILocation(line: 651, column: 9, scope: !4030)
!4046 = !DILocation(line: 652, column: 6, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4030, file: !1, line: 652, column: 6)
!4048 = !DILocation(line: 652, column: 13, scope: !4047)
!4049 = !DILocation(line: 652, column: 39, scope: !4047)
!4050 = !DILocation(line: 652, column: 17, scope: !4047)
!4051 = !DILocation(line: 652, column: 6, scope: !4030)
!4052 = !DILocation(line: 653, column: 30, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4047, file: !1, line: 652, column: 62)
!4054 = !DILocation(line: 653, column: 38, scope: !4053)
!4055 = !DILocation(line: 653, column: 7, scope: !4053)
!4056 = !DILocation(line: 653, column: 5, scope: !4053)
!4057 = !DILocation(line: 654, column: 8, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4053, file: !1, line: 654, column: 7)
!4059 = !DILocation(line: 654, column: 7, scope: !4053)
!4060 = !DILocation(line: 655, column: 16, scope: !4058)
!4061 = !DILocation(line: 655, column: 4, scope: !4058)
!4062 = !DILocation(line: 656, column: 10, scope: !4053)
!4063 = !DILocation(line: 656, column: 3, scope: !4053)
!4064 = !DILocation(line: 659, column: 6, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4030, file: !1, line: 659, column: 6)
!4066 = !DILocation(line: 659, column: 12, scope: !4065)
!4067 = !DILocation(line: 659, column: 6, scope: !4030)
!4068 = !DILocalVariable(name: "args", scope: !4069, file: !1, line: 661, type: !2414)
!4069 = distinct !DILexicalBlock(scope: !4065, file: !1, line: 659, column: 40)
!4070 = !DILocation(line: 661, column: 26, scope: !4069)
!4071 = !DILocalVariable(name: "index", scope: !4069, file: !1, line: 662, type: !131)
!4072 = !DILocation(line: 662, column: 7, scope: !4069)
!4073 = !DILocation(line: 664, column: 3, scope: !4069)
!4074 = !DILocation(line: 664, column: 38, scope: !4069)
!4075 = !DILocation(line: 666, column: 10, scope: !4069)
!4076 = !DILocation(line: 664, column: 11, scope: !4069)
!4077 = !DILocation(line: 664, column: 10, scope: !4069)
!4078 = !DILocation(line: 667, column: 36, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4069, file: !1, line: 666, column: 25)
!4080 = !DILocation(line: 667, column: 40, scope: !4079)
!4081 = !DILocation(line: 667, column: 8, scope: !4079)
!4082 = !DILocation(line: 667, column: 6, scope: !4079)
!4083 = !DILocation(line: 668, column: 8, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4079, file: !1, line: 668, column: 8)
!4085 = !DILocation(line: 668, column: 8, scope: !4079)
!4086 = !DILocation(line: 669, column: 12, scope: !4084)
!4087 = !DILocation(line: 669, column: 5, scope: !4084)
!4088 = !DILocation(line: 671, column: 21, scope: !4079)
!4089 = !DILocation(line: 671, column: 4, scope: !4079)
!4090 = !DILocation(line: 672, column: 9, scope: !4079)
!4091 = distinct !{!4091, !4073, !4092}
!4092 = !DILocation(line: 673, column: 3, scope: !4069)
!4093 = !DILocation(line: 674, column: 2, scope: !4069)
!4094 = !DILocation(line: 676, column: 2, scope: !4030)
!4095 = !DILocation(line: 677, column: 1, scope: !4030)
!4096 = distinct !DISubprogram(name: "of_msi_configure", scope: !1, file: !1, line: 684, type: !4097, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !1671, !132}
!4099 = !DILocalVariable(name: "dev", arg: 1, scope: !4096, file: !1, line: 684, type: !1671)
!4100 = !DILocation(line: 684, column: 38, scope: !4096)
!4101 = !DILocalVariable(name: "np", arg: 2, scope: !4096, file: !1, line: 684, type: !132)
!4102 = !DILocation(line: 684, column: 63, scope: !4096)
!4103 = !DILocation(line: 686, column: 21, scope: !4096)
!4104 = !DILocation(line: 687, column: 25, scope: !4096)
!4105 = !DILocation(line: 687, column: 30, scope: !4096)
!4106 = !DILocation(line: 687, column: 7, scope: !4096)
!4107 = !DILocation(line: 686, column: 2, scope: !4096)
!4108 = !DILocation(line: 688, column: 1, scope: !4096)
!4109 = distinct !DISubprogram(name: "dev_set_msi_domain", scope: !28, file: !28, line: 648, type: !4110, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !1671, !1956}
!4112 = !DILocalVariable(name: "dev", arg: 1, scope: !4109, file: !28, line: 648, type: !1671)
!4113 = !DILocation(line: 648, column: 54, scope: !4109)
!4114 = !DILocalVariable(name: "d", arg: 2, scope: !4109, file: !28, line: 648, type: !1956)
!4115 = !DILocation(line: 648, column: 78, scope: !4109)
!4116 = !DILocation(line: 651, column: 20, scope: !4109)
!4117 = !DILocation(line: 651, column: 2, scope: !4109)
!4118 = !DILocation(line: 651, column: 7, scope: !4109)
!4119 = !DILocation(line: 651, column: 18, scope: !4109)
!4120 = !DILocation(line: 653, column: 1, scope: !4109)
!4121 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !134, file: !134, line: 494, type: !4122, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!131, !2599, !137, !707, !284}
!4124 = !DILocalVariable(name: "np", arg: 1, scope: !4121, file: !134, line: 494, type: !2599)
!4125 = !DILocation(line: 494, column: 72, scope: !4121)
!4126 = !DILocalVariable(name: "propname", arg: 2, scope: !4121, file: !134, line: 495, type: !137)
!4127 = !DILocation(line: 495, column: 23, scope: !4121)
!4128 = !DILocalVariable(name: "out_values", arg: 3, scope: !4121, file: !134, line: 496, type: !707)
!4129 = !DILocation(line: 496, column: 16, scope: !4121)
!4130 = !DILocalVariable(name: "sz", arg: 4, scope: !4121, file: !134, line: 496, type: !284)
!4131 = !DILocation(line: 496, column: 35, scope: !4121)
!4132 = !DILocalVariable(name: "ret", scope: !4121, file: !134, line: 498, type: !131)
!4133 = !DILocation(line: 498, column: 6, scope: !4121)
!4134 = !DILocation(line: 498, column: 48, scope: !4121)
!4135 = !DILocation(line: 498, column: 52, scope: !4121)
!4136 = !DILocation(line: 498, column: 62, scope: !4121)
!4137 = !DILocation(line: 499, column: 13, scope: !4121)
!4138 = !DILocation(line: 498, column: 12, scope: !4121)
!4139 = !DILocation(line: 500, column: 6, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4121, file: !134, line: 500, column: 6)
!4141 = !DILocation(line: 500, column: 10, scope: !4140)
!4142 = !DILocation(line: 500, column: 6, scope: !4121)
!4143 = !DILocation(line: 501, column: 3, scope: !4140)
!4144 = !DILocation(line: 503, column: 10, scope: !4140)
!4145 = !DILocation(line: 503, column: 3, scope: !4140)
!4146 = !DILocation(line: 504, column: 1, scope: !4121)
!4147 = distinct !DISubprogram(name: "__arch_swab32", scope: !4148, file: !4148, line: 8, type: !3075, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4148 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!4149 = !DILocalVariable(name: "val", arg: 1, scope: !4147, file: !4148, line: 8, type: !110)
!4150 = !DILocation(line: 8, column: 61, scope: !4147)
!4151 = !DILocation(line: 10, column: 38, scope: !4147)
!4152 = !DILocation(line: 10, column: 2, scope: !4147)
!4153 = !{i32 514486}
!4154 = !DILocation(line: 11, column: 9, scope: !4147)
!4155 = !DILocation(line: 11, column: 2, scope: !4147)
!4156 = distinct !DISubprogram(name: "get_order", scope: !4157, file: !4157, line: 29, type: !4158, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4157 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!131, !287}
!4160 = !DILocalVariable(name: "x", arg: 1, scope: !4161, file: !4162, line: 366, type: !357)
!4161 = distinct !DISubprogram(name: "fls64", scope: !4162, file: !4162, line: 366, type: !4163, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4162 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!131, !357}
!4165 = !DILocation(line: 366, column: 40, scope: !4161, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 46, column: 9, scope: !4156)
!4167 = !DILocalVariable(name: "bitpos", scope: !4161, file: !4162, line: 368, type: !131)
!4168 = !DILocation(line: 368, column: 6, scope: !4161, inlinedAt: !4166)
!4169 = !DILocalVariable(name: "size", arg: 1, scope: !4156, file: !4157, line: 29, type: !287)
!4170 = !DILocation(line: 29, column: 63, scope: !4156)
!4171 = !DILocation(line: 31, column: 27, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4156, file: !4157, line: 31, column: 6)
!4173 = !DILocation(line: 31, column: 6, scope: !4172)
!4174 = !DILocation(line: 31, column: 6, scope: !4156)
!4175 = !DILocation(line: 32, column: 8, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !4157, line: 32, column: 7)
!4177 = distinct !DILexicalBlock(scope: !4172, file: !4157, line: 31, column: 34)
!4178 = !DILocation(line: 32, column: 7, scope: !4177)
!4179 = !DILocation(line: 33, column: 4, scope: !4176)
!4180 = !DILocation(line: 35, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4177, file: !4157, line: 35, column: 7)
!4182 = !DILocation(line: 35, column: 12, scope: !4181)
!4183 = !DILocation(line: 35, column: 7, scope: !4177)
!4184 = !DILocation(line: 36, column: 4, scope: !4181)
!4185 = !DILocation(line: 38, column: 10, scope: !4177)
!4186 = !DILocation(line: 38, column: 28, scope: !4177)
!4187 = !DILocation(line: 38, column: 41, scope: !4177)
!4188 = !DILocation(line: 38, column: 3, scope: !4177)
!4189 = !DILocation(line: 41, column: 6, scope: !4156)
!4190 = !DILocation(line: 42, column: 7, scope: !4156)
!4191 = !DILocation(line: 46, column: 15, scope: !4156)
!4192 = !DILocation(line: 374, column: 2, scope: !4161, inlinedAt: !4166)
!4193 = !DILocation(line: 376, column: 14, scope: !4161, inlinedAt: !4166)
!4194 = !{i32 394262}
!4195 = !DILocation(line: 377, column: 9, scope: !4161, inlinedAt: !4166)
!4196 = !DILocation(line: 377, column: 16, scope: !4161, inlinedAt: !4166)
!4197 = !DILocation(line: 46, column: 2, scope: !4156)
!4198 = !DILocation(line: 48, column: 1, scope: !4156)
!4199 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4200, file: !4200, line: 30, type: !4201, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4200 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!131, !356}
!4203 = !DILocation(line: 366, column: 40, scope: !4161, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 32, column: 9, scope: !4199)
!4205 = !DILocation(line: 368, column: 6, scope: !4161, inlinedAt: !4204)
!4206 = !DILocalVariable(name: "n", arg: 1, scope: !4199, file: !4200, line: 30, type: !356)
!4207 = !DILocation(line: 30, column: 21, scope: !4199)
!4208 = !DILocation(line: 32, column: 15, scope: !4199)
!4209 = !DILocation(line: 374, column: 2, scope: !4161, inlinedAt: !4204)
!4210 = !DILocation(line: 376, column: 14, scope: !4161, inlinedAt: !4204)
!4211 = !DILocation(line: 377, column: 9, scope: !4161, inlinedAt: !4204)
!4212 = !DILocation(line: 377, column: 16, scope: !4161, inlinedAt: !4204)
!4213 = !DILocation(line: 32, column: 18, scope: !4199)
!4214 = !DILocation(line: 32, column: 2, scope: !4199)
!4215 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4216, file: !4216, line: 137, type: !4217, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4216 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!109, !1124, !176, !284, !114}
!4219 = !DILocalVariable(name: "s", arg: 1, scope: !4215, file: !4216, line: 137, type: !1124)
!4220 = !DILocation(line: 137, column: 54, scope: !4215)
!4221 = !DILocalVariable(name: "object", arg: 2, scope: !4215, file: !4216, line: 137, type: !176)
!4222 = !DILocation(line: 137, column: 69, scope: !4215)
!4223 = !DILocalVariable(name: "size", arg: 3, scope: !4215, file: !4216, line: 138, type: !284)
!4224 = !DILocation(line: 138, column: 12, scope: !4215)
!4225 = !DILocalVariable(name: "flags", arg: 4, scope: !4215, file: !4216, line: 138, type: !114)
!4226 = !DILocation(line: 138, column: 24, scope: !4215)
!4227 = !DILocation(line: 140, column: 17, scope: !4215)
!4228 = !DILocation(line: 140, column: 2, scope: !4215)
!4229 = distinct !DISubprogram(name: "__list_add", scope: !3598, file: !3598, line: 63, type: !4230, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !123, !123, !123}
!4232 = !DILocalVariable(name: "new", arg: 1, scope: !4229, file: !3598, line: 63, type: !123)
!4233 = !DILocation(line: 63, column: 49, scope: !4229)
!4234 = !DILocalVariable(name: "prev", arg: 2, scope: !4229, file: !3598, line: 64, type: !123)
!4235 = !DILocation(line: 64, column: 28, scope: !4229)
!4236 = !DILocalVariable(name: "next", arg: 3, scope: !4229, file: !3598, line: 65, type: !123)
!4237 = !DILocation(line: 65, column: 28, scope: !4229)
!4238 = !DILocation(line: 67, column: 24, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4229, file: !3598, line: 67, column: 6)
!4240 = !DILocation(line: 67, column: 29, scope: !4239)
!4241 = !DILocation(line: 67, column: 35, scope: !4239)
!4242 = !DILocation(line: 67, column: 7, scope: !4239)
!4243 = !DILocation(line: 67, column: 6, scope: !4229)
!4244 = !DILocation(line: 68, column: 3, scope: !4239)
!4245 = !DILocation(line: 70, column: 15, scope: !4229)
!4246 = !DILocation(line: 70, column: 2, scope: !4229)
!4247 = !DILocation(line: 70, column: 8, scope: !4229)
!4248 = !DILocation(line: 70, column: 13, scope: !4229)
!4249 = !DILocation(line: 71, column: 14, scope: !4229)
!4250 = !DILocation(line: 71, column: 2, scope: !4229)
!4251 = !DILocation(line: 71, column: 7, scope: !4229)
!4252 = !DILocation(line: 71, column: 12, scope: !4229)
!4253 = !DILocation(line: 72, column: 14, scope: !4229)
!4254 = !DILocation(line: 72, column: 2, scope: !4229)
!4255 = !DILocation(line: 72, column: 7, scope: !4229)
!4256 = !DILocation(line: 72, column: 12, scope: !4229)
!4257 = !DILocation(line: 73, column: 2, scope: !4229)
!4258 = !DILocation(line: 73, column: 2, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4229, file: !3598, line: 73, column: 2)
!4260 = !DILocation(line: 73, column: 2, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4259, file: !3598, line: 73, column: 2)
!4262 = !DILocation(line: 73, column: 2, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4259, file: !3598, line: 73, column: 2)
!4264 = !DILocation(line: 74, column: 1, scope: !4229)
!4265 = distinct !DISubprogram(name: "__list_add_valid", scope: !3598, file: !3598, line: 45, type: !4266, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!168, !123, !123, !123}
!4268 = !DILocalVariable(name: "new", arg: 1, scope: !4265, file: !3598, line: 45, type: !123)
!4269 = !DILocation(line: 45, column: 55, scope: !4265)
!4270 = !DILocalVariable(name: "prev", arg: 2, scope: !4265, file: !3598, line: 46, type: !123)
!4271 = !DILocation(line: 46, column: 23, scope: !4265)
!4272 = !DILocalVariable(name: "next", arg: 3, scope: !4265, file: !3598, line: 47, type: !123)
!4273 = !DILocation(line: 47, column: 23, scope: !4265)
!4274 = !DILocation(line: 49, column: 2, scope: !4265)
!4275 = distinct !DISubprogram(name: "__list_del_entry", scope: !3598, file: !3598, line: 130, type: !3599, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4276 = !DILocalVariable(name: "entry", arg: 1, scope: !4275, file: !3598, line: 130, type: !123)
!4277 = !DILocation(line: 130, column: 55, scope: !4275)
!4278 = !DILocation(line: 132, column: 30, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4275, file: !3598, line: 132, column: 6)
!4280 = !DILocation(line: 132, column: 7, scope: !4279)
!4281 = !DILocation(line: 132, column: 6, scope: !4275)
!4282 = !DILocation(line: 133, column: 3, scope: !4279)
!4283 = !DILocation(line: 135, column: 13, scope: !4275)
!4284 = !DILocation(line: 135, column: 20, scope: !4275)
!4285 = !DILocation(line: 135, column: 26, scope: !4275)
!4286 = !DILocation(line: 135, column: 33, scope: !4275)
!4287 = !DILocation(line: 135, column: 2, scope: !4275)
!4288 = !DILocation(line: 136, column: 1, scope: !4275)
!4289 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3598, file: !3598, line: 51, type: !4290, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!168, !123}
!4292 = !DILocalVariable(name: "entry", arg: 1, scope: !4289, file: !3598, line: 51, type: !123)
!4293 = !DILocation(line: 51, column: 61, scope: !4289)
!4294 = !DILocation(line: 53, column: 2, scope: !4289)
!4295 = distinct !DISubprogram(name: "__list_del", scope: !3598, file: !3598, line: 110, type: !3888, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4296 = !DILocalVariable(name: "prev", arg: 1, scope: !4295, file: !3598, line: 110, type: !123)
!4297 = !DILocation(line: 110, column: 50, scope: !4295)
!4298 = !DILocalVariable(name: "next", arg: 2, scope: !4295, file: !3598, line: 110, type: !123)
!4299 = !DILocation(line: 110, column: 75, scope: !4295)
!4300 = !DILocation(line: 112, column: 15, scope: !4295)
!4301 = !DILocation(line: 112, column: 2, scope: !4295)
!4302 = !DILocation(line: 112, column: 8, scope: !4295)
!4303 = !DILocation(line: 112, column: 13, scope: !4295)
!4304 = !DILocation(line: 113, column: 2, scope: !4295)
!4305 = !DILocation(line: 113, column: 2, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4295, file: !3598, line: 113, column: 2)
!4307 = !DILocation(line: 113, column: 2, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4306, file: !3598, line: 113, column: 2)
!4309 = !DILocation(line: 113, column: 2, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4306, file: !3598, line: 113, column: 2)
!4311 = !DILocation(line: 114, column: 1, scope: !4295)
!4312 = distinct !DISubprogram(name: "set_bit", scope: !4313, file: !4313, line: 26, type: !4314, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4313 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !272, !4316}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !287)
!4318 = !DILocalVariable(name: "nr", arg: 1, scope: !4319, file: !4162, line: 52, type: !272)
!4319 = distinct !DISubprogram(name: "arch_set_bit", scope: !4162, file: !4162, line: 52, type: !4314, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4320 = !DILocation(line: 52, column: 19, scope: !4319, inlinedAt: !4321)
!4321 = distinct !DILocation(line: 29, column: 2, scope: !4312)
!4322 = !DILocalVariable(name: "addr", arg: 2, scope: !4319, file: !4162, line: 52, type: !4316)
!4323 = !DILocation(line: 52, column: 47, scope: !4319, inlinedAt: !4321)
!4324 = !DILocalVariable(name: "v", arg: 1, scope: !4325, file: !4326, line: 84, type: !4329)
!4325 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4326, file: !4326, line: 84, type: !4327, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4326 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !4329, !284}
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4331)
!4331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4332 = !DILocation(line: 84, column: 74, scope: !4325, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 28, column: 2, scope: !4312)
!4334 = !DILocalVariable(name: "size", arg: 2, scope: !4325, file: !4326, line: 84, type: !284)
!4335 = !DILocation(line: 84, column: 84, scope: !4325, inlinedAt: !4333)
!4336 = !DILocalVariable(name: "nr", arg: 1, scope: !4312, file: !4313, line: 26, type: !272)
!4337 = !DILocation(line: 26, column: 33, scope: !4312)
!4338 = !DILocalVariable(name: "addr", arg: 2, scope: !4312, file: !4313, line: 26, type: !4316)
!4339 = !DILocation(line: 26, column: 61, scope: !4312)
!4340 = !DILocation(line: 28, column: 26, scope: !4312)
!4341 = !DILocation(line: 28, column: 33, scope: !4312)
!4342 = !DILocation(line: 28, column: 31, scope: !4312)
!4343 = !DILocation(line: 86, column: 20, scope: !4325, inlinedAt: !4333)
!4344 = !DILocation(line: 86, column: 23, scope: !4325, inlinedAt: !4333)
!4345 = !DILocation(line: 86, column: 2, scope: !4325, inlinedAt: !4333)
!4346 = !DILocation(line: 87, column: 2, scope: !4325, inlinedAt: !4333)
!4347 = !DILocation(line: 29, column: 15, scope: !4312)
!4348 = !DILocation(line: 29, column: 19, scope: !4312)
!4349 = !DILocation(line: 54, column: 27, scope: !4350, inlinedAt: !4321)
!4350 = distinct !DILexicalBlock(scope: !4319, file: !4162, line: 54, column: 6)
!4351 = !DILocation(line: 54, column: 6, scope: !4350, inlinedAt: !4321)
!4352 = !DILocation(line: 54, column: 6, scope: !4319, inlinedAt: !4321)
!4353 = !DILocation(line: 56, column: 6, scope: !4354, inlinedAt: !4321)
!4354 = distinct !DILexicalBlock(scope: !4350, file: !4162, line: 54, column: 32)
!4355 = !DILocation(line: 57, column: 12, scope: !4354, inlinedAt: !4321)
!4356 = !DILocation(line: 55, column: 3, scope: !4354, inlinedAt: !4321)
!4357 = !{i32 -2147057959}
!4358 = !DILocation(line: 59, column: 2, scope: !4354, inlinedAt: !4321)
!4359 = !DILocation(line: 61, column: 8, scope: !4360, inlinedAt: !4321)
!4360 = distinct !DILexicalBlock(scope: !4350, file: !4162, line: 59, column: 9)
!4361 = !DILocation(line: 61, column: 32, scope: !4360, inlinedAt: !4321)
!4362 = !DILocation(line: 60, column: 3, scope: !4360, inlinedAt: !4321)
!4363 = !{i32 -2147057827}
!4364 = !DILocation(line: 30, column: 1, scope: !4312)
!4365 = distinct !DISubprogram(name: "kasan_check_write", scope: !4366, file: !4366, line: 38, type: !4367, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4366 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!168, !4329, !5}
!4369 = !DILocalVariable(name: "p", arg: 1, scope: !4365, file: !4366, line: 38, type: !4329)
!4370 = !DILocation(line: 38, column: 59, scope: !4365)
!4371 = !DILocalVariable(name: "size", arg: 2, scope: !4365, file: !4366, line: 38, type: !5)
!4372 = !DILocation(line: 38, column: 75, scope: !4365)
!4373 = !DILocation(line: 40, column: 2, scope: !4365)
!4374 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4375, file: !4375, line: 178, type: !4376, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4375 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !4329, !284, !131}
!4378 = !DILocalVariable(name: "ptr", arg: 1, scope: !4374, file: !4375, line: 178, type: !4329)
!4379 = !DILocation(line: 178, column: 60, scope: !4374)
!4380 = !DILocalVariable(name: "size", arg: 2, scope: !4374, file: !4375, line: 178, type: !284)
!4381 = !DILocation(line: 178, column: 72, scope: !4374)
!4382 = !DILocalVariable(name: "type", arg: 3, scope: !4374, file: !4375, line: 179, type: !131)
!4383 = !DILocation(line: 179, column: 15, scope: !4374)
!4384 = !DILocation(line: 179, column: 23, scope: !4374)
!4385 = distinct !DISubprogram(name: "clear_bit", scope: !4313, file: !4313, line: 39, type: !4314, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4386 = !DILocalVariable(name: "nr", arg: 1, scope: !4387, file: !4162, line: 72, type: !272)
!4387 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4162, file: !4162, line: 72, type: !4314, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4388 = !DILocation(line: 72, column: 21, scope: !4387, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 42, column: 2, scope: !4385)
!4390 = !DILocalVariable(name: "addr", arg: 2, scope: !4387, file: !4162, line: 72, type: !4316)
!4391 = !DILocation(line: 72, column: 49, scope: !4387, inlinedAt: !4389)
!4392 = !DILocation(line: 84, column: 74, scope: !4325, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 41, column: 2, scope: !4385)
!4394 = !DILocation(line: 84, column: 84, scope: !4325, inlinedAt: !4393)
!4395 = !DILocalVariable(name: "nr", arg: 1, scope: !4385, file: !4313, line: 39, type: !272)
!4396 = !DILocation(line: 39, column: 35, scope: !4385)
!4397 = !DILocalVariable(name: "addr", arg: 2, scope: !4385, file: !4313, line: 39, type: !4316)
!4398 = !DILocation(line: 39, column: 63, scope: !4385)
!4399 = !DILocation(line: 41, column: 26, scope: !4385)
!4400 = !DILocation(line: 41, column: 33, scope: !4385)
!4401 = !DILocation(line: 41, column: 31, scope: !4385)
!4402 = !DILocation(line: 86, column: 20, scope: !4325, inlinedAt: !4393)
!4403 = !DILocation(line: 86, column: 23, scope: !4325, inlinedAt: !4393)
!4404 = !DILocation(line: 86, column: 2, scope: !4325, inlinedAt: !4393)
!4405 = !DILocation(line: 87, column: 2, scope: !4325, inlinedAt: !4393)
!4406 = !DILocation(line: 42, column: 17, scope: !4385)
!4407 = !DILocation(line: 42, column: 21, scope: !4385)
!4408 = !DILocation(line: 74, column: 27, scope: !4409, inlinedAt: !4389)
!4409 = distinct !DILexicalBlock(scope: !4387, file: !4162, line: 74, column: 6)
!4410 = !DILocation(line: 74, column: 6, scope: !4409, inlinedAt: !4389)
!4411 = !DILocation(line: 74, column: 6, scope: !4387, inlinedAt: !4389)
!4412 = !DILocation(line: 76, column: 6, scope: !4413, inlinedAt: !4389)
!4413 = distinct !DILexicalBlock(scope: !4409, file: !4162, line: 74, column: 32)
!4414 = !DILocation(line: 77, column: 13, scope: !4413, inlinedAt: !4389)
!4415 = !DILocation(line: 77, column: 12, scope: !4413, inlinedAt: !4389)
!4416 = !DILocation(line: 75, column: 3, scope: !4413, inlinedAt: !4389)
!4417 = !{i32 -2147057005}
!4418 = !DILocation(line: 78, column: 2, scope: !4413, inlinedAt: !4389)
!4419 = !DILocation(line: 80, column: 8, scope: !4420, inlinedAt: !4389)
!4420 = distinct !DILexicalBlock(scope: !4409, file: !4162, line: 78, column: 9)
!4421 = !DILocation(line: 80, column: 32, scope: !4420, inlinedAt: !4389)
!4422 = !DILocation(line: 79, column: 3, scope: !4420, inlinedAt: !4389)
!4423 = !{i32 -2147056873}
!4424 = !DILocation(line: 43, column: 1, scope: !4385)
!4425 = distinct !DISubprogram(name: "irq_find_matching_fwnode", scope: !49, file: !49, line: 299, type: !4426, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!1956, !150, !48}
!4428 = !DILocalVariable(name: "fwnode", arg: 1, scope: !4425, file: !49, line: 299, type: !150)
!4429 = !DILocation(line: 299, column: 67, scope: !4425)
!4430 = !DILocalVariable(name: "bus_token", arg: 2, scope: !4425, file: !49, line: 300, type: !48)
!4431 = !DILocation(line: 300, column: 36, scope: !4425)
!4432 = !DILocalVariable(name: "fwspec", scope: !4425, file: !49, line: 302, type: !1975)
!4433 = !DILocation(line: 302, column: 20, scope: !4425)
!4434 = !DILocation(line: 302, column: 29, scope: !4425)
!4435 = !DILocation(line: 303, column: 13, scope: !4425)
!4436 = !DILocation(line: 306, column: 43, scope: !4425)
!4437 = !DILocation(line: 306, column: 9, scope: !4425)
!4438 = !DILocation(line: 306, column: 2, scope: !4425)
!4439 = distinct !DISubprogram(name: "of_node_to_fwnode", scope: !49, file: !49, line: 283, type: !4440, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !210)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!150, !132}
!4442 = !DILocalVariable(name: "node", arg: 1, scope: !4439, file: !49, line: 283, type: !132)
!4443 = !DILocation(line: 283, column: 75, scope: !4439)
!4444 = !DILocation(line: 285, column: 9, scope: !4439)
!4445 = !DILocation(line: 285, column: 17, scope: !4439)
!4446 = !DILocation(line: 285, column: 23, scope: !4439)
!4447 = !DILocation(line: 285, column: 2, scope: !4439)
