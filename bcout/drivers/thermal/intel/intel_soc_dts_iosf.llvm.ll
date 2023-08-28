; ModuleID = '../bcout/drivers/thermal/intel/intel_soc_dts_iosf.llvm.bc'
source_filename = "drivers/thermal/intel/intel_soc_dts_iosf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
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
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.17, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.kmem_cache = type opaque
%struct.thermal_zone_device_ops = type { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32)*, i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32)* }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, %struct.thermal_attr*, %struct.thermal_attr*, %struct.thermal_attr*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, %struct.thermal_governor*, i8*, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
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
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.thermal_attr = type opaque
%struct.thermal_zone_params = type { [20 x i8], i8, i32, %struct.thermal_bind_params*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_bind_params = type { %struct.thermal_cooling_device*, i32, i32, i64*, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* }
%struct.thermal_governor = type { [20 x i8], i32 (%struct.thermal_zone_device*)*, void (%struct.thermal_zone_device*)*, i32 (%struct.thermal_zone_device*, i32)*, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.workqueue_struct = type opaque
%struct.thermal_cooling_device = type { i32, [20 x i8], %struct.device, %struct.device_node*, i8*, i8*, %struct.thermal_cooling_device_ops*, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_cooling_device_ops = type { i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64)*, i32 (%struct.thermal_cooling_device*, i32*)*, i32 (%struct.thermal_cooling_device*, i64, i32*)*, i32 (%struct.thermal_cooling_device*, i32, i64*)* }
%struct.intel_soc_dts_sensors = type { i32, %struct.spinlock, %struct.mutex, i32, [2 x %struct.intel_soc_dts_sensor_entry] }
%struct.intel_soc_dts_sensor_entry = type { i32, i32, i32, i32, [2 x i32], %struct.thermal_zone_device*, %struct.intel_soc_dts_sensors* }

@intel_soc_dts_iosf_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"&sensors->dts_update_lock\00", align 1
@__UNIQUE_ID_file163 = internal constant [65 x i8] c"intel_soc_dts_iosf.file=drivers/thermal/intel/intel_soc_dts_iosf\00", section ".modinfo", align 1, !dbg !2274
@__UNIQUE_ID_license164 = internal constant [34 x i8] c"intel_soc_dts_iosf.license=GPL v2\00", section ".modinfo", align 1, !dbg !2279
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"soc_dts%d\00", align 1
@tzone_ops = internal global %struct.thermal_zone_device_ops { i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* null, i32 (%struct.thermal_zone_device*, i32*)* @sys_get_curr_temp, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* @sys_get_trip_type, i32 (%struct.thermal_zone_device*, i32, i32*)* @sys_get_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32)* @sys_set_trip_temp, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null, i32 (%struct.thermal_zone_device*, i32*)* null, i32 (%struct.thermal_zone_device*, i32)* null, i32 (%struct.thermal_zone_device*, i32, i32*)* null, i32 (%struct.thermal_zone_device*, i32, i32)* null }, align 8, !dbg !2284
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_file163, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_license164, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_soc_dts_iosf_add_read_only_critical_trip(%struct.intel_soc_dts_sensors* %sensors, i32 %critical_offset) #0 !dbg !2292 {
entry:
  %retval = alloca i32, align 4
  %sensors.addr = alloca %struct.intel_soc_dts_sensors*, align 8
  %critical_offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.intel_soc_dts_sensors* %sensors, %struct.intel_soc_dts_sensors** %sensors.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors.addr, metadata !2295, metadata !DIExpression()), !dbg !2296
  store i32 %critical_offset, i32* %critical_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %critical_offset.addr, metadata !2297, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2299, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2301, metadata !DIExpression()), !dbg !2302
  store i32 0, i32* %i, align 4, !dbg !2303
  br label %for.cond, !dbg !2305

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4, !dbg !2306
  %cmp = icmp slt i32 %0, 2, !dbg !2308
  br i1 %cmp, label %for.body, label %for.end12, !dbg !2309

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !2310
  br label %for.cond1, !dbg !2313

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !2314
  %2 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2316
  %soc_dts = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %2, i32 0, i32 4, !dbg !2317
  %3 = load i32, i32* %i, align 4, !dbg !2318
  %idxprom = sext i32 %3 to i64, !dbg !2316
  %arrayidx = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts, i64 0, i64 %idxprom, !dbg !2316
  %trip_count = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %arrayidx, i32 0, i32 3, !dbg !2319
  %4 = load i32, i32* %trip_count, align 4, !dbg !2319
  %cmp2 = icmp ult i32 %1, %4, !dbg !2320
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2321

for.body3:                                        ; preds = %for.cond1
  %5 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2322
  %soc_dts4 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %5, i32 0, i32 4, !dbg !2325
  %6 = load i32, i32* %i, align 4, !dbg !2326
  %idxprom5 = sext i32 %6 to i64, !dbg !2322
  %arrayidx6 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts4, i64 0, i64 %idxprom5, !dbg !2322
  %trip_mask = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %arrayidx6, i32 0, i32 2, !dbg !2327
  %7 = load i32, i32* %trip_mask, align 8, !dbg !2327
  %conv = zext i32 %7 to i64, !dbg !2322
  %8 = load i32, i32* %j, align 4, !dbg !2328
  %sh_prom = zext i32 %8 to i64, !dbg !2328
  %shl = shl i64 1, %sh_prom, !dbg !2328
  %and = and i64 %conv, %shl, !dbg !2329
  %tobool = icmp ne i64 %and, 0, !dbg !2329
  br i1 %tobool, label %if.end, label %if.then, !dbg !2330

if.then:                                          ; preds = %for.body3
  %9 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2331
  %soc_dts7 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %9, i32 0, i32 4, !dbg !2333
  %10 = load i32, i32* %i, align 4, !dbg !2334
  %idxprom8 = sext i32 %10 to i64, !dbg !2331
  %arrayidx9 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts7, i64 0, i64 %idxprom8, !dbg !2331
  %11 = load i32, i32* %j, align 4, !dbg !2335
  %12 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2336
  %tj_max = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %12, i32 0, i32 0, !dbg !2337
  %13 = load i32, i32* %tj_max, align 8, !dbg !2337
  %14 = load i32, i32* %critical_offset.addr, align 4, !dbg !2338
  %sub = sub i32 %13, %14, !dbg !2339
  %call = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %arrayidx9, i32 %11, i32 %sub, i32 3) #9, !dbg !2340
  store i32 %call, i32* %retval, align 4, !dbg !2341
  br label %return, !dbg !2341

if.end:                                           ; preds = %for.body3
  br label %for.inc, !dbg !2342

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4, !dbg !2343
  %inc = add i32 %15, 1, !dbg !2343
  store i32 %inc, i32* %j, align 4, !dbg !2343
  br label %for.cond1, !dbg !2344, !llvm.loop !2345

for.end:                                          ; preds = %for.cond1
  br label %for.inc10, !dbg !2347

for.inc10:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4, !dbg !2348
  %inc11 = add i32 %16, 1, !dbg !2348
  store i32 %inc11, i32* %i, align 4, !dbg !2348
  br label %for.cond, !dbg !2349, !llvm.loop !2350

for.end12:                                        ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !2352
  br label %return, !dbg !2352

return:                                           ; preds = %for.end12, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !2353
  ret i32 %17, !dbg !2353
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %dts, i32 %thres_index, i32 %temp, i32 %trip_type) #0 !dbg !2354 {
entry:
  %retval = alloca i32, align 4
  %dts.addr = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %thres_index.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %trip_type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %temp_out = alloca i32, align 4
  %out = alloca i32, align 4
  %update_ptps = alloca i64, align 8
  %store_ptps = alloca i32, align 4
  %store_ptmc = alloca i32, align 4
  %store_te_out = alloca i32, align 4
  %te_out = alloca i32, align 4
  %int_enable_bit = alloca i32, align 4
  %sensors = alloca %struct.intel_soc_dts_sensors*, align 8
  %tmp = alloca i32, align 4
  store %struct.intel_soc_dts_sensor_entry* %dts, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts.addr, metadata !2358, metadata !DIExpression()), !dbg !2359
  store i32 %thres_index, i32* %thres_index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %thres_index.addr, metadata !2360, metadata !DIExpression()), !dbg !2361
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !2362, metadata !DIExpression()), !dbg !2363
  store i32 %trip_type, i32* %trip_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip_type.addr, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata i32* %temp_out, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.declare(metadata i32* %out, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.declare(metadata i64* %update_ptps, metadata !2372, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.declare(metadata i32* %store_ptps, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %store_ptmc, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.declare(metadata i32* %store_te_out, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.declare(metadata i32* %te_out, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata i32* %int_enable_bit, metadata !2382, metadata !DIExpression()), !dbg !2383
  store i32 16384, i32* %int_enable_bit, align 4, !dbg !2383
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors, metadata !2384, metadata !DIExpression()), !dbg !2385
  %0 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !2386
  %sensors1 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %0, i32 0, i32 6, !dbg !2387
  %1 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors1, align 8, !dbg !2387
  store %struct.intel_soc_dts_sensors* %1, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2385
  %2 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2388
  %intr_type = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %2, i32 0, i32 3, !dbg !2390
  %3 = load i32, i32* %intr_type, align 8, !dbg !2390
  %cmp = icmp eq i32 %3, 2, !dbg !2391
  br i1 %cmp, label %if.then, label %if.end, !dbg !2392

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %int_enable_bit, align 4, !dbg !2393
  %conv = zext i32 %4 to i64, !dbg !2393
  %or = or i64 %conv, 2048, !dbg !2393
  %conv2 = trunc i64 %or to i32, !dbg !2393
  store i32 %conv2, i32* %int_enable_bit, align 4, !dbg !2393
  br label %if.end, !dbg !2394

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2395
  %tj_max = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %5, i32 0, i32 0, !dbg !2396
  %6 = load i32, i32* %tj_max, align 8, !dbg !2396
  %7 = load i32, i32* %temp.addr, align 4, !dbg !2397
  %sub = sub i32 %6, %7, !dbg !2398
  %div = udiv i32 %sub, 1000, !dbg !2399
  store i32 %div, i32* %temp_out, align 4, !dbg !2400
  %call = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 178, i32* %store_ptps) #9, !dbg !2401
  store i32 %call, i32* %status, align 4, !dbg !2402
  %8 = load i32, i32* %status, align 4, !dbg !2403
  %tobool = icmp ne i32 %8, 0, !dbg !2403
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !2405

if.then3:                                         ; preds = %if.end
  %9 = load i32, i32* %status, align 4, !dbg !2406
  store i32 %9, i32* %retval, align 4, !dbg !2407
  br label %return, !dbg !2407

if.end4:                                          ; preds = %if.end
  %10 = load i32, i32* %store_ptps, align 4, !dbg !2408
  %conv5 = zext i32 %10 to i64, !dbg !2408
  store i64 %conv5, i64* %update_ptps, align 8, !dbg !2409
  %11 = load i32, i32* %temp_out, align 4, !dbg !2410
  %and = and i32 %11, 255, !dbg !2411
  %conv6 = zext i32 %and to i64, !dbg !2410
  %12 = load i32, i32* %thres_index.addr, align 4, !dbg !2412
  %mul = mul i32 %12, 8, !dbg !2413
  %conv7 = sext i32 %mul to i64, !dbg !2412
  call void @bitmap_set_value8(i64* %update_ptps, i64 %conv6, i64 %conv7) #9, !dbg !2414
  %13 = load i64, i64* %update_ptps, align 8, !dbg !2415
  %conv8 = trunc i64 %13 to i32, !dbg !2415
  store i32 %conv8, i32* %out, align 4, !dbg !2416
  %14 = load i32, i32* %out, align 4, !dbg !2417
  %call9 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 178, i32 %14) #9, !dbg !2418
  store i32 %call9, i32* %status, align 4, !dbg !2419
  %15 = load i32, i32* %status, align 4, !dbg !2420
  %tobool10 = icmp ne i32 %15, 0, !dbg !2420
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2422

if.then11:                                        ; preds = %if.end4
  %16 = load i32, i32* %status, align 4, !dbg !2423
  store i32 %16, i32* %retval, align 4, !dbg !2424
  br label %return, !dbg !2424

if.end12:                                         ; preds = %if.end4
  store i32 0, i32* %tmp, align 4, !dbg !2425
  %17 = load i32, i32* %tmp, align 4, !dbg !2428
  %call13 = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 128, i32* %out) #9, !dbg !2429
  store i32 %call13, i32* %status, align 4, !dbg !2430
  %18 = load i32, i32* %status, align 4, !dbg !2431
  %tobool14 = icmp ne i32 %18, 0, !dbg !2431
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2433

if.then15:                                        ; preds = %if.end12
  br label %err_restore_ptps, !dbg !2434

if.end16:                                         ; preds = %if.end12
  %19 = load i32, i32* %out, align 4, !dbg !2435
  store i32 %19, i32* %store_ptmc, align 4, !dbg !2436
  %20 = load i32, i32* %thres_index.addr, align 4, !dbg !2437
  %add = add i32 181, %20, !dbg !2438
  %call17 = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 %add, i32* %te_out) #9, !dbg !2439
  store i32 %call17, i32* %status, align 4, !dbg !2440
  %21 = load i32, i32* %status, align 4, !dbg !2441
  %tobool18 = icmp ne i32 %21, 0, !dbg !2441
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !2443

if.then19:                                        ; preds = %if.end16
  br label %err_restore_ptmc, !dbg !2444

if.end20:                                         ; preds = %if.end16
  %22 = load i32, i32* %te_out, align 4, !dbg !2445
  store i32 %22, i32* %store_te_out, align 4, !dbg !2446
  %23 = load i32, i32* %out, align 4, !dbg !2447
  %conv21 = zext i32 %23 to i64, !dbg !2447
  %or22 = or i64 %conv21, 196608, !dbg !2447
  %conv23 = trunc i64 %or22 to i32, !dbg !2447
  store i32 %conv23, i32* %out, align 4, !dbg !2447
  %24 = load i32, i32* %temp.addr, align 4, !dbg !2448
  %tobool24 = icmp ne i32 %24, 0, !dbg !2448
  br i1 %tobool24, label %if.then25, label %if.else36, !dbg !2450

if.then25:                                        ; preds = %if.end20
  %25 = load i32, i32* %thres_index.addr, align 4, !dbg !2451
  %tobool26 = icmp ne i32 %25, 0, !dbg !2451
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !2454

if.then27:                                        ; preds = %if.then25
  %26 = load i32, i32* %out, align 4, !dbg !2455
  %conv28 = zext i32 %26 to i64, !dbg !2455
  %or29 = or i64 %conv28, 2, !dbg !2455
  %conv30 = trunc i64 %or29 to i32, !dbg !2455
  store i32 %conv30, i32* %out, align 4, !dbg !2455
  br label %if.end34, !dbg !2456

if.else:                                          ; preds = %if.then25
  %27 = load i32, i32* %out, align 4, !dbg !2457
  %conv31 = zext i32 %27 to i64, !dbg !2457
  %or32 = or i64 %conv31, 1, !dbg !2457
  %conv33 = trunc i64 %or32 to i32, !dbg !2457
  store i32 %conv33, i32* %out, align 4, !dbg !2457
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %28 = load i32, i32* %int_enable_bit, align 4, !dbg !2458
  %29 = load i32, i32* %te_out, align 4, !dbg !2459
  %or35 = or i32 %29, %28, !dbg !2459
  store i32 %or35, i32* %te_out, align 4, !dbg !2459
  br label %if.end48, !dbg !2460

if.else36:                                        ; preds = %if.end20
  %30 = load i32, i32* %thres_index.addr, align 4, !dbg !2461
  %tobool37 = icmp ne i32 %30, 0, !dbg !2461
  br i1 %tobool37, label %if.then38, label %if.else42, !dbg !2464

if.then38:                                        ; preds = %if.else36
  %31 = load i32, i32* %out, align 4, !dbg !2465
  %conv39 = zext i32 %31 to i64, !dbg !2465
  %and40 = and i64 %conv39, -3, !dbg !2465
  %conv41 = trunc i64 %and40 to i32, !dbg !2465
  store i32 %conv41, i32* %out, align 4, !dbg !2465
  br label %if.end46, !dbg !2466

if.else42:                                        ; preds = %if.else36
  %32 = load i32, i32* %out, align 4, !dbg !2467
  %conv43 = zext i32 %32 to i64, !dbg !2467
  %and44 = and i64 %conv43, -2, !dbg !2467
  %conv45 = trunc i64 %and44 to i32, !dbg !2467
  store i32 %conv45, i32* %out, align 4, !dbg !2467
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.then38
  %33 = load i32, i32* %int_enable_bit, align 4, !dbg !2468
  %neg = xor i32 %33, -1, !dbg !2469
  %34 = load i32, i32* %te_out, align 4, !dbg !2470
  %and47 = and i32 %34, %neg, !dbg !2470
  store i32 %and47, i32* %te_out, align 4, !dbg !2470
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end34
  %35 = load i32, i32* %out, align 4, !dbg !2471
  %call49 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 128, i32 %35) #9, !dbg !2472
  store i32 %call49, i32* %status, align 4, !dbg !2473
  %36 = load i32, i32* %status, align 4, !dbg !2474
  %tobool50 = icmp ne i32 %36, 0, !dbg !2474
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !2476

if.then51:                                        ; preds = %if.end48
  br label %err_restore_te_out, !dbg !2477

if.end52:                                         ; preds = %if.end48
  %37 = load i32, i32* %thres_index.addr, align 4, !dbg !2478
  %add53 = add i32 181, %37, !dbg !2479
  %38 = load i32, i32* %te_out, align 4, !dbg !2480
  %call54 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 %add53, i32 %38) #9, !dbg !2481
  store i32 %call54, i32* %status, align 4, !dbg !2482
  %39 = load i32, i32* %status, align 4, !dbg !2483
  %tobool55 = icmp ne i32 %39, 0, !dbg !2483
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !2485

if.then56:                                        ; preds = %if.end52
  br label %err_restore_te_out, !dbg !2486

if.end57:                                         ; preds = %if.end52
  %40 = load i32, i32* %trip_type.addr, align 4, !dbg !2487
  %41 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !2488
  %trip_types = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %41, i32 0, i32 4, !dbg !2489
  %42 = load i32, i32* %thres_index.addr, align 4, !dbg !2490
  %idxprom = sext i32 %42 to i64, !dbg !2488
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %trip_types, i64 0, i64 %idxprom, !dbg !2488
  store i32 %40, i32* %arrayidx, align 4, !dbg !2491
  store i32 0, i32* %retval, align 4, !dbg !2492
  br label %return, !dbg !2492

err_restore_te_out:                               ; preds = %if.then56, %if.then51
  call void @llvm.dbg.label(metadata !2493), !dbg !2494
  %43 = load i32, i32* %store_te_out, align 4, !dbg !2495
  %call58 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 128, i32 %43) #9, !dbg !2496
  br label %err_restore_ptmc, !dbg !2496

err_restore_ptmc:                                 ; preds = %err_restore_te_out, %if.then19
  call void @llvm.dbg.label(metadata !2497), !dbg !2498
  %44 = load i32, i32* %store_ptmc, align 4, !dbg !2499
  %call59 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 128, i32 %44) #9, !dbg !2500
  br label %err_restore_ptps, !dbg !2500

err_restore_ptps:                                 ; preds = %err_restore_ptmc, %if.then15
  call void @llvm.dbg.label(metadata !2501), !dbg !2502
  %45 = load i32, i32* %store_ptps, align 4, !dbg !2503
  %call60 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 178, i32 %45) #9, !dbg !2504
  %46 = load i32, i32* %status, align 4, !dbg !2505
  store i32 %46, i32* %retval, align 4, !dbg !2506
  br label %return, !dbg !2506

return:                                           ; preds = %err_restore_ptps, %if.end57, %if.then11, %if.then3
  %47 = load i32, i32* %retval, align 4, !dbg !2507
  ret i32 %47, !dbg !2507
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_soc_dts_iosf_interrupt_handler(%struct.intel_soc_dts_sensors* %sensors) #0 !dbg !2508 {
entry:
  %lock.addr.i33 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i33, metadata !2511, metadata !DIExpression()), !dbg !2517
  %flags.addr.i34 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i34, metadata !2521, metadata !DIExpression()), !dbg !2522
  %tmp.i35 = alloca i32, align 4
  %tmp8.i36 = alloca i32, align 4
  %lock.addr.i31 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i31, metadata !2511, metadata !DIExpression()), !dbg !2523
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2521, metadata !DIExpression()), !dbg !2525
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2526, metadata !DIExpression()), !dbg !2531
  %sensors.addr = alloca %struct.intel_soc_dts_sensors*, align 8
  %sticky_out = alloca i32, align 4
  %status = alloca i32, align 4
  %ptmc_out = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  store %struct.intel_soc_dts_sensors* %sensors, %struct.intel_soc_dts_sensors** %sensors.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.declare(metadata i32* %sticky_out, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.declare(metadata i32* %status, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.declare(metadata i32* %ptmc_out, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2546, metadata !DIExpression()), !dbg !2547
  br label %do.body, !dbg !2548

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2549

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2553, metadata !DIExpression()), !dbg !2552
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2552
  %conv = zext i1 %cmp to i32, !dbg !2552
  store i32 1, i32* %tmp, align 4, !dbg !2552
  %0 = load i32, i32* %tmp, align 4, !dbg !2552
  br label %do.body2, !dbg !2554

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !2555

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2556

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !2562, metadata !DIExpression()), !dbg !2561
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !2561
  %conv8 = zext i1 %cmp7 to i32, !dbg !2561
  store i32 1, i32* %tmp9, align 4, !dbg !2561
  %1 = load i32, i32* %tmp9, align 4, !dbg !2561
  %call = call i64 @arch_local_irq_save() #9, !dbg !2563
  store i64 %call, i64* %flags, align 8, !dbg !2563
  br label %do.end, !dbg !2563

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !2556

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !2555

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2564, !srcloc !2565
  br label %do.body12, !dbg !2564

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2566
  %intr_notify_lock = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %2, i32 0, i32 1, !dbg !2566
  store %struct.spinlock* %intr_notify_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2567
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !2568
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !2568
  br label %do.end14, !dbg !2566

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !2564

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !2555

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2554

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2549

do.end18:                                         ; preds = %do.end17
  %call19 = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 128, i32* %ptmc_out) #9, !dbg !2569
  store i32 %call19, i32* %status, align 4, !dbg !2570
  %5 = load i32, i32* %ptmc_out, align 4, !dbg !2571
  %conv20 = zext i32 %5 to i64, !dbg !2571
  %or = or i64 %conv20, 16, !dbg !2571
  %conv21 = trunc i64 %or to i32, !dbg !2571
  store i32 %conv21, i32* %ptmc_out, align 4, !dbg !2571
  %6 = load i32, i32* %ptmc_out, align 4, !dbg !2572
  %call22 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 128, i32 %6) #9, !dbg !2573
  store i32 %call22, i32* %status, align 4, !dbg !2574
  %call23 = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 180, i32* %sticky_out) #9, !dbg !2575
  store i32 %call23, i32* %status, align 4, !dbg !2576
  store i32 0, i32* %tmp24, align 4, !dbg !2577
  %7 = load i32, i32* %tmp24, align 4, !dbg !2580
  %8 = load i32, i32* %sticky_out, align 4, !dbg !2581
  %and = and i32 %8, 3, !dbg !2582
  %tobool = icmp ne i32 %and, 0, !dbg !2582
  br i1 %tobool, label %if.then, label %if.else, !dbg !2583

if.then:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2584, metadata !DIExpression()), !dbg !2585
  %9 = load i32, i32* %sticky_out, align 4, !dbg !2586
  %call25 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 180, i32 %9) #9, !dbg !2587
  store i32 %call25, i32* %status, align 4, !dbg !2588
  %10 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2589
  %intr_notify_lock26 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %10, i32 0, i32 1, !dbg !2590
  %11 = load i64, i64* %flags, align 8, !dbg !2591
  store %struct.spinlock* %intr_notify_lock26, %struct.spinlock** %lock.addr.i33, align 8
  store i64 %11, i64* %flags.addr.i34, align 8
  call void @llvm.dbg.declare(metadata !31, metadata !2592, metadata !DIExpression()) #5, !dbg !2595
  call void @llvm.dbg.declare(metadata !31, metadata !2596, metadata !DIExpression()) #5, !dbg !2595
  store i32 1, i32* %tmp.i35, align 4, !dbg !2595
  %12 = load i32, i32* %tmp.i35, align 4, !dbg !2595
  call void @llvm.dbg.declare(metadata !31, metadata !2597, metadata !DIExpression()) #5, !dbg !2602
  call void @llvm.dbg.declare(metadata !31, metadata !2603, metadata !DIExpression()) #5, !dbg !2602
  store i32 1, i32* %tmp8.i36, align 4, !dbg !2602
  %13 = load i32, i32* %tmp8.i36, align 4, !dbg !2602
  %14 = load i64, i64* %flags.addr.i34, align 8, !dbg !2604
  call void @arch_local_irq_restore(i64 %14) #10, !dbg !2604
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2605, !srcloc !2607
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i33, align 8, !dbg !2608
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !2608
  %rlock.i37 = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !2608
  store i32 0, i32* %i, align 4, !dbg !2610
  br label %for.cond, !dbg !2612

for.cond:                                         ; preds = %for.inc, %if.then
  %17 = load i32, i32* %i, align 4, !dbg !2613
  %cmp27 = icmp slt i32 %17, 2, !dbg !2615
  br i1 %cmp27, label %for.body, label %for.end, !dbg !2616

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %tmp29, align 4, !dbg !2617
  %18 = load i32, i32* %tmp29, align 4, !dbg !2621
  %19 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2622
  %soc_dts = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %19, i32 0, i32 4, !dbg !2623
  %20 = load i32, i32* %i, align 4, !dbg !2624
  %idxprom = sext i32 %20 to i64, !dbg !2622
  %arrayidx = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts, i64 0, i64 %idxprom, !dbg !2622
  %tzone = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %arrayidx, i32 0, i32 5, !dbg !2625
  %21 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone, align 8, !dbg !2625
  call void @thermal_zone_device_update(%struct.thermal_zone_device* %21, i32 0) #9, !dbg !2626
  br label %for.inc, !dbg !2627

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !2628
  %inc = add i32 %22, 1, !dbg !2628
  store i32 %inc, i32* %i, align 4, !dbg !2628
  br label %for.cond, !dbg !2629, !llvm.loop !2630

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !2632

if.else:                                          ; preds = %do.end18
  %23 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !2633
  %intr_notify_lock30 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %23, i32 0, i32 1, !dbg !2634
  %24 = load i64, i64* %flags, align 8, !dbg !2635
  store %struct.spinlock* %intr_notify_lock30, %struct.spinlock** %lock.addr.i31, align 8
  store i64 %24, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !31, metadata !2592, metadata !DIExpression()) #5, !dbg !2636
  call void @llvm.dbg.declare(metadata !31, metadata !2596, metadata !DIExpression()) #5, !dbg !2636
  store i32 1, i32* %tmp.i, align 4, !dbg !2636
  %25 = load i32, i32* %tmp.i, align 4, !dbg !2636
  call void @llvm.dbg.declare(metadata !31, metadata !2597, metadata !DIExpression()) #5, !dbg !2637
  call void @llvm.dbg.declare(metadata !31, metadata !2603, metadata !DIExpression()) #5, !dbg !2637
  store i32 1, i32* %tmp8.i, align 4, !dbg !2637
  %26 = load i32, i32* %tmp8.i, align 4, !dbg !2637
  %27 = load i64, i64* %flags.addr.i, align 8, !dbg !2638
  call void @arch_local_irq_restore(i64 %27) #10, !dbg !2638
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !2639, !srcloc !2607
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i31, align 8, !dbg !2640
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !2640
  %rlock.i32 = bitcast %union.anon* %29 to %struct.raw_spinlock*, !dbg !2640
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !2641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !2642 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !2646, metadata !DIExpression()), !dbg !2647
  %call = call i64 @arch_local_save_flags() #9, !dbg !2648
  store i64 %call, i64* %f, align 8, !dbg !2649
  call void @arch_local_irq_disable() #9, !dbg !2650
  %0 = load i64, i64* %f, align 8, !dbg !2651
  ret i64 %0, !dbg !2652
}

; Function Attrs: noredzone
declare dso_local i32 @iosf_mbi_read(i8 zeroext, i8 zeroext, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @iosf_mbi_write(i8 zeroext, i8 zeroext, i32, i32) #2

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_soc_dts_sensors* @intel_soc_dts_iosf_init(i32 %intr_type, i32 %trip_count, i32 %read_only_trip_count) #0 !dbg !2 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2526, metadata !DIExpression()), !dbg !2653
  %retval = alloca %struct.intel_soc_dts_sensors*, align 8
  %intr_type.addr = alloca i32, align 4
  %trip_count.addr = alloca i32, align 4
  %read_only_trip_count.addr = alloca i32, align 4
  %sensors = alloca %struct.intel_soc_dts_sensors*, align 8
  %notification = alloca i8, align 1
  %tj_max = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store i32 %intr_type, i32* %intr_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intr_type.addr, metadata !2656, metadata !DIExpression()), !dbg !2657
  store i32 %trip_count, i32* %trip_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip_count.addr, metadata !2658, metadata !DIExpression()), !dbg !2659
  store i32 %read_only_trip_count, i32* %read_only_trip_count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %read_only_trip_count.addr, metadata !2660, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.declare(metadata i8* %notification, metadata !2664, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.declare(metadata i32* %tj_max, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2670, metadata !DIExpression()), !dbg !2671
  %call = call zeroext i1 @iosf_mbi_available() #9, !dbg !2672
  br i1 %call, label %if.end, label %if.then, !dbg !2674

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -19) #9, !dbg !2675
  %0 = bitcast i8* %call1 to %struct.intel_soc_dts_sensors*, !dbg !2675
  store %struct.intel_soc_dts_sensors* %0, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2676
  br label %return, !dbg !2676

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %trip_count.addr, align 4, !dbg !2677
  %tobool = icmp ne i32 %1, 0, !dbg !2677
  br i1 %tobool, label %lor.lhs.false, label %if.then2, !dbg !2679

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %read_only_trip_count.addr, align 4, !dbg !2680
  %3 = load i32, i32* %trip_count.addr, align 4, !dbg !2681
  %cmp = icmp sgt i32 %2, %3, !dbg !2682
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !2683

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %call3 = call i8* @ERR_PTR(i64 -22) #9, !dbg !2684
  %4 = bitcast i8* %call3 to %struct.intel_soc_dts_sensors*, !dbg !2684
  store %struct.intel_soc_dts_sensors* %4, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2685
  br label %return, !dbg !2685

if.end4:                                          ; preds = %lor.lhs.false
  %call5 = call i32 @get_tj_max(i32* %tj_max) #9, !dbg !2686
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2686
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !2688

if.then7:                                         ; preds = %if.end4
  %call8 = call i8* @ERR_PTR(i64 -22) #9, !dbg !2689
  %5 = bitcast i8* %call8 to %struct.intel_soc_dts_sensors*, !dbg !2689
  store %struct.intel_soc_dts_sensors* %5, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2690
  br label %return, !dbg !2690

if.end9:                                          ; preds = %if.end4
  %call10 = call i8* @kzalloc(i64 120, i32 3264) #9, !dbg !2691
  %6 = bitcast i8* %call10 to %struct.intel_soc_dts_sensors*, !dbg !2691
  store %struct.intel_soc_dts_sensors* %6, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2692
  %7 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2693
  %tobool11 = icmp ne %struct.intel_soc_dts_sensors* %7, null, !dbg !2693
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2695

if.then12:                                        ; preds = %if.end9
  %call13 = call i8* @ERR_PTR(i64 -12) #9, !dbg !2696
  %8 = bitcast i8* %call13 to %struct.intel_soc_dts_sensors*, !dbg !2696
  store %struct.intel_soc_dts_sensors* %8, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2697
  br label %return, !dbg !2697

if.end14:                                         ; preds = %if.end9
  br label %do.body, !dbg !2698

do.body:                                          ; preds = %if.end14
  %9 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2699
  %intr_notify_lock = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %9, i32 0, i32 1, !dbg !2699
  store %struct.spinlock* %intr_notify_lock, %struct.spinlock** %lock.addr.i, align 8
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2700
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !2701
  %rlock.i = bitcast %union.anon* %11 to %struct.raw_spinlock*, !dbg !2701
  %12 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2699
  %intr_notify_lock16 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %12, i32 0, i32 1, !dbg !2699
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !2699
  %rlock = bitcast %union.anon* %13 to %struct.raw_spinlock*, !dbg !2699
  %14 = bitcast %struct.spinlock* %intr_notify_lock16 to i8*, !dbg !2699
  %15 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !2699
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 1 %15, i64 0, i1 false), !dbg !2699
  br label %do.end, !dbg !2699

do.end:                                           ; preds = %do.body
  br label %do.body17, !dbg !2702

do.body17:                                        ; preds = %do.end
  %16 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2703
  %dts_update_lock = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %16, i32 0, i32 2, !dbg !2703
  call void @__mutex_init(%struct.mutex* %dts_update_lock, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* @intel_soc_dts_iosf_init.__key) #9, !dbg !2703
  br label %do.end18, !dbg !2703

do.end18:                                         ; preds = %do.body17
  %17 = load i32, i32* %intr_type.addr, align 4, !dbg !2705
  %18 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2706
  %intr_type19 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %18, i32 0, i32 3, !dbg !2707
  store i32 %17, i32* %intr_type19, align 8, !dbg !2708
  %19 = load i32, i32* %tj_max, align 4, !dbg !2709
  %20 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2710
  %tj_max20 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %20, i32 0, i32 0, !dbg !2711
  store i32 %19, i32* %tj_max20, align 8, !dbg !2712
  %21 = load i32, i32* %intr_type.addr, align 4, !dbg !2713
  %cmp21 = icmp eq i32 %21, 0, !dbg !2715
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !2716

if.then22:                                        ; preds = %do.end18
  store i8 0, i8* %notification, align 1, !dbg !2717
  br label %if.end23, !dbg !2718

if.else:                                          ; preds = %do.end18
  store i8 1, i8* %notification, align 1, !dbg !2719
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  store i32 0, i32* %i, align 4, !dbg !2720
  br label %for.cond, !dbg !2722

for.cond:                                         ; preds = %for.inc, %if.end23
  %22 = load i32, i32* %i, align 4, !dbg !2723
  %cmp24 = icmp slt i32 %22, 2, !dbg !2725
  br i1 %cmp24, label %for.body, label %for.end, !dbg !2726

for.body:                                         ; preds = %for.cond
  %23 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2727
  %24 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2729
  %soc_dts = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %24, i32 0, i32 4, !dbg !2730
  %25 = load i32, i32* %i, align 4, !dbg !2731
  %idxprom = sext i32 %25 to i64, !dbg !2729
  %arrayidx = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts, i64 0, i64 %idxprom, !dbg !2729
  %sensors25 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %arrayidx, i32 0, i32 6, !dbg !2732
  store %struct.intel_soc_dts_sensors* %23, %struct.intel_soc_dts_sensors** %sensors25, align 8, !dbg !2733
  %26 = load i32, i32* %i, align 4, !dbg !2734
  %27 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2735
  %soc_dts26 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %27, i32 0, i32 4, !dbg !2736
  %28 = load i32, i32* %i, align 4, !dbg !2737
  %idxprom27 = sext i32 %28 to i64, !dbg !2735
  %arrayidx28 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts26, i64 0, i64 %idxprom27, !dbg !2735
  %29 = load i8, i8* %notification, align 1, !dbg !2738
  %tobool29 = trunc i8 %29 to i1, !dbg !2738
  %30 = load i32, i32* %trip_count.addr, align 4, !dbg !2739
  %31 = load i32, i32* %read_only_trip_count.addr, align 4, !dbg !2740
  %call30 = call i32 @add_dts_thermal_zone(i32 %26, %struct.intel_soc_dts_sensor_entry* %arrayidx28, i1 zeroext %tobool29, i32 %30, i32 %31) #9, !dbg !2741
  store i32 %call30, i32* %ret, align 4, !dbg !2742
  %32 = load i32, i32* %ret, align 4, !dbg !2743
  %tobool31 = icmp ne i32 %32, 0, !dbg !2743
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2745

if.then32:                                        ; preds = %for.body
  br label %err_free, !dbg !2746

if.end33:                                         ; preds = %for.body
  br label %for.inc, !dbg !2747

for.inc:                                          ; preds = %if.end33
  %33 = load i32, i32* %i, align 4, !dbg !2748
  %inc = add i32 %33, 1, !dbg !2748
  store i32 %inc, i32* %i, align 4, !dbg !2748
  br label %for.cond, !dbg !2749, !llvm.loop !2750

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2752
  br label %for.cond34, !dbg !2754

for.cond34:                                       ; preds = %for.inc51, %for.end
  %34 = load i32, i32* %i, align 4, !dbg !2755
  %cmp35 = icmp slt i32 %34, 2, !dbg !2757
  br i1 %cmp35, label %for.body36, label %for.end53, !dbg !2758

for.body36:                                       ; preds = %for.cond34
  %35 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2759
  %soc_dts37 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %35, i32 0, i32 4, !dbg !2761
  %36 = load i32, i32* %i, align 4, !dbg !2762
  %idxprom38 = sext i32 %36 to i64, !dbg !2759
  %arrayidx39 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts37, i64 0, i64 %idxprom38, !dbg !2759
  %call40 = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %arrayidx39, i32 0, i32 0, i32 1) #9, !dbg !2763
  store i32 %call40, i32* %ret, align 4, !dbg !2764
  %37 = load i32, i32* %ret, align 4, !dbg !2765
  %tobool41 = icmp ne i32 %37, 0, !dbg !2765
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2767

if.then42:                                        ; preds = %for.body36
  br label %err_remove_zone, !dbg !2768

if.end43:                                         ; preds = %for.body36
  %38 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2769
  %soc_dts44 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %38, i32 0, i32 4, !dbg !2770
  %39 = load i32, i32* %i, align 4, !dbg !2771
  %idxprom45 = sext i32 %39 to i64, !dbg !2769
  %arrayidx46 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts44, i64 0, i64 %idxprom45, !dbg !2769
  %call47 = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %arrayidx46, i32 1, i32 0, i32 1) #9, !dbg !2772
  store i32 %call47, i32* %ret, align 4, !dbg !2773
  %40 = load i32, i32* %ret, align 4, !dbg !2774
  %tobool48 = icmp ne i32 %40, 0, !dbg !2774
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !2776

if.then49:                                        ; preds = %if.end43
  br label %err_remove_zone, !dbg !2777

if.end50:                                         ; preds = %if.end43
  br label %for.inc51, !dbg !2778

