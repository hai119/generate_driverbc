; ModuleID = '../bcout/drivers/base/power/sysfs.llvm.bc'
source_filename = "drivers/base/power/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
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
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { {}*, void (%struct.device*)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, {}*, {}*, i32 (%struct.device*, i32)*, {}*, {}*, {}*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, {}*, void (%struct.device*)*, {}*, void (%struct.device*)*, i32 (%struct.device*, i32)*, {}*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.module = type opaque
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, {}*, void (%struct.device*, i1)*, {}*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, {}*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
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
%struct.pm_qos_flags_request = type { %struct.list_head, i32 }

@power_group_name = dso_local constant [6 x i8] c"power\00", align 1, !dbg !0
@pm_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @power_group_name, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([1 x %struct.attribute*], [1 x %struct.attribute*]* @power_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !99
@pm_runtime_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @power_group_name, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([6 x %struct.attribute*], [6 x %struct.attribute*]* @runtime_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !1571
@pm_wakeup_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @power_group_name, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([10 x %struct.attribute*], [10 x %struct.attribute*]* @wakeup_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2036
@pm_qos_latency_tolerance_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @power_group_name, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @pm_qos_latency_tolerance_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2069
@pm_qos_resume_latency_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @power_group_name, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @pm_qos_resume_latency_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2076
@pm_qos_flags_attr_group = internal constant %struct.attribute_group { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @power_group_name, i32 0, i32 0), i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @pm_qos_flags_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2082
@power_attrs = internal global [1 x %struct.attribute*] zeroinitializer, align 8, !dbg !1568
@runtime_attrs = internal global [6 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_runtime_status, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_control, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_runtime_suspended_time, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_runtime_active_time, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_autosuspend_delay_ms, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !1573
@dev_attr_runtime_status = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @runtime_status_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !1576
@dev_attr_control = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @control_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @control_store }, align 8, !dbg !2020
@dev_attr_runtime_suspended_time = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @runtime_suspended_time_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2030
@dev_attr_runtime_active_time = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @runtime_active_time_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2032
@dev_attr_autosuspend_delay_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @autosuspend_delay_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @autosuspend_delay_ms_store }, align 8, !dbg !2034
@.str = private unnamed_addr constant [15 x i8] c"runtime_status\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"suspending\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"resuming\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@ctrl_auto = internal constant [5 x i8] c"auto\00", align 1, !dbg !2022
@ctrl_on = internal constant [3 x i8] c"on\00", align 1, !dbg !2027
@.str.9 = private unnamed_addr constant [23 x i8] c"runtime_suspended_time\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"runtime_active_time\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"autosuspend_delay_ms\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@wakeup_attrs = internal global [10 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_active_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_abort_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_expire_count, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_active, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_total_time_ms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_max_time_ms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_wakeup_last_time_ms, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2038
@dev_attr_wakeup = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wakeup_store }, align 8, !dbg !2043
@dev_attr_wakeup_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2053
@dev_attr_wakeup_active_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_active_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2055
@dev_attr_wakeup_abort_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_abort_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2057
@dev_attr_wakeup_expire_count = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_expire_count_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2059
@dev_attr_wakeup_active = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_active_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2061
@dev_attr_wakeup_total_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_total_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2063
@dev_attr_wakeup_max_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_max_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2065
@dev_attr_wakeup_last_time_ms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @wakeup_last_time_ms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2067
@.str.14 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@_enabled = internal constant [8 x i8] c"enabled\00", align 1, !dbg !2045
@_disabled = internal constant [9 x i8] c"disabled\00", align 1, !dbg !2048
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"wakeup_active_count\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"wakeup_abort_count\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"wakeup_expire_count\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"wakeup_active\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"wakeup_total_time_ms\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"wakeup_max_time_ms\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"wakeup_last_time_ms\00", align 1
@pm_qos_latency_tolerance_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_pm_qos_latency_tolerance_us, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2071
@dev_attr_pm_qos_latency_tolerance_us = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @pm_qos_latency_tolerance_us_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm_qos_latency_tolerance_us_store }, align 8, !dbg !2074
@.str.29 = private unnamed_addr constant [28 x i8] c"pm_qos_latency_tolerance_us\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@pm_qos_resume_latency_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_pm_qos_resume_latency_us, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2078
@dev_attr_pm_qos_resume_latency_us = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @pm_qos_resume_latency_us_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm_qos_resume_latency_us_store }, align 8, !dbg !2080
@.str.32 = private unnamed_addr constant [25 x i8] c"pm_qos_resume_latency_us\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"n/a\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@pm_qos_flags_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_pm_qos_no_power_off, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2084
@dev_attr_pm_qos_no_power_off = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @pm_qos_no_power_off_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm_qos_no_power_off_store }, align 8, !dbg !2086
@.str.35 = private unnamed_addr constant [20 x i8] c"pm_qos_no_power_off\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dpm_sysfs_add(%struct.device* %dev) #0 !dbg !2095 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %rc = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2096, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2098, metadata !DIExpression()), !dbg !2099
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2100
  %call = call zeroext i1 @device_pm_not_required(%struct.device* %0) #5, !dbg !2102
  br i1 %call, label %if.then, label %if.end, !dbg !2103

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2104
  br label %return, !dbg !2104

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2105
  %kobj = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 0, !dbg !2106
  %call1 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_attr_group) #5, !dbg !2107
  store i32 %call1, i32* %rc, align 4, !dbg !2108
  %2 = load i32, i32* %rc, align 4, !dbg !2109
  %tobool = icmp ne i32 %2, 0, !dbg !2109
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2111

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %rc, align 4, !dbg !2112
  store i32 %3, i32* %retval, align 4, !dbg !2113
  br label %return, !dbg !2113

if.end3:                                          ; preds = %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2114
  %call4 = call zeroext i1 @pm_runtime_has_no_callbacks(%struct.device* %4) #5, !dbg !2116
  br i1 %call4, label %if.end11, label %if.then5, !dbg !2117

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2118
  %kobj6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0, !dbg !2120
  %call7 = call i32 @sysfs_merge_group(%struct.kobject* %kobj6, %struct.attribute_group* @pm_runtime_attr_group) #5, !dbg !2121
  store i32 %call7, i32* %rc, align 4, !dbg !2122
  %6 = load i32, i32* %rc, align 4, !dbg !2123
  %tobool8 = icmp ne i32 %6, 0, !dbg !2123
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2125

if.then9:                                         ; preds = %if.then5
  br label %err_out, !dbg !2126

if.end10:                                         ; preds = %if.then5
  br label %if.end11, !dbg !2127

if.end11:                                         ; preds = %if.end10, %if.end3
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2128
  %call12 = call zeroext i1 @device_can_wakeup(%struct.device* %7) #5, !dbg !2130
  br i1 %call12, label %if.then13, label %if.end19, !dbg !2131

if.then13:                                        ; preds = %if.end11
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2132
  %kobj14 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0, !dbg !2134
  %call15 = call i32 @sysfs_merge_group(%struct.kobject* %kobj14, %struct.attribute_group* @pm_wakeup_attr_group) #5, !dbg !2135
  store i32 %call15, i32* %rc, align 4, !dbg !2136
  %9 = load i32, i32* %rc, align 4, !dbg !2137
  %tobool16 = icmp ne i32 %9, 0, !dbg !2137
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2139

if.then17:                                        ; preds = %if.then13
  br label %err_runtime, !dbg !2140

if.end18:                                         ; preds = %if.then13
  br label %if.end19, !dbg !2141

if.end19:                                         ; preds = %if.end18, %if.end11
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2142
  %power = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 11, !dbg !2144
  %set_latency_tolerance = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 26, !dbg !2145
  %11 = load void (%struct.device*, i32)*, void (%struct.device*, i32)** %set_latency_tolerance, align 8, !dbg !2145
  %tobool20 = icmp ne void (%struct.device*, i32)* %11, null, !dbg !2142
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !2146

if.then21:                                        ; preds = %if.end19
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2147
  %kobj22 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0, !dbg !2149
  %call23 = call i32 @sysfs_merge_group(%struct.kobject* %kobj22, %struct.attribute_group* @pm_qos_latency_tolerance_attr_group) #5, !dbg !2150
  store i32 %call23, i32* %rc, align 4, !dbg !2151
  %13 = load i32, i32* %rc, align 4, !dbg !2152
  %tobool24 = icmp ne i32 %13, 0, !dbg !2152
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2154

if.then25:                                        ; preds = %if.then21
  br label %err_wakeup, !dbg !2155

if.end26:                                         ; preds = %if.then21
  br label %if.end27, !dbg !2156

if.end27:                                         ; preds = %if.end26, %if.end19
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2157
  %call28 = call i32 @pm_wakeup_source_sysfs_add(%struct.device* %14) #5, !dbg !2158
  store i32 %call28, i32* %rc, align 4, !dbg !2159
  %15 = load i32, i32* %rc, align 4, !dbg !2160
  %tobool29 = icmp ne i32 %15, 0, !dbg !2160
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2162

if.then30:                                        ; preds = %if.end27
  br label %err_latency, !dbg !2163

if.end31:                                         ; preds = %if.end27
  store i32 0, i32* %retval, align 4, !dbg !2164
  br label %return, !dbg !2164

err_latency:                                      ; preds = %if.then30
  call void @llvm.dbg.label(metadata !2165), !dbg !2166
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2167
  %kobj32 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0, !dbg !2168
  call void @sysfs_unmerge_group(%struct.kobject* %kobj32, %struct.attribute_group* @pm_qos_latency_tolerance_attr_group) #5, !dbg !2169
  br label %err_wakeup, !dbg !2169

err_wakeup:                                       ; preds = %err_latency, %if.then25
  call void @llvm.dbg.label(metadata !2170), !dbg !2171
  %17 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2172
  %kobj33 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0, !dbg !2173
  call void @sysfs_unmerge_group(%struct.kobject* %kobj33, %struct.attribute_group* @pm_wakeup_attr_group) #5, !dbg !2174
  br label %err_runtime, !dbg !2174

err_runtime:                                      ; preds = %err_wakeup, %if.then17
  call void @llvm.dbg.label(metadata !2175), !dbg !2176
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2177
  %kobj34 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0, !dbg !2178
  call void @sysfs_unmerge_group(%struct.kobject* %kobj34, %struct.attribute_group* @pm_runtime_attr_group) #5, !dbg !2179
  br label %err_out, !dbg !2179

err_out:                                          ; preds = %err_runtime, %if.then9
  call void @llvm.dbg.label(metadata !2180), !dbg !2181
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2182
  %kobj35 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0, !dbg !2183
  call void @sysfs_remove_group(%struct.kobject* %kobj35, %struct.attribute_group* @pm_attr_group) #5, !dbg !2184
  %20 = load i32, i32* %rc, align 4, !dbg !2185
  store i32 %20, i32* %retval, align 4, !dbg !2186
  br label %return, !dbg !2186

return:                                           ; preds = %err_out, %if.end31, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !2187
  ret i32 %21, !dbg !2187
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_pm_not_required(%struct.device* %dev) #0 !dbg !2188 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2193
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2194
  %no_pm = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2195
  %bf.load = load i16, i16* %no_pm, align 4, !dbg !2195
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !2195
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2195
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !2195
  ret i1 %bf.cast, !dbg !2196
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pm_runtime_has_no_callbacks(%struct.device* %dev) #0 !dbg !2197 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2199, metadata !DIExpression()), !dbg !2200
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2201
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2202
  %no_callbacks = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 15, !dbg !2203
  %bf.load = load i16, i16* %no_callbacks, align 8, !dbg !2203
  %bf.lshr = lshr i16 %bf.load, 8, !dbg !2203
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2203
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2203
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2201
  ret i1 %tobool, !dbg !2204
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_merge_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_can_wakeup(%struct.device* %dev) #0 !dbg !2205 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2206, metadata !DIExpression()), !dbg !2207
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2208
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2209
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2210
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2210
  %bf.clear = and i16 %bf.load, 1, !dbg !2210
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2210
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2208
  ret i1 %tobool, !dbg !2211
}

; Function Attrs: noredzone
declare dso_local i32 @pm_wakeup_source_sysfs_add(%struct.device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @sysfs_unmerge_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dpm_sysfs_change_owner(%struct.device* %dev, i32 %kuid.coerce, i32 %kgid.coerce) #0 !dbg !2212 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %dev.addr = alloca %struct.device*, align 8
  %rc = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0
  store i32 %kuid.coerce, i32* %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0
  store i32 %kgid.coerce, i32* %coerce.dive1, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.declare(metadata %struct.kuid_t* %kuid, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata %struct.kgid_t* %kgid, metadata !2219, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2221, metadata !DIExpression()), !dbg !2222
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2223
  %call = call zeroext i1 @device_pm_not_required(%struct.device* %0) #5, !dbg !2225
  br i1 %call, label %if.then, label %if.end, !dbg !2226

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2227
  br label %return, !dbg !2227

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2228
  %kobj = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 0, !dbg !2229
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0, !dbg !2230
  %2 = load i32, i32* %coerce.dive2, align 4, !dbg !2230
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0, !dbg !2230
  %3 = load i32, i32* %coerce.dive3, align 4, !dbg !2230
  %call4 = call i32 @sysfs_group_change_owner(%struct.kobject* %kobj, %struct.attribute_group* @pm_attr_group, i32 %2, i32 %3) #5, !dbg !2230
  store i32 %call4, i32* %rc, align 4, !dbg !2231
  %4 = load i32, i32* %rc, align 4, !dbg !2232
  %tobool = icmp ne i32 %4, 0, !dbg !2232
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2234

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %rc, align 4, !dbg !2235
  store i32 %5, i32* %retval, align 4, !dbg !2236
  br label %return, !dbg !2236

if.end6:                                          ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2237
  %call7 = call zeroext i1 @pm_runtime_has_no_callbacks(%struct.device* %6) #5, !dbg !2239
  br i1 %call7, label %if.end16, label %if.then8, !dbg !2240

if.then8:                                         ; preds = %if.end6
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2241
  %kobj9 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0, !dbg !2243
  %coerce.dive10 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0, !dbg !2244
  %8 = load i32, i32* %coerce.dive10, align 4, !dbg !2244
  %coerce.dive11 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0, !dbg !2244
  %9 = load i32, i32* %coerce.dive11, align 4, !dbg !2244
  %call12 = call i32 @sysfs_group_change_owner(%struct.kobject* %kobj9, %struct.attribute_group* @pm_runtime_attr_group, i32 %8, i32 %9) #5, !dbg !2244
  store i32 %call12, i32* %rc, align 4, !dbg !2245
  %10 = load i32, i32* %rc, align 4, !dbg !2246
  %tobool13 = icmp ne i32 %10, 0, !dbg !2246
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2248

if.then14:                                        ; preds = %if.then8
  %11 = load i32, i32* %rc, align 4, !dbg !2249
  store i32 %11, i32* %retval, align 4, !dbg !2250
  br label %return, !dbg !2250

if.end15:                                         ; preds = %if.then8
  br label %if.end16, !dbg !2251

if.end16:                                         ; preds = %if.end15, %if.end6
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2252
  %call17 = call zeroext i1 @device_can_wakeup(%struct.device* %12) #5, !dbg !2254
  br i1 %call17, label %if.then18, label %if.end32, !dbg !2255

if.then18:                                        ; preds = %if.end16
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2256
  %kobj19 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0, !dbg !2258
  %coerce.dive20 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0, !dbg !2259
  %14 = load i32, i32* %coerce.dive20, align 4, !dbg !2259
  %coerce.dive21 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0, !dbg !2259
  %15 = load i32, i32* %coerce.dive21, align 4, !dbg !2259
  %call22 = call i32 @sysfs_group_change_owner(%struct.kobject* %kobj19, %struct.attribute_group* @pm_wakeup_attr_group, i32 %14, i32 %15) #5, !dbg !2259
  store i32 %call22, i32* %rc, align 4, !dbg !2260
  %16 = load i32, i32* %rc, align 4, !dbg !2261
  %tobool23 = icmp ne i32 %16, 0, !dbg !2261
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2263

if.then24:                                        ; preds = %if.then18
  %17 = load i32, i32* %rc, align 4, !dbg !2264
  store i32 %17, i32* %retval, align 4, !dbg !2265
  br label %return, !dbg !2265

if.end25:                                         ; preds = %if.then18
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2266
  %coerce.dive26 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0, !dbg !2267
  %19 = load i32, i32* %coerce.dive26, align 4, !dbg !2267
  %coerce.dive27 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0, !dbg !2267
  %20 = load i32, i32* %coerce.dive27, align 4, !dbg !2267
  %call28 = call i32 @dpm_sysfs_wakeup_change_owner(%struct.device* %18, i32 %19, i32 %20) #5, !dbg !2267
  store i32 %call28, i32* %rc, align 4, !dbg !2268
  %21 = load i32, i32* %rc, align 4, !dbg !2269
  %tobool29 = icmp ne i32 %21, 0, !dbg !2269
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2271

if.then30:                                        ; preds = %if.end25
  %22 = load i32, i32* %rc, align 4, !dbg !2272
  store i32 %22, i32* %retval, align 4, !dbg !2273
  br label %return, !dbg !2273

if.end31:                                         ; preds = %if.end25
  br label %if.end32, !dbg !2274

if.end32:                                         ; preds = %if.end31, %if.end16
  %23 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2275
  %power = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 11, !dbg !2277
  %set_latency_tolerance = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 26, !dbg !2278
  %24 = load void (%struct.device*, i32)*, void (%struct.device*, i32)** %set_latency_tolerance, align 8, !dbg !2278
  %tobool33 = icmp ne void (%struct.device*, i32)* %24, null, !dbg !2275
  br i1 %tobool33, label %if.then34, label %if.end42, !dbg !2279

if.then34:                                        ; preds = %if.end32
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2280
  %kobj35 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0, !dbg !2282
  %coerce.dive36 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0, !dbg !2283
  %26 = load i32, i32* %coerce.dive36, align 4, !dbg !2283
  %coerce.dive37 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0, !dbg !2283
  %27 = load i32, i32* %coerce.dive37, align 4, !dbg !2283
  %call38 = call i32 @sysfs_group_change_owner(%struct.kobject* %kobj35, %struct.attribute_group* @pm_qos_latency_tolerance_attr_group, i32 %26, i32 %27) #5, !dbg !2283
  store i32 %call38, i32* %rc, align 4, !dbg !2284
  %28 = load i32, i32* %rc, align 4, !dbg !2285
  %tobool39 = icmp ne i32 %28, 0, !dbg !2285
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2287

if.then40:                                        ; preds = %if.then34
  %29 = load i32, i32* %rc, align 4, !dbg !2288
  store i32 %29, i32* %retval, align 4, !dbg !2289
  br label %return, !dbg !2289

if.end41:                                         ; preds = %if.then34
  br label %if.end42, !dbg !2290

if.end42:                                         ; preds = %if.end41, %if.end32
  store i32 0, i32* %retval, align 4, !dbg !2291
  br label %return, !dbg !2291

return:                                           ; preds = %if.end42, %if.then40, %if.then30, %if.then24, %if.then14, %if.then5, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !2292
  ret i32 %30, !dbg !2292
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_group_change_owner(%struct.kobject*, %struct.attribute_group*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dpm_sysfs_wakeup_change_owner(%struct.device* %dev, i32 %kuid.coerce, i32 %kgid.coerce) #0 !dbg !2293 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %dev.addr = alloca %struct.device*, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0
  store i32 %kuid.coerce, i32* %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0
  store i32 %kgid.coerce, i32* %coerce.dive1, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2294, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.declare(metadata %struct.kuid_t* %kuid, metadata !2296, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.declare(metadata %struct.kgid_t* %kgid, metadata !2298, metadata !DIExpression()), !dbg !2299
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2300
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2302
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 6, !dbg !2303
  %1 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2303
  %tobool = icmp ne %struct.wakeup_source* %1, null, !dbg !2300
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2304

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2305
  %power2 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 11, !dbg !2306
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !2307
  %3 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !2307
  %dev4 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %3, i32 0, i32 17, !dbg !2308
  %4 = load %struct.device*, %struct.device** %dev4, align 8, !dbg !2308
  %tobool5 = icmp ne %struct.device* %4, null, !dbg !2305
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2309

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2310
  %power6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2311
  %wakeup7 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power6, i32 0, i32 6, !dbg !2312
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup7, align 8, !dbg !2312
  %dev8 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 17, !dbg !2313
  %7 = load %struct.device*, %struct.device** %dev8, align 8, !dbg !2313
  %coerce.dive9 = getelementptr inbounds %struct.kuid_t, %struct.kuid_t* %kuid, i32 0, i32 0, !dbg !2314
  %8 = load i32, i32* %coerce.dive9, align 4, !dbg !2314
  %coerce.dive10 = getelementptr inbounds %struct.kgid_t, %struct.kgid_t* %kgid, i32 0, i32 0, !dbg !2314
  %9 = load i32, i32* %coerce.dive10, align 4, !dbg !2314
  %call = call i32 @device_change_owner(%struct.device* %7, i32 %8, i32 %9) #5, !dbg !2314
  store i32 %call, i32* %retval, align 4, !dbg !2315
  br label %return, !dbg !2315

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !2317
  ret i32 %10, !dbg !2317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @wakeup_sysfs_add(%struct.device* %dev) #0 !dbg !2318 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2321, metadata !DIExpression()), !dbg !2322
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2323
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2324
  %call = call i32 @sysfs_merge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_wakeup_attr_group) #5, !dbg !2325
  store i32 %call, i32* %ret, align 4, !dbg !2322
  %1 = load i32, i32* %ret, align 4, !dbg !2326
  %tobool = icmp ne i32 %1, 0, !dbg !2326
  br i1 %tobool, label %if.end, label %if.then, !dbg !2328

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2329
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 0, !dbg !2330
  %call2 = call i32 @kobject_uevent(%struct.kobject* %kobj1, i32 2) #5, !dbg !2331
  br label %if.end, !dbg !2331

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ret, align 4, !dbg !2332
  ret i32 %3, !dbg !2333
}

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @wakeup_sysfs_remove(%struct.device* %dev) #0 !dbg !2334 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2335, metadata !DIExpression()), !dbg !2336
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2337
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2338
  call void @sysfs_unmerge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_wakeup_attr_group) #5, !dbg !2339
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2340
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 0, !dbg !2341
  %call = call i32 @kobject_uevent(%struct.kobject* %kobj1, i32 2) #5, !dbg !2342
  ret void, !dbg !2343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_qos_sysfs_add_resume_latency(%struct.device* %dev) #0 !dbg !2344 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2347
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2348
  %call = call i32 @sysfs_merge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_resume_latency_attr_group) #5, !dbg !2349
  ret i32 %call, !dbg !2350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_qos_sysfs_remove_resume_latency(%struct.device* %dev) #0 !dbg !2351 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2352, metadata !DIExpression()), !dbg !2353
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2354
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2355
  call void @sysfs_unmerge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_resume_latency_attr_group) #5, !dbg !2356
  ret void, !dbg !2357
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_qos_sysfs_add_flags(%struct.device* %dev) #0 !dbg !2358 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2361
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2362
  %call = call i32 @sysfs_merge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_flags_attr_group) #5, !dbg !2363
  ret i32 %call, !dbg !2364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_qos_sysfs_remove_flags(%struct.device* %dev) #0 !dbg !2365 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2366, metadata !DIExpression()), !dbg !2367
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2368
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2369
  call void @sysfs_unmerge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_flags_attr_group) #5, !dbg !2370
  ret void, !dbg !2371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pm_qos_sysfs_add_latency_tolerance(%struct.device* %dev) #0 !dbg !2372 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2373, metadata !DIExpression()), !dbg !2374
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2375
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2376
  %call = call i32 @sysfs_merge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_latency_tolerance_attr_group) #5, !dbg !2377
  ret i32 %call, !dbg !2378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pm_qos_sysfs_remove_latency_tolerance(%struct.device* %dev) #0 !dbg !2379 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2380, metadata !DIExpression()), !dbg !2381
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2382
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2383
  call void @sysfs_unmerge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_latency_tolerance_attr_group) #5, !dbg !2384
  ret void, !dbg !2385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @rpm_sysfs_remove(%struct.device* %dev) #0 !dbg !2386 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2387, metadata !DIExpression()), !dbg !2388
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2389
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !2390
  call void @sysfs_unmerge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_runtime_attr_group) #5, !dbg !2391
  ret void, !dbg !2392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dpm_sysfs_remove(%struct.device* %dev) #0 !dbg !2393 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2394, metadata !DIExpression()), !dbg !2395
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2396
  %call = call zeroext i1 @device_pm_not_required(%struct.device* %0) #5, !dbg !2398
  br i1 %call, label %if.then, label %if.end, !dbg !2399

if.then:                                          ; preds = %entry
  br label %return, !dbg !2400

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2401
  %kobj = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 0, !dbg !2402
  call void @sysfs_unmerge_group(%struct.kobject* %kobj, %struct.attribute_group* @pm_qos_latency_tolerance_attr_group) #5, !dbg !2403
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2404
  call void @dev_pm_qos_constraints_destroy(%struct.device* %2) #5, !dbg !2405
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2406
  call void @rpm_sysfs_remove(%struct.device* %3) #5, !dbg !2407
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2408
  %kobj1 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2409
  call void @sysfs_unmerge_group(%struct.kobject* %kobj1, %struct.attribute_group* @pm_wakeup_attr_group) #5, !dbg !2410
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2411
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0, !dbg !2412
  call void @sysfs_remove_group(%struct.kobject* %kobj2, %struct.attribute_group* @pm_attr_group) #5, !dbg !2413
  br label %return, !dbg !2414

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2414
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_qos_constraints_destroy(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @runtime_status_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2415 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %output = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2416, metadata !DIExpression()), !dbg !2417
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2418, metadata !DIExpression()), !dbg !2419
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2420, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.declare(metadata i8** %output, metadata !2422, metadata !DIExpression()), !dbg !2423
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2424
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2426
  %runtime_error = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 19, !dbg !2427
  %1 = load i32, i32* %runtime_error, align 8, !dbg !2427
  %tobool = icmp ne i32 %1, 0, !dbg !2424
  br i1 %tobool, label %if.then, label %if.else, !dbg !2428

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %output, align 8, !dbg !2429
  br label %if.end9, !dbg !2431

if.else:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2432
  %power1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 11, !dbg !2434
  %disable_depth = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 15, !dbg !2435
  %bf.load = load i16, i16* %disable_depth, align 8, !dbg !2435
  %bf.clear = and i16 %bf.load, 7, !dbg !2435
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2435
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !2432
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !2436

if.then3:                                         ; preds = %if.else
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %output, align 8, !dbg !2437
  br label %if.end, !dbg !2439

if.else4:                                         ; preds = %if.else
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2440
  %power5 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2442
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power5, i32 0, i32 18, !dbg !2443
  %4 = load i32, i32* %runtime_status, align 4, !dbg !2443
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
    i32 1, label %sw.bb7
    i32 0, label %sw.bb8
  ], !dbg !2444

sw.bb:                                            ; preds = %if.else4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %output, align 8, !dbg !2445
  br label %sw.epilog, !dbg !2447

sw.bb6:                                           ; preds = %if.else4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %output, align 8, !dbg !2448
  br label %sw.epilog, !dbg !2449

sw.bb7:                                           ; preds = %if.else4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %output, align 8, !dbg !2450
  br label %sw.epilog, !dbg !2451

sw.bb8:                                           ; preds = %if.else4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %output, align 8, !dbg !2452
  br label %sw.epilog, !dbg !2453

sw.default:                                       ; preds = %if.else4
  store i64 -5, i64* %retval, align 8, !dbg !2454
  br label %return, !dbg !2454

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !2455
  %6 = load i8*, i8** %output, align 8, !dbg !2456
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %6) #5, !dbg !2457
  %conv = sext i32 %call to i64, !dbg !2457
  store i64 %conv, i64* %retval, align 8, !dbg !2458
  br label %return, !dbg !2458

return:                                           ; preds = %if.end9, %sw.default
  %7 = load i64, i64* %retval, align 8, !dbg !2459
  ret i64 %7, !dbg !2459
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_emit(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @control_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2460 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2465, metadata !DIExpression()), !dbg !2466
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2467
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2468
  %power = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !2469
  %runtime_auto = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 15, !dbg !2470
  %bf.load = load i16, i16* %runtime_auto, align 8, !dbg !2470
  %bf.lshr = lshr i16 %bf.load, 6, !dbg !2470
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2470
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2470
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2468
  %2 = zext i1 %tobool to i64, !dbg !2468
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ctrl_auto, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctrl_on, i64 0, i64 0), !dbg !2468
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %cond) #5, !dbg !2471
  %conv = sext i32 %call to i64, !dbg !2471
  ret i64 %conv, !dbg !2472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @control_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %n) #0 !dbg !2473 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2476, metadata !DIExpression()), !dbg !2477
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2478, metadata !DIExpression()), !dbg !2479
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2480, metadata !DIExpression()), !dbg !2481
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2482
  call void @device_lock(%struct.device* %0) #5, !dbg !2483
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !2484
  %call = call zeroext i1 @sysfs_streq(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ctrl_auto, i64 0, i64 0)) #5, !dbg !2486
  br i1 %call, label %if.then, label %if.else, !dbg !2487

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2488
  call void @pm_runtime_allow(%struct.device* %2) #5, !dbg !2489
  br label %if.end4, !dbg !2489

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !2490
  %call1 = call zeroext i1 @sysfs_streq(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @ctrl_on, i64 0, i64 0)) #5, !dbg !2492
  br i1 %call1, label %if.then2, label %if.else3, !dbg !2493

if.then2:                                         ; preds = %if.else
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2494
  call void @pm_runtime_forbid(%struct.device* %4) #5, !dbg !2495
  br label %if.end, !dbg !2495

if.else3:                                         ; preds = %if.else
  store i64 -22, i64* %n.addr, align 8, !dbg !2496
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2497
  call void @device_unlock(%struct.device* %5) #5, !dbg !2498
  %6 = load i64, i64* %n.addr, align 8, !dbg !2499
  ret i64 %6, !dbg !2500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #0 !dbg !2501 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2502, metadata !DIExpression()), !dbg !2503
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2504
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !2505
  call void @mutex_lock(%struct.mutex* %mutex) #5, !dbg !2506
  ret void, !dbg !2507
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @sysfs_streq(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @pm_runtime_allow(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local void @pm_runtime_forbid(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #0 !dbg !2508 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2511
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !2512
  call void @mutex_unlock(%struct.mutex* %mutex) #5, !dbg !2513
  ret void, !dbg !2514
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @runtime_suspended_time_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2515 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2522, metadata !DIExpression()), !dbg !2523
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2524
  %call = call i64 @pm_runtime_suspended_time(%struct.device* %0) #5, !dbg !2525
  store i64 %call, i64* %tmp, align 8, !dbg !2523
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2526, metadata !DIExpression()), !dbg !2529
  store i32 1000000, i32* %__base, align 4, !dbg !2529
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2530, metadata !DIExpression()), !dbg !2529
  %1 = load i64, i64* %tmp, align 8, !dbg !2529
  %2 = load i32, i32* %__base, align 4, !dbg !2529
  %conv = zext i32 %2 to i64, !dbg !2529
  %rem = urem i64 %1, %conv, !dbg !2529
  %conv1 = trunc i64 %rem to i32, !dbg !2529
  store i32 %conv1, i32* %__rem, align 4, !dbg !2529
  %3 = load i64, i64* %tmp, align 8, !dbg !2529
  %4 = load i32, i32* %__base, align 4, !dbg !2529
  %conv2 = zext i32 %4 to i64, !dbg !2529
  %div = udiv i64 %3, %conv2, !dbg !2529
  store i64 %div, i64* %tmp, align 8, !dbg !2529
  %5 = load i32, i32* %__rem, align 4, !dbg !2529
  store i32 %5, i32* %tmp3, align 4, !dbg !2529
  %6 = load i32, i32* %tmp3, align 4, !dbg !2529
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !2531
  %8 = load i64, i64* %tmp, align 8, !dbg !2532
  %call4 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %8) #5, !dbg !2533
  %conv5 = sext i32 %call4 to i64, !dbg !2533
  ret i64 %conv5, !dbg !2534
}