for.inc51:                                        ; preds = %if.end50
  %41 = load i32, i32* %i, align 4, !dbg !2779
  %inc52 = add i32 %41, 1, !dbg !2779
  store i32 %inc52, i32* %i, align 4, !dbg !2779
  br label %for.cond34, !dbg !2780, !llvm.loop !2781

for.end53:                                        ; preds = %for.cond34
  %42 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2783
  store %struct.intel_soc_dts_sensors* %42, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2784
  br label %return, !dbg !2784

err_remove_zone:                                  ; preds = %if.then49, %if.then42
  call void @llvm.dbg.label(metadata !2785), !dbg !2786
  store i32 0, i32* %i, align 4, !dbg !2787
  br label %for.cond54, !dbg !2789

for.cond54:                                       ; preds = %for.inc60, %err_remove_zone
  %43 = load i32, i32* %i, align 4, !dbg !2790
  %cmp55 = icmp slt i32 %43, 2, !dbg !2792
  br i1 %cmp55, label %for.body56, label %for.end62, !dbg !2793

for.body56:                                       ; preds = %for.cond54
  %44 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2794
  %soc_dts57 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %44, i32 0, i32 4, !dbg !2795
  %45 = load i32, i32* %i, align 4, !dbg !2796
  %idxprom58 = sext i32 %45 to i64, !dbg !2794
  %arrayidx59 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts57, i64 0, i64 %idxprom58, !dbg !2794
  call void @remove_dts_thermal_zone(%struct.intel_soc_dts_sensor_entry* %arrayidx59) #9, !dbg !2797
  br label %for.inc60, !dbg !2797

for.inc60:                                        ; preds = %for.body56
  %46 = load i32, i32* %i, align 4, !dbg !2798
  %inc61 = add i32 %46, 1, !dbg !2798
  store i32 %inc61, i32* %i, align 4, !dbg !2798
  br label %for.cond54, !dbg !2799, !llvm.loop !2800

for.end62:                                        ; preds = %for.cond54
  br label %err_free, !dbg !2801

err_free:                                         ; preds = %for.end62, %if.then32
  call void @llvm.dbg.label(metadata !2802), !dbg !2803
  %47 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !2804
  %48 = bitcast %struct.intel_soc_dts_sensors* %47 to i8*, !dbg !2804
  call void @kfree(i8* %48) #9, !dbg !2805
  %49 = load i32, i32* %ret, align 4, !dbg !2806
  %conv = sext i32 %49 to i64, !dbg !2806
  %call63 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !2807
  %50 = bitcast i8* %call63 to %struct.intel_soc_dts_sensors*, !dbg !2807
  store %struct.intel_soc_dts_sensors* %50, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2808
  br label %return, !dbg !2808

return:                                           ; preds = %err_free, %for.end53, %if.then12, %if.then7, %if.then2, %if.then
  %51 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %retval, align 8, !dbg !2809
  ret %struct.intel_soc_dts_sensors* %51, !dbg !2809
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @iosf_mbi_available() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2810 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2814, metadata !DIExpression()), !dbg !2815
  %0 = load i64, i64* %error.addr, align 8, !dbg !2816
  %1 = inttoptr i64 %0 to i8*, !dbg !2817
  ret i8* %1, !dbg !2818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_tj_max(i32* %tj_max) #0 !dbg !2819 {
entry:
  %retval = alloca i32, align 4
  %tj_max.addr = alloca i32*, align 8
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  %val = alloca i32, align 4
  %err = alloca i32, align 4
  %_err = alloca i32, align 4
  %_l = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32* %tj_max, i32** %tj_max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tj_max.addr, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata i32* %_err, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !2835, metadata !DIExpression()), !dbg !2834
  %call = call i64 @paravirt_read_msr_safe(i32 418, i32* %_err) #9, !dbg !2834
  store i64 %call, i64* %_l, align 8, !dbg !2834
  %0 = load i64, i64* %_l, align 8, !dbg !2834
  %conv = trunc i64 %0 to i32, !dbg !2834
  store i32 %conv, i32* %eax, align 4, !dbg !2834
  %1 = load i64, i64* %_l, align 8, !dbg !2834
  %shr = lshr i64 %1, 32, !dbg !2834
  %conv1 = trunc i64 %shr to i32, !dbg !2834
  store i32 %conv1, i32* %edx, align 4, !dbg !2834
  %2 = load i32, i32* %_err, align 4, !dbg !2834
  store i32 %2, i32* %tmp, align 4, !dbg !2834
  %3 = load i32, i32* %tmp, align 4, !dbg !2834
  store i32 %3, i32* %err, align 4, !dbg !2836
  %4 = load i32, i32* %err, align 4, !dbg !2837
  %tobool = icmp ne i32 %4, 0, !dbg !2837
  br i1 %tobool, label %if.then, label %if.else, !dbg !2839

if.then:                                          ; preds = %entry
  br label %err_ret, !dbg !2840

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %eax, align 4, !dbg !2841
  %shr2 = lshr i32 %5, 16, !dbg !2843
  %and = and i32 %shr2, 255, !dbg !2844
  store i32 %and, i32* %val, align 4, !dbg !2845
  %6 = load i32, i32* %val, align 4, !dbg !2846
  %tobool3 = icmp ne i32 %6, 0, !dbg !2846
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !2848

if.then4:                                         ; preds = %if.else
  %7 = load i32, i32* %val, align 4, !dbg !2849
  %mul = mul i32 %7, 1000, !dbg !2850
  %8 = load i32*, i32** %tj_max.addr, align 8, !dbg !2851
  store i32 %mul, i32* %8, align 4, !dbg !2852
  br label %if.end, !dbg !2853

if.else5:                                         ; preds = %if.else
  store i32 -22, i32* %err, align 4, !dbg !2854
  br label %err_ret, !dbg !2856

if.end:                                           ; preds = %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2857
  br label %return, !dbg !2857

err_ret:                                          ; preds = %if.else5, %if.then
  call void @llvm.dbg.label(metadata !2858), !dbg !2859
  %9 = load i32*, i32** %tj_max.addr, align 8, !dbg !2860
  store i32 0, i32* %9, align 4, !dbg !2861
  %10 = load i32, i32* %err, align 4, !dbg !2862
  store i32 %10, i32* %retval, align 4, !dbg !2863
  br label %return, !dbg !2863

return:                                           ; preds = %err_ret, %if.end6
  %11 = load i32, i32* %retval, align 4, !dbg !2864
  ret i32 %11, !dbg !2864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2865 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2868, metadata !DIExpression()), !dbg !2872
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2878, metadata !DIExpression()), !dbg !2879
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2880, metadata !DIExpression()), !dbg !2881
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2882, metadata !DIExpression()), !dbg !2883
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2884, metadata !DIExpression()), !dbg !2888
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2890, metadata !DIExpression()), !dbg !2894
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2896, metadata !DIExpression()), !dbg !2900
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2905, metadata !DIExpression()), !dbg !2906
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2907, metadata !DIExpression()), !dbg !2908
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2909, metadata !DIExpression()), !dbg !2910
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2911, metadata !DIExpression()), !dbg !2912
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2913, metadata !DIExpression()), !dbg !2914
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2915, metadata !DIExpression()), !dbg !2916
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2917, metadata !DIExpression()), !dbg !2918
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2919, metadata !DIExpression()), !dbg !2920
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2921, metadata !DIExpression()), !dbg !2922
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2923, metadata !DIExpression()), !dbg !2924
  %0 = load i64, i64* %size.addr, align 8, !dbg !2925
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2926
  %or = or i32 %1, 256, !dbg !2927
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2928
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #5, !dbg !2929
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2930

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2931
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2932
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2933

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2934
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2935
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2936
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !2937
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2914
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2938
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2939
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2940
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2941
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2942
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2943
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2944
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2944
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2944
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2944
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !2944
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2945
  br label %kmalloc.exit, !dbg !2945

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2946
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2947
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2947
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2949

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2950
  br label %kmalloc_index.exit.i, !dbg !2950

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2951
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2953
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2954

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2955
  br label %kmalloc_index.exit.i, !dbg !2955

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2956
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2958
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2959

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2960
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2961
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2962

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2963
  br label %kmalloc_index.exit.i, !dbg !2963

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2964
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2966
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2967

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2968
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2969
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2970

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2971
  br label %kmalloc_index.exit.i, !dbg !2971

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2972
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2974
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2975

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2976
  br label %kmalloc_index.exit.i, !dbg !2976

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2977
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2979
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2980

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2981
  br label %kmalloc_index.exit.i, !dbg !2981

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2982
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2984
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2985

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2986
  br label %kmalloc_index.exit.i, !dbg !2986

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2987
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2989
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2990

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2991
  br label %kmalloc_index.exit.i, !dbg !2991

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2992
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2994
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2995

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2996
  br label %kmalloc_index.exit.i, !dbg !2996

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2997
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2999
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3000

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3001
  br label %kmalloc_index.exit.i, !dbg !3001

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3002
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3004
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3005

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3006
  br label %kmalloc_index.exit.i, !dbg !3006

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3007
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3009
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3010

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3011
  br label %kmalloc_index.exit.i, !dbg !3011

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3012
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3014
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3015

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3016
  br label %kmalloc_index.exit.i, !dbg !3016

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3017
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3019
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3020

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3021
  br label %kmalloc_index.exit.i, !dbg !3021

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3022
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3024
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3025

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3026
  br label %kmalloc_index.exit.i, !dbg !3026

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3027
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3029
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3030

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3031
  br label %kmalloc_index.exit.i, !dbg !3031

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3032
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3034
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3035

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3036
  br label %kmalloc_index.exit.i, !dbg !3036

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3037
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3039
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3040

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3041
  br label %kmalloc_index.exit.i, !dbg !3041

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3042
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3044
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3045

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3046
  br label %kmalloc_index.exit.i, !dbg !3046

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3047
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3049
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3050

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3051
  br label %kmalloc_index.exit.i, !dbg !3051

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3052
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3054
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3055

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3056
  br label %kmalloc_index.exit.i, !dbg !3056

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3057
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3059
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3060

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3061
  br label %kmalloc_index.exit.i, !dbg !3061

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3062
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3064
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3065

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3066
  br label %kmalloc_index.exit.i, !dbg !3066

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3067
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3069
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3070

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3071
  br label %kmalloc_index.exit.i, !dbg !3071

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3072
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3074
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3075

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3076
  br label %kmalloc_index.exit.i, !dbg !3076

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3077
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3079
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3080

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3081
  br label %kmalloc_index.exit.i, !dbg !3081

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3082
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3084
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3085

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3086
  br label %kmalloc_index.exit.i, !dbg !3086

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3087
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3089
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3090

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3091
  br label %kmalloc_index.exit.i, !dbg !3091

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !3092, !srcloc !3095
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #5, !dbg !3096, !srcloc !3099
  unreachable, !dbg !3100

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3101
  store i32 %45, i32* %index.i, align 4, !dbg !3102
  %46 = load i32, i32* %index.i, align 4, !dbg !3103
  %tobool.i = icmp ne i32 %46, 0, !dbg !3103
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3105

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3106
  br label %kmalloc.exit, !dbg !3106

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3107
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3108
  %and.i.i = and i32 %48, 17, !dbg !3108
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3108
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3108
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3108
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3108
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3110

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3111
  br label %kmalloc_type.exit.i, !dbg !3111

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3112
  %and2.i.i = and i32 %49, 1, !dbg !3113
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3112
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3112
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3112
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3114
  br label %kmalloc_type.exit.i, !dbg !3114

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3115
  %idxprom.i = zext i32 %51 to i64, !dbg !3116
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3116
  %52 = load i32, i32* %index.i, align 4, !dbg !3117
  %idxprom6.i = zext i32 %52 to i64, !dbg !3116
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3116
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3116
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3118
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3119
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3120
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3121
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !3122
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3122
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3122
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3122
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !3122
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2883
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3123
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3124
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3125
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3126
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !3127
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3128
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3129
  store i8* %62, i8** %retval.i, align 8, !dbg !3130
  br label %kmalloc.exit, !dbg !3130

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3131
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3132
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !3133
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3133
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3133
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3133
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !3133
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3134
  br label %kmalloc.exit, !dbg !3134

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3135
  ret i8* %65, !dbg !3136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_dts_thermal_zone(i32 %id, %struct.intel_soc_dts_sensor_entry* %dts, i1 zeroext %notification_support, i32 %trip_cnt, i32 %read_only_trip_cnt) #0 !dbg !3137 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %dts.addr = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %notification_support.addr = alloca i8, align 1
  %trip_cnt.addr = alloca i32, align 4
  %read_only_trip_cnt.addr = alloca i32, align 4
  %name = alloca [10 x i8], align 1
  %trip = alloca i64, align 8
  %trip_count = alloca i32, align 4
  %trip_mask = alloca i32, align 4
  %writable_trip_cnt = alloca i32, align 4
  %ptps = alloca i64, align 8
  %store_ptps = alloca i32, align 4
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x161 = alloca i32, align 4
  %__UNIQUE_ID___y162 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3140, metadata !DIExpression()), !dbg !3141
  store %struct.intel_soc_dts_sensor_entry* %dts, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts.addr, metadata !3142, metadata !DIExpression()), !dbg !3143
  %frombool = zext i1 %notification_support to i8
  store i8 %frombool, i8* %notification_support.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %notification_support.addr, metadata !3144, metadata !DIExpression()), !dbg !3145
  store i32 %trip_cnt, i32* %trip_cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip_cnt.addr, metadata !3146, metadata !DIExpression()), !dbg !3147
  store i32 %read_only_trip_cnt, i32* %read_only_trip_cnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %read_only_trip_cnt.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.declare(metadata [10 x i8]* %name, metadata !3150, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.declare(metadata i64* %trip, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.declare(metadata i32* %trip_count, metadata !3157, metadata !DIExpression()), !dbg !3158
  store i32 0, i32* %trip_count, align 4, !dbg !3158
  call void @llvm.dbg.declare(metadata i32* %trip_mask, metadata !3159, metadata !DIExpression()), !dbg !3160
  store i32 0, i32* %trip_mask, align 4, !dbg !3160
  call void @llvm.dbg.declare(metadata i32* %writable_trip_cnt, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i32 0, i32* %writable_trip_cnt, align 4, !dbg !3162
  call void @llvm.dbg.declare(metadata i64* %ptps, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata i32* %store_ptps, metadata !3165, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.declare(metadata i64* %i, metadata !3167, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3169, metadata !DIExpression()), !dbg !3170
  %0 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3171
  %store_status = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %0, i32 0, i32 1, !dbg !3172
  %call = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 176, i32* %store_status) #9, !dbg !3173
  store i32 %call, i32* %ret, align 4, !dbg !3174
  %1 = load i32, i32* %ret, align 4, !dbg !3175
  %tobool = icmp ne i32 %1, 0, !dbg !3175
  br i1 %tobool, label %if.then, label %if.end, !dbg !3177

if.then:                                          ; preds = %entry
  br label %err_ret, !dbg !3178

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %id.addr, align 4, !dbg !3179
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3180
  %id1 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %3, i32 0, i32 0, !dbg !3181
  store i32 %2, i32* %id1, align 8, !dbg !3182
  %4 = load i8, i8* %notification_support.addr, align 1, !dbg !3183
  %tobool2 = trunc i8 %4 to i1, !dbg !3183
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !3185

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x161, metadata !3186, metadata !DIExpression()), !dbg !3189
  store i32 2, i32* %__UNIQUE_ID___x161, align 4, !dbg !3189
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y162, metadata !3190, metadata !DIExpression()), !dbg !3189
  %5 = load i32, i32* %trip_cnt.addr, align 4, !dbg !3189
  store i32 %5, i32* %__UNIQUE_ID___y162, align 4, !dbg !3189
  %6 = load i32, i32* %__UNIQUE_ID___x161, align 4, !dbg !3189
  %7 = load i32, i32* %__UNIQUE_ID___y162, align 4, !dbg !3189
  %cmp = icmp slt i32 %6, %7, !dbg !3189
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3189

cond.true:                                        ; preds = %if.then3
  %8 = load i32, i32* %__UNIQUE_ID___x161, align 4, !dbg !3189
  br label %cond.end, !dbg !3189

cond.false:                                       ; preds = %if.then3
  %9 = load i32, i32* %__UNIQUE_ID___y162, align 4, !dbg !3189
  br label %cond.end, !dbg !3189

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !3189
  store i32 %cond, i32* %tmp, align 4, !dbg !3189
  %10 = load i32, i32* %tmp, align 4, !dbg !3189
  store i32 %10, i32* %trip_count, align 4, !dbg !3191
  %11 = load i32, i32* %trip_count, align 4, !dbg !3192
  %12 = load i32, i32* %read_only_trip_cnt.addr, align 4, !dbg !3193
  %sub = sub i32 %11, %12, !dbg !3194
  store i32 %sub, i32* %writable_trip_cnt, align 4, !dbg !3195
  %13 = load i32, i32* %writable_trip_cnt, align 4, !dbg !3196
  %sub4 = sub i32 %13, 1, !dbg !3196
  %sub5 = sub i32 63, %sub4, !dbg !3196
  %sh_prom = zext i32 %sub5 to i64, !dbg !3196
  %shr = lshr i64 -1, %sh_prom, !dbg !3196
  %and = and i64 -1, %shr, !dbg !3196
  %add = add i64 0, %and, !dbg !3196
  %conv = trunc i64 %add to i32, !dbg !3196
  store i32 %conv, i32* %trip_mask, align 4, !dbg !3197
  br label %if.end6, !dbg !3198

if.end6:                                          ; preds = %cond.end, %if.end
  %call7 = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 178, i32* %store_ptps) #9, !dbg !3199
  store i32 %call7, i32* %ret, align 4, !dbg !3200
  %14 = load i32, i32* %ret, align 4, !dbg !3201
  %tobool8 = icmp ne i32 %14, 0, !dbg !3201
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !3203

if.then9:                                         ; preds = %if.end6
  store i32 0, i32* %trip_mask, align 4, !dbg !3204
  br label %if.end24, !dbg !3205

if.else:                                          ; preds = %if.end6
  %15 = load i32, i32* %store_ptps, align 4, !dbg !3206
  %conv10 = zext i32 %15 to i64, !dbg !3206
  store i64 %conv10, i64* %ptps, align 8, !dbg !3208
  %16 = load i32, i32* %writable_trip_cnt, align 4, !dbg !3209
  %mul = mul i32 %16, 8, !dbg !3209
  %conv11 = sext i32 %mul to i64, !dbg !3209
  %call12 = call i64 @find_next_clump8(i64* %trip, i64* %ptps, i64 %conv11, i64 0) #9, !dbg !3209
  store i64 %call12, i64* %i, align 8, !dbg !3209
  br label %for.cond, !dbg !3209

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load i64, i64* %i, align 8, !dbg !3211
  %18 = load i32, i32* %writable_trip_cnt, align 4, !dbg !3211
  %mul13 = mul i32 %18, 8, !dbg !3211
  %conv14 = sext i32 %mul13 to i64, !dbg !3211
  %cmp15 = icmp ult i64 %17, %conv14, !dbg !3211
  br i1 %cmp15, label %for.body, label %for.end, !dbg !3209

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %i, align 8, !dbg !3213
  %div = udiv i64 %19, 8, !dbg !3213
  %shl = shl i64 1, %div, !dbg !3213
  %neg = xor i64 %shl, -1, !dbg !3214
  %20 = load i32, i32* %trip_mask, align 4, !dbg !3215
  %conv17 = sext i32 %20 to i64, !dbg !3215
  %and18 = and i64 %conv17, %neg, !dbg !3215
  %conv19 = trunc i64 %and18 to i32, !dbg !3215
  store i32 %conv19, i32* %trip_mask, align 4, !dbg !3215
  br label %for.inc, !dbg !3216

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %writable_trip_cnt, align 4, !dbg !3211
  %mul20 = mul i32 %21, 8, !dbg !3211
  %conv21 = sext i32 %mul20 to i64, !dbg !3211
  %22 = load i64, i64* %i, align 8, !dbg !3211
  %add22 = add i64 %22, 8, !dbg !3211
  %call23 = call i64 @find_next_clump8(i64* %trip, i64* %ptps, i64 %conv21, i64 %add22) #9, !dbg !3211
  store i64 %call23, i64* %i, align 8, !dbg !3211
  br label %for.cond, !dbg !3211, !llvm.loop !3217

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.then9
  %23 = load i32, i32* %trip_mask, align 4, !dbg !3219
  %24 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3220
  %trip_mask25 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %24, i32 0, i32 2, !dbg !3221
  store i32 %23, i32* %trip_mask25, align 8, !dbg !3222
  %25 = load i32, i32* %trip_count, align 4, !dbg !3223
  %26 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3224
  %trip_count26 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %26, i32 0, i32 3, !dbg !3225
  store i32 %25, i32* %trip_count26, align 4, !dbg !3226
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !3227
  %27 = load i32, i32* %id.addr, align 4, !dbg !3228
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27) #9, !dbg !3229
  %arraydecay28 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !3230
  %28 = load i32, i32* %trip_count, align 4, !dbg !3231
  %29 = load i32, i32* %trip_mask, align 4, !dbg !3232
  %30 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3233
  %31 = bitcast %struct.intel_soc_dts_sensor_entry* %30 to i8*, !dbg !3233
  %call29 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* %arraydecay28, i32 %28, i32 %29, i8* %31, %struct.thermal_zone_device_ops* @tzone_ops, %struct.thermal_zone_params* null, i32 0, i32 0) #9, !dbg !3234
  %32 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3235
  %tzone = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %32, i32 0, i32 5, !dbg !3236
  store %struct.thermal_zone_device* %call29, %struct.thermal_zone_device** %tzone, align 8, !dbg !3237
  %33 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3238
  %tzone30 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %33, i32 0, i32 5, !dbg !3240
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone30, align 8, !dbg !3240
  %35 = bitcast %struct.thermal_zone_device* %34 to i8*, !dbg !3238
  %call31 = call zeroext i1 @IS_ERR(i8* %35) #9, !dbg !3241
  br i1 %call31, label %if.then32, label %if.end36, !dbg !3242

if.then32:                                        ; preds = %if.end24
  %36 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3243
  %tzone33 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %36, i32 0, i32 5, !dbg !3245
  %37 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone33, align 8, !dbg !3245
  %38 = bitcast %struct.thermal_zone_device* %37 to i8*, !dbg !3243
  %call34 = call i64 @PTR_ERR(i8* %38) #9, !dbg !3246
  %conv35 = trunc i64 %call34 to i32, !dbg !3246
  store i32 %conv35, i32* %ret, align 4, !dbg !3247
  br label %err_ret, !dbg !3248

if.end36:                                         ; preds = %if.end24
  %39 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3249
  %tzone37 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %39, i32 0, i32 5, !dbg !3250
  %40 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone37, align 8, !dbg !3250
  %call38 = call i32 @thermal_zone_device_enable(%struct.thermal_zone_device* %40) #9, !dbg !3251
  store i32 %call38, i32* %ret, align 4, !dbg !3252
  %41 = load i32, i32* %ret, align 4, !dbg !3253
  %tobool39 = icmp ne i32 %41, 0, !dbg !3253
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !3255

if.then40:                                        ; preds = %if.end36
  br label %err_enable, !dbg !3256

if.end41:                                         ; preds = %if.end36
  %42 = load i32, i32* %id.addr, align 4, !dbg !3257
  %call42 = call i32 @soc_dts_enable(i32 %42) #9, !dbg !3258
  store i32 %call42, i32* %ret, align 4, !dbg !3259
  %43 = load i32, i32* %ret, align 4, !dbg !3260
  %tobool43 = icmp ne i32 %43, 0, !dbg !3260
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3262

if.then44:                                        ; preds = %if.end41
  br label %err_enable, !dbg !3263

if.end45:                                         ; preds = %if.end41
  store i32 0, i32* %retval, align 4, !dbg !3264
  br label %return, !dbg !3264

err_enable:                                       ; preds = %if.then44, %if.then40
  call void @llvm.dbg.label(metadata !3265), !dbg !3266
  %44 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3267
  %tzone46 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %44, i32 0, i32 5, !dbg !3268
  %45 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone46, align 8, !dbg !3268
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %45) #9, !dbg !3269
  br label %err_ret, !dbg !3269

err_ret:                                          ; preds = %err_enable, %if.then32, %if.then
  call void @llvm.dbg.label(metadata !3270), !dbg !3271
  %46 = load i32, i32* %ret, align 4, !dbg !3272
  store i32 %46, i32* %retval, align 4, !dbg !3273
  br label %return, !dbg !3273

return:                                           ; preds = %err_ret, %if.end45
  %47 = load i32, i32* %retval, align 4, !dbg !3274
  ret i32 %47, !dbg !3274
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @remove_dts_thermal_zone(%struct.intel_soc_dts_sensor_entry* %dts) #0 !dbg !3275 {
entry:
  %dts.addr = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  store %struct.intel_soc_dts_sensor_entry* %dts, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts.addr, metadata !3278, metadata !DIExpression()), !dbg !3279
  %0 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3280
  %tobool = icmp ne %struct.intel_soc_dts_sensor_entry* %0, null, !dbg !3280
  br i1 %tobool, label %if.then, label %if.end, !dbg !3282

if.then:                                          ; preds = %entry
  %1 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3283
  %store_status = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %1, i32 0, i32 1, !dbg !3285
  %2 = load i32, i32* %store_status, align 4, !dbg !3285
  %call = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 176, i32 %2) #9, !dbg !3286
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts.addr, align 8, !dbg !3287
  %tzone = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %3, i32 0, i32 5, !dbg !3288
  %4 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzone, align 8, !dbg !3288
  call void @thermal_zone_device_unregister(%struct.thermal_zone_device* %4) #9, !dbg !3289
  br label %if.end, !dbg !3290

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3291
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_soc_dts_iosf_exit(%struct.intel_soc_dts_sensors* %sensors) #0 !dbg !3292 {
entry:
  %sensors.addr = alloca %struct.intel_soc_dts_sensors*, align 8
  %i = alloca i32, align 4
  store %struct.intel_soc_dts_sensors* %sensors, %struct.intel_soc_dts_sensors** %sensors.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors.addr, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3295, metadata !DIExpression()), !dbg !3296
  store i32 0, i32* %i, align 4, !dbg !3297
  br label %for.cond, !dbg !3299

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !3300
  %cmp = icmp slt i32 %0, 2, !dbg !3302
  br i1 %cmp, label %for.body, label %for.end, !dbg !3303

for.body:                                         ; preds = %for.cond
  %1 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !3304
  %soc_dts = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %1, i32 0, i32 4, !dbg !3306
  %2 = load i32, i32* %i, align 4, !dbg !3307
  %idxprom = sext i32 %2 to i64, !dbg !3304
  %arrayidx = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts, i64 0, i64 %idxprom, !dbg !3304
  %call = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %arrayidx, i32 0, i32 0, i32 0) #9, !dbg !3308
  %3 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !3309
  %soc_dts1 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %3, i32 0, i32 4, !dbg !3310
  %4 = load i32, i32* %i, align 4, !dbg !3311
  %idxprom2 = sext i32 %4 to i64, !dbg !3309
  %arrayidx3 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts1, i64 0, i64 %idxprom2, !dbg !3309
  %call4 = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %arrayidx3, i32 1, i32 0, i32 0) #9, !dbg !3312
  %5 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !3313
  %soc_dts5 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %5, i32 0, i32 4, !dbg !3314
  %6 = load i32, i32* %i, align 4, !dbg !3315
  %idxprom6 = sext i32 %6 to i64, !dbg !3313
  %arrayidx7 = getelementptr [2 x %struct.intel_soc_dts_sensor_entry], [2 x %struct.intel_soc_dts_sensor_entry]* %soc_dts5, i64 0, i64 %idxprom6, !dbg !3313
  call void @remove_dts_thermal_zone(%struct.intel_soc_dts_sensor_entry* %arrayidx7) #9, !dbg !3316
  br label %for.inc, !dbg !3317

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !3318
  %inc = add i32 %7, 1, !dbg !3318
  store i32 %inc, i32* %i, align 4, !dbg !3318
  br label %for.cond, !dbg !3319, !llvm.loop !3320

for.end:                                          ; preds = %for.cond
  %8 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors.addr, align 8, !dbg !3322
  %9 = bitcast %struct.intel_soc_dts_sensors* %8 to i8*, !dbg !3322
  call void @kfree(i8* %9) #9, !dbg !3323
  ret void, !dbg !3324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @bitmap_set_value8(i64* %map, i64 %value, i64 %start) #0 !dbg !3325 {