; Function Attrs: noredzone
declare dso_local i64 @pm_runtime_suspended_time(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @runtime_active_time_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2535 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2536, metadata !DIExpression()), !dbg !2537
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2542, metadata !DIExpression()), !dbg !2543
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2544
  %call = call i64 @pm_runtime_active_time(%struct.device* %0) #5, !dbg !2545
  store i64 %call, i64* %tmp, align 8, !dbg !2543
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2546, metadata !DIExpression()), !dbg !2548
  store i32 1000000, i32* %__base, align 4, !dbg !2548
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2549, metadata !DIExpression()), !dbg !2548
  %1 = load i64, i64* %tmp, align 8, !dbg !2548
  %2 = load i32, i32* %__base, align 4, !dbg !2548
  %conv = zext i32 %2 to i64, !dbg !2548
  %rem = urem i64 %1, %conv, !dbg !2548
  %conv1 = trunc i64 %rem to i32, !dbg !2548
  store i32 %conv1, i32* %__rem, align 4, !dbg !2548
  %3 = load i64, i64* %tmp, align 8, !dbg !2548
  %4 = load i32, i32* %__base, align 4, !dbg !2548
  %conv2 = zext i32 %4 to i64, !dbg !2548
  %div = udiv i64 %3, %conv2, !dbg !2548
  store i64 %div, i64* %tmp, align 8, !dbg !2548
  %5 = load i32, i32* %__rem, align 4, !dbg !2548
  store i32 %5, i32* %tmp3, align 4, !dbg !2548
  %6 = load i32, i32* %tmp3, align 4, !dbg !2548
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !2550
  %8 = load i64, i64* %tmp, align 8, !dbg !2551
  %call4 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %8) #5, !dbg !2552
  %conv5 = sext i32 %call4 to i64, !dbg !2552
  ret i64 %conv5, !dbg !2553
}

; Function Attrs: noredzone
declare dso_local i64 @pm_runtime_active_time(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @autosuspend_delay_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2554 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2555, metadata !DIExpression()), !dbg !2556
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2557, metadata !DIExpression()), !dbg !2558
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2559, metadata !DIExpression()), !dbg !2560
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2561
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2563
  %use_autosuspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 15, !dbg !2564
  %bf.load = load i16, i16* %use_autosuspend, align 8, !dbg !2564
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !2564
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2564
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2564
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2561
  br i1 %tobool, label %if.end, label %if.then, !dbg !2565

if.then:                                          ; preds = %entry
  store i64 -5, i64* %retval, align 8, !dbg !2566
  br label %return, !dbg !2566

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !2567
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2568
  %power1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 11, !dbg !2569
  %autosuspend_delay = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 20, !dbg !2570
  %3 = load i32, i32* %autosuspend_delay, align 4, !dbg !2570
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %3) #5, !dbg !2571
  %conv = sext i32 %call to i64, !dbg !2571
  store i64 %conv, i64* %retval, align 8, !dbg !2572
  br label %return, !dbg !2572

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval, align 8, !dbg !2573
  ret i64 %4, !dbg !2573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @autosuspend_delay_ms_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %n) #0 !dbg !2574 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %delay = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2575, metadata !DIExpression()), !dbg !2576
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2577, metadata !DIExpression()), !dbg !2578
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2579, metadata !DIExpression()), !dbg !2580
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2581, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.declare(metadata i64* %delay, metadata !2583, metadata !DIExpression()), !dbg !2584
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2585
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2587
  %use_autosuspend = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 15, !dbg !2588
  %bf.load = load i16, i16* %use_autosuspend, align 8, !dbg !2588
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !2588
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2588
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2588
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2585
  br i1 %tobool, label %if.end, label %if.then, !dbg !2589

if.then:                                          ; preds = %entry
  store i64 -5, i64* %retval, align 8, !dbg !2590
  br label %return, !dbg !2590

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !2591
  %call = call i32 @kstrtol(i8* %1, i32 10, i64* %delay) #5, !dbg !2593
  %cmp = icmp ne i32 %call, 0, !dbg !2594
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !2595

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, i64* %delay, align 8, !dbg !2596
  %3 = load i64, i64* %delay, align 8, !dbg !2597
  %conv = trunc i64 %3 to i32, !dbg !2598
  %conv1 = sext i32 %conv to i64, !dbg !2598
  %cmp2 = icmp ne i64 %2, %conv1, !dbg !2599
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2600

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -22, i64* %retval, align 8, !dbg !2601
  br label %return, !dbg !2601

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2602
  call void @device_lock(%struct.device* %4) #5, !dbg !2603
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2604
  %6 = load i64, i64* %delay, align 8, !dbg !2605
  %conv6 = trunc i64 %6 to i32, !dbg !2605
  call void @pm_runtime_set_autosuspend_delay(%struct.device* %5, i32 %conv6) #5, !dbg !2606
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2607
  call void @device_unlock(%struct.device* %7) #5, !dbg !2608
  %8 = load i64, i64* %n.addr, align 8, !dbg !2609
  store i64 %8, i64* %retval, align 8, !dbg !2610
  br label %return, !dbg !2610

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !2611
  ret i64 %9, !dbg !2611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtol(i8* %s, i32 %base, i64* %res) #0 !dbg !2612 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !2621, metadata !DIExpression()), !dbg !2622
  %0 = load i8*, i8** %s.addr, align 8, !dbg !2623
  %1 = load i32, i32* %base.addr, align 4, !dbg !2625
  %2 = load i64*, i64** %res.addr, align 8, !dbg !2626
  %call = call i32 @kstrtoll(i8* %0, i32 %1, i64* %2) #5, !dbg !2627
  ret i32 %call, !dbg !2628
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtoll(i8*, i32, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2629 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2630, metadata !DIExpression()), !dbg !2631
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2632, metadata !DIExpression()), !dbg !2633
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2634, metadata !DIExpression()), !dbg !2635
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !2636
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2637
  %call = call zeroext i1 @device_can_wakeup(%struct.device* %1) #5, !dbg !2638
  br i1 %call, label %cond.true, label %cond.false, !dbg !2638

cond.true:                                        ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2639
  %call1 = call zeroext i1 @device_may_wakeup(%struct.device* %2) #5, !dbg !2640
  %3 = zext i1 %call1 to i64, !dbg !2640
  %cond = select i1 %call1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_enabled, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_disabled, i64 0, i64 0), !dbg !2640
  br label %cond.end, !dbg !2638

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2638

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ %cond, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %cond.false ], !dbg !2638
  %call3 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %cond2) #5, !dbg !2641
  %conv = sext i32 %call3 to i64, !dbg !2641
  ret i64 %conv, !dbg !2642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %n) #0 !dbg !2643 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2644, metadata !DIExpression()), !dbg !2645
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2646, metadata !DIExpression()), !dbg !2647
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2648, metadata !DIExpression()), !dbg !2649
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2650, metadata !DIExpression()), !dbg !2651
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2652
  %call = call zeroext i1 @device_can_wakeup(%struct.device* %0) #5, !dbg !2654
  br i1 %call, label %if.end, label %if.then, !dbg !2655

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !2656
  br label %return, !dbg !2656

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !2657
  %call1 = call zeroext i1 @sysfs_streq(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @_enabled, i64 0, i64 0)) #5, !dbg !2659
  br i1 %call1, label %if.then2, label %if.else, !dbg !2660

if.then2:                                         ; preds = %if.end
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2661
  %call3 = call i32 @device_set_wakeup_enable(%struct.device* %2, i1 zeroext true) #5, !dbg !2662
  br label %if.end9, !dbg !2662

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !2663
  %call4 = call zeroext i1 @sysfs_streq(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_disabled, i64 0, i64 0)) #5, !dbg !2665
  br i1 %call4, label %if.then5, label %if.else7, !dbg !2666

if.then5:                                         ; preds = %if.else
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2667
  %call6 = call i32 @device_set_wakeup_enable(%struct.device* %4, i1 zeroext false) #5, !dbg !2668
  br label %if.end8, !dbg !2668

if.else7:                                         ; preds = %if.else
  store i64 -22, i64* %retval, align 8, !dbg !2669
  br label %return, !dbg !2669

if.end8:                                          ; preds = %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then2
  %5 = load i64, i64* %n.addr, align 8, !dbg !2670
  store i64 %5, i64* %retval, align 8, !dbg !2671
  br label %return, !dbg !2671

return:                                           ; preds = %if.end9, %if.else7, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !2672
  ret i64 %6, !dbg !2672
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @device_may_wakeup(%struct.device* %dev) #0 !dbg !2673 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2676
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2677
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !2678
  %bf.load = load i16, i16* %can_wakeup, align 4, !dbg !2678
  %bf.clear = and i16 %bf.load, 1, !dbg !2678
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2678
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2676
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2679

land.rhs:                                         ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2680
  %power1 = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 11, !dbg !2681
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2682
  %2 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2682
  %tobool2 = icmp ne %struct.wakeup_source* %2, null, !dbg !2683
  %lnot = xor i1 %tobool2, true, !dbg !2683
  %lnot3 = xor i1 %lnot, true, !dbg !2684
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2685
  ret i1 %3, !dbg !2686
}

; Function Attrs: noredzone
declare dso_local i32 @device_set_wakeup_enable(%struct.device*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2687 {
entry:
  %lock.addr.i11 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i11, metadata !2688, metadata !DIExpression()), !dbg !2694
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !2698
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2702, metadata !DIExpression()), !dbg !2703
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !2708, metadata !DIExpression()), !dbg !2709
  store i8 0, i8* %enabled, align 1, !dbg !2709
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2710
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2711
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2712
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !2713
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2716, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2719
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2719
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2719
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2721
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2723
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2724
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2724
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !2721
  br i1 %tobool, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2726
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2728
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !2729
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !2729
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 16, !dbg !2730
  %7 = load i64, i64* %wakeup_count, align 8, !dbg !2730
  store i64 %7, i64* %count, align 8, !dbg !2731
  store i8 1, i8* %enabled, align 1, !dbg !2732
  br label %if.end, !dbg !2733

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2734
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !2735
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !2736
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i11, align 8
  call void @arch_local_irq_enable() #6, !dbg !2737
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2740, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i11, align 8, !dbg !2743
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !2743
  %rlock.i12 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !2743
  %11 = load i8, i8* %enabled, align 1, !dbg !2745
  %tobool6 = trunc i8 %11 to i1, !dbg !2745
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2747

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2748
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !2749
  %conv = sext i32 %call to i64, !dbg !2749
  store i64 %conv, i64* %retval, align 8, !dbg !2750
  br label %return, !dbg !2750

if.end8:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !2751
  %14 = load i64, i64* %count, align 8, !dbg !2752
  %call9 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 %14) #5, !dbg !2753
  %conv10 = sext i32 %call9 to i64, !dbg !2753
  store i64 %conv10, i64* %retval, align 8, !dbg !2754
  br label %return, !dbg !2754

return:                                           ; preds = %if.end8, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !2755
  ret i64 %15, !dbg !2755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !2756 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2760, metadata !DIExpression()), !dbg !2762
  %0 = load i64, i64* %__edi, align 8, !dbg !2762
  store i64 %0, i64* %__edi, align 8, !dbg !2762
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2763, metadata !DIExpression()), !dbg !2762
  %1 = load i64, i64* %__esi, align 8, !dbg !2762
  store i64 %1, i64* %__esi, align 8, !dbg !2762
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2764, metadata !DIExpression()), !dbg !2762
  %2 = load i64, i64* %__edx, align 8, !dbg !2762
  store i64 %2, i64* %__edx, align 8, !dbg !2762
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2765, metadata !DIExpression()), !dbg !2762
  %3 = load i64, i64* %__ecx, align 8, !dbg !2762
  store i64 %3, i64* %__ecx, align 8, !dbg !2762
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2766, metadata !DIExpression()), !dbg !2762
  %4 = load i64, i64* %__eax, align 8, !dbg !2762
  store i64 %4, i64* %__eax, align 8, !dbg !2762
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !2762
  %6 = call i64 @llvm.read_register.i64(metadata !2089), !dbg !2762
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !2762, !srcloc !2767
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2762
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2762
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2762
  call void @llvm.write_register.i64(metadata !2089, i64 %asmresult1), !dbg !2762
  ret void, !dbg !2768
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !2769 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !2770, metadata !DIExpression()), !dbg !2772
  %0 = load i64, i64* %__edi, align 8, !dbg !2772
  store i64 %0, i64* %__edi, align 8, !dbg !2772
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !2773, metadata !DIExpression()), !dbg !2772
  %1 = load i64, i64* %__esi, align 8, !dbg !2772
  store i64 %1, i64* %__esi, align 8, !dbg !2772
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !2774, metadata !DIExpression()), !dbg !2772
  %2 = load i64, i64* %__edx, align 8, !dbg !2772
  store i64 %2, i64* %__edx, align 8, !dbg !2772
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !2775, metadata !DIExpression()), !dbg !2772
  %3 = load i64, i64* %__ecx, align 8, !dbg !2772
  store i64 %3, i64* %__ecx, align 8, !dbg !2772
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !2776, metadata !DIExpression()), !dbg !2772
  %4 = load i64, i64* %__eax, align 8, !dbg !2772
  store i64 %4, i64* %__eax, align 8, !dbg !2772
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !2772
  %6 = call i64 @llvm.read_register.i64(metadata !2089), !dbg !2772
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #4, !dbg !2772, !srcloc !2777
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !2772
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !2772
  store i64 %asmresult, i64* %__eax, align 8, !dbg !2772
  call void @llvm.write_register.i64(metadata !2089, i64 %asmresult1), !dbg !2772
  ret void, !dbg !2778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_active_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2779 {
entry:
  %lock.addr.i11 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i11, metadata !2688, metadata !DIExpression()), !dbg !2780
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !2782
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2786, metadata !DIExpression()), !dbg !2787
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i8 0, i8* %enabled, align 1, !dbg !2793
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2794
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2795
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2796
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !2797
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2798, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2799
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2799
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2799
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2800
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2802
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2803
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2803
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !2800
  br i1 %tobool, label %if.then, label %if.end, !dbg !2804

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2805
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2807
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !2808
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !2808
  %active_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 13, !dbg !2809
  %7 = load i64, i64* %active_count, align 8, !dbg !2809
  store i64 %7, i64* %count, align 8, !dbg !2810
  store i8 1, i8* %enabled, align 1, !dbg !2811
  br label %if.end, !dbg !2812

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2813
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !2814
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !2815
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i11, align 8
  call void @arch_local_irq_enable() #6, !dbg !2816
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2817, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i11, align 8, !dbg !2818
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !2818
  %rlock.i12 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !2818
  %11 = load i8, i8* %enabled, align 1, !dbg !2819
  %tobool6 = trunc i8 %11 to i1, !dbg !2819
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2821

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2822
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !2823
  %conv = sext i32 %call to i64, !dbg !2823
  store i64 %conv, i64* %retval, align 8, !dbg !2824
  br label %return, !dbg !2824

if.end8:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !2825
  %14 = load i64, i64* %count, align 8, !dbg !2826
  %call9 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 %14) #5, !dbg !2827
  %conv10 = sext i32 %call9 to i64, !dbg !2827
  store i64 %conv10, i64* %retval, align 8, !dbg !2828
  br label %return, !dbg !2828

return:                                           ; preds = %if.end8, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !2829
  ret i64 %15, !dbg !2829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_abort_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2830 {
entry:
  %lock.addr.i11 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i11, metadata !2688, metadata !DIExpression()), !dbg !2831
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !2833
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2835, metadata !DIExpression()), !dbg !2836
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !2843, metadata !DIExpression()), !dbg !2844
  store i8 0, i8* %enabled, align 1, !dbg !2844
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2845
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2846
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2847
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !2848
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2849, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2850
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2850
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2850
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2851
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2853
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2854
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2854
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !2851
  br i1 %tobool, label %if.then, label %if.end, !dbg !2855

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2856
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2858
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !2859
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !2859
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 16, !dbg !2860
  %7 = load i64, i64* %wakeup_count, align 8, !dbg !2860
  store i64 %7, i64* %count, align 8, !dbg !2861
  store i8 1, i8* %enabled, align 1, !dbg !2862
  br label %if.end, !dbg !2863

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2864
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !2865
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !2866
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i11, align 8
  call void @arch_local_irq_enable() #6, !dbg !2867
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2868, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i11, align 8, !dbg !2869
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !2869
  %rlock.i12 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !2869
  %11 = load i8, i8* %enabled, align 1, !dbg !2870
  %tobool6 = trunc i8 %11 to i1, !dbg !2870
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2872

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2873
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !2874
  %conv = sext i32 %call to i64, !dbg !2874
  store i64 %conv, i64* %retval, align 8, !dbg !2875
  br label %return, !dbg !2875

if.end8:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !2876
  %14 = load i64, i64* %count, align 8, !dbg !2877
  %call9 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 %14) #5, !dbg !2878
  %conv10 = sext i32 %call9 to i64, !dbg !2878
  store i64 %conv10, i64* %retval, align 8, !dbg !2879
  br label %return, !dbg !2879

return:                                           ; preds = %if.end8, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !2880
  ret i64 %15, !dbg !2880
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_expire_count_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2881 {
entry:
  %lock.addr.i11 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i11, metadata !2688, metadata !DIExpression()), !dbg !2882
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !2884
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2886, metadata !DIExpression()), !dbg !2887
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i8 0, i8* %enabled, align 1, !dbg !2895
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2896
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2897
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2898
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !2899
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2900, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2901
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2901
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2901
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2902
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2904
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2905
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2905
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !2902
  br i1 %tobool, label %if.then, label %if.end, !dbg !2906

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2907
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2909
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !2910
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !2910
  %expire_count = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 15, !dbg !2911
  %7 = load i64, i64* %expire_count, align 8, !dbg !2911
  store i64 %7, i64* %count, align 8, !dbg !2912
  store i8 1, i8* %enabled, align 1, !dbg !2913
  br label %if.end, !dbg !2914

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2915
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !2916
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !2917
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i11, align 8
  call void @arch_local_irq_enable() #6, !dbg !2918
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2919, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i11, align 8, !dbg !2920
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !2920
  %rlock.i12 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !2920
  %11 = load i8, i8* %enabled, align 1, !dbg !2921
  %tobool6 = trunc i8 %11 to i1, !dbg !2921
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2923

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2924
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !2925
  %conv = sext i32 %call to i64, !dbg !2925
  store i64 %conv, i64* %retval, align 8, !dbg !2926
  br label %return, !dbg !2926

if.end8:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !2927
  %14 = load i64, i64* %count, align 8, !dbg !2928
  %call9 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 %14) #5, !dbg !2929
  %conv10 = sext i32 %call9 to i64, !dbg !2929
  store i64 %conv10, i64* %retval, align 8, !dbg !2930
  br label %return, !dbg !2930

return:                                           ; preds = %if.end8, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !2931
  ret i64 %15, !dbg !2931
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_active_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2932 {
entry:
  %lock.addr.i13 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i13, metadata !2688, metadata !DIExpression()), !dbg !2933
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !2935
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %active = alloca i32, align 4
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2937, metadata !DIExpression()), !dbg !2938
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2939, metadata !DIExpression()), !dbg !2940
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.declare(metadata i32* %active, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !2945, metadata !DIExpression()), !dbg !2946
  store i8 0, i8* %enabled, align 1, !dbg !2946
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2947
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2948
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !2949
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !2950
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2951, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2952
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2952
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !2952
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2953
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !2955
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !2956
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !2956
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !2953
  br i1 %tobool, label %if.then, label %if.end, !dbg !2957

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2958
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !2960
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !2961
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !2961
  %active4 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 18, !dbg !2962
  %bf.load = load i8, i8* %active4, align 8, !dbg !2962
  %bf.clear = and i8 %bf.load, 1, !dbg !2962
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2962
  %conv = zext i1 %bf.cast to i32, !dbg !2958
  store i32 %conv, i32* %active, align 4, !dbg !2963
  store i8 1, i8* %enabled, align 1, !dbg !2964
  br label %if.end, !dbg !2965

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2966
  %power5 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 11, !dbg !2967
  %lock6 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power5, i32 0, i32 3, !dbg !2968
  store %struct.spinlock* %lock6, %struct.spinlock** %lock.addr.i13, align 8
  call void @arch_local_irq_enable() #6, !dbg !2969
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !2970, !srcloc !2742
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i13, align 8, !dbg !2971
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !2971
  %rlock.i14 = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !2971
  %10 = load i8, i8* %enabled, align 1, !dbg !2972
  %tobool7 = trunc i8 %10 to i1, !dbg !2972
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2974

if.then8:                                         ; preds = %if.end
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !2975
  %call = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !2976
  %conv9 = sext i32 %call to i64, !dbg !2976
  store i64 %conv9, i64* %retval, align 8, !dbg !2977
  br label %return, !dbg !2977

if.end10:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !2978
  %13 = load i32, i32* %active, align 4, !dbg !2979
  %call11 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %13) #5, !dbg !2980
  %conv12 = sext i32 %call11 to i64, !dbg !2980
  store i64 %conv12, i64* %retval, align 8, !dbg !2981
  br label %return, !dbg !2981

return:                                           ; preds = %if.end10, %if.then8
  %14 = load i64, i64* %retval, align 8, !dbg !2982
  ret i64 %14, !dbg !2982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_total_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !2983 {
entry:
  %lock.addr.i12 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i12, metadata !2688, metadata !DIExpression()), !dbg !2984
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !2986
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %msec = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2988, metadata !DIExpression()), !dbg !2989
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !2990, metadata !DIExpression()), !dbg !2991
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.declare(metadata i64* %msec, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i8 0, i8* %enabled, align 1, !dbg !2997
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2998
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !2999
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !3000
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !3001
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3002, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3003
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !3003
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3003
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3004
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !3006
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !3007
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !3007
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !3004
  br i1 %tobool, label %if.then, label %if.end, !dbg !3008

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3009
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !3011
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !3012
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !3012
  %total_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 7, !dbg !3013
  %7 = load i64, i64* %total_time, align 8, !dbg !3013
  %call = call i64 @ktime_to_ms(i64 %7) #5, !dbg !3014
  store i64 %call, i64* %msec, align 8, !dbg !3015
  store i8 1, i8* %enabled, align 1, !dbg !3016
  br label %if.end, !dbg !3017

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3018
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !3019
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !3020
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i12, align 8
  call void @arch_local_irq_enable() #6, !dbg !3021
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3022, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i12, align 8, !dbg !3023
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !3023
  %rlock.i13 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !3023
  %11 = load i8, i8* %enabled, align 1, !dbg !3024
  %tobool6 = trunc i8 %11 to i1, !dbg !3024
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3026

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !3027
  %call8 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !3028
  %conv = sext i32 %call8 to i64, !dbg !3028
  store i64 %conv, i64* %retval, align 8, !dbg !3029
  br label %return, !dbg !3029

if.end9:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !3030
  %14 = load i64, i64* %msec, align 8, !dbg !3031
  %call10 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i64 %14) #5, !dbg !3032
  %conv11 = sext i32 %call10 to i64, !dbg !3032
  store i64 %conv11, i64* %retval, align 8, !dbg !3033
  br label %return, !dbg !3033

return:                                           ; preds = %if.end9, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !3034
  ret i64 %15, !dbg !3034
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ms(i64 %kt) #0 !dbg !3035 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !3039, metadata !DIExpression()), !dbg !3040
  %0 = load i64, i64* %kt.addr, align 8, !dbg !3041
  %call = call i64 @ktime_divns(i64 %0, i64 1000000) #5, !dbg !3042
  ret i64 %call, !dbg !3043
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_divns(i64 %kt, i64 %div) #0 !dbg !3044 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !3047, metadata !DIExpression()), !dbg !3048
  store i64 %div, i64* %div.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %div.addr, metadata !3049, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3051, metadata !DIExpression()), !dbg !3053
  %0 = load i64, i64* %div.addr, align 8, !dbg !3053
  %cmp = icmp slt i64 %0, 0, !dbg !3053
  %lnot = xor i1 %cmp, true, !dbg !3053
  %lnot1 = xor i1 %lnot, true, !dbg !3053
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3053
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3053
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3054
  %tobool = icmp ne i32 %1, 0, !dbg !3054
  %lnot2 = xor i1 %tobool, true, !dbg !3054
  %lnot4 = xor i1 %lnot2, true, !dbg !3054
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3054
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3054
  %tobool6 = icmp ne i64 %conv, 0, !dbg !3054
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3053

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3054

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !3056

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !3058

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !3056

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0), i32 154, i32 2305, i64 12) #4, !dbg !3060, !srcloc !3062
  br label %do.end9, !dbg !3060

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 93) #4, !dbg !3063, !srcloc !3065
  br label %do.body10, !dbg !3056

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !3066

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !3056

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !3056

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3053
  %tobool13 = icmp ne i32 %2, 0, !dbg !3053
  %lnot14 = xor i1 %tobool13, true, !dbg !3053
  %lnot16 = xor i1 %lnot14, true, !dbg !3053
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3053
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3053
  store i64 %conv18, i64* %tmp, align 8, !dbg !3054
  %3 = load i64, i64* %tmp, align 8, !dbg !3053
  %4 = load i64, i64* %kt.addr, align 8, !dbg !3068
  %5 = load i64, i64* %div.addr, align 8, !dbg !3069
  %div19 = sdiv i64 %4, %5, !dbg !3070
  ret i64 %div19, !dbg !3071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_max_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3072 {
entry:
  %lock.addr.i12 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i12, metadata !2688, metadata !DIExpression()), !dbg !3073
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !3075
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %msec = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata i64* %msec, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !3085, metadata !DIExpression()), !dbg !3086
  store i8 0, i8* %enabled, align 1, !dbg !3086
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3087
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3088
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !3089
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !3090
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3091, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3092
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !3092
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3092
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3093
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !3095
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !3096
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !3096
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !3093
  br i1 %tobool, label %if.then, label %if.end, !dbg !3097

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3098
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !3100
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !3101
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !3101
  %max_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 8, !dbg !3102
  %7 = load i64, i64* %max_time, align 8, !dbg !3102
  %call = call i64 @ktime_to_ms(i64 %7) #5, !dbg !3103
  store i64 %call, i64* %msec, align 8, !dbg !3104
  store i8 1, i8* %enabled, align 1, !dbg !3105
  br label %if.end, !dbg !3106

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3107
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !3108
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !3109
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i12, align 8
  call void @arch_local_irq_enable() #6, !dbg !3110
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3111, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i12, align 8, !dbg !3112
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !3112
  %rlock.i13 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !3112
  %11 = load i8, i8* %enabled, align 1, !dbg !3113
  %tobool6 = trunc i8 %11 to i1, !dbg !3113
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3115

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !3116
  %call8 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !3117
  %conv = sext i32 %call8 to i64, !dbg !3117
  store i64 %conv, i64* %retval, align 8, !dbg !3118
  br label %return, !dbg !3118

if.end9:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !3119
  %14 = load i64, i64* %msec, align 8, !dbg !3120
  %call10 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i64 %14) #5, !dbg !3121
  %conv11 = sext i32 %call10 to i64, !dbg !3121
  store i64 %conv11, i64* %retval, align 8, !dbg !3122
  br label %return, !dbg !3122

return:                                           ; preds = %if.end9, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !3123
  ret i64 %15, !dbg !3123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @wakeup_last_time_ms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3124 {
entry:
  %lock.addr.i12 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i12, metadata !2688, metadata !DIExpression()), !dbg !3125
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2696, metadata !DIExpression()), !dbg !3127
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %msec = alloca i64, align 8
  %enabled = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3129, metadata !DIExpression()), !dbg !3130
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3133, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.declare(metadata i64* %msec, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.declare(metadata i8* %enabled, metadata !3137, metadata !DIExpression()), !dbg !3138
  store i8 0, i8* %enabled, align 1, !dbg !3138
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3139
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3140
  %lock = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 3, !dbg !3141
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #6, !dbg !3142
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3143, !srcloc !2718
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3144
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !3144
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3144
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3145
  %power1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 11, !dbg !3147
  %wakeup = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power1, i32 0, i32 6, !dbg !3148
  %4 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup, align 8, !dbg !3148
  %tobool = icmp ne %struct.wakeup_source* %4, null, !dbg !3145
  br i1 %tobool, label %if.then, label %if.end, !dbg !3149

if.then:                                          ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3150
  %power2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !3152
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power2, i32 0, i32 6, !dbg !3153
  %6 = load %struct.wakeup_source*, %struct.wakeup_source** %wakeup3, align 8, !dbg !3153
  %last_time = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %6, i32 0, i32 9, !dbg !3154
  %7 = load i64, i64* %last_time, align 8, !dbg !3154
  %call = call i64 @ktime_to_ms(i64 %7) #5, !dbg !3155
  store i64 %call, i64* %msec, align 8, !dbg !3156
  store i8 1, i8* %enabled, align 1, !dbg !3157
  br label %if.end, !dbg !3158

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3159
  %power4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 11, !dbg !3160
  %lock5 = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power4, i32 0, i32 3, !dbg !3161
  store %struct.spinlock* %lock5, %struct.spinlock** %lock.addr.i12, align 8
  call void @arch_local_irq_enable() #6, !dbg !3162
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !3163, !srcloc !2742
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i12, align 8, !dbg !3164
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !3164
  %rlock.i13 = bitcast %union.anon* %10 to %struct.raw_spinlock*, !dbg !3164
  %11 = load i8, i8* %enabled, align 1, !dbg !3165
  %tobool6 = trunc i8 %11 to i1, !dbg !3165
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !3167

if.then7:                                         ; preds = %if.end
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !3168
  %call8 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #5, !dbg !3169
  %conv = sext i32 %call8 to i64, !dbg !3169
  store i64 %conv, i64* %retval, align 8, !dbg !3170
  br label %return, !dbg !3170

if.end9:                                          ; preds = %if.end
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !3171
  %14 = load i64, i64* %msec, align 8, !dbg !3172
  %call10 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i64 %14) #5, !dbg !3173
  %conv11 = sext i32 %call10 to i64, !dbg !3173
  store i64 %conv11, i64* %retval, align 8, !dbg !3174
  br label %return, !dbg !3174

return:                                           ; preds = %if.end9, %if.then7
  %15 = load i64, i64* %retval, align 8, !dbg !3175
  ret i64 %15, !dbg !3175
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pm_qos_latency_tolerance_us_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3176 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3177, metadata !DIExpression()), !dbg !3178
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3179, metadata !DIExpression()), !dbg !3180
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3183, metadata !DIExpression()), !dbg !3184
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3185
  %call = call i32 @dev_pm_qos_get_user_latency_tolerance(%struct.device* %0) #5, !dbg !3186
  store i32 %call, i32* %value, align 4, !dbg !3184
  %1 = load i32, i32* %value, align 4, !dbg !3187
  %cmp = icmp slt i32 %1, 0, !dbg !3189
  br i1 %cmp, label %if.then, label %if.end, !dbg !3190

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3191
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !3192
  %conv = sext i32 %call1 to i64, !dbg !3192
  store i64 %conv, i64* %retval, align 8, !dbg !3193
  br label %return, !dbg !3193

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !3194
  %cmp2 = icmp eq i32 %3, 2147483647, !dbg !3196
  br i1 %cmp2, label %if.then4, label %if.end7, !dbg !3197

if.then4:                                         ; preds = %if.end
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3198
  %call5 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #5, !dbg !3199
  %conv6 = sext i32 %call5 to i64, !dbg !3199
  store i64 %conv6, i64* %retval, align 8, !dbg !3200
  br label %return, !dbg !3200

if.end7:                                          ; preds = %if.end
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3201
  %6 = load i32, i32* %value, align 4, !dbg !3202
  %call8 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %6) #5, !dbg !3203
  %conv9 = sext i32 %call8 to i64, !dbg !3203
  store i64 %conv9, i64* %retval, align 8, !dbg !3204
  br label %return, !dbg !3204

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !3205
  ret i64 %7, !dbg !3205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pm_qos_latency_tolerance_us_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %n) #0 !dbg !3206 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %value = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3211, metadata !DIExpression()), !dbg !3212
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3217, metadata !DIExpression()), !dbg !3218
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3219
  %call = call i32 @kstrtos32(i8* %0, i32 0, i32* %value) #5, !dbg !3221
  %cmp = icmp eq i32 %call, 0, !dbg !3222
  br i1 %cmp, label %if.then, label %if.else, !dbg !3223

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %value, align 4, !dbg !3224
  %cmp1 = icmp slt i32 %1, 0, !dbg !3227
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3228

if.then2:                                         ; preds = %if.then
  store i64 -22, i64* %retval, align 8, !dbg !3229
  br label %return, !dbg !3229

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !3230

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3231
  %call3 = call zeroext i1 @sysfs_streq(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0)) #5, !dbg !3234
  br i1 %call3, label %if.then4, label %if.else5, !dbg !3235

if.then4:                                         ; preds = %if.else
  store i32 -1, i32* %value, align 4, !dbg !3236
  br label %if.end10, !dbg !3237

if.else5:                                         ; preds = %if.else
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !3238
  %call6 = call zeroext i1 @sysfs_streq(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0)) #5, !dbg !3240
  br i1 %call6, label %if.then7, label %if.else8, !dbg !3241

if.then7:                                         ; preds = %if.else5
  store i32 2147483647, i32* %value, align 4, !dbg !3242
  br label %if.end9, !dbg !3243

if.else8:                                         ; preds = %if.else5
  store i64 -22, i64* %retval, align 8, !dbg !3244
  br label %return, !dbg !3244

if.end9:                                          ; preds = %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3245
  %5 = load i32, i32* %value, align 4, !dbg !3246
  %call12 = call i32 @dev_pm_qos_update_user_latency_tolerance(%struct.device* %4, i32 %5) #5, !dbg !3247
  store i32 %call12, i32* %ret, align 4, !dbg !3248
  %6 = load i32, i32* %ret, align 4, !dbg !3249
  %cmp13 = icmp slt i32 %6, 0, !dbg !3250
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !3249

cond.true:                                        ; preds = %if.end11
  %7 = load i32, i32* %ret, align 4, !dbg !3251
  %conv = sext i32 %7 to i64, !dbg !3251
  br label %cond.end, !dbg !3249

cond.false:                                       ; preds = %if.end11
  %8 = load i64, i64* %n.addr, align 8, !dbg !3252
  br label %cond.end, !dbg !3249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %8, %cond.false ], !dbg !3249
  store i64 %cond, i64* %retval, align 8, !dbg !3253
  br label %return, !dbg !3253

return:                                           ; preds = %cond.end, %if.else8, %if.then2
  %9 = load i64, i64* %retval, align 8, !dbg !3254
  ret i64 %9, !dbg !3254
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_get_user_latency_tolerance(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtos32(i8* %s, i32 %base, i32* %res) #0 !dbg !3255 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3259, metadata !DIExpression()), !dbg !3260
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  store i32* %res, i32** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %res.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3265
  %1 = load i32, i32* %base.addr, align 4, !dbg !3266
  %2 = load i32*, i32** %res.addr, align 8, !dbg !3267
  %call = call i32 @kstrtoint(i8* %0, i32 %1, i32* %2) #5, !dbg !3268
  ret i32 %call, !dbg !3269
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_update_user_latency_tolerance(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @kstrtoint(i8*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_change_owner(%struct.device*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pm_qos_resume_latency_us_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3270 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3277, metadata !DIExpression()), !dbg !3278
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3279
  %call = call i32 @dev_pm_qos_requested_resume_latency(%struct.device* %0) #5, !dbg !3280
  store i32 %call, i32* %value, align 4, !dbg !3278
  %1 = load i32, i32* %value, align 4, !dbg !3281
  %cmp = icmp eq i32 %1, 0, !dbg !3283
  br i1 %cmp, label %if.then, label %if.end, !dbg !3284

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !3285
  %call1 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)) #5, !dbg !3286
  %conv = sext i32 %call1 to i64, !dbg !3286
  store i64 %conv, i64* %retval, align 8, !dbg !3287
  br label %return, !dbg !3287

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %value, align 4, !dbg !3288
  %cmp2 = icmp eq i32 %3, 2147483647, !dbg !3290
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3291

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %value, align 4, !dbg !3292
  br label %if.end5, !dbg !3293

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3294
  %5 = load i32, i32* %value, align 4, !dbg !3295
  %call6 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %5) #5, !dbg !3296
  %conv7 = sext i32 %call6 to i64, !dbg !3296
  store i64 %conv7, i64* %retval, align 8, !dbg !3297
  br label %return, !dbg !3297

return:                                           ; preds = %if.end5, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !3298
  ret i64 %6, !dbg !3298
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pm_qos_resume_latency_us_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %n) #0 !dbg !3299 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %value = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3300, metadata !DIExpression()), !dbg !3301
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3302, metadata !DIExpression()), !dbg !3303
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3304, metadata !DIExpression()), !dbg !3305
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.declare(metadata i32* %value, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3310, metadata !DIExpression()), !dbg !3311
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3312
  %call = call i32 @kstrtos32(i8* %0, i32 0, i32* %value) #5, !dbg !3314
  %tobool = icmp ne i32 %call, 0, !dbg !3314
  br i1 %tobool, label %if.else, label %if.then, !dbg !3315

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %value, align 4, !dbg !3316
  %cmp = icmp slt i32 %1, 0, !dbg !3319
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !3320

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %value, align 4, !dbg !3321
  %cmp1 = icmp eq i32 %2, 2147483647, !dbg !3322
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3323

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  store i64 -22, i64* %retval, align 8, !dbg !3324
  br label %return, !dbg !3324

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %value, align 4, !dbg !3325
  %cmp3 = icmp eq i32 %3, 0, !dbg !3327
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3328

if.then4:                                         ; preds = %if.end
  store i32 2147483647, i32* %value, align 4, !dbg !3329
  br label %if.end5, !dbg !3330

if.end5:                                          ; preds = %if.then4, %if.end
  br label %if.end10, !dbg !3331

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3332
  %call6 = call zeroext i1 @sysfs_streq(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #5, !dbg !3334
  br i1 %call6, label %if.then7, label %if.else8, !dbg !3335

if.then7:                                         ; preds = %if.else
  store i32 0, i32* %value, align 4, !dbg !3336
  br label %if.end9, !dbg !3338

if.else8:                                         ; preds = %if.else
  store i64 -22, i64* %retval, align 8, !dbg !3339
  br label %return, !dbg !3339

if.end9:                                          ; preds = %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end5
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3341
  %power = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 11, !dbg !3342
  %qos = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 27, !dbg !3343
  %6 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %qos, align 8, !dbg !3343
  %resume_latency_req = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %6, i32 0, i32 4, !dbg !3344
  %7 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %resume_latency_req, align 8, !dbg !3344
  %8 = load i32, i32* %value, align 4, !dbg !3345
  %call11 = call i32 @dev_pm_qos_update_request(%struct.dev_pm_qos_request* %7, i32 %8) #5, !dbg !3346
  store i32 %call11, i32* %ret, align 4, !dbg !3347
  %9 = load i32, i32* %ret, align 4, !dbg !3348
  %cmp12 = icmp slt i32 %9, 0, !dbg !3349
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !3348

cond.true:                                        ; preds = %if.end10
  %10 = load i32, i32* %ret, align 4, !dbg !3350
  %conv = sext i32 %10 to i64, !dbg !3350
  br label %cond.end, !dbg !3348

cond.false:                                       ; preds = %if.end10
  %11 = load i64, i64* %n.addr, align 8, !dbg !3351
  br label %cond.end, !dbg !3348

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %11, %cond.false ], !dbg !3348
  store i64 %cond, i64* %retval, align 8, !dbg !3352
  br label %return, !dbg !3352

return:                                           ; preds = %cond.end, %if.else8, %if.then2
  %12 = load i64, i64* %retval, align 8, !dbg !3353
  ret i64 %12, !dbg !3353
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_pm_qos_requested_resume_latency(%struct.device* %dev) #0 !dbg !3354 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3357, metadata !DIExpression()), !dbg !3358
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3359
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3360
  %qos = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 27, !dbg !3361
  %1 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %qos, align 8, !dbg !3361
  %resume_latency_req = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %1, i32 0, i32 4, !dbg !3362
  %2 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %resume_latency_req, align 8, !dbg !3362
  %data = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %2, i32 0, i32 1, !dbg !3363
  %pnode = bitcast %union.anon.38* %data to %struct.plist_node*, !dbg !3364
  %prio = getelementptr inbounds %struct.plist_node, %struct.plist_node* %pnode, i32 0, i32 0, !dbg !3365
  %3 = load i32, i32* %prio, align 8, !dbg !3365
  ret i32 %3, !dbg !3366
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_update_request(%struct.dev_pm_qos_request*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pm_qos_no_power_off_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3367 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3374
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3375
  %call = call i32 @dev_pm_qos_requested_flags(%struct.device* %1) #5, !dbg !3376
  %and = and i32 %call, 1, !dbg !3377
  %tobool = icmp ne i32 %and, 0, !dbg !3378
  %lnot = xor i1 %tobool, true, !dbg !3378
  %lnot1 = xor i1 %lnot, true, !dbg !3379
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3379
  %call2 = call i32 (i8*, i8*, ...) @sysfs_emit(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 %lnot.ext) #5, !dbg !3380
  %conv = sext i32 %call2 to i64, !dbg !3380
  ret i64 %conv, !dbg !3381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pm_qos_no_power_off_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %n) #0 !dbg !3382 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3383, metadata !DIExpression()), !dbg !3384
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3385, metadata !DIExpression()), !dbg !3386
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3387, metadata !DIExpression()), !dbg !3388
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3391, metadata !DIExpression()), !dbg !3392
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3393
  %call = call i32 @kstrtoint(i8* %0, i32 0, i32* %ret) #5, !dbg !3395
  %tobool = icmp ne i32 %call, 0, !dbg !3395
  br i1 %tobool, label %if.then, label %if.end, !dbg !3396

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !3397
  br label %return, !dbg !3397

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ret, align 4, !dbg !3398
  %cmp = icmp ne i32 %1, 0, !dbg !3400
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !3401

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %ret, align 4, !dbg !3402
  %cmp1 = icmp ne i32 %2, 1, !dbg !3403
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3404

if.then2:                                         ; preds = %land.lhs.true
  store i64 -22, i64* %retval, align 8, !dbg !3405
  br label %return, !dbg !3405

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3406
  %4 = load i32, i32* %ret, align 4, !dbg !3407
  %tobool4 = icmp ne i32 %4, 0, !dbg !3407
  %call5 = call i32 @dev_pm_qos_update_flags(%struct.device* %3, i32 1, i1 zeroext %tobool4) #5, !dbg !3408
  store i32 %call5, i32* %ret, align 4, !dbg !3409
  %5 = load i32, i32* %ret, align 4, !dbg !3410
  %cmp6 = icmp slt i32 %5, 0, !dbg !3411
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !3410

cond.true:                                        ; preds = %if.end3
  %6 = load i32, i32* %ret, align 4, !dbg !3412
  %conv = sext i32 %6 to i64, !dbg !3412
  br label %cond.end, !dbg !3410