entry:
  %map.addr = alloca i64*, align 8
  %value.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %offset = alloca i64, align 8
  store i64* %map, i64** %map.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr, metadata !3329, metadata !DIExpression()), !dbg !3330
  store i64 %value, i64* %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %value.addr, metadata !3331, metadata !DIExpression()), !dbg !3332
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.declare(metadata i64* %index, metadata !3335, metadata !DIExpression()), !dbg !3337
  %0 = load i64, i64* %start.addr, align 8, !dbg !3338
  %div = udiv i64 %0, 64, !dbg !3338
  store i64 %div, i64* %index, align 8, !dbg !3337
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !3339, metadata !DIExpression()), !dbg !3341
  %1 = load i64, i64* %start.addr, align 8, !dbg !3342
  %rem = urem i64 %1, 64, !dbg !3343
  store i64 %rem, i64* %offset, align 8, !dbg !3341
  %2 = load i64, i64* %offset, align 8, !dbg !3344
  %shl = shl i64 255, %2, !dbg !3345
  %neg = xor i64 %shl, -1, !dbg !3346
  %3 = load i64*, i64** %map.addr, align 8, !dbg !3347
  %4 = load i64, i64* %index, align 8, !dbg !3348
  %arrayidx = getelementptr i64, i64* %3, i64 %4, !dbg !3347
  %5 = load i64, i64* %arrayidx, align 8, !dbg !3349
  %and = and i64 %5, %neg, !dbg !3349
  store i64 %and, i64* %arrayidx, align 8, !dbg !3349
  %6 = load i64, i64* %value.addr, align 8, !dbg !3350
  %7 = load i64, i64* %offset, align 8, !dbg !3351
  %shl1 = shl i64 %6, %7, !dbg !3352
  %8 = load i64*, i64** %map.addr, align 8, !dbg !3353
  %9 = load i64, i64* %index, align 8, !dbg !3354
  %arrayidx2 = getelementptr i64, i64* %8, i64 %9, !dbg !3353
  %10 = load i64, i64* %arrayidx2, align 8, !dbg !3355
  %or = or i64 %10, %shl1, !dbg !3355
  store i64 %or, i64* %arrayidx2, align 8, !dbg !3355
  ret void, !dbg !3356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3357 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3358, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3361, metadata !DIExpression()), !dbg !3360
  %0 = load i64, i64* %__edi, align 8, !dbg !3360
  store i64 %0, i64* %__edi, align 8, !dbg !3360
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3362, metadata !DIExpression()), !dbg !3360
  %1 = load i64, i64* %__esi, align 8, !dbg !3360
  store i64 %1, i64* %__esi, align 8, !dbg !3360
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3363, metadata !DIExpression()), !dbg !3360
  %2 = load i64, i64* %__edx, align 8, !dbg !3360
  store i64 %2, i64* %__edx, align 8, !dbg !3360
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3364, metadata !DIExpression()), !dbg !3360
  %3 = load i64, i64* %__ecx, align 8, !dbg !3360
  store i64 %3, i64* %__ecx, align 8, !dbg !3360
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3365, metadata !DIExpression()), !dbg !3360
  %4 = load i64, i64* %__eax, align 8, !dbg !3360
  store i64 %4, i64* %__eax, align 8, !dbg !3360
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3360
  %6 = call i64 @llvm.read_register.i64(metadata !2286), !dbg !3366
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !3366, !srcloc !3369
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3366
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3366
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3366
  call void @llvm.write_register.i64(metadata !2286, i64 %asmresult1), !dbg !3366
  %8 = load i64, i64* %__eax, align 8, !dbg !3366
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3370, metadata !DIExpression()), !dbg !3372
  store i64 -1, i64* %__mask, align 8, !dbg !3372
  %9 = load i64, i64* %__mask, align 8, !dbg !3372
  store i64 %9, i64* %tmp, align 8, !dbg !3372
  %10 = load i64, i64* %tmp, align 8, !dbg !3372
  %and = and i64 %8, %10, !dbg !3366
  store i64 %and, i64* %__ret, align 8, !dbg !3366
  %11 = load i64, i64* %__ret, align 8, !dbg !3360
  store i64 %11, i64* %tmp2, align 8, !dbg !3373
  %12 = load i64, i64* %tmp2, align 8, !dbg !3360
  ret i64 %12, !dbg !3374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3375 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3378, metadata !DIExpression()), !dbg !3380
  %0 = load i64, i64* %__edi, align 8, !dbg !3380
  store i64 %0, i64* %__edi, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3381, metadata !DIExpression()), !dbg !3380
  %1 = load i64, i64* %__esi, align 8, !dbg !3380
  store i64 %1, i64* %__esi, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3382, metadata !DIExpression()), !dbg !3380
  %2 = load i64, i64* %__edx, align 8, !dbg !3380
  store i64 %2, i64* %__edx, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3383, metadata !DIExpression()), !dbg !3380
  %3 = load i64, i64* %__ecx, align 8, !dbg !3380
  store i64 %3, i64* %__ecx, align 8, !dbg !3380
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3384, metadata !DIExpression()), !dbg !3380
  %4 = load i64, i64* %__eax, align 8, !dbg !3380
  store i64 %4, i64* %__eax, align 8, !dbg !3380
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3380
  %6 = call i64 @llvm.read_register.i64(metadata !2286), !dbg !3380
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !3380, !srcloc !3385
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3380
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3380
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3380
  call void @llvm.write_register.i64(metadata !2286, i64 %asmresult1), !dbg !3380
  ret void, !dbg !3386
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3387 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3392, metadata !DIExpression()), !dbg !3394
  %0 = load i64, i64* %__edi, align 8, !dbg !3394
  store i64 %0, i64* %__edi, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3395, metadata !DIExpression()), !dbg !3394
  %1 = load i64, i64* %__esi, align 8, !dbg !3394
  store i64 %1, i64* %__esi, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3396, metadata !DIExpression()), !dbg !3394
  %2 = load i64, i64* %__edx, align 8, !dbg !3394
  store i64 %2, i64* %__edx, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3397, metadata !DIExpression()), !dbg !3394
  %3 = load i64, i64* %__ecx, align 8, !dbg !3394
  store i64 %3, i64* %__ecx, align 8, !dbg !3394
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3398, metadata !DIExpression()), !dbg !3394
  %4 = load i64, i64* %__eax, align 8, !dbg !3394
  store i64 %4, i64* %__eax, align 8, !dbg !3394
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3394
  %6 = call i64 @llvm.read_register.i64(metadata !2286), !dbg !3394
  %7 = load i64, i64* %f.addr, align 8, !dbg !3394
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !3394, !srcloc !3399
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3394
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3394
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3394
  call void @llvm.write_register.i64(metadata !2286, i64 %asmresult1), !dbg !3394
  ret void, !dbg !3400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #0 !dbg !3401 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !3404, metadata !DIExpression()), !dbg !3405
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3411, metadata !DIExpression()), !dbg !3410
  %0 = load i64, i64* %__edi, align 8, !dbg !3410
  store i64 %0, i64* %__edi, align 8, !dbg !3410
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3412, metadata !DIExpression()), !dbg !3410
  %1 = load i64, i64* %__esi, align 8, !dbg !3410
  store i64 %1, i64* %__esi, align 8, !dbg !3410
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3413, metadata !DIExpression()), !dbg !3410
  %2 = load i64, i64* %__edx, align 8, !dbg !3410
  store i64 %2, i64* %__edx, align 8, !dbg !3410
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3414, metadata !DIExpression()), !dbg !3410
  %3 = load i64, i64* %__ecx, align 8, !dbg !3410
  store i64 %3, i64* %__ecx, align 8, !dbg !3410
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3415, metadata !DIExpression()), !dbg !3410
  %4 = load i64, i64* %__eax, align 8, !dbg !3410
  store i64 %4, i64* %__eax, align 8, !dbg !3410
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !3410
  %6 = call i64 @llvm.read_register.i64(metadata !2286), !dbg !3416
  %7 = load i32, i32* %msr.addr, align 4, !dbg !3416
  %conv = zext i32 %7 to i64, !dbg !3416
  %8 = load i32*, i32** %err.addr, align 8, !dbg !3416
  %9 = ptrtoint i32* %8 to i64, !dbg !3416
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #5, !dbg !3416, !srcloc !3419
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !3416
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !3416
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !3416
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !3416
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !3416
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !3416
  store i64 %asmresult, i64* %__edi, align 8, !dbg !3416
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !3416
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !3416
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !3416
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !3416
  call void @llvm.write_register.i64(metadata !2286, i64 %asmresult5), !dbg !3416
  %11 = load i64, i64* %__eax, align 8, !dbg !3416
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3420, metadata !DIExpression()), !dbg !3422
  store i64 -1, i64* %__mask, align 8, !dbg !3422
  %12 = load i64, i64* %__mask, align 8, !dbg !3422
  store i64 %12, i64* %tmp, align 8, !dbg !3422
  %13 = load i64, i64* %tmp, align 8, !dbg !3422
  %and = and i64 %11, %13, !dbg !3416
  store i64 %and, i64* %__ret, align 8, !dbg !3416
  %14 = load i64, i64* %__ret, align 8, !dbg !3410
  store i64 %14, i64* %tmp6, align 8, !dbg !3423
  %15 = load i64, i64* %tmp6, align 8, !dbg !3410
  ret i64 %15, !dbg !3424
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !3425 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3429, metadata !DIExpression()), !dbg !3434
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3436, metadata !DIExpression()), !dbg !3437
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3438, metadata !DIExpression()), !dbg !3439
  %0 = load i64, i64* %size.addr, align 8, !dbg !3440
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3442
  br i1 %1, label %if.then, label %if.end447, !dbg !3443

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3444
  %tobool = icmp ne i64 %2, 0, !dbg !3444
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3447

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3448
  br label %return, !dbg !3448

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3449
  %cmp = icmp ult i64 %3, 4096, !dbg !3451
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3452

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3453
  br label %return, !dbg !3453

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub = sub i64 %4, 1, !dbg !3454
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3454
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3454

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub4 = sub i64 %6, 1, !dbg !3454
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3454
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3454

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub6 = sub i64 %8, 1, !dbg !3454
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3454
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3454

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3454

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub9 = sub i64 %9, 1, !dbg !3454
  %and = and i64 %sub9, -9223372036854775808, !dbg !3454
  %tobool10 = icmp ne i64 %and, 0, !dbg !3454
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3454

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3454

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub13 = sub i64 %10, 1, !dbg !3454
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3454
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3454
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3454

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3454

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub18 = sub i64 %11, 1, !dbg !3454
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3454
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3454
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3454

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3454

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub23 = sub i64 %12, 1, !dbg !3454
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3454
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3454
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3454

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3454

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub28 = sub i64 %13, 1, !dbg !3454
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3454
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3454
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3454

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3454

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub33 = sub i64 %14, 1, !dbg !3454
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3454
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3454
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3454

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3454

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub38 = sub i64 %15, 1, !dbg !3454
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3454
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3454
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3454

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3454

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub43 = sub i64 %16, 1, !dbg !3454
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3454
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3454
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3454

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3454

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub48 = sub i64 %17, 1, !dbg !3454
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3454
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3454
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3454

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3454

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub53 = sub i64 %18, 1, !dbg !3454
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3454
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3454
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3454

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3454

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub58 = sub i64 %19, 1, !dbg !3454
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3454
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3454
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3454

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3454

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub63 = sub i64 %20, 1, !dbg !3454
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3454
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3454
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3454

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3454

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub68 = sub i64 %21, 1, !dbg !3454
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3454
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3454
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3454

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3454

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub73 = sub i64 %22, 1, !dbg !3454
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3454
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3454
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3454

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3454

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub78 = sub i64 %23, 1, !dbg !3454
  %and79 = and i64 %sub78, 562949953421312, !dbg !3454
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3454
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3454

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3454

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub83 = sub i64 %24, 1, !dbg !3454
  %and84 = and i64 %sub83, 281474976710656, !dbg !3454
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3454
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3454

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3454

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub88 = sub i64 %25, 1, !dbg !3454
  %and89 = and i64 %sub88, 140737488355328, !dbg !3454
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3454
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3454

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3454

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub93 = sub i64 %26, 1, !dbg !3454
  %and94 = and i64 %sub93, 70368744177664, !dbg !3454
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3454
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3454

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3454

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub98 = sub i64 %27, 1, !dbg !3454
  %and99 = and i64 %sub98, 35184372088832, !dbg !3454
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3454
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3454

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3454

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub103 = sub i64 %28, 1, !dbg !3454
  %and104 = and i64 %sub103, 17592186044416, !dbg !3454
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3454
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3454

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3454

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub108 = sub i64 %29, 1, !dbg !3454
  %and109 = and i64 %sub108, 8796093022208, !dbg !3454
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3454
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3454

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3454

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub113 = sub i64 %30, 1, !dbg !3454
  %and114 = and i64 %sub113, 4398046511104, !dbg !3454
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3454
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3454

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3454

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub118 = sub i64 %31, 1, !dbg !3454
  %and119 = and i64 %sub118, 2199023255552, !dbg !3454
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3454
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3454

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3454

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub123 = sub i64 %32, 1, !dbg !3454
  %and124 = and i64 %sub123, 1099511627776, !dbg !3454
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3454
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3454

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3454

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub128 = sub i64 %33, 1, !dbg !3454
  %and129 = and i64 %sub128, 549755813888, !dbg !3454
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3454
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3454

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3454

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub133 = sub i64 %34, 1, !dbg !3454
  %and134 = and i64 %sub133, 274877906944, !dbg !3454
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3454
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3454

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3454

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub138 = sub i64 %35, 1, !dbg !3454
  %and139 = and i64 %sub138, 137438953472, !dbg !3454
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3454
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3454

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3454

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub143 = sub i64 %36, 1, !dbg !3454
  %and144 = and i64 %sub143, 68719476736, !dbg !3454
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3454
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3454

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3454

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub148 = sub i64 %37, 1, !dbg !3454
  %and149 = and i64 %sub148, 34359738368, !dbg !3454
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3454
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3454

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3454

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub153 = sub i64 %38, 1, !dbg !3454
  %and154 = and i64 %sub153, 17179869184, !dbg !3454
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3454
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3454

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3454

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub158 = sub i64 %39, 1, !dbg !3454
  %and159 = and i64 %sub158, 8589934592, !dbg !3454
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3454
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3454

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3454

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub163 = sub i64 %40, 1, !dbg !3454
  %and164 = and i64 %sub163, 4294967296, !dbg !3454
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3454
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3454

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3454

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub168 = sub i64 %41, 1, !dbg !3454
  %and169 = and i64 %sub168, 2147483648, !dbg !3454
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3454
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3454

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3454

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub173 = sub i64 %42, 1, !dbg !3454
  %and174 = and i64 %sub173, 1073741824, !dbg !3454
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3454
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3454

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3454

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub178 = sub i64 %43, 1, !dbg !3454
  %and179 = and i64 %sub178, 536870912, !dbg !3454
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3454
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3454

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3454

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub183 = sub i64 %44, 1, !dbg !3454
  %and184 = and i64 %sub183, 268435456, !dbg !3454
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3454
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3454

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3454

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub188 = sub i64 %45, 1, !dbg !3454
  %and189 = and i64 %sub188, 134217728, !dbg !3454
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3454
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3454

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3454

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub193 = sub i64 %46, 1, !dbg !3454
  %and194 = and i64 %sub193, 67108864, !dbg !3454
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3454
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3454

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3454

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub198 = sub i64 %47, 1, !dbg !3454
  %and199 = and i64 %sub198, 33554432, !dbg !3454
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3454
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3454

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3454

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub203 = sub i64 %48, 1, !dbg !3454
  %and204 = and i64 %sub203, 16777216, !dbg !3454
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3454
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3454

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3454

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub208 = sub i64 %49, 1, !dbg !3454
  %and209 = and i64 %sub208, 8388608, !dbg !3454
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3454
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3454

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3454

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub213 = sub i64 %50, 1, !dbg !3454
  %and214 = and i64 %sub213, 4194304, !dbg !3454
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3454
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3454

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3454

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub218 = sub i64 %51, 1, !dbg !3454
  %and219 = and i64 %sub218, 2097152, !dbg !3454
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3454
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3454

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3454

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub223 = sub i64 %52, 1, !dbg !3454
  %and224 = and i64 %sub223, 1048576, !dbg !3454
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3454
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3454

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3454

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub228 = sub i64 %53, 1, !dbg !3454
  %and229 = and i64 %sub228, 524288, !dbg !3454
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3454
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3454

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3454

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub233 = sub i64 %54, 1, !dbg !3454
  %and234 = and i64 %sub233, 262144, !dbg !3454
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3454
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3454

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3454

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub238 = sub i64 %55, 1, !dbg !3454
  %and239 = and i64 %sub238, 131072, !dbg !3454
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3454
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3454

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3454

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub243 = sub i64 %56, 1, !dbg !3454
  %and244 = and i64 %sub243, 65536, !dbg !3454
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3454
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3454

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3454

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub248 = sub i64 %57, 1, !dbg !3454
  %and249 = and i64 %sub248, 32768, !dbg !3454
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3454
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3454

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3454

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub253 = sub i64 %58, 1, !dbg !3454
  %and254 = and i64 %sub253, 16384, !dbg !3454
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3454
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3454

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3454

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub258 = sub i64 %59, 1, !dbg !3454
  %and259 = and i64 %sub258, 8192, !dbg !3454
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3454
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3454

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3454

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub263 = sub i64 %60, 1, !dbg !3454
  %and264 = and i64 %sub263, 4096, !dbg !3454
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3454
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3454

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3454

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub268 = sub i64 %61, 1, !dbg !3454
  %and269 = and i64 %sub268, 2048, !dbg !3454
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3454
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3454

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3454

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub273 = sub i64 %62, 1, !dbg !3454
  %and274 = and i64 %sub273, 1024, !dbg !3454
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3454
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3454

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3454

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub278 = sub i64 %63, 1, !dbg !3454
  %and279 = and i64 %sub278, 512, !dbg !3454
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3454
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3454

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3454

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub283 = sub i64 %64, 1, !dbg !3454
  %and284 = and i64 %sub283, 256, !dbg !3454
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3454
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3454

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3454

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub288 = sub i64 %65, 1, !dbg !3454
  %and289 = and i64 %sub288, 128, !dbg !3454
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3454
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3454

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3454

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub293 = sub i64 %66, 1, !dbg !3454
  %and294 = and i64 %sub293, 64, !dbg !3454
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3454
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3454

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3454

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub298 = sub i64 %67, 1, !dbg !3454
  %and299 = and i64 %sub298, 32, !dbg !3454
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3454
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3454

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3454

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub303 = sub i64 %68, 1, !dbg !3454
  %and304 = and i64 %sub303, 16, !dbg !3454
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3454
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3454

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3454

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub308 = sub i64 %69, 1, !dbg !3454
  %and309 = and i64 %sub308, 8, !dbg !3454
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3454
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3454

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3454

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub313 = sub i64 %70, 1, !dbg !3454
  %and314 = and i64 %sub313, 4, !dbg !3454
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3454
  %71 = zext i1 %tobool315 to i64, !dbg !3454
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3454
  br label %cond.end, !dbg !3454

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3454
  br label %cond.end317, !dbg !3454

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3454
  br label %cond.end319, !dbg !3454

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3454
  br label %cond.end321, !dbg !3454

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3454
  br label %cond.end323, !dbg !3454

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3454
  br label %cond.end325, !dbg !3454

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3454
  br label %cond.end327, !dbg !3454

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3454
  br label %cond.end329, !dbg !3454

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3454
  br label %cond.end331, !dbg !3454

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3454
  br label %cond.end333, !dbg !3454

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3454
  br label %cond.end335, !dbg !3454

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3454
  br label %cond.end337, !dbg !3454

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3454
  br label %cond.end339, !dbg !3454

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3454
  br label %cond.end341, !dbg !3454

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3454
  br label %cond.end343, !dbg !3454

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3454
  br label %cond.end345, !dbg !3454

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3454
  br label %cond.end347, !dbg !3454

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3454
  br label %cond.end349, !dbg !3454

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3454
  br label %cond.end351, !dbg !3454

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3454
  br label %cond.end353, !dbg !3454

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3454
  br label %cond.end355, !dbg !3454

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3454
  br label %cond.end357, !dbg !3454

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3454
  br label %cond.end359, !dbg !3454

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3454
  br label %cond.end361, !dbg !3454

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3454
  br label %cond.end363, !dbg !3454

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3454
  br label %cond.end365, !dbg !3454

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3454
  br label %cond.end367, !dbg !3454

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3454
  br label %cond.end369, !dbg !3454

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3454
  br label %cond.end371, !dbg !3454

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3454
  br label %cond.end373, !dbg !3454

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3454
  br label %cond.end375, !dbg !3454

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3454
  br label %cond.end377, !dbg !3454

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3454
  br label %cond.end379, !dbg !3454

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3454
  br label %cond.end381, !dbg !3454

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3454
  br label %cond.end383, !dbg !3454

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3454
  br label %cond.end385, !dbg !3454

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3454
  br label %cond.end387, !dbg !3454

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3454
  br label %cond.end389, !dbg !3454

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3454
  br label %cond.end391, !dbg !3454

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3454
  br label %cond.end393, !dbg !3454

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3454
  br label %cond.end395, !dbg !3454

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3454
  br label %cond.end397, !dbg !3454

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3454
  br label %cond.end399, !dbg !3454

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3454
  br label %cond.end401, !dbg !3454

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3454
  br label %cond.end403, !dbg !3454

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3454
  br label %cond.end405, !dbg !3454

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3454
  br label %cond.end407, !dbg !3454

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3454
  br label %cond.end409, !dbg !3454

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3454
  br label %cond.end411, !dbg !3454

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3454
  br label %cond.end413, !dbg !3454

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3454
  br label %cond.end415, !dbg !3454

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3454
  br label %cond.end417, !dbg !3454

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3454
  br label %cond.end419, !dbg !3454

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3454
  br label %cond.end421, !dbg !3454

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3454
  br label %cond.end423, !dbg !3454

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3454
  br label %cond.end425, !dbg !3454

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3454
  br label %cond.end427, !dbg !3454

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3454
  br label %cond.end429, !dbg !3454

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3454
  br label %cond.end431, !dbg !3454

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3454
  br label %cond.end433, !dbg !3454

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3454
  br label %cond.end435, !dbg !3454

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3454
  br label %cond.end437, !dbg !3454

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3454
  br label %cond.end440, !dbg !3454

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3454

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3454
  br label %cond.end444, !dbg !3454

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3454
  %sub443 = sub i64 %72, 1, !dbg !3454
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !3454
  br label %cond.end444, !dbg !3454

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3454
  %sub446 = sub i32 %cond445, 12, !dbg !3455
  %add = add i32 %sub446, 1, !dbg !3456
  store i32 %add, i32* %retval, align 4, !dbg !3457
  br label %return, !dbg !3457

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3458
  %dec = add i64 %73, -1, !dbg !3458
  store i64 %dec, i64* %size.addr, align 8, !dbg !3458
  %74 = load i64, i64* %size.addr, align 8, !dbg !3459
  %shr = lshr i64 %74, 12, !dbg !3459
  store i64 %shr, i64* %size.addr, align 8, !dbg !3459
  %75 = load i64, i64* %size.addr, align 8, !dbg !3460
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3437
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3461
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3462
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #4, !dbg !3461, !srcloc !3463
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3461
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3464
  %add.i = add i32 %79, 1, !dbg !3465
  store i32 %add.i, i32* %retval, align 4, !dbg !3466
  br label %return, !dbg !3466

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3467
  ret i32 %80, !dbg !3467
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !3468 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3429, metadata !DIExpression()), !dbg !3472
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3436, metadata !DIExpression()), !dbg !3474
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3475, metadata !DIExpression()), !dbg !3476
  %0 = load i64, i64* %n.addr, align 8, !dbg !3477
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3474
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3478
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3479
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #4, !dbg !3478, !srcloc !3463
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3478
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3480
  %add.i = add i32 %4, 1, !dbg !3481
  %sub = sub i32 %add.i, 1, !dbg !3482
  ret i32 %sub, !dbg !3483
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3484 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3487, metadata !DIExpression()), !dbg !3488
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3489, metadata !DIExpression()), !dbg !3490
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3491, metadata !DIExpression()), !dbg !3492
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3493, metadata !DIExpression()), !dbg !3494
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3495
  ret i8* %0, !dbg !3496
}

; Function Attrs: noredzone
declare dso_local i64 @find_next_clump8(i64*, i64*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, i8*, %struct.thermal_zone_device_ops*, %struct.thermal_zone_params*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3497 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3500, metadata !DIExpression()), !dbg !3501
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3502
  %1 = ptrtoint i8* %0 to i64, !dbg !3502
  %2 = inttoptr i64 %1 to i8*, !dbg !3502
  %3 = ptrtoint i8* %2 to i64, !dbg !3502
  %cmp = icmp uge i64 %3, -4095, !dbg !3502
  %lnot = xor i1 %cmp, true, !dbg !3502
  %lnot1 = xor i1 %lnot, true, !dbg !3502
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3502
  %conv = sext i32 %lnot.ext to i64, !dbg !3502
  %tobool = icmp ne i64 %conv, 0, !dbg !3502
  ret i1 %tobool, !dbg !3503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3504 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3507, metadata !DIExpression()), !dbg !3508
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3509
  %1 = ptrtoint i8* %0 to i64, !dbg !3510
  ret i64 %1, !dbg !3511
}

; Function Attrs: noredzone
declare dso_local i32 @thermal_zone_device_enable(%struct.thermal_zone_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @soc_dts_enable(i32 %id) #0 !dbg !3512 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %out = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !3515, metadata !DIExpression()), !dbg !3516
  call void @llvm.dbg.declare(metadata i32* %out, metadata !3517, metadata !DIExpression()), !dbg !3518
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3519, metadata !DIExpression()), !dbg !3520
  %call = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 176, i32* %out) #9, !dbg !3521
  store i32 %call, i32* %ret, align 4, !dbg !3522
  %0 = load i32, i32* %ret, align 4, !dbg !3523
  %tobool = icmp ne i32 %0, 0, !dbg !3523
  br i1 %tobool, label %if.then, label %if.end, !dbg !3525

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !3526
  store i32 %1, i32* %retval, align 4, !dbg !3527
  br label %return, !dbg !3527

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %out, align 4, !dbg !3528
  %conv = zext i32 %2 to i64, !dbg !3528
  %3 = load i32, i32* %id.addr, align 4, !dbg !3530
  %sh_prom = zext i32 %3 to i64, !dbg !3530
  %shl = shl i64 1, %sh_prom, !dbg !3530
  %and = and i64 %conv, %shl, !dbg !3531
  %tobool1 = icmp ne i64 %and, 0, !dbg !3531
  br i1 %tobool1, label %if.end11, label %if.then2, !dbg !3532

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %id.addr, align 4, !dbg !3533
  %sh_prom3 = zext i32 %4 to i64, !dbg !3533
  %shl4 = shl i64 1, %sh_prom3, !dbg !3533
  %5 = load i32, i32* %out, align 4, !dbg !3535
  %conv5 = zext i32 %5 to i64, !dbg !3535
  %or = or i64 %conv5, %shl4, !dbg !3535
  %conv6 = trunc i64 %or to i32, !dbg !3535
  store i32 %conv6, i32* %out, align 4, !dbg !3535
  %6 = load i32, i32* %out, align 4, !dbg !3536
  %call7 = call i32 @iosf_mbi_write(i8 zeroext 4, i8 zeroext 17, i32 176, i32 %6) #9, !dbg !3537
  store i32 %call7, i32* %ret, align 4, !dbg !3538
  %7 = load i32, i32* %ret, align 4, !dbg !3539
  %tobool8 = icmp ne i32 %7, 0, !dbg !3539
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3541

if.then9:                                         ; preds = %if.then2
  %8 = load i32, i32* %ret, align 4, !dbg !3542
  store i32 %8, i32* %retval, align 4, !dbg !3543
  br label %return, !dbg !3543

if.end10:                                         ; preds = %if.then2
  br label %if.end11, !dbg !3544

if.end11:                                         ; preds = %if.end10, %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !3545
  store i32 %9, i32* %retval, align 4, !dbg !3546
  br label %return, !dbg !3546

return:                                           ; preds = %if.end11, %if.then9, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !3547
  ret i32 %10, !dbg !3547
}

; Function Attrs: noredzone
declare dso_local void @thermal_zone_device_unregister(%struct.thermal_zone_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_get_curr_temp(%struct.thermal_zone_device* %tzd, i32* %temp) #0 !dbg !3548 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %temp.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %out = alloca i32, align 4
  %dts = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %sensors = alloca %struct.intel_soc_dts_sensors*, align 8
  %raw = alloca i64, align 8
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !3549, metadata !DIExpression()), !dbg !3550
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !3551, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.declare(metadata i32* %out, metadata !3555, metadata !DIExpression()), !dbg !3556
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors, metadata !3559, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.declare(metadata i64* %raw, metadata !3561, metadata !DIExpression()), !dbg !3562
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !3563
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3564
  %1 = load i8*, i8** %devdata, align 8, !dbg !3564
  %2 = bitcast i8* %1 to %struct.intel_soc_dts_sensor_entry*, !dbg !3563
  store %struct.intel_soc_dts_sensor_entry* %2, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3565
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3566
  %sensors1 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %3, i32 0, i32 6, !dbg !3567
  %4 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors1, align 8, !dbg !3567
  store %struct.intel_soc_dts_sensors* %4, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3568
  %call = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 177, i32* %out) #9, !dbg !3569
  store i32 %call, i32* %status, align 4, !dbg !3570
  %5 = load i32, i32* %status, align 4, !dbg !3571
  %tobool = icmp ne i32 %5, 0, !dbg !3571
  br i1 %tobool, label %if.then, label %if.end, !dbg !3573

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %status, align 4, !dbg !3574
  store i32 %6, i32* %retval, align 4, !dbg !3575
  br label %return, !dbg !3575

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %out, align 4, !dbg !3576
  %conv = zext i32 %7 to i64, !dbg !3576
  store i64 %conv, i64* %raw, align 8, !dbg !3577
  %8 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3578
  %id = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %8, i32 0, i32 0, !dbg !3579
  %9 = load i32, i32* %id, align 8, !dbg !3579
  %mul = mul i32 %9, 8, !dbg !3580
  %conv2 = sext i32 %mul to i64, !dbg !3578
  %call3 = call i64 @bitmap_get_value8(i64* %raw, i64 %conv2) #9, !dbg !3581
  %sub = sub i64 %call3, 127, !dbg !3582
  %conv4 = trunc i64 %sub to i32, !dbg !3581
  store i32 %conv4, i32* %out, align 4, !dbg !3583
  %10 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3584
  %tj_max = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %10, i32 0, i32 0, !dbg !3585
  %11 = load i32, i32* %tj_max, align 8, !dbg !3585
  %12 = load i32, i32* %out, align 4, !dbg !3586
  %mul5 = mul i32 %12, 1000, !dbg !3587
  %sub6 = sub i32 %11, %mul5, !dbg !3588
  %13 = load i32*, i32** %temp.addr, align 8, !dbg !3589
  store i32 %sub6, i32* %13, align 4, !dbg !3590
  store i32 0, i32* %retval, align 4, !dbg !3591
  br label %return, !dbg !3591

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !3592
  ret i32 %14, !dbg !3592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_get_trip_type(%struct.thermal_zone_device* %tzd, i32 %trip, i32* %type) #0 !dbg !3593 {
entry:
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %type.addr = alloca i32*, align 8
  %dts = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !3594, metadata !DIExpression()), !dbg !3595
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i32* %type, i32** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %type.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts, metadata !3600, metadata !DIExpression()), !dbg !3601
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !3602
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3603
  %1 = load i8*, i8** %devdata, align 8, !dbg !3603
  %2 = bitcast i8* %1 to %struct.intel_soc_dts_sensor_entry*, !dbg !3602
  store %struct.intel_soc_dts_sensor_entry* %2, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3604
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3605
  %trip_types = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %3, i32 0, i32 4, !dbg !3606
  %4 = load i32, i32* %trip.addr, align 4, !dbg !3607
  %idxprom = sext i32 %4 to i64, !dbg !3605
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %trip_types, i64 0, i64 %idxprom, !dbg !3605
  %5 = load i32, i32* %arrayidx, align 4, !dbg !3605
  %6 = load i32*, i32** %type.addr, align 8, !dbg !3608
  store i32 %5, i32* %6, align 4, !dbg !3609
  ret i32 0, !dbg !3610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_get_trip_temp(%struct.thermal_zone_device* %tzd, i32 %trip, i32* %temp) #0 !dbg !3611 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32*, align 8
  %status = alloca i32, align 4
  %out = alloca i32, align 4
  %dts = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %sensors = alloca %struct.intel_soc_dts_sensors*, align 8
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !3612, metadata !DIExpression()), !dbg !3613
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3614, metadata !DIExpression()), !dbg !3615
  store i32* %temp, i32** %temp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %temp.addr, metadata !3616, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3618, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.declare(metadata i32* %out, metadata !3620, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors, metadata !3624, metadata !DIExpression()), !dbg !3625
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !3626
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3627
  %1 = load i8*, i8** %devdata, align 8, !dbg !3627
  %2 = bitcast i8* %1 to %struct.intel_soc_dts_sensor_entry*, !dbg !3626
  store %struct.intel_soc_dts_sensor_entry* %2, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3628
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3629
  %sensors1 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %3, i32 0, i32 6, !dbg !3630
  %4 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors1, align 8, !dbg !3630
  store %struct.intel_soc_dts_sensors* %4, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3631
  %5 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3632
  %dts_update_lock = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %5, i32 0, i32 2, !dbg !3633
  call void @mutex_lock(%struct.mutex* %dts_update_lock) #9, !dbg !3634
  %call = call i32 @iosf_mbi_read(i8 zeroext 4, i8 zeroext 16, i32 178, i32* %out) #9, !dbg !3635
  store i32 %call, i32* %status, align 4, !dbg !3636
  %6 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3637
  %dts_update_lock2 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %6, i32 0, i32 2, !dbg !3638
  call void @mutex_unlock(%struct.mutex* %dts_update_lock2) #9, !dbg !3639
  %7 = load i32, i32* %status, align 4, !dbg !3640
  %tobool = icmp ne i32 %7, 0, !dbg !3640
  br i1 %tobool, label %if.then, label %if.end, !dbg !3642

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %status, align 4, !dbg !3643
  store i32 %8, i32* %retval, align 4, !dbg !3644
  br label %return, !dbg !3644

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %out, align 4, !dbg !3645
  %10 = load i32, i32* %trip.addr, align 4, !dbg !3646
  %mul = mul i32 %10, 8, !dbg !3647
  %shr = lshr i32 %9, %mul, !dbg !3648
  %and = and i32 %shr, 127, !dbg !3649
  store i32 %and, i32* %out, align 4, !dbg !3650
  %11 = load i32, i32* %out, align 4, !dbg !3651
  %tobool3 = icmp ne i32 %11, 0, !dbg !3651
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !3653

if.then4:                                         ; preds = %if.end
  %12 = load i32*, i32** %temp.addr, align 8, !dbg !3654
  store i32 0, i32* %12, align 4, !dbg !3655
  br label %if.end6, !dbg !3656

if.else:                                          ; preds = %if.end
  %13 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3657
  %tj_max = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %13, i32 0, i32 0, !dbg !3658
  %14 = load i32, i32* %tj_max, align 8, !dbg !3658
  %15 = load i32, i32* %out, align 4, !dbg !3659
  %mul5 = mul i32 %15, 1000, !dbg !3660
  %sub = sub i32 %14, %mul5, !dbg !3661
  %16 = load i32*, i32** %temp.addr, align 8, !dbg !3662
  store i32 %sub, i32* %16, align 4, !dbg !3663
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  store i32 0, i32* %retval, align 4, !dbg !3664
  br label %return, !dbg !3664

return:                                           ; preds = %if.end6, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3665
  ret i32 %17, !dbg !3665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sys_set_trip_temp(%struct.thermal_zone_device* %tzd, i32 %trip, i32 %temp) #0 !dbg !3666 {
entry:
  %retval = alloca i32, align 4
  %tzd.addr = alloca %struct.thermal_zone_device*, align 8
  %trip.addr = alloca i32, align 4
  %temp.addr = alloca i32, align 4
  %dts = alloca %struct.intel_soc_dts_sensor_entry*, align 8
  %sensors = alloca %struct.intel_soc_dts_sensors*, align 8
  %status = alloca i32, align 4
  store %struct.thermal_zone_device* %tzd, %struct.thermal_zone_device** %tzd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thermal_zone_device** %tzd.addr, metadata !3667, metadata !DIExpression()), !dbg !3668
  store i32 %trip, i32* %trip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %trip.addr, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i32 %temp, i32* %temp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %temp.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensor_entry** %dts, metadata !3673, metadata !DIExpression()), !dbg !3674
  %0 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !3675
  %devdata = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %0, i32 0, i32 8, !dbg !3676
  %1 = load i8*, i8** %devdata, align 8, !dbg !3676
  %2 = bitcast i8* %1 to %struct.intel_soc_dts_sensor_entry*, !dbg !3675
  store %struct.intel_soc_dts_sensor_entry* %2, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3674
  call void @llvm.dbg.declare(metadata %struct.intel_soc_dts_sensors** %sensors, metadata !3677, metadata !DIExpression()), !dbg !3678
  %3 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3679
  %sensors1 = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %3, i32 0, i32 6, !dbg !3680
  %4 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors1, align 8, !dbg !3680
  store %struct.intel_soc_dts_sensors* %4, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3678
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3681, metadata !DIExpression()), !dbg !3682
  %5 = load i32, i32* %temp.addr, align 4, !dbg !3683
  %6 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3685
  %tj_max = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %6, i32 0, i32 0, !dbg !3686
  %7 = load i32, i32* %tj_max, align 8, !dbg !3686
  %cmp = icmp ugt i32 %5, %7, !dbg !3687
  br i1 %cmp, label %if.then, label %if.end, !dbg !3688

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3689
  br label %return, !dbg !3689

if.end:                                           ; preds = %entry
  %8 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3690
  %dts_update_lock = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %8, i32 0, i32 2, !dbg !3691
  call void @mutex_lock(%struct.mutex* %dts_update_lock) #9, !dbg !3692
  %9 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %tzd.addr, align 8, !dbg !3693
  %devdata2 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %9, i32 0, i32 8, !dbg !3694
  %10 = load i8*, i8** %devdata2, align 8, !dbg !3694
  %11 = bitcast i8* %10 to %struct.intel_soc_dts_sensor_entry*, !dbg !3693
  %12 = load i32, i32* %trip.addr, align 4, !dbg !3695
  %13 = load i32, i32* %temp.addr, align 4, !dbg !3696
  %14 = load %struct.intel_soc_dts_sensor_entry*, %struct.intel_soc_dts_sensor_entry** %dts, align 8, !dbg !3697
  %trip_types = getelementptr inbounds %struct.intel_soc_dts_sensor_entry, %struct.intel_soc_dts_sensor_entry* %14, i32 0, i32 4, !dbg !3698
  %15 = load i32, i32* %trip.addr, align 4, !dbg !3699
  %idxprom = sext i32 %15 to i64, !dbg !3697
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %trip_types, i64 0, i64 %idxprom, !dbg !3697
  %16 = load i32, i32* %arrayidx, align 4, !dbg !3697
  %call = call i32 @update_trip_temp(%struct.intel_soc_dts_sensor_entry* %11, i32 %12, i32 %13, i32 %16) #9, !dbg !3700
  store i32 %call, i32* %status, align 4, !dbg !3701
  %17 = load %struct.intel_soc_dts_sensors*, %struct.intel_soc_dts_sensors** %sensors, align 8, !dbg !3702
  %dts_update_lock3 = getelementptr inbounds %struct.intel_soc_dts_sensors, %struct.intel_soc_dts_sensors* %17, i32 0, i32 2, !dbg !3703
  call void @mutex_unlock(%struct.mutex* %dts_update_lock3) #9, !dbg !3704
  %18 = load i32, i32* %status, align 4, !dbg !3705
  store i32 %18, i32* %retval, align 4, !dbg !3706
  br label %return, !dbg !3706

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3707
  ret i32 %19, !dbg !3707
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @bitmap_get_value8(i64* %map, i64 %start) #0 !dbg !3708 {
entry:
  %map.addr = alloca i64*, align 8
  %start.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %offset = alloca i64, align 8
  store i64* %map, i64** %map.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr, metadata !3712, metadata !DIExpression()), !dbg !3713
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.declare(metadata i64* %index, metadata !3716, metadata !DIExpression()), !dbg !3717
  %0 = load i64, i64* %start.addr, align 8, !dbg !3718
  %div = udiv i64 %0, 64, !dbg !3718
  store i64 %div, i64* %index, align 8, !dbg !3717
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !3719, metadata !DIExpression()), !dbg !3720
  %1 = load i64, i64* %start.addr, align 8, !dbg !3721
  %rem = urem i64 %1, 64, !dbg !3722
  store i64 %rem, i64* %offset, align 8, !dbg !3720
  %2 = load i64*, i64** %map.addr, align 8, !dbg !3723
  %3 = load i64, i64* %index, align 8, !dbg !3724
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !3723
  %4 = load i64, i64* %arrayidx, align 8, !dbg !3723
  %5 = load i64, i64* %offset, align 8, !dbg !3725
  %shr = lshr i64 %4, %5, !dbg !3726
  %and = and i64 %shr, 255, !dbg !3727
  ret i64 %and, !dbg !3728
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind }
attributes #11 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2258}
!llvm.named.register.rsp = !{!2286}
!llvm.module.flags = !{!2287, !2288, !2289, !2290}
!llvm.ident = !{!2291}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 425, type: !1726, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "intel_soc_dts_iosf_init", scope: !3, file: !3, line: 401, type: !4, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3 = !DIFile(filename: "drivers/thermal/intel/intel_soc_dts_iosf.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !55, !67, !67}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_soc_dts_sensors", file: !8, line: 35, size: 960, elements: !9)
!8 = !DIFile(filename: "drivers/thermal/intel/intel_soc_dts_iosf.h", directory: "/home/lizy2001/genbc/linux")
!9 = !{!10, !16, !32, !54, !62}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "tj_max", scope: !7, file: !8, line: 36, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !12, line: 21, baseType: !13)
!12 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "intr_notify_lock", scope: !7, file: !8, line: 37, baseType: !17, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !18, line: 83, baseType: !19)
!18 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !18, line: 71, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, scope: !19, file: !18, line: 72, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !18, line: 72, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !22, file: !18, line: 73, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !18, line: 20, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !25, file: !18, line: 21, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !29, line: 25, baseType: !30)
!29 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 25, elements: !31)
!31 = !{}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "dts_update_lock", scope: !7, file: !8, line: 38, baseType: !33, size: 192, offset: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !34, line: 53, size: 192, elements: !35)
!34 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !47, !48}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !33, file: !34, line: 54, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !38, line: 13, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !40, line: 175, baseType: !41)
!40 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 173, size: 64, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !41, file: !40, line: 174, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !12, line: 22, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !14, line: 30, baseType: !46)
!46 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !33, file: !34, line: 55, baseType: !17, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !33, file: !34, line: 59, baseType: !49, size: 128, offset: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !40, line: 178, size: 128, elements: !50)
!50 = !{!51, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !49, file: !40, line: 179, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !49, file: !40, line: 179, baseType: !52, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "intr_type", scope: !7, file: !8, line: 39, baseType: !55, size: 32, offset: 256)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intel_soc_dts_interrupt_type", file: !8, line: 15, baseType: !15, size: 32, elements: !56)
!56 = !{!57, !58, !59, !60, !61}
!57 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_NONE", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_APIC", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_MSI", value: 2, isUnsigned: true)
!60 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_SCI", value: 3, isUnsigned: true)
!61 = !DIEnumerator(name: "INTEL_SOC_DTS_INTERRUPT_SMI", value: 4, isUnsigned: true)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "soc_dts", scope: !7, file: !8, line: 40, baseType: !63, size: 640, offset: 320)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 640, elements: !80)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_soc_dts_sensor_entry", file: !8, line: 25, size: 320, elements: !65)
!65 = !{!66, !68, !69, !70, !71, !82, !2257}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !64, file: !8, line: 26, baseType: !67, size: 32)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "store_status", scope: !64, file: !8, line: 27, baseType: !11, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !64, file: !8, line: 28, baseType: !11, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "trip_count", scope: !64, file: !8, line: 29, baseType: !11, size: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "trip_types", scope: !64, file: !8, line: 30, baseType: !72, size: 64, offset: 128)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !80)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !74, line: 12, baseType: !15, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3, isUnsigned: true)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tzone", scope: !64, file: !8, line: 31, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !85, line: 150, size: 8448, elements: !86)
!85 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !93, !2071, !2072, !2075, !2076, !2077, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2189, !2213, !2228, !2229, !2230, !2234, !2235, !2236, !2245}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !84, file: !85, line: 151, baseType: !67, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !85, line: 152, baseType: !89, size: 160, offset: 32)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 160, elements: !91)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !{!92}
!92 = !DISubrange(count: 20)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !84, file: !85, line: 153, baseType: !94, size: 5568, offset: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !95, line: 461, size: 5568, elements: !96)
!95 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !1568, !1570, !1573, !1574, !1626, !1729, !1730, !1731, !1732, !1733, !1748, !1866, !1879, !1882, !1883, !1887, !1889, !1890, !1891, !1895, !1901, !1902, !1905, !2020, !2021, !2024, !2025, !2026, !2027, !2059, !2060, !2061, !2064, !2067, !2068, !2069, !2070}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !94, file: !95, line: 462, baseType: !98, size: 512)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !99, line: 64, size: 512, elements: !100)
!99 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !104, !105, !107, !152, !1404, !1558, !1563, !1564, !1565, !1566, !1567}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 65, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !98, file: !99, line: 66, baseType: !49, size: 128, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !98, file: !99, line: 67, baseType: !106, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !98, file: !99, line: 68, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !99, line: 192, size: 704, elements: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !109, file: !99, line: 193, baseType: !49, size: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !109, file: !99, line: 194, baseType: !17, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !99, line: 195, baseType: !98, size: 512, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !109, file: !99, line: 196, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !99, line: 156, size: 192, elements: !118)
!118 = !{!119, !124, !129}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !117, file: !99, line: 157, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!67, !108, !106}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !99, line: 158, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!102, !108, !106}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !117, file: !99, line: 159, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!67, !108, !106, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !99, line: 148, size: 20736, elements: !136)
!136 = !{!137, !142, !146, !147, !151}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !135, file: !99, line: 149, baseType: !138, size: 192)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 192, elements: !140)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!140 = !{!141}
!141 = !DISubrange(count: 3)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !135, file: !99, line: 150, baseType: !143, size: 4096, offset: 192)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 4096, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !135, file: !99, line: 151, baseType: !67, size: 32, offset: 4288)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !135, file: !99, line: 152, baseType: !148, size: 16384, offset: 4320)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 16384, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 2048)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !135, file: !99, line: 153, baseType: !67, size: 32, offset: 20704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !98, file: !99, line: 69, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !99, line: 138, size: 448, elements: !155)
!155 = !{!156, !160, !190, !192, !1344, !1383, !1387}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !154, file: !99, line: 139, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !106}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !154, file: !99, line: 140, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !164, line: 230, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !182}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !163, file: !164, line: 231, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !106, !175, !139}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !40, line: 60, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !172, line: 73, baseType: !173)
!172 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !172, line: 15, baseType: !174)
!174 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !164, line: 30, size: 128, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !164, line: 31, baseType: !102, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !176, file: !164, line: 32, baseType: !180, size: 16, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !40, line: 19, baseType: !181)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !163, file: !164, line: 232, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!170, !106, !175, !102, !186}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 55, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !172, line: 72, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !172, line: 16, baseType: !189)
!189 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !154, file: !99, line: 141, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !154, file: !99, line: 142, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !164, line: 84, size: 320, elements: !197)
!197 = !{!198, !199, !203, !1341, !1342}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !164, line: 85, baseType: !102, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !196, file: !164, line: 86, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!180, !106, !175, !67}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !196, file: !164, line: 88, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!180, !106, !207, !67}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !164, line: 168, size: 448, elements: !209)
!209 = !{!210, !211, !212, !214, !223, !224}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !208, file: !164, line: 169, baseType: !176, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !164, line: 170, baseType: !186, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !208, file: !164, line: 171, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !208, file: !164, line: 172, baseType: !215, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!170, !218, !106, !207, !139, !221, !186}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !220, line: 526, flags: DIFlagFwdDecl)
!220 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !40, line: 46, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !172, line: 88, baseType: !46)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !208, file: !164, line: 174, baseType: !215, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !208, file: !164, line: 176, baseType: !225, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!67, !218, !106, !207, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !230, line: 305, size: 1472, elements: !231)
!230 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233, !234, !235, !236, !244, !245, !1315, !1321, !1322, !1327, !1328, !1331, !1335, !1336, !1337, !1338, !1339}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !229, file: !230, line: 308, baseType: !189, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !229, file: !230, line: 309, baseType: !189, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !229, file: !230, line: 313, baseType: !228, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !229, file: !230, line: 313, baseType: !228, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !229, file: !230, line: 315, baseType: !237, size: 192, align: 64, offset: 256)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !238, line: 24, size: 192, align: 64, elements: !239)
!238 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!239 = !{!240, !241, !243}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !237, file: !238, line: 25, baseType: !189, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !237, file: !238, line: 26, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !237, file: !238, line: 27, baseType: !242, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !229, file: !230, line: 323, baseType: !189, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !229, file: !230, line: 327, baseType: !246, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !230, line: 388, size: 7296, elements: !248)
!248 = !{!249, !1311}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !230, line: 389, baseType: !250, size: 7296)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !230, line: 389, size: 7296, elements: !251)
!251 = !{!252, !253, !257, !261, !265, !266, !267, !268, !269, !277, !282, !283, !284, !285, !286, !287, !288, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !323, !331, !334, !376, !377, !1281, !1282, !1285, !1289, !1290, !1293, !1294, !1295, !1298, !1310}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !250, file: !230, line: 390, baseType: !228, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !250, file: !230, line: 391, baseType: !254, size: 64, offset: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !238, line: 31, size: 64, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !254, file: !238, line: 32, baseType: !242, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !250, file: !230, line: 392, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !12, line: 23, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !14, line: 31, baseType: !260)
!260 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !250, file: !230, line: 394, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!189, !218, !189, !189, !189, !189}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !250, file: !230, line: 398, baseType: !189, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !250, file: !230, line: 399, baseType: !189, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !250, file: !230, line: 405, baseType: !189, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !250, file: !230, line: 406, baseType: !189, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !250, file: !230, line: 407, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !220, line: 286, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 286, size: 64, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !272, file: !220, line: 286, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !276, line: 18, baseType: !189)
!276 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!277 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !250, file: !230, line: 416, baseType: !278, size: 32, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !40, line: 168, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 166, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !279, file: !40, line: 167, baseType: !67, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !250, file: !230, line: 428, baseType: !278, size: 32, offset: 608)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !250, file: !230, line: 437, baseType: !278, size: 32, offset: 640)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !250, file: !230, line: 447, baseType: !278, size: 32, offset: 672)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !250, file: !230, line: 450, baseType: !37, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !250, file: !230, line: 452, baseType: !67, size: 32, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !250, file: !230, line: 454, baseType: !17, offset: 800)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !250, file: !230, line: 457, baseType: !289, size: 256, offset: 832)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !290, line: 35, size: 256, elements: !291)
!290 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !293, !294, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !289, file: !290, line: 36, baseType: !37, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !289, file: !290, line: 42, baseType: !37, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !289, file: !290, line: 46, baseType: !295, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !18, line: 29, baseType: !25)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !289, file: !290, line: 47, baseType: !49, size: 128, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !250, file: !230, line: 459, baseType: !49, size: 128, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !250, file: !230, line: 466, baseType: !189, size: 64, offset: 1216)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !250, file: !230, line: 467, baseType: !189, size: 64, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !250, file: !230, line: 469, baseType: !189, size: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !250, file: !230, line: 470, baseType: !189, size: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !250, file: !230, line: 471, baseType: !39, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !250, file: !230, line: 472, baseType: !189, size: 64, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !250, file: !230, line: 473, baseType: !189, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !250, file: !230, line: 474, baseType: !189, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !250, file: !230, line: 475, baseType: !189, size: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !250, file: !230, line: 477, baseType: !17, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !250, file: !230, line: 478, baseType: !189, size: 64, offset: 1792)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !250, file: !230, line: 478, baseType: !189, size: 64, offset: 1856)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !250, file: !230, line: 478, baseType: !189, size: 64, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !250, file: !230, line: 478, baseType: !189, size: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !250, file: !230, line: 479, baseType: !189, size: 64, offset: 2048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !250, file: !230, line: 479, baseType: !189, size: 64, offset: 2112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !250, file: !230, line: 479, baseType: !189, size: 64, offset: 2176)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !250, file: !230, line: 480, baseType: !189, size: 64, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !250, file: !230, line: 480, baseType: !189, size: 64, offset: 2304)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !250, file: !230, line: 480, baseType: !189, size: 64, offset: 2368)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !250, file: !230, line: 480, baseType: !189, size: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !250, file: !230, line: 482, baseType: !320, size: 2816, offset: 2496)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 2816, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 44)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !250, file: !230, line: 488, baseType: !324, size: 256, offset: 5312)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !325, line: 60, size: 256, elements: !326)
!325 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !325, line: 61, baseType: !328, size: 256)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 4)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !250, file: !230, line: 490, baseType: !332, size: 64, offset: 5568)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !230, line: 490, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !250, file: !230, line: 493, baseType: !335, size: 896, offset: 5632)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !336, line: 53, baseType: !337)
!336 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 13, size: 896, elements: !338)
!338 = !{!339, !340, !341, !342, !345, !346, !347, !348, !368, !369, !372}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !337, file: !336, line: 18, baseType: !258, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !337, file: !336, line: 28, baseType: !39, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !337, file: !336, line: 31, baseType: !289, size: 256, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !337, file: !336, line: 32, baseType: !343, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !336, line: 32, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !337, file: !336, line: 37, baseType: !181, size: 16, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !337, file: !336, line: 40, baseType: !33, size: 192, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !337, file: !336, line: 41, baseType: !213, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !337, file: !336, line: 42, baseType: !349, size: 64, offset: 768)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !352, line: 13, size: 896, elements: !353)
!352 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !351, file: !352, line: 14, baseType: !213, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !352, line: 15, baseType: !189, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !351, file: !352, line: 17, baseType: !189, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !351, file: !352, line: 17, baseType: !189, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !351, file: !352, line: 19, baseType: !174, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !351, file: !352, line: 21, baseType: !174, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !351, file: !352, line: 22, baseType: !174, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !351, file: !352, line: 23, baseType: !174, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !351, file: !352, line: 24, baseType: !174, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !351, file: !352, line: 25, baseType: !174, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !351, file: !352, line: 26, baseType: !174, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !351, file: !352, line: 27, baseType: !174, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !351, file: !352, line: 28, baseType: !174, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !351, file: !352, line: 29, baseType: !174, size: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !337, file: !336, line: 44, baseType: !278, size: 32, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !337, file: !336, line: 50, baseType: !370, size: 16, offset: 864)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !12, line: 19, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !14, line: 24, baseType: !181)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !337, file: !336, line: 51, baseType: !373, size: 16, offset: 880)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !12, line: 18, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !14, line: 23, baseType: !375)
!375 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !230, line: 495, baseType: !189, size: 64, offset: 6528)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !250, file: !230, line: 497, baseType: !378, size: 64, offset: 6592)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !230, line: 381, size: 384, elements: !380)
!380 = !{!381, !382, !1280}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !379, file: !230, line: 382, baseType: !278, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !379, file: !230, line: 383, baseType: !383, size: 128, offset: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !230, line: 376, size: 128, elements: !384)
!384 = !{!385, !1278}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !383, file: !230, line: 377, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !388, line: 640, size: 48640, elements: !389)
!388 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!389 = !{!390, !396, !398, !399, !405, !406, !407, !408, !409, !410, !411, !412, !416, !434, !445, !545, !546, !547, !558, !559, !561, !562, !563, !564, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !649, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !705, !707, !708, !709, !721, !723, !724, !725, !726, !727, !733, !734, !735, !736, !737, !738, !739, !751, !756, !761, !762, !763, !766, !770, !773, !776, !779, !782, !786, !789, !792, !798, !799, !800, !806, !807, !808, !809, !810, !819, !820, !821, !822, !823, !828, !829, !830, !833, !834, !837, !840, !843, !846, !849, !852, !853, !933, !936, !939, !940, !943, !944, !945, !949, !950, !951, !964, !965, !966, !978, !983, !986, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !387, file: !388, line: 646, baseType: !391, size: 128)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !392, line: 56, size: 128, elements: !393)
!392 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !392, line: 57, baseType: !189, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !391, file: !392, line: 58, baseType: !11, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !387, file: !388, line: 649, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !174)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !387, file: !388, line: 657, baseType: !213, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !387, file: !388, line: 658, baseType: !400, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !401, line: 113, baseType: !402)
!401 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !401, line: 111, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !402, file: !401, line: 112, baseType: !278, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !388, line: 660, baseType: !15, size: 32, offset: 288)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !387, file: !388, line: 661, baseType: !15, size: 32, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !387, file: !388, line: 684, baseType: !67, size: 32, offset: 352)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !387, file: !388, line: 686, baseType: !67, size: 32, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !387, file: !388, line: 687, baseType: !67, size: 32, offset: 416)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !387, file: !388, line: 688, baseType: !67, size: 32, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !387, file: !388, line: 689, baseType: !15, size: 32, offset: 480)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !387, file: !388, line: 691, baseType: !413, size: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !388, line: 691, flags: DIFlagFwdDecl)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !387, file: !388, line: 692, baseType: !417, size: 832, offset: 576)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !388, line: 451, size: 832, elements: !418)
!418 = !{!419, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !417, file: !388, line: 453, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !388, line: 325, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !420, file: !388, line: 326, baseType: !189, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !420, file: !388, line: 327, baseType: !11, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !417, file: !388, line: 454, baseType: !237, size: 192, align: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !417, file: !388, line: 455, baseType: !49, size: 128, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !417, file: !388, line: 456, baseType: !15, size: 32, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !417, file: !388, line: 458, baseType: !258, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !417, file: !388, line: 459, baseType: !258, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !417, file: !388, line: 460, baseType: !258, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !417, file: !388, line: 461, baseType: !258, size: 64, offset: 704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !417, file: !388, line: 463, baseType: !258, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !417, file: !388, line: 465, baseType: !433, offset: 832)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !388, line: 415, elements: !31)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !387, file: !388, line: 693, baseType: !435, size: 384, offset: 1408)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !388, line: 489, size: 384, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !435, file: !388, line: 490, baseType: !49, size: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !435, file: !388, line: 491, baseType: !189, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !435, file: !388, line: 492, baseType: !189, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !435, file: !388, line: 493, baseType: !15, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !435, file: !388, line: 494, baseType: !181, size: 16, offset: 288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !435, file: !388, line: 495, baseType: !181, size: 16, offset: 304)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !435, file: !388, line: 497, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !387, file: !388, line: 697, baseType: !446, size: 1792, offset: 1792)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !388, line: 507, size: 1792, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !542, !543}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !446, file: !388, line: 508, baseType: !237, size: 192, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !446, file: !388, line: 515, baseType: !258, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !446, file: !388, line: 516, baseType: !258, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !446, file: !388, line: 517, baseType: !258, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !446, file: !388, line: 518, baseType: !258, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !446, file: !388, line: 519, baseType: !258, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !446, file: !388, line: 526, baseType: !44, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !446, file: !388, line: 527, baseType: !258, size: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !388, line: 528, baseType: !15, size: 32, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !446, file: !388, line: 554, baseType: !15, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !446, file: !388, line: 555, baseType: !15, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !446, file: !388, line: 556, baseType: !15, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !446, file: !388, line: 557, baseType: !15, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !446, file: !388, line: 563, baseType: !462, size: 512, offset: 704)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !463, line: 118, size: 512, elements: !464)
!463 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!464 = !{!465, !473, !474, !483, !535, !539, !540, !541}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !462, file: !463, line: 119, baseType: !466, size: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !467, line: 9, size: 256, elements: !468)
!467 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !466, file: !467, line: 10, baseType: !237, size: 192, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !466, file: !467, line: 11, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !472, line: 29, baseType: !44)
!472 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !462, file: !463, line: 120, baseType: !471, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !462, file: !463, line: 121, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !482}
!478 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !463, line: 65, baseType: !15, size: 32, elements: !479)
!479 = !{!480, !481}
!480 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!481 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !462, file: !463, line: 122, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !463, line: 159, size: 512, align: 512, elements: !486)
!486 = !{!487, !507, !508, !511, !521, !522, !530, !534}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !485, file: !463, line: 160, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !463, line: 214, size: 4608, align: 512, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !463, line: 215, baseType: !295)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !489, file: !463, line: 216, baseType: !15, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !489, file: !463, line: 217, baseType: !15, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !489, file: !463, line: 218, baseType: !15, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !489, file: !463, line: 219, baseType: !15, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !489, file: !463, line: 220, baseType: !15, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !489, file: !463, line: 221, baseType: !15, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !489, file: !463, line: 222, baseType: !15, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !489, file: !463, line: 233, baseType: !471, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !489, file: !463, line: 234, baseType: !482, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !489, file: !463, line: 235, baseType: !471, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !489, file: !463, line: 236, baseType: !482, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !489, file: !463, line: 237, baseType: !504, size: 4096, offset: 512)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 4096, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 8)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !485, file: !463, line: 161, baseType: !15, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !485, file: !463, line: 162, baseType: !509, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !40, line: 27, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !172, line: 96, baseType: !67)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !485, file: !463, line: 163, baseType: !512, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !513, line: 276, baseType: !514)
!513 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !513, line: 276, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !514, file: !513, line: 276, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !513, line: 70, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !513, line: 65, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !518, file: !513, line: 66, baseType: !15, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !485, file: !463, line: 164, baseType: !482, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !485, file: !463, line: 165, baseType: !523, size: 128, offset: 256)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !467, line: 14, size: 128, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !523, file: !467, line: 15, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !238, line: 125, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !526, file: !238, line: 126, baseType: !254, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !526, file: !238, line: 127, baseType: !242, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !485, file: !463, line: 166, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!471}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !485, file: !463, line: 167, baseType: !471, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !462, file: !463, line: 123, baseType: !536, size: 8, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !12, line: 17, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !14, line: 21, baseType: !538)
!538 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !462, file: !463, line: 124, baseType: !536, size: 8, offset: 456)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !462, file: !463, line: 125, baseType: !536, size: 8, offset: 464)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !462, file: !463, line: 126, baseType: !536, size: 8, offset: 472)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !446, file: !388, line: 572, baseType: !462, size: 512, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !446, file: !388, line: 580, baseType: !544, size: 64, offset: 1728)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !387, file: !388, line: 721, baseType: !15, size: 32, offset: 3584)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !387, file: !388, line: 722, baseType: !67, size: 32, offset: 3616)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !387, file: !388, line: 723, baseType: !548, size: 64, offset: 3648)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !551, line: 17, baseType: !552)
!551 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !551, line: 17, size: 64, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !552, file: !551, line: 17, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 1)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !387, file: !388, line: 724, baseType: !550, size: 64, offset: 3712)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !387, file: !388, line: 749, baseType: !560, offset: 3776)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !388, line: 290, elements: !31)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !387, file: !388, line: 751, baseType: !49, size: 128, offset: 3776)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !387, file: !388, line: 757, baseType: !246, size: 64, offset: 3904)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !387, file: !388, line: 758, baseType: !246, size: 64, offset: 3968)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !387, file: !388, line: 761, baseType: !565, size: 320, offset: 4032)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !325, line: 34, size: 320, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !565, file: !325, line: 35, baseType: !258, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !565, file: !325, line: 36, baseType: !569, size: 256, offset: 64)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !329)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !387, file: !388, line: 766, baseType: !67, size: 32, offset: 4352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !387, file: !388, line: 767, baseType: !67, size: 32, offset: 4384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !387, file: !388, line: 768, baseType: !67, size: 32, offset: 4416)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !387, file: !388, line: 770, baseType: !67, size: 32, offset: 4448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !387, file: !388, line: 772, baseType: !189, size: 64, offset: 4480)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !387, file: !388, line: 775, baseType: !15, size: 32, offset: 4544)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !387, file: !388, line: 778, baseType: !15, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !387, file: !388, line: 779, baseType: !15, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !387, file: !388, line: 780, baseType: !15, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !387, file: !388, line: 803, baseType: !15, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !387, file: !388, line: 806, baseType: !15, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !387, file: !388, line: 807, baseType: !15, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !387, file: !388, line: 809, baseType: !15, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !387, file: !388, line: 815, baseType: !15, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !387, file: !388, line: 831, baseType: !189, size: 64, offset: 4672)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !387, file: !388, line: 833, baseType: !586, size: 384, offset: 4736)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !587, line: 25, size: 384, elements: !588)
!587 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589, !594}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !586, file: !587, line: 26, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!174, !593}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !587, line: 27, baseType: !595, size: 320, offset: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !587, line: 27, size: 320, elements: !596)
!596 = !{!597, !607, !639}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !595, file: !587, line: 36, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !587, line: 29, size: 320, elements: !599)
!599 = !{!600, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !598, file: !587, line: 30, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !598, file: !587, line: 31, baseType: !11, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !587, line: 32, baseType: !11, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !598, file: !587, line: 33, baseType: !11, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !598, file: !587, line: 34, baseType: !258, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !598, file: !587, line: 35, baseType: !601, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !595, file: !587, line: 46, baseType: !608, size: 192)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !587, line: 38, size: 192, elements: !609)
!609 = !{!610, !611, !617, !638}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !608, file: !587, line: 39, baseType: !509, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !587, line: 40, baseType: !612, size: 32, offset: 32)
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !587, line: 16, baseType: !15, size: 32, elements: !613)
!613 = !{!614, !615, !616}
!614 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!615 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!616 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !587, line: 41, baseType: !618, size: 64, offset: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !587, line: 41, size: 64, elements: !619)
!619 = !{!620, !628}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !618, file: !587, line: 42, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !623, line: 7, size: 128, elements: !624)
!623 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!624 = !{!625, !627}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !622, file: !623, line: 8, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !172, line: 93, baseType: !46)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !622, file: !623, line: 9, baseType: !46, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !618, file: !587, line: 43, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !631, line: 7, size: 64, elements: !632)
!631 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!632 = !{!633, !637}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !630, file: !631, line: 8, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !631, line: 5, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !12, line: 20, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !14, line: 26, baseType: !67)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !630, file: !631, line: 9, baseType: !635, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !608, file: !587, line: 45, baseType: !258, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !595, file: !587, line: 54, baseType: !640, size: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !595, file: !587, line: 48, size: 256, elements: !641)
!641 = !{!642, !645, !646, !647, !648}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !640, file: !587, line: 49, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !587, line: 14, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !640, file: !587, line: 50, baseType: !67, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !640, file: !587, line: 51, baseType: !67, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !640, file: !587, line: 52, baseType: !189, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !640, file: !587, line: 53, baseType: !189, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !387, file: !388, line: 835, baseType: !650, size: 32, offset: 5120)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !40, line: 22, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !172, line: 28, baseType: !67)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !387, file: !388, line: 836, baseType: !650, size: 32, offset: 5152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !387, file: !388, line: 840, baseType: !189, size: 64, offset: 5184)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !387, file: !388, line: 849, baseType: !386, size: 64, offset: 5248)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !387, file: !388, line: 852, baseType: !386, size: 64, offset: 5312)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !387, file: !388, line: 857, baseType: !49, size: 128, offset: 5376)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !387, file: !388, line: 858, baseType: !49, size: 128, offset: 5504)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !387, file: !388, line: 859, baseType: !386, size: 64, offset: 5632)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !387, file: !388, line: 867, baseType: !49, size: 128, offset: 5696)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !387, file: !388, line: 868, baseType: !49, size: 128, offset: 5824)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !387, file: !388, line: 871, baseType: !662, size: 64, offset: 5952)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !664, line: 59, size: 768, elements: !665)
!664 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!665 = !{!666, !667, !668, !669, !680, !681, !688, !697}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !663, file: !664, line: 61, baseType: !400, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !663, file: !664, line: 62, baseType: !15, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !663, file: !664, line: 63, baseType: !17, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !663, file: !664, line: 65, baseType: !670, size: 256, offset: 64)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 256, elements: !329)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !40, line: 182, size: 64, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !671, file: !40, line: 183, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !40, line: 186, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !40, line: 187, baseType: !674, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !675, file: !40, line: 187, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !663, file: !664, line: 66, baseType: !671, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !663, file: !664, line: 68, baseType: !682, size: 128, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !683, line: 40, baseType: !684)
!683 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !683, line: 36, size: 128, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !684, file: !683, line: 37, baseType: !17)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !684, file: !683, line: 38, baseType: !49, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !663, file: !664, line: 69, baseType: !689, size: 128, align: 64, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !40, line: 216, size: 128, align: 64, elements: !690)
!690 = !{!691, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !40, line: 217, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !689, file: !40, line: 218, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !692}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !663, file: !664, line: 70, baseType: !698, size: 128, offset: 640)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 128, elements: !556)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !664, line: 54, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !699, file: !664, line: 55, baseType: !67, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !699, file: !664, line: 56, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !664, line: 56, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !387, file: !388, line: 872, baseType: !706, size: 512, offset: 6016)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 512, elements: !329)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !387, file: !388, line: 873, baseType: !49, size: 128, offset: 6528)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !387, file: !388, line: 874, baseType: !49, size: 128, offset: 6656)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !387, file: !388, line: 876, baseType: !710, size: 64, offset: 6784)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !712, line: 26, size: 192, elements: !713)
!712 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !711, file: !712, line: 27, baseType: !15, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !711, file: !712, line: 28, baseType: !716, size: 128, offset: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !717, line: 43, size: 128, elements: !718)
!717 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !717, line: 44, baseType: !295)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !716, file: !717, line: 45, baseType: !49, size: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !387, file: !388, line: 879, baseType: !722, size: 64, offset: 6848)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !387, file: !388, line: 882, baseType: !722, size: 64, offset: 6912)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !387, file: !388, line: 884, baseType: !258, size: 64, offset: 6976)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !387, file: !388, line: 885, baseType: !258, size: 64, offset: 7040)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !387, file: !388, line: 890, baseType: !258, size: 64, offset: 7104)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !387, file: !388, line: 891, baseType: !728, size: 128, offset: 7168)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !388, line: 242, size: 128, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !728, file: !388, line: 244, baseType: !258, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !728, file: !388, line: 245, baseType: !258, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !388, line: 246, baseType: !295, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !387, file: !388, line: 900, baseType: !189, size: 64, offset: 7296)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !387, file: !388, line: 901, baseType: !189, size: 64, offset: 7360)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !387, file: !388, line: 904, baseType: !258, size: 64, offset: 7424)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !387, file: !388, line: 907, baseType: !258, size: 64, offset: 7488)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !387, file: !388, line: 910, baseType: !189, size: 64, offset: 7552)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !387, file: !388, line: 911, baseType: !189, size: 64, offset: 7616)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !387, file: !388, line: 914, baseType: !740, size: 640, offset: 7680)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !741, line: 123, size: 640, elements: !742)
!741 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !749, !750}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !740, file: !741, line: 124, baseType: !744, size: 576)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 576, elements: !140)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !741, line: 108, size: 192, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !745, file: !741, line: 109, baseType: !258, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !745, file: !741, line: 110, baseType: !523, size: 128, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !740, file: !741, line: 125, baseType: !15, size: 32, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !740, file: !741, line: 126, baseType: !15, size: 32, offset: 608)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !387, file: !388, line: 917, baseType: !752, size: 192, offset: 8320)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !741, line: 134, size: 192, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !752, file: !741, line: 135, baseType: !689, size: 128, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !752, file: !741, line: 136, baseType: !15, size: 32, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !387, file: !388, line: 923, baseType: !757, size: 64, offset: 8512)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !760, line: 11, flags: DIFlagFwdDecl)
!760 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!761 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !387, file: !388, line: 926, baseType: !757, size: 64, offset: 8576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !387, file: !388, line: 929, baseType: !757, size: 64, offset: 8640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !387, file: !388, line: 933, baseType: !764, size: 64, offset: 8704)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !388, line: 933, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !387, file: !388, line: 943, baseType: !767, size: 128, offset: 8768)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 16)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !387, file: !388, line: 945, baseType: !771, size: 64, offset: 8896)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !388, line: 49, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !387, file: !388, line: 956, baseType: !774, size: 64, offset: 8960)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !388, line: 45, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !387, file: !388, line: 959, baseType: !777, size: 64, offset: 9024)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !388, line: 959, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !387, file: !388, line: 962, baseType: !780, size: 64, offset: 9088)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !388, line: 66, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !387, file: !388, line: 966, baseType: !783, size: 64, offset: 9152)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !785, line: 35, flags: DIFlagFwdDecl)
!785 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!786 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !387, file: !388, line: 969, baseType: !787, size: 64, offset: 9216)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !741, line: 223, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !387, file: !388, line: 970, baseType: !790, size: 64, offset: 9280)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !388, line: 62, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !387, file: !388, line: 971, baseType: !793, size: 64, offset: 9344)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !794, line: 25, baseType: !795)
!794 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 23, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !795, file: !794, line: 24, baseType: !555, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !387, file: !388, line: 972, baseType: !793, size: 64, offset: 9408)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !387, file: !388, line: 974, baseType: !793, size: 64, offset: 9472)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !387, file: !388, line: 975, baseType: !801, size: 192, offset: 9536)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !802, line: 30, size: 192, elements: !803)
!802 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !801, file: !802, line: 31, baseType: !49, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !801, file: !802, line: 32, baseType: !793, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !387, file: !388, line: 976, baseType: !189, size: 64, offset: 9728)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !387, file: !388, line: 977, baseType: !186, size: 64, offset: 9792)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !387, file: !388, line: 978, baseType: !15, size: 32, offset: 9856)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !387, file: !388, line: 980, baseType: !692, size: 64, offset: 9920)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !387, file: !388, line: 989, baseType: !811, size: 128, offset: 9984)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !812, line: 35, size: 128, elements: !813)
!812 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !815, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !811, file: !812, line: 36, baseType: !67, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !811, file: !812, line: 37, baseType: !278, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !811, file: !812, line: 38, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !812, line: 23, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !387, file: !388, line: 992, baseType: !258, size: 64, offset: 10112)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !387, file: !388, line: 993, baseType: !258, size: 64, offset: 10176)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !387, file: !388, line: 996, baseType: !17, offset: 10240)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !387, file: !388, line: 999, baseType: !295, offset: 10240)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !387, file: !388, line: 1001, baseType: !824, size: 64, offset: 10240)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !388, line: 636, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !388, line: 637, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !387, file: !388, line: 1005, baseType: !526, size: 128, offset: 10304)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !387, file: !388, line: 1007, baseType: !386, size: 64, offset: 10432)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !387, file: !388, line: 1009, baseType: !831, size: 64, offset: 10496)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !388, line: 1009, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !387, file: !388, line: 1043, baseType: !213, size: 64, offset: 10560)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !387, file: !388, line: 1046, baseType: !835, size: 64, offset: 10624)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !388, line: 41, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !387, file: !388, line: 1050, baseType: !838, size: 64, offset: 10688)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !388, line: 42, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !387, file: !388, line: 1054, baseType: !841, size: 64, offset: 10752)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !388, line: 55, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !387, file: !388, line: 1056, baseType: !844, size: 64, offset: 10816)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !388, line: 40, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !387, file: !388, line: 1058, baseType: !847, size: 64, offset: 10880)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !388, line: 47, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !387, file: !388, line: 1061, baseType: !850, size: 64, offset: 10944)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !388, line: 43, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !387, file: !388, line: 1064, baseType: !189, size: 64, offset: 11008)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !387, file: !388, line: 1065, baseType: !854, size: 64, offset: 11072)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !802, line: 14, baseType: !856)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !802, line: 12, size: 384, elements: !857)
!857 = !{!858}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !802, line: 13, baseType: !859, size: 384)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !856, file: !802, line: 13, size: 384, elements: !860)
!860 = !{!861, !862, !863, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !859, file: !802, line: 13, baseType: !67, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !859, file: !802, line: 13, baseType: !67, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !859, file: !802, line: 13, baseType: !67, size: 32, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !859, file: !802, line: 13, baseType: !865, size: 256, offset: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !866, line: 32, size: 256, elements: !867)
!866 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !874, !887, !893, !902, !922, !927}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !865, file: !866, line: 37, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 34, size: 64, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !869, file: !866, line: 35, baseType: !651, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !869, file: !866, line: 36, baseType: !873, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !172, line: 49, baseType: !15)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !865, file: !866, line: 45, baseType: !875, size: 192)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 40, size: 192, elements: !876)
!876 = !{!877, !879, !880, !886}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !875, file: !866, line: 41, baseType: !878, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !172, line: 95, baseType: !67)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !875, file: !866, line: 42, baseType: !67, size: 32, offset: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !875, file: !866, line: 43, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !866, line: 11, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !866, line: 8, size: 64, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !882, file: !866, line: 9, baseType: !67, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !882, file: !866, line: 10, baseType: !213, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !875, file: !866, line: 44, baseType: !67, size: 32, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !865, file: !866, line: 52, baseType: !888, size: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 48, size: 128, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !888, file: !866, line: 49, baseType: !651, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !888, file: !866, line: 50, baseType: !873, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !888, file: !866, line: 51, baseType: !881, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !865, file: !866, line: 61, baseType: !894, size: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 55, size: 256, elements: !895)
!895 = !{!896, !897, !898, !899, !901}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !894, file: !866, line: 56, baseType: !651, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !894, file: !866, line: 57, baseType: !873, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !894, file: !866, line: 58, baseType: !67, size: 32, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !894, file: !866, line: 59, baseType: !900, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !172, line: 94, baseType: !173)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !894, file: !866, line: 60, baseType: !900, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !865, file: !866, line: 95, baseType: !903, size: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 64, size: 256, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !903, file: !866, line: 65, baseType: !213, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !866, line: 77, baseType: !907, size: 192, offset: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !866, line: 77, size: 192, elements: !908)
!908 = !{!909, !910, !917}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !907, file: !866, line: 82, baseType: !375, size: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !907, file: !866, line: 88, baseType: !911, size: 192)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !866, line: 84, size: 192, elements: !912)
!912 = !{!913, !915, !916}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !911, file: !866, line: 85, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, elements: !505)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !911, file: !866, line: 86, baseType: !213, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !911, file: !866, line: 87, baseType: !213, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !907, file: !866, line: 93, baseType: !918, size: 96)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !907, file: !866, line: 90, size: 96, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !918, file: !866, line: 91, baseType: !914, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !918, file: !866, line: 92, baseType: !13, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !865, file: !866, line: 101, baseType: !923, size: 128)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 98, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !923, file: !866, line: 99, baseType: !174, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !923, file: !866, line: 100, baseType: !67, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !865, file: !866, line: 108, baseType: !928, size: 128)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !865, file: !866, line: 104, size: 128, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !928, file: !866, line: 105, baseType: !213, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !928, file: !866, line: 106, baseType: !67, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !928, file: !866, line: 107, baseType: !15, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !387, file: !388, line: 1067, baseType: !934, offset: 11136)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !935, line: 12, elements: !31)
!935 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!936 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !387, file: !388, line: 1099, baseType: !937, size: 64, offset: 11136)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !388, line: 56, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !387, file: !388, line: 1103, baseType: !49, size: 128, offset: 11200)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !387, file: !388, line: 1104, baseType: !941, size: 64, offset: 11328)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !388, line: 46, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !387, file: !388, line: 1105, baseType: !33, size: 192, offset: 11392)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !387, file: !388, line: 1106, baseType: !15, size: 32, offset: 11584)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !387, file: !388, line: 1109, baseType: !946, size: 128, offset: 11648)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 128, elements: !80)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !388, line: 51, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !387, file: !388, line: 1110, baseType: !33, size: 192, offset: 11776)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !387, file: !388, line: 1111, baseType: !49, size: 128, offset: 11968)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !387, file: !388, line: 1173, baseType: !952, size: 64, offset: 12096)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !954, line: 62, size: 256, align: 256, elements: !955)
!954 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956, !957, !958, !963}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !953, file: !954, line: 75, baseType: !13, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !953, file: !954, line: 90, baseType: !13, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !953, file: !954, line: 124, baseType: !959, size: 64, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !954, line: 109, size: 64, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !959, file: !954, line: 110, baseType: !259, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !959, file: !954, line: 112, baseType: !259, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !954, line: 144, baseType: !13, size: 32, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !387, file: !388, line: 1174, baseType: !11, size: 32, offset: 12160)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !387, file: !388, line: 1179, baseType: !189, size: 64, offset: 12224)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !387, file: !388, line: 1182, baseType: !967, size: 128, offset: 12288)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !325, line: 76, size: 128, elements: !968)
!968 = !{!969, !974, !977}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !967, file: !325, line: 85, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !971, line: 7, size: 64, elements: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!972 = !{!973}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !970, file: !971, line: 12, baseType: !552, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !967, file: !325, line: 88, baseType: !975, size: 8, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !40, line: 30, baseType: !976)
!976 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !967, file: !325, line: 95, baseType: !975, size: 8, offset: 72)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !388, line: 1184, baseType: !979, size: 128, offset: 12416)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !388, line: 1184, size: 128, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !979, file: !388, line: 1185, baseType: !400, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !979, file: !388, line: 1186, baseType: !689, size: 128, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !387, file: !388, line: 1190, baseType: !984, size: 64, offset: 12544)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !388, line: 53, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !387, file: !388, line: 1192, baseType: !987, size: 128, offset: 12608)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !325, line: 64, size: 128, elements: !988)
!988 = !{!989, !1082, !1083}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !987, file: !325, line: 65, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !230, line: 68, size: 512, align: 128, elements: !992)
!992 = !{!993, !994, !1074, !1081}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !991, file: !230, line: 69, baseType: !189, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !230, line: 77, baseType: !995, size: 320, offset: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !230, line: 77, size: 320, elements: !996)
!996 = !{!997, !1006, !1011, !1039, !1047, !1053, !1066, !1073}
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 78, baseType: !998, size: 320)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 78, size: 320, elements: !999)
!999 = !{!1000, !1001, !1004, !1005}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !998, file: !230, line: 84, baseType: !49, size: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !998, file: !230, line: 86, baseType: !1002, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !230, line: 26, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !998, file: !230, line: 87, baseType: !189, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !998, file: !230, line: 94, baseType: !189, size: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 96, baseType: !1007, size: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 96, size: 64, elements: !1008)
!1008 = !{!1009}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1007, file: !230, line: 101, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !40, line: 143, baseType: !258)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 103, baseType: !1012, size: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 103, size: 320, elements: !1013)
!1013 = !{!1014, !1024, !1027, !1028}
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !230, line: 104, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !230, line: 104, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1015, file: !230, line: 105, baseType: !49, size: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1015, file: !230, line: 106, baseType: !1019, size: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1015, file: !230, line: 106, size: 128, elements: !1020)
!1020 = !{!1021, !1022, !1023}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1019, file: !230, line: 107, baseType: !990, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1019, file: !230, line: 109, baseType: !67, size: 32, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1019, file: !230, line: 110, baseType: !67, size: 32, offset: 96)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1012, file: !230, line: 117, baseType: !1025, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !230, line: 117, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1012, file: !230, line: 119, baseType: !213, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !230, line: 120, baseType: !1029, size: 64, offset: 256)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !230, line: 120, size: 64, elements: !1030)
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1029, file: !230, line: 121, baseType: !213, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1029, file: !230, line: 122, baseType: !189, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !230, line: 123, baseType: !1034, size: 32)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !230, line: 123, size: 32, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1034, file: !230, line: 124, baseType: !15, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1034, file: !230, line: 125, baseType: !15, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1034, file: !230, line: 126, baseType: !15, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 130, baseType: !1040, size: 192)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 130, size: 192, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1040, file: !230, line: 131, baseType: !189, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1040, file: !230, line: 134, baseType: !538, size: 8, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1040, file: !230, line: 135, baseType: !538, size: 8, offset: 72)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1040, file: !230, line: 136, baseType: !278, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1040, file: !230, line: 137, baseType: !15, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 139, baseType: !1048, size: 256)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 139, size: 256, elements: !1049)
!1049 = !{!1050, !1051, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1048, file: !230, line: 140, baseType: !189, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1048, file: !230, line: 141, baseType: !278, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1048, file: !230, line: 143, baseType: !49, size: 128, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 145, baseType: !1054, size: 256)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 145, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1059, !1060, !1065}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1054, file: !230, line: 146, baseType: !189, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1054, file: !230, line: 147, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !220, line: 509, baseType: !990)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1054, file: !230, line: 148, baseType: !189, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !230, line: 149, baseType: !1061, size: 64, offset: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !230, line: 149, size: 64, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1061, file: !230, line: 150, baseType: !246, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1061, file: !230, line: 151, baseType: !278, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1054, file: !230, line: 156, baseType: !17, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !995, file: !230, line: 159, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !230, line: 159, size: 128, elements: !1068)
!1068 = !{!1069, !1072}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1067, file: !230, line: 161, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !230, line: 161, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1067, file: !230, line: 162, baseType: !213, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !995, file: !230, line: 176, baseType: !689, size: 128, align: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !991, file: !230, line: 179, baseType: !1075, size: 32, offset: 384)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !230, line: 179, size: 32, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1075, file: !230, line: 184, baseType: !278, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1075, file: !230, line: 192, baseType: !15, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1075, file: !230, line: 194, baseType: !15, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1075, file: !230, line: 195, baseType: !67, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !991, file: !230, line: 199, baseType: !278, size: 32, offset: 416)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !987, file: !325, line: 67, baseType: !13, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !987, file: !325, line: 68, baseType: !13, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !387, file: !388, line: 1206, baseType: !67, size: 32, offset: 12736)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !387, file: !388, line: 1207, baseType: !67, size: 32, offset: 12768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !387, file: !388, line: 1209, baseType: !189, size: 64, offset: 12800)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !387, file: !388, line: 1219, baseType: !258, size: 64, offset: 12864)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !387, file: !388, line: 1220, baseType: !258, size: 64, offset: 12928)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !387, file: !388, line: 1317, baseType: !67, size: 32, offset: 12992)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !387, file: !388, line: 1319, baseType: !386, size: 64, offset: 13056)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !387, file: !388, line: 1322, baseType: !1092, size: 64, offset: 13120)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1094, line: 9, flags: DIFlagFwdDecl)
!1094 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !387, file: !388, line: 1326, baseType: !400, size: 32, offset: 13184)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !387, file: !388, line: 1342, baseType: !213, size: 64, offset: 13248)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !387, file: !388, line: 1343, baseType: !259, size: 64, offset: 13312)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !387, file: !388, line: 1344, baseType: !258, size: 64, offset: 13376)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !387, file: !388, line: 1345, baseType: !259, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !387, file: !388, line: 1346, baseType: !259, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !387, file: !388, line: 1347, baseType: !259, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !387, file: !388, line: 1348, baseType: !689, size: 128, align: 64, offset: 13504)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !387, file: !388, line: 1358, baseType: !1104, size: 34816, offset: 13824)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1105, line: 485, size: 34816, elements: !1106)
!1105 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1136, !1137, !1138, !1139, !1140, !1141, !1144, !1145, !1146}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1104, file: !1105, line: 487, baseType: !1108, size: 192)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 192, elements: !140)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1110, line: 16, size: 64, elements: !1111)
!1110 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1111 = !{!1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1109, file: !1110, line: 17, baseType: !370, size: 16)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1109, file: !1110, line: 18, baseType: !370, size: 16, offset: 16)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1109, file: !1110, line: 19, baseType: !370, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1109, file: !1110, line: 19, baseType: !370, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1109, file: !1110, line: 19, baseType: !370, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1109, file: !1110, line: 19, baseType: !370, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1109, file: !1110, line: 19, baseType: !370, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1109, file: !1110, line: 20, baseType: !370, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1109, file: !1110, line: 20, baseType: !370, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1109, file: !1110, line: 20, baseType: !370, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1109, file: !1110, line: 20, baseType: !370, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1109, file: !1110, line: 20, baseType: !370, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1109, file: !1110, line: 20, baseType: !370, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1104, file: !1105, line: 491, baseType: !189, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1104, file: !1105, line: 495, baseType: !181, size: 16, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1104, file: !1105, line: 496, baseType: !181, size: 16, offset: 272)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1104, file: !1105, line: 497, baseType: !181, size: 16, offset: 288)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1104, file: !1105, line: 498, baseType: !181, size: 16, offset: 304)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1104, file: !1105, line: 502, baseType: !189, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1104, file: !1105, line: 503, baseType: !189, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1104, file: !1105, line: 514, baseType: !1133, size: 256, offset: 448)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, size: 256, elements: !329)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1105, line: 483, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1104, file: !1105, line: 516, baseType: !189, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1104, file: !1105, line: 518, baseType: !189, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1104, file: !1105, line: 520, baseType: !189, size: 64, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1104, file: !1105, line: 521, baseType: !189, size: 64, offset: 896)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1104, file: !1105, line: 522, baseType: !189, size: 64, offset: 960)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1104, file: !1105, line: 528, baseType: !1142, size: 64, offset: 1024)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1105, line: 10, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1104, file: !1105, line: 535, baseType: !189, size: 64, offset: 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1104, file: !1105, line: 537, baseType: !15, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1104, file: !1105, line: 540, baseType: !1147, size: 33280, offset: 1536)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1148, line: 317, size: 33280, elements: !1149)
!1148 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1147, file: !1148, line: 330, baseType: !15, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1147, file: !1148, line: 337, baseType: !189, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1147, file: !1148, line: 348, baseType: !1153, size: 32768, offset: 512)
!1153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1148, line: 304, size: 32768, elements: !1154)
!1154 = !{!1155, !1168, !1207, !1257, !1274}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1153, file: !1148, line: 305, baseType: !1156, size: 896)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1148, line: 12, size: 896, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1167}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1156, file: !1148, line: 13, baseType: !11, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1156, file: !1148, line: 14, baseType: !11, size: 32, offset: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1156, file: !1148, line: 15, baseType: !11, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1156, file: !1148, line: 16, baseType: !11, size: 32, offset: 96)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1156, file: !1148, line: 17, baseType: !11, size: 32, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1156, file: !1148, line: 18, baseType: !11, size: 32, offset: 160)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1156, file: !1148, line: 19, baseType: !11, size: 32, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1156, file: !1148, line: 22, baseType: !1166, size: 640, offset: 224)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 640, elements: !91)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1156, file: !1148, line: 25, baseType: !11, size: 32, offset: 864)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1153, file: !1148, line: 306, baseType: !1169, size: 4096, align: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1148, line: 34, size: 4096, align: 128, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1190, !1191, !1192, !1196, !1198, !1202}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1169, file: !1148, line: 35, baseType: !370, size: 16)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1169, file: !1148, line: 36, baseType: !370, size: 16, offset: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1169, file: !1148, line: 37, baseType: !370, size: 16, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1169, file: !1148, line: 38, baseType: !370, size: 16, offset: 48)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1148, line: 39, baseType: !1176, size: 128, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1148, line: 39, size: 128, elements: !1177)
!1177 = !{!1178, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1148, line: 40, baseType: !1179, size: 128)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1148, line: 40, size: 128, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1179, file: !1148, line: 41, baseType: !258, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1179, file: !1148, line: 42, baseType: !258, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1148, line: 44, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1148, line: 44, size: 128, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1184, file: !1148, line: 45, baseType: !11, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1184, file: !1148, line: 46, baseType: !11, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1184, file: !1148, line: 47, baseType: !11, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1184, file: !1148, line: 48, baseType: !11, size: 32, offset: 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1169, file: !1148, line: 51, baseType: !11, size: 32, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1169, file: !1148, line: 52, baseType: !11, size: 32, offset: 224)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1169, file: !1148, line: 55, baseType: !1193, size: 1024, offset: 256)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1169, file: !1148, line: 58, baseType: !1197, size: 2048, offset: 1280)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !144)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1169, file: !1148, line: 60, baseType: !1199, size: 384, offset: 3328)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 384, elements: !1200)
!1200 = !{!1201}
!1201 = !DISubrange(count: 12)
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !1148, line: 62, baseType: !1203, size: 384, offset: 3712)
!1203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !1148, line: 62, size: 384, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1203, file: !1148, line: 63, baseType: !1199, size: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1203, file: !1148, line: 64, baseType: !1199, size: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1153, file: !1148, line: 307, baseType: !1208, size: 1088)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1148, line: 79, size: 1088, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1256}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1208, file: !1148, line: 80, baseType: !11, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1208, file: !1148, line: 81, baseType: !11, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1208, file: !1148, line: 82, baseType: !11, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1208, file: !1148, line: 83, baseType: !11, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1208, file: !1148, line: 84, baseType: !11, size: 32, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1208, file: !1148, line: 85, baseType: !11, size: 32, offset: 160)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1208, file: !1148, line: 86, baseType: !11, size: 32, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1208, file: !1148, line: 88, baseType: !1166, size: 640, offset: 224)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1208, file: !1148, line: 89, baseType: !536, size: 8, offset: 864)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1208, file: !1148, line: 90, baseType: !536, size: 8, offset: 872)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1208, file: !1148, line: 91, baseType: !536, size: 8, offset: 880)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1208, file: !1148, line: 92, baseType: !536, size: 8, offset: 888)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1208, file: !1148, line: 93, baseType: !536, size: 8, offset: 896)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1208, file: !1148, line: 94, baseType: !536, size: 8, offset: 904)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1208, file: !1148, line: 95, baseType: !1225, size: 64, offset: 960)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1227, line: 11, size: 128, elements: !1228)
!1227 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1226, file: !1227, line: 12, baseType: !174, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1226, file: !1227, line: 13, baseType: !1231, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1233, line: 56, size: 1344, elements: !1234)
!1233 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1232, file: !1233, line: 61, baseType: !189, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1232, file: !1233, line: 62, baseType: !189, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1232, file: !1233, line: 63, baseType: !189, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1232, file: !1233, line: 64, baseType: !189, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1232, file: !1233, line: 65, baseType: !189, size: 64, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1232, file: !1233, line: 66, baseType: !189, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1232, file: !1233, line: 68, baseType: !189, size: 64, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1232, file: !1233, line: 69, baseType: !189, size: 64, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1232, file: !1233, line: 70, baseType: !189, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1232, file: !1233, line: 71, baseType: !189, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1232, file: !1233, line: 72, baseType: !189, size: 64, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1232, file: !1233, line: 73, baseType: !189, size: 64, offset: 704)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1232, file: !1233, line: 74, baseType: !189, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1232, file: !1233, line: 75, baseType: !189, size: 64, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1232, file: !1233, line: 76, baseType: !189, size: 64, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1232, file: !1233, line: 81, baseType: !189, size: 64, offset: 960)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1232, file: !1233, line: 83, baseType: !189, size: 64, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1232, file: !1233, line: 84, baseType: !189, size: 64, offset: 1088)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1232, file: !1233, line: 85, baseType: !189, size: 64, offset: 1152)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1232, file: !1233, line: 86, baseType: !189, size: 64, offset: 1216)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1232, file: !1233, line: 87, baseType: !189, size: 64, offset: 1280)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1208, file: !1148, line: 96, baseType: !11, size: 32, offset: 1024)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1153, file: !1148, line: 308, baseType: !1258, size: 4608, align: 512)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1148, line: 289, size: 4608, align: 512, elements: !1259)
!1259 = !{!1260, !1261, !1270}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1258, file: !1148, line: 290, baseType: !1169, size: 4096, align: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1258, file: !1148, line: 291, baseType: !1262, size: 512, offset: 4096)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1148, line: 268, size: 512, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1262, file: !1148, line: 269, baseType: !258, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1262, file: !1148, line: 270, baseType: !258, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1262, file: !1148, line: 271, baseType: !1267, size: 384, offset: 128)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 384, elements: !1268)
!1268 = !{!1269}
!1269 = !DISubrange(count: 6)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1258, file: !1148, line: 292, baseType: !1271, offset: 4608)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 0)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1153, file: !1148, line: 309, baseType: !1275, size: 32768)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 32768, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 4096)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !230, line: 378, baseType: !1279, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !379, file: !230, line: 384, baseType: !711, size: 192, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !250, file: !230, line: 500, baseType: !17, offset: 6656)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !250, file: !230, line: 501, baseType: !1283, size: 64, offset: 6656)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !230, line: 387, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !250, file: !230, line: 516, baseType: !1286, size: 64, offset: 6720)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1288, line: 18, flags: DIFlagFwdDecl)
!1288 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !250, file: !230, line: 519, baseType: !218, size: 64, offset: 6784)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !250, file: !230, line: 521, baseType: !1291, size: 64, offset: 6848)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !230, line: 521, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !250, file: !230, line: 545, baseType: !278, size: 32, offset: 6912)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !250, file: !230, line: 548, baseType: !975, size: 8, offset: 6944)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !250, file: !230, line: 550, baseType: !1296, offset: 6952)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1297, line: 142, elements: !31)
!1297 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !250, file: !230, line: 554, baseType: !1299, size: 256, offset: 6976)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1300, line: 102, size: 256, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302, !1303, !1304}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1299, file: !1300, line: 103, baseType: !37, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1299, file: !1300, line: 104, baseType: !49, size: 128, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1299, file: !1300, line: 105, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1300, line: 21, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !250, file: !230, line: 557, baseType: !11, size: 32, offset: 7232)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !247, file: !230, line: 565, baseType: !1312, offset: 7296)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: -1)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !229, file: !230, line: 333, baseType: !1316, size: 64, offset: 576)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !220, line: 284, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !220, line: 284, size: 64, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1317, file: !220, line: 284, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !276, line: 19, baseType: !189)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !229, file: !230, line: 334, baseType: !189, size: 64, offset: 640)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !229, file: !230, line: 343, baseType: !1323, size: 256, offset: 704)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !230, line: 340, size: 256, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1323, file: !230, line: 341, baseType: !237, size: 192, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1323, file: !230, line: 342, baseType: !189, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !229, file: !230, line: 351, baseType: !49, size: 128, offset: 960)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !229, file: !230, line: 353, baseType: !1329, size: 64, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !230, line: 353, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !229, file: !230, line: 356, baseType: !1332, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !230, line: 356, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !229, file: !230, line: 359, baseType: !189, size: 64, offset: 1216)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !229, file: !230, line: 361, baseType: !218, size: 64, offset: 1280)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !229, file: !230, line: 362, baseType: !213, size: 64, offset: 1344)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !229, file: !230, line: 365, baseType: !37, size: 64, offset: 1408)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !229, file: !230, line: 373, baseType: !1340, offset: 1472)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !230, line: 296, elements: !31)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !196, file: !164, line: 90, baseType: !191, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !196, file: !164, line: 91, baseType: !1343, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !154, file: !99, line: 143, baseType: !1345, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1348, !106}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1351, line: 39, size: 384, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !{!1353, !1359, !1363, !1367, !1375, !1379}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1350, file: !1351, line: 40, baseType: !1354, size: 32)
!1354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1351, line: 26, baseType: !15, size: 32, elements: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!1357 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!1358 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1350, file: !1351, line: 41, baseType: !1360, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!975}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1350, file: !1351, line: 42, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!213}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1350, file: !1351, line: 43, baseType: !1368, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!1371, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1351, line: 19, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1350, file: !1351, line: 44, baseType: !1376, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!1371}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1350, file: !1351, line: 45, baseType: !1380, size: 64, offset: 320)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !213}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !154, file: !99, line: 144, baseType: !1384, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!1371, !106}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !154, file: !99, line: 145, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !106, !1391, !1397}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1288, line: 23, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 21, size: 32, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1393, file: !1288, line: 22, baseType: !1396, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !40, line: 32, baseType: !873)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1288, line: 28, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1288, line: 26, size: 32, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1399, file: !1288, line: 27, baseType: !1402, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !40, line: 33, baseType: !1403)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !172, line: 50, baseType: !15)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !98, file: !99, line: 70, baseType: !1405, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1407, line: 123, size: 1024, elements: !1408)
!1407 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1551, !1552, !1553, !1554, !1555}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !1407, line: 124, baseType: !278, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1406, file: !1407, line: 125, baseType: !278, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1406, file: !1407, line: 135, baseType: !1405, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1406, file: !1407, line: 136, baseType: !102, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1406, file: !1407, line: 138, baseType: !237, size: 192, align: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1406, file: !1407, line: 140, baseType: !1371, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1406, file: !1407, line: 141, baseType: !15, size: 32, offset: 448)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1407, line: 142, baseType: !1417, size: 256, offset: 512)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1407, line: 142, size: 256, elements: !1418)
!1418 = !{!1419, !1474, !1478}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1417, file: !1407, line: 143, baseType: !1420, size: 192)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1407, line: 91, size: 192, elements: !1421)
!1421 = !{!1422, !1423, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1420, file: !1407, line: 92, baseType: !189, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1420, file: !1407, line: 94, baseType: !254, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1420, file: !1407, line: 100, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1407, line: 180, size: 704, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1444, !1445, !1446, !1472, !1473}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1426, file: !1407, line: 182, baseType: !1405, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !1407, line: 183, baseType: !15, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1426, file: !1407, line: 186, baseType: !1431, size: 192, offset: 128)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1432, line: 19, size: 192, elements: !1433)
!1432 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1442, !1443}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1431, file: !1432, line: 20, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1436, line: 292, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1439, !1441}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1435, file: !1436, line: 293, baseType: !17)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1435, file: !1436, line: 295, baseType: !1440, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !40, line: 148, baseType: !15)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1435, file: !1436, line: 296, baseType: !213, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1431, file: !1432, line: 21, baseType: !15, size: 32, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1431, file: !1432, line: 22, baseType: !15, size: 32, offset: 160)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1426, file: !1407, line: 187, baseType: !11, size: 32, offset: 320)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1426, file: !1407, line: 188, baseType: !11, size: 32, offset: 352)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1426, file: !1407, line: 189, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1407, line: 168, size: 320, elements: !1449)
!1449 = !{!1450, !1456, !1460, !1464, !1468}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1448, file: !1407, line: 169, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!67, !1454, !1425}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !220, line: 539, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1448, file: !1407, line: 171, baseType: !1457, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!67, !1405, !102, !180}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1448, file: !1407, line: 173, baseType: !1461, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!67, !1405}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1448, file: !1407, line: 174, baseType: !1465, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!67, !1405, !1405, !102}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1448, file: !1407, line: 176, baseType: !1469, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!67, !1454, !1405, !1425}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1426, file: !1407, line: 192, baseType: !49, size: 128, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1426, file: !1407, line: 194, baseType: !682, size: 128, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1417, file: !1407, line: 144, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1407, line: 103, size: 64, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1475, file: !1407, line: 104, baseType: !1405, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1417, file: !1407, line: 145, baseType: !1479, size: 256)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1407, line: 107, size: 256, elements: !1480)
!1480 = !{!1481, !1546, !1549, !1550}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1479, file: !1407, line: 108, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1407, line: 217, size: 768, elements: !1485)
!1485 = !{!1486, !1506, !1510, !1514, !1519, !1523, !1527, !1531, !1532, !1533, !1534, !1542}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1484, file: !1407, line: 222, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!67, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1407, line: 197, size: 1088, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1491, file: !1407, line: 199, baseType: !1405, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1491, file: !1407, line: 200, baseType: !218, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1491, file: !1407, line: 201, baseType: !1454, size: 64, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1491, file: !1407, line: 202, baseType: !213, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1491, file: !1407, line: 205, baseType: !33, size: 192, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1491, file: !1407, line: 206, baseType: !33, size: 192, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1491, file: !1407, line: 207, baseType: !67, size: 32, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1491, file: !1407, line: 208, baseType: !49, size: 128, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1491, file: !1407, line: 209, baseType: !139, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1491, file: !1407, line: 211, baseType: !186, size: 64, offset: 896)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1491, file: !1407, line: 212, baseType: !975, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1491, file: !1407, line: 213, baseType: !975, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1491, file: !1407, line: 214, baseType: !1332, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1484, file: !1407, line: 223, baseType: !1507, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !1490}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1484, file: !1407, line: 236, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!67, !1454, !213}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1484, file: !1407, line: 238, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!213, !1454, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1484, file: !1407, line: 239, baseType: !1520, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!213, !1454, !213, !1518}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1484, file: !1407, line: 240, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1454, !213}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1484, file: !1407, line: 242, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!170, !1490, !139, !186, !221}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1484, file: !1407, line: 252, baseType: !186, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1484, file: !1407, line: 259, baseType: !975, size: 8, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1484, file: !1407, line: 260, baseType: !1528, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1484, file: !1407, line: 263, baseType: !1535, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538, !1490, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1539, line: 52, baseType: !15)
!1539 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1407, line: 27, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1484, file: !1407, line: 266, baseType: !1543, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!67, !1490, !228}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1479, file: !1407, line: 109, baseType: !1547, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1407, line: 31, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1479, file: !1407, line: 110, baseType: !221, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1479, file: !1407, line: 111, baseType: !1405, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1406, file: !1407, line: 148, baseType: !213, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1406, file: !1407, line: 154, baseType: !258, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1406, file: !1407, line: 156, baseType: !181, size: 16, offset: 896)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1406, file: !1407, line: 157, baseType: !180, size: 16, offset: 912)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1406, file: !1407, line: 158, baseType: !1556, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1407, line: 32, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !98, file: !99, line: 71, baseType: !1559, size: 32, offset: 448)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1560, line: 19, size: 32, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1559, file: !1560, line: 20, baseType: !400, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !98, file: !99, line: 75, baseType: !15, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !98, file: !99, line: 76, baseType: !15, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !98, file: !99, line: 77, baseType: !15, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !98, file: !99, line: 78, baseType: !15, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !98, file: !99, line: 79, baseType: !15, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 463, baseType: !1569, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !94, file: !95, line: 465, baseType: !1571, size: 64, offset: 576)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !95, line: 36, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !94, file: !95, line: 467, baseType: !102, size: 64, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 468, baseType: !1575, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !95, line: 87, size: 384, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1585, !1590, !1594}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1577, file: !95, line: 88, baseType: !102, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1577, file: !95, line: 89, baseType: !193, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1577, file: !95, line: 90, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!67, !1569, !134}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1577, file: !95, line: 91, baseType: !1586, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!139, !1569, !1589, !1391, !1397}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1577, file: !95, line: 93, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !1569}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1577, file: !95, line: 95, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !1598, line: 278, size: 1472, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1597, file: !1598, line: 279, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!67, !1569}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1597, file: !1598, line: 280, baseType: !1591, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1597, file: !1598, line: 281, baseType: !1601, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1597, file: !1598, line: 282, baseType: !1601, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1597, file: !1598, line: 283, baseType: !1601, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1597, file: !1598, line: 284, baseType: !1601, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1597, file: !1598, line: 285, baseType: !1601, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1597, file: !1598, line: 286, baseType: !1601, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1597, file: !1598, line: 287, baseType: !1601, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1597, file: !1598, line: 288, baseType: !1601, size: 64, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1597, file: !1598, line: 289, baseType: !1601, size: 64, offset: 640)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1597, file: !1598, line: 290, baseType: !1601, size: 64, offset: 704)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1597, file: !1598, line: 291, baseType: !1601, size: 64, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1597, file: !1598, line: 292, baseType: !1601, size: 64, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1597, file: !1598, line: 293, baseType: !1601, size: 64, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1597, file: !1598, line: 294, baseType: !1601, size: 64, offset: 960)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1597, file: !1598, line: 295, baseType: !1601, size: 64, offset: 1024)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1597, file: !1598, line: 296, baseType: !1601, size: 64, offset: 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1597, file: !1598, line: 297, baseType: !1601, size: 64, offset: 1152)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1597, file: !1598, line: 298, baseType: !1601, size: 64, offset: 1216)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1597, file: !1598, line: 299, baseType: !1601, size: 64, offset: 1280)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1597, file: !1598, line: 300, baseType: !1601, size: 64, offset: 1344)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1597, file: !1598, line: 301, baseType: !1601, size: 64, offset: 1408)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !94, file: !95, line: 470, baseType: !1627, size: 64, offset: 768)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1629, line: 82, size: 1408, elements: !1630)
!1629 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636, !1637, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1722, !1725, !1728}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1628, file: !1629, line: 83, baseType: !102, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1628, file: !1629, line: 84, baseType: !102, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1628, file: !1629, line: 85, baseType: !1569, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1628, file: !1629, line: 86, baseType: !193, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1628, file: !1629, line: 87, baseType: !193, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1628, file: !1629, line: 88, baseType: !193, size: 64, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1628, file: !1629, line: 90, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!67, !1569, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !1643, line: 95, size: 1152, elements: !1644)
!1643 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!1644 = !{!1645, !1646, !1647, !1651, !1652, !1653, !1659, !1673, !1686, !1687, !1688, !1689, !1690, !1698, !1699, !1700, !1701, !1702, !1703}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1642, file: !1643, line: 96, baseType: !102, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1642, file: !1643, line: 97, baseType: !1627, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1642, file: !1643, line: 99, baseType: !1648, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1650, line: 76, flags: DIFlagFwdDecl)
!1650 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1642, file: !1643, line: 100, baseType: !102, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1642, file: !1643, line: 102, baseType: !975, size: 8, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1642, file: !1643, line: 103, baseType: !1654, size: 32, offset: 288)
!1654 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !1643, line: 44, baseType: !15, size: 32, elements: !1655)
!1655 = !{!1656, !1657, !1658}
!1656 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!1657 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!1658 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1642, file: !1643, line: 105, baseType: !1660, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1663, line: 262, size: 1600, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1667, !1668, !1672}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1662, file: !1663, line: 263, baseType: !1666, size: 256)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !1194)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1662, file: !1663, line: 264, baseType: !1666, size: 256, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1662, file: !1663, line: 265, baseType: !1669, size: 1024, offset: 512)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1024, elements: !1670)
!1670 = !{!1671}
!1671 = !DISubrange(count: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1662, file: !1663, line: 266, baseType: !1371, size: 64, offset: 1536)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1642, file: !1643, line: 106, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1663, line: 210, size: 256, elements: !1677)
!1677 = !{!1678, !1682, !1684, !1685}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1676, file: !1663, line: 211, baseType: !1679, size: 72)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 72, elements: !1680)
!1680 = !{!1681}
!1681 = !DISubrange(count: 9)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1676, file: !1663, line: 212, baseType: !1683, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1663, line: 14, baseType: !189)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1676, file: !1663, line: 213, baseType: !13, size: 32, offset: 192)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1676, file: !1663, line: 214, baseType: !13, size: 32, offset: 224)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1642, file: !1643, line: 108, baseType: !1601, size: 64, offset: 448)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1642, file: !1643, line: 109, baseType: !1591, size: 64, offset: 512)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1642, file: !1643, line: 110, baseType: !1601, size: 64, offset: 576)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1642, file: !1643, line: 111, baseType: !1591, size: 64, offset: 640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1642, file: !1643, line: 112, baseType: !1691, size: 64, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!67, !1569, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !1598, line: 52, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !1598, line: 50, size: 32, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1695, file: !1598, line: 51, baseType: !67, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1642, file: !1643, line: 113, baseType: !1601, size: 64, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1642, file: !1643, line: 114, baseType: !193, size: 64, offset: 832)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1642, file: !1643, line: 115, baseType: !193, size: 64, offset: 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1642, file: !1643, line: 117, baseType: !1595, size: 64, offset: 960)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1642, file: !1643, line: 118, baseType: !1591, size: 64, offset: 1024)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1642, file: !1643, line: 120, baseType: !1704, size: 64, offset: 1088)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !1643, line: 120, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1628, file: !1629, line: 91, baseType: !1582, size: 64, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1628, file: !1629, line: 92, baseType: !1601, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1628, file: !1629, line: 93, baseType: !1591, size: 64, offset: 576)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1628, file: !1629, line: 94, baseType: !1601, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1628, file: !1629, line: 95, baseType: !1591, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1628, file: !1629, line: 97, baseType: !1601, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1628, file: !1629, line: 98, baseType: !1601, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1628, file: !1629, line: 100, baseType: !1691, size: 64, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1628, file: !1629, line: 101, baseType: !1601, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1628, file: !1629, line: 103, baseType: !1601, size: 64, offset: 1024)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1628, file: !1629, line: 105, baseType: !1601, size: 64, offset: 1088)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1628, file: !1629, line: 107, baseType: !1595, size: 64, offset: 1152)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1628, file: !1629, line: 109, baseType: !1719, size: 64, offset: 1216)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1629, line: 109, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1628, file: !1629, line: 111, baseType: !1723, size: 64, offset: 1280)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1629, line: 111, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1628, file: !1629, line: 112, baseType: !1726, offset: 1344)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1727, line: 187, elements: !31)
!1727 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1628, file: !1629, line: 114, baseType: !975, size: 8, offset: 1344)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !94, file: !95, line: 471, baseType: !1641, size: 64, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !94, file: !95, line: 473, baseType: !213, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !94, file: !95, line: 475, baseType: !213, size: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !94, file: !95, line: 480, baseType: !33, size: 192, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !94, file: !95, line: 484, baseType: !1734, size: 576, offset: 1216)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !95, line: 361, size: 576, elements: !1735)
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1734, file: !95, line: 362, baseType: !49, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1734, file: !95, line: 363, baseType: !49, size: 128, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1734, file: !95, line: 364, baseType: !49, size: 128, offset: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1734, file: !95, line: 365, baseType: !49, size: 128, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1734, file: !95, line: 366, baseType: !975, size: 8, offset: 512)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1734, file: !95, line: 367, baseType: !1742, size: 32, offset: 544)
!1742 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !95, line: 343, baseType: !15, size: 32, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!1745 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!1746 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!1747 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !94, file: !95, line: 485, baseType: !1749, size: 2304, offset: 1792)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !1598, line: 565, size: 2304, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1836, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1859, !1863}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1749, file: !1598, line: 566, baseType: !1694, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1749, file: !1598, line: 567, baseType: !15, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1749, file: !1598, line: 568, baseType: !15, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1749, file: !1598, line: 569, baseType: !975, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1749, file: !1598, line: 570, baseType: !975, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1749, file: !1598, line: 571, baseType: !975, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1749, file: !1598, line: 572, baseType: !975, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1749, file: !1598, line: 573, baseType: !975, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1749, file: !1598, line: 574, baseType: !975, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1749, file: !1598, line: 575, baseType: !975, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1749, file: !1598, line: 576, baseType: !975, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1749, file: !1598, line: 577, baseType: !11, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1749, file: !1598, line: 578, baseType: !17, offset: 96)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1749, file: !1598, line: 580, baseType: !49, size: 128, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1749, file: !1598, line: 581, baseType: !711, size: 192, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1749, file: !1598, line: 582, baseType: !1767, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1769, line: 43, size: 1472, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1778, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !1769, line: 44, baseType: !102, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1768, file: !1769, line: 45, baseType: !67, size: 32, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1768, file: !1769, line: 46, baseType: !49, size: 128, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1768, file: !1769, line: 47, baseType: !17, offset: 256)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1768, file: !1769, line: 48, baseType: !1776, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1598, line: 533, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1768, file: !1769, line: 49, baseType: !1779, size: 320, offset: 320)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1780, line: 11, size: 320, elements: !1781)
!1780 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !{!1782, !1783, !1784, !1789}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1779, file: !1780, line: 16, baseType: !675, size: 128)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1779, file: !1780, line: 17, baseType: !189, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1779, file: !1780, line: 18, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1788}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1779, file: !1780, line: 19, baseType: !11, size: 32, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1768, file: !1769, line: 50, baseType: !189, size: 64, offset: 640)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1768, file: !1769, line: 51, baseType: !471, size: 64, offset: 704)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1768, file: !1769, line: 52, baseType: !471, size: 64, offset: 768)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1768, file: !1769, line: 53, baseType: !471, size: 64, offset: 832)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1768, file: !1769, line: 54, baseType: !471, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1768, file: !1769, line: 55, baseType: !471, size: 64, offset: 960)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1768, file: !1769, line: 56, baseType: !189, size: 64, offset: 1024)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1768, file: !1769, line: 57, baseType: !189, size: 64, offset: 1088)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1768, file: !1769, line: 58, baseType: !189, size: 64, offset: 1152)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1768, file: !1769, line: 59, baseType: !189, size: 64, offset: 1216)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1768, file: !1769, line: 60, baseType: !189, size: 64, offset: 1280)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1768, file: !1769, line: 61, baseType: !1569, size: 64, offset: 1344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1768, file: !1769, line: 62, baseType: !975, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1768, file: !1769, line: 63, baseType: !975, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1749, file: !1598, line: 583, baseType: !975, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1749, file: !1598, line: 584, baseType: !975, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1749, file: !1598, line: 585, baseType: !975, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1749, file: !1598, line: 586, baseType: !15, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1749, file: !1598, line: 587, baseType: !15, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1749, file: !1598, line: 592, baseType: !462, size: 512, offset: 576)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1749, file: !1598, line: 593, baseType: !258, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1749, file: !1598, line: 594, baseType: !1299, size: 256, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1749, file: !1598, line: 595, baseType: !682, size: 128, offset: 1408)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1749, file: !1598, line: 596, baseType: !1776, size: 64, offset: 1536)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1749, file: !1598, line: 597, baseType: !278, size: 32, offset: 1600)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1749, file: !1598, line: 598, baseType: !278, size: 32, offset: 1632)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1749, file: !1598, line: 599, baseType: !15, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1749, file: !1598, line: 600, baseType: !15, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1749, file: !1598, line: 601, baseType: !15, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1749, file: !1598, line: 602, baseType: !15, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1749, file: !1598, line: 603, baseType: !15, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1749, file: !1598, line: 604, baseType: !975, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1749, file: !1598, line: 605, baseType: !15, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1749, file: !1598, line: 606, baseType: !15, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1749, file: !1598, line: 607, baseType: !15, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1749, file: !1598, line: 608, baseType: !15, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1749, file: !1598, line: 609, baseType: !15, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1749, file: !1598, line: 610, baseType: !15, size: 32, offset: 1696)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1749, file: !1598, line: 611, baseType: !1829, size: 32, offset: 1728)
!1829 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !1598, line: 524, baseType: !15, size: 32, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835}
!1831 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!1832 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!1833 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!1834 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!1835 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1749, file: !1598, line: 612, baseType: !1837, size: 32, offset: 1760)
!1837 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !1598, line: 502, baseType: !15, size: 32, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842}
!1839 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!1840 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!1841 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!1842 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1749, file: !1598, line: 613, baseType: !67, size: 32, offset: 1792)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1749, file: !1598, line: 614, baseType: !67, size: 32, offset: 1824)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1749, file: !1598, line: 615, baseType: !258, size: 64, offset: 1856)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1749, file: !1598, line: 616, baseType: !258, size: 64, offset: 1920)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1749, file: !1598, line: 617, baseType: !258, size: 64, offset: 1984)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1749, file: !1598, line: 618, baseType: !258, size: 64, offset: 2048)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1749, file: !1598, line: 620, baseType: !1850, size: 64, offset: 2112)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !1598, line: 536, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1851, file: !1598, line: 537, baseType: !17)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1851, file: !1598, line: 538, baseType: !15, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1851, file: !1598, line: 540, baseType: !49, size: 128, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1851, file: !1598, line: 543, baseType: !1857, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1598, line: 534, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1749, file: !1598, line: 621, baseType: !1860, size: 64, offset: 2176)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{null, !1569, !635}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1749, file: !1598, line: 622, baseType: !1864, size: 64, offset: 2240)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !1598, line: 622, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !94, file: !95, line: 486, baseType: !1867, size: 64, offset: 4096)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !1598, line: 642, size: 1792, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1876, !1877, !1878}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1868, file: !1598, line: 643, baseType: !1597, size: 1472)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1868, file: !1598, line: 644, baseType: !1601, size: 64, offset: 1472)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1868, file: !1598, line: 645, baseType: !1873, size: 64, offset: 1536)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1569, !975}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1868, file: !1598, line: 646, baseType: !1601, size: 64, offset: 1600)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1868, file: !1598, line: 647, baseType: !1591, size: 64, offset: 1664)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1868, file: !1598, line: 648, baseType: !1591, size: 64, offset: 1728)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !94, file: !95, line: 493, baseType: !1880, size: 64, offset: 4160)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !95, line: 493, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !94, file: !95, line: 499, baseType: !49, size: 128, offset: 4224)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !94, file: !95, line: 502, baseType: !1884, size: 64, offset: 4352)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1886)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !95, line: 502, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !94, file: !95, line: 504, baseType: !1888, size: 64, offset: 4416)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !94, file: !95, line: 505, baseType: !258, size: 64, offset: 4480)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !94, file: !95, line: 510, baseType: !258, size: 64, offset: 4544)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !94, file: !95, line: 511, baseType: !1892, size: 64, offset: 4608)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !95, line: 511, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !94, file: !95, line: 513, baseType: !1896, size: 64, offset: 4672)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !95, line: 288, size: 128, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1897, file: !95, line: 293, baseType: !15, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1897, file: !95, line: 294, baseType: !189, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !94, file: !95, line: 515, baseType: !49, size: 128, offset: 4736)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !94, file: !95, line: 526, baseType: !1903, offset: 4864)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1904, line: 5, elements: !31)
!1904 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !94, file: !95, line: 528, baseType: !1906, size: 64, offset: 4864)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1908, line: 51, size: 1344, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1911, !1913, !1914, !2004, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1907, file: !1908, line: 52, baseType: !102, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1907, file: !1908, line: 53, baseType: !1912, size: 32, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1908, line: 28, baseType: !11)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1907, file: !1908, line: 54, baseType: !102, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1907, file: !1908, line: 55, baseType: !1915, size: 192, offset: 192)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1916, line: 17, size: 192, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !{!1918, !1920, !2003}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1915, file: !1916, line: 18, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1915, file: !1916, line: 19, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1916, line: 110, size: 1152, elements: !1924)
!1924 = !{!1925, !1929, !1933, !1939, !1945, !1949, !1953, !1958, !1962, !1963, !1967, !1971, !1975, !1986, !1987, !1988, !1989, !1999}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1923, file: !1916, line: 111, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!1919, !1919}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1923, file: !1916, line: 112, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1919}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1923, file: !1916, line: 113, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!975, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1923, file: !1916, line: 114, baseType: !1940, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1371, !1937, !1943}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1923, file: !1916, line: 116, baseType: !1946, size: 64, offset: 256)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!975, !1937, !102}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1923, file: !1916, line: 118, baseType: !1950, size: 64, offset: 320)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!67, !1937, !102, !15, !213, !186}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1923, file: !1916, line: 123, baseType: !1954, size: 64, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!67, !1937, !102, !1957, !186}
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1923, file: !1916, line: 126, baseType: !1959, size: 64, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!102, !1937}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1923, file: !1916, line: 127, baseType: !1959, size: 64, offset: 512)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1923, file: !1916, line: 128, baseType: !1964, size: 64, offset: 576)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1919, !1937}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1923, file: !1916, line: 130, baseType: !1968, size: 64, offset: 640)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1919, !1937, !1919}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1923, file: !1916, line: 133, baseType: !1972, size: 64, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1919, !1937, !102}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1923, file: !1916, line: 135, baseType: !1976, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!67, !1937, !102, !102, !15, !15, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1916, line: 43, size: 640, elements: !1981)
!1981 = !{!1982, !1983, !1984}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1980, file: !1916, line: 44, baseType: !1919, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1980, file: !1916, line: 45, baseType: !15, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1980, file: !1916, line: 46, baseType: !1985, size: 512, offset: 128)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 512, elements: !505)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1923, file: !1916, line: 140, baseType: !1968, size: 64, offset: 832)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1923, file: !1916, line: 143, baseType: !1964, size: 64, offset: 896)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1923, file: !1916, line: 145, baseType: !1926, size: 64, offset: 960)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1923, file: !1916, line: 146, baseType: !1990, size: 64, offset: 1024)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!67, !1937, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1916, line: 29, size: 128, elements: !1995)
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1994, file: !1916, line: 30, baseType: !15, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1994, file: !1916, line: 31, baseType: !15, size: 32, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1994, file: !1916, line: 32, baseType: !1937, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1923, file: !1916, line: 148, baseType: !2000, size: 64, offset: 1088)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!67, !1937, !1569}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1915, file: !1916, line: 20, baseType: !1569, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1907, file: !1908, line: 57, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1908, line: 31, size: 704, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2011, !2012}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2006, file: !1908, line: 32, baseType: !139, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2006, file: !1908, line: 33, baseType: !67, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2006, file: !1908, line: 34, baseType: !213, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2006, file: !1908, line: 35, baseType: !2005, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2006, file: !1908, line: 43, baseType: !208, size: 448, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1907, file: !1908, line: 58, baseType: !2005, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1907, file: !1908, line: 59, baseType: !1906, size: 64, offset: 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1907, file: !1908, line: 60, baseType: !1906, size: 64, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1907, file: !1908, line: 61, baseType: !1906, size: 64, offset: 640)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1907, file: !1908, line: 63, baseType: !98, size: 512, offset: 704)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1907, file: !1908, line: 65, baseType: !189, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1907, file: !1908, line: 66, baseType: !213, size: 64, offset: 1280)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !94, file: !95, line: 529, baseType: !1919, size: 64, offset: 4928)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !94, file: !95, line: 534, baseType: !2022, size: 32, offset: 4992)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !40, line: 16, baseType: !2023)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !40, line: 13, baseType: !11)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !94, file: !95, line: 535, baseType: !11, size: 32, offset: 5024)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !94, file: !95, line: 537, baseType: !17, offset: 5056)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !94, file: !95, line: 538, baseType: !49, size: 128, offset: 5056)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !94, file: !95, line: 540, baseType: !2028, size: 64, offset: 5184)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2030, line: 54, size: 960, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2042, !2046, !2047, !2048, !2049, !2053, !2057, !2058}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2029, file: !2030, line: 55, baseType: !102, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2029, file: !2030, line: 56, baseType: !1648, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2029, file: !2030, line: 58, baseType: !193, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2029, file: !2030, line: 59, baseType: !193, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2029, file: !2030, line: 60, baseType: !106, size: 64, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2029, file: !2030, line: 62, baseType: !1582, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2029, file: !2030, line: 63, baseType: !2039, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!139, !1569, !1589}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2029, file: !2030, line: 65, baseType: !2043, size: 64, offset: 448)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !2028}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2029, file: !2030, line: 66, baseType: !1591, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2029, file: !2030, line: 68, baseType: !1601, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2029, file: !2030, line: 70, baseType: !1348, size: 64, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2029, file: !2030, line: 71, baseType: !2050, size: 64, offset: 704)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!1371, !1569}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2029, file: !2030, line: 73, baseType: !2054, size: 64, offset: 768)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1569, !1391, !1397}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2029, file: !2030, line: 75, baseType: !1595, size: 64, offset: 832)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2029, file: !2030, line: 77, baseType: !1723, size: 64, offset: 896)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !94, file: !95, line: 541, baseType: !193, size: 64, offset: 5248)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !94, file: !95, line: 543, baseType: !1591, size: 64, offset: 5312)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !94, file: !95, line: 544, baseType: !2062, size: 64, offset: 5376)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !95, line: 45, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !94, file: !95, line: 545, baseType: !2065, size: 64, offset: 5440)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !95, line: 47, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !94, file: !95, line: 547, baseType: !975, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !94, file: !95, line: 548, baseType: !975, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !94, file: !95, line: 549, baseType: !975, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !94, file: !95, line: 550, baseType: !975, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !84, file: !85, line: 154, baseType: !196, size: 320, offset: 5760)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !84, file: !85, line: 155, baseType: !2073, size: 64, offset: 6080)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !85, line: 38, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !84, file: !85, line: 156, baseType: !2073, size: 64, offset: 6144)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !84, file: !85, line: 157, baseType: !2073, size: 64, offset: 6208)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !84, file: !85, line: 158, baseType: !2078, size: 32, offset: 6272)
!2078 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !74, line: 7, baseType: !15, size: 32, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0, isUnsigned: true)
!2081 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1, isUnsigned: true)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !84, file: !85, line: 159, baseType: !213, size: 64, offset: 6336)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !84, file: !85, line: 160, baseType: !67, size: 32, offset: 6400)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !84, file: !85, line: 161, baseType: !189, size: 64, offset: 6464)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay", scope: !84, file: !85, line: 162, baseType: !67, size: 32, offset: 6528)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay", scope: !84, file: !85, line: 163, baseType: !67, size: 32, offset: 6560)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !84, file: !85, line: 164, baseType: !67, size: 32, offset: 6592)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !84, file: !85, line: 165, baseType: !67, size: 32, offset: 6624)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !84, file: !85, line: 166, baseType: !67, size: 32, offset: 6656)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !84, file: !85, line: 167, baseType: !67, size: 32, offset: 6688)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !84, file: !85, line: 168, baseType: !67, size: 32, offset: 6720)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !84, file: !85, line: 169, baseType: !67, size: 32, offset: 6752)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "forced_passive", scope: !84, file: !85, line: 170, baseType: !15, size: 32, offset: 6784)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !84, file: !85, line: 171, baseType: !278, size: 32, offset: 6816)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !84, file: !85, line: 172, baseType: !2096, size: 64, offset: 6848)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !85, line: 61, size: 896, elements: !2098)
!2098 = !{!2099, !2143, !2144, !2148, !2152, !2156, !2161, !2165, !2166, !2167, !2168, !2169, !2173, !2185}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2097, file: !85, line: 62, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!67, !83, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !85, line: 93, size: 6528, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2139, !2140, !2141, !2142}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2104, file: !85, line: 94, baseType: !67, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2104, file: !85, line: 95, baseType: !89, size: 160, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2104, file: !85, line: 96, baseType: !94, size: 5568, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2104, file: !85, line: 97, baseType: !1906, size: 64, offset: 5760)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2104, file: !85, line: 98, baseType: !213, size: 64, offset: 5824)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2104, file: !85, line: 99, baseType: !213, size: 64, offset: 5888)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2104, file: !85, line: 100, baseType: !2113, size: 64, offset: 5952)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !85, line: 84, size: 384, elements: !2116)
!2116 = !{!2117, !2122, !2123, !2127, !2131, !2135}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2115, file: !85, line: 85, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!67, !2103, !2121}
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2115, file: !85, line: 86, baseType: !2118, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2115, file: !85, line: 87, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!67, !2103, !189}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2115, file: !85, line: 88, baseType: !2128, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!67, !2103, !601}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2115, file: !85, line: 89, baseType: !2132, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!67, !2103, !189, !601}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2115, file: !85, line: 90, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!67, !2103, !11, !2121}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2104, file: !85, line: 101, baseType: !975, size: 8, offset: 6016)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2104, file: !85, line: 102, baseType: !33, size: 192, offset: 6080)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2104, file: !85, line: 103, baseType: !49, size: 128, offset: 6272)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2104, file: !85, line: 104, baseType: !49, size: 128, offset: 6400)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2097, file: !85, line: 64, baseType: !2100, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !2097, file: !85, line: 66, baseType: !2145, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!67, !83, !722}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !2097, file: !85, line: 67, baseType: !2149, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!67, !83, !67, !67}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !2097, file: !85, line: 68, baseType: !2153, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!67, !83, !2078}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_type", scope: !2097, file: !85, line: 70, baseType: !2157, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!67, !83, !67, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_temp", scope: !2097, file: !85, line: 72, baseType: !2162, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!67, !83, !67, !722}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !2097, file: !85, line: 73, baseType: !2149, size: 64, offset: 448)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "get_trip_hyst", scope: !2097, file: !85, line: 74, baseType: !2162, size: 64, offset: 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !2097, file: !85, line: 75, baseType: !2149, size: 64, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !2097, file: !85, line: 76, baseType: !2145, size: 64, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !2097, file: !85, line: 77, baseType: !2170, size: 64, offset: 704)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!67, !83, !67}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !2097, file: !85, line: 78, baseType: !2174, size: 64, offset: 768)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!67, !83, !67, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !85, line: 40, baseType: !15, size: 32, elements: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184}
!2180 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0, isUnsigned: true)
!2181 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1, isUnsigned: true)
!2182 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2, isUnsigned: true)
!2183 = !DIEnumerator(name: "THERMAL_TREND_RAISE_FULL", value: 3, isUnsigned: true)
!2184 = !DIEnumerator(name: "THERMAL_TREND_DROP_FULL", value: 4, isUnsigned: true)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2097, file: !85, line: 80, baseType: !2186, size: 64, offset: 832)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!67, !83, !67, !73}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !84, file: !85, line: 173, baseType: !2190, size: 64, offset: 6912)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !85, line: 240, size: 576, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !2191, file: !85, line: 241, baseType: !89, size: 160)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !2191, file: !85, line: 248, baseType: !975, size: 8, offset: 160)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "num_tbps", scope: !2191, file: !85, line: 250, baseType: !67, size: 32, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "tbp", scope: !2191, file: !85, line: 251, baseType: !2197, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_bind_params", file: !85, line: 205, size: 256, elements: !2199)
!2199 = !{!2200, !2201, !2202, !2203, !2204}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2198, file: !85, line: 206, baseType: !2103, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2198, file: !85, line: 217, baseType: !67, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "trip_mask", scope: !2198, file: !85, line: 224, baseType: !67, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "binding_limits", scope: !2198, file: !85, line: 234, baseType: !2121, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2198, file: !85, line: 235, baseType: !2100, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !2191, file: !85, line: 257, baseType: !11, size: 32, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !2191, file: !85, line: 263, baseType: !635, size: 32, offset: 352)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !2191, file: !85, line: 269, baseType: !635, size: 32, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !2191, file: !85, line: 272, baseType: !635, size: 32, offset: 416)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !2191, file: !85, line: 275, baseType: !635, size: 32, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !2191, file: !85, line: 278, baseType: !635, size: 32, offset: 480)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !2191, file: !85, line: 284, baseType: !67, size: 32, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2191, file: !85, line: 289, baseType: !67, size: 32, offset: 544)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !84, file: !85, line: 174, baseType: !2214, size: 64, offset: 6976)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !85, line: 196, size: 512, elements: !2216)
!2216 = !{!2217, !2218, !2222, !2226, !2227}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2215, file: !85, line: 197, baseType: !89, size: 160)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !2215, file: !85, line: 198, baseType: !2219, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!67, !83}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !2215, file: !85, line: 199, baseType: !2223, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !83}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2215, file: !85, line: 200, baseType: !2170, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !2215, file: !85, line: 201, baseType: !49, size: 128, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !84, file: !85, line: 175, baseType: !213, size: 64, offset: 7040)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !84, file: !85, line: 176, baseType: !49, size: 128, offset: 7104)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !84, file: !85, line: 177, baseType: !2231, size: 128, offset: 7232)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1432, line: 244, size: 128, elements: !2232)
!2232 = !{!2233}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2231, file: !1432, line: 245, baseType: !1435, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !84, file: !85, line: 178, baseType: !33, size: 192, offset: 7360)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !84, file: !85, line: 179, baseType: !49, size: 128, offset: 7552)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !84, file: !85, line: 180, baseType: !2237, size: 704, offset: 7680)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1300, line: 115, size: 704, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2244}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2237, file: !1300, line: 116, baseType: !1299, size: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2237, file: !1300, line: 117, baseType: !1779, size: 320, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2237, file: !1300, line: 120, baseType: !2242, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1300, line: 18, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2237, file: !1300, line: 121, baseType: !67, size: 32, offset: 640)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !84, file: !85, line: 181, baseType: !2246, size: 32, offset: 8384)
!2246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !85, line: 49, baseType: !15, size: 32, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256}
!2248 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0, isUnsigned: true)
!2249 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1, isUnsigned: true)
!2250 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2, isUnsigned: true)
!2251 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3, isUnsigned: true)
!2252 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4, isUnsigned: true)
!2253 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5, isUnsigned: true)
!2254 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6, isUnsigned: true)
!2255 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7, isUnsigned: true)
!2256 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8, isUnsigned: true)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sensors", scope: !64, file: !8, line: 32, baseType: !6, size: 64, offset: 256)
!2258 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2259, retainedTypes: !2272, globals: !2273, splitDebugInlining: false, nameTableKind: None)
!2259 = !{!55, !73, !478, !612, !1354, !1654, !1742, !1829, !1837, !2078, !2178, !2246, !2260, !2265}
!2260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2261, line: 10, baseType: !15, size: 32, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!2262 = !{!2263, !2264}
!2263 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!2264 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!2265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2266, line: 305, baseType: !15, size: 32, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!2269 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!2270 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!2271 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!2272 = !{!1440, !189, !213, !11, !258, !67, !174}
!2273 = !{!0, !2274, !2279, !2284}
!2274 = !DIGlobalVariableExpression(var: !2275, expr: !DIExpression())
!2275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file163", scope: !2258, file: !3, line: 477, type: !2276, isLocal: true, isDefinition: true, align: 8)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 520, elements: !2277)
!2277 = !{!2278}
!2278 = !DISubrange(count: 65)
!2279 = !DIGlobalVariableExpression(var: !2280, expr: !DIExpression())
!2280 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license164", scope: !2258, file: !3, line: 477, type: !2281, isLocal: true, isDefinition: true, align: 8)
!2281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 272, elements: !2282)
!2282 = !{!2283}
!2283 = !DISubrange(count: 34)
!2284 = !DIGlobalVariableExpression(var: !2285, expr: !DIExpression())
!2285 = distinct !DIGlobalVariable(name: "tzone_ops", scope: !2258, file: !3, line: 246, type: !2097, isLocal: true, isDefinition: true)
!2286 = !{!"rsp"}
!2287 = !{i32 7, !"Dwarf Version", i32 4}
!2288 = !{i32 2, !"Debug Info Version", i32 3}
!2289 = !{i32 1, !"wchar_size", i32 2}
!2290 = !{i32 1, !"Code Model", i32 2}
!2291 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2292 = distinct !DISubprogram(name: "intel_soc_dts_iosf_add_read_only_critical_trip", scope: !3, file: !3, line: 347, type: !2293, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!67, !6, !67}
!2295 = !DILocalVariable(name: "sensors", arg: 1, scope: !2292, file: !3, line: 348, type: !6)
!2296 = !DILocation(line: 348, column: 32, scope: !2292)
!2297 = !DILocalVariable(name: "critical_offset", arg: 2, scope: !2292, file: !3, line: 348, type: !67)
!2298 = !DILocation(line: 348, column: 45, scope: !2292)
!2299 = !DILocalVariable(name: "i", scope: !2292, file: !3, line: 350, type: !67)
!2300 = !DILocation(line: 350, column: 6, scope: !2292)
!2301 = !DILocalVariable(name: "j", scope: !2292, file: !3, line: 350, type: !67)
!2302 = !DILocation(line: 350, column: 9, scope: !2292)
!2303 = !DILocation(line: 352, column: 9, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 352, column: 2)
!2305 = !DILocation(line: 352, column: 7, scope: !2304)
!2306 = !DILocation(line: 352, column: 14, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 352, column: 2)
!2308 = !DILocation(line: 352, column: 16, scope: !2307)
!2309 = !DILocation(line: 352, column: 2, scope: !2304)
!2310 = !DILocation(line: 353, column: 10, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 353, column: 3)
!2312 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 352, column: 44)
!2313 = !DILocation(line: 353, column: 8, scope: !2311)
!2314 = !DILocation(line: 353, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 353, column: 3)
!2316 = !DILocation(line: 353, column: 19, scope: !2315)
!2317 = !DILocation(line: 353, column: 28, scope: !2315)
!2318 = !DILocation(line: 353, column: 36, scope: !2315)
!2319 = !DILocation(line: 353, column: 39, scope: !2315)
!2320 = !DILocation(line: 353, column: 17, scope: !2315)
!2321 = !DILocation(line: 353, column: 3, scope: !2311)
!2322 = !DILocation(line: 354, column: 10, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 354, column: 8)
!2324 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 353, column: 56)
!2325 = !DILocation(line: 354, column: 19, scope: !2323)
!2326 = !DILocation(line: 354, column: 27, scope: !2323)
!2327 = !DILocation(line: 354, column: 30, scope: !2323)
!2328 = !DILocation(line: 354, column: 42, scope: !2323)
!2329 = !DILocation(line: 354, column: 40, scope: !2323)
!2330 = !DILocation(line: 354, column: 8, scope: !2324)
!2331 = !DILocation(line: 355, column: 30, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 354, column: 51)
!2333 = !DILocation(line: 355, column: 39, scope: !2332)
!2334 = !DILocation(line: 355, column: 47, scope: !2332)
!2335 = !DILocation(line: 355, column: 51, scope: !2332)
!2336 = !DILocation(line: 356, column: 6, scope: !2332)
!2337 = !DILocation(line: 356, column: 15, scope: !2332)
!2338 = !DILocation(line: 356, column: 24, scope: !2332)
!2339 = !DILocation(line: 356, column: 22, scope: !2332)
!2340 = !DILocation(line: 355, column: 12, scope: !2332)
!2341 = !DILocation(line: 355, column: 5, scope: !2332)
!2342 = !DILocation(line: 359, column: 3, scope: !2324)
!2343 = !DILocation(line: 353, column: 51, scope: !2315)
!2344 = !DILocation(line: 353, column: 3, scope: !2315)
!2345 = distinct !{!2345, !2321, !2346}
!2346 = !DILocation(line: 359, column: 3, scope: !2311)
!2347 = !DILocation(line: 360, column: 2, scope: !2312)
!2348 = !DILocation(line: 352, column: 39, scope: !2307)
!2349 = !DILocation(line: 352, column: 2, scope: !2307)
!2350 = distinct !{!2350, !2309, !2351}
!2351 = !DILocation(line: 360, column: 2, scope: !2304)
!2352 = !DILocation(line: 362, column: 2, scope: !2292)
!2353 = !DILocation(line: 363, column: 1, scope: !2292)
!2354 = distinct !DISubprogram(name: "update_trip_temp", scope: !3, file: !3, line: 100, type: !2355, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!67, !2357, !67, !67, !73}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!2358 = !DILocalVariable(name: "dts", arg: 1, scope: !2354, file: !3, line: 100, type: !2357)
!2359 = !DILocation(line: 100, column: 64, scope: !2354)
!2360 = !DILocalVariable(name: "thres_index", arg: 2, scope: !2354, file: !3, line: 101, type: !67)
!2361 = !DILocation(line: 101, column: 12, scope: !2354)
!2362 = !DILocalVariable(name: "temp", arg: 3, scope: !2354, file: !3, line: 101, type: !67)
!2363 = !DILocation(line: 101, column: 29, scope: !2354)
!2364 = !DILocalVariable(name: "trip_type", arg: 4, scope: !2354, file: !3, line: 102, type: !73)
!2365 = !DILocation(line: 102, column: 31, scope: !2354)
!2366 = !DILocalVariable(name: "status", scope: !2354, file: !3, line: 104, type: !67)
!2367 = !DILocation(line: 104, column: 6, scope: !2354)
!2368 = !DILocalVariable(name: "temp_out", scope: !2354, file: !3, line: 105, type: !11)
!2369 = !DILocation(line: 105, column: 6, scope: !2354)
!2370 = !DILocalVariable(name: "out", scope: !2354, file: !3, line: 106, type: !11)
!2371 = !DILocation(line: 106, column: 6, scope: !2354)
!2372 = !DILocalVariable(name: "update_ptps", scope: !2354, file: !3, line: 107, type: !189)
!2373 = !DILocation(line: 107, column: 16, scope: !2354)
!2374 = !DILocalVariable(name: "store_ptps", scope: !2354, file: !3, line: 108, type: !11)
!2375 = !DILocation(line: 108, column: 6, scope: !2354)
!2376 = !DILocalVariable(name: "store_ptmc", scope: !2354, file: !3, line: 109, type: !11)
!2377 = !DILocation(line: 109, column: 6, scope: !2354)
!2378 = !DILocalVariable(name: "store_te_out", scope: !2354, file: !3, line: 110, type: !11)
!2379 = !DILocation(line: 110, column: 6, scope: !2354)
!2380 = !DILocalVariable(name: "te_out", scope: !2354, file: !3, line: 111, type: !11)
!2381 = !DILocation(line: 111, column: 6, scope: !2354)
!2382 = !DILocalVariable(name: "int_enable_bit", scope: !2354, file: !3, line: 112, type: !11)
!2383 = !DILocation(line: 112, column: 6, scope: !2354)
!2384 = !DILocalVariable(name: "sensors", scope: !2354, file: !3, line: 113, type: !6)
!2385 = !DILocation(line: 113, column: 32, scope: !2354)
!2386 = !DILocation(line: 113, column: 42, scope: !2354)
!2387 = !DILocation(line: 113, column: 47, scope: !2354)
!2388 = !DILocation(line: 115, column: 6, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 115, column: 6)
!2390 = !DILocation(line: 115, column: 15, scope: !2389)
!2391 = !DILocation(line: 115, column: 25, scope: !2389)
!2392 = !DILocation(line: 115, column: 6, scope: !2354)
!2393 = !DILocation(line: 116, column: 18, scope: !2389)
!2394 = !DILocation(line: 116, column: 3, scope: !2389)
!2395 = !DILocation(line: 118, column: 14, scope: !2354)
!2396 = !DILocation(line: 118, column: 23, scope: !2354)
!2397 = !DILocation(line: 118, column: 32, scope: !2354)
!2398 = !DILocation(line: 118, column: 30, scope: !2354)
!2399 = !DILocation(line: 118, column: 38, scope: !2354)
!2400 = !DILocation(line: 118, column: 11, scope: !2354)
!2401 = !DILocation(line: 120, column: 11, scope: !2354)
!2402 = !DILocation(line: 120, column: 9, scope: !2354)
!2403 = !DILocation(line: 122, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 122, column: 6)
!2405 = !DILocation(line: 122, column: 6, scope: !2354)
!2406 = !DILocation(line: 123, column: 10, scope: !2404)
!2407 = !DILocation(line: 123, column: 3, scope: !2404)
!2408 = !DILocation(line: 125, column: 16, scope: !2354)
!2409 = !DILocation(line: 125, column: 14, scope: !2354)
!2410 = !DILocation(line: 126, column: 34, scope: !2354)
!2411 = !DILocation(line: 126, column: 43, scope: !2354)
!2412 = !DILocation(line: 126, column: 51, scope: !2354)
!2413 = !DILocation(line: 126, column: 63, scope: !2354)
!2414 = !DILocation(line: 126, column: 2, scope: !2354)
!2415 = !DILocation(line: 127, column: 8, scope: !2354)
!2416 = !DILocation(line: 127, column: 6, scope: !2354)
!2417 = !DILocation(line: 130, column: 26, scope: !2354)
!2418 = !DILocation(line: 129, column: 11, scope: !2354)
!2419 = !DILocation(line: 129, column: 9, scope: !2354)
!2420 = !DILocation(line: 131, column: 6, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 131, column: 6)
!2422 = !DILocation(line: 131, column: 6, scope: !2354)
!2423 = !DILocation(line: 132, column: 10, scope: !2421)
!2424 = !DILocation(line: 132, column: 3, scope: !2421)
!2425 = !DILocation(line: 134, column: 2, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !3, line: 134, column: 2)
!2427 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 134, column: 2)
!2428 = !DILocation(line: 134, column: 2, scope: !2427)
!2429 = !DILocation(line: 135, column: 11, scope: !2354)
!2430 = !DILocation(line: 135, column: 9, scope: !2354)
!2431 = !DILocation(line: 137, column: 6, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 137, column: 6)
!2433 = !DILocation(line: 137, column: 6, scope: !2354)
!2434 = !DILocation(line: 138, column: 3, scope: !2432)
!2435 = !DILocation(line: 140, column: 15, scope: !2354)
!2436 = !DILocation(line: 140, column: 13, scope: !2354)
!2437 = !DILocation(line: 143, column: 29, scope: !2354)
!2438 = !DILocation(line: 143, column: 27, scope: !2354)
!2439 = !DILocation(line: 142, column: 11, scope: !2354)
!2440 = !DILocation(line: 142, column: 9, scope: !2354)
!2441 = !DILocation(line: 145, column: 6, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 145, column: 6)
!2443 = !DILocation(line: 145, column: 6, scope: !2354)
!2444 = !DILocation(line: 146, column: 3, scope: !2442)
!2445 = !DILocation(line: 148, column: 17, scope: !2354)
!2446 = !DILocation(line: 148, column: 15, scope: !2354)
!2447 = !DILocation(line: 150, column: 6, scope: !2354)
!2448 = !DILocation(line: 152, column: 6, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 152, column: 6)
!2450 = !DILocation(line: 152, column: 6, scope: !2354)
!2451 = !DILocation(line: 153, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 153, column: 7)
!2453 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 152, column: 12)
!2454 = !DILocation(line: 153, column: 7, scope: !2453)
!2455 = !DILocation(line: 154, column: 8, scope: !2452)
!2456 = !DILocation(line: 154, column: 4, scope: !2452)
!2457 = !DILocation(line: 156, column: 8, scope: !2452)
!2458 = !DILocation(line: 157, column: 13, scope: !2453)
!2459 = !DILocation(line: 157, column: 10, scope: !2453)
!2460 = !DILocation(line: 158, column: 2, scope: !2453)
!2461 = !DILocation(line: 159, column: 7, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 159, column: 7)
!2463 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 158, column: 9)
!2464 = !DILocation(line: 159, column: 7, scope: !2463)
!2465 = !DILocation(line: 160, column: 8, scope: !2462)
!2466 = !DILocation(line: 160, column: 4, scope: !2462)
!2467 = !DILocation(line: 162, column: 8, scope: !2462)
!2468 = !DILocation(line: 163, column: 14, scope: !2463)
!2469 = !DILocation(line: 163, column: 13, scope: !2463)
!2470 = !DILocation(line: 163, column: 10, scope: !2463)
!2471 = !DILocation(line: 166, column: 26, scope: !2354)
!2472 = !DILocation(line: 165, column: 11, scope: !2354)
!2473 = !DILocation(line: 165, column: 9, scope: !2354)
!2474 = !DILocation(line: 167, column: 6, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 167, column: 6)
!2476 = !DILocation(line: 167, column: 6, scope: !2354)
!2477 = !DILocation(line: 168, column: 3, scope: !2475)
!2478 = !DILocation(line: 171, column: 23, scope: !2354)
!2479 = !DILocation(line: 171, column: 21, scope: !2354)
!2480 = !DILocation(line: 172, column: 5, scope: !2354)
!2481 = !DILocation(line: 170, column: 11, scope: !2354)
!2482 = !DILocation(line: 170, column: 9, scope: !2354)
!2483 = !DILocation(line: 173, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 173, column: 6)
!2485 = !DILocation(line: 173, column: 6, scope: !2354)
!2486 = !DILocation(line: 174, column: 3, scope: !2484)
!2487 = !DILocation(line: 176, column: 33, scope: !2354)
!2488 = !DILocation(line: 176, column: 2, scope: !2354)
!2489 = !DILocation(line: 176, column: 7, scope: !2354)
!2490 = !DILocation(line: 176, column: 18, scope: !2354)
!2491 = !DILocation(line: 176, column: 31, scope: !2354)
!2492 = !DILocation(line: 178, column: 2, scope: !2354)
!2493 = !DILabel(scope: !2354, name: "err_restore_te_out", file: !3, line: 179)
!2494 = !DILocation(line: 179, column: 1, scope: !2354)
!2495 = !DILocation(line: 181, column: 31, scope: !2354)
!2496 = !DILocation(line: 180, column: 2, scope: !2354)
!2497 = !DILabel(scope: !2354, name: "err_restore_ptmc", file: !3, line: 182)
!2498 = !DILocation(line: 182, column: 1, scope: !2354)
!2499 = !DILocation(line: 184, column: 31, scope: !2354)
!2500 = !DILocation(line: 183, column: 2, scope: !2354)
!2501 = !DILabel(scope: !2354, name: "err_restore_ptps", file: !3, line: 185)
!2502 = !DILocation(line: 185, column: 1, scope: !2354)
!2503 = !DILocation(line: 187, column: 31, scope: !2354)
!2504 = !DILocation(line: 186, column: 2, scope: !2354)
!2505 = !DILocation(line: 190, column: 9, scope: !2354)
!2506 = !DILocation(line: 190, column: 2, scope: !2354)
!2507 = !DILocation(line: 191, column: 1, scope: !2354)
!2508 = distinct !DISubprogram(name: "intel_soc_dts_iosf_interrupt_handler", scope: !3, file: !3, line: 366, type: !2509, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !6}
!2511 = !DILocalVariable(name: "lock", arg: 1, scope: !2512, file: !2513, line: 407, type: !2516)
!2512 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2513, file: !2513, line: 407, type: !2514, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2513 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2516, !189}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!2517 = !DILocation(line: 407, column: 64, scope: !2512, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 389, column: 3, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 384, column: 38)
!2520 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 384, column: 6)
!2521 = !DILocalVariable(name: "flags", arg: 2, scope: !2512, file: !2513, line: 407, type: !189)
!2522 = !DILocation(line: 407, column: 84, scope: !2512, inlinedAt: !2518)
!2523 = !DILocation(line: 407, column: 64, scope: !2512, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 397, column: 3, scope: !2520)
!2525 = !DILocation(line: 407, column: 84, scope: !2512, inlinedAt: !2524)
!2526 = !DILocalVariable(name: "lock", arg: 1, scope: !2527, file: !2513, line: 327, type: !2516)
!2527 = distinct !DISubprogram(name: "spinlock_check", scope: !2513, file: !2513, line: 327, type: !2528, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2530, !2516}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2531 = !DILocation(line: 327, column: 67, scope: !2527, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 373, column: 2, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 373, column: 2)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 373, column: 2)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 373, column: 2)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 373, column: 2)
!2537 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 373, column: 2)
!2538 = !DILocalVariable(name: "sensors", arg: 1, scope: !2508, file: !3, line: 366, type: !6)
!2539 = !DILocation(line: 366, column: 73, scope: !2508)
!2540 = !DILocalVariable(name: "sticky_out", scope: !2508, file: !3, line: 368, type: !11)
!2541 = !DILocation(line: 368, column: 6, scope: !2508)
!2542 = !DILocalVariable(name: "status", scope: !2508, file: !3, line: 369, type: !67)
!2543 = !DILocation(line: 369, column: 6, scope: !2508)
!2544 = !DILocalVariable(name: "ptmc_out", scope: !2508, file: !3, line: 370, type: !11)
!2545 = !DILocation(line: 370, column: 6, scope: !2508)
!2546 = !DILocalVariable(name: "flags", scope: !2508, file: !3, line: 371, type: !189)
!2547 = !DILocation(line: 371, column: 16, scope: !2508)
!2548 = !DILocation(line: 373, column: 2, scope: !2508)
!2549 = !DILocation(line: 373, column: 2, scope: !2537)
!2550 = !DILocalVariable(name: "__dummy", scope: !2551, file: !3, line: 373, type: !189)
!2551 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 373, column: 2)
!2552 = !DILocation(line: 373, column: 2, scope: !2551)
!2553 = !DILocalVariable(name: "__dummy2", scope: !2551, file: !3, line: 373, type: !189)
!2554 = !DILocation(line: 373, column: 2, scope: !2536)
!2555 = !DILocation(line: 373, column: 2, scope: !2535)
!2556 = !DILocation(line: 373, column: 2, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 373, column: 2)
!2558 = !DILocalVariable(name: "__dummy", scope: !2559, file: !3, line: 373, type: !189)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 373, column: 2)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 373, column: 2)
!2561 = !DILocation(line: 373, column: 2, scope: !2559)
!2562 = !DILocalVariable(name: "__dummy2", scope: !2559, file: !3, line: 373, type: !189)
!2563 = !DILocation(line: 373, column: 2, scope: !2560)
!2564 = !DILocation(line: 373, column: 2, scope: !2534)
!2565 = !{i32 -2143326015}
!2566 = !DILocation(line: 373, column: 2, scope: !2533)
!2567 = !DILocation(line: 329, column: 10, scope: !2527, inlinedAt: !2532)
!2568 = !DILocation(line: 329, column: 16, scope: !2527, inlinedAt: !2532)
!2569 = !DILocation(line: 375, column: 11, scope: !2508)
!2570 = !DILocation(line: 375, column: 9, scope: !2508)
!2571 = !DILocation(line: 377, column: 11, scope: !2508)
!2572 = !DILocation(line: 379, column: 26, scope: !2508)
!2573 = !DILocation(line: 378, column: 11, scope: !2508)
!2574 = !DILocation(line: 378, column: 9, scope: !2508)
!2575 = !DILocation(line: 381, column: 11, scope: !2508)
!2576 = !DILocation(line: 381, column: 9, scope: !2508)
!2577 = !DILocation(line: 383, column: 2, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 383, column: 2)
!2579 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 383, column: 2)
!2580 = !DILocation(line: 383, column: 2, scope: !2579)
!2581 = !DILocation(line: 384, column: 6, scope: !2520)
!2582 = !DILocation(line: 384, column: 17, scope: !2520)
!2583 = !DILocation(line: 384, column: 6, scope: !2508)
!2584 = !DILocalVariable(name: "i", scope: !2519, file: !3, line: 385, type: !67)
!2585 = !DILocation(line: 385, column: 7, scope: !2519)
!2586 = !DILocation(line: 388, column: 28, scope: !2519)
!2587 = !DILocation(line: 387, column: 12, scope: !2519)
!2588 = !DILocation(line: 387, column: 10, scope: !2519)
!2589 = !DILocation(line: 389, column: 27, scope: !2519)
!2590 = !DILocation(line: 389, column: 36, scope: !2519)
!2591 = !DILocation(line: 389, column: 54, scope: !2519)
!2592 = !DILocalVariable(name: "__dummy", scope: !2593, file: !2513, line: 409, type: !189)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !2513, line: 409, column: 2)
!2594 = distinct !DILexicalBlock(scope: !2512, file: !2513, line: 409, column: 2)
!2595 = !DILocation(line: 409, column: 2, scope: !2593, inlinedAt: !2518)
!2596 = !DILocalVariable(name: "__dummy2", scope: !2593, file: !2513, line: 409, type: !189)
!2597 = !DILocalVariable(name: "__dummy", scope: !2598, file: !2513, line: 409, type: !189)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !2513, line: 409, column: 2)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !2513, line: 409, column: 2)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !2513, line: 409, column: 2)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !2513, line: 409, column: 2)
!2602 = !DILocation(line: 409, column: 2, scope: !2598, inlinedAt: !2518)
!2603 = !DILocalVariable(name: "__dummy2", scope: !2598, file: !2513, line: 409, type: !189)
!2604 = !DILocation(line: 409, column: 2, scope: !2599, inlinedAt: !2518)
!2605 = !DILocation(line: 409, column: 2, scope: !2606, inlinedAt: !2518)
!2606 = distinct !DILexicalBlock(scope: !2601, file: !2513, line: 409, column: 2)
!2607 = !{i32 -2145465613}
!2608 = !DILocation(line: 409, column: 2, scope: !2609, inlinedAt: !2518)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !2513, line: 409, column: 2)
!2610 = !DILocation(line: 391, column: 10, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 391, column: 3)
!2612 = !DILocation(line: 391, column: 8, scope: !2611)
!2613 = !DILocation(line: 391, column: 15, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 391, column: 3)
!2615 = !DILocation(line: 391, column: 17, scope: !2614)
!2616 = !DILocation(line: 391, column: 3, scope: !2611)
!2617 = !DILocation(line: 392, column: 4, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 392, column: 4)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 392, column: 4)
!2620 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 391, column: 45)
!2621 = !DILocation(line: 392, column: 4, scope: !2619)
!2622 = !DILocation(line: 393, column: 31, scope: !2620)
!2623 = !DILocation(line: 393, column: 40, scope: !2620)
!2624 = !DILocation(line: 393, column: 48, scope: !2620)
!2625 = !DILocation(line: 393, column: 51, scope: !2620)
!2626 = !DILocation(line: 393, column: 4, scope: !2620)
!2627 = !DILocation(line: 395, column: 3, scope: !2620)
!2628 = !DILocation(line: 391, column: 40, scope: !2614)
!2629 = !DILocation(line: 391, column: 3, scope: !2614)
!2630 = distinct !{!2630, !2616, !2631}
!2631 = !DILocation(line: 395, column: 3, scope: !2611)
!2632 = !DILocation(line: 396, column: 2, scope: !2519)
!2633 = !DILocation(line: 397, column: 27, scope: !2520)
!2634 = !DILocation(line: 397, column: 36, scope: !2520)
!2635 = !DILocation(line: 397, column: 54, scope: !2520)
!2636 = !DILocation(line: 409, column: 2, scope: !2593, inlinedAt: !2524)
!2637 = !DILocation(line: 409, column: 2, scope: !2598, inlinedAt: !2524)
!2638 = !DILocation(line: 409, column: 2, scope: !2599, inlinedAt: !2524)
!2639 = !DILocation(line: 409, column: 2, scope: !2606, inlinedAt: !2524)
!2640 = !DILocation(line: 409, column: 2, scope: !2609, inlinedAt: !2524)
!2641 = !DILocation(line: 398, column: 1, scope: !2508)
!2642 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !2643, file: !2643, line: 666, type: !2644, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2643 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!189}
!2646 = !DILocalVariable(name: "f", scope: !2642, file: !2643, line: 668, type: !189)
!2647 = !DILocation(line: 668, column: 16, scope: !2642)
!2648 = !DILocation(line: 670, column: 6, scope: !2642)
!2649 = !DILocation(line: 670, column: 4, scope: !2642)
!2650 = !DILocation(line: 671, column: 2, scope: !2642)
!2651 = !DILocation(line: 672, column: 9, scope: !2642)
!2652 = !DILocation(line: 672, column: 2, scope: !2642)
!2653 = !DILocation(line: 327, column: 67, scope: !2527, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 424, column: 2, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2, file: !3, line: 424, column: 2)
!2656 = !DILocalVariable(name: "intr_type", arg: 1, scope: !2, file: !3, line: 402, type: !55)
!2657 = !DILocation(line: 402, column: 36, scope: !2)
!2658 = !DILocalVariable(name: "trip_count", arg: 2, scope: !2, file: !3, line: 402, type: !67)
!2659 = !DILocation(line: 402, column: 51, scope: !2)
!2660 = !DILocalVariable(name: "read_only_trip_count", arg: 3, scope: !2, file: !3, line: 403, type: !67)
!2661 = !DILocation(line: 403, column: 6, scope: !2)
!2662 = !DILocalVariable(name: "sensors", scope: !2, file: !3, line: 405, type: !6)
!2663 = !DILocation(line: 405, column: 32, scope: !2)
!2664 = !DILocalVariable(name: "notification", scope: !2, file: !3, line: 406, type: !975)
!2665 = !DILocation(line: 406, column: 7, scope: !2)
!2666 = !DILocalVariable(name: "tj_max", scope: !2, file: !3, line: 407, type: !11)
!2667 = !DILocation(line: 407, column: 6, scope: !2)
!2668 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 408, type: !67)
!2669 = !DILocation(line: 408, column: 6, scope: !2)
!2670 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 409, type: !67)
!2671 = !DILocation(line: 409, column: 6, scope: !2)
!2672 = !DILocation(line: 411, column: 7, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2, file: !3, line: 411, column: 6)
!2674 = !DILocation(line: 411, column: 6, scope: !2)
!2675 = !DILocation(line: 412, column: 10, scope: !2673)
!2676 = !DILocation(line: 412, column: 3, scope: !2673)
!2677 = !DILocation(line: 414, column: 7, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2, file: !3, line: 414, column: 6)
!2679 = !DILocation(line: 414, column: 18, scope: !2678)
!2680 = !DILocation(line: 414, column: 21, scope: !2678)
!2681 = !DILocation(line: 414, column: 44, scope: !2678)
!2682 = !DILocation(line: 414, column: 42, scope: !2678)
!2683 = !DILocation(line: 414, column: 6, scope: !2)
!2684 = !DILocation(line: 415, column: 10, scope: !2678)
!2685 = !DILocation(line: 415, column: 3, scope: !2678)
!2686 = !DILocation(line: 417, column: 6, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2, file: !3, line: 417, column: 6)
!2688 = !DILocation(line: 417, column: 6, scope: !2)
!2689 = !DILocation(line: 418, column: 10, scope: !2687)
!2690 = !DILocation(line: 418, column: 3, scope: !2687)
!2691 = !DILocation(line: 420, column: 12, scope: !2)
!2692 = !DILocation(line: 420, column: 10, scope: !2)
!2693 = !DILocation(line: 421, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2, file: !3, line: 421, column: 6)
!2695 = !DILocation(line: 421, column: 6, scope: !2)
!2696 = !DILocation(line: 422, column: 10, scope: !2694)
!2697 = !DILocation(line: 422, column: 3, scope: !2694)
!2698 = !DILocation(line: 424, column: 2, scope: !2)
!2699 = !DILocation(line: 424, column: 2, scope: !2655)
!2700 = !DILocation(line: 329, column: 10, scope: !2527, inlinedAt: !2654)
!2701 = !DILocation(line: 329, column: 16, scope: !2527, inlinedAt: !2654)
!2702 = !DILocation(line: 425, column: 2, scope: !2)
!2703 = !DILocation(line: 425, column: 2, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2, file: !3, line: 425, column: 2)
!2705 = !DILocation(line: 426, column: 23, scope: !2)
!2706 = !DILocation(line: 426, column: 2, scope: !2)
!2707 = !DILocation(line: 426, column: 11, scope: !2)
!2708 = !DILocation(line: 426, column: 21, scope: !2)
!2709 = !DILocation(line: 427, column: 20, scope: !2)
!2710 = !DILocation(line: 427, column: 2, scope: !2)
!2711 = !DILocation(line: 427, column: 11, scope: !2)
!2712 = !DILocation(line: 427, column: 18, scope: !2)
!2713 = !DILocation(line: 428, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2, file: !3, line: 428, column: 6)
!2715 = !DILocation(line: 428, column: 16, scope: !2714)
!2716 = !DILocation(line: 428, column: 6, scope: !2)
!2717 = !DILocation(line: 429, column: 16, scope: !2714)
!2718 = !DILocation(line: 429, column: 3, scope: !2714)
!2719 = !DILocation(line: 431, column: 16, scope: !2714)
!2720 = !DILocation(line: 432, column: 9, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2, file: !3, line: 432, column: 2)
!2722 = !DILocation(line: 432, column: 7, scope: !2721)
!2723 = !DILocation(line: 432, column: 14, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 432, column: 2)
!2725 = !DILocation(line: 432, column: 16, scope: !2724)
!2726 = !DILocation(line: 432, column: 2, scope: !2721)
!2727 = !DILocation(line: 433, column: 33, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 432, column: 44)
!2729 = !DILocation(line: 433, column: 3, scope: !2728)
!2730 = !DILocation(line: 433, column: 12, scope: !2728)
!2731 = !DILocation(line: 433, column: 20, scope: !2728)
!2732 = !DILocation(line: 433, column: 23, scope: !2728)
!2733 = !DILocation(line: 433, column: 31, scope: !2728)
!2734 = !DILocation(line: 434, column: 30, scope: !2728)
!2735 = !DILocation(line: 434, column: 34, scope: !2728)
!2736 = !DILocation(line: 434, column: 43, scope: !2728)
!2737 = !DILocation(line: 434, column: 51, scope: !2728)
!2738 = !DILocation(line: 435, column: 9, scope: !2728)
!2739 = !DILocation(line: 435, column: 23, scope: !2728)
!2740 = !DILocation(line: 436, column: 9, scope: !2728)
!2741 = !DILocation(line: 434, column: 9, scope: !2728)
!2742 = !DILocation(line: 434, column: 7, scope: !2728)
!2743 = !DILocation(line: 437, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 437, column: 7)
!2745 = !DILocation(line: 437, column: 7, scope: !2728)
!2746 = !DILocation(line: 438, column: 4, scope: !2744)
!2747 = !DILocation(line: 439, column: 2, scope: !2728)
!2748 = !DILocation(line: 432, column: 39, scope: !2724)
!2749 = !DILocation(line: 432, column: 2, scope: !2724)
!2750 = distinct !{!2750, !2726, !2751}
!2751 = !DILocation(line: 439, column: 2, scope: !2721)
!2752 = !DILocation(line: 441, column: 9, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2, file: !3, line: 441, column: 2)
!2754 = !DILocation(line: 441, column: 7, scope: !2753)
!2755 = !DILocation(line: 441, column: 14, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 441, column: 2)
!2757 = !DILocation(line: 441, column: 16, scope: !2756)
!2758 = !DILocation(line: 441, column: 2, scope: !2753)
!2759 = !DILocation(line: 442, column: 27, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 441, column: 44)
!2761 = !DILocation(line: 442, column: 36, scope: !2760)
!2762 = !DILocation(line: 442, column: 44, scope: !2760)
!2763 = !DILocation(line: 442, column: 9, scope: !2760)
!2764 = !DILocation(line: 442, column: 7, scope: !2760)
!2765 = !DILocation(line: 444, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 444, column: 7)
!2767 = !DILocation(line: 444, column: 7, scope: !2760)
!2768 = !DILocation(line: 445, column: 4, scope: !2766)
!2769 = !DILocation(line: 447, column: 27, scope: !2760)
!2770 = !DILocation(line: 447, column: 36, scope: !2760)
!2771 = !DILocation(line: 447, column: 44, scope: !2760)
!2772 = !DILocation(line: 447, column: 9, scope: !2760)
!2773 = !DILocation(line: 447, column: 7, scope: !2760)
!2774 = !DILocation(line: 449, column: 7, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 449, column: 7)
!2776 = !DILocation(line: 449, column: 7, scope: !2760)
!2777 = !DILocation(line: 450, column: 4, scope: !2775)
!2778 = !DILocation(line: 451, column: 2, scope: !2760)
!2779 = !DILocation(line: 441, column: 39, scope: !2756)
!2780 = !DILocation(line: 441, column: 2, scope: !2756)
!2781 = distinct !{!2781, !2758, !2782}
!2782 = !DILocation(line: 451, column: 2, scope: !2753)
!2783 = !DILocation(line: 453, column: 9, scope: !2)
!2784 = !DILocation(line: 453, column: 2, scope: !2)
!2785 = !DILabel(scope: !2, name: "err_remove_zone", file: !3, line: 454)
!2786 = !DILocation(line: 454, column: 1, scope: !2)
!2787 = !DILocation(line: 455, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2, file: !3, line: 455, column: 2)
!2789 = !DILocation(line: 455, column: 7, scope: !2788)
!2790 = !DILocation(line: 455, column: 14, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 455, column: 2)
!2792 = !DILocation(line: 455, column: 16, scope: !2791)
!2793 = !DILocation(line: 455, column: 2, scope: !2788)
!2794 = !DILocation(line: 456, column: 28, scope: !2791)
!2795 = !DILocation(line: 456, column: 37, scope: !2791)
!2796 = !DILocation(line: 456, column: 45, scope: !2791)
!2797 = !DILocation(line: 456, column: 3, scope: !2791)
!2798 = !DILocation(line: 455, column: 39, scope: !2791)
!2799 = !DILocation(line: 455, column: 2, scope: !2791)
!2800 = distinct !{!2800, !2793, !2801}
!2801 = !DILocation(line: 456, column: 47, scope: !2788)
!2802 = !DILabel(scope: !2, name: "err_free", file: !3, line: 458)
!2803 = !DILocation(line: 458, column: 1, scope: !2)
!2804 = !DILocation(line: 459, column: 8, scope: !2)
!2805 = !DILocation(line: 459, column: 2, scope: !2)
!2806 = !DILocation(line: 460, column: 17, scope: !2)
!2807 = !DILocation(line: 460, column: 9, scope: !2)
!2808 = !DILocation(line: 460, column: 2, scope: !2)
!2809 = !DILocation(line: 461, column: 1, scope: !2)
!2810 = distinct !DISubprogram(name: "ERR_PTR", scope: !2811, file: !2811, line: 24, type: !2812, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2811 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!213, !174}
!2814 = !DILocalVariable(name: "error", arg: 1, scope: !2810, file: !2811, line: 24, type: !174)
!2815 = !DILocation(line: 24, column: 48, scope: !2810)
!2816 = !DILocation(line: 26, column: 18, scope: !2810)
!2817 = !DILocation(line: 26, column: 9, scope: !2810)
!2818 = !DILocation(line: 26, column: 2, scope: !2810)
!2819 = distinct !DISubprogram(name: "get_tj_max", scope: !3, file: !3, line: 48, type: !2820, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!67, !601}
!2822 = !DILocalVariable(name: "tj_max", arg: 1, scope: !2819, file: !3, line: 48, type: !601)
!2823 = !DILocation(line: 48, column: 28, scope: !2819)
!2824 = !DILocalVariable(name: "eax", scope: !2819, file: !3, line: 50, type: !11)
!2825 = !DILocation(line: 50, column: 6, scope: !2819)
!2826 = !DILocalVariable(name: "edx", scope: !2819, file: !3, line: 50, type: !11)
!2827 = !DILocation(line: 50, column: 11, scope: !2819)
!2828 = !DILocalVariable(name: "val", scope: !2819, file: !3, line: 51, type: !11)
!2829 = !DILocation(line: 51, column: 6, scope: !2819)
!2830 = !DILocalVariable(name: "err", scope: !2819, file: !3, line: 52, type: !67)
!2831 = !DILocation(line: 52, column: 6, scope: !2819)
!2832 = !DILocalVariable(name: "_err", scope: !2833, file: !3, line: 54, type: !67)
!2833 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 54, column: 8)
!2834 = !DILocation(line: 54, column: 8, scope: !2833)
!2835 = !DILocalVariable(name: "_l", scope: !2833, file: !3, line: 54, type: !258)
!2836 = !DILocation(line: 54, column: 6, scope: !2819)
!2837 = !DILocation(line: 55, column: 6, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 55, column: 6)
!2839 = !DILocation(line: 55, column: 6, scope: !2819)
!2840 = !DILocation(line: 56, column: 3, scope: !2838)
!2841 = !DILocation(line: 58, column: 10, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 57, column: 7)
!2843 = !DILocation(line: 58, column: 14, scope: !2842)
!2844 = !DILocation(line: 58, column: 21, scope: !2842)
!2845 = !DILocation(line: 58, column: 7, scope: !2842)
!2846 = !DILocation(line: 59, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 59, column: 7)
!2848 = !DILocation(line: 59, column: 7, scope: !2842)
!2849 = !DILocation(line: 60, column: 14, scope: !2847)
!2850 = !DILocation(line: 60, column: 18, scope: !2847)
!2851 = !DILocation(line: 60, column: 5, scope: !2847)
!2852 = !DILocation(line: 60, column: 12, scope: !2847)
!2853 = !DILocation(line: 60, column: 4, scope: !2847)
!2854 = !DILocation(line: 62, column: 8, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 61, column: 8)
!2856 = !DILocation(line: 63, column: 4, scope: !2855)
!2857 = !DILocation(line: 67, column: 2, scope: !2819)
!2858 = !DILabel(scope: !2819, name: "err_ret", file: !3, line: 68)
!2859 = !DILocation(line: 68, column: 1, scope: !2819)
!2860 = !DILocation(line: 69, column: 3, scope: !2819)
!2861 = !DILocation(line: 69, column: 10, scope: !2819)
!2862 = !DILocation(line: 71, column: 9, scope: !2819)
!2863 = !DILocation(line: 71, column: 2, scope: !2819)
!2864 = !DILocation(line: 72, column: 1, scope: !2819)
!2865 = distinct !DISubprogram(name: "kzalloc", scope: !2266, file: !2266, line: 662, type: !2866, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!213, !186, !1440}
!2868 = !DILocalVariable(name: "s", arg: 1, scope: !2869, file: !2266, line: 445, type: !1025)
!2869 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !2266, file: !2266, line: 445, type: !2870, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!213, !1025, !1440, !186}
!2872 = !DILocation(line: 445, column: 72, scope: !2869, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 552, column: 10, scope: !2874, inlinedAt: !2877)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !2266, line: 540, column: 34)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !2266, line: 540, column: 6)
!2876 = distinct !DISubprogram(name: "kmalloc", scope: !2266, file: !2266, line: 538, type: !2866, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2877 = distinct !DILocation(line: 664, column: 9, scope: !2865)
!2878 = !DILocalVariable(name: "flags", arg: 2, scope: !2869, file: !2266, line: 446, type: !1440)
!2879 = !DILocation(line: 446, column: 9, scope: !2869, inlinedAt: !2873)
!2880 = !DILocalVariable(name: "size", arg: 3, scope: !2869, file: !2266, line: 446, type: !186)
!2881 = !DILocation(line: 446, column: 23, scope: !2869, inlinedAt: !2873)
!2882 = !DILocalVariable(name: "ret", scope: !2869, file: !2266, line: 448, type: !213)
!2883 = !DILocation(line: 448, column: 8, scope: !2869, inlinedAt: !2873)
!2884 = !DILocalVariable(name: "flags", arg: 1, scope: !2885, file: !2266, line: 318, type: !1440)
!2885 = distinct !DISubprogram(name: "kmalloc_type", scope: !2266, file: !2266, line: 318, type: !2886, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!2265, !1440}
!2888 = !DILocation(line: 318, column: 67, scope: !2885, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 553, column: 20, scope: !2874, inlinedAt: !2877)
!2890 = !DILocalVariable(name: "size", arg: 1, scope: !2891, file: !2266, line: 346, type: !186)
!2891 = distinct !DISubprogram(name: "kmalloc_index", scope: !2266, file: !2266, line: 346, type: !2892, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!15, !186}
!2894 = !DILocation(line: 346, column: 58, scope: !2891, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 547, column: 11, scope: !2874, inlinedAt: !2877)
!2896 = !DILocalVariable(name: "size", arg: 1, scope: !2897, file: !2266, line: 472, type: !186)
!2897 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !2266, file: !2266, line: 472, type: !2898, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!213, !186, !1440, !15}
!2900 = !DILocation(line: 472, column: 28, scope: !2897, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 481, column: 9, scope: !2902, inlinedAt: !2903)
!2902 = distinct !DISubprogram(name: "kmalloc_large", scope: !2266, file: !2266, line: 478, type: !2866, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!2903 = distinct !DILocation(line: 545, column: 11, scope: !2904, inlinedAt: !2877)
!2904 = distinct !DILexicalBlock(scope: !2874, file: !2266, line: 544, column: 7)
!2905 = !DILocalVariable(name: "flags", arg: 2, scope: !2897, file: !2266, line: 472, type: !1440)
!2906 = !DILocation(line: 472, column: 40, scope: !2897, inlinedAt: !2901)
!2907 = !DILocalVariable(name: "order", arg: 3, scope: !2897, file: !2266, line: 472, type: !15)
!2908 = !DILocation(line: 472, column: 60, scope: !2897, inlinedAt: !2901)
!2909 = !DILocalVariable(name: "size", arg: 1, scope: !2902, file: !2266, line: 478, type: !186)
!2910 = !DILocation(line: 478, column: 51, scope: !2902, inlinedAt: !2903)
!2911 = !DILocalVariable(name: "flags", arg: 2, scope: !2902, file: !2266, line: 478, type: !1440)
!2912 = !DILocation(line: 478, column: 63, scope: !2902, inlinedAt: !2903)
!2913 = !DILocalVariable(name: "order", scope: !2902, file: !2266, line: 480, type: !15)
!2914 = !DILocation(line: 480, column: 15, scope: !2902, inlinedAt: !2903)
!2915 = !DILocalVariable(name: "size", arg: 1, scope: !2876, file: !2266, line: 538, type: !186)
!2916 = !DILocation(line: 538, column: 45, scope: !2876, inlinedAt: !2877)
!2917 = !DILocalVariable(name: "flags", arg: 2, scope: !2876, file: !2266, line: 538, type: !1440)
!2918 = !DILocation(line: 538, column: 57, scope: !2876, inlinedAt: !2877)
!2919 = !DILocalVariable(name: "index", scope: !2874, file: !2266, line: 542, type: !15)
!2920 = !DILocation(line: 542, column: 16, scope: !2874, inlinedAt: !2877)
!2921 = !DILocalVariable(name: "size", arg: 1, scope: !2865, file: !2266, line: 662, type: !186)
!2922 = !DILocation(line: 662, column: 36, scope: !2865)
!2923 = !DILocalVariable(name: "flags", arg: 2, scope: !2865, file: !2266, line: 662, type: !1440)
!2924 = !DILocation(line: 662, column: 48, scope: !2865)
!2925 = !DILocation(line: 664, column: 17, scope: !2865)
!2926 = !DILocation(line: 664, column: 23, scope: !2865)
!2927 = !DILocation(line: 664, column: 29, scope: !2865)
!2928 = !DILocation(line: 540, column: 27, scope: !2875, inlinedAt: !2877)
!2929 = !DILocation(line: 540, column: 6, scope: !2875, inlinedAt: !2877)
!2930 = !DILocation(line: 540, column: 6, scope: !2876, inlinedAt: !2877)
!2931 = !DILocation(line: 544, column: 7, scope: !2904, inlinedAt: !2877)
!2932 = !DILocation(line: 544, column: 12, scope: !2904, inlinedAt: !2877)
!2933 = !DILocation(line: 544, column: 7, scope: !2874, inlinedAt: !2877)
!2934 = !DILocation(line: 545, column: 25, scope: !2904, inlinedAt: !2877)
!2935 = !DILocation(line: 545, column: 31, scope: !2904, inlinedAt: !2877)
!2936 = !DILocation(line: 480, column: 33, scope: !2902, inlinedAt: !2903)
!2937 = !DILocation(line: 480, column: 23, scope: !2902, inlinedAt: !2903)
!2938 = !DILocation(line: 481, column: 29, scope: !2902, inlinedAt: !2903)
!2939 = !DILocation(line: 481, column: 35, scope: !2902, inlinedAt: !2903)
!2940 = !DILocation(line: 481, column: 42, scope: !2902, inlinedAt: !2903)
!2941 = !DILocation(line: 474, column: 23, scope: !2897, inlinedAt: !2901)
!2942 = !DILocation(line: 474, column: 29, scope: !2897, inlinedAt: !2901)
!2943 = !DILocation(line: 474, column: 36, scope: !2897, inlinedAt: !2901)
!2944 = !DILocation(line: 474, column: 9, scope: !2897, inlinedAt: !2901)
!2945 = !DILocation(line: 545, column: 4, scope: !2904, inlinedAt: !2877)
!2946 = !DILocation(line: 547, column: 25, scope: !2874, inlinedAt: !2877)
!2947 = !DILocation(line: 348, column: 7, scope: !2948, inlinedAt: !2895)
!2948 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 348, column: 6)
!2949 = !DILocation(line: 348, column: 6, scope: !2891, inlinedAt: !2895)
!2950 = !DILocation(line: 349, column: 3, scope: !2948, inlinedAt: !2895)
!2951 = !DILocation(line: 351, column: 6, scope: !2952, inlinedAt: !2895)
!2952 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 351, column: 6)
!2953 = !DILocation(line: 351, column: 11, scope: !2952, inlinedAt: !2895)
!2954 = !DILocation(line: 351, column: 6, scope: !2891, inlinedAt: !2895)
!2955 = !DILocation(line: 352, column: 3, scope: !2952, inlinedAt: !2895)
!2956 = !DILocation(line: 354, column: 32, scope: !2957, inlinedAt: !2895)
!2957 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 354, column: 6)
!2958 = !DILocation(line: 354, column: 37, scope: !2957, inlinedAt: !2895)
!2959 = !DILocation(line: 354, column: 42, scope: !2957, inlinedAt: !2895)
!2960 = !DILocation(line: 354, column: 45, scope: !2957, inlinedAt: !2895)
!2961 = !DILocation(line: 354, column: 50, scope: !2957, inlinedAt: !2895)
!2962 = !DILocation(line: 354, column: 6, scope: !2891, inlinedAt: !2895)
!2963 = !DILocation(line: 355, column: 3, scope: !2957, inlinedAt: !2895)
!2964 = !DILocation(line: 356, column: 32, scope: !2965, inlinedAt: !2895)
!2965 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 356, column: 6)
!2966 = !DILocation(line: 356, column: 37, scope: !2965, inlinedAt: !2895)
!2967 = !DILocation(line: 356, column: 43, scope: !2965, inlinedAt: !2895)
!2968 = !DILocation(line: 356, column: 46, scope: !2965, inlinedAt: !2895)
!2969 = !DILocation(line: 356, column: 51, scope: !2965, inlinedAt: !2895)
!2970 = !DILocation(line: 356, column: 6, scope: !2891, inlinedAt: !2895)
!2971 = !DILocation(line: 357, column: 3, scope: !2965, inlinedAt: !2895)
!2972 = !DILocation(line: 358, column: 6, scope: !2973, inlinedAt: !2895)
!2973 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 358, column: 6)
!2974 = !DILocation(line: 358, column: 11, scope: !2973, inlinedAt: !2895)
!2975 = !DILocation(line: 358, column: 6, scope: !2891, inlinedAt: !2895)
!2976 = !DILocation(line: 358, column: 26, scope: !2973, inlinedAt: !2895)
!2977 = !DILocation(line: 359, column: 6, scope: !2978, inlinedAt: !2895)
!2978 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 359, column: 6)
!2979 = !DILocation(line: 359, column: 11, scope: !2978, inlinedAt: !2895)
!2980 = !DILocation(line: 359, column: 6, scope: !2891, inlinedAt: !2895)
!2981 = !DILocation(line: 359, column: 26, scope: !2978, inlinedAt: !2895)
!2982 = !DILocation(line: 360, column: 6, scope: !2983, inlinedAt: !2895)
!2983 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 360, column: 6)
!2984 = !DILocation(line: 360, column: 11, scope: !2983, inlinedAt: !2895)
!2985 = !DILocation(line: 360, column: 6, scope: !2891, inlinedAt: !2895)
!2986 = !DILocation(line: 360, column: 26, scope: !2983, inlinedAt: !2895)
!2987 = !DILocation(line: 361, column: 6, scope: !2988, inlinedAt: !2895)
!2988 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 361, column: 6)
!2989 = !DILocation(line: 361, column: 11, scope: !2988, inlinedAt: !2895)
!2990 = !DILocation(line: 361, column: 6, scope: !2891, inlinedAt: !2895)
!2991 = !DILocation(line: 361, column: 26, scope: !2988, inlinedAt: !2895)
!2992 = !DILocation(line: 362, column: 6, scope: !2993, inlinedAt: !2895)
!2993 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 362, column: 6)
!2994 = !DILocation(line: 362, column: 11, scope: !2993, inlinedAt: !2895)
!2995 = !DILocation(line: 362, column: 6, scope: !2891, inlinedAt: !2895)
!2996 = !DILocation(line: 362, column: 26, scope: !2993, inlinedAt: !2895)
!2997 = !DILocation(line: 363, column: 6, scope: !2998, inlinedAt: !2895)
!2998 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 363, column: 6)
!2999 = !DILocation(line: 363, column: 11, scope: !2998, inlinedAt: !2895)
!3000 = !DILocation(line: 363, column: 6, scope: !2891, inlinedAt: !2895)
!3001 = !DILocation(line: 363, column: 26, scope: !2998, inlinedAt: !2895)
!3002 = !DILocation(line: 364, column: 6, scope: !3003, inlinedAt: !2895)
!3003 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 364, column: 6)
!3004 = !DILocation(line: 364, column: 11, scope: !3003, inlinedAt: !2895)
!3005 = !DILocation(line: 364, column: 6, scope: !2891, inlinedAt: !2895)
!3006 = !DILocation(line: 364, column: 26, scope: !3003, inlinedAt: !2895)
!3007 = !DILocation(line: 365, column: 6, scope: !3008, inlinedAt: !2895)
!3008 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 365, column: 6)
!3009 = !DILocation(line: 365, column: 11, scope: !3008, inlinedAt: !2895)
!3010 = !DILocation(line: 365, column: 6, scope: !2891, inlinedAt: !2895)
!3011 = !DILocation(line: 365, column: 26, scope: !3008, inlinedAt: !2895)
!3012 = !DILocation(line: 366, column: 6, scope: !3013, inlinedAt: !2895)
!3013 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 366, column: 6)
!3014 = !DILocation(line: 366, column: 11, scope: !3013, inlinedAt: !2895)
!3015 = !DILocation(line: 366, column: 6, scope: !2891, inlinedAt: !2895)
!3016 = !DILocation(line: 366, column: 26, scope: !3013, inlinedAt: !2895)
!3017 = !DILocation(line: 367, column: 6, scope: !3018, inlinedAt: !2895)
!3018 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 367, column: 6)
!3019 = !DILocation(line: 367, column: 11, scope: !3018, inlinedAt: !2895)
!3020 = !DILocation(line: 367, column: 6, scope: !2891, inlinedAt: !2895)
!3021 = !DILocation(line: 367, column: 26, scope: !3018, inlinedAt: !2895)
!3022 = !DILocation(line: 368, column: 6, scope: !3023, inlinedAt: !2895)
!3023 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 368, column: 6)
!3024 = !DILocation(line: 368, column: 11, scope: !3023, inlinedAt: !2895)
!3025 = !DILocation(line: 368, column: 6, scope: !2891, inlinedAt: !2895)
!3026 = !DILocation(line: 368, column: 26, scope: !3023, inlinedAt: !2895)
!3027 = !DILocation(line: 369, column: 6, scope: !3028, inlinedAt: !2895)
!3028 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 369, column: 6)
!3029 = !DILocation(line: 369, column: 11, scope: !3028, inlinedAt: !2895)
!3030 = !DILocation(line: 369, column: 6, scope: !2891, inlinedAt: !2895)
!3031 = !DILocation(line: 369, column: 26, scope: !3028, inlinedAt: !2895)
!3032 = !DILocation(line: 370, column: 6, scope: !3033, inlinedAt: !2895)
!3033 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 370, column: 6)
!3034 = !DILocation(line: 370, column: 11, scope: !3033, inlinedAt: !2895)
!3035 = !DILocation(line: 370, column: 6, scope: !2891, inlinedAt: !2895)
!3036 = !DILocation(line: 370, column: 26, scope: !3033, inlinedAt: !2895)
!3037 = !DILocation(line: 371, column: 6, scope: !3038, inlinedAt: !2895)
!3038 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 371, column: 6)
!3039 = !DILocation(line: 371, column: 11, scope: !3038, inlinedAt: !2895)
!3040 = !DILocation(line: 371, column: 6, scope: !2891, inlinedAt: !2895)
!3041 = !DILocation(line: 371, column: 26, scope: !3038, inlinedAt: !2895)
!3042 = !DILocation(line: 372, column: 6, scope: !3043, inlinedAt: !2895)
!3043 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 372, column: 6)
!3044 = !DILocation(line: 372, column: 11, scope: !3043, inlinedAt: !2895)
!3045 = !DILocation(line: 372, column: 6, scope: !2891, inlinedAt: !2895)
!3046 = !DILocation(line: 372, column: 26, scope: !3043, inlinedAt: !2895)
!3047 = !DILocation(line: 373, column: 6, scope: !3048, inlinedAt: !2895)
!3048 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 373, column: 6)
!3049 = !DILocation(line: 373, column: 11, scope: !3048, inlinedAt: !2895)
!3050 = !DILocation(line: 373, column: 6, scope: !2891, inlinedAt: !2895)
!3051 = !DILocation(line: 373, column: 26, scope: !3048, inlinedAt: !2895)
!3052 = !DILocation(line: 374, column: 6, scope: !3053, inlinedAt: !2895)
!3053 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 374, column: 6)
!3054 = !DILocation(line: 374, column: 11, scope: !3053, inlinedAt: !2895)
!3055 = !DILocation(line: 374, column: 6, scope: !2891, inlinedAt: !2895)
!3056 = !DILocation(line: 374, column: 26, scope: !3053, inlinedAt: !2895)
!3057 = !DILocation(line: 375, column: 6, scope: !3058, inlinedAt: !2895)
!3058 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 375, column: 6)
!3059 = !DILocation(line: 375, column: 11, scope: !3058, inlinedAt: !2895)
!3060 = !DILocation(line: 375, column: 6, scope: !2891, inlinedAt: !2895)
!3061 = !DILocation(line: 375, column: 27, scope: !3058, inlinedAt: !2895)
!3062 = !DILocation(line: 376, column: 6, scope: !3063, inlinedAt: !2895)
!3063 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 376, column: 6)
!3064 = !DILocation(line: 376, column: 11, scope: !3063, inlinedAt: !2895)
!3065 = !DILocation(line: 376, column: 6, scope: !2891, inlinedAt: !2895)
!3066 = !DILocation(line: 376, column: 32, scope: !3063, inlinedAt: !2895)
!3067 = !DILocation(line: 377, column: 6, scope: !3068, inlinedAt: !2895)
!3068 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 377, column: 6)
!3069 = !DILocation(line: 377, column: 11, scope: !3068, inlinedAt: !2895)
!3070 = !DILocation(line: 377, column: 6, scope: !2891, inlinedAt: !2895)
!3071 = !DILocation(line: 377, column: 32, scope: !3068, inlinedAt: !2895)
!3072 = !DILocation(line: 378, column: 6, scope: !3073, inlinedAt: !2895)
!3073 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 378, column: 6)
!3074 = !DILocation(line: 378, column: 11, scope: !3073, inlinedAt: !2895)
!3075 = !DILocation(line: 378, column: 6, scope: !2891, inlinedAt: !2895)
!3076 = !DILocation(line: 378, column: 32, scope: !3073, inlinedAt: !2895)
!3077 = !DILocation(line: 379, column: 6, scope: !3078, inlinedAt: !2895)
!3078 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 379, column: 6)
!3079 = !DILocation(line: 379, column: 11, scope: !3078, inlinedAt: !2895)
!3080 = !DILocation(line: 379, column: 6, scope: !2891, inlinedAt: !2895)
!3081 = !DILocation(line: 379, column: 33, scope: !3078, inlinedAt: !2895)
!3082 = !DILocation(line: 380, column: 6, scope: !3083, inlinedAt: !2895)
!3083 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 380, column: 6)
!3084 = !DILocation(line: 380, column: 11, scope: !3083, inlinedAt: !2895)
!3085 = !DILocation(line: 380, column: 6, scope: !2891, inlinedAt: !2895)
!3086 = !DILocation(line: 380, column: 33, scope: !3083, inlinedAt: !2895)
!3087 = !DILocation(line: 381, column: 6, scope: !3088, inlinedAt: !2895)
!3088 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 381, column: 6)
!3089 = !DILocation(line: 381, column: 11, scope: !3088, inlinedAt: !2895)
!3090 = !DILocation(line: 381, column: 6, scope: !2891, inlinedAt: !2895)
!3091 = !DILocation(line: 381, column: 33, scope: !3088, inlinedAt: !2895)
!3092 = !DILocation(line: 382, column: 2, scope: !3093, inlinedAt: !2895)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !2266, line: 382, column: 2)
!3094 = distinct !DILexicalBlock(scope: !2891, file: !2266, line: 382, column: 2)
!3095 = !{i32 -2144235507, i32 -2144235478, i32 -2144235432, i32 -2144235374, i32 -2144235320, i32 -2144235266, i32 -2144235211, i32 -2144235180}
!3096 = !DILocation(line: 382, column: 2, scope: !3097, inlinedAt: !2895)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !2266, line: 382, column: 2)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !2266, line: 382, column: 2)
!3099 = !{i32 -2144234737, i32 -2144234730, i32 -2144234676, i32 -2144234645, i32 -2144234615}
!3100 = !DILocation(line: 382, column: 2, scope: !3098, inlinedAt: !2895)
!3101 = !DILocation(line: 386, column: 1, scope: !2891, inlinedAt: !2895)
!3102 = !DILocation(line: 547, column: 9, scope: !2874, inlinedAt: !2877)
!3103 = !DILocation(line: 549, column: 8, scope: !3104, inlinedAt: !2877)
!3104 = distinct !DILexicalBlock(scope: !2874, file: !2266, line: 549, column: 7)
!3105 = !DILocation(line: 549, column: 7, scope: !2874, inlinedAt: !2877)
!3106 = !DILocation(line: 550, column: 4, scope: !3104, inlinedAt: !2877)
!3107 = !DILocation(line: 553, column: 33, scope: !2874, inlinedAt: !2877)
!3108 = !DILocation(line: 325, column: 6, scope: !3109, inlinedAt: !2889)
!3109 = distinct !DILexicalBlock(scope: !2885, file: !2266, line: 325, column: 6)
!3110 = !DILocation(line: 325, column: 6, scope: !2885, inlinedAt: !2889)
!3111 = !DILocation(line: 326, column: 3, scope: !3109, inlinedAt: !2889)
!3112 = !DILocation(line: 332, column: 9, scope: !2885, inlinedAt: !2889)
!3113 = !DILocation(line: 332, column: 15, scope: !2885, inlinedAt: !2889)
!3114 = !DILocation(line: 332, column: 2, scope: !2885, inlinedAt: !2889)
!3115 = !DILocation(line: 336, column: 1, scope: !2885, inlinedAt: !2889)
!3116 = !DILocation(line: 553, column: 5, scope: !2874, inlinedAt: !2877)
!3117 = !DILocation(line: 553, column: 41, scope: !2874, inlinedAt: !2877)
!3118 = !DILocation(line: 554, column: 5, scope: !2874, inlinedAt: !2877)
!3119 = !DILocation(line: 554, column: 12, scope: !2874, inlinedAt: !2877)
!3120 = !DILocation(line: 448, column: 31, scope: !2869, inlinedAt: !2873)
!3121 = !DILocation(line: 448, column: 34, scope: !2869, inlinedAt: !2873)
!3122 = !DILocation(line: 448, column: 14, scope: !2869, inlinedAt: !2873)
!3123 = !DILocation(line: 450, column: 22, scope: !2869, inlinedAt: !2873)
!3124 = !DILocation(line: 450, column: 25, scope: !2869, inlinedAt: !2873)
!3125 = !DILocation(line: 450, column: 30, scope: !2869, inlinedAt: !2873)
!3126 = !DILocation(line: 450, column: 36, scope: !2869, inlinedAt: !2873)
!3127 = !DILocation(line: 450, column: 8, scope: !2869, inlinedAt: !2873)
!3128 = !DILocation(line: 450, column: 6, scope: !2869, inlinedAt: !2873)
!3129 = !DILocation(line: 451, column: 9, scope: !2869, inlinedAt: !2873)
!3130 = !DILocation(line: 552, column: 3, scope: !2874, inlinedAt: !2877)
!3131 = !DILocation(line: 557, column: 19, scope: !2876, inlinedAt: !2877)
!3132 = !DILocation(line: 557, column: 25, scope: !2876, inlinedAt: !2877)
!3133 = !DILocation(line: 557, column: 9, scope: !2876, inlinedAt: !2877)
!3134 = !DILocation(line: 557, column: 2, scope: !2876, inlinedAt: !2877)
!3135 = !DILocation(line: 558, column: 1, scope: !2876, inlinedAt: !2877)
!3136 = !DILocation(line: 664, column: 2, scope: !2865)
!3137 = distinct !DISubprogram(name: "add_dts_thermal_zone", scope: !3, file: !3, line: 283, type: !3138, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!67, !67, !2357, !975, !67, !67}
!3140 = !DILocalVariable(name: "id", arg: 1, scope: !3137, file: !3, line: 283, type: !67)
!3141 = !DILocation(line: 283, column: 37, scope: !3137)
!3142 = !DILocalVariable(name: "dts", arg: 2, scope: !3137, file: !3, line: 283, type: !2357)
!3143 = !DILocation(line: 283, column: 76, scope: !3137)
!3144 = !DILocalVariable(name: "notification_support", arg: 3, scope: !3137, file: !3, line: 284, type: !975)
!3145 = !DILocation(line: 284, column: 10, scope: !3137)
!3146 = !DILocalVariable(name: "trip_cnt", arg: 4, scope: !3137, file: !3, line: 284, type: !67)
!3147 = !DILocation(line: 284, column: 36, scope: !3137)
!3148 = !DILocalVariable(name: "read_only_trip_cnt", arg: 5, scope: !3137, file: !3, line: 285, type: !67)
!3149 = !DILocation(line: 285, column: 9, scope: !3137)
!3150 = !DILocalVariable(name: "name", scope: !3137, file: !3, line: 287, type: !3151)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 80, elements: !3152)
!3152 = !{!3153}
!3153 = !DISubrange(count: 10)
!3154 = !DILocation(line: 287, column: 7, scope: !3137)
!3155 = !DILocalVariable(name: "trip", scope: !3137, file: !3, line: 288, type: !189)
!3156 = !DILocation(line: 288, column: 16, scope: !3137)
!3157 = !DILocalVariable(name: "trip_count", scope: !3137, file: !3, line: 289, type: !67)
!3158 = !DILocation(line: 289, column: 6, scope: !3137)
!3159 = !DILocalVariable(name: "trip_mask", scope: !3137, file: !3, line: 290, type: !67)
!3160 = !DILocation(line: 290, column: 6, scope: !3137)
!3161 = !DILocalVariable(name: "writable_trip_cnt", scope: !3137, file: !3, line: 291, type: !67)
!3162 = !DILocation(line: 291, column: 6, scope: !3137)
!3163 = !DILocalVariable(name: "ptps", scope: !3137, file: !3, line: 292, type: !189)
!3164 = !DILocation(line: 292, column: 16, scope: !3137)
!3165 = !DILocalVariable(name: "store_ptps", scope: !3137, file: !3, line: 293, type: !11)
!3166 = !DILocation(line: 293, column: 6, scope: !3137)
!3167 = !DILocalVariable(name: "i", scope: !3137, file: !3, line: 294, type: !189)
!3168 = !DILocation(line: 294, column: 16, scope: !3137)
!3169 = !DILocalVariable(name: "ret", scope: !3137, file: !3, line: 295, type: !67)
!3170 = !DILocation(line: 295, column: 6, scope: !3137)
!3171 = !DILocation(line: 299, column: 32, scope: !3137)
!3172 = !DILocation(line: 299, column: 37, scope: !3137)
!3173 = !DILocation(line: 298, column: 8, scope: !3137)
!3174 = !DILocation(line: 298, column: 6, scope: !3137)
!3175 = !DILocation(line: 300, column: 6, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 300, column: 6)
!3177 = !DILocation(line: 300, column: 6, scope: !3137)
!3178 = !DILocation(line: 301, column: 3, scope: !3176)
!3179 = !DILocation(line: 303, column: 12, scope: !3137)
!3180 = !DILocation(line: 303, column: 2, scope: !3137)
!3181 = !DILocation(line: 303, column: 7, scope: !3137)
!3182 = !DILocation(line: 303, column: 10, scope: !3137)
!3183 = !DILocation(line: 304, column: 6, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 304, column: 6)
!3185 = !DILocation(line: 304, column: 6, scope: !3137)
!3186 = !DILocalVariable(name: "__UNIQUE_ID___x161", scope: !3187, file: !3, line: 305, type: !67)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 305, column: 16)
!3188 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 304, column: 28)
!3189 = !DILocation(line: 305, column: 16, scope: !3187)
!3190 = !DILocalVariable(name: "__UNIQUE_ID___y162", scope: !3187, file: !3, line: 305, type: !67)
!3191 = !DILocation(line: 305, column: 14, scope: !3188)
!3192 = !DILocation(line: 306, column: 23, scope: !3188)
!3193 = !DILocation(line: 306, column: 36, scope: !3188)
!3194 = !DILocation(line: 306, column: 34, scope: !3188)
!3195 = !DILocation(line: 306, column: 21, scope: !3188)
!3196 = !DILocation(line: 307, column: 15, scope: !3188)
!3197 = !DILocation(line: 307, column: 13, scope: !3188)
!3198 = !DILocation(line: 308, column: 2, scope: !3188)
!3199 = !DILocation(line: 311, column: 8, scope: !3137)
!3200 = !DILocation(line: 311, column: 6, scope: !3137)
!3201 = !DILocation(line: 313, column: 6, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 313, column: 6)
!3203 = !DILocation(line: 313, column: 6, scope: !3137)
!3204 = !DILocation(line: 314, column: 13, scope: !3202)
!3205 = !DILocation(line: 314, column: 3, scope: !3202)
!3206 = !DILocation(line: 316, column: 10, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 315, column: 7)
!3208 = !DILocation(line: 316, column: 8, scope: !3207)
!3209 = !DILocation(line: 317, column: 3, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 317, column: 3)
!3211 = !DILocation(line: 317, column: 3, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 317, column: 3)
!3213 = !DILocation(line: 318, column: 18, scope: !3212)
!3214 = !DILocation(line: 318, column: 17, scope: !3212)
!3215 = !DILocation(line: 318, column: 14, scope: !3212)
!3216 = !DILocation(line: 318, column: 4, scope: !3212)
!3217 = distinct !{!3217, !3209, !3218}
!3218 = !DILocation(line: 318, column: 18, scope: !3210)
!3219 = !DILocation(line: 320, column: 19, scope: !3137)
!3220 = !DILocation(line: 320, column: 2, scope: !3137)
!3221 = !DILocation(line: 320, column: 7, scope: !3137)
!3222 = !DILocation(line: 320, column: 17, scope: !3137)
!3223 = !DILocation(line: 321, column: 20, scope: !3137)
!3224 = !DILocation(line: 321, column: 2, scope: !3137)
!3225 = !DILocation(line: 321, column: 7, scope: !3137)
!3226 = !DILocation(line: 321, column: 18, scope: !3137)
!3227 = !DILocation(line: 322, column: 11, scope: !3137)
!3228 = !DILocation(line: 322, column: 44, scope: !3137)
!3229 = !DILocation(line: 322, column: 2, scope: !3137)
!3230 = !DILocation(line: 323, column: 44, scope: !3137)
!3231 = !DILocation(line: 324, column: 9, scope: !3137)
!3232 = !DILocation(line: 325, column: 9, scope: !3137)
!3233 = !DILocation(line: 326, column: 9, scope: !3137)
!3234 = !DILocation(line: 323, column: 15, scope: !3137)
!3235 = !DILocation(line: 323, column: 2, scope: !3137)
!3236 = !DILocation(line: 323, column: 7, scope: !3137)
!3237 = !DILocation(line: 323, column: 13, scope: !3137)
!3238 = !DILocation(line: 328, column: 13, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 328, column: 6)
!3240 = !DILocation(line: 328, column: 18, scope: !3239)
!3241 = !DILocation(line: 328, column: 6, scope: !3239)
!3242 = !DILocation(line: 328, column: 6, scope: !3137)
!3243 = !DILocation(line: 329, column: 17, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3239, file: !3, line: 328, column: 26)
!3245 = !DILocation(line: 329, column: 22, scope: !3244)
!3246 = !DILocation(line: 329, column: 9, scope: !3244)
!3247 = !DILocation(line: 329, column: 7, scope: !3244)
!3248 = !DILocation(line: 330, column: 3, scope: !3244)
!3249 = !DILocation(line: 332, column: 35, scope: !3137)
!3250 = !DILocation(line: 332, column: 40, scope: !3137)
!3251 = !DILocation(line: 332, column: 8, scope: !3137)
!3252 = !DILocation(line: 332, column: 6, scope: !3137)
!3253 = !DILocation(line: 333, column: 6, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 333, column: 6)
!3255 = !DILocation(line: 333, column: 6, scope: !3137)
!3256 = !DILocation(line: 334, column: 3, scope: !3254)
!3257 = !DILocation(line: 336, column: 23, scope: !3137)
!3258 = !DILocation(line: 336, column: 8, scope: !3137)
!3259 = !DILocation(line: 336, column: 6, scope: !3137)
!3260 = !DILocation(line: 337, column: 6, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 337, column: 6)
!3262 = !DILocation(line: 337, column: 6, scope: !3137)
!3263 = !DILocation(line: 338, column: 3, scope: !3261)
!3264 = !DILocation(line: 340, column: 2, scope: !3137)
!3265 = !DILabel(scope: !3137, name: "err_enable", file: !3, line: 341)
!3266 = !DILocation(line: 341, column: 1, scope: !3137)
!3267 = !DILocation(line: 342, column: 33, scope: !3137)
!3268 = !DILocation(line: 342, column: 38, scope: !3137)
!3269 = !DILocation(line: 342, column: 2, scope: !3137)
!3270 = !DILabel(scope: !3137, name: "err_ret", file: !3, line: 343)
!3271 = !DILocation(line: 343, column: 1, scope: !3137)
!3272 = !DILocation(line: 344, column: 9, scope: !3137)
!3273 = !DILocation(line: 344, column: 2, scope: !3137)
!3274 = !DILocation(line: 345, column: 1, scope: !3137)
!3275 = distinct !DISubprogram(name: "remove_dts_thermal_zone", scope: !3, file: !3, line: 274, type: !3276, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !2357}
!3278 = !DILocalVariable(name: "dts", arg: 1, scope: !3275, file: !3, line: 274, type: !2357)
!3279 = !DILocation(line: 274, column: 72, scope: !3275)
!3280 = !DILocation(line: 276, column: 6, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 276, column: 6)
!3282 = !DILocation(line: 276, column: 6, scope: !3275)
!3283 = !DILocation(line: 278, column: 34, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 276, column: 11)
!3285 = !DILocation(line: 278, column: 39, scope: !3284)
!3286 = !DILocation(line: 277, column: 3, scope: !3284)
!3287 = !DILocation(line: 279, column: 34, scope: !3284)
!3288 = !DILocation(line: 279, column: 39, scope: !3284)
!3289 = !DILocation(line: 279, column: 3, scope: !3284)
!3290 = !DILocation(line: 280, column: 2, scope: !3284)
!3291 = !DILocation(line: 281, column: 1, scope: !3275)
!3292 = distinct !DISubprogram(name: "intel_soc_dts_iosf_exit", scope: !3, file: !3, line: 464, type: !2509, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3293 = !DILocalVariable(name: "sensors", arg: 1, scope: !3292, file: !3, line: 464, type: !6)
!3294 = !DILocation(line: 464, column: 60, scope: !3292)
!3295 = !DILocalVariable(name: "i", scope: !3292, file: !3, line: 466, type: !67)
!3296 = !DILocation(line: 466, column: 6, scope: !3292)
!3297 = !DILocation(line: 468, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 468, column: 2)
!3299 = !DILocation(line: 468, column: 7, scope: !3298)
!3300 = !DILocation(line: 468, column: 14, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 468, column: 2)
!3302 = !DILocation(line: 468, column: 16, scope: !3301)
!3303 = !DILocation(line: 468, column: 2, scope: !3298)
!3304 = !DILocation(line: 469, column: 21, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 468, column: 44)
!3306 = !DILocation(line: 469, column: 30, scope: !3305)
!3307 = !DILocation(line: 469, column: 38, scope: !3305)
!3308 = !DILocation(line: 469, column: 3, scope: !3305)
!3309 = !DILocation(line: 470, column: 21, scope: !3305)
!3310 = !DILocation(line: 470, column: 30, scope: !3305)
!3311 = !DILocation(line: 470, column: 38, scope: !3305)
!3312 = !DILocation(line: 470, column: 3, scope: !3305)
!3313 = !DILocation(line: 471, column: 28, scope: !3305)
!3314 = !DILocation(line: 471, column: 37, scope: !3305)
!3315 = !DILocation(line: 471, column: 45, scope: !3305)
!3316 = !DILocation(line: 471, column: 3, scope: !3305)
!3317 = !DILocation(line: 472, column: 2, scope: !3305)
!3318 = !DILocation(line: 468, column: 39, scope: !3301)
!3319 = !DILocation(line: 468, column: 2, scope: !3301)
!3320 = distinct !{!3320, !3303, !3321}
!3321 = !DILocation(line: 472, column: 2, scope: !3298)
!3322 = !DILocation(line: 473, column: 8, scope: !3292)
!3323 = !DILocation(line: 473, column: 2, scope: !3292)
!3324 = !DILocation(line: 474, column: 1, scope: !3292)
!3325 = distinct !DISubprogram(name: "bitmap_set_value8", scope: !3326, file: !3326, line: 572, type: !3327, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3326 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !2121, !189, !189}
!3329 = !DILocalVariable(name: "map", arg: 1, scope: !3325, file: !3326, line: 572, type: !2121)
!3330 = !DILocation(line: 572, column: 53, scope: !3325)
!3331 = !DILocalVariable(name: "value", arg: 2, scope: !3325, file: !3326, line: 572, type: !189)
!3332 = !DILocation(line: 572, column: 72, scope: !3325)
!3333 = !DILocalVariable(name: "start", arg: 3, scope: !3325, file: !3326, line: 573, type: !189)
!3334 = !DILocation(line: 573, column: 24, scope: !3325)
!3335 = !DILocalVariable(name: "index", scope: !3325, file: !3326, line: 575, type: !3336)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!3337 = !DILocation(line: 575, column: 15, scope: !3325)
!3338 = !DILocation(line: 575, column: 23, scope: !3325)
!3339 = !DILocalVariable(name: "offset", scope: !3325, file: !3326, line: 576, type: !3340)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!3341 = !DILocation(line: 576, column: 22, scope: !3325)
!3342 = !DILocation(line: 576, column: 31, scope: !3325)
!3343 = !DILocation(line: 576, column: 37, scope: !3325)
!3344 = !DILocation(line: 578, column: 28, scope: !3325)
!3345 = !DILocation(line: 578, column: 25, scope: !3325)
!3346 = !DILocation(line: 578, column: 16, scope: !3325)
!3347 = !DILocation(line: 578, column: 2, scope: !3325)
!3348 = !DILocation(line: 578, column: 6, scope: !3325)
!3349 = !DILocation(line: 578, column: 13, scope: !3325)
!3350 = !DILocation(line: 579, column: 16, scope: !3325)
!3351 = !DILocation(line: 579, column: 25, scope: !3325)
!3352 = !DILocation(line: 579, column: 22, scope: !3325)
!3353 = !DILocation(line: 579, column: 2, scope: !3325)
!3354 = !DILocation(line: 579, column: 6, scope: !3325)
!3355 = !DILocation(line: 579, column: 13, scope: !3325)
!3356 = !DILocation(line: 580, column: 1, scope: !3325)
!3357 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2643, file: !2643, line: 646, type: !2644, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3358 = !DILocalVariable(name: "__ret", scope: !3359, file: !2643, line: 648, type: !189)
!3359 = distinct !DILexicalBlock(scope: !3357, file: !2643, line: 648, column: 9)
!3360 = !DILocation(line: 648, column: 9, scope: !3359)
!3361 = !DILocalVariable(name: "__edi", scope: !3359, file: !2643, line: 648, type: !189)
!3362 = !DILocalVariable(name: "__esi", scope: !3359, file: !2643, line: 648, type: !189)
!3363 = !DILocalVariable(name: "__edx", scope: !3359, file: !2643, line: 648, type: !189)
!3364 = !DILocalVariable(name: "__ecx", scope: !3359, file: !2643, line: 648, type: !189)
!3365 = !DILocalVariable(name: "__eax", scope: !3359, file: !2643, line: 648, type: !189)
!3366 = !DILocation(line: 648, column: 9, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !2643, line: 648, column: 9)
!3368 = distinct !DILexicalBlock(scope: !3359, file: !2643, line: 648, column: 9)
!3369 = !{i32 -2145779182, i32 -2145776867, i32 -2145776633, i32 -2145776582, i32 -2145776554, i32 -2145776529, i32 -2145776845, i32 -2145776832, i32 -2145776394, i32 -2145776275, i32 -2145776740, i32 -2145776713, i32 -2145776685, i32 -2145776655}
!3370 = !DILocalVariable(name: "__mask", scope: !3371, file: !2643, line: 648, type: !189)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !2643, line: 648, column: 9)
!3372 = !DILocation(line: 648, column: 9, scope: !3371)
!3373 = !DILocation(line: 648, column: 9, scope: !3368)
!3374 = !DILocation(line: 648, column: 2, scope: !3357)
!3375 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2643, file: !2643, line: 656, type: !3376, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{null}
!3378 = !DILocalVariable(name: "__edi", scope: !3379, file: !2643, line: 658, type: !189)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !2643, line: 658, column: 2)
!3380 = !DILocation(line: 658, column: 2, scope: !3379)
!3381 = !DILocalVariable(name: "__esi", scope: !3379, file: !2643, line: 658, type: !189)
!3382 = !DILocalVariable(name: "__edx", scope: !3379, file: !2643, line: 658, type: !189)
!3383 = !DILocalVariable(name: "__ecx", scope: !3379, file: !2643, line: 658, type: !189)
!3384 = !DILocalVariable(name: "__eax", scope: !3379, file: !2643, line: 658, type: !189)
!3385 = !{i32 -2145772088, i32 -2145771356, i32 -2145771122, i32 -2145771071, i32 -2145771043, i32 -2145771018, i32 -2145771334, i32 -2145771321, i32 -2145770883, i32 -2145770764, i32 -2145771229, i32 -2145771202, i32 -2145771174, i32 -2145771144}
!3386 = !DILocation(line: 659, column: 1, scope: !3375)
!3387 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !2643, file: !2643, line: 651, type: !3388, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !189}
!3390 = !DILocalVariable(name: "f", arg: 1, scope: !3387, file: !2643, line: 651, type: !189)
!3391 = !DILocation(line: 651, column: 65, scope: !3387)
!3392 = !DILocalVariable(name: "__edi", scope: !3393, file: !2643, line: 653, type: !189)
!3393 = distinct !DILexicalBlock(scope: !3387, file: !2643, line: 653, column: 2)
!3394 = !DILocation(line: 653, column: 2, scope: !3393)
!3395 = !DILocalVariable(name: "__esi", scope: !3393, file: !2643, line: 653, type: !189)
!3396 = !DILocalVariable(name: "__edx", scope: !3393, file: !2643, line: 653, type: !189)
!3397 = !DILocalVariable(name: "__ecx", scope: !3393, file: !2643, line: 653, type: !189)
!3398 = !DILocalVariable(name: "__eax", scope: !3393, file: !2643, line: 653, type: !189)
!3399 = !{i32 -2145774715, i32 -2145773965, i32 -2145773731, i32 -2145773680, i32 -2145773652, i32 -2145773627, i32 -2145773943, i32 -2145773930, i32 -2145773492, i32 -2145773373, i32 -2145773838, i32 -2145773811, i32 -2145773783, i32 -2145773753}
!3400 = !DILocation(line: 654, column: 1, scope: !3387)
!3401 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !2643, file: !2643, line: 174, type: !3402, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!258, !15, !722}
!3404 = !DILocalVariable(name: "msr", arg: 1, scope: !3401, file: !2643, line: 174, type: !15)
!3405 = !DILocation(line: 174, column: 51, scope: !3401)
!3406 = !DILocalVariable(name: "err", arg: 2, scope: !3401, file: !2643, line: 174, type: !722)
!3407 = !DILocation(line: 174, column: 61, scope: !3401)
!3408 = !DILocalVariable(name: "__ret", scope: !3409, file: !2643, line: 176, type: !258)
!3409 = distinct !DILexicalBlock(scope: !3401, file: !2643, line: 176, column: 9)
!3410 = !DILocation(line: 176, column: 9, scope: !3409)
!3411 = !DILocalVariable(name: "__edi", scope: !3409, file: !2643, line: 176, type: !189)
!3412 = !DILocalVariable(name: "__esi", scope: !3409, file: !2643, line: 176, type: !189)
!3413 = !DILocalVariable(name: "__edx", scope: !3409, file: !2643, line: 176, type: !189)
!3414 = !DILocalVariable(name: "__ecx", scope: !3409, file: !2643, line: 176, type: !189)
!3415 = !DILocalVariable(name: "__eax", scope: !3409, file: !2643, line: 176, type: !189)
!3416 = !DILocation(line: 176, column: 9, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !2643, line: 176, column: 9)
!3418 = distinct !DILexicalBlock(scope: !3409, file: !2643, line: 176, column: 9)
!3419 = !{i32 -2145967586, i32 -2145965075, i32 -2145964841, i32 -2145964790, i32 -2145964762, i32 -2145964737, i32 -2145965053, i32 -2145965040, i32 -2145964602, i32 -2145964483, i32 -2145964948, i32 -2145964921, i32 -2145964893, i32 -2145964863}
!3420 = !DILocalVariable(name: "__mask", scope: !3421, file: !2643, line: 176, type: !189)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !2643, line: 176, column: 9)
!3422 = !DILocation(line: 176, column: 9, scope: !3421)
!3423 = !DILocation(line: 176, column: 9, scope: !3418)
!3424 = !DILocation(line: 176, column: 2, scope: !3401)
!3425 = distinct !DISubprogram(name: "get_order", scope: !3426, file: !3426, line: 29, type: !3427, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3426 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!67, !189}
!3429 = !DILocalVariable(name: "x", arg: 1, scope: !3430, file: !3431, line: 366, type: !259)
!3430 = distinct !DISubprogram(name: "fls64", scope: !3431, file: !3431, line: 366, type: !3432, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3431 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!67, !259}
!3434 = !DILocation(line: 366, column: 40, scope: !3430, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 46, column: 9, scope: !3425)
!3436 = !DILocalVariable(name: "bitpos", scope: !3430, file: !3431, line: 368, type: !67)
!3437 = !DILocation(line: 368, column: 6, scope: !3430, inlinedAt: !3435)
!3438 = !DILocalVariable(name: "size", arg: 1, scope: !3425, file: !3426, line: 29, type: !189)
!3439 = !DILocation(line: 29, column: 63, scope: !3425)
!3440 = !DILocation(line: 31, column: 27, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3425, file: !3426, line: 31, column: 6)
!3442 = !DILocation(line: 31, column: 6, scope: !3441)
!3443 = !DILocation(line: 31, column: 6, scope: !3425)
!3444 = !DILocation(line: 32, column: 8, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !3426, line: 32, column: 7)
!3446 = distinct !DILexicalBlock(scope: !3441, file: !3426, line: 31, column: 34)
!3447 = !DILocation(line: 32, column: 7, scope: !3446)
!3448 = !DILocation(line: 33, column: 4, scope: !3445)
!3449 = !DILocation(line: 35, column: 7, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3446, file: !3426, line: 35, column: 7)
!3451 = !DILocation(line: 35, column: 12, scope: !3450)
!3452 = !DILocation(line: 35, column: 7, scope: !3446)
!3453 = !DILocation(line: 36, column: 4, scope: !3450)
!3454 = !DILocation(line: 38, column: 10, scope: !3446)
!3455 = !DILocation(line: 38, column: 28, scope: !3446)
!3456 = !DILocation(line: 38, column: 41, scope: !3446)
!3457 = !DILocation(line: 38, column: 3, scope: !3446)
!3458 = !DILocation(line: 41, column: 6, scope: !3425)
!3459 = !DILocation(line: 42, column: 7, scope: !3425)
!3460 = !DILocation(line: 46, column: 15, scope: !3425)
!3461 = !DILocation(line: 374, column: 2, scope: !3430, inlinedAt: !3435)
!3462 = !DILocation(line: 376, column: 14, scope: !3430, inlinedAt: !3435)
!3463 = !{i32 197332}
!3464 = !DILocation(line: 377, column: 9, scope: !3430, inlinedAt: !3435)
!3465 = !DILocation(line: 377, column: 16, scope: !3430, inlinedAt: !3435)
!3466 = !DILocation(line: 46, column: 2, scope: !3425)
!3467 = !DILocation(line: 48, column: 1, scope: !3425)
!3468 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3469, file: !3469, line: 30, type: !3470, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3469 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!67, !258}
!3472 = !DILocation(line: 366, column: 40, scope: !3430, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 32, column: 9, scope: !3468)
!3474 = !DILocation(line: 368, column: 6, scope: !3430, inlinedAt: !3473)
!3475 = !DILocalVariable(name: "n", arg: 1, scope: !3468, file: !3469, line: 30, type: !258)
!3476 = !DILocation(line: 30, column: 21, scope: !3468)
!3477 = !DILocation(line: 32, column: 15, scope: !3468)
!3478 = !DILocation(line: 374, column: 2, scope: !3430, inlinedAt: !3473)
!3479 = !DILocation(line: 376, column: 14, scope: !3430, inlinedAt: !3473)
!3480 = !DILocation(line: 377, column: 9, scope: !3430, inlinedAt: !3473)
!3481 = !DILocation(line: 377, column: 16, scope: !3430, inlinedAt: !3473)
!3482 = !DILocation(line: 32, column: 18, scope: !3468)
!3483 = !DILocation(line: 32, column: 2, scope: !3468)
!3484 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1094, file: !1094, line: 137, type: !3485, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!213, !1025, !1371, !186, !1440}
!3487 = !DILocalVariable(name: "s", arg: 1, scope: !3484, file: !1094, line: 137, type: !1025)
!3488 = !DILocation(line: 137, column: 54, scope: !3484)
!3489 = !DILocalVariable(name: "object", arg: 2, scope: !3484, file: !1094, line: 137, type: !1371)
!3490 = !DILocation(line: 137, column: 69, scope: !3484)
!3491 = !DILocalVariable(name: "size", arg: 3, scope: !3484, file: !1094, line: 138, type: !186)
!3492 = !DILocation(line: 138, column: 12, scope: !3484)
!3493 = !DILocalVariable(name: "flags", arg: 4, scope: !3484, file: !1094, line: 138, type: !1440)
!3494 = !DILocation(line: 138, column: 24, scope: !3484)
!3495 = !DILocation(line: 140, column: 17, scope: !3484)
!3496 = !DILocation(line: 140, column: 2, scope: !3484)
!3497 = distinct !DISubprogram(name: "IS_ERR", scope: !2811, file: !2811, line: 34, type: !3498, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!975, !1371}
!3500 = !DILocalVariable(name: "ptr", arg: 1, scope: !3497, file: !2811, line: 34, type: !1371)
!3501 = !DILocation(line: 34, column: 60, scope: !3497)
!3502 = !DILocation(line: 36, column: 9, scope: !3497)
!3503 = !DILocation(line: 36, column: 2, scope: !3497)
!3504 = distinct !DISubprogram(name: "PTR_ERR", scope: !2811, file: !2811, line: 29, type: !3505, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!174, !1371}
!3507 = !DILocalVariable(name: "ptr", arg: 1, scope: !3504, file: !2811, line: 29, type: !1371)
!3508 = !DILocation(line: 29, column: 61, scope: !3504)
!3509 = !DILocation(line: 31, column: 16, scope: !3504)
!3510 = !DILocation(line: 31, column: 9, scope: !3504)
!3511 = !DILocation(line: 31, column: 2, scope: !3504)
!3512 = distinct !DISubprogram(name: "soc_dts_enable", scope: !3, file: !3, line: 253, type: !3513, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!67, !67}
!3515 = !DILocalVariable(name: "id", arg: 1, scope: !3512, file: !3, line: 253, type: !67)
!3516 = !DILocation(line: 253, column: 31, scope: !3512)
!3517 = !DILocalVariable(name: "out", scope: !3512, file: !3, line: 255, type: !11)
!3518 = !DILocation(line: 255, column: 6, scope: !3512)
!3519 = !DILocalVariable(name: "ret", scope: !3512, file: !3, line: 256, type: !67)
!3520 = !DILocation(line: 256, column: 6, scope: !3512)
!3521 = !DILocation(line: 258, column: 8, scope: !3512)
!3522 = !DILocation(line: 258, column: 6, scope: !3512)
!3523 = !DILocation(line: 260, column: 6, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 260, column: 6)
!3525 = !DILocation(line: 260, column: 6, scope: !3512)
!3526 = !DILocation(line: 261, column: 10, scope: !3524)
!3527 = !DILocation(line: 261, column: 3, scope: !3524)
!3528 = !DILocation(line: 263, column: 8, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 263, column: 6)
!3530 = !DILocation(line: 263, column: 14, scope: !3529)
!3531 = !DILocation(line: 263, column: 12, scope: !3529)
!3532 = !DILocation(line: 263, column: 6, scope: !3512)
!3533 = !DILocation(line: 264, column: 10, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 263, column: 24)
!3535 = !DILocation(line: 264, column: 7, scope: !3534)
!3536 = !DILocation(line: 266, column: 33, scope: !3534)
!3537 = !DILocation(line: 265, column: 9, scope: !3534)
!3538 = !DILocation(line: 265, column: 7, scope: !3534)
!3539 = !DILocation(line: 267, column: 7, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 267, column: 7)
!3541 = !DILocation(line: 267, column: 7, scope: !3534)
!3542 = !DILocation(line: 268, column: 11, scope: !3540)
!3543 = !DILocation(line: 268, column: 4, scope: !3540)
!3544 = !DILocation(line: 269, column: 2, scope: !3534)
!3545 = !DILocation(line: 271, column: 9, scope: !3512)
!3546 = !DILocation(line: 271, column: 2, scope: !3512)
!3547 = !DILocation(line: 272, column: 1, scope: !3512)
!3548 = distinct !DISubprogram(name: "sys_get_curr_temp", scope: !3, file: !3, line: 223, type: !2146, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3549 = !DILocalVariable(name: "tzd", arg: 1, scope: !3548, file: !3, line: 223, type: !83)
!3550 = !DILocation(line: 223, column: 58, scope: !3548)
!3551 = !DILocalVariable(name: "temp", arg: 2, scope: !3548, file: !3, line: 224, type: !722)
!3552 = !DILocation(line: 224, column: 14, scope: !3548)
!3553 = !DILocalVariable(name: "status", scope: !3548, file: !3, line: 226, type: !67)
!3554 = !DILocation(line: 226, column: 6, scope: !3548)
!3555 = !DILocalVariable(name: "out", scope: !3548, file: !3, line: 227, type: !11)
!3556 = !DILocation(line: 227, column: 6, scope: !3548)
!3557 = !DILocalVariable(name: "dts", scope: !3548, file: !3, line: 228, type: !2357)
!3558 = !DILocation(line: 228, column: 37, scope: !3548)
!3559 = !DILocalVariable(name: "sensors", scope: !3548, file: !3, line: 229, type: !6)
!3560 = !DILocation(line: 229, column: 32, scope: !3548)
!3561 = !DILocalVariable(name: "raw", scope: !3548, file: !3, line: 230, type: !189)
!3562 = !DILocation(line: 230, column: 16, scope: !3548)
!3563 = !DILocation(line: 232, column: 8, scope: !3548)
!3564 = !DILocation(line: 232, column: 13, scope: !3548)
!3565 = !DILocation(line: 232, column: 6, scope: !3548)
!3566 = !DILocation(line: 233, column: 12, scope: !3548)
!3567 = !DILocation(line: 233, column: 17, scope: !3548)
!3568 = !DILocation(line: 233, column: 10, scope: !3548)
!3569 = !DILocation(line: 234, column: 11, scope: !3548)
!3570 = !DILocation(line: 234, column: 9, scope: !3548)
!3571 = !DILocation(line: 236, column: 6, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 236, column: 6)
!3573 = !DILocation(line: 236, column: 6, scope: !3548)
!3574 = !DILocation(line: 237, column: 10, scope: !3572)
!3575 = !DILocation(line: 237, column: 3, scope: !3572)
!3576 = !DILocation(line: 239, column: 8, scope: !3548)
!3577 = !DILocation(line: 239, column: 6, scope: !3548)
!3578 = !DILocation(line: 240, column: 32, scope: !3548)
!3579 = !DILocation(line: 240, column: 37, scope: !3548)
!3580 = !DILocation(line: 240, column: 40, scope: !3548)
!3581 = !DILocation(line: 240, column: 8, scope: !3548)
!3582 = !DILocation(line: 240, column: 45, scope: !3548)
!3583 = !DILocation(line: 240, column: 6, scope: !3548)
!3584 = !DILocation(line: 241, column: 10, scope: !3548)
!3585 = !DILocation(line: 241, column: 19, scope: !3548)
!3586 = !DILocation(line: 241, column: 28, scope: !3548)
!3587 = !DILocation(line: 241, column: 32, scope: !3548)
!3588 = !DILocation(line: 241, column: 26, scope: !3548)
!3589 = !DILocation(line: 241, column: 3, scope: !3548)
!3590 = !DILocation(line: 241, column: 8, scope: !3548)
!3591 = !DILocation(line: 243, column: 2, scope: !3548)
!3592 = !DILocation(line: 244, column: 1, scope: !3548)
!3593 = distinct !DISubprogram(name: "sys_get_trip_type", scope: !3, file: !3, line: 211, type: !2158, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3594 = !DILocalVariable(name: "tzd", arg: 1, scope: !3593, file: !3, line: 211, type: !83)
!3595 = !DILocation(line: 211, column: 58, scope: !3593)
!3596 = !DILocalVariable(name: "trip", arg: 2, scope: !3593, file: !3, line: 212, type: !67)
!3597 = !DILocation(line: 212, column: 13, scope: !3593)
!3598 = !DILocalVariable(name: "type", arg: 3, scope: !3593, file: !3, line: 212, type: !2160)
!3599 = !DILocation(line: 212, column: 43, scope: !3593)
!3600 = !DILocalVariable(name: "dts", scope: !3593, file: !3, line: 214, type: !2357)
!3601 = !DILocation(line: 214, column: 37, scope: !3593)
!3602 = !DILocation(line: 216, column: 8, scope: !3593)
!3603 = !DILocation(line: 216, column: 13, scope: !3593)
!3604 = !DILocation(line: 216, column: 6, scope: !3593)
!3605 = !DILocation(line: 218, column: 10, scope: !3593)
!3606 = !DILocation(line: 218, column: 15, scope: !3593)
!3607 = !DILocation(line: 218, column: 26, scope: !3593)
!3608 = !DILocation(line: 218, column: 3, scope: !3593)
!3609 = !DILocation(line: 218, column: 8, scope: !3593)
!3610 = !DILocation(line: 220, column: 2, scope: !3593)
!3611 = distinct !DISubprogram(name: "sys_get_trip_temp", scope: !3, file: !3, line: 74, type: !2163, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3612 = !DILocalVariable(name: "tzd", arg: 1, scope: !3611, file: !3, line: 74, type: !83)
!3613 = !DILocation(line: 74, column: 58, scope: !3611)
!3614 = !DILocalVariable(name: "trip", arg: 2, scope: !3611, file: !3, line: 74, type: !67)
!3615 = !DILocation(line: 74, column: 67, scope: !3611)
!3616 = !DILocalVariable(name: "temp", arg: 3, scope: !3611, file: !3, line: 75, type: !722)
!3617 = !DILocation(line: 75, column: 14, scope: !3611)
!3618 = !DILocalVariable(name: "status", scope: !3611, file: !3, line: 77, type: !67)
!3619 = !DILocation(line: 77, column: 6, scope: !3611)
!3620 = !DILocalVariable(name: "out", scope: !3611, file: !3, line: 78, type: !11)
!3621 = !DILocation(line: 78, column: 6, scope: !3611)
!3622 = !DILocalVariable(name: "dts", scope: !3611, file: !3, line: 79, type: !2357)
!3623 = !DILocation(line: 79, column: 37, scope: !3611)
!3624 = !DILocalVariable(name: "sensors", scope: !3611, file: !3, line: 80, type: !6)
!3625 = !DILocation(line: 80, column: 32, scope: !3611)
!3626 = !DILocation(line: 82, column: 8, scope: !3611)
!3627 = !DILocation(line: 82, column: 13, scope: !3611)
!3628 = !DILocation(line: 82, column: 6, scope: !3611)
!3629 = !DILocation(line: 83, column: 12, scope: !3611)
!3630 = !DILocation(line: 83, column: 17, scope: !3611)
!3631 = !DILocation(line: 83, column: 10, scope: !3611)
!3632 = !DILocation(line: 84, column: 14, scope: !3611)
!3633 = !DILocation(line: 84, column: 23, scope: !3611)
!3634 = !DILocation(line: 84, column: 2, scope: !3611)
!3635 = !DILocation(line: 85, column: 11, scope: !3611)
!3636 = !DILocation(line: 85, column: 9, scope: !3611)
!3637 = !DILocation(line: 87, column: 16, scope: !3611)
!3638 = !DILocation(line: 87, column: 25, scope: !3611)
!3639 = !DILocation(line: 87, column: 2, scope: !3611)
!3640 = !DILocation(line: 88, column: 6, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 88, column: 6)
!3642 = !DILocation(line: 88, column: 6, scope: !3611)
!3643 = !DILocation(line: 89, column: 10, scope: !3641)
!3644 = !DILocation(line: 89, column: 3, scope: !3641)
!3645 = !DILocation(line: 91, column: 9, scope: !3611)
!3646 = !DILocation(line: 91, column: 17, scope: !3611)
!3647 = !DILocation(line: 91, column: 22, scope: !3611)
!3648 = !DILocation(line: 91, column: 13, scope: !3611)
!3649 = !DILocation(line: 91, column: 28, scope: !3611)
!3650 = !DILocation(line: 91, column: 6, scope: !3611)
!3651 = !DILocation(line: 92, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3611, file: !3, line: 92, column: 6)
!3653 = !DILocation(line: 92, column: 6, scope: !3611)
!3654 = !DILocation(line: 93, column: 4, scope: !3652)
!3655 = !DILocation(line: 93, column: 9, scope: !3652)
!3656 = !DILocation(line: 93, column: 3, scope: !3652)
!3657 = !DILocation(line: 95, column: 11, scope: !3652)
!3658 = !DILocation(line: 95, column: 20, scope: !3652)
!3659 = !DILocation(line: 95, column: 29, scope: !3652)
!3660 = !DILocation(line: 95, column: 33, scope: !3652)
!3661 = !DILocation(line: 95, column: 27, scope: !3652)
!3662 = !DILocation(line: 95, column: 4, scope: !3652)
!3663 = !DILocation(line: 95, column: 9, scope: !3652)
!3664 = !DILocation(line: 97, column: 2, scope: !3611)
!3665 = !DILocation(line: 98, column: 1, scope: !3611)
!3666 = distinct !DISubprogram(name: "sys_set_trip_temp", scope: !3, file: !3, line: 193, type: !2150, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3667 = !DILocalVariable(name: "tzd", arg: 1, scope: !3666, file: !3, line: 193, type: !83)
!3668 = !DILocation(line: 193, column: 58, scope: !3666)
!3669 = !DILocalVariable(name: "trip", arg: 2, scope: !3666, file: !3, line: 193, type: !67)
!3670 = !DILocation(line: 193, column: 67, scope: !3666)
!3671 = !DILocalVariable(name: "temp", arg: 3, scope: !3666, file: !3, line: 194, type: !67)
!3672 = !DILocation(line: 194, column: 13, scope: !3666)
!3673 = !DILocalVariable(name: "dts", scope: !3666, file: !3, line: 196, type: !2357)
!3674 = !DILocation(line: 196, column: 37, scope: !3666)
!3675 = !DILocation(line: 196, column: 43, scope: !3666)
!3676 = !DILocation(line: 196, column: 48, scope: !3666)
!3677 = !DILocalVariable(name: "sensors", scope: !3666, file: !3, line: 197, type: !6)
!3678 = !DILocation(line: 197, column: 32, scope: !3666)
!3679 = !DILocation(line: 197, column: 42, scope: !3666)
!3680 = !DILocation(line: 197, column: 47, scope: !3666)
!3681 = !DILocalVariable(name: "status", scope: !3666, file: !3, line: 198, type: !67)
!3682 = !DILocation(line: 198, column: 6, scope: !3666)
!3683 = !DILocation(line: 200, column: 6, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 200, column: 6)
!3685 = !DILocation(line: 200, column: 13, scope: !3684)
!3686 = !DILocation(line: 200, column: 22, scope: !3684)
!3687 = !DILocation(line: 200, column: 11, scope: !3684)
!3688 = !DILocation(line: 200, column: 6, scope: !3666)
!3689 = !DILocation(line: 201, column: 3, scope: !3684)
!3690 = !DILocation(line: 203, column: 14, scope: !3666)
!3691 = !DILocation(line: 203, column: 23, scope: !3666)
!3692 = !DILocation(line: 203, column: 2, scope: !3666)
!3693 = !DILocation(line: 204, column: 28, scope: !3666)
!3694 = !DILocation(line: 204, column: 33, scope: !3666)
!3695 = !DILocation(line: 204, column: 42, scope: !3666)
!3696 = !DILocation(line: 204, column: 48, scope: !3666)
!3697 = !DILocation(line: 205, column: 7, scope: !3666)
!3698 = !DILocation(line: 205, column: 12, scope: !3666)
!3699 = !DILocation(line: 205, column: 23, scope: !3666)
!3700 = !DILocation(line: 204, column: 11, scope: !3666)
!3701 = !DILocation(line: 204, column: 9, scope: !3666)
!3702 = !DILocation(line: 206, column: 16, scope: !3666)
!3703 = !DILocation(line: 206, column: 25, scope: !3666)
!3704 = !DILocation(line: 206, column: 2, scope: !3666)
!3705 = !DILocation(line: 208, column: 9, scope: !3666)
!3706 = !DILocation(line: 208, column: 2, scope: !3666)
!3707 = !DILocation(line: 209, column: 1, scope: !3666)
!3708 = distinct !DISubprogram(name: "bitmap_get_value8", scope: !3326, file: !3326, line: 557, type: !3709, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2258, retainedNodes: !31)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!189, !3711, !189}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3712 = !DILocalVariable(name: "map", arg: 1, scope: !3708, file: !3326, line: 557, type: !3711)
!3713 = !DILocation(line: 557, column: 68, scope: !3708)
!3714 = !DILocalVariable(name: "start", arg: 2, scope: !3708, file: !3326, line: 558, type: !189)
!3715 = !DILocation(line: 558, column: 26, scope: !3708)
!3716 = !DILocalVariable(name: "index", scope: !3708, file: !3326, line: 560, type: !3336)
!3717 = !DILocation(line: 560, column: 15, scope: !3708)
!3718 = !DILocation(line: 560, column: 23, scope: !3708)
!3719 = !DILocalVariable(name: "offset", scope: !3708, file: !3326, line: 561, type: !3340)
!3720 = !DILocation(line: 561, column: 22, scope: !3708)
!3721 = !DILocation(line: 561, column: 31, scope: !3708)
!3722 = !DILocation(line: 561, column: 37, scope: !3708)
!3723 = !DILocation(line: 563, column: 10, scope: !3708)
!3724 = !DILocation(line: 563, column: 14, scope: !3708)
!3725 = !DILocation(line: 563, column: 24, scope: !3708)
!3726 = !DILocation(line: 563, column: 21, scope: !3708)
!3727 = !DILocation(line: 563, column: 32, scope: !3708)
!3728 = !DILocation(line: 563, column: 2, scope: !3708)