cond.false:                                       ; preds = %if.end3
  %7 = load i64, i64* %n.addr, align 8, !dbg !3413
  br label %cond.end, !dbg !3410

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %7, %cond.false ], !dbg !3410
  store i64 %cond, i64* %retval, align 8, !dbg !3414
  br label %return, !dbg !3414

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %8 = load i64, i64* %retval, align 8, !dbg !3415
  ret i64 %8, !dbg !3415
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dev_pm_qos_requested_flags(%struct.device* %dev) #0 !dbg !3416 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3417, metadata !DIExpression()), !dbg !3418
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3419
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !3420
  %qos = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 27, !dbg !3421
  %1 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %qos, align 8, !dbg !3421
  %flags_req = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %1, i32 0, i32 6, !dbg !3422
  %2 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %flags_req, align 8, !dbg !3422
  %data = getelementptr inbounds %struct.dev_pm_qos_request, %struct.dev_pm_qos_request* %2, i32 0, i32 1, !dbg !3423
  %flr = bitcast %union.anon.38* %data to %struct.pm_qos_flags_request*, !dbg !3424
  %flags = getelementptr inbounds %struct.pm_qos_flags_request, %struct.pm_qos_flags_request* %flr, i32 0, i32 1, !dbg !3425
  %3 = load i32, i32* %flags, align 8, !dbg !3425
  ret i32 %3, !dbg !3426
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_qos_update_flags(%struct.device*, i32, i1 zeroext) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { noredzone }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2089}
!llvm.module.flags = !{!2090, !2091, !2092, !2093}
!llvm.ident = !{!2094}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_group_name", scope: !2, file: !3, line: 95, type: !2088, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !98, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/sysfs.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !56, !63, !67, !78}
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
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !68, line: 53, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77}
!70 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!71 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!74 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!75 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!76 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 10, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!83 = !{!84, !91, !92, !94, !96}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !85, line: 107, baseType: !86)
!85 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !87, line: 23, baseType: !88)
!87 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !89, line: 31, baseType: !90)
!89 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!90 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !87, line: 20, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !89, line: 26, baseType: !91)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !87, line: 21, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !89, line: 27, baseType: !7)
!98 = !{!0, !99, !1568, !1571, !1573, !1576, !2020, !2022, !2027, !2030, !2032, !2034, !2036, !2038, !2043, !2045, !2048, !2053, !2055, !2057, !2059, !2061, !2063, !2065, !2067, !2069, !2071, !2074, !2076, !2078, !2080, !2082, !2084, !2086}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "pm_attr_group", scope: !2, file: !3, line: 625, type: !101, isLocal: true, isDefinition: true)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !103, line: 84, size: 320, elements: !104)
!103 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !109, !1546, !1565, !1566}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 85, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !102, file: !103, line: 86, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !115, !208, !91}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !85, line: 19, baseType: !114)
!114 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !68, line: 64, size: 512, elements: !117)
!117 = !{!118, !119, !125, !126, !186, !285, !1536, !1541, !1542, !1543, !1544, !1545}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !116, file: !68, line: 65, baseType: !106, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !116, file: !68, line: 66, baseType: !120, size: 128, offset: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !85, line: 178, size: 128, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !85, line: 179, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !120, file: !85, line: 179, baseType: !123, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !116, file: !68, line: 67, baseType: !115, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !116, file: !68, line: 68, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !68, line: 192, size: 704, elements: !129)
!129 = !{!130, !131, !147, !148}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !128, file: !68, line: 193, baseType: !120, size: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !128, file: !68, line: 194, baseType: !132, offset: 128)
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
!147 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !68, line: 195, baseType: !116, size: 512, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !128, file: !68, line: 196, baseType: !149, size: 64, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !68, line: 156, size: 192, elements: !152)
!152 = !{!153, !158, !163}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !151, file: !68, line: 157, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!91, !127, !115}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !68, line: 158, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!106, !127, !115}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !151, file: !68, line: 159, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!91, !127, !115, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !68, line: 148, size: 20736, elements: !170)
!170 = !{!171, !176, !180, !181, !185}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !169, file: !68, line: 149, baseType: !172, size: 192)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 192, elements: !174)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!174 = !{!175}
!175 = !DISubrange(count: 3)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !169, file: !68, line: 150, baseType: !177, size: 4096, offset: 192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 4096, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !169, file: !68, line: 151, baseType: !91, size: 32, offset: 4288)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !169, file: !68, line: 152, baseType: !182, size: 16384, offset: 4320)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16384, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 2048)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !169, file: !68, line: 153, baseType: !91, size: 32, offset: 20704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !116, file: !68, line: 69, baseType: !187, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !68, line: 138, size: 448, elements: !189)
!189 = !{!190, !194, !221, !223, !226, !262, !266}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !188, file: !68, line: 139, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !115}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !188, file: !68, line: 140, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !103, line: 230, size: 128, elements: !198)
!198 = !{!199, !213}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !197, file: !103, line: 231, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !115, !208, !173}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !85, line: 60, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !205, line: 73, baseType: !206)
!205 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !205, line: 15, baseType: !207)
!207 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !103, line: 30, size: 128, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !103, line: 31, baseType: !106, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !209, file: !103, line: 32, baseType: !113, size: 16, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !197, file: !103, line: 232, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!203, !115, !208, !106, !217}
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 55, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !205, line: 72, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !205, line: 16, baseType: !220)
!220 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !188, file: !68, line: 141, baseType: !222, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !188, file: !68, line: 142, baseType: !224, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !188, file: !68, line: 143, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !115}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !233)
!233 = !{!234, !235, !241, !246, !254, !258}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !232, file: !18, line: 40, baseType: !17, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !232, file: !18, line: 41, baseType: !236, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !85, line: 30, baseType: !240)
!240 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !232, file: !18, line: 42, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !232, file: !18, line: 43, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !232, file: !18, line: 44, baseType: !255, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!250}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !232, file: !18, line: 45, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !245}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !188, file: !68, line: 144, baseType: !263, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!250, !115}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !188, file: !68, line: 145, baseType: !267, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !115, !270, !278}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !272, line: 23, baseType: !273)
!272 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 21, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !273, file: !272, line: 22, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !85, line: 32, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !205, line: 49, baseType: !7)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !272, line: 28, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 26, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !280, file: !272, line: 27, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !85, line: 33, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !205, line: 50, baseType: !7)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !116, file: !68, line: 70, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !288, line: 123, size: 1024, elements: !289)
!288 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !295, !296, !297, !298, !306, !307, !308, !1529, !1530, !1531, !1532, !1533}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !287, file: !288, line: 124, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !85, line: 168, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 166, size: 32, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !292, file: !85, line: 167, baseType: !91, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !287, file: !288, line: 125, baseType: !291, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !287, file: !288, line: 135, baseType: !286, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !287, file: !288, line: 136, baseType: !106, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !287, file: !288, line: 138, baseType: !299, size: 192, align: 64, offset: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !300, line: 24, size: 192, align: 64, elements: !301)
!300 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !303, !305}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !299, file: !300, line: 25, baseType: !220, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !299, file: !300, line: 26, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !299, file: !300, line: 27, baseType: !304, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !287, file: !288, line: 140, baseType: !250, size: 64, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !287, file: !288, line: 141, baseType: !7, size: 32, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !288, line: 142, baseType: !309, size: 256, offset: 512)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !288, line: 142, size: 256, elements: !310)
!310 = !{!311, !376, !380}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !309, file: !288, line: 143, baseType: !312, size: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !288, line: 91, size: 192, elements: !313)
!313 = !{!314, !315, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !312, file: !288, line: 92, baseType: !220, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !312, file: !288, line: 94, baseType: !316, size: 64, offset: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !300, line: 31, size: 64, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !316, file: !300, line: 32, baseType: !304, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !312, file: !288, line: 100, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !288, line: 180, size: 704, elements: !322)
!322 = !{!323, !324, !325, !339, !340, !341, !368, !369}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !321, file: !288, line: 182, baseType: !286, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !288, line: 183, baseType: !7, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !321, file: !288, line: 186, baseType: !326, size: 192, offset: 128)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !327, line: 19, size: 192, elements: !328)
!327 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !326, file: !327, line: 20, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !331, line: 292, size: 128, elements: !332)
!331 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !334, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !330, file: !331, line: 293, baseType: !132)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !330, file: !331, line: 295, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !85, line: 148, baseType: !7)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !330, file: !331, line: 296, baseType: !245, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !326, file: !327, line: 21, baseType: !7, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !326, file: !327, line: 22, baseType: !7, size: 32, offset: 160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !321, file: !288, line: 187, baseType: !96, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !321, file: !288, line: 188, baseType: !96, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !321, file: !288, line: 189, baseType: !342, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !288, line: 168, size: 320, elements: !344)
!344 = !{!345, !352, !356, !360, !364}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !343, file: !288, line: 169, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!91, !349, !320}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !351, line: 539, flags: DIFlagFwdDecl)
!351 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !343, file: !288, line: 171, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!91, !286, !106, !113}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !343, file: !288, line: 173, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!91, !286}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !343, file: !288, line: 174, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!91, !286, !286, !106}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !343, file: !288, line: 176, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!91, !349, !286, !320}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !321, file: !288, line: 192, baseType: !120, size: 128, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !321, file: !288, line: 194, baseType: !370, size: 128, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !371, line: 40, baseType: !372)
!371 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !371, line: 36, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !372, file: !371, line: 37, baseType: !132)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !372, file: !371, line: 38, baseType: !120, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !309, file: !288, line: 144, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !288, line: 103, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !377, file: !288, line: 104, baseType: !286, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !309, file: !288, line: 145, baseType: !381, size: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !288, line: 107, size: 256, elements: !382)
!382 = !{!383, !1524, !1527, !1528}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !381, file: !288, line: 108, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !288, line: 217, size: 768, elements: !387)
!387 = !{!388, !428, !432, !436, !443, !447, !451, !455, !456, !457, !458, !466}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !386, file: !288, line: 222, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!91, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !288, line: 197, size: 1088, elements: !394)
!394 = !{!395, !396, !399, !400, !401, !416, !417, !418, !419, !420, !421, !422, !423}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !393, file: !288, line: 199, baseType: !286, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !393, file: !288, line: 200, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !351, line: 526, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !393, file: !288, line: 201, baseType: !349, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !393, file: !288, line: 202, baseType: !245, size: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !393, file: !288, line: 205, baseType: !402, size: 192, offset: 256)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !403, line: 53, size: 192, elements: !404)
!403 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405, !414, !415}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !402, file: !403, line: 54, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !407, line: 13, baseType: !408)
!407 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !85, line: 175, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 173, size: 64, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !409, file: !85, line: 174, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !87, line: 22, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !89, line: 30, baseType: !93)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !402, file: !403, line: 55, baseType: !132, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !402, file: !403, line: 59, baseType: !120, size: 128, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !393, file: !288, line: 206, baseType: !402, size: 192, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !393, file: !288, line: 207, baseType: !91, size: 32, offset: 640)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !393, file: !288, line: 208, baseType: !120, size: 128, offset: 704)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !393, file: !288, line: 209, baseType: !173, size: 64, offset: 832)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !393, file: !288, line: 211, baseType: !217, size: 64, offset: 896)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !393, file: !288, line: 212, baseType: !239, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !393, file: !288, line: 213, baseType: !239, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !393, file: !288, line: 214, baseType: !424, size: 64, offset: 1024)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !427, line: 356, flags: DIFlagFwdDecl)
!427 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!428 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !386, file: !288, line: 223, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !392}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !386, file: !288, line: 236, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!91, !349, !245}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !386, file: !288, line: 238, baseType: !437, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!245, !349, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !85, line: 46, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !205, line: 88, baseType: !93)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !386, file: !288, line: 239, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!245, !349, !245, !440}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !386, file: !288, line: 240, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !349, !245}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !386, file: !288, line: 242, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!203, !392, !173, !217, !441}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !386, file: !288, line: 252, baseType: !217, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !386, file: !288, line: 259, baseType: !239, size: 8, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !386, file: !288, line: 260, baseType: !452, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !386, file: !288, line: 263, baseType: !459, size: 64, offset: 640)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !392, !464}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !463, line: 52, baseType: !7)
!463 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !288, line: 27, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !386, file: !288, line: 266, baseType: !467, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!91, !392, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !427, line: 305, size: 1472, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !1501, !1507, !1508, !1513, !1514, !1517, !1518, !1519, !1520, !1521, !1522}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !471, file: !427, line: 308, baseType: !220, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !471, file: !427, line: 309, baseType: !220, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !471, file: !427, line: 313, baseType: !470, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !471, file: !427, line: 313, baseType: !470, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !471, file: !427, line: 315, baseType: !299, size: 192, align: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !471, file: !427, line: 323, baseType: !220, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !471, file: !427, line: 327, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !427, line: 388, size: 7296, elements: !482)
!482 = !{!483, !1497}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !427, line: 389, baseType: !484, size: 7296)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !427, line: 389, size: 7296, elements: !485)
!485 = !{!486, !487, !488, !489, !493, !494, !495, !496, !497, !505, !506, !507, !508, !509, !510, !511, !512, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !547, !555, !558, !584, !585, !1468, !1469, !1472, !1475, !1476, !1479, !1480, !1481, !1484, !1496}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !484, file: !427, line: 390, baseType: !470, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !484, file: !427, line: 391, baseType: !316, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !484, file: !427, line: 392, baseType: !86, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !484, file: !427, line: 394, baseType: !490, size: 64, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!220, !397, !220, !220, !220, !220}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !484, file: !427, line: 398, baseType: !220, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !484, file: !427, line: 399, baseType: !220, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !484, file: !427, line: 405, baseType: !220, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !484, file: !427, line: 406, baseType: !220, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !484, file: !427, line: 407, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !351, line: 286, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 286, size: 64, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !500, file: !351, line: 286, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !504, line: 18, baseType: !220)
!504 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!505 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !484, file: !427, line: 416, baseType: !291, size: 32, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !484, file: !427, line: 428, baseType: !291, size: 32, offset: 608)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !484, file: !427, line: 437, baseType: !291, size: 32, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !484, file: !427, line: 447, baseType: !291, size: 32, offset: 672)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !484, file: !427, line: 450, baseType: !406, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !484, file: !427, line: 452, baseType: !91, size: 32, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !484, file: !427, line: 454, baseType: !132, offset: 800)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !484, file: !427, line: 457, baseType: !513, size: 256, offset: 832)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !514, line: 35, size: 256, elements: !515)
!514 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !517, !518, !520}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !513, file: !514, line: 36, baseType: !406, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !513, file: !514, line: 42, baseType: !406, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !513, file: !514, line: 46, baseType: !519, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !133, line: 29, baseType: !140)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !513, file: !514, line: 47, baseType: !120, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !484, file: !427, line: 459, baseType: !120, size: 128, offset: 1088)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !484, file: !427, line: 466, baseType: !220, size: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !484, file: !427, line: 467, baseType: !220, size: 64, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !484, file: !427, line: 469, baseType: !220, size: 64, offset: 1344)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !484, file: !427, line: 470, baseType: !220, size: 64, offset: 1408)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !484, file: !427, line: 471, baseType: !408, size: 64, offset: 1472)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !484, file: !427, line: 472, baseType: !220, size: 64, offset: 1536)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !484, file: !427, line: 473, baseType: !220, size: 64, offset: 1600)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !484, file: !427, line: 474, baseType: !220, size: 64, offset: 1664)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !484, file: !427, line: 475, baseType: !220, size: 64, offset: 1728)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !484, file: !427, line: 477, baseType: !132, offset: 1792)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !484, file: !427, line: 478, baseType: !220, size: 64, offset: 1792)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !484, file: !427, line: 478, baseType: !220, size: 64, offset: 1856)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !484, file: !427, line: 478, baseType: !220, size: 64, offset: 1920)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !484, file: !427, line: 478, baseType: !220, size: 64, offset: 1984)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !484, file: !427, line: 479, baseType: !220, size: 64, offset: 2048)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !484, file: !427, line: 479, baseType: !220, size: 64, offset: 2112)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !484, file: !427, line: 479, baseType: !220, size: 64, offset: 2176)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !484, file: !427, line: 480, baseType: !220, size: 64, offset: 2240)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !484, file: !427, line: 480, baseType: !220, size: 64, offset: 2304)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !484, file: !427, line: 480, baseType: !220, size: 64, offset: 2368)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !484, file: !427, line: 480, baseType: !220, size: 64, offset: 2432)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !484, file: !427, line: 482, baseType: !544, size: 2816, offset: 2496)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2816, elements: !545)
!545 = !{!546}
!546 = !DISubrange(count: 44)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !484, file: !427, line: 488, baseType: !548, size: 256, offset: 5312)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !549, line: 60, size: 256, elements: !550)
!549 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !548, file: !549, line: 61, baseType: !552, size: 256)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 256, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 4)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !484, file: !427, line: 490, baseType: !556, size: 64, offset: 5568)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !427, line: 490, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !484, file: !427, line: 493, baseType: !559, size: 896, offset: 5632)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !560, line: 53, baseType: !561)
!560 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !560, line: 13, size: 896, elements: !562)
!562 = !{!563, !564, !565, !566, !569, !570, !571, !572, !576, !577, !580}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !561, file: !560, line: 18, baseType: !86, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !561, file: !560, line: 28, baseType: !408, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !561, file: !560, line: 31, baseType: !513, size: 256, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !561, file: !560, line: 32, baseType: !567, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !560, line: 32, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !561, file: !560, line: 37, baseType: !114, size: 16, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !561, file: !560, line: 40, baseType: !402, size: 192, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !561, file: !560, line: 41, baseType: !245, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !561, file: !560, line: 42, baseType: !573, size: 64, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !560, line: 42, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !561, file: !560, line: 44, baseType: !291, size: 32, offset: 832)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !561, file: !560, line: 50, baseType: !578, size: 16, offset: 864)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !87, line: 19, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !89, line: 24, baseType: !114)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !561, file: !560, line: 51, baseType: !581, size: 16, offset: 880)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !87, line: 18, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !89, line: 23, baseType: !583)
!583 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !427, line: 495, baseType: !220, size: 64, offset: 6528)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !484, file: !427, line: 497, baseType: !586, size: 64, offset: 6592)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !427, line: 381, size: 384, elements: !588)
!588 = !{!589, !590, !1467}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !587, file: !427, line: 382, baseType: !291, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !587, file: !427, line: 383, baseType: !591, size: 128, offset: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !427, line: 376, size: 128, elements: !592)
!592 = !{!593, !1465}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !591, file: !427, line: 377, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !596, line: 640, size: 48640, elements: !597)
!596 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !604, !606, !607, !613, !614, !615, !616, !617, !618, !619, !620, !624, !642, !653, !748, !749, !750, !761, !762, !764, !765, !766, !767, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !844, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !894, !896, !897, !898, !910, !912, !913, !914, !915, !916, !922, !923, !924, !925, !926, !927, !928, !940, !945, !949, !950, !951, !954, !958, !961, !964, !967, !970, !973, !976, !979, !985, !986, !987, !993, !994, !995, !996, !997, !1006, !1007, !1008, !1009, !1010, !1015, !1016, !1017, !1020, !1021, !1024, !1027, !1030, !1033, !1036, !1039, !1040, !1119, !1122, !1125, !1126, !1129, !1130, !1131, !1137, !1138, !1139, !1152, !1153, !1154, !1164, !1169, !1172, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !595, file: !596, line: 646, baseType: !599, size: 128)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !600, line: 56, size: 128, elements: !601)
!600 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !600, line: 57, baseType: !220, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !599, file: !600, line: 58, baseType: !96, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !595, file: !596, line: 649, baseType: !605, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !207)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !595, file: !596, line: 657, baseType: !245, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !595, file: !596, line: 658, baseType: !608, size: 32, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !609, line: 113, baseType: !610)
!609 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !609, line: 111, size: 32, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !610, file: !609, line: 112, baseType: !291, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !596, line: 660, baseType: !7, size: 32, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !595, file: !596, line: 661, baseType: !7, size: 32, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !595, file: !596, line: 684, baseType: !91, size: 32, offset: 352)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !595, file: !596, line: 686, baseType: !91, size: 32, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !595, file: !596, line: 687, baseType: !91, size: 32, offset: 416)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !595, file: !596, line: 688, baseType: !91, size: 32, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !595, file: !596, line: 689, baseType: !7, size: 32, offset: 480)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !595, file: !596, line: 691, baseType: !621, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !596, line: 691, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !595, file: !596, line: 692, baseType: !625, size: 832, offset: 576)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !596, line: 451, size: 832, elements: !626)
!626 = !{!627, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !625, file: !596, line: 453, baseType: !628, size: 128)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !596, line: 325, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !628, file: !596, line: 326, baseType: !220, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !628, file: !596, line: 327, baseType: !96, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !625, file: !596, line: 454, baseType: !299, size: 192, align: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !625, file: !596, line: 455, baseType: !120, size: 128, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !625, file: !596, line: 456, baseType: !7, size: 32, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !625, file: !596, line: 458, baseType: !86, size: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !625, file: !596, line: 459, baseType: !86, size: 64, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !625, file: !596, line: 460, baseType: !86, size: 64, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !625, file: !596, line: 461, baseType: !86, size: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !625, file: !596, line: 463, baseType: !86, size: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !625, file: !596, line: 465, baseType: !641, offset: 832)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !596, line: 415, elements: !146)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !595, file: !596, line: 693, baseType: !643, size: 384, offset: 1408)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !596, line: 489, size: 384, elements: !644)
!644 = !{!645, !646, !647, !648, !649, !650, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !643, file: !596, line: 490, baseType: !120, size: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !643, file: !596, line: 491, baseType: !220, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !643, file: !596, line: 492, baseType: !220, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !643, file: !596, line: 493, baseType: !7, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !643, file: !596, line: 494, baseType: !114, size: 16, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !643, file: !596, line: 495, baseType: !114, size: 16, offset: 304)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !643, file: !596, line: 497, baseType: !652, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !595, file: !596, line: 697, baseType: !654, size: 1792, offset: 1792)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !596, line: 507, size: 1792, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !745, !746}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !654, file: !596, line: 508, baseType: !299, size: 192, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !654, file: !596, line: 515, baseType: !86, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !654, file: !596, line: 516, baseType: !86, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !654, file: !596, line: 517, baseType: !86, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !654, file: !596, line: 518, baseType: !86, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !654, file: !596, line: 519, baseType: !86, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !654, file: !596, line: 526, baseType: !412, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !654, file: !596, line: 527, baseType: !86, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !596, line: 528, baseType: !7, size: 32, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !654, file: !596, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !654, file: !596, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !654, file: !596, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !654, file: !596, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !654, file: !596, line: 563, baseType: !670, size: 512, offset: 704)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !671)
!671 = !{!672, !680, !681, !686, !738, !742, !743, !744}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !6, line: 119, baseType: !673, size: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !674, line: 9, size: 256, elements: !675)
!674 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !674, line: 10, baseType: !299, size: 192, align: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !673, file: !674, line: 11, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !679, line: 29, baseType: !412)
!679 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !670, file: !6, line: 120, baseType: !678, size: 64, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !670, file: !6, line: 121, baseType: !682, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!5, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !670, file: !6, line: 122, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !689)
!689 = !{!690, !710, !711, !714, !724, !725, !733, !737}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !688, file: !6, line: 160, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !692, file: !6, line: 215, baseType: !519)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !692, file: !6, line: 216, baseType: !7, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !692, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !692, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !692, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !692, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !692, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !692, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !692, file: !6, line: 233, baseType: !678, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !692, file: !6, line: 234, baseType: !685, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !692, file: !6, line: 235, baseType: !678, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !692, file: !6, line: 236, baseType: !685, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !692, file: !6, line: 237, baseType: !707, size: 4096, offset: 512)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 4096, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 8)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !688, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !688, file: !6, line: 162, baseType: !712, size: 32, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !85, line: 27, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !205, line: 96, baseType: !91)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !688, file: !6, line: 163, baseType: !715, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !716, line: 276, baseType: !717)
!716 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !716, line: 276, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !717, file: !716, line: 276, baseType: !720, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !716, line: 70, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !716, line: 65, size: 32, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !721, file: !716, line: 66, baseType: !7, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !688, file: !6, line: 164, baseType: !685, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !688, file: !6, line: 165, baseType: !726, size: 128, offset: 256)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !674, line: 14, size: 128, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !726, file: !674, line: 15, baseType: !729, size: 128)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !300, line: 125, size: 128, elements: !730)
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !729, file: !300, line: 126, baseType: !316, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !729, file: !300, line: 127, baseType: !304, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !688, file: !6, line: 166, baseType: !734, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!678}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !688, file: !6, line: 167, baseType: !678, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !670, file: !6, line: 123, baseType: !739, size: 8, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !87, line: 17, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !89, line: 21, baseType: !741)
!741 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !670, file: !6, line: 124, baseType: !739, size: 8, offset: 456)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !670, file: !6, line: 125, baseType: !739, size: 8, offset: 464)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !670, file: !6, line: 126, baseType: !739, size: 8, offset: 472)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !654, file: !596, line: 572, baseType: !670, size: 512, offset: 1216)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !654, file: !596, line: 580, baseType: !747, size: 64, offset: 1728)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !595, file: !596, line: 721, baseType: !7, size: 32, offset: 3584)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !595, file: !596, line: 722, baseType: !91, size: 32, offset: 3616)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !595, file: !596, line: 723, baseType: !751, size: 64, offset: 3648)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !754, line: 17, baseType: !755)
!754 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !754, line: 17, size: 64, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !755, file: !754, line: 17, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 64, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 1)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !595, file: !596, line: 724, baseType: !753, size: 64, offset: 3712)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !595, file: !596, line: 749, baseType: !763, offset: 3776)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !596, line: 290, elements: !146)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !595, file: !596, line: 751, baseType: !120, size: 128, offset: 3776)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !595, file: !596, line: 757, baseType: !480, size: 64, offset: 3904)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !595, file: !596, line: 758, baseType: !480, size: 64, offset: 3968)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !595, file: !596, line: 761, baseType: !768, size: 320, offset: 4032)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !549, line: 34, size: 320, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !768, file: !549, line: 35, baseType: !86, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !768, file: !549, line: 36, baseType: !772, size: 256, offset: 64)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !553)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !595, file: !596, line: 766, baseType: !91, size: 32, offset: 4352)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !595, file: !596, line: 767, baseType: !91, size: 32, offset: 4384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !595, file: !596, line: 768, baseType: !91, size: 32, offset: 4416)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !595, file: !596, line: 770, baseType: !91, size: 32, offset: 4448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !595, file: !596, line: 772, baseType: !220, size: 64, offset: 4480)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !595, file: !596, line: 775, baseType: !7, size: 32, offset: 4544)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !595, file: !596, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !595, file: !596, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !595, file: !596, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !595, file: !596, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !595, file: !596, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !595, file: !596, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !595, file: !596, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !595, file: !596, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !595, file: !596, line: 831, baseType: !220, size: 64, offset: 4672)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !595, file: !596, line: 833, baseType: !789, size: 384, offset: 4736)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !790)
!790 = !{!791, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !789, file: !12, line: 26, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!207, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !12, line: 27, baseType: !797, size: 320, offset: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !12, line: 27, size: 320, elements: !798)
!798 = !{!799, !809, !834}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !797, file: !12, line: 36, baseType: !800, size: 320)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !12, line: 29, size: 320, elements: !801)
!801 = !{!802, !804, !805, !806, !807, !808}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !800, file: !12, line: 30, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !800, file: !12, line: 31, baseType: !96, size: 32, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !12, line: 32, baseType: !96, size: 32, offset: 96)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !800, file: !12, line: 33, baseType: !96, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !800, file: !12, line: 34, baseType: !86, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !800, file: !12, line: 35, baseType: !803, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !797, file: !12, line: 46, baseType: !810, size: 192)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !12, line: 38, size: 192, elements: !811)
!811 = !{!812, !813, !814, !833}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !810, file: !12, line: 39, baseType: !712, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !810, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !810, file: !12, line: 41, baseType: !815, size: 64, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !810, file: !12, line: 41, size: 64, elements: !816)
!816 = !{!817, !825}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !815, file: !12, line: 42, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !820, line: 7, size: 128, elements: !821)
!820 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !819, file: !820, line: 8, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !205, line: 93, baseType: !93)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !819, file: !820, line: 9, baseType: !93, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !815, file: !12, line: 43, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !828, line: 7, size: 64, elements: !829)
!828 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!829 = !{!830, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !827, file: !828, line: 8, baseType: !831, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !828, line: 5, baseType: !94)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !827, file: !828, line: 9, baseType: !94, size: 32, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !810, file: !12, line: 45, baseType: !86, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !797, file: !12, line: 54, baseType: !835, size: 256)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !12, line: 48, size: 256, elements: !836)
!836 = !{!837, !840, !841, !842, !843}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !835, file: !12, line: 49, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !835, file: !12, line: 50, baseType: !91, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !835, file: !12, line: 51, baseType: !91, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !835, file: !12, line: 52, baseType: !220, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !835, file: !12, line: 53, baseType: !220, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !595, file: !596, line: 835, baseType: !845, size: 32, offset: 5120)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !85, line: 22, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !205, line: 28, baseType: !91)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !595, file: !596, line: 836, baseType: !845, size: 32, offset: 5152)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !595, file: !596, line: 840, baseType: !220, size: 64, offset: 5184)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !595, file: !596, line: 849, baseType: !594, size: 64, offset: 5248)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !595, file: !596, line: 852, baseType: !594, size: 64, offset: 5312)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !595, file: !596, line: 857, baseType: !120, size: 128, offset: 5376)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !595, file: !596, line: 858, baseType: !120, size: 128, offset: 5504)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !595, file: !596, line: 859, baseType: !594, size: 64, offset: 5632)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !595, file: !596, line: 867, baseType: !120, size: 128, offset: 5696)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !595, file: !596, line: 868, baseType: !120, size: 128, offset: 5824)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !595, file: !596, line: 871, baseType: !857, size: 64, offset: 5952)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !859, line: 59, size: 768, elements: !860)
!859 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862, !863, !864, !875, !876, !877, !886}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !858, file: !859, line: 61, baseType: !608, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !858, file: !859, line: 62, baseType: !7, size: 32, offset: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !858, file: !859, line: 63, baseType: !132, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !858, file: !859, line: 65, baseType: !865, size: 256, offset: 64)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 256, elements: !553)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !85, line: 182, size: 64, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !866, file: !85, line: 183, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !85, line: 186, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !870, file: !85, line: 187, baseType: !869, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !870, file: !85, line: 187, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !858, file: !859, line: 66, baseType: !866, size: 64, offset: 320)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !858, file: !859, line: 68, baseType: !370, size: 128, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !858, file: !859, line: 69, baseType: !878, size: 128, align: 64, offset: 512)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !85, line: 216, size: 128, align: 64, elements: !879)
!879 = !{!880, !882}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !85, line: 217, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !878, file: !85, line: 218, baseType: !883, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !881}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !858, file: !859, line: 70, baseType: !887, size: 128, offset: 640)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 128, elements: !759)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !859, line: 54, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !888, file: !859, line: 55, baseType: !91, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !888, file: !859, line: 56, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !859, line: 56, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !595, file: !596, line: 872, baseType: !895, size: 512, offset: 6016)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 512, elements: !553)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !595, file: !596, line: 873, baseType: !120, size: 128, offset: 6528)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !595, file: !596, line: 874, baseType: !120, size: 128, offset: 6656)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !595, file: !596, line: 876, baseType: !899, size: 64, offset: 6784)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !901, line: 26, size: 192, elements: !902)
!901 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !900, file: !901, line: 27, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !900, file: !901, line: 28, baseType: !905, size: 128, offset: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !906, line: 43, size: 128, elements: !907)
!906 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !906, line: 44, baseType: !519)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !905, file: !906, line: 45, baseType: !120, size: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !595, file: !596, line: 879, baseType: !911, size: 64, offset: 6848)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !595, file: !596, line: 882, baseType: !911, size: 64, offset: 6912)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !595, file: !596, line: 884, baseType: !86, size: 64, offset: 6976)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !595, file: !596, line: 885, baseType: !86, size: 64, offset: 7040)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !595, file: !596, line: 890, baseType: !86, size: 64, offset: 7104)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !595, file: !596, line: 891, baseType: !917, size: 128, offset: 7168)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !596, line: 242, size: 128, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !917, file: !596, line: 244, baseType: !86, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !917, file: !596, line: 245, baseType: !86, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !917, file: !596, line: 246, baseType: !519, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !595, file: !596, line: 900, baseType: !220, size: 64, offset: 7296)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !595, file: !596, line: 901, baseType: !220, size: 64, offset: 7360)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !595, file: !596, line: 904, baseType: !86, size: 64, offset: 7424)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !595, file: !596, line: 907, baseType: !86, size: 64, offset: 7488)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !595, file: !596, line: 910, baseType: !220, size: 64, offset: 7552)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !595, file: !596, line: 911, baseType: !220, size: 64, offset: 7616)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !595, file: !596, line: 914, baseType: !929, size: 640, offset: 7680)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !930, line: 123, size: 640, elements: !931)
!930 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!931 = !{!932, !938, !939}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !929, file: !930, line: 124, baseType: !933, size: 576)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !934, size: 576, elements: !174)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !930, line: 108, size: 192, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !934, file: !930, line: 109, baseType: !86, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !934, file: !930, line: 110, baseType: !726, size: 128, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !929, file: !930, line: 125, baseType: !7, size: 32, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !929, file: !930, line: 126, baseType: !7, size: 32, offset: 608)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !595, file: !596, line: 917, baseType: !941, size: 192, offset: 8320)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !930, line: 134, size: 192, elements: !942)
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !941, file: !930, line: 135, baseType: !878, size: 128, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !941, file: !930, line: 136, baseType: !7, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !595, file: !596, line: 923, baseType: !946, size: 64, offset: 8512)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !596, line: 923, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !595, file: !596, line: 926, baseType: !946, size: 64, offset: 8576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !595, file: !596, line: 929, baseType: !946, size: 64, offset: 8640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !595, file: !596, line: 933, baseType: !952, size: 64, offset: 8704)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !596, line: 933, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !595, file: !596, line: 943, baseType: !955, size: 128, offset: 8768)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !956)
!956 = !{!957}
!957 = !DISubrange(count: 16)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !595, file: !596, line: 945, baseType: !959, size: 64, offset: 8896)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !596, line: 49, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !595, file: !596, line: 956, baseType: !962, size: 64, offset: 8960)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !596, line: 45, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !595, file: !596, line: 959, baseType: !965, size: 64, offset: 9024)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !596, line: 959, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !595, file: !596, line: 962, baseType: !968, size: 64, offset: 9088)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !596, line: 66, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !595, file: !596, line: 966, baseType: !971, size: 64, offset: 9152)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !596, line: 50, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !595, file: !596, line: 969, baseType: !974, size: 64, offset: 9216)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !930, line: 223, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !595, file: !596, line: 970, baseType: !977, size: 64, offset: 9280)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !596, line: 62, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !595, file: !596, line: 971, baseType: !980, size: 64, offset: 9344)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !981, line: 25, baseType: !982)
!981 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !981, line: 23, size: 64, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !982, file: !981, line: 24, baseType: !758, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !595, file: !596, line: 972, baseType: !980, size: 64, offset: 9408)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !595, file: !596, line: 974, baseType: !980, size: 64, offset: 9472)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !595, file: !596, line: 975, baseType: !988, size: 192, offset: 9536)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !989, line: 30, size: 192, elements: !990)
!989 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !988, file: !989, line: 31, baseType: !120, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !988, file: !989, line: 32, baseType: !980, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !595, file: !596, line: 976, baseType: !220, size: 64, offset: 9728)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !595, file: !596, line: 977, baseType: !217, size: 64, offset: 9792)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !595, file: !596, line: 978, baseType: !7, size: 32, offset: 9856)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !595, file: !596, line: 980, baseType: !881, size: 64, offset: 9920)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !595, file: !596, line: 989, baseType: !998, size: 128, offset: 9984)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !999, line: 35, size: 128, elements: !1000)
!999 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !998, file: !999, line: 36, baseType: !91, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !998, file: !999, line: 37, baseType: !291, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !998, file: !999, line: 38, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !999, line: 23, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !595, file: !596, line: 992, baseType: !86, size: 64, offset: 10112)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !595, file: !596, line: 993, baseType: !86, size: 64, offset: 10176)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !595, file: !596, line: 996, baseType: !132, offset: 10240)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !595, file: !596, line: 999, baseType: !519, offset: 10240)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !595, file: !596, line: 1001, baseType: !1011, size: 64, offset: 10240)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !596, line: 636, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1011, file: !596, line: 637, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !595, file: !596, line: 1005, baseType: !729, size: 128, offset: 10304)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !595, file: !596, line: 1007, baseType: !594, size: 64, offset: 10432)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !595, file: !596, line: 1009, baseType: !1018, size: 64, offset: 10496)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !596, line: 1009, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !595, file: !596, line: 1043, baseType: !245, size: 64, offset: 10560)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !595, file: !596, line: 1046, baseType: !1022, size: 64, offset: 10624)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !596, line: 41, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !595, file: !596, line: 1050, baseType: !1025, size: 64, offset: 10688)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !596, line: 42, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !595, file: !596, line: 1054, baseType: !1028, size: 64, offset: 10752)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !596, line: 55, flags: DIFlagFwdDecl)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !595, file: !596, line: 1056, baseType: !1031, size: 64, offset: 10816)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !596, line: 40, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !595, file: !596, line: 1058, baseType: !1034, size: 64, offset: 10880)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !596, line: 47, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !595, file: !596, line: 1061, baseType: !1037, size: 64, offset: 10944)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !596, line: 43, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !595, file: !596, line: 1064, baseType: !220, size: 64, offset: 11008)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !595, file: !596, line: 1065, baseType: !1041, size: 64, offset: 11072)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !989, line: 14, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !989, line: 12, size: 384, elements: !1044)
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, scope: !1043, file: !989, line: 13, baseType: !1046, size: 384)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1043, file: !989, line: 13, size: 384, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1051}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1046, file: !989, line: 13, baseType: !91, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1046, file: !989, line: 13, baseType: !91, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1046, file: !989, line: 13, baseType: !91, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1046, file: !989, line: 13, baseType: !1052, size: 256, offset: 128)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1053, line: 32, size: 256, elements: !1054)
!1053 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1054 = !{!1055, !1060, !1073, !1079, !1088, !1108, !1113}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1052, file: !1053, line: 37, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 34, size: 64, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1056, file: !1053, line: 35, baseType: !846, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1056, file: !1053, line: 36, baseType: !277, size: 32, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1052, file: !1053, line: 45, baseType: !1061, size: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 40, size: 192, elements: !1062)
!1062 = !{!1063, !1065, !1066, !1072}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1061, file: !1053, line: 41, baseType: !1064, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !205, line: 95, baseType: !91)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1061, file: !1053, line: 42, baseType: !91, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1061, file: !1053, line: 43, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1053, line: 11, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1053, line: 8, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1068, file: !1053, line: 9, baseType: !91, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1068, file: !1053, line: 10, baseType: !245, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1061, file: !1053, line: 44, baseType: !91, size: 32, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1052, file: !1053, line: 52, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 48, size: 128, elements: !1075)
!1075 = !{!1076, !1077, !1078}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1074, file: !1053, line: 49, baseType: !846, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1074, file: !1053, line: 50, baseType: !277, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1074, file: !1053, line: 51, baseType: !1067, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1052, file: !1053, line: 61, baseType: !1080, size: 256)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 55, size: 256, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1087}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1080, file: !1053, line: 56, baseType: !846, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1080, file: !1053, line: 57, baseType: !277, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1080, file: !1053, line: 58, baseType: !91, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1080, file: !1053, line: 59, baseType: !1086, size: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !205, line: 94, baseType: !206)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1080, file: !1053, line: 60, baseType: !1086, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1052, file: !1053, line: 95, baseType: !1089, size: 256)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 64, size: 256, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1089, file: !1053, line: 65, baseType: !245, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !1053, line: 77, baseType: !1093, size: 192, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !1053, line: 77, size: 192, elements: !1094)
!1094 = !{!1095, !1096, !1103}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1093, file: !1053, line: 82, baseType: !583, size: 16)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1093, file: !1053, line: 88, baseType: !1097, size: 192)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1053, line: 84, size: 192, elements: !1098)
!1098 = !{!1099, !1101, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1097, file: !1053, line: 85, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !708)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1097, file: !1053, line: 86, baseType: !245, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1097, file: !1053, line: 87, baseType: !245, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1093, file: !1053, line: 93, baseType: !1104, size: 96)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1053, line: 90, size: 96, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1104, file: !1053, line: 91, baseType: !1100, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1104, file: !1053, line: 92, baseType: !97, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1052, file: !1053, line: 101, baseType: !1109, size: 128)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 98, size: 128, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1109, file: !1053, line: 99, baseType: !207, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1109, file: !1053, line: 100, baseType: !91, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1052, file: !1053, line: 108, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1052, file: !1053, line: 104, size: 128, elements: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1114, file: !1053, line: 105, baseType: !245, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1114, file: !1053, line: 106, baseType: !91, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1114, file: !1053, line: 107, baseType: !7, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !595, file: !596, line: 1067, baseType: !1120, offset: 11136)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1121, line: 12, elements: !146)
!1121 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !595, file: !596, line: 1099, baseType: !1123, size: 64, offset: 11136)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !596, line: 56, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !595, file: !596, line: 1103, baseType: !120, size: 128, offset: 11200)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !595, file: !596, line: 1104, baseType: !1127, size: 64, offset: 11328)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !596, line: 46, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !595, file: !596, line: 1105, baseType: !402, size: 192, offset: 11392)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !595, file: !596, line: 1106, baseType: !7, size: 32, offset: 11584)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !595, file: !596, line: 1109, baseType: !1132, size: 128, offset: 11648)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 128, elements: !1135)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !596, line: 51, flags: DIFlagFwdDecl)
!1135 = !{!1136}
!1136 = !DISubrange(count: 2)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !595, file: !596, line: 1110, baseType: !402, size: 192, offset: 11776)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !595, file: !596, line: 1111, baseType: !120, size: 128, offset: 11968)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !595, file: !596, line: 1173, baseType: !1140, size: 64, offset: 12096)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1142, line: 62, size: 256, align: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1143 = !{!1144, !1145, !1146, !1151}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1141, file: !1142, line: 75, baseType: !97, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1141, file: !1142, line: 90, baseType: !97, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1141, file: !1142, line: 124, baseType: !1147, size: 64, offset: 64)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !1142, line: 109, size: 64, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1147, file: !1142, line: 110, baseType: !88, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1147, file: !1142, line: 112, baseType: !88, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1142, line: 144, baseType: !97, size: 32, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !595, file: !596, line: 1174, baseType: !96, size: 32, offset: 12160)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !595, file: !596, line: 1179, baseType: !220, size: 64, offset: 12224)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !595, file: !596, line: 1182, baseType: !1155, size: 128, offset: 12288)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !549, line: 76, size: 128, elements: !1156)
!1156 = !{!1157, !1162, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1155, file: !549, line: 85, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1159, line: 7, size: 64, elements: !1160)
!1159 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1158, file: !1159, line: 12, baseType: !755, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1155, file: !549, line: 88, baseType: !239, size: 8, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1155, file: !549, line: 95, baseType: !239, size: 8, offset: 72)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !596, line: 1184, baseType: !1165, size: 128, offset: 12416)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !596, line: 1184, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1165, file: !596, line: 1185, baseType: !608, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1165, file: !596, line: 1186, baseType: !878, size: 128, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !595, file: !596, line: 1190, baseType: !1170, size: 64, offset: 12544)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !596, line: 53, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !595, file: !596, line: 1192, baseType: !1173, size: 128, offset: 12608)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !549, line: 64, size: 128, elements: !1174)
!1174 = !{!1175, !1268, !1269}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1173, file: !549, line: 65, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !427, line: 68, size: 512, align: 128, elements: !1178)
!1178 = !{!1179, !1180, !1260, !1267}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !427, line: 69, baseType: !220, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !427, line: 77, baseType: !1181, size: 320, offset: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !427, line: 77, size: 320, elements: !1182)
!1182 = !{!1183, !1192, !1197, !1225, !1233, !1239, !1252, !1259}
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 78, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 78, size: 320, elements: !1185)
!1185 = !{!1186, !1187, !1190, !1191}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1184, file: !427, line: 84, baseType: !120, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1184, file: !427, line: 86, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !427, line: 26, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1184, file: !427, line: 87, baseType: !220, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1184, file: !427, line: 94, baseType: !220, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 96, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 96, size: 64, elements: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1193, file: !427, line: 101, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !85, line: 143, baseType: !86)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 103, baseType: !1198, size: 320)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 103, size: 320, elements: !1199)
!1199 = !{!1200, !1210, !1213, !1214}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !427, line: 104, baseType: !1201, size: 128)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !427, line: 104, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1201, file: !427, line: 105, baseType: !120, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !427, line: 106, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !427, line: 106, size: 128, elements: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1205, file: !427, line: 107, baseType: !1176, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1205, file: !427, line: 109, baseType: !91, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1205, file: !427, line: 110, baseType: !91, size: 32, offset: 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1198, file: !427, line: 117, baseType: !1211, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !427, line: 117, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1198, file: !427, line: 119, baseType: !245, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !427, line: 120, baseType: !1215, size: 64, offset: 256)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !427, line: 120, size: 64, elements: !1216)
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1215, file: !427, line: 121, baseType: !245, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1215, file: !427, line: 122, baseType: !220, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !427, line: 123, baseType: !1220, size: 32)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !427, line: 123, size: 32, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1220, file: !427, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1220, file: !427, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1220, file: !427, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 130, baseType: !1226, size: 192)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 130, size: 192, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1226, file: !427, line: 131, baseType: !220, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1226, file: !427, line: 134, baseType: !741, size: 8, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1226, file: !427, line: 135, baseType: !741, size: 8, offset: 72)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1226, file: !427, line: 136, baseType: !291, size: 32, offset: 96)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1226, file: !427, line: 137, baseType: !7, size: 32, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 139, baseType: !1234, size: 256)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 139, size: 256, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1234, file: !427, line: 140, baseType: !220, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1234, file: !427, line: 141, baseType: !291, size: 32, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1234, file: !427, line: 143, baseType: !120, size: 128, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 145, baseType: !1240, size: 256)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 145, size: 256, elements: !1241)
!1241 = !{!1242, !1243, !1245, !1246, !1251}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1240, file: !427, line: 146, baseType: !220, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1240, file: !427, line: 147, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !351, line: 509, baseType: !1176)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1240, file: !427, line: 148, baseType: !220, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !427, line: 149, baseType: !1247, size: 64, offset: 192)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !427, line: 149, size: 64, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1247, file: !427, line: 150, baseType: !480, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1247, file: !427, line: 151, baseType: !291, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1240, file: !427, line: 156, baseType: !132, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !427, line: 159, baseType: !1253, size: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !427, line: 159, size: 128, elements: !1254)
!1254 = !{!1255, !1258}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1253, file: !427, line: 161, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !427, line: 161, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1253, file: !427, line: 162, baseType: !245, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1181, file: !427, line: 176, baseType: !878, size: 128, align: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !427, line: 179, baseType: !1261, size: 32, offset: 384)
!1261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !427, line: 179, size: 32, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1261, file: !427, line: 184, baseType: !291, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1261, file: !427, line: 192, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1261, file: !427, line: 194, baseType: !7, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1261, file: !427, line: 195, baseType: !91, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1177, file: !427, line: 199, baseType: !291, size: 32, offset: 416)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1173, file: !549, line: 67, baseType: !97, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1173, file: !549, line: 68, baseType: !97, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !595, file: !596, line: 1206, baseType: !91, size: 32, offset: 12736)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !595, file: !596, line: 1207, baseType: !91, size: 32, offset: 12768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !595, file: !596, line: 1209, baseType: !220, size: 64, offset: 12800)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !595, file: !596, line: 1219, baseType: !86, size: 64, offset: 12864)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !595, file: !596, line: 1220, baseType: !86, size: 64, offset: 12928)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !595, file: !596, line: 1317, baseType: !91, size: 32, offset: 12992)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !595, file: !596, line: 1319, baseType: !594, size: 64, offset: 13056)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !595, file: !596, line: 1322, baseType: !1278, size: 64, offset: 13120)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !596, line: 1322, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !595, file: !596, line: 1326, baseType: !608, size: 32, offset: 13184)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !595, file: !596, line: 1342, baseType: !245, size: 64, offset: 13248)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !595, file: !596, line: 1343, baseType: !88, size: 64, offset: 13312)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !595, file: !596, line: 1344, baseType: !86, size: 64, offset: 13376)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !595, file: !596, line: 1345, baseType: !88, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !595, file: !596, line: 1346, baseType: !88, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !595, file: !596, line: 1347, baseType: !88, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !595, file: !596, line: 1348, baseType: !878, size: 128, align: 64, offset: 13504)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !595, file: !596, line: 1358, baseType: !1289, size: 34816, offset: 13824)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1290, line: 485, size: 34816, elements: !1291)
!1290 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1321, !1322, !1323, !1324, !1325, !1326, !1329, !1330, !1331}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1289, file: !1290, line: 487, baseType: !1293, size: 192)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 192, elements: !174)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1295, line: 16, size: 64, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1294, file: !1295, line: 17, baseType: !578, size: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1294, file: !1295, line: 18, baseType: !578, size: 16, offset: 16)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1294, file: !1295, line: 19, baseType: !578, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1294, file: !1295, line: 19, baseType: !578, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1294, file: !1295, line: 19, baseType: !578, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1294, file: !1295, line: 19, baseType: !578, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1294, file: !1295, line: 19, baseType: !578, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1294, file: !1295, line: 20, baseType: !578, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1294, file: !1295, line: 20, baseType: !578, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1294, file: !1295, line: 20, baseType: !578, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1294, file: !1295, line: 20, baseType: !578, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1294, file: !1295, line: 20, baseType: !578, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1294, file: !1295, line: 20, baseType: !578, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1289, file: !1290, line: 491, baseType: !220, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1289, file: !1290, line: 495, baseType: !114, size: 16, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1289, file: !1290, line: 496, baseType: !114, size: 16, offset: 272)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1289, file: !1290, line: 497, baseType: !114, size: 16, offset: 288)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1289, file: !1290, line: 498, baseType: !114, size: 16, offset: 304)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1289, file: !1290, line: 502, baseType: !220, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1289, file: !1290, line: 503, baseType: !220, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1289, file: !1290, line: 514, baseType: !1318, size: 256, offset: 448)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 256, elements: !553)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1290, line: 483, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1289, file: !1290, line: 516, baseType: !220, size: 64, offset: 704)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1289, file: !1290, line: 518, baseType: !220, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1289, file: !1290, line: 520, baseType: !220, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1289, file: !1290, line: 521, baseType: !220, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1289, file: !1290, line: 522, baseType: !220, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1289, file: !1290, line: 528, baseType: !1327, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1290, line: 10, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1289, file: !1290, line: 535, baseType: !220, size: 64, offset: 1088)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1289, file: !1290, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1289, file: !1290, line: 540, baseType: !1332, size: 33280, offset: 1536)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1333, line: 317, size: 33280, elements: !1334)
!1333 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !{!1335, !1336, !1337}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1332, file: !1333, line: 330, baseType: !7, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1332, file: !1333, line: 337, baseType: !220, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1332, file: !1333, line: 348, baseType: !1338, size: 32768, offset: 512)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1333, line: 304, size: 32768, elements: !1339)
!1339 = !{!1340, !1355, !1394, !1444, !1461}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1338, file: !1333, line: 305, baseType: !1341, size: 896)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1333, line: 12, size: 896, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1354}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1341, file: !1333, line: 13, baseType: !96, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1341, file: !1333, line: 14, baseType: !96, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1341, file: !1333, line: 15, baseType: !96, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1341, file: !1333, line: 16, baseType: !96, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1341, file: !1333, line: 17, baseType: !96, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1341, file: !1333, line: 18, baseType: !96, size: 32, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1341, file: !1333, line: 19, baseType: !96, size: 32, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1341, file: !1333, line: 22, baseType: !1351, size: 640, offset: 224)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 640, elements: !1352)
!1352 = !{!1353}
!1353 = !DISubrange(count: 20)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1341, file: !1333, line: 25, baseType: !96, size: 32, offset: 864)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1338, file: !1333, line: 306, baseType: !1356, size: 4096, align: 128)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1333, line: 34, size: 4096, align: 128, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1377, !1378, !1379, !1383, !1385, !1389}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1356, file: !1333, line: 35, baseType: !578, size: 16)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1356, file: !1333, line: 36, baseType: !578, size: 16, offset: 16)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1356, file: !1333, line: 37, baseType: !578, size: 16, offset: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1356, file: !1333, line: 38, baseType: !578, size: 16, offset: 48)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1333, line: 39, baseType: !1363, size: 128, offset: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1333, line: 39, size: 128, elements: !1364)
!1364 = !{!1365, !1370}
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1333, line: 40, baseType: !1366, size: 128)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1363, file: !1333, line: 40, size: 128, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1366, file: !1333, line: 41, baseType: !86, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1366, file: !1333, line: 42, baseType: !86, size: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1333, line: 44, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1363, file: !1333, line: 44, size: 128, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1371, file: !1333, line: 45, baseType: !96, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1371, file: !1333, line: 46, baseType: !96, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1371, file: !1333, line: 47, baseType: !96, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1371, file: !1333, line: 48, baseType: !96, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1356, file: !1333, line: 51, baseType: !96, size: 32, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1356, file: !1333, line: 52, baseType: !96, size: 32, offset: 224)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1356, file: !1333, line: 55, baseType: !1380, size: 1024, offset: 256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !1381)
!1381 = !{!1382}
!1382 = !DISubrange(count: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1356, file: !1333, line: 58, baseType: !1384, size: 2048, offset: 1280)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2048, elements: !178)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1356, file: !1333, line: 60, baseType: !1386, size: 384, offset: 3328)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 384, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 12)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1333, line: 62, baseType: !1390, size: 384, offset: 3712)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1356, file: !1333, line: 62, size: 384, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1390, file: !1333, line: 63, baseType: !1386, size: 384)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1390, file: !1333, line: 64, baseType: !1386, size: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1338, file: !1333, line: 307, baseType: !1395, size: 1088)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1333, line: 79, size: 1088, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1443}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1395, file: !1333, line: 80, baseType: !96, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1395, file: !1333, line: 81, baseType: !96, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1395, file: !1333, line: 82, baseType: !96, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1395, file: !1333, line: 83, baseType: !96, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1395, file: !1333, line: 84, baseType: !96, size: 32, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1395, file: !1333, line: 85, baseType: !96, size: 32, offset: 160)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1395, file: !1333, line: 86, baseType: !96, size: 32, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1395, file: !1333, line: 88, baseType: !1351, size: 640, offset: 224)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1395, file: !1333, line: 89, baseType: !739, size: 8, offset: 864)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1395, file: !1333, line: 90, baseType: !739, size: 8, offset: 872)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1395, file: !1333, line: 91, baseType: !739, size: 8, offset: 880)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1395, file: !1333, line: 92, baseType: !739, size: 8, offset: 888)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1395, file: !1333, line: 93, baseType: !739, size: 8, offset: 896)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1395, file: !1333, line: 94, baseType: !739, size: 8, offset: 904)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1395, file: !1333, line: 95, baseType: !1412, size: 64, offset: 960)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1414, line: 11, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1413, file: !1414, line: 12, baseType: !207, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1413, file: !1414, line: 13, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1420, line: 56, size: 1344, elements: !1421)
!1420 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1419, file: !1420, line: 61, baseType: !220, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1419, file: !1420, line: 62, baseType: !220, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1419, file: !1420, line: 63, baseType: !220, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1419, file: !1420, line: 64, baseType: !220, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1419, file: !1420, line: 65, baseType: !220, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1419, file: !1420, line: 66, baseType: !220, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1419, file: !1420, line: 68, baseType: !220, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1419, file: !1420, line: 69, baseType: !220, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1419, file: !1420, line: 70, baseType: !220, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1419, file: !1420, line: 71, baseType: !220, size: 64, offset: 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1419, file: !1420, line: 72, baseType: !220, size: 64, offset: 640)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1419, file: !1420, line: 73, baseType: !220, size: 64, offset: 704)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1419, file: !1420, line: 74, baseType: !220, size: 64, offset: 768)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1419, file: !1420, line: 75, baseType: !220, size: 64, offset: 832)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1419, file: !1420, line: 76, baseType: !220, size: 64, offset: 896)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1419, file: !1420, line: 81, baseType: !220, size: 64, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1419, file: !1420, line: 83, baseType: !220, size: 64, offset: 1024)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1419, file: !1420, line: 84, baseType: !220, size: 64, offset: 1088)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !1420, line: 85, baseType: !220, size: 64, offset: 1152)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1419, file: !1420, line: 86, baseType: !220, size: 64, offset: 1216)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1419, file: !1420, line: 87, baseType: !220, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1395, file: !1333, line: 96, baseType: !96, size: 32, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1338, file: !1333, line: 308, baseType: !1445, size: 4608, align: 512)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1333, line: 289, size: 4608, align: 512, elements: !1446)
!1446 = !{!1447, !1448, !1457}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1445, file: !1333, line: 290, baseType: !1356, size: 4096, align: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1445, file: !1333, line: 291, baseType: !1449, size: 512, offset: 4096)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1333, line: 268, size: 512, elements: !1450)
!1450 = !{!1451, !1452, !1453}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1449, file: !1333, line: 269, baseType: !86, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1449, file: !1333, line: 270, baseType: !86, size: 64, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1449, file: !1333, line: 271, baseType: !1454, size: 384, offset: 128)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 384, elements: !1455)
!1455 = !{!1456}
!1456 = !DISubrange(count: 6)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1445, file: !1333, line: 292, baseType: !1458, offset: 4608)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 0)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1338, file: !1333, line: 309, baseType: !1462, size: 32768)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 32768, elements: !1463)
!1463 = !{!1464}
!1464 = !DISubrange(count: 4096)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !591, file: !427, line: 378, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !587, file: !427, line: 384, baseType: !900, size: 192, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !484, file: !427, line: 500, baseType: !132, offset: 6656)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !484, file: !427, line: 501, baseType: !1470, size: 64, offset: 6656)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !427, line: 387, flags: DIFlagFwdDecl)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !484, file: !427, line: 516, baseType: !1473, size: 64, offset: 6720)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !272, line: 18, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !484, file: !427, line: 519, baseType: !397, size: 64, offset: 6784)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !484, file: !427, line: 521, baseType: !1477, size: 64, offset: 6848)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !427, line: 521, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !484, file: !427, line: 545, baseType: !291, size: 32, offset: 6912)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !484, file: !427, line: 548, baseType: !239, size: 8, offset: 6944)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !484, file: !427, line: 550, baseType: !1482, offset: 6952)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1483, line: 142, elements: !146)
!1483 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !484, file: !427, line: 554, baseType: !1485, size: 256, offset: 6976)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1486, line: 102, size: 256, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1485, file: !1486, line: 103, baseType: !406, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1485, file: !1486, line: 104, baseType: !120, size: 128, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1485, file: !1486, line: 105, baseType: !1491, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1486, line: 21, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{null, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !484, file: !427, line: 557, baseType: !96, size: 32, offset: 7232)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !481, file: !427, line: 565, baseType: !1498, offset: 7296)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1499)
!1499 = !{!1500}
!1500 = !DISubrange(count: -1)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !471, file: !427, line: 333, baseType: !1502, size: 64, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !351, line: 284, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !351, line: 284, size: 64, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1503, file: !351, line: 284, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !504, line: 19, baseType: !220)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !471, file: !427, line: 334, baseType: !220, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !471, file: !427, line: 343, baseType: !1509, size: 256, offset: 704)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !427, line: 340, size: 256, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1509, file: !427, line: 341, baseType: !299, size: 192, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1509, file: !427, line: 342, baseType: !220, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !471, file: !427, line: 351, baseType: !120, size: 128, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !471, file: !427, line: 353, baseType: !1515, size: 64, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !427, line: 353, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !471, file: !427, line: 356, baseType: !424, size: 64, offset: 1152)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !471, file: !427, line: 359, baseType: !220, size: 64, offset: 1216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !471, file: !427, line: 361, baseType: !397, size: 64, offset: 1280)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !471, file: !427, line: 362, baseType: !245, size: 64, offset: 1344)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !471, file: !427, line: 365, baseType: !406, size: 64, offset: 1408)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !471, file: !427, line: 373, baseType: !1523, offset: 1472)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !427, line: 296, elements: !146)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !381, file: !288, line: 109, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !288, line: 31, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !381, file: !288, line: 110, baseType: !441, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !381, file: !288, line: 111, baseType: !286, size: 64, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !287, file: !288, line: 148, baseType: !245, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !287, file: !288, line: 154, baseType: !86, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !288, line: 156, baseType: !114, size: 16, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !287, file: !288, line: 157, baseType: !113, size: 16, offset: 912)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !287, file: !288, line: 158, baseType: !1534, size: 64, offset: 960)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !288, line: 32, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !116, file: !68, line: 71, baseType: !1537, size: 32, offset: 448)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1538, line: 19, size: 32, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1537, file: !1538, line: 20, baseType: !608, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !116, file: !68, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !116, file: !68, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !116, file: !68, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !116, file: !68, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !116, file: !68, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !102, file: !103, line: 88, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!113, !115, !1550, !91}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !103, line: 168, size: 448, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1556, !1560, !1561}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1551, file: !103, line: 169, baseType: !209, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1551, file: !103, line: 170, baseType: !217, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1551, file: !103, line: 171, baseType: !245, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1551, file: !103, line: 172, baseType: !1557, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!203, !397, !115, !1550, !173, !441, !217}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1551, file: !103, line: 174, baseType: !1557, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1551, file: !103, line: 176, baseType: !1562, size: 64, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!91, !397, !115, !1550, !470}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !102, file: !103, line: 90, baseType: !222, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !102, file: !103, line: 91, baseType: !1567, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(name: "power_attrs", scope: !2, file: !3, line: 613, type: !1570, isLocal: true, isDefinition: true)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 64, elements: !759)
!1571 = !DIGlobalVariableExpression(var: !1572, expr: !DIExpression())
!1572 = distinct !DIGlobalVariable(name: "pm_runtime_attr_group", scope: !2, file: !3, line: 662, type: !101, isLocal: true, isDefinition: true)
!1573 = !DIGlobalVariableExpression(var: !1574, expr: !DIExpression())
!1574 = distinct !DIGlobalVariable(name: "runtime_attrs", scope: !2, file: !3, line: 652, type: !1575, isLocal: true, isDefinition: true)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !1455)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(name: "dev_attr_runtime_status", scope: !2, file: !3, line: 180, type: !1578, isLocal: true, isDefinition: true)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !1579)
!1579 = !{!1580, !1581, !2016}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1578, file: !30, line: 100, baseType: !209, size: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1578, file: !30, line: 101, baseType: !1582, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!203, !1585, !2015, !173}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1593, !1594, !1645, !1723, !1724, !1725, !1726, !1727, !1736, !1919, !1932, !1935, !1936, !1940, !1942, !1943, !1944, !1948, !1954, !1955, !1958, !1962, !1965, !1968, !1969, !1970, !1971, !2003, !2004, !2005, !2008, !2011, !2012, !2013, !2014}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1586, file: !30, line: 462, baseType: !116, size: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1586, file: !30, line: 463, baseType: !1585, size: 64, offset: 512)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1586, file: !30, line: 465, baseType: !1591, size: 64, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1586, file: !30, line: 467, baseType: !106, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1586, file: !30, line: 468, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1597)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1605, !1610, !1614}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1597, file: !30, line: 88, baseType: !106, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1597, file: !30, line: 89, baseType: !224, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1597, file: !30, line: 90, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!91, !1585, !168}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1597, file: !30, line: 91, baseType: !1606, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!173, !1585, !1609, !270, !278}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1597, file: !30, line: 93, baseType: !1611, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1585}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1597, file: !30, line: 95, baseType: !1615, size: 64, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1618)
!1618 = !{!1619, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1617, file: !37, line: 279, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!91, !1585}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1617, file: !37, line: 280, baseType: !1611, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1617, file: !37, line: 281, baseType: !1620, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1617, file: !37, line: 282, baseType: !1620, size: 64, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1617, file: !37, line: 283, baseType: !1620, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1617, file: !37, line: 284, baseType: !1620, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1617, file: !37, line: 285, baseType: !1620, size: 64, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1617, file: !37, line: 286, baseType: !1620, size: 64, offset: 448)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1617, file: !37, line: 287, baseType: !1620, size: 64, offset: 512)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1617, file: !37, line: 288, baseType: !1620, size: 64, offset: 576)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1617, file: !37, line: 289, baseType: !1620, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1617, file: !37, line: 290, baseType: !1620, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1617, file: !37, line: 291, baseType: !1620, size: 64, offset: 768)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1617, file: !37, line: 292, baseType: !1620, size: 64, offset: 832)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1617, file: !37, line: 293, baseType: !1620, size: 64, offset: 896)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1617, file: !37, line: 294, baseType: !1620, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1617, file: !37, line: 295, baseType: !1620, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1617, file: !37, line: 296, baseType: !1620, size: 64, offset: 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1617, file: !37, line: 297, baseType: !1620, size: 64, offset: 1152)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1617, file: !37, line: 298, baseType: !1620, size: 64, offset: 1216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1617, file: !37, line: 299, baseType: !1620, size: 64, offset: 1280)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1617, file: !37, line: 300, baseType: !1620, size: 64, offset: 1344)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1617, file: !37, line: 301, baseType: !1620, size: 64, offset: 1408)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1586, file: !30, line: 470, baseType: !1646, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1648, line: 82, size: 1408, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651, !1652, !1653, !1654, !1655, !1656, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1716, !1719, !1722}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1647, file: !1648, line: 83, baseType: !106, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1647, file: !1648, line: 84, baseType: !106, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1647, file: !1648, line: 85, baseType: !1585, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1647, file: !1648, line: 86, baseType: !224, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1647, file: !1648, line: 87, baseType: !224, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1647, file: !1648, line: 88, baseType: !224, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1647, file: !1648, line: 90, baseType: !1657, size: 64, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!91, !1585, !1660}
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1669, !1670, !1671, !1672, !1676, !1680, !1681, !1682, !1683, !1684, !1692, !1693, !1694, !1695, !1696, !1697}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1661, file: !24, line: 96, baseType: !106, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1661, file: !24, line: 97, baseType: !1646, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1661, file: !24, line: 99, baseType: !1666, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1668, line: 76, flags: DIFlagFwdDecl)
!1668 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1661, file: !24, line: 100, baseType: !106, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1661, file: !24, line: 102, baseType: !239, size: 8, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1661, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1661, file: !24, line: 105, baseType: !1673, size: 64, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !24, line: 105, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1661, file: !24, line: 106, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1679)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !24, line: 106, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1661, file: !24, line: 108, baseType: !1620, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1661, file: !24, line: 109, baseType: !1611, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1661, file: !24, line: 110, baseType: !1620, size: 64, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1661, file: !24, line: 111, baseType: !1611, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1661, file: !24, line: 112, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!91, !1585, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1689)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1689, file: !37, line: 51, baseType: !91, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1661, file: !24, line: 113, baseType: !1620, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1661, file: !24, line: 114, baseType: !224, size: 64, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1661, file: !24, line: 115, baseType: !224, size: 64, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1661, file: !24, line: 117, baseType: !1615, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1661, file: !24, line: 118, baseType: !1611, size: 64, offset: 1024)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1661, file: !24, line: 120, baseType: !1698, size: 64, offset: 1088)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1647, file: !1648, line: 91, baseType: !1602, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1647, file: !1648, line: 92, baseType: !1620, size: 64, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1647, file: !1648, line: 93, baseType: !1611, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1647, file: !1648, line: 94, baseType: !1620, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1647, file: !1648, line: 95, baseType: !1611, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1647, file: !1648, line: 97, baseType: !1620, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1647, file: !1648, line: 98, baseType: !1620, size: 64, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1647, file: !1648, line: 100, baseType: !1685, size: 64, offset: 896)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1647, file: !1648, line: 101, baseType: !1620, size: 64, offset: 960)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1647, file: !1648, line: 103, baseType: !1620, size: 64, offset: 1024)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1647, file: !1648, line: 105, baseType: !1620, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1647, file: !1648, line: 107, baseType: !1615, size: 64, offset: 1152)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1647, file: !1648, line: 109, baseType: !1713, size: 64, offset: 1216)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1715)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1648, line: 109, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1647, file: !1648, line: 111, baseType: !1717, size: 64, offset: 1280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1648, line: 111, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1647, file: !1648, line: 112, baseType: !1720, offset: 1344)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1721, line: 187, elements: !146)
!1721 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1647, file: !1648, line: 114, baseType: !239, size: 8, offset: 1344)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1586, file: !30, line: 471, baseType: !1660, size: 64, offset: 832)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1586, file: !30, line: 473, baseType: !245, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1586, file: !30, line: 475, baseType: !245, size: 64, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1586, file: !30, line: 480, baseType: !402, size: 192, offset: 1024)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1586, file: !30, line: 484, baseType: !1728, size: 576, offset: 1216)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1729)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1728, file: !30, line: 362, baseType: !120, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1728, file: !30, line: 363, baseType: !120, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1728, file: !30, line: 364, baseType: !120, size: 128, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1728, file: !30, line: 365, baseType: !120, size: 128, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1728, file: !30, line: 366, baseType: !239, size: 8, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1728, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1586, file: !30, line: 485, baseType: !1737, size: 2304, offset: 1792)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1840, !1844}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1737, file: !37, line: 566, baseType: !1688, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1737, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1737, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1737, file: !37, line: 569, baseType: !239, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1737, file: !37, line: 570, baseType: !239, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1737, file: !37, line: 571, baseType: !239, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1737, file: !37, line: 572, baseType: !239, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1737, file: !37, line: 573, baseType: !239, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1737, file: !37, line: 574, baseType: !239, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1737, file: !37, line: 575, baseType: !239, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1737, file: !37, line: 576, baseType: !239, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1737, file: !37, line: 577, baseType: !96, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1737, file: !37, line: 578, baseType: !132, offset: 96)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1737, file: !37, line: 580, baseType: !120, size: 128, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1737, file: !37, line: 581, baseType: !900, size: 192, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1737, file: !37, line: 582, baseType: !1755, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1757, line: 43, size: 1472, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761, !1762, !1763, !1772, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1756, file: !1757, line: 44, baseType: !106, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1756, file: !1757, line: 45, baseType: !91, size: 32, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1756, file: !1757, line: 46, baseType: !120, size: 128, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1756, file: !1757, line: 47, baseType: !132, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1756, file: !1757, line: 48, baseType: !1764, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1766, line: 31, size: 192, elements: !1767)
!1766 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1770, !1771}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1765, file: !1766, line: 32, baseType: !1585, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1765, file: !1766, line: 33, baseType: !7, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1765, file: !1766, line: 34, baseType: !91, size: 32, offset: 96)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1765, file: !1766, line: 35, baseType: !106, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1756, file: !1757, line: 49, baseType: !1773, size: 320, offset: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1774, line: 11, size: 320, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !{!1776, !1777, !1778, !1783}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1773, file: !1774, line: 16, baseType: !870, size: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1773, file: !1774, line: 17, baseType: !220, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1773, file: !1774, line: 18, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1782}
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 19, baseType: !96, size: 32, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1756, file: !1757, line: 50, baseType: !220, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1756, file: !1757, line: 51, baseType: !678, size: 64, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1756, file: !1757, line: 52, baseType: !678, size: 64, offset: 768)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1756, file: !1757, line: 53, baseType: !678, size: 64, offset: 832)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1756, file: !1757, line: 54, baseType: !678, size: 64, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1756, file: !1757, line: 55, baseType: !678, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1756, file: !1757, line: 56, baseType: !220, size: 64, offset: 1024)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1756, file: !1757, line: 57, baseType: !220, size: 64, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1756, file: !1757, line: 58, baseType: !220, size: 64, offset: 1152)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1756, file: !1757, line: 59, baseType: !220, size: 64, offset: 1216)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1756, file: !1757, line: 60, baseType: !220, size: 64, offset: 1280)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1756, file: !1757, line: 61, baseType: !1585, size: 64, offset: 1344)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1756, file: !1757, line: 62, baseType: !239, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1756, file: !1757, line: 63, baseType: !239, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1737, file: !37, line: 583, baseType: !239, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1737, file: !37, line: 584, baseType: !239, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1737, file: !37, line: 585, baseType: !239, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1737, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1737, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1737, file: !37, line: 592, baseType: !670, size: 512, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1737, file: !37, line: 593, baseType: !86, size: 64, offset: 1088)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1737, file: !37, line: 594, baseType: !1485, size: 256, offset: 1152)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1737, file: !37, line: 595, baseType: !370, size: 128, offset: 1408)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1737, file: !37, line: 596, baseType: !1764, size: 64, offset: 1536)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1737, file: !37, line: 597, baseType: !291, size: 32, offset: 1600)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1737, file: !37, line: 598, baseType: !291, size: 32, offset: 1632)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1737, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1737, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1737, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1737, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1737, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1737, file: !37, line: 604, baseType: !239, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1737, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1737, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1737, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1737, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1737, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1737, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1737, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1737, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1737, file: !37, line: 613, baseType: !91, size: 32, offset: 1792)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1737, file: !37, line: 614, baseType: !91, size: 32, offset: 1824)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1737, file: !37, line: 615, baseType: !86, size: 64, offset: 1856)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1737, file: !37, line: 616, baseType: !86, size: 64, offset: 1920)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1737, file: !37, line: 617, baseType: !86, size: 64, offset: 1984)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1737, file: !37, line: 618, baseType: !86, size: 64, offset: 2048)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1737, file: !37, line: 620, baseType: !1831, size: 64, offset: 2112)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1832, file: !37, line: 537, baseType: !132)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1832, file: !37, line: 538, baseType: !7, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1832, file: !37, line: 540, baseType: !120, size: 128, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1832, file: !37, line: 543, baseType: !1838, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1737, file: !37, line: 621, baseType: !1841, size: 64, offset: 2176)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1585, !94}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1737, file: !37, line: 622, baseType: !1845, size: 64, offset: 2240)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !51, line: 117, size: 2304, elements: !1847)
!1847 = !{!1848, !1877, !1878, !1885, !1890, !1917, !1918}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1846, file: !51, line: 118, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !51, line: 52, size: 320, elements: !1850)
!1850 = !{!1851, !1856, !1857, !1858, !1859, !1860}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1849, file: !51, line: 53, baseType: !1852, size: 128)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1853, line: 79, size: 128, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1852, file: !1853, line: 80, baseType: !120, size: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1849, file: !51, line: 54, baseType: !94, size: 32, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1849, file: !51, line: 55, baseType: !94, size: 32, offset: 160)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1849, file: !51, line: 56, baseType: !94, size: 32, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1849, file: !51, line: 57, baseType: !50, size: 32, offset: 224)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1849, file: !51, line: 58, baseType: !1861, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1863, line: 65, size: 320, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1862, file: !1863, line: 66, baseType: !513, size: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1862, file: !1863, line: 67, baseType: !1867, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1863, line: 54, size: 192, elements: !1869)
!1869 = !{!1870, !1875, !1876}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1868, file: !1863, line: 55, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1863, line: 51, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!91, !1867, !220, !245}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1868, file: !1863, line: 56, baseType: !1867, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1868, file: !1863, line: 57, baseType: !91, size: 32, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1846, file: !51, line: 119, baseType: !1849, size: 320, offset: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1846, file: !51, line: 120, baseType: !1879, size: 1280, offset: 640)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !51, line: 85, size: 1280, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1879, file: !51, line: 86, baseType: !1849, size: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1879, file: !51, line: 87, baseType: !1862, size: 320, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1879, file: !51, line: 88, baseType: !1849, size: 320, offset: 640)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1879, file: !51, line: 89, baseType: !1862, size: 320, offset: 960)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1846, file: !51, line: 121, baseType: !1886, size: 192, offset: 1920)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !51, line: 71, size: 192, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1886, file: !51, line: 72, baseType: !120, size: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1886, file: !51, line: 73, baseType: !94, size: 32, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1846, file: !51, line: 122, baseType: !1891, size: 64, offset: 2112)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !51, line: 107, size: 576, elements: !1893)
!1893 = !{!1894, !1895, !1916}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1892, file: !51, line: 108, baseType: !56, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1892, file: !51, line: 113, baseType: !1896, size: 448, offset: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1892, file: !51, line: 109, size: 448, elements: !1897)
!1897 = !{!1898, !1904, !1909}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1896, file: !51, line: 110, baseType: !1899, size: 320)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1853, line: 83, size: 320, elements: !1900)
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1899, file: !1853, line: 84, baseType: !91, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1899, file: !1853, line: 85, baseType: !120, size: 128, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1899, file: !1853, line: 86, baseType: !120, size: 128, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1896, file: !51, line: 111, baseType: !1905, size: 192)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !51, line: 66, size: 192, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1905, file: !51, line: 67, baseType: !120, size: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !51, line: 68, baseType: !94, size: 32, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1896, file: !51, line: 112, baseType: !1910, size: 448)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !51, line: 92, size: 448, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1910, file: !51, line: 93, baseType: !63, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1910, file: !51, line: 94, baseType: !1899, size: 320, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1910, file: !51, line: 95, baseType: !1915, size: 64, offset: 384)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1892, file: !51, line: 114, baseType: !1585, size: 64, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1846, file: !51, line: 123, baseType: !1891, size: 64, offset: 2176)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1846, file: !51, line: 124, baseType: !1891, size: 64, offset: 2240)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1586, file: !30, line: 486, baseType: !1920, size: 64, offset: 4096)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1929, !1930, !1931}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1921, file: !37, line: 643, baseType: !1617, size: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1921, file: !37, line: 644, baseType: !1620, size: 64, offset: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1921, file: !37, line: 645, baseType: !1926, size: 64, offset: 1536)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1585, !239}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1921, file: !37, line: 646, baseType: !1620, size: 64, offset: 1600)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1921, file: !37, line: 647, baseType: !1611, size: 64, offset: 1664)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1921, file: !37, line: 648, baseType: !1611, size: 64, offset: 1728)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1586, file: !30, line: 493, baseType: !1933, size: 64, offset: 4160)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1586, file: !30, line: 499, baseType: !120, size: 128, offset: 4224)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1586, file: !30, line: 502, baseType: !1937, size: 64, offset: 4352)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1586, file: !30, line: 504, baseType: !1941, size: 64, offset: 4416)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1586, file: !30, line: 505, baseType: !86, size: 64, offset: 4480)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1586, file: !30, line: 510, baseType: !86, size: 64, offset: 4544)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1586, file: !30, line: 511, baseType: !1945, size: 64, offset: 4608)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1586, file: !30, line: 513, baseType: !1949, size: 64, offset: 4672)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1950, file: !30, line: 293, baseType: !7, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1950, file: !30, line: 294, baseType: !220, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1586, file: !30, line: 515, baseType: !120, size: 128, offset: 4736)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1586, file: !30, line: 526, baseType: !1956, offset: 4864)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1957, line: 5, elements: !146)
!1957 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1586, file: !30, line: 528, baseType: !1959, size: 64, offset: 4864)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1961, line: 14, flags: DIFlagFwdDecl)
!1961 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1586, file: !30, line: 529, baseType: !1963, size: 64, offset: 4928)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1648, line: 22, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1586, file: !30, line: 534, baseType: !1966, size: 32, offset: 4992)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !85, line: 16, baseType: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !85, line: 13, baseType: !96)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1586, file: !30, line: 535, baseType: !96, size: 32, offset: 5024)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1586, file: !30, line: 537, baseType: !132, offset: 5056)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1586, file: !30, line: 538, baseType: !120, size: 128, offset: 5056)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1586, file: !30, line: 540, baseType: !1972, size: 64, offset: 5184)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1974, line: 54, size: 960, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981, !1982, !1986, !1990, !1991, !1992, !1993, !1997, !2001, !2002}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1973, file: !1974, line: 55, baseType: !106, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1973, file: !1974, line: 56, baseType: !1666, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1973, file: !1974, line: 58, baseType: !224, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1973, file: !1974, line: 59, baseType: !224, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1973, file: !1974, line: 60, baseType: !115, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1973, file: !1974, line: 62, baseType: !1602, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1973, file: !1974, line: 63, baseType: !1983, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!173, !1585, !1609}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1973, file: !1974, line: 65, baseType: !1987, size: 64, offset: 448)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1972}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1973, file: !1974, line: 66, baseType: !1611, size: 64, offset: 512)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1973, file: !1974, line: 68, baseType: !1620, size: 64, offset: 576)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1973, file: !1974, line: 70, baseType: !230, size: 64, offset: 640)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1973, file: !1974, line: 71, baseType: !1994, size: 64, offset: 704)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!250, !1585}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1973, file: !1974, line: 73, baseType: !1998, size: 64, offset: 768)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !1585, !270, !278}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1973, file: !1974, line: 75, baseType: !1615, size: 64, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1973, file: !1974, line: 77, baseType: !1717, size: 64, offset: 896)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1586, file: !30, line: 541, baseType: !224, size: 64, offset: 5248)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1586, file: !30, line: 543, baseType: !1611, size: 64, offset: 5312)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1586, file: !30, line: 544, baseType: !2006, size: 64, offset: 5376)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1586, file: !30, line: 545, baseType: !2009, size: 64, offset: 5440)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1586, file: !30, line: 547, baseType: !239, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1586, file: !30, line: 548, baseType: !239, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1586, file: !30, line: 549, baseType: !239, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1586, file: !30, line: 550, baseType: !239, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1578, file: !30, line: 103, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!203, !1585, !2015, !106, !217}
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(name: "dev_attr_control", scope: !2, file: !3, line: 122, type: !1578, isLocal: true, isDefinition: true)
!2022 = !DIGlobalVariableExpression(var: !2023, expr: !DIExpression())
!2023 = distinct !DIGlobalVariable(name: "ctrl_auto", scope: !2, file: !3, line: 98, type: !2024, isLocal: true, isDefinition: true)
!2024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 40, elements: !2025)
!2025 = !{!2026}
!2026 = !DISubrange(count: 5)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "ctrl_on", scope: !2, file: !3, line: 99, type: !2029, isLocal: true, isDefinition: true)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 24, elements: !174)
!2030 = !DIGlobalVariableExpression(var: !2031, expr: !DIExpression())
!2031 = distinct !DIGlobalVariable(name: "dev_attr_runtime_suspended_time", scope: !2, file: !3, line: 148, type: !1578, isLocal: true, isDefinition: true)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(name: "dev_attr_runtime_active_time", scope: !2, file: !3, line: 135, type: !1578, isLocal: true, isDefinition: true)
!2034 = !DIGlobalVariableExpression(var: !2035, expr: !DIExpression())
!2035 = distinct !DIGlobalVariable(name: "dev_attr_autosuspend_delay_ms", scope: !2, file: !3, line: 209, type: !1578, isLocal: true, isDefinition: true)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(name: "pm_wakeup_attr_group", scope: !2, file: !3, line: 647, type: !101, isLocal: true, isDefinition: true)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(name: "wakeup_attrs", scope: !2, file: !3, line: 630, type: !2040, isLocal: true, isDefinition: true)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 640, elements: !2041)
!2041 = !{!2042}
!2042 = !DISubrange(count: 10)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "dev_attr_wakeup", scope: !2, file: !3, line: 347, type: !1578, isLocal: true, isDefinition: true)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "_enabled", scope: !2, file: !3, line: 321, type: !2047, isLocal: true, isDefinition: true)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !708)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(name: "_disabled", scope: !2, file: !3, line: 322, type: !2050, isLocal: true, isDefinition: true)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 72, elements: !2051)
!2051 = !{!2052}
!2052 = !DISubrange(count: 9)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_count", scope: !2, file: !3, line: 367, type: !1578, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_active_count", scope: !2, file: !3, line: 388, type: !1578, isLocal: true, isDefinition: true)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_abort_count", scope: !2, file: !3, line: 409, type: !1578, isLocal: true, isDefinition: true)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_expire_count", scope: !2, file: !3, line: 430, type: !1578, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_active", scope: !2, file: !3, line: 450, type: !1578, isLocal: true, isDefinition: true)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_total_time_ms", scope: !2, file: !3, line: 471, type: !1578, isLocal: true, isDefinition: true)
!2065 = !DIGlobalVariableExpression(var: !2066, expr: !DIExpression())
!2066 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_max_time_ms", scope: !2, file: !3, line: 491, type: !1578, isLocal: true, isDefinition: true)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_last_time_ms", scope: !2, file: !3, line: 520, type: !1578, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(name: "pm_qos_latency_tolerance_attr_group", scope: !2, file: !3, line: 680, type: !101, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "pm_qos_latency_tolerance_attrs", scope: !2, file: !3, line: 676, type: !2073, isLocal: true, isDefinition: true)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, elements: !1135)
!2074 = !DIGlobalVariableExpression(var: !2075, expr: !DIExpression())
!2075 = distinct !DIGlobalVariable(name: "dev_attr_pm_qos_latency_tolerance_us", scope: !2, file: !3, line: 292, type: !1578, isLocal: true, isDefinition: true)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(name: "pm_qos_resume_latency_attr_group", scope: !2, file: !3, line: 671, type: !101, isLocal: true, isDefinition: true)
!2078 = !DIGlobalVariableExpression(var: !2079, expr: !DIExpression())
!2079 = distinct !DIGlobalVariable(name: "pm_qos_resume_latency_attrs", scope: !2, file: !3, line: 667, type: !2073, isLocal: true, isDefinition: true)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(name: "dev_attr_pm_qos_resume_latency_us", scope: !2, file: !3, line: 253, type: !1578, isLocal: true, isDefinition: true)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(name: "pm_qos_flags_attr_group", scope: !2, file: !3, line: 689, type: !101, isLocal: true, isDefinition: true)
!2084 = !DIGlobalVariableExpression(var: !2085, expr: !DIExpression())
!2085 = distinct !DIGlobalVariable(name: "pm_qos_flags_attrs", scope: !2, file: !3, line: 685, type: !2073, isLocal: true, isDefinition: true)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(name: "dev_attr_pm_qos_no_power_off", scope: !2, file: !3, line: 318, type: !1578, isLocal: true, isDefinition: true)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 48, elements: !1455)
!2089 = !{!"rsp"}
!2090 = !{i32 7, !"Dwarf Version", i32 4}
!2091 = !{i32 2, !"Debug Info Version", i32 3}
!2092 = !{i32 1, !"wchar_size", i32 2}
!2093 = !{i32 1, !"Code Model", i32 2}
!2094 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2095 = distinct !DISubprogram(name: "dpm_sysfs_add", scope: !3, file: !3, line: 694, type: !1621, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2096 = !DILocalVariable(name: "dev", arg: 1, scope: !2095, file: !3, line: 694, type: !1585)
!2097 = !DILocation(line: 694, column: 34, scope: !2095)
!2098 = !DILocalVariable(name: "rc", scope: !2095, file: !3, line: 696, type: !91)
!2099 = !DILocation(line: 696, column: 6, scope: !2095)
!2100 = !DILocation(line: 699, column: 29, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 699, column: 6)
!2102 = !DILocation(line: 699, column: 6, scope: !2101)
!2103 = !DILocation(line: 699, column: 6, scope: !2095)
!2104 = !DILocation(line: 700, column: 3, scope: !2101)
!2105 = !DILocation(line: 702, column: 27, scope: !2095)
!2106 = !DILocation(line: 702, column: 32, scope: !2095)
!2107 = !DILocation(line: 702, column: 7, scope: !2095)
!2108 = !DILocation(line: 702, column: 5, scope: !2095)
!2109 = !DILocation(line: 703, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 703, column: 6)
!2111 = !DILocation(line: 703, column: 6, scope: !2095)
!2112 = !DILocation(line: 704, column: 10, scope: !2110)
!2113 = !DILocation(line: 704, column: 3, scope: !2110)
!2114 = !DILocation(line: 706, column: 35, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 706, column: 6)
!2116 = !DILocation(line: 706, column: 7, scope: !2115)
!2117 = !DILocation(line: 706, column: 6, scope: !2095)
!2118 = !DILocation(line: 707, column: 27, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 706, column: 41)
!2120 = !DILocation(line: 707, column: 32, scope: !2119)
!2121 = !DILocation(line: 707, column: 8, scope: !2119)
!2122 = !DILocation(line: 707, column: 6, scope: !2119)
!2123 = !DILocation(line: 708, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 708, column: 7)
!2125 = !DILocation(line: 708, column: 7, scope: !2119)
!2126 = !DILocation(line: 709, column: 4, scope: !2124)
!2127 = !DILocation(line: 710, column: 2, scope: !2119)
!2128 = !DILocation(line: 711, column: 24, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 711, column: 6)
!2130 = !DILocation(line: 711, column: 6, scope: !2129)
!2131 = !DILocation(line: 711, column: 6, scope: !2095)
!2132 = !DILocation(line: 712, column: 27, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 711, column: 30)
!2134 = !DILocation(line: 712, column: 32, scope: !2133)
!2135 = !DILocation(line: 712, column: 8, scope: !2133)
!2136 = !DILocation(line: 712, column: 6, scope: !2133)
!2137 = !DILocation(line: 713, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 713, column: 7)
!2139 = !DILocation(line: 713, column: 7, scope: !2133)
!2140 = !DILocation(line: 714, column: 4, scope: !2138)
!2141 = !DILocation(line: 715, column: 2, scope: !2133)
!2142 = !DILocation(line: 716, column: 6, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 716, column: 6)
!2144 = !DILocation(line: 716, column: 11, scope: !2143)
!2145 = !DILocation(line: 716, column: 17, scope: !2143)
!2146 = !DILocation(line: 716, column: 6, scope: !2095)
!2147 = !DILocation(line: 717, column: 27, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 716, column: 40)
!2149 = !DILocation(line: 717, column: 32, scope: !2148)
!2150 = !DILocation(line: 717, column: 8, scope: !2148)
!2151 = !DILocation(line: 717, column: 6, scope: !2148)
!2152 = !DILocation(line: 719, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 719, column: 7)
!2154 = !DILocation(line: 719, column: 7, scope: !2148)
!2155 = !DILocation(line: 720, column: 4, scope: !2153)
!2156 = !DILocation(line: 721, column: 2, scope: !2148)
!2157 = !DILocation(line: 722, column: 34, scope: !2095)
!2158 = !DILocation(line: 722, column: 7, scope: !2095)
!2159 = !DILocation(line: 722, column: 5, scope: !2095)
!2160 = !DILocation(line: 723, column: 6, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 723, column: 6)
!2162 = !DILocation(line: 723, column: 6, scope: !2095)
!2163 = !DILocation(line: 724, column: 3, scope: !2161)
!2164 = !DILocation(line: 725, column: 2, scope: !2095)
!2165 = !DILabel(scope: !2095, name: "err_latency", file: !3, line: 727)
!2166 = !DILocation(line: 727, column: 2, scope: !2095)
!2167 = !DILocation(line: 728, column: 23, scope: !2095)
!2168 = !DILocation(line: 728, column: 28, scope: !2095)
!2169 = !DILocation(line: 728, column: 2, scope: !2095)
!2170 = !DILabel(scope: !2095, name: "err_wakeup", file: !3, line: 729)
!2171 = !DILocation(line: 729, column: 2, scope: !2095)
!2172 = !DILocation(line: 730, column: 23, scope: !2095)
!2173 = !DILocation(line: 730, column: 28, scope: !2095)
!2174 = !DILocation(line: 730, column: 2, scope: !2095)
!2175 = !DILabel(scope: !2095, name: "err_runtime", file: !3, line: 731)
!2176 = !DILocation(line: 731, column: 2, scope: !2095)
!2177 = !DILocation(line: 732, column: 23, scope: !2095)
!2178 = !DILocation(line: 732, column: 28, scope: !2095)
!2179 = !DILocation(line: 732, column: 2, scope: !2095)
!2180 = !DILabel(scope: !2095, name: "err_out", file: !3, line: 733)
!2181 = !DILocation(line: 733, column: 2, scope: !2095)
!2182 = !DILocation(line: 734, column: 22, scope: !2095)
!2183 = !DILocation(line: 734, column: 27, scope: !2095)
!2184 = !DILocation(line: 734, column: 2, scope: !2095)
!2185 = !DILocation(line: 735, column: 9, scope: !2095)
!2186 = !DILocation(line: 735, column: 2, scope: !2095)
!2187 = !DILocation(line: 736, column: 1, scope: !2095)
!2188 = distinct !DISubprogram(name: "device_pm_not_required", scope: !30, file: !30, line: 702, type: !2189, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!239, !1585}
!2191 = !DILocalVariable(name: "dev", arg: 1, scope: !2188, file: !30, line: 702, type: !1585)
!2192 = !DILocation(line: 702, column: 58, scope: !2188)
!2193 = !DILocation(line: 704, column: 9, scope: !2188)
!2194 = !DILocation(line: 704, column: 14, scope: !2188)
!2195 = !DILocation(line: 704, column: 20, scope: !2188)
!2196 = !DILocation(line: 704, column: 2, scope: !2188)
!2197 = distinct !DISubprogram(name: "pm_runtime_has_no_callbacks", scope: !2198, file: !2198, line: 182, type: !2189, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2198 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !DILocalVariable(name: "dev", arg: 1, scope: !2197, file: !2198, line: 182, type: !1585)
!2200 = !DILocation(line: 182, column: 63, scope: !2197)
!2201 = !DILocation(line: 184, column: 9, scope: !2197)
!2202 = !DILocation(line: 184, column: 14, scope: !2197)
!2203 = !DILocation(line: 184, column: 20, scope: !2197)
!2204 = !DILocation(line: 184, column: 2, scope: !2197)
!2205 = distinct !DISubprogram(name: "device_can_wakeup", scope: !1757, file: !1757, line: 77, type: !2189, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2206 = !DILocalVariable(name: "dev", arg: 1, scope: !2205, file: !1757, line: 77, type: !1585)
!2207 = !DILocation(line: 77, column: 53, scope: !2205)
!2208 = !DILocation(line: 79, column: 9, scope: !2205)
!2209 = !DILocation(line: 79, column: 14, scope: !2205)
!2210 = !DILocation(line: 79, column: 20, scope: !2205)
!2211 = !DILocation(line: 79, column: 2, scope: !2205)
!2212 = distinct !DISubprogram(name: "dpm_sysfs_change_owner", scope: !3, file: !3, line: 738, type: !2213, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!91, !1585, !271, !279}
!2215 = !DILocalVariable(name: "dev", arg: 1, scope: !2212, file: !3, line: 738, type: !1585)
!2216 = !DILocation(line: 738, column: 43, scope: !2212)
!2217 = !DILocalVariable(name: "kuid", arg: 2, scope: !2212, file: !3, line: 738, type: !271)
!2218 = !DILocation(line: 738, column: 55, scope: !2212)
!2219 = !DILocalVariable(name: "kgid", arg: 3, scope: !2212, file: !3, line: 738, type: !279)
!2220 = !DILocation(line: 738, column: 68, scope: !2212)
!2221 = !DILocalVariable(name: "rc", scope: !2212, file: !3, line: 740, type: !91)
!2222 = !DILocation(line: 740, column: 6, scope: !2212)
!2223 = !DILocation(line: 742, column: 29, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 742, column: 6)
!2225 = !DILocation(line: 742, column: 6, scope: !2224)
!2226 = !DILocation(line: 742, column: 6, scope: !2212)
!2227 = !DILocation(line: 743, column: 3, scope: !2224)
!2228 = !DILocation(line: 745, column: 33, scope: !2212)
!2229 = !DILocation(line: 745, column: 38, scope: !2212)
!2230 = !DILocation(line: 745, column: 7, scope: !2212)
!2231 = !DILocation(line: 745, column: 5, scope: !2212)
!2232 = !DILocation(line: 746, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 746, column: 6)
!2234 = !DILocation(line: 746, column: 6, scope: !2212)
!2235 = !DILocation(line: 747, column: 10, scope: !2233)
!2236 = !DILocation(line: 747, column: 3, scope: !2233)
!2237 = !DILocation(line: 749, column: 35, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 749, column: 6)
!2239 = !DILocation(line: 749, column: 7, scope: !2238)
!2240 = !DILocation(line: 749, column: 6, scope: !2212)
!2241 = !DILocation(line: 751, column: 5, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 749, column: 41)
!2243 = !DILocation(line: 751, column: 10, scope: !2242)
!2244 = !DILocation(line: 750, column: 8, scope: !2242)
!2245 = !DILocation(line: 750, column: 6, scope: !2242)
!2246 = !DILocation(line: 752, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 752, column: 7)
!2248 = !DILocation(line: 752, column: 7, scope: !2242)
!2249 = !DILocation(line: 753, column: 11, scope: !2247)
!2250 = !DILocation(line: 753, column: 4, scope: !2247)
!2251 = !DILocation(line: 754, column: 2, scope: !2242)
!2252 = !DILocation(line: 756, column: 24, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 756, column: 6)
!2254 = !DILocation(line: 756, column: 6, scope: !2253)
!2255 = !DILocation(line: 756, column: 6, scope: !2212)
!2256 = !DILocation(line: 757, column: 34, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 756, column: 30)
!2258 = !DILocation(line: 757, column: 39, scope: !2257)
!2259 = !DILocation(line: 757, column: 8, scope: !2257)
!2260 = !DILocation(line: 757, column: 6, scope: !2257)
!2261 = !DILocation(line: 759, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 759, column: 7)
!2263 = !DILocation(line: 759, column: 7, scope: !2257)
!2264 = !DILocation(line: 760, column: 11, scope: !2262)
!2265 = !DILocation(line: 760, column: 4, scope: !2262)
!2266 = !DILocation(line: 762, column: 38, scope: !2257)
!2267 = !DILocation(line: 762, column: 8, scope: !2257)
!2268 = !DILocation(line: 762, column: 6, scope: !2257)
!2269 = !DILocation(line: 763, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 763, column: 7)
!2271 = !DILocation(line: 763, column: 7, scope: !2257)
!2272 = !DILocation(line: 764, column: 11, scope: !2270)
!2273 = !DILocation(line: 764, column: 4, scope: !2270)
!2274 = !DILocation(line: 765, column: 2, scope: !2257)
!2275 = !DILocation(line: 767, column: 6, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 767, column: 6)
!2277 = !DILocation(line: 767, column: 11, scope: !2276)
!2278 = !DILocation(line: 767, column: 17, scope: !2276)
!2279 = !DILocation(line: 767, column: 6, scope: !2212)
!2280 = !DILocation(line: 769, column: 5, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 767, column: 40)
!2282 = !DILocation(line: 769, column: 10, scope: !2281)
!2283 = !DILocation(line: 768, column: 8, scope: !2281)
!2284 = !DILocation(line: 768, column: 6, scope: !2281)
!2285 = !DILocation(line: 771, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 771, column: 7)
!2287 = !DILocation(line: 771, column: 7, scope: !2281)
!2288 = !DILocation(line: 772, column: 11, scope: !2286)
!2289 = !DILocation(line: 772, column: 4, scope: !2286)
!2290 = !DILocation(line: 773, column: 2, scope: !2281)
!2291 = !DILocation(line: 774, column: 2, scope: !2212)
!2292 = !DILocation(line: 775, column: 1, scope: !2212)
!2293 = distinct !DISubprogram(name: "dpm_sysfs_wakeup_change_owner", scope: !3, file: !3, line: 512, type: !2213, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2294 = !DILocalVariable(name: "dev", arg: 1, scope: !2293, file: !3, line: 512, type: !1585)
!2295 = !DILocation(line: 512, column: 64, scope: !2293)
!2296 = !DILocalVariable(name: "kuid", arg: 2, scope: !2293, file: !3, line: 512, type: !271)
!2297 = !DILocation(line: 512, column: 76, scope: !2293)
!2298 = !DILocalVariable(name: "kgid", arg: 3, scope: !2293, file: !3, line: 513, type: !279)
!2299 = !DILocation(line: 513, column: 14, scope: !2293)
!2300 = !DILocation(line: 515, column: 6, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 515, column: 6)
!2302 = !DILocation(line: 515, column: 11, scope: !2301)
!2303 = !DILocation(line: 515, column: 17, scope: !2301)
!2304 = !DILocation(line: 515, column: 24, scope: !2301)
!2305 = !DILocation(line: 515, column: 27, scope: !2301)
!2306 = !DILocation(line: 515, column: 32, scope: !2301)
!2307 = !DILocation(line: 515, column: 38, scope: !2301)
!2308 = !DILocation(line: 515, column: 46, scope: !2301)
!2309 = !DILocation(line: 515, column: 6, scope: !2293)
!2310 = !DILocation(line: 516, column: 30, scope: !2301)
!2311 = !DILocation(line: 516, column: 35, scope: !2301)
!2312 = !DILocation(line: 516, column: 41, scope: !2301)
!2313 = !DILocation(line: 516, column: 49, scope: !2301)
!2314 = !DILocation(line: 516, column: 10, scope: !2301)
!2315 = !DILocation(line: 516, column: 3, scope: !2301)
!2316 = !DILocation(line: 517, column: 2, scope: !2293)
!2317 = !DILocation(line: 518, column: 1, scope: !2293)
!2318 = distinct !DISubprogram(name: "wakeup_sysfs_add", scope: !3, file: !3, line: 777, type: !1621, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2319 = !DILocalVariable(name: "dev", arg: 1, scope: !2318, file: !3, line: 777, type: !1585)
!2320 = !DILocation(line: 777, column: 37, scope: !2318)
!2321 = !DILocalVariable(name: "ret", scope: !2318, file: !3, line: 779, type: !91)
!2322 = !DILocation(line: 779, column: 6, scope: !2318)
!2323 = !DILocation(line: 779, column: 31, scope: !2318)
!2324 = !DILocation(line: 779, column: 36, scope: !2318)
!2325 = !DILocation(line: 779, column: 12, scope: !2318)
!2326 = !DILocation(line: 781, column: 7, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 781, column: 6)
!2328 = !DILocation(line: 781, column: 6, scope: !2318)
!2329 = !DILocation(line: 782, column: 19, scope: !2327)
!2330 = !DILocation(line: 782, column: 24, scope: !2327)
!2331 = !DILocation(line: 782, column: 3, scope: !2327)
!2332 = !DILocation(line: 784, column: 9, scope: !2318)
!2333 = !DILocation(line: 784, column: 2, scope: !2318)
!2334 = distinct !DISubprogram(name: "wakeup_sysfs_remove", scope: !3, file: !3, line: 787, type: !1612, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2335 = !DILocalVariable(name: "dev", arg: 1, scope: !2334, file: !3, line: 787, type: !1585)
!2336 = !DILocation(line: 787, column: 41, scope: !2334)
!2337 = !DILocation(line: 789, column: 23, scope: !2334)
!2338 = !DILocation(line: 789, column: 28, scope: !2334)
!2339 = !DILocation(line: 789, column: 2, scope: !2334)
!2340 = !DILocation(line: 790, column: 18, scope: !2334)
!2341 = !DILocation(line: 790, column: 23, scope: !2334)
!2342 = !DILocation(line: 790, column: 2, scope: !2334)
!2343 = !DILocation(line: 791, column: 1, scope: !2334)
!2344 = distinct !DISubprogram(name: "pm_qos_sysfs_add_resume_latency", scope: !3, file: !3, line: 793, type: !1621, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2345 = !DILocalVariable(name: "dev", arg: 1, scope: !2344, file: !3, line: 793, type: !1585)
!2346 = !DILocation(line: 793, column: 52, scope: !2344)
!2347 = !DILocation(line: 795, column: 28, scope: !2344)
!2348 = !DILocation(line: 795, column: 33, scope: !2344)
!2349 = !DILocation(line: 795, column: 9, scope: !2344)
!2350 = !DILocation(line: 795, column: 2, scope: !2344)
!2351 = distinct !DISubprogram(name: "pm_qos_sysfs_remove_resume_latency", scope: !3, file: !3, line: 798, type: !1612, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2352 = !DILocalVariable(name: "dev", arg: 1, scope: !2351, file: !3, line: 798, type: !1585)
!2353 = !DILocation(line: 798, column: 56, scope: !2351)
!2354 = !DILocation(line: 800, column: 23, scope: !2351)
!2355 = !DILocation(line: 800, column: 28, scope: !2351)
!2356 = !DILocation(line: 800, column: 2, scope: !2351)
!2357 = !DILocation(line: 801, column: 1, scope: !2351)
!2358 = distinct !DISubprogram(name: "pm_qos_sysfs_add_flags", scope: !3, file: !3, line: 803, type: !1621, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2359 = !DILocalVariable(name: "dev", arg: 1, scope: !2358, file: !3, line: 803, type: !1585)
!2360 = !DILocation(line: 803, column: 43, scope: !2358)
!2361 = !DILocation(line: 805, column: 28, scope: !2358)
!2362 = !DILocation(line: 805, column: 33, scope: !2358)
!2363 = !DILocation(line: 805, column: 9, scope: !2358)
!2364 = !DILocation(line: 805, column: 2, scope: !2358)
!2365 = distinct !DISubprogram(name: "pm_qos_sysfs_remove_flags", scope: !3, file: !3, line: 808, type: !1612, scopeLine: 809, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2366 = !DILocalVariable(name: "dev", arg: 1, scope: !2365, file: !3, line: 808, type: !1585)
!2367 = !DILocation(line: 808, column: 47, scope: !2365)
!2368 = !DILocation(line: 810, column: 23, scope: !2365)
!2369 = !DILocation(line: 810, column: 28, scope: !2365)
!2370 = !DILocation(line: 810, column: 2, scope: !2365)
!2371 = !DILocation(line: 811, column: 1, scope: !2365)
!2372 = distinct !DISubprogram(name: "pm_qos_sysfs_add_latency_tolerance", scope: !3, file: !3, line: 813, type: !1621, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2373 = !DILocalVariable(name: "dev", arg: 1, scope: !2372, file: !3, line: 813, type: !1585)
!2374 = !DILocation(line: 813, column: 55, scope: !2372)
!2375 = !DILocation(line: 815, column: 28, scope: !2372)
!2376 = !DILocation(line: 815, column: 33, scope: !2372)
!2377 = !DILocation(line: 815, column: 9, scope: !2372)
!2378 = !DILocation(line: 815, column: 2, scope: !2372)
!2379 = distinct !DISubprogram(name: "pm_qos_sysfs_remove_latency_tolerance", scope: !3, file: !3, line: 819, type: !1612, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2380 = !DILocalVariable(name: "dev", arg: 1, scope: !2379, file: !3, line: 819, type: !1585)
!2381 = !DILocation(line: 819, column: 59, scope: !2379)
!2382 = !DILocation(line: 821, column: 23, scope: !2379)
!2383 = !DILocation(line: 821, column: 28, scope: !2379)
!2384 = !DILocation(line: 821, column: 2, scope: !2379)
!2385 = !DILocation(line: 822, column: 1, scope: !2379)
!2386 = distinct !DISubprogram(name: "rpm_sysfs_remove", scope: !3, file: !3, line: 824, type: !1612, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2387 = !DILocalVariable(name: "dev", arg: 1, scope: !2386, file: !3, line: 824, type: !1585)
!2388 = !DILocation(line: 824, column: 38, scope: !2386)
!2389 = !DILocation(line: 826, column: 23, scope: !2386)
!2390 = !DILocation(line: 826, column: 28, scope: !2386)
!2391 = !DILocation(line: 826, column: 2, scope: !2386)
!2392 = !DILocation(line: 827, column: 1, scope: !2386)
!2393 = distinct !DISubprogram(name: "dpm_sysfs_remove", scope: !3, file: !3, line: 829, type: !1612, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2394 = !DILocalVariable(name: "dev", arg: 1, scope: !2393, file: !3, line: 829, type: !1585)
!2395 = !DILocation(line: 829, column: 38, scope: !2393)
!2396 = !DILocation(line: 831, column: 29, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 831, column: 6)
!2398 = !DILocation(line: 831, column: 6, scope: !2397)
!2399 = !DILocation(line: 831, column: 6, scope: !2393)
!2400 = !DILocation(line: 832, column: 3, scope: !2397)
!2401 = !DILocation(line: 833, column: 23, scope: !2393)
!2402 = !DILocation(line: 833, column: 28, scope: !2393)
!2403 = !DILocation(line: 833, column: 2, scope: !2393)
!2404 = !DILocation(line: 834, column: 33, scope: !2393)
!2405 = !DILocation(line: 834, column: 2, scope: !2393)
!2406 = !DILocation(line: 835, column: 19, scope: !2393)
!2407 = !DILocation(line: 835, column: 2, scope: !2393)
!2408 = !DILocation(line: 836, column: 23, scope: !2393)
!2409 = !DILocation(line: 836, column: 28, scope: !2393)
!2410 = !DILocation(line: 836, column: 2, scope: !2393)
!2411 = !DILocation(line: 837, column: 22, scope: !2393)
!2412 = !DILocation(line: 837, column: 27, scope: !2393)
!2413 = !DILocation(line: 837, column: 2, scope: !2393)
!2414 = !DILocation(line: 838, column: 1, scope: !2393)
!2415 = distinct !DISubprogram(name: "runtime_status_show", scope: !3, file: !3, line: 150, type: !1583, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2416 = !DILocalVariable(name: "dev", arg: 1, scope: !2415, file: !3, line: 150, type: !1585)
!2417 = !DILocation(line: 150, column: 51, scope: !2415)
!2418 = !DILocalVariable(name: "attr", arg: 2, scope: !2415, file: !3, line: 151, type: !2015)
!2419 = !DILocation(line: 151, column: 33, scope: !2415)
!2420 = !DILocalVariable(name: "buf", arg: 3, scope: !2415, file: !3, line: 151, type: !173)
!2421 = !DILocation(line: 151, column: 45, scope: !2415)
!2422 = !DILocalVariable(name: "output", scope: !2415, file: !3, line: 153, type: !106)
!2423 = !DILocation(line: 153, column: 14, scope: !2415)
!2424 = !DILocation(line: 155, column: 6, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 155, column: 6)
!2426 = !DILocation(line: 155, column: 11, scope: !2425)
!2427 = !DILocation(line: 155, column: 17, scope: !2425)
!2428 = !DILocation(line: 155, column: 6, scope: !2415)
!2429 = !DILocation(line: 156, column: 10, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 155, column: 32)
!2431 = !DILocation(line: 157, column: 2, scope: !2430)
!2432 = !DILocation(line: 157, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 157, column: 13)
!2434 = !DILocation(line: 157, column: 18, scope: !2433)
!2435 = !DILocation(line: 157, column: 24, scope: !2433)
!2436 = !DILocation(line: 157, column: 13, scope: !2425)
!2437 = !DILocation(line: 158, column: 10, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 157, column: 39)
!2439 = !DILocation(line: 159, column: 2, scope: !2438)
!2440 = !DILocation(line: 160, column: 11, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 159, column: 9)
!2442 = !DILocation(line: 160, column: 16, scope: !2441)
!2443 = !DILocation(line: 160, column: 22, scope: !2441)
!2444 = !DILocation(line: 160, column: 3, scope: !2441)
!2445 = !DILocation(line: 162, column: 11, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 160, column: 38)
!2447 = !DILocation(line: 163, column: 4, scope: !2446)
!2448 = !DILocation(line: 165, column: 11, scope: !2446)
!2449 = !DILocation(line: 166, column: 4, scope: !2446)
!2450 = !DILocation(line: 168, column: 11, scope: !2446)
!2451 = !DILocation(line: 169, column: 4, scope: !2446)
!2452 = !DILocation(line: 171, column: 11, scope: !2446)
!2453 = !DILocation(line: 172, column: 4, scope: !2446)
!2454 = !DILocation(line: 174, column: 4, scope: !2446)
!2455 = !DILocation(line: 177, column: 20, scope: !2415)
!2456 = !DILocation(line: 177, column: 33, scope: !2415)
!2457 = !DILocation(line: 177, column: 9, scope: !2415)
!2458 = !DILocation(line: 177, column: 2, scope: !2415)
!2459 = !DILocation(line: 178, column: 1, scope: !2415)
!2460 = distinct !DISubprogram(name: "control_show", scope: !3, file: !3, line: 101, type: !1583, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2461 = !DILocalVariable(name: "dev", arg: 1, scope: !2460, file: !3, line: 101, type: !1585)
!2462 = !DILocation(line: 101, column: 44, scope: !2460)
!2463 = !DILocalVariable(name: "attr", arg: 2, scope: !2460, file: !3, line: 101, type: !2015)
!2464 = !DILocation(line: 101, column: 74, scope: !2460)
!2465 = !DILocalVariable(name: "buf", arg: 3, scope: !2460, file: !3, line: 102, type: !173)
!2466 = !DILocation(line: 102, column: 14, scope: !2460)
!2467 = !DILocation(line: 104, column: 20, scope: !2460)
!2468 = !DILocation(line: 105, column: 6, scope: !2460)
!2469 = !DILocation(line: 105, column: 11, scope: !2460)
!2470 = !DILocation(line: 105, column: 17, scope: !2460)
!2471 = !DILocation(line: 104, column: 9, scope: !2460)
!2472 = !DILocation(line: 104, column: 2, scope: !2460)
!2473 = distinct !DISubprogram(name: "control_store", scope: !3, file: !3, line: 108, type: !2018, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2474 = !DILocalVariable(name: "dev", arg: 1, scope: !2473, file: !3, line: 108, type: !1585)
!2475 = !DILocation(line: 108, column: 46, scope: !2473)
!2476 = !DILocalVariable(name: "attr", arg: 2, scope: !2473, file: !3, line: 108, type: !2015)
!2477 = !DILocation(line: 108, column: 76, scope: !2473)
!2478 = !DILocalVariable(name: "buf", arg: 3, scope: !2473, file: !3, line: 109, type: !106)
!2479 = !DILocation(line: 109, column: 22, scope: !2473)
!2480 = !DILocalVariable(name: "n", arg: 4, scope: !2473, file: !3, line: 109, type: !217)
!2481 = !DILocation(line: 109, column: 34, scope: !2473)
!2482 = !DILocation(line: 111, column: 14, scope: !2473)
!2483 = !DILocation(line: 111, column: 2, scope: !2473)
!2484 = !DILocation(line: 112, column: 18, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 112, column: 6)
!2486 = !DILocation(line: 112, column: 6, scope: !2485)
!2487 = !DILocation(line: 112, column: 6, scope: !2473)
!2488 = !DILocation(line: 113, column: 20, scope: !2485)
!2489 = !DILocation(line: 113, column: 3, scope: !2485)
!2490 = !DILocation(line: 114, column: 23, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 114, column: 11)
!2492 = !DILocation(line: 114, column: 11, scope: !2491)
!2493 = !DILocation(line: 114, column: 11, scope: !2485)
!2494 = !DILocation(line: 115, column: 21, scope: !2491)
!2495 = !DILocation(line: 115, column: 3, scope: !2491)
!2496 = !DILocation(line: 117, column: 5, scope: !2491)
!2497 = !DILocation(line: 118, column: 16, scope: !2473)
!2498 = !DILocation(line: 118, column: 2, scope: !2473)
!2499 = !DILocation(line: 119, column: 9, scope: !2473)
!2500 = !DILocation(line: 119, column: 2, scope: !2473)
!2501 = distinct !DISubprogram(name: "device_lock", scope: !30, file: !30, line: 729, type: !1612, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2502 = !DILocalVariable(name: "dev", arg: 1, scope: !2501, file: !30, line: 729, type: !1585)
!2503 = !DILocation(line: 729, column: 47, scope: !2501)
!2504 = !DILocation(line: 731, column: 14, scope: !2501)
!2505 = !DILocation(line: 731, column: 19, scope: !2501)
!2506 = !DILocation(line: 731, column: 2, scope: !2501)
!2507 = !DILocation(line: 732, column: 1, scope: !2501)
!2508 = distinct !DISubprogram(name: "device_unlock", scope: !30, file: !30, line: 744, type: !1612, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2509 = !DILocalVariable(name: "dev", arg: 1, scope: !2508, file: !30, line: 744, type: !1585)
!2510 = !DILocation(line: 744, column: 49, scope: !2508)
!2511 = !DILocation(line: 746, column: 16, scope: !2508)
!2512 = !DILocation(line: 746, column: 21, scope: !2508)
!2513 = !DILocation(line: 746, column: 2, scope: !2508)
!2514 = !DILocation(line: 747, column: 1, scope: !2508)
!2515 = distinct !DISubprogram(name: "runtime_suspended_time_show", scope: !3, file: !3, line: 137, type: !1583, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2516 = !DILocalVariable(name: "dev", arg: 1, scope: !2515, file: !3, line: 137, type: !1585)
!2517 = !DILocation(line: 137, column: 59, scope: !2515)
!2518 = !DILocalVariable(name: "attr", arg: 2, scope: !2515, file: !3, line: 138, type: !2015)
!2519 = !DILocation(line: 138, column: 34, scope: !2515)
!2520 = !DILocalVariable(name: "buf", arg: 3, scope: !2515, file: !3, line: 139, type: !173)
!2521 = !DILocation(line: 139, column: 15, scope: !2515)
!2522 = !DILocalVariable(name: "tmp", scope: !2515, file: !3, line: 141, type: !86)
!2523 = !DILocation(line: 141, column: 6, scope: !2515)
!2524 = !DILocation(line: 141, column: 38, scope: !2515)
!2525 = !DILocation(line: 141, column: 12, scope: !2515)
!2526 = !DILocalVariable(name: "__base", scope: !2527, file: !3, line: 143, type: !2528)
!2527 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 143, column: 2)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 104, baseType: !96)
!2529 = !DILocation(line: 143, column: 2, scope: !2527)
!2530 = !DILocalVariable(name: "__rem", scope: !2527, file: !3, line: 143, type: !2528)
!2531 = !DILocation(line: 145, column: 20, scope: !2515)
!2532 = !DILocation(line: 145, column: 35, scope: !2515)
!2533 = !DILocation(line: 145, column: 9, scope: !2515)
!2534 = !DILocation(line: 145, column: 2, scope: !2515)
!2535 = distinct !DISubprogram(name: "runtime_active_time_show", scope: !3, file: !3, line: 124, type: !1583, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2536 = !DILocalVariable(name: "dev", arg: 1, scope: !2535, file: !3, line: 124, type: !1585)
!2537 = !DILocation(line: 124, column: 56, scope: !2535)
!2538 = !DILocalVariable(name: "attr", arg: 2, scope: !2535, file: !3, line: 125, type: !2015)
!2539 = !DILocation(line: 125, column: 31, scope: !2535)
!2540 = !DILocalVariable(name: "buf", arg: 3, scope: !2535, file: !3, line: 126, type: !173)
!2541 = !DILocation(line: 126, column: 12, scope: !2535)
!2542 = !DILocalVariable(name: "tmp", scope: !2535, file: !3, line: 128, type: !86)
!2543 = !DILocation(line: 128, column: 6, scope: !2535)
!2544 = !DILocation(line: 128, column: 35, scope: !2535)
!2545 = !DILocation(line: 128, column: 12, scope: !2535)
!2546 = !DILocalVariable(name: "__base", scope: !2547, file: !3, line: 130, type: !2528)
!2547 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 130, column: 2)
!2548 = !DILocation(line: 130, column: 2, scope: !2547)
!2549 = !DILocalVariable(name: "__rem", scope: !2547, file: !3, line: 130, type: !2528)
!2550 = !DILocation(line: 132, column: 20, scope: !2535)
!2551 = !DILocation(line: 132, column: 35, scope: !2535)
!2552 = !DILocation(line: 132, column: 9, scope: !2535)
!2553 = !DILocation(line: 132, column: 2, scope: !2535)
!2554 = distinct !DISubprogram(name: "autosuspend_delay_ms_show", scope: !3, file: !3, line: 182, type: !1583, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2555 = !DILocalVariable(name: "dev", arg: 1, scope: !2554, file: !3, line: 182, type: !1585)
!2556 = !DILocation(line: 182, column: 57, scope: !2554)
!2557 = !DILocalVariable(name: "attr", arg: 2, scope: !2554, file: !3, line: 183, type: !2015)
!2558 = !DILocation(line: 183, column: 32, scope: !2554)
!2559 = !DILocalVariable(name: "buf", arg: 3, scope: !2554, file: !3, line: 184, type: !173)
!2560 = !DILocation(line: 184, column: 13, scope: !2554)
!2561 = !DILocation(line: 186, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 186, column: 6)
!2563 = !DILocation(line: 186, column: 12, scope: !2562)
!2564 = !DILocation(line: 186, column: 18, scope: !2562)
!2565 = !DILocation(line: 186, column: 6, scope: !2554)
!2566 = !DILocation(line: 187, column: 3, scope: !2562)
!2567 = !DILocation(line: 189, column: 20, scope: !2554)
!2568 = !DILocation(line: 189, column: 33, scope: !2554)
!2569 = !DILocation(line: 189, column: 38, scope: !2554)
!2570 = !DILocation(line: 189, column: 44, scope: !2554)
!2571 = !DILocation(line: 189, column: 9, scope: !2554)
!2572 = !DILocation(line: 189, column: 2, scope: !2554)
!2573 = !DILocation(line: 190, column: 1, scope: !2554)
!2574 = distinct !DISubprogram(name: "autosuspend_delay_ms_store", scope: !3, file: !3, line: 192, type: !2018, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2575 = !DILocalVariable(name: "dev", arg: 1, scope: !2574, file: !3, line: 192, type: !1585)
!2576 = !DILocation(line: 192, column: 58, scope: !2574)
!2577 = !DILocalVariable(name: "attr", arg: 2, scope: !2574, file: !3, line: 193, type: !2015)
!2578 = !DILocation(line: 193, column: 28, scope: !2574)
!2579 = !DILocalVariable(name: "buf", arg: 3, scope: !2574, file: !3, line: 193, type: !106)
!2580 = !DILocation(line: 193, column: 46, scope: !2574)
!2581 = !DILocalVariable(name: "n", arg: 4, scope: !2574, file: !3, line: 193, type: !217)
!2582 = !DILocation(line: 193, column: 58, scope: !2574)
!2583 = !DILocalVariable(name: "delay", scope: !2574, file: !3, line: 195, type: !207)
!2584 = !DILocation(line: 195, column: 7, scope: !2574)
!2585 = !DILocation(line: 197, column: 7, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 197, column: 6)
!2587 = !DILocation(line: 197, column: 12, scope: !2586)
!2588 = !DILocation(line: 197, column: 18, scope: !2586)
!2589 = !DILocation(line: 197, column: 6, scope: !2574)
!2590 = !DILocation(line: 198, column: 3, scope: !2586)
!2591 = !DILocation(line: 200, column: 14, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 200, column: 6)
!2593 = !DILocation(line: 200, column: 6, scope: !2592)
!2594 = !DILocation(line: 200, column: 31, scope: !2592)
!2595 = !DILocation(line: 200, column: 36, scope: !2592)
!2596 = !DILocation(line: 200, column: 39, scope: !2592)
!2597 = !DILocation(line: 200, column: 54, scope: !2592)
!2598 = !DILocation(line: 200, column: 48, scope: !2592)
!2599 = !DILocation(line: 200, column: 45, scope: !2592)
!2600 = !DILocation(line: 200, column: 6, scope: !2574)
!2601 = !DILocation(line: 201, column: 3, scope: !2592)
!2602 = !DILocation(line: 203, column: 14, scope: !2574)
!2603 = !DILocation(line: 203, column: 2, scope: !2574)
!2604 = !DILocation(line: 204, column: 35, scope: !2574)
!2605 = !DILocation(line: 204, column: 40, scope: !2574)
!2606 = !DILocation(line: 204, column: 2, scope: !2574)
!2607 = !DILocation(line: 205, column: 16, scope: !2574)
!2608 = !DILocation(line: 205, column: 2, scope: !2574)
!2609 = !DILocation(line: 206, column: 9, scope: !2574)
!2610 = !DILocation(line: 206, column: 2, scope: !2574)
!2611 = !DILocation(line: 207, column: 1, scope: !2574)
!2612 = distinct !DISubprogram(name: "kstrtol", scope: !2613, file: !2613, line: 379, type: !2614, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2613 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!91, !106, !7, !2616}
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!2617 = !DILocalVariable(name: "s", arg: 1, scope: !2612, file: !2613, line: 379, type: !106)
!2618 = !DILocation(line: 379, column: 52, scope: !2612)
!2619 = !DILocalVariable(name: "base", arg: 2, scope: !2612, file: !2613, line: 379, type: !7)
!2620 = !DILocation(line: 379, column: 68, scope: !2612)
!2621 = !DILocalVariable(name: "res", arg: 3, scope: !2612, file: !2613, line: 379, type: !2616)
!2622 = !DILocation(line: 379, column: 80, scope: !2612)
!2623 = !DILocation(line: 387, column: 19, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2612, file: !2613, line: 385, column: 6)
!2625 = !DILocation(line: 387, column: 22, scope: !2624)
!2626 = !DILocation(line: 387, column: 41, scope: !2624)
!2627 = !DILocation(line: 387, column: 10, scope: !2624)
!2628 = !DILocation(line: 387, column: 3, scope: !2624)
!2629 = distinct !DISubprogram(name: "wakeup_show", scope: !3, file: !3, line: 324, type: !1583, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2630 = !DILocalVariable(name: "dev", arg: 1, scope: !2629, file: !3, line: 324, type: !1585)
!2631 = !DILocation(line: 324, column: 43, scope: !2629)
!2632 = !DILocalVariable(name: "attr", arg: 2, scope: !2629, file: !3, line: 324, type: !2015)
!2633 = !DILocation(line: 324, column: 73, scope: !2629)
!2634 = !DILocalVariable(name: "buf", arg: 3, scope: !2629, file: !3, line: 325, type: !173)
!2635 = !DILocation(line: 325, column: 13, scope: !2629)
!2636 = !DILocation(line: 327, column: 20, scope: !2629)
!2637 = !DILocation(line: 327, column: 51, scope: !2629)
!2638 = !DILocation(line: 327, column: 33, scope: !2629)
!2639 = !DILocation(line: 328, column: 27, scope: !2629)
!2640 = !DILocation(line: 328, column: 9, scope: !2629)
!2641 = !DILocation(line: 327, column: 9, scope: !2629)
!2642 = !DILocation(line: 327, column: 2, scope: !2629)
!2643 = distinct !DISubprogram(name: "wakeup_store", scope: !3, file: !3, line: 332, type: !2018, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2644 = !DILocalVariable(name: "dev", arg: 1, scope: !2643, file: !3, line: 332, type: !1585)
!2645 = !DILocation(line: 332, column: 44, scope: !2643)
!2646 = !DILocalVariable(name: "attr", arg: 2, scope: !2643, file: !3, line: 332, type: !2015)
!2647 = !DILocation(line: 332, column: 74, scope: !2643)
!2648 = !DILocalVariable(name: "buf", arg: 3, scope: !2643, file: !3, line: 333, type: !106)
!2649 = !DILocation(line: 333, column: 20, scope: !2643)
!2650 = !DILocalVariable(name: "n", arg: 4, scope: !2643, file: !3, line: 333, type: !217)
!2651 = !DILocation(line: 333, column: 32, scope: !2643)
!2652 = !DILocation(line: 335, column: 25, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 335, column: 6)
!2654 = !DILocation(line: 335, column: 7, scope: !2653)
!2655 = !DILocation(line: 335, column: 6, scope: !2643)
!2656 = !DILocation(line: 336, column: 3, scope: !2653)
!2657 = !DILocation(line: 338, column: 18, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 338, column: 6)
!2659 = !DILocation(line: 338, column: 6, scope: !2658)
!2660 = !DILocation(line: 338, column: 6, scope: !2643)
!2661 = !DILocation(line: 339, column: 28, scope: !2658)
!2662 = !DILocation(line: 339, column: 3, scope: !2658)
!2663 = !DILocation(line: 340, column: 23, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 340, column: 11)
!2665 = !DILocation(line: 340, column: 11, scope: !2664)
!2666 = !DILocation(line: 340, column: 11, scope: !2658)
!2667 = !DILocation(line: 341, column: 28, scope: !2664)
!2668 = !DILocation(line: 341, column: 3, scope: !2664)
!2669 = !DILocation(line: 343, column: 3, scope: !2664)
!2670 = !DILocation(line: 344, column: 9, scope: !2643)
!2671 = !DILocation(line: 344, column: 2, scope: !2643)
!2672 = !DILocation(line: 345, column: 1, scope: !2643)
!2673 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1757, file: !1757, line: 82, type: !2189, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2674 = !DILocalVariable(name: "dev", arg: 1, scope: !2673, file: !1757, line: 82, type: !1585)
!2675 = !DILocation(line: 82, column: 53, scope: !2673)
!2676 = !DILocation(line: 84, column: 9, scope: !2673)
!2677 = !DILocation(line: 84, column: 14, scope: !2673)
!2678 = !DILocation(line: 84, column: 20, scope: !2673)
!2679 = !DILocation(line: 84, column: 31, scope: !2673)
!2680 = !DILocation(line: 84, column: 36, scope: !2673)
!2681 = !DILocation(line: 84, column: 41, scope: !2673)
!2682 = !DILocation(line: 84, column: 47, scope: !2673)
!2683 = !DILocation(line: 84, column: 35, scope: !2673)
!2684 = !DILocation(line: 84, column: 34, scope: !2673)
!2685 = !DILocation(line: 0, scope: !2673)
!2686 = !DILocation(line: 84, column: 2, scope: !2673)
!2687 = distinct !DISubprogram(name: "wakeup_count_show", scope: !3, file: !3, line: 349, type: !1583, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2688 = !DILocalVariable(name: "lock", arg: 1, scope: !2689, file: !2690, line: 402, type: !2693)
!2689 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2690, file: !2690, line: 402, type: !2691, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2690 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!2694 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 360, column: 2, scope: !2687)
!2696 = !DILocalVariable(name: "lock", arg: 1, scope: !2697, file: !2690, line: 377, type: !2693)
!2697 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2690, file: !2690, line: 377, type: !2691, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2698 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 355, column: 2, scope: !2687)
!2700 = !DILocalVariable(name: "dev", arg: 1, scope: !2687, file: !3, line: 349, type: !1585)
!2701 = !DILocation(line: 349, column: 49, scope: !2687)
!2702 = !DILocalVariable(name: "attr", arg: 2, scope: !2687, file: !3, line: 350, type: !2015)
!2703 = !DILocation(line: 350, column: 31, scope: !2687)
!2704 = !DILocalVariable(name: "buf", arg: 3, scope: !2687, file: !3, line: 350, type: !173)
!2705 = !DILocation(line: 350, column: 43, scope: !2687)
!2706 = !DILocalVariable(name: "count", scope: !2687, file: !3, line: 352, type: !220)
!2707 = !DILocation(line: 352, column: 16, scope: !2687)
!2708 = !DILocalVariable(name: "enabled", scope: !2687, file: !3, line: 353, type: !239)
!2709 = !DILocation(line: 353, column: 7, scope: !2687)
!2710 = !DILocation(line: 355, column: 17, scope: !2687)
!2711 = !DILocation(line: 355, column: 22, scope: !2687)
!2712 = !DILocation(line: 355, column: 28, scope: !2687)
!2713 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !2699)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !2690, line: 379, column: 2)
!2715 = distinct !DILexicalBlock(scope: !2697, file: !2690, line: 379, column: 2)
!2716 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !2699)
!2717 = distinct !DILexicalBlock(scope: !2715, file: !2690, line: 379, column: 2)
!2718 = !{i32 -2145279435}
!2719 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !2699)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !2690, line: 379, column: 2)
!2721 = !DILocation(line: 356, column: 6, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 356, column: 6)
!2723 = !DILocation(line: 356, column: 11, scope: !2722)
!2724 = !DILocation(line: 356, column: 17, scope: !2722)
!2725 = !DILocation(line: 356, column: 6, scope: !2687)
!2726 = !DILocation(line: 357, column: 11, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 356, column: 25)
!2728 = !DILocation(line: 357, column: 16, scope: !2727)
!2729 = !DILocation(line: 357, column: 22, scope: !2727)
!2730 = !DILocation(line: 357, column: 30, scope: !2727)
!2731 = !DILocation(line: 357, column: 9, scope: !2727)
!2732 = !DILocation(line: 358, column: 11, scope: !2727)
!2733 = !DILocation(line: 359, column: 2, scope: !2727)
!2734 = !DILocation(line: 360, column: 19, scope: !2687)
!2735 = !DILocation(line: 360, column: 24, scope: !2687)
!2736 = !DILocation(line: 360, column: 30, scope: !2687)
!2737 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !2695)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !2690, line: 404, column: 2)
!2739 = distinct !DILexicalBlock(scope: !2689, file: !2690, line: 404, column: 2)
!2740 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !2695)
!2741 = distinct !DILexicalBlock(scope: !2739, file: !2690, line: 404, column: 2)
!2742 = !{i32 -2145277687}
!2743 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !2695)
!2744 = distinct !DILexicalBlock(scope: !2741, file: !2690, line: 404, column: 2)
!2745 = !DILocation(line: 362, column: 7, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 362, column: 6)
!2747 = !DILocation(line: 362, column: 6, scope: !2687)
!2748 = !DILocation(line: 363, column: 21, scope: !2746)
!2749 = !DILocation(line: 363, column: 10, scope: !2746)
!2750 = !DILocation(line: 363, column: 3, scope: !2746)
!2751 = !DILocation(line: 364, column: 20, scope: !2687)
!2752 = !DILocation(line: 364, column: 34, scope: !2687)
!2753 = !DILocation(line: 364, column: 9, scope: !2687)
!2754 = !DILocation(line: 364, column: 2, scope: !2687)
!2755 = !DILocation(line: 365, column: 1, scope: !2687)
!2756 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !2757, file: !2757, line: 656, type: !2758, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2757 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null}
!2760 = !DILocalVariable(name: "__edi", scope: !2761, file: !2757, line: 658, type: !220)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !2757, line: 658, column: 2)
!2762 = !DILocation(line: 658, column: 2, scope: !2761)
!2763 = !DILocalVariable(name: "__esi", scope: !2761, file: !2757, line: 658, type: !220)
!2764 = !DILocalVariable(name: "__edx", scope: !2761, file: !2757, line: 658, type: !220)
!2765 = !DILocalVariable(name: "__ecx", scope: !2761, file: !2757, line: 658, type: !220)
!2766 = !DILocalVariable(name: "__eax", scope: !2761, file: !2757, line: 658, type: !220)
!2767 = !{i32 -2145746392, i32 -2145745660, i32 -2145745426, i32 -2145745375, i32 -2145745347, i32 -2145745322, i32 -2145745638, i32 -2145745625, i32 -2145745187, i32 -2145745068, i32 -2145745533, i32 -2145745506, i32 -2145745478, i32 -2145745448}
!2768 = !DILocation(line: 659, column: 1, scope: !2756)
!2769 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !2757, file: !2757, line: 661, type: !2758, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2770 = !DILocalVariable(name: "__edi", scope: !2771, file: !2757, line: 663, type: !220)
!2771 = distinct !DILexicalBlock(scope: !2769, file: !2757, line: 663, column: 2)
!2772 = !DILocation(line: 663, column: 2, scope: !2771)
!2773 = !DILocalVariable(name: "__esi", scope: !2771, file: !2757, line: 663, type: !220)
!2774 = !DILocalVariable(name: "__edx", scope: !2771, file: !2757, line: 663, type: !220)
!2775 = !DILocalVariable(name: "__ecx", scope: !2771, file: !2757, line: 663, type: !220)
!2776 = !DILocalVariable(name: "__eax", scope: !2771, file: !2757, line: 663, type: !220)
!2777 = !{i32 -2145743808, i32 -2145743078, i32 -2145742844, i32 -2145742793, i32 -2145742765, i32 -2145742740, i32 -2145743056, i32 -2145743043, i32 -2145742605, i32 -2145742486, i32 -2145742951, i32 -2145742924, i32 -2145742896, i32 -2145742866}
!2778 = !DILocation(line: 664, column: 1, scope: !2769)
!2779 = distinct !DISubprogram(name: "wakeup_active_count_show", scope: !3, file: !3, line: 369, type: !1583, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2780 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 381, column: 2, scope: !2779)
!2782 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 376, column: 2, scope: !2779)
!2784 = !DILocalVariable(name: "dev", arg: 1, scope: !2779, file: !3, line: 369, type: !1585)
!2785 = !DILocation(line: 369, column: 56, scope: !2779)
!2786 = !DILocalVariable(name: "attr", arg: 2, scope: !2779, file: !3, line: 370, type: !2015)
!2787 = !DILocation(line: 370, column: 31, scope: !2779)
!2788 = !DILocalVariable(name: "buf", arg: 3, scope: !2779, file: !3, line: 371, type: !173)
!2789 = !DILocation(line: 371, column: 12, scope: !2779)
!2790 = !DILocalVariable(name: "count", scope: !2779, file: !3, line: 373, type: !220)
!2791 = !DILocation(line: 373, column: 16, scope: !2779)
!2792 = !DILocalVariable(name: "enabled", scope: !2779, file: !3, line: 374, type: !239)
!2793 = !DILocation(line: 374, column: 7, scope: !2779)
!2794 = !DILocation(line: 376, column: 17, scope: !2779)
!2795 = !DILocation(line: 376, column: 22, scope: !2779)
!2796 = !DILocation(line: 376, column: 28, scope: !2779)
!2797 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !2783)
!2798 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !2783)
!2799 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !2783)
!2800 = !DILocation(line: 377, column: 6, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 377, column: 6)
!2802 = !DILocation(line: 377, column: 11, scope: !2801)
!2803 = !DILocation(line: 377, column: 17, scope: !2801)
!2804 = !DILocation(line: 377, column: 6, scope: !2779)
!2805 = !DILocation(line: 378, column: 11, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 377, column: 25)
!2807 = !DILocation(line: 378, column: 16, scope: !2806)
!2808 = !DILocation(line: 378, column: 22, scope: !2806)
!2809 = !DILocation(line: 378, column: 30, scope: !2806)
!2810 = !DILocation(line: 378, column: 9, scope: !2806)
!2811 = !DILocation(line: 379, column: 11, scope: !2806)
!2812 = !DILocation(line: 380, column: 2, scope: !2806)
!2813 = !DILocation(line: 381, column: 19, scope: !2779)
!2814 = !DILocation(line: 381, column: 24, scope: !2779)
!2815 = !DILocation(line: 381, column: 30, scope: !2779)
!2816 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !2781)
!2817 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !2781)
!2818 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !2781)
!2819 = !DILocation(line: 383, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 383, column: 6)
!2821 = !DILocation(line: 383, column: 6, scope: !2779)
!2822 = !DILocation(line: 384, column: 21, scope: !2820)
!2823 = !DILocation(line: 384, column: 10, scope: !2820)
!2824 = !DILocation(line: 384, column: 3, scope: !2820)
!2825 = !DILocation(line: 385, column: 20, scope: !2779)
!2826 = !DILocation(line: 385, column: 34, scope: !2779)
!2827 = !DILocation(line: 385, column: 9, scope: !2779)
!2828 = !DILocation(line: 385, column: 2, scope: !2779)
!2829 = !DILocation(line: 386, column: 1, scope: !2779)
!2830 = distinct !DISubprogram(name: "wakeup_abort_count_show", scope: !3, file: !3, line: 390, type: !1583, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2831 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 402, column: 2, scope: !2830)
!2833 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 397, column: 2, scope: !2830)
!2835 = !DILocalVariable(name: "dev", arg: 1, scope: !2830, file: !3, line: 390, type: !1585)
!2836 = !DILocation(line: 390, column: 55, scope: !2830)
!2837 = !DILocalVariable(name: "attr", arg: 2, scope: !2830, file: !3, line: 391, type: !2015)
!2838 = !DILocation(line: 391, column: 37, scope: !2830)
!2839 = !DILocalVariable(name: "buf", arg: 3, scope: !2830, file: !3, line: 392, type: !173)
!2840 = !DILocation(line: 392, column: 18, scope: !2830)
!2841 = !DILocalVariable(name: "count", scope: !2830, file: !3, line: 394, type: !220)
!2842 = !DILocation(line: 394, column: 16, scope: !2830)
!2843 = !DILocalVariable(name: "enabled", scope: !2830, file: !3, line: 395, type: !239)
!2844 = !DILocation(line: 395, column: 7, scope: !2830)
!2845 = !DILocation(line: 397, column: 17, scope: !2830)
!2846 = !DILocation(line: 397, column: 22, scope: !2830)
!2847 = !DILocation(line: 397, column: 28, scope: !2830)
!2848 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !2834)
!2849 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !2834)
!2850 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !2834)
!2851 = !DILocation(line: 398, column: 6, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 398, column: 6)
!2853 = !DILocation(line: 398, column: 11, scope: !2852)
!2854 = !DILocation(line: 398, column: 17, scope: !2852)
!2855 = !DILocation(line: 398, column: 6, scope: !2830)
!2856 = !DILocation(line: 399, column: 11, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 398, column: 25)
!2858 = !DILocation(line: 399, column: 16, scope: !2857)
!2859 = !DILocation(line: 399, column: 22, scope: !2857)
!2860 = !DILocation(line: 399, column: 30, scope: !2857)
!2861 = !DILocation(line: 399, column: 9, scope: !2857)
!2862 = !DILocation(line: 400, column: 11, scope: !2857)
!2863 = !DILocation(line: 401, column: 2, scope: !2857)
!2864 = !DILocation(line: 402, column: 19, scope: !2830)
!2865 = !DILocation(line: 402, column: 24, scope: !2830)
!2866 = !DILocation(line: 402, column: 30, scope: !2830)
!2867 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !2832)
!2868 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !2832)
!2869 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !2832)
!2870 = !DILocation(line: 404, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 404, column: 6)
!2872 = !DILocation(line: 404, column: 6, scope: !2830)
!2873 = !DILocation(line: 405, column: 21, scope: !2871)
!2874 = !DILocation(line: 405, column: 10, scope: !2871)
!2875 = !DILocation(line: 405, column: 3, scope: !2871)
!2876 = !DILocation(line: 406, column: 20, scope: !2830)
!2877 = !DILocation(line: 406, column: 34, scope: !2830)
!2878 = !DILocation(line: 406, column: 9, scope: !2830)
!2879 = !DILocation(line: 406, column: 2, scope: !2830)
!2880 = !DILocation(line: 407, column: 1, scope: !2830)
!2881 = distinct !DISubprogram(name: "wakeup_expire_count_show", scope: !3, file: !3, line: 411, type: !1583, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2882 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 423, column: 2, scope: !2881)
!2884 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 418, column: 2, scope: !2881)
!2886 = !DILocalVariable(name: "dev", arg: 1, scope: !2881, file: !3, line: 411, type: !1585)
!2887 = !DILocation(line: 411, column: 56, scope: !2881)
!2888 = !DILocalVariable(name: "attr", arg: 2, scope: !2881, file: !3, line: 412, type: !2015)
!2889 = !DILocation(line: 412, column: 31, scope: !2881)
!2890 = !DILocalVariable(name: "buf", arg: 3, scope: !2881, file: !3, line: 413, type: !173)
!2891 = !DILocation(line: 413, column: 12, scope: !2881)
!2892 = !DILocalVariable(name: "count", scope: !2881, file: !3, line: 415, type: !220)
!2893 = !DILocation(line: 415, column: 16, scope: !2881)
!2894 = !DILocalVariable(name: "enabled", scope: !2881, file: !3, line: 416, type: !239)
!2895 = !DILocation(line: 416, column: 7, scope: !2881)
!2896 = !DILocation(line: 418, column: 17, scope: !2881)
!2897 = !DILocation(line: 418, column: 22, scope: !2881)
!2898 = !DILocation(line: 418, column: 28, scope: !2881)
!2899 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !2885)
!2900 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !2885)
!2901 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !2885)
!2902 = !DILocation(line: 419, column: 6, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 419, column: 6)
!2904 = !DILocation(line: 419, column: 11, scope: !2903)
!2905 = !DILocation(line: 419, column: 17, scope: !2903)
!2906 = !DILocation(line: 419, column: 6, scope: !2881)
!2907 = !DILocation(line: 420, column: 11, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 419, column: 25)
!2909 = !DILocation(line: 420, column: 16, scope: !2908)
!2910 = !DILocation(line: 420, column: 22, scope: !2908)
!2911 = !DILocation(line: 420, column: 30, scope: !2908)
!2912 = !DILocation(line: 420, column: 9, scope: !2908)
!2913 = !DILocation(line: 421, column: 11, scope: !2908)
!2914 = !DILocation(line: 422, column: 2, scope: !2908)
!2915 = !DILocation(line: 423, column: 19, scope: !2881)
!2916 = !DILocation(line: 423, column: 24, scope: !2881)
!2917 = !DILocation(line: 423, column: 30, scope: !2881)
!2918 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !2883)
!2919 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !2883)
!2920 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !2883)
!2921 = !DILocation(line: 425, column: 7, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 425, column: 6)
!2923 = !DILocation(line: 425, column: 6, scope: !2881)
!2924 = !DILocation(line: 426, column: 21, scope: !2922)
!2925 = !DILocation(line: 426, column: 10, scope: !2922)
!2926 = !DILocation(line: 426, column: 3, scope: !2922)
!2927 = !DILocation(line: 427, column: 20, scope: !2881)
!2928 = !DILocation(line: 427, column: 34, scope: !2881)
!2929 = !DILocation(line: 427, column: 9, scope: !2881)
!2930 = !DILocation(line: 427, column: 2, scope: !2881)
!2931 = !DILocation(line: 428, column: 1, scope: !2881)
!2932 = distinct !DISubprogram(name: "wakeup_active_show", scope: !3, file: !3, line: 432, type: !1583, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2933 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 443, column: 2, scope: !2932)
!2935 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 438, column: 2, scope: !2932)
!2937 = !DILocalVariable(name: "dev", arg: 1, scope: !2932, file: !3, line: 432, type: !1585)
!2938 = !DILocation(line: 432, column: 50, scope: !2932)
!2939 = !DILocalVariable(name: "attr", arg: 2, scope: !2932, file: !3, line: 433, type: !2015)
!2940 = !DILocation(line: 433, column: 32, scope: !2932)
!2941 = !DILocalVariable(name: "buf", arg: 3, scope: !2932, file: !3, line: 433, type: !173)
!2942 = !DILocation(line: 433, column: 44, scope: !2932)
!2943 = !DILocalVariable(name: "active", scope: !2932, file: !3, line: 435, type: !7)
!2944 = !DILocation(line: 435, column: 15, scope: !2932)
!2945 = !DILocalVariable(name: "enabled", scope: !2932, file: !3, line: 436, type: !239)
!2946 = !DILocation(line: 436, column: 7, scope: !2932)
!2947 = !DILocation(line: 438, column: 17, scope: !2932)
!2948 = !DILocation(line: 438, column: 22, scope: !2932)
!2949 = !DILocation(line: 438, column: 28, scope: !2932)
!2950 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !2936)
!2951 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !2936)
!2952 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !2936)
!2953 = !DILocation(line: 439, column: 6, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 439, column: 6)
!2955 = !DILocation(line: 439, column: 11, scope: !2954)
!2956 = !DILocation(line: 439, column: 17, scope: !2954)
!2957 = !DILocation(line: 439, column: 6, scope: !2932)
!2958 = !DILocation(line: 440, column: 12, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 439, column: 25)
!2960 = !DILocation(line: 440, column: 17, scope: !2959)
!2961 = !DILocation(line: 440, column: 23, scope: !2959)
!2962 = !DILocation(line: 440, column: 31, scope: !2959)
!2963 = !DILocation(line: 440, column: 10, scope: !2959)
!2964 = !DILocation(line: 441, column: 11, scope: !2959)
!2965 = !DILocation(line: 442, column: 2, scope: !2959)
!2966 = !DILocation(line: 443, column: 19, scope: !2932)
!2967 = !DILocation(line: 443, column: 24, scope: !2932)
!2968 = !DILocation(line: 443, column: 30, scope: !2932)
!2969 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !2934)
!2970 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !2934)
!2971 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !2934)
!2972 = !DILocation(line: 445, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 445, column: 6)
!2974 = !DILocation(line: 445, column: 6, scope: !2932)
!2975 = !DILocation(line: 446, column: 21, scope: !2973)
!2976 = !DILocation(line: 446, column: 10, scope: !2973)
!2977 = !DILocation(line: 446, column: 3, scope: !2973)
!2978 = !DILocation(line: 447, column: 20, scope: !2932)
!2979 = !DILocation(line: 447, column: 33, scope: !2932)
!2980 = !DILocation(line: 447, column: 9, scope: !2932)
!2981 = !DILocation(line: 447, column: 2, scope: !2932)
!2982 = !DILocation(line: 448, column: 1, scope: !2932)
!2983 = distinct !DISubprogram(name: "wakeup_total_time_ms_show", scope: !3, file: !3, line: 452, type: !1583, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!2984 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 464, column: 2, scope: !2983)
!2986 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 459, column: 2, scope: !2983)
!2988 = !DILocalVariable(name: "dev", arg: 1, scope: !2983, file: !3, line: 452, type: !1585)
!2989 = !DILocation(line: 452, column: 57, scope: !2983)
!2990 = !DILocalVariable(name: "attr", arg: 2, scope: !2983, file: !3, line: 453, type: !2015)
!2991 = !DILocation(line: 453, column: 32, scope: !2983)
!2992 = !DILocalVariable(name: "buf", arg: 3, scope: !2983, file: !3, line: 454, type: !173)
!2993 = !DILocation(line: 454, column: 13, scope: !2983)
!2994 = !DILocalVariable(name: "msec", scope: !2983, file: !3, line: 456, type: !412)
!2995 = !DILocation(line: 456, column: 6, scope: !2983)
!2996 = !DILocalVariable(name: "enabled", scope: !2983, file: !3, line: 457, type: !239)
!2997 = !DILocation(line: 457, column: 7, scope: !2983)
!2998 = !DILocation(line: 459, column: 17, scope: !2983)
!2999 = !DILocation(line: 459, column: 22, scope: !2983)
!3000 = !DILocation(line: 459, column: 28, scope: !2983)
!3001 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !2987)
!3002 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !2987)
!3003 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !2987)
!3004 = !DILocation(line: 460, column: 6, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 460, column: 6)
!3006 = !DILocation(line: 460, column: 11, scope: !3005)
!3007 = !DILocation(line: 460, column: 17, scope: !3005)
!3008 = !DILocation(line: 460, column: 6, scope: !2983)
!3009 = !DILocation(line: 461, column: 22, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 460, column: 25)
!3011 = !DILocation(line: 461, column: 27, scope: !3010)
!3012 = !DILocation(line: 461, column: 33, scope: !3010)
!3013 = !DILocation(line: 461, column: 41, scope: !3010)
!3014 = !DILocation(line: 461, column: 10, scope: !3010)
!3015 = !DILocation(line: 461, column: 8, scope: !3010)
!3016 = !DILocation(line: 462, column: 11, scope: !3010)
!3017 = !DILocation(line: 463, column: 2, scope: !3010)
!3018 = !DILocation(line: 464, column: 19, scope: !2983)
!3019 = !DILocation(line: 464, column: 24, scope: !2983)
!3020 = !DILocation(line: 464, column: 30, scope: !2983)
!3021 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !2985)
!3022 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !2985)
!3023 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !2985)
!3024 = !DILocation(line: 466, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 466, column: 6)
!3026 = !DILocation(line: 466, column: 6, scope: !2983)
!3027 = !DILocation(line: 467, column: 21, scope: !3025)
!3028 = !DILocation(line: 467, column: 10, scope: !3025)
!3029 = !DILocation(line: 467, column: 3, scope: !3025)
!3030 = !DILocation(line: 468, column: 20, scope: !2983)
!3031 = !DILocation(line: 468, column: 35, scope: !2983)
!3032 = !DILocation(line: 468, column: 9, scope: !2983)
!3033 = !DILocation(line: 468, column: 2, scope: !2983)
!3034 = !DILocation(line: 469, column: 1, scope: !2983)
!3035 = distinct !DISubprogram(name: "ktime_to_ms", scope: !679, file: !679, line: 164, type: !3036, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!412, !3038}
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!3039 = !DILocalVariable(name: "kt", arg: 1, scope: !3035, file: !679, line: 164, type: !3038)
!3040 = !DILocation(line: 164, column: 45, scope: !3035)
!3041 = !DILocation(line: 166, column: 21, scope: !3035)
!3042 = !DILocation(line: 166, column: 9, scope: !3035)
!3043 = !DILocation(line: 166, column: 2, scope: !3035)
!3044 = distinct !DISubprogram(name: "ktime_divns", scope: !679, file: !679, line: 148, type: !3045, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!412, !3038, !412}
!3047 = !DILocalVariable(name: "kt", arg: 1, scope: !3044, file: !679, line: 148, type: !3038)
!3048 = !DILocation(line: 148, column: 45, scope: !3044)
!3049 = !DILocalVariable(name: "div", arg: 2, scope: !3044, file: !679, line: 148, type: !412)
!3050 = !DILocation(line: 148, column: 53, scope: !3044)
!3051 = !DILocalVariable(name: "__ret_warn_on", scope: !3052, file: !679, line: 154, type: !91)
!3052 = distinct !DILexicalBlock(scope: !3044, file: !679, line: 154, column: 2)
!3053 = !DILocation(line: 154, column: 2, scope: !3052)
!3054 = !DILocation(line: 154, column: 2, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3052, file: !679, line: 154, column: 2)
!3056 = !DILocation(line: 154, column: 2, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3055, file: !679, line: 154, column: 2)
!3058 = !DILocation(line: 154, column: 2, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3057, file: !679, line: 154, column: 2)
!3060 = !DILocation(line: 154, column: 2, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !679, line: 154, column: 2)
!3062 = !{i32 -2145138330, i32 -2145138301, i32 -2145138255, i32 -2145138197, i32 -2145138143, i32 -2145138089, i32 -2145138034, i32 -2145138003}
!3063 = !DILocation(line: 154, column: 2, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !679, line: 154, column: 2)
!3065 = !{i32 -2145137600, i32 -2145137593, i32 -2145137541, i32 -2145137510, i32 -2145137480}
!3066 = !DILocation(line: 154, column: 2, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3057, file: !679, line: 154, column: 2)
!3068 = !DILocation(line: 155, column: 9, scope: !3044)
!3069 = !DILocation(line: 155, column: 14, scope: !3044)
!3070 = !DILocation(line: 155, column: 12, scope: !3044)
!3071 = !DILocation(line: 155, column: 2, scope: !3044)
!3072 = distinct !DISubprogram(name: "wakeup_max_time_ms_show", scope: !3, file: !3, line: 473, type: !1583, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3073 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 484, column: 2, scope: !3072)
!3075 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 479, column: 2, scope: !3072)
!3077 = !DILocalVariable(name: "dev", arg: 1, scope: !3072, file: !3, line: 473, type: !1585)
!3078 = !DILocation(line: 473, column: 55, scope: !3072)
!3079 = !DILocalVariable(name: "attr", arg: 2, scope: !3072, file: !3, line: 474, type: !2015)
!3080 = !DILocation(line: 474, column: 37, scope: !3072)
!3081 = !DILocalVariable(name: "buf", arg: 3, scope: !3072, file: !3, line: 474, type: !173)
!3082 = !DILocation(line: 474, column: 49, scope: !3072)
!3083 = !DILocalVariable(name: "msec", scope: !3072, file: !3, line: 476, type: !412)
!3084 = !DILocation(line: 476, column: 6, scope: !3072)
!3085 = !DILocalVariable(name: "enabled", scope: !3072, file: !3, line: 477, type: !239)
!3086 = !DILocation(line: 477, column: 7, scope: !3072)
!3087 = !DILocation(line: 479, column: 17, scope: !3072)
!3088 = !DILocation(line: 479, column: 22, scope: !3072)
!3089 = !DILocation(line: 479, column: 28, scope: !3072)
!3090 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !3076)
!3091 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !3076)
!3092 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !3076)
!3093 = !DILocation(line: 480, column: 6, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 480, column: 6)
!3095 = !DILocation(line: 480, column: 11, scope: !3094)
!3096 = !DILocation(line: 480, column: 17, scope: !3094)
!3097 = !DILocation(line: 480, column: 6, scope: !3072)
!3098 = !DILocation(line: 481, column: 22, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 480, column: 25)
!3100 = !DILocation(line: 481, column: 27, scope: !3099)
!3101 = !DILocation(line: 481, column: 33, scope: !3099)
!3102 = !DILocation(line: 481, column: 41, scope: !3099)
!3103 = !DILocation(line: 481, column: 10, scope: !3099)
!3104 = !DILocation(line: 481, column: 8, scope: !3099)
!3105 = !DILocation(line: 482, column: 11, scope: !3099)
!3106 = !DILocation(line: 483, column: 2, scope: !3099)
!3107 = !DILocation(line: 484, column: 19, scope: !3072)
!3108 = !DILocation(line: 484, column: 24, scope: !3072)
!3109 = !DILocation(line: 484, column: 30, scope: !3072)
!3110 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !3074)
!3111 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !3074)
!3112 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !3074)
!3113 = !DILocation(line: 486, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 486, column: 6)
!3115 = !DILocation(line: 486, column: 6, scope: !3072)
!3116 = !DILocation(line: 487, column: 21, scope: !3114)
!3117 = !DILocation(line: 487, column: 10, scope: !3114)
!3118 = !DILocation(line: 487, column: 3, scope: !3114)
!3119 = !DILocation(line: 488, column: 20, scope: !3072)
!3120 = !DILocation(line: 488, column: 35, scope: !3072)
!3121 = !DILocation(line: 488, column: 9, scope: !3072)
!3122 = !DILocation(line: 488, column: 2, scope: !3072)
!3123 = !DILocation(line: 489, column: 1, scope: !3072)
!3124 = distinct !DISubprogram(name: "wakeup_last_time_ms_show", scope: !3, file: !3, line: 493, type: !1583, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3125 = !DILocation(line: 402, column: 57, scope: !2689, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 505, column: 2, scope: !3124)
!3127 = !DILocation(line: 377, column: 55, scope: !2697, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 500, column: 2, scope: !3124)
!3129 = !DILocalVariable(name: "dev", arg: 1, scope: !3124, file: !3, line: 493, type: !1585)
!3130 = !DILocation(line: 493, column: 56, scope: !3124)
!3131 = !DILocalVariable(name: "attr", arg: 2, scope: !3124, file: !3, line: 494, type: !2015)
!3132 = !DILocation(line: 494, column: 31, scope: !3124)
!3133 = !DILocalVariable(name: "buf", arg: 3, scope: !3124, file: !3, line: 495, type: !173)
!3134 = !DILocation(line: 495, column: 12, scope: !3124)
!3135 = !DILocalVariable(name: "msec", scope: !3124, file: !3, line: 497, type: !412)
!3136 = !DILocation(line: 497, column: 6, scope: !3124)
!3137 = !DILocalVariable(name: "enabled", scope: !3124, file: !3, line: 498, type: !239)
!3138 = !DILocation(line: 498, column: 7, scope: !3124)
!3139 = !DILocation(line: 500, column: 17, scope: !3124)
!3140 = !DILocation(line: 500, column: 22, scope: !3124)
!3141 = !DILocation(line: 500, column: 28, scope: !3124)
!3142 = !DILocation(line: 379, column: 2, scope: !2714, inlinedAt: !3128)
!3143 = !DILocation(line: 379, column: 2, scope: !2717, inlinedAt: !3128)
!3144 = !DILocation(line: 379, column: 2, scope: !2720, inlinedAt: !3128)
!3145 = !DILocation(line: 501, column: 6, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 501, column: 6)
!3147 = !DILocation(line: 501, column: 11, scope: !3146)
!3148 = !DILocation(line: 501, column: 17, scope: !3146)
!3149 = !DILocation(line: 501, column: 6, scope: !3124)
!3150 = !DILocation(line: 502, column: 22, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 501, column: 25)
!3152 = !DILocation(line: 502, column: 27, scope: !3151)
!3153 = !DILocation(line: 502, column: 33, scope: !3151)
!3154 = !DILocation(line: 502, column: 41, scope: !3151)
!3155 = !DILocation(line: 502, column: 10, scope: !3151)
!3156 = !DILocation(line: 502, column: 8, scope: !3151)
!3157 = !DILocation(line: 503, column: 11, scope: !3151)
!3158 = !DILocation(line: 504, column: 2, scope: !3151)
!3159 = !DILocation(line: 505, column: 19, scope: !3124)
!3160 = !DILocation(line: 505, column: 24, scope: !3124)
!3161 = !DILocation(line: 505, column: 30, scope: !3124)
!3162 = !DILocation(line: 404, column: 2, scope: !2738, inlinedAt: !3126)
!3163 = !DILocation(line: 404, column: 2, scope: !2741, inlinedAt: !3126)
!3164 = !DILocation(line: 404, column: 2, scope: !2744, inlinedAt: !3126)
!3165 = !DILocation(line: 507, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 507, column: 6)
!3167 = !DILocation(line: 507, column: 6, scope: !3124)
!3168 = !DILocation(line: 508, column: 21, scope: !3166)
!3169 = !DILocation(line: 508, column: 10, scope: !3166)
!3170 = !DILocation(line: 508, column: 3, scope: !3166)
!3171 = !DILocation(line: 509, column: 20, scope: !3124)
!3172 = !DILocation(line: 509, column: 35, scope: !3124)
!3173 = !DILocation(line: 509, column: 9, scope: !3124)
!3174 = !DILocation(line: 509, column: 2, scope: !3124)
!3175 = !DILocation(line: 510, column: 1, scope: !3124)
!3176 = distinct !DISubprogram(name: "pm_qos_latency_tolerance_us_show", scope: !3, file: !3, line: 255, type: !1583, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3177 = !DILocalVariable(name: "dev", arg: 1, scope: !3176, file: !3, line: 255, type: !1585)
!3178 = !DILocation(line: 255, column: 64, scope: !3176)
!3179 = !DILocalVariable(name: "attr", arg: 2, scope: !3176, file: !3, line: 256, type: !2015)
!3180 = !DILocation(line: 256, column: 32, scope: !3176)
!3181 = !DILocalVariable(name: "buf", arg: 3, scope: !3176, file: !3, line: 257, type: !173)
!3182 = !DILocation(line: 257, column: 13, scope: !3176)
!3183 = !DILocalVariable(name: "value", scope: !3176, file: !3, line: 259, type: !94)
!3184 = !DILocation(line: 259, column: 6, scope: !3176)
!3185 = !DILocation(line: 259, column: 52, scope: !3176)
!3186 = !DILocation(line: 259, column: 14, scope: !3176)
!3187 = !DILocation(line: 261, column: 6, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 261, column: 6)
!3189 = !DILocation(line: 261, column: 12, scope: !3188)
!3190 = !DILocation(line: 261, column: 6, scope: !3176)
!3191 = !DILocation(line: 262, column: 21, scope: !3188)
!3192 = !DILocation(line: 262, column: 10, scope: !3188)
!3193 = !DILocation(line: 262, column: 3, scope: !3188)
!3194 = !DILocation(line: 263, column: 6, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 263, column: 6)
!3196 = !DILocation(line: 263, column: 12, scope: !3195)
!3197 = !DILocation(line: 263, column: 6, scope: !3176)
!3198 = !DILocation(line: 264, column: 21, scope: !3195)
!3199 = !DILocation(line: 264, column: 10, scope: !3195)
!3200 = !DILocation(line: 264, column: 3, scope: !3195)
!3201 = !DILocation(line: 266, column: 20, scope: !3176)
!3202 = !DILocation(line: 266, column: 33, scope: !3176)
!3203 = !DILocation(line: 266, column: 9, scope: !3176)
!3204 = !DILocation(line: 266, column: 2, scope: !3176)
!3205 = !DILocation(line: 267, column: 1, scope: !3176)
!3206 = distinct !DISubprogram(name: "pm_qos_latency_tolerance_us_store", scope: !3, file: !3, line: 269, type: !2018, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3207 = !DILocalVariable(name: "dev", arg: 1, scope: !3206, file: !3, line: 269, type: !1585)
!3208 = !DILocation(line: 269, column: 65, scope: !3206)
!3209 = !DILocalVariable(name: "attr", arg: 2, scope: !3206, file: !3, line: 270, type: !2015)
!3210 = !DILocation(line: 270, column: 33, scope: !3206)
!3211 = !DILocalVariable(name: "buf", arg: 3, scope: !3206, file: !3, line: 271, type: !106)
!3212 = !DILocation(line: 271, column: 20, scope: !3206)
!3213 = !DILocalVariable(name: "n", arg: 4, scope: !3206, file: !3, line: 271, type: !217)
!3214 = !DILocation(line: 271, column: 32, scope: !3206)
!3215 = !DILocalVariable(name: "value", scope: !3206, file: !3, line: 273, type: !94)
!3216 = !DILocation(line: 273, column: 6, scope: !3206)
!3217 = !DILocalVariable(name: "ret", scope: !3206, file: !3, line: 274, type: !91)
!3218 = !DILocation(line: 274, column: 6, scope: !3206)
!3219 = !DILocation(line: 276, column: 16, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 276, column: 6)
!3221 = !DILocation(line: 276, column: 6, scope: !3220)
!3222 = !DILocation(line: 276, column: 32, scope: !3220)
!3223 = !DILocation(line: 276, column: 6, scope: !3206)
!3224 = !DILocation(line: 278, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 278, column: 7)
!3226 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 276, column: 38)
!3227 = !DILocation(line: 278, column: 13, scope: !3225)
!3228 = !DILocation(line: 278, column: 7, scope: !3226)
!3229 = !DILocation(line: 279, column: 4, scope: !3225)
!3230 = !DILocation(line: 280, column: 2, scope: !3226)
!3231 = !DILocation(line: 281, column: 19, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 281, column: 7)
!3233 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 280, column: 9)
!3234 = !DILocation(line: 281, column: 7, scope: !3232)
!3235 = !DILocation(line: 281, column: 7, scope: !3233)
!3236 = !DILocation(line: 282, column: 10, scope: !3232)
!3237 = !DILocation(line: 282, column: 4, scope: !3232)
!3238 = !DILocation(line: 283, column: 24, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 283, column: 12)
!3240 = !DILocation(line: 283, column: 12, scope: !3239)
!3241 = !DILocation(line: 283, column: 12, scope: !3232)
!3242 = !DILocation(line: 284, column: 10, scope: !3239)
!3243 = !DILocation(line: 284, column: 4, scope: !3239)
!3244 = !DILocation(line: 286, column: 4, scope: !3239)
!3245 = !DILocation(line: 288, column: 49, scope: !3206)
!3246 = !DILocation(line: 288, column: 54, scope: !3206)
!3247 = !DILocation(line: 288, column: 8, scope: !3206)
!3248 = !DILocation(line: 288, column: 6, scope: !3206)
!3249 = !DILocation(line: 289, column: 9, scope: !3206)
!3250 = !DILocation(line: 289, column: 13, scope: !3206)
!3251 = !DILocation(line: 289, column: 19, scope: !3206)
!3252 = !DILocation(line: 289, column: 25, scope: !3206)
!3253 = !DILocation(line: 289, column: 2, scope: !3206)
!3254 = !DILocation(line: 290, column: 1, scope: !3206)
!3255 = distinct !DISubprogram(name: "kstrtos32", scope: !2613, file: !2613, line: 410, type: !3256, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!91, !106, !7, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!3259 = !DILocalVariable(name: "s", arg: 1, scope: !3255, file: !2613, line: 410, type: !106)
!3260 = !DILocation(line: 410, column: 54, scope: !3255)
!3261 = !DILocalVariable(name: "base", arg: 2, scope: !3255, file: !2613, line: 410, type: !7)
!3262 = !DILocation(line: 410, column: 70, scope: !3255)
!3263 = !DILocalVariable(name: "res", arg: 3, scope: !3255, file: !2613, line: 410, type: !3258)
!3264 = !DILocation(line: 410, column: 81, scope: !3255)
!3265 = !DILocation(line: 412, column: 19, scope: !3255)
!3266 = !DILocation(line: 412, column: 22, scope: !3255)
!3267 = !DILocation(line: 412, column: 28, scope: !3255)
!3268 = !DILocation(line: 412, column: 9, scope: !3255)
!3269 = !DILocation(line: 412, column: 2, scope: !3255)
!3270 = distinct !DISubprogram(name: "pm_qos_resume_latency_us_show", scope: !3, file: !3, line: 211, type: !1583, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3271 = !DILocalVariable(name: "dev", arg: 1, scope: !3270, file: !3, line: 211, type: !1585)
!3272 = !DILocation(line: 211, column: 61, scope: !3270)
!3273 = !DILocalVariable(name: "attr", arg: 2, scope: !3270, file: !3, line: 212, type: !2015)
!3274 = !DILocation(line: 212, column: 36, scope: !3270)
!3275 = !DILocalVariable(name: "buf", arg: 3, scope: !3270, file: !3, line: 213, type: !173)
!3276 = !DILocation(line: 213, column: 17, scope: !3270)
!3277 = !DILocalVariable(name: "value", scope: !3270, file: !3, line: 215, type: !94)
!3278 = !DILocation(line: 215, column: 6, scope: !3270)
!3279 = !DILocation(line: 215, column: 50, scope: !3270)
!3280 = !DILocation(line: 215, column: 14, scope: !3270)
!3281 = !DILocation(line: 217, column: 6, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 217, column: 6)
!3283 = !DILocation(line: 217, column: 12, scope: !3282)
!3284 = !DILocation(line: 217, column: 6, scope: !3270)
!3285 = !DILocation(line: 218, column: 21, scope: !3282)
!3286 = !DILocation(line: 218, column: 10, scope: !3282)
!3287 = !DILocation(line: 218, column: 3, scope: !3282)
!3288 = !DILocation(line: 219, column: 6, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 219, column: 6)
!3290 = !DILocation(line: 219, column: 12, scope: !3289)
!3291 = !DILocation(line: 219, column: 6, scope: !3270)
!3292 = !DILocation(line: 220, column: 9, scope: !3289)
!3293 = !DILocation(line: 220, column: 3, scope: !3289)
!3294 = !DILocation(line: 222, column: 20, scope: !3270)
!3295 = !DILocation(line: 222, column: 33, scope: !3270)
!3296 = !DILocation(line: 222, column: 9, scope: !3270)
!3297 = !DILocation(line: 222, column: 2, scope: !3270)
!3298 = !DILocation(line: 223, column: 1, scope: !3270)
!3299 = distinct !DISubprogram(name: "pm_qos_resume_latency_us_store", scope: !3, file: !3, line: 225, type: !2018, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3300 = !DILocalVariable(name: "dev", arg: 1, scope: !3299, file: !3, line: 225, type: !1585)
!3301 = !DILocation(line: 225, column: 62, scope: !3299)
!3302 = !DILocalVariable(name: "attr", arg: 2, scope: !3299, file: !3, line: 226, type: !2015)
!3303 = !DILocation(line: 226, column: 37, scope: !3299)
!3304 = !DILocalVariable(name: "buf", arg: 3, scope: !3299, file: !3, line: 227, type: !106)
!3305 = !DILocation(line: 227, column: 24, scope: !3299)
!3306 = !DILocalVariable(name: "n", arg: 4, scope: !3299, file: !3, line: 227, type: !217)
!3307 = !DILocation(line: 227, column: 36, scope: !3299)
!3308 = !DILocalVariable(name: "value", scope: !3299, file: !3, line: 229, type: !94)
!3309 = !DILocation(line: 229, column: 6, scope: !3299)
!3310 = !DILocalVariable(name: "ret", scope: !3299, file: !3, line: 230, type: !91)
!3311 = !DILocation(line: 230, column: 6, scope: !3299)
!3312 = !DILocation(line: 232, column: 17, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 232, column: 6)
!3314 = !DILocation(line: 232, column: 7, scope: !3313)
!3315 = !DILocation(line: 232, column: 6, scope: !3299)
!3316 = !DILocation(line: 237, column: 7, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 237, column: 7)
!3318 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 232, column: 34)
!3319 = !DILocation(line: 237, column: 13, scope: !3317)
!3320 = !DILocation(line: 237, column: 17, scope: !3317)
!3321 = !DILocation(line: 237, column: 20, scope: !3317)
!3322 = !DILocation(line: 237, column: 26, scope: !3317)
!3323 = !DILocation(line: 237, column: 7, scope: !3318)
!3324 = !DILocation(line: 238, column: 4, scope: !3317)
!3325 = !DILocation(line: 240, column: 7, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 240, column: 7)
!3327 = !DILocation(line: 240, column: 13, scope: !3326)
!3328 = !DILocation(line: 240, column: 7, scope: !3318)
!3329 = !DILocation(line: 241, column: 10, scope: !3326)
!3330 = !DILocation(line: 241, column: 4, scope: !3326)
!3331 = !DILocation(line: 242, column: 2, scope: !3318)
!3332 = !DILocation(line: 242, column: 25, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 242, column: 13)
!3334 = !DILocation(line: 242, column: 13, scope: !3333)
!3335 = !DILocation(line: 242, column: 13, scope: !3313)
!3336 = !DILocation(line: 243, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 242, column: 38)
!3338 = !DILocation(line: 244, column: 2, scope: !3337)
!3339 = !DILocation(line: 245, column: 3, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 244, column: 9)
!3341 = !DILocation(line: 248, column: 34, scope: !3299)
!3342 = !DILocation(line: 248, column: 39, scope: !3299)
!3343 = !DILocation(line: 248, column: 45, scope: !3299)
!3344 = !DILocation(line: 248, column: 50, scope: !3299)
!3345 = !DILocation(line: 249, column: 6, scope: !3299)
!3346 = !DILocation(line: 248, column: 8, scope: !3299)
!3347 = !DILocation(line: 248, column: 6, scope: !3299)
!3348 = !DILocation(line: 250, column: 9, scope: !3299)
!3349 = !DILocation(line: 250, column: 13, scope: !3299)
!3350 = !DILocation(line: 250, column: 19, scope: !3299)
!3351 = !DILocation(line: 250, column: 25, scope: !3299)
!3352 = !DILocation(line: 250, column: 2, scope: !3299)
!3353 = !DILocation(line: 251, column: 1, scope: !3299)
!3354 = distinct !DISubprogram(name: "dev_pm_qos_requested_resume_latency", scope: !51, file: !51, line: 195, type: !3355, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!94, !1585}
!3357 = !DILocalVariable(name: "dev", arg: 1, scope: !3354, file: !51, line: 195, type: !1585)
!3358 = !DILocation(line: 195, column: 70, scope: !3354)
!3359 = !DILocation(line: 197, column: 9, scope: !3354)
!3360 = !DILocation(line: 197, column: 14, scope: !3354)
!3361 = !DILocation(line: 197, column: 20, scope: !3354)
!3362 = !DILocation(line: 197, column: 25, scope: !3354)
!3363 = !DILocation(line: 197, column: 45, scope: !3354)
!3364 = !DILocation(line: 197, column: 50, scope: !3354)
!3365 = !DILocation(line: 197, column: 56, scope: !3354)
!3366 = !DILocation(line: 197, column: 2, scope: !3354)
!3367 = distinct !DISubprogram(name: "pm_qos_no_power_off_show", scope: !3, file: !3, line: 294, type: !1583, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3368 = !DILocalVariable(name: "dev", arg: 1, scope: !3367, file: !3, line: 294, type: !1585)
!3369 = !DILocation(line: 294, column: 56, scope: !3367)
!3370 = !DILocalVariable(name: "attr", arg: 2, scope: !3367, file: !3, line: 295, type: !2015)
!3371 = !DILocation(line: 295, column: 31, scope: !3367)
!3372 = !DILocalVariable(name: "buf", arg: 3, scope: !3367, file: !3, line: 296, type: !173)
!3373 = !DILocation(line: 296, column: 12, scope: !3367)
!3374 = !DILocation(line: 298, column: 20, scope: !3367)
!3375 = !DILocation(line: 298, column: 63, scope: !3367)
!3376 = !DILocation(line: 298, column: 36, scope: !3367)
!3377 = !DILocation(line: 299, column: 8, scope: !3367)
!3378 = !DILocation(line: 298, column: 34, scope: !3367)
!3379 = !DILocation(line: 298, column: 33, scope: !3367)
!3380 = !DILocation(line: 298, column: 9, scope: !3367)
!3381 = !DILocation(line: 298, column: 2, scope: !3367)
!3382 = distinct !DISubprogram(name: "pm_qos_no_power_off_store", scope: !3, file: !3, line: 302, type: !2018, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3383 = !DILocalVariable(name: "dev", arg: 1, scope: !3382, file: !3, line: 302, type: !1585)
!3384 = !DILocation(line: 302, column: 57, scope: !3382)
!3385 = !DILocalVariable(name: "attr", arg: 2, scope: !3382, file: !3, line: 303, type: !2015)
!3386 = !DILocation(line: 303, column: 32, scope: !3382)
!3387 = !DILocalVariable(name: "buf", arg: 3, scope: !3382, file: !3, line: 304, type: !106)
!3388 = !DILocation(line: 304, column: 19, scope: !3382)
!3389 = !DILocalVariable(name: "n", arg: 4, scope: !3382, file: !3, line: 304, type: !217)
!3390 = !DILocation(line: 304, column: 31, scope: !3382)
!3391 = !DILocalVariable(name: "ret", scope: !3382, file: !3, line: 306, type: !91)
!3392 = !DILocation(line: 306, column: 6, scope: !3382)
!3393 = !DILocation(line: 308, column: 16, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 308, column: 6)
!3395 = !DILocation(line: 308, column: 6, scope: !3394)
!3396 = !DILocation(line: 308, column: 6, scope: !3382)
!3397 = !DILocation(line: 309, column: 3, scope: !3394)
!3398 = !DILocation(line: 311, column: 6, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 311, column: 6)
!3400 = !DILocation(line: 311, column: 10, scope: !3399)
!3401 = !DILocation(line: 311, column: 15, scope: !3399)
!3402 = !DILocation(line: 311, column: 18, scope: !3399)
!3403 = !DILocation(line: 311, column: 22, scope: !3399)
!3404 = !DILocation(line: 311, column: 6, scope: !3382)
!3405 = !DILocation(line: 312, column: 3, scope: !3399)
!3406 = !DILocation(line: 314, column: 32, scope: !3382)
!3407 = !DILocation(line: 314, column: 63, scope: !3382)
!3408 = !DILocation(line: 314, column: 8, scope: !3382)
!3409 = !DILocation(line: 314, column: 6, scope: !3382)
!3410 = !DILocation(line: 315, column: 9, scope: !3382)
!3411 = !DILocation(line: 315, column: 13, scope: !3382)
!3412 = !DILocation(line: 315, column: 19, scope: !3382)
!3413 = !DILocation(line: 315, column: 25, scope: !3382)
!3414 = !DILocation(line: 315, column: 2, scope: !3382)
!3415 = !DILocation(line: 316, column: 1, scope: !3382)
!3416 = distinct !DISubprogram(name: "dev_pm_qos_requested_flags", scope: !51, file: !51, line: 200, type: !3355, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !146)
!3417 = !DILocalVariable(name: "dev", arg: 1, scope: !3416, file: !51, line: 200, type: !1585)
!3418 = !DILocation(line: 200, column: 61, scope: !3416)
!3419 = !DILocation(line: 202, column: 9, scope: !3416)
!3420 = !DILocation(line: 202, column: 14, scope: !3416)
!3421 = !DILocation(line: 202, column: 20, scope: !3416)
!3422 = !DILocation(line: 202, column: 25, scope: !3416)
!3423 = !DILocation(line: 202, column: 36, scope: !3416)
!3424 = !DILocation(line: 202, column: 41, scope: !3416)
!3425 = !DILocation(line: 202, column: 45, scope: !3416)
!3426 = !DILocation(line: 202, column: 2, scope: !3416)
